void *sub_19026F430(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026F51C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D52D20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19026F5C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D52D20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026F66C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58BD0);
  sub_190D526C0();
  sub_190233640(&qword_1EAD58BF0, &qword_1EAD58BD0);
  sub_1909C748C(&qword_1EAD58BF8, MEMORY[0x1E6995740]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19026F760(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D52D20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_19026F80C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D52D20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026F8F4()
{
  sub_190D554E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59680);
  sub_190D54200();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59400);
  sub_190D54200();
  swift_getWitnessTable();
  sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
  swift_getWitnessTable();
  sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19026FB08(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_190D52BC0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_19026FD34(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_190D52BC0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

__n128 sub_19026FF78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19026FF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190270024()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027005C()
{
  v1 = type metadata accessor for DetailsAttachmentsTabView();
  v27 = *(*(v1 - 1) + 80);
  v2 = (v27 + 16) & ~v27;
  v3 = *(*(v1 - 1) + 64);
  v4 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v5 = *(*(v4 - 1) + 80);
  v28 = *(*(v4 - 1) + 64);
  v6 = v0 + v2;

  v7 = v1[5];
  v8 = sub_190D52BC0();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v5;
  v12 = v6 + v1[8];
  v13 = sub_190D515F0();
  v26 = *(v13 - 8);
  v14 = *(v26 + 48);
  if (!v14(v12, 1, v13))
  {
    (*(v26 + 8))(v12, v13);
  }

  v15 = v2 + v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_190D540E0();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
  }

  else
  {
  }

  v18 = v15 & ~v5;

  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_190D54190();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
  }

  v21 = v0 + v18;

  v22 = v4[7];
  if (!v14(v0 + v18 + v22, 1, v13))
  {
    (*(v26 + 8))(v21 + v22, v13);
  }

  v23 = v4[11];
  v24 = sub_190D51840();
  (*(*(v24 - 8) + 8))(v21 + v23, v24);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v28, v27 | v5 | 7);
}

uint64_t sub_1902704CC()
{
  v1 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[11];
  v10 = sub_190D51840();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1902706FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190270774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1902707F8()
{
  v1 = *(_s30AddRecipientsRepresentableViewVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190270970(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_190270AAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_190270C70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

double sub_190270CE4@<D0>(_OWORD *a1@<X8>)
{
  sub_190D50810();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_190270D40(_OWORD *a1)
{
  v1 = a1[7];
  v2 = a1[5];
  v18 = a1[6];
  v19 = v1;
  v3 = a1[7];
  v4 = a1[9];
  v20 = a1[8];
  v21 = v4;
  v5 = a1[3];
  v6 = a1[1];
  v14 = a1[2];
  v15 = v5;
  v7 = a1[3];
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v12[16] = v18;
  v12[17] = v3;
  v10 = a1[9];
  v12[18] = v20;
  v12[19] = v10;
  v12[12] = v14;
  v12[13] = v7;
  v12[14] = v16;
  v12[15] = v2;
  v12[10] = v13[0];
  v12[11] = v6;
  sub_190889C88(v13, v12);
  return sub_190D50820();
}

double sub_190270DF8@<D0>(_OWORD *a1@<X8>)
{
  sub_190D50810();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_190270E54(_OWORD *a1)
{
  v1 = a1[7];
  v2 = a1[5];
  v18 = a1[6];
  v19 = v1;
  v3 = a1[7];
  v4 = a1[9];
  v20 = a1[8];
  v21 = v4;
  v5 = a1[3];
  v6 = a1[1];
  v14 = a1[2];
  v15 = v5;
  v7 = a1[3];
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v12[16] = v18;
  v12[17] = v3;
  v10 = a1[9];
  v12[18] = v20;
  v12[19] = v10;
  v12[12] = v14;
  v12[13] = v7;
  v12[14] = v16;
  v12[15] = v2;
  v12[10] = v13[0];
  v12[11] = v6;
  sub_190889C88(v13, v12);
  return sub_190D50820();
}

uint64_t sub_190270EE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

uint64_t sub_190270F58@<X0>(void *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

uint64_t sub_190270FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

uint64_t sub_190271034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

double sub_1902710A8@<D0>(_OWORD *a1@<X8>)
{
  sub_190D50810();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_190271104(_OWORD *a1)
{
  v1 = a1[7];
  v2 = a1[5];
  v18 = a1[6];
  v19 = v1;
  v3 = a1[7];
  v4 = a1[9];
  v20 = a1[8];
  v21 = v4;
  v5 = a1[3];
  v6 = a1[1];
  v14 = a1[2];
  v15 = v5;
  v7 = a1[3];
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v12[16] = v18;
  v12[17] = v3;
  v10 = a1[9];
  v12[18] = v20;
  v12[19] = v10;
  v12[12] = v14;
  v12[13] = v7;
  v12[14] = v16;
  v12[15] = v2;
  v12[10] = v13[0];
  v12[11] = v6;
  sub_190889C88(v13, v12);
  return sub_190D50820();
}

uint64_t sub_1902711C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD592F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190271240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1902712B0()
{
  sub_1909D85B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_19083F1AC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_190271318()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190271350()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD592F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD592F0);
  sub_1909D85FC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027143C()
{
  v1 = (type metadata accessor for PollDetailsViewController.DetailsPollOption(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_190D511C0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v0 + v4 + 112);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 288, v2 | 7);
}

uint64_t sub_1902715A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D511C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_190271660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D511C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_190271738()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190271770()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902717A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902717E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190271824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AvatarImageModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ButtonModel(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19027194C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AvatarImageModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ButtonModel(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_190271A74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_190271B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190271BE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D518A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190271C8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190271D34()
{
  updated = type metadata accessor for NicknameUpdateListView(0);
  v2 = *(*(updated - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(updated - 8) + 64);

  v5 = *(updated + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190271E78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190271EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for NicknameUpdateListCellModel(0);
  v7 = *(updated - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, updated);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD599F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_190271FB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  updated = type metadata accessor for NicknameUpdateListCellModel(0);
  v9 = *(updated - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, updated);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD599F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_190272100()
{
  v1 = type metadata accessor for ButtonModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = *(v1 + 28);
  v6 = sub_190D518A0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190272204()
{
  v1 = type metadata accessor for ButtonModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  updated = type metadata accessor for NicknameUpdateListCell(0);
  v6 = *(*(updated - 8) + 80);
  v19 = *(*(updated - 8) + 64);
  v21 = (v3 + v4 + v6) & ~v6;
  v7 = v0 + v3;

  if (*(v7 + 16))
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_190D518A0();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v20 = v0;
  v11 = v0 + v21;

  v12 = type metadata accessor for AvatarImageModel(0);
  v10(v0 + v21 + *(v12 + 24), v9);
  v13 = type metadata accessor for NicknameUpdateListCellModel(0);

  v14 = v0 + v21 + *(v13 + 28);

  if (*(v14 + 16))
  {
  }

  v10(v14 + *(v1 + 28), v9);
  v15 = v11 + *(v13 + 32);

  if (*(v15 + 16))
  {
  }

  v10(v15 + *(v1 + 28), v9);

  v16 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD599F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_190D54A90();
    (*(*(v17 - 8) + 8))(v11 + v16, v17);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v20, v21 + v19, v2 | v6 | 7);
}

uint64_t sub_1902724FC()
{
  v1 = (type metadata accessor for MenuItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_190D518A0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190272638()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59B60);
  sub_190D54DC0();
  sub_190233640(&qword_1EAD59B68, &qword_1EAD59B60);
  sub_1909F0624(&unk_1EAD45220, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190272748()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190272788()
{
  v1 = sub_190D53D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1902728A4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 136))
  {
    sub_19083B6D4(*(v0 + 112), *(v0 + 120));
  }

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_190272934()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027296C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902729A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52298);
  sub_1909F5EBC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190272A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190272AA0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190272ADC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_190272B98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190272C4C()
{
  v1 = type metadata accessor for VisionAppMenuView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v2 | 7);
}

uint64_t sub_190272DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190272EB0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190272EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190272F28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190272F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D51840();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190272FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D51840();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190273050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
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

uint64_t sub_19027310C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
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

uint64_t sub_1902731C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
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

uint64_t sub_19027328C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
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

uint64_t sub_190273370()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902733A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1902734CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1902735EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1902736B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_190273780@<X0>(void *a1@<X8>)
{
  result = sub_190D546E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1902737D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D54700();
  *a1 = result;
  return result;
}

uint64_t sub_190273834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19027389C()
{
  v1 = *(type metadata accessor for DetailsViewList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190273AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A09050(v1, v2);
}

uint64_t sub_190273AE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190273B60()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190273BE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_190273C5C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190A11D2C(v1);
}

__n128 sub_190273CA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_190273CB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A11680(v1, v2);
}

uint64_t sub_190273CFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A113C4(v1, v2);
}

uint64_t sub_190273D50()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190273D94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_190273DF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_190273E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190273EAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_190274030@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_190274224()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id sub_190274264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_190A1C228(v5);
}

void sub_1902742C0(id *a1)
{
  v1 = *a1;
  sub_190A1C228(v1);
  sub_190A1A3FC(&v1);
}

uint64_t sub_1902742FC()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190274338()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190274380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
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

uint64_t sub_190274448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
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

uint64_t sub_190274528(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1902745E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1902746C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190274784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190274834()
{
  v1 = type metadata accessor for TTRWrongServiceTypeView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D53D10();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1902749F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A858);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_190274B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A858);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_190274C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190274CC0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_190274CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit32PosterEditorOverlaySceneDelegate_window;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190274D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_190A31A88(v3);
}

uint64_t sub_190274DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190274E1C()
{
  v1 = sub_190D53D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_190274EEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190A31D60(v1, v3);
}

uint64_t sub_190274F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D56AF0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190274F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D56AF0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190275010()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190275188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1902751E0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer_userInterfaceStyle;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_190275244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D52930();
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

uint64_t sub_190275300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D52930();
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

uint64_t sub_190275404(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D529D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1902754B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D529D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190275554()
{
  v1 = (type metadata accessor for ParticipantGridSectionContent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_190D529D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_190275648(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void *sub_190275658()
{
  v1 = *(*v0 + 48);
  v2 = v1;
  return v1;
}

void *sub_190275684()
{
  v1 = *(*v0 + 56);
  v2 = v1;
  return v1;
}

void *sub_1902756B0()
{
  v1 = *(*v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_1902756DC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 104);
}

uint64_t sub_19027571C(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 104) = a1;
  return result;
}

void *sub_190275770()
{
  v1 = *(*v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t sub_19027579C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190A427D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1902757CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_190275814(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

id sub_190275858@<X0>(void *a1@<X8>)
{
  result = sub_190A42FFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275884@<X0>(void *a1@<X8>)
{
  result = sub_190A43148();
  *a1 = result;
  return result;
}

void *sub_1902758B0@<X0>(void *a1@<X8>)
{
  result = sub_190A431A8();
  *a1 = result;
  return result;
}

id sub_1902758DC@<X0>(void *a1@<X8>)
{
  result = sub_190A4359C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275908@<X0>(void *a1@<X8>)
{
  result = sub_190A436E8();
  *a1 = result;
  return result;
}

void *sub_190275934@<X0>(void *a1@<X8>)
{
  result = sub_190A437A8();
  *a1 = result;
  return result;
}

id sub_190275960@<X0>(void *a1@<X8>)
{
  v2 = sub_190A4852C();
  *a1 = v2;

  return v2;
}

id sub_1902759B4@<X0>(void *a1@<X8>)
{
  result = sub_190A43A04();
  *a1 = result;
  return result;
}

void sub_1902759E0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
  v4 = v2;

  sub_1902905D8(v3);
}

uint64_t sub_190275A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_190275A6C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

id sub_190275AB0@<X0>(void *a1@<X8>)
{
  result = sub_190A43FCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275ADC@<X0>(void *a1@<X8>)
{
  result = sub_190A44118();
  *a1 = result;
  return result;
}

void *sub_190275B08@<X0>(void *a1@<X8>)
{
  result = sub_190A44178();
  *a1 = result;
  return result;
}

id sub_190275B34@<X0>(void *a1@<X8>)
{
  result = sub_190A443A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275B60@<X0>(void *a1@<X8>)
{
  result = sub_190A444F0();
  *a1 = result;
  return result;
}

void *sub_190275B8C@<X0>(void *a1@<X8>)
{
  result = sub_190A44550();
  *a1 = result;
  return result;
}

id sub_190275BB8@<X0>(void *a1@<X8>)
{
  result = sub_190A44788();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275BE4@<X0>(void *a1@<X8>)
{
  result = sub_190A448D4();
  *a1 = result;
  return result;
}

void *sub_190275C10@<X0>(void *a1@<X8>)
{
  result = sub_190A44934();
  *a1 = result;
  return result;
}

id sub_190275C3C@<X0>(void *a1@<X8>)
{
  result = sub_190A44B6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275C68@<X0>(void *a1@<X8>)
{
  result = sub_190A44CB8();
  *a1 = result;
  return result;
}

void *sub_190275C94@<X0>(void *a1@<X8>)
{
  result = sub_190A44D18();
  *a1 = result;
  return result;
}

id sub_190275CC0@<X0>(void *a1@<X8>)
{
  result = sub_190A44F44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275CEC@<X0>(void *a1@<X8>)
{
  result = sub_190A45090();
  *a1 = result;
  return result;
}

void *sub_190275D18@<X0>(void *a1@<X8>)
{
  result = sub_190A450F0();
  *a1 = result;
  return result;
}

id sub_190275D44@<X0>(void *a1@<X8>)
{
  result = sub_190A45248();
  *a1 = result;
  return result;
}

void sub_190275D70(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  *(*a2 + 48) = *a1;
  v4 = v2;

  sub_1902905D8(v3);
}

id sub_190275DB4@<X0>(void *a1@<X8>)
{
  result = sub_190A453E0();
  *a1 = result;
  return result;
}

id sub_190275DF8@<X0>(void *a1@<X8>)
{
  result = sub_190A45804();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275E24@<X0>(void *a1@<X8>)
{
  result = sub_190A45964();
  *a1 = result;
  return result;
}

void *sub_190275E50@<X0>(void *a1@<X8>)
{
  result = sub_190A459D8();
  *a1 = result;
  return result;
}

id sub_190275E7C@<X0>(void *a1@<X8>)
{
  result = sub_190A45F10();
  *a1 = result;
  return result;
}

id sub_190275EA8@<X0>(void *a1@<X8>)
{
  result = sub_190A4612C();
  *a1 = result;
  return result;
}

id sub_190275ED4@<X0>(void *a1@<X8>)
{
  result = sub_190A46348();
  *a1 = result;
  return result;
}

id sub_190275F00@<X0>(void *a1@<X8>)
{
  result = sub_190A46564();
  *a1 = result;
  return result;
}

id sub_190275F2C@<X0>(void *a1@<X8>)
{
  result = sub_190A467E8();
  *a1 = result;
  return result;
}

id sub_190275F58@<X0>(void *a1@<X8>)
{
  result = sub_190A4698C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190275F84@<X0>(void *a1@<X8>)
{
  result = sub_190A46AD8();
  *a1 = result;
  return result;
}

void *sub_190275FB4@<X0>(void *a1@<X8>)
{
  result = sub_190A46B38();
  *a1 = result;
  return result;
}

uint64_t sub_190275FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190A46D68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190276018@<X0>(void *a1@<X8>)
{
  result = sub_190A46E70();
  *a1 = result;
  return result;
}

void *sub_190276044@<X0>(void *a1@<X8>)
{
  result = sub_190A46ED0();
  *a1 = result;
  return result;
}

id sub_190276070@<X0>(void *a1@<X8>)
{
  result = sub_190A47598();
  *a1 = result;
  return result;
}

void sub_19027609C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 104);
  *(*a2 + 104) = *a1;
  v3 = v2;
}

id sub_1902760E4@<X0>(void *a1@<X8>)
{
  result = sub_190A478DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_190276110@<X0>(void *a1@<X8>)
{
  result = sub_190A47A3C();
  *a1 = result;
  return result;
}

void *sub_19027613C@<X0>(void *a1@<X8>)
{
  result = sub_190A47B18();
  *a1 = result;
  return result;
}

uint64_t sub_19027628C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_190276478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
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

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[10];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

BOOL sub_190276664(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_190276698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190276708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190276770@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD25C0();

  return sub_190D52690();
}

__n128 sub_1902767E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1902767F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190276850()
{
  v1 = type metadata accessor for DetailsLocationsTabView();
  v23 = *(*(v1 - 1) + 80);
  v2 = (v23 + 16) & ~v23;
  v3 = *(*(v1 - 1) + 64);
  v4 = _s8LocationVMa(0);
  v5 = *(*(v4 - 8) + 80);
  v22 = *(*(v4 - 8) + 64);
  v24 = v0;
  v6 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  v8 = v3 + v5;
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D54190();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v2 + v8;
  v12 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_190D53DF0();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v11 & ~v5;

  v15 = v6 + v1[10];
  v16 = sub_190D515F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v19 = v24 + v14;

  v20 = *(v4 + 28);
  if (!v18(v24 + v14 + v20, 1, v16))
  {
    (*(v17 + 8))(v19 + v20, v16);
  }

  return MEMORY[0x1EEE6BDD0](v24, v14 + v22, v23 | v5 | 7);
}

uint64_t sub_190276C30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0F70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190276C94()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) - 8);
  v20 = *(*v1 + 80);
  v2 = (v20 + 16) & ~v20;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for DetailsLocationsTabView();
  v5 = *(*(v4 - 1) + 80);
  v21 = *(*(v4 - 1) + 64);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = v0 + v2;

  v8 = v1[10];
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  v19 = *(v10 + 48);
  if (!v19(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v0 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D540E0();
    (*(*(v12 - 8) + 8))(v0 + v6, v12);
  }

  else
  {
  }

  v13 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D54190();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  else
  {
  }

  v15 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_190D53DF0();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  v17 = v11 + v4[10];
  if (!v19(v17, 1, v9))
  {
    (*(v10 + 8))(v17, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v21, v20 | v5 | 7);
}

uint64_t sub_190277048()
{
  v1 = type metadata accessor for DetailsLocationsTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D540E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D54190();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[10];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19027731C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190277380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0EB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1902773E4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) - 8);
  v20 = *(*v1 + 80);
  v2 = (v20 + 16) & ~v20;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for DetailsWalletTabView();
  v5 = *(*(v4 - 1) + 80);
  v21 = *(*(v4 - 1) + 64);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = v0 + v2;

  v8 = v1[10];
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  v19 = *(v10 + 48);
  if (!v19(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v0 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D540E0();
    (*(*(v12 - 8) + 8))(v0 + v6, v12);
  }

  else
  {
  }

  v13 = v4[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D54190();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  else
  {
  }

  v15 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_190D53DF0();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  v17 = v11 + v4[11];
  if (!v19(v17, 1, v9))
  {
    (*(v10 + 8))(v17, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v21, v20 | v5 | 7);
}

uint64_t sub_19027779C()
{
  v1 = type metadata accessor for DetailsWalletTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D540E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D54190();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[11];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190277A68()
{
  v1 = v0;
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) - 8);
  v22 = *(*v2 + 80);
  v3 = (v22 + 16) & ~v22;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for DetailsLinksTabView();
  v6 = *(*(v5 - 1) + 80);
  v23 = *(*(v5 - 1) + 64);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v1 + v3;

  v9 = v2[10];
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v13 = v1 + v7;

  v14 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_190D540E0();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
  }

  v16 = v5[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_190D54190();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
  }

  else
  {
  }

  v18 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_190D53DF0();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);
  }

  else
  {
  }

  v20 = v13 + v5[11];
  if (!v12(v20, 1, v10))
  {
    (*(v11 + 8))(v20, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v1, v7 + v23, v22 | v6 | 7);
}

uint64_t sub_190277E10()
{
  v1 = type metadata accessor for DetailsLinksTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D54190();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v5 + v1[11];
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1902780E8()
{
  v1 = v0;
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) - 8);
  v24 = *(*v2 + 80);
  v3 = (v24 + 16) & ~v24;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for DetailsAttachmentsTabView();
  v6 = *(*(v5 - 1) + 80);
  v25 = *(*(v5 - 1) + 64);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v1 + v3;

  v9 = v2[10];
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v13 = v1 + v7;

  v14 = v5[5];
  v15 = sub_190D52BC0();
  (*(*(v15 - 8) + 8))(v1 + v7 + v14, v15);

  v16 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_190D53DF0();
    (*(*(v17 - 8) + 8))(v13 + v16, v17);
  }

  else
  {
  }

  v18 = v13 + v5[8];
  if (!v12(v18, 1, v10))
  {
    (*(v11 + 8))(v18, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v19 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_190D540E0();
    (*(*(v20 - 8) + 8))(v13 + v19, v20);
  }

  else
  {
  }

  v21 = v5[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_190D54190();
    (*(*(v22 - 8) + 8))(v13 + v21, v22);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v7 + v25, v24 | v6 | 7);
}

uint64_t sub_1902784E4()
{
  v1 = type metadata accessor for DetailsAttachmentsTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_190D52BC0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D53DF0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[8];
  v11 = sub_190D515F0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v13 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D540E0();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_190D54190();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1902788D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8LocationVMa(0);
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

uint64_t sub_1902789A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8LocationVMa(0);
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

uint64_t sub_190278A58()
{
  v1 = _s8CellViewVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = _s8LocationVMa(0);
  v7 = *(v6 + 28);
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190278BDC()
{
  v1 = _s8LocationVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190278D34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190278DF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190278EA0()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_190278F58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190A61FDC(v1);
}

__n128 sub_190278F9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_190278FB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A61930(v1, v2);
}

uint64_t sub_190278FF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A61674(v1, v2);
}

uint64_t sub_19027904C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902790CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190A68334(v1, v2);
}

uint64_t sub_19027910C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902791D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedTapbackItem();
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

uint64_t sub_190279294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedTapbackItem();
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

uint64_t sub_190279460(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B420);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_19027959C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B420);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1902796E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190279764()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B450);
  sub_190D541B0();
  sub_190A70150();
  swift_getOpaqueTypeConformance2();
  sub_190A70378();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190279840()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19027990C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190279954()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1902799B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902799F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190279A40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190279AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190279B08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190279B40()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190279B78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190279BB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190279C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_190279D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_190279EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190279F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190279FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19027A028()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027A060()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DebugInspectorContainerView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D53D10();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v6 + *(v2 + 40), v1);
  if (*(v6 + *(v2 + 44)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19027A1E0()
{
  sub_190D53FB0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B998);
  sub_190233640(&qword_1EAD5B9A0, &qword_1EAD5B998);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_19081E484();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_190D54230();
  return swift_getWitnessTable();
}

uint64_t sub_19027A3D8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19027A410@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_19027A460@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attachmentItem];
  *a2 = result;
  return result;
}

uint64_t sub_19027A4B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027A4F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19027A528()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027A588()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027A5C8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027A618()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19027A680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_contentOffsetProxy;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_190D50920();
}

uint64_t sub_19027A6E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19027A728()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19027A788()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s21BackgroundGalleryItemVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19027A894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s21BackgroundGalleryItemVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19027A964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19027A9D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19027AA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19027AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D519C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19027ABF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_190D519C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19027AD0C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027AD44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19027AE28(uint64_t a1, uint64_t a2)
{
  v4 = _s17BackgroundContentOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19027AE94(uint64_t a1, uint64_t a2)
{
  v4 = _s17BackgroundContentOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19027AF78(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_190D518A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19027B024(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027B0D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = _s17BackgroundContentOMa(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_19027B1E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = _s17BackgroundContentOMa(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_19027B2FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_19027B358(uint64_t a1, void *a2, double a3)
{
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewControllerConfiguration(a3);
  v6 = [objc_allocWithZone(*(v5 + 200)) init];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v8 = result;
    v9 = objc_opt_self();
    [v8 lightInterfacePosterContentLuminanceThreshold];
    v11 = v10;

    v12 = [v9 posterEditingViewControllerConfigurationFromConfiguration:v6 applyingLuminanceThreshold:v11];
    v13 = [objc_allocWithZone(type metadata accessor for CKPosterEditingContext()) init];
    [v12 setPosterContents_];
    [v12 setContext_];
    v14 = [a2 renderedAvatarImageWithSize_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A038);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = 0x6D49726564616568;
    *(inited + 40) = 0xEB00000000656761;
    *(inited + 48) = v14;
    v16 = v14;
    sub_190822140(inited);
    swift_setDeallocating();
    sub_19022EEA4(inited + 32, &qword_1EAD5A040);
    gotLoadHelper_x8__OBJC_CLASS___PRPosterHostedContentSettings(v17);
    v19 = objc_allocWithZone(*(v18 + 784));
    sub_1902188FC(0, &qword_1EAD44EB0);
    v20 = sub_190D56D60();

    v21 = [v19 initWithImages_];

    v22 = [v21 otherSettings];
    v23 = [a2 displayNameForDisplayContext_];
    if (v23)
    {
      v24 = v23;
      v25 = sub_190D56F10();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_190A01810(v25, v27);

    v28 = [v21 otherSettings];
    sub_190A01994([a2 isGroupConversation]);

    [v12 setHostedContentSettings_];
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19027B6B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190AA5C7C(v1);
}

uint64_t sub_19027B6F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19027B770(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_19091B348(*a1, v2);
  return sub_190AA4DDC(v1, v2);
}

uint64_t sub_19027B7B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027B7F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_19027B854@<D0>(_OWORD *a1@<X8>)
{
  sub_190AB55AC();
  sub_190D54830();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19027B8A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_19027B8F0@<X0>(void *a1@<X8>)
{
  sub_190866C78();
  result = sub_190D54830();
  *a1 = v3;
  return result;
}

void sub_19027B948(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190AA57B4(v1, v3);
}

uint64_t sub_19027B9FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027BA34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C3F8);
  sub_190AB5234();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027BAB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19027BB18()
{
  v1 = _s21BackgroundGalleryItemVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 24) >= 8uLL)
  {
  }

  v6 = v5 + v1[7];
  v7 = _s17BackgroundContentOMa(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 8)
          {

            sub_19083B6D4(*(v6 + 24), *(v6 + 32));
          }

          goto LABEL_4;
        }

        v12 = sub_190D518A0();
        (*(*(v12 - 8) + 8))(v6, v12);
        _s21GeneratingTileContentVMa(0);
LABEL_42:

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 4)
      {
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_4;
        }

        swift_unknownObjectRelease();
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

LABEL_4:
  v8 = v5 + v1[8];
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 <= 3)
  {
    if (v9 <= 1)
    {
      if (!v9)
      {

        goto LABEL_30;
      }

      if (v9 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_18:

    goto LABEL_30;
  }

  if (v9 <= 6)
  {
    if (v9 == 4)
    {
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  if (v9 == 7)
  {
    v11 = sub_190D518A0();
    (*(*(v11 - 8) + 8))(v8, v11);
    _s21GeneratingTileContentVMa(0);
LABEL_29:

    goto LABEL_30;
  }

  if (v9 == 8)
  {

    sub_19083B6D4(*(v8 + 24), *(v8 + 32));
  }

LABEL_30:
  if (*(v5 + v1[9] + 8))
  {
  }

  sub_190AA2B74(*(v5 + v1[10]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19027BEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB6A98();
  *a1 = result;
  return result;
}

uint64_t sub_19027BF1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB6AE8();
  *a1 = result;
  return result;
}

uint64_t sub_19027BF4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB6B50();
  *a1 = result;
  return result;
}

uint64_t sub_19027BF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB6BA0();
  *a1 = result;
  return result;
}

uint64_t sub_19027BFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB6CB0();
  *a1 = result;
  return result;
}

uint64_t sub_19027BFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190AB7220();
  *a1 = result;
  return result;
}

uint64_t sub_19027C004@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_190D52690();
}

uint64_t sub_19027C054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_190D52690();
}

uint64_t sub_19027C0CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C110()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C148(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19027C204(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027C2BC()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C2F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027C334()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D53A60();
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
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19027C43C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D53A60();
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19027C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9ViewModelVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_19027C620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9ViewModelVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19027C72C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027C764()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CDA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B9D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CDA8);
  sub_190D54FA0();
  sub_190233640(&qword_1EAD5CDB0, &qword_1EAD5CDA8);
  swift_getOpaqueTypeConformance2();
  sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027C8B0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C8E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_19027C930()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027C968()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027C9A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_19027CA64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027CB18()
{
  v1 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  v6 = sub_190D539A0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19027CCB8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19027CD70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19027CDC8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19027CEF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19027CF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190842164();
  *a1 = result;
  return result;
}

uint64_t sub_19027CF58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190ADE56C();
  *a1 = result;
  return result;
}

uint64_t sub_19027CF88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190842170();
  *a1 = result;
  return result;
}

uint64_t sub_19027CFB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190ADE8D4();
  *a1 = result;
  return result;
}

uint64_t sub_19027CFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19084216C();
  *a1 = result;
  return result;
}

uint64_t sub_19027D110()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D148()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027D198(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_190D51840();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19027D244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D51840();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027D300()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027D340()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D39C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19027D414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19027D498()
{
  v1 = *(_s23BackgroundsDisabledViewVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53DF0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19027D598()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D100);
  sub_190AE7308();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027D5FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D579B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19027D6A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D579B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027D774()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D7AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027D7F4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D82C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027D870()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D8A8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19027D960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027D9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19027DA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D518A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19027DB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19027DB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19027DC58()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027DC90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19027DD94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027DE44()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

__n128 sub_19027DEE0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19027DEFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027DF34()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19027DF78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19027DFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190AFBB64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027E084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190AFF828();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19027E0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190AFF670();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19027E100()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027E138()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_19027E244()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027E2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19027E318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19027E380()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0);
  sub_190B04BFC();
  sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19027E46C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_19027E5F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5D5F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19027E774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_19027E834()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027E874()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027E8AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027E8EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19027E92C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027E96C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19027E9B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19027EA0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027EAA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027EBF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19027EC4C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit23CKTextEffectCoordinator_isPaused;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19027ECD0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027ED08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027ED58()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027EDA0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027EDDC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_19027EE94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKBusinessDetailsController_conversation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_19027EF00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19027EF58(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKBusinessDetailsController_isShowingAddMemberPopover;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19027EFAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027EFEC@<X0>(_BYTE *a1@<X8>)
{
  result = UIMutableTraits.isTranscriptBackgroundActive.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_19027F060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19027F06C@<X0>(_BYTE *a1@<X8>)
{
  sub_190B1EE6C();
  result = sub_190D54810();
  *a1 = v3;
  return result;
}

__n128 sub_19027F10C@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle);
  swift_beginAccess();
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  v6 = v3[1].n128_u8[9];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  a2[1].n128_u8[9] = v6;
  return result;
}

__n128 sub_19027F178(__n128 *a1, void *a2)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = *a2 + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle;
  swift_beginAccess();
  result = v7;
  *v5 = v7;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 25) = v4;
  return result;
}

uint64_t sub_19027F2E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027F3B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19027F3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027F41C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027F454()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027F494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19027F50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19027F588()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027F5D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19027F610()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027F648()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027F738()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_19027F810@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19027F8D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit16CKChatTipManager_translationTipObservation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_190D50920();
}

uint64_t sub_19027F9F8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027FA30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027FA9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19027FAE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19027FBA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19027FC60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027FC98()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19027FCD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19027FD18()
{
  v13 = sub_190D53830();
  v1 = *(v13 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_190D519C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v12 = v2 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v13);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v12 | 7);
}

uint64_t sub_19027FEC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_190D519C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19027FFBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028000C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028004C()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19028011C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190280154()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028018C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902801C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190280220@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190280284()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902802BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902802FC()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1902803C0()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190280484()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1902804DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190280550()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190280588()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902805C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902805F8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1902806B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CKTapbackStickerView_initialFrameIndex;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19028070C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___CKTapbackStickerView_initialFrameIndex;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_190280778(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackStickerView_isAnimationPaused;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1902807E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190280858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1902808F0()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_190280974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E0A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1902809F0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190280B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_190D518E0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_190280C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D518A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  else
  {
    v11 = sub_190D518E0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_190280D98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190280DD8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190280E14()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190280E54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190280E8C()
{
  sub_19083B6D4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_190280EDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190280F28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190280F60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1902810E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5E3A0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19028127C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19028132C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_1902813F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1902814A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190281500(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit29TapbackEmojiKeyboardGlyphView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190281554@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19028160C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKPopRendererView_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_19028166C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028175C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190281794()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1902817E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_190281920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_190281A64(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E660);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_190281BF4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E660);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_190281DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190281E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190281EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E848);
  sub_190D58050();
  sub_190D54200();
  sub_190D54200();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E850);
  sub_190D54200();
  swift_getTupleTypeMetadata2();
  sub_190D56620();
  swift_getWitnessTable();
  sub_190D561D0();
  sub_190D54200();
  sub_190D54200();
  swift_getWitnessTable();
  sub_190233640(&qword_1EAD5E858, &qword_1EAD5E850);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1902820A0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902820D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_190282110@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = *(v3 + 128);
  v5 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v5;
  result = *(v3 + 48);
  v7 = *(v3 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 sub_190282178(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 128) = *(a1 + 112);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v3 + 48) = result;
  *(v3 + 64) = v7;
  return result;
}

uint64_t sub_1902821E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
  return sub_190D52690();
}

__n128 sub_190282234@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  *(a2 + 29) = *(v3 + 45);
  return result;
}

__n128 sub_1902822A8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 56);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  *a2 = result;
  a2[1].n128_u64[0] = v5;
  a2[1].n128_u64[1] = v6;
  return result;
}

__n128 sub_1902822F8(__n128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = *a2;
  swift_beginAccess();
  result = v6;
  *(v4 + 56) = v6;
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;
  return result;
}

__n128 sub_190282354@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[11];
  *a2 = result;
  return result;
}

uint64_t sub_1902823A0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1902823F8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190282430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190282470(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s10StyleGuideVMa_0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19028251C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s10StyleGuideVMa_0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1902825E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028261C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
  sub_190B97ED4();
  sub_190B98070();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1902826B0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_190B9A1A4();
  *a1 = result;
  return result;
}

id sub_1902826F8@<X0>(void *a1@<X8>)
{
  result = sub_190B99E2C();
  *a1 = result;
  return result;
}

unint64_t sub_190282724@<X0>(unint64_t *a1@<X8>)
{
  result = sub_190B99C40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_190282750@<X0>(void *a1@<X8>)
{
  result = sub_190B996D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19028277C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B98938();
  *a1 = result;
  return result;
}

uint64_t sub_1902827A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B99530();
  *a1 = result;
  return result;
}

void sub_1902827E4(void *a1@<X8>)
{
  sub_190B98A60();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19028281C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190B98420();
  *a1 = result & 1;
  return result;
}

double sub_190282854@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1902828AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190282900()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190282938()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190282AB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190282B70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190282C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_190282C94()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190282CCC()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190282DB0(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_190D56170();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED00);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

char *sub_190282F88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_190D56170();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ED00);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_190283194()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5ED20);
  sub_190BB1478();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19028335C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190BB5088();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1902833FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190BB552C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190283640()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190283678()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1902836D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D54790();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190283904()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190283948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
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

uint64_t sub_190283A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
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

uint64_t sub_190283AD4()
{
  v1 = (type metadata accessor for ShowAllSearchController() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_190283BF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190283C5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190283CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F0A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_190283D60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F0A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190283E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190283EDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190283F1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D579B0();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F200);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19028404C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_190D579B0();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F200);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1902841E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s10StyleGuideVMa_0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_190284304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s10StyleGuideVMa_0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

id sub_19028441C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190284488@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1902844E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_selectedTapbackBackgroundColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190BD0F24();
}

uint64_t sub_190284648()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190284680()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902846D8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190284710()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190284750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
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

uint64_t sub_190284818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_1902848E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKFooterButtonAction_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19028493C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKFooterButtonAction_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190284990()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902849C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190284A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190284B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190284BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190284C10()
{
  v1 = type metadata accessor for ClarityCameraView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v13 = *(v5 + 64);
  sub_190A81804(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v7 = v0 + v3 + *(v1 + 28);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) + 32);
  if (!(*(v5 + 48))(v7 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = v2 | v6;
  v10 = (v3 + v12 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v4);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v13, v9 | 7);
}

uint64_t sub_190284E38()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190284E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_190284EB8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_190284EF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190284F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190284FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190285040(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1902850CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_190BEAEFC(v5);
}

uint64_t sub_19028518C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902851C4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190285228()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902852E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D511C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19028538C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D511C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190285438()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190285478()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1902854C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190285504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19028559C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_190D52BC0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_190285728(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_190D52BC0();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1902858A8()
{
  v1 = _s14descr1F03EACB9V8CellViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v7 = v6[7];
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v6[11];
  v11 = sub_190D51840();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[5];
  v13 = sub_190D52BC0();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_190D53A60();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190285B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D546C0();
  *a1 = result;
  return result;
}

uint64_t sub_190285B8C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_190D52BC0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_190285C38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_190D52BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190285D34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190285DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190285E2C()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_190285F4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_190285F78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_190285FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_190285FD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttributedTapbackItem();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[10];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[12] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_190286140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AttributedTapbackItem();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[10];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[12] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[11];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1902862B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902862E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1902863DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  return sub_19090E8F8(v3 + v4, a2);
}

uint64_t sub_1902864C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028654C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1902865A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190286628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_190286680(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return [*(v3 + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

uint64_t sub_190286704()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028678C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C10D38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190286804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_190286880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

float sub_1902868DC@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_190286938()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19028699C@<X0>(void *a1@<X8>)
{
  result = sub_190C1A870();
  *a1 = result;
  return result;
}

uint64_t sub_1902869C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190286A00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60620);
  sub_190D54C70();
  sub_190C1B558();
  sub_190C1B6C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190286A84()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190286ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190286B90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D526C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_190286C3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D526C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190286CE0()
{
  v1 = (type metadata accessor for ShowInContactsButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_190D52930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[8];
  v12 = sub_190D526C0();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_190286E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190286ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190286F50()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190286F88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190286FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19028709C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_190287178()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1902871C0()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1902872B8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902872F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190287334()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190287460()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1902874C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190287508()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190287540()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1902875C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028760C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902876F0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_190287720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D518A0();
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

uint64_t sub_1902877DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D518A0();
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

uint64_t sub_1902878D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190287950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1902879D0(unint64_t *a1)
{
  v1 = *a1;
  sub_190C528B0(*a1);
  sub_190CEBFBC(v1);
}

uint64_t sub_190287A10()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190287A48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60EC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60ED0);
  sub_190C520B0();
  sub_190C52114();
  sub_190C52168();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190287AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190287B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190287C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190287C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190287D08()
{
  v1 = *(type metadata accessor for TTRRegistrationSheetView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53D10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190287E50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[11]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_190287FF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD610D8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11]) = a2;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[13];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

id sub_190288228@<X0>(void *a1@<X8>)
{
  v2 = sub_190A07FCC();
  *a1 = v2;

  return v2;
}

id sub_1902882A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEE300();
  *a1 = result & 1;
  return result;
}

id sub_190288308@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C5BE58();
  *a1 = result & 1;
  return result;
}

uint64_t sub_19028839C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190C5C170();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1902884FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190C581A0(v1);
}

id sub_19028857C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C5C720();
  *a1 = result & 1;
  return result;
}

id sub_1902885B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C5BC6C();
  *a1 = result & 1;
  return result;
}

id sub_190288614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C58830();
  *a1 = result & 1;
  return result;
}

id sub_190288644@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190C58844();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1902886AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_19028870C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190C581C8(v1);
}

uint64_t sub_19028873C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19028877C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902887BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190288808()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61188);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_1902888FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_190288964(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190C6626C(v1);
}

void sub_1902889A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190C65844(v1);
}

uint64_t sub_1902889F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190288A38()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190288A70()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190288ACC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190288B0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190288B64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_190288C90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_190288DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD616E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190288E90()
{
  v1 = _s11ContentViewVMa_7();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v2 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);
  if (*(v0 + v4 + *(v2 + 52)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190288FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD616F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_1902890A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902890E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_190289138()
{

  sub_19083B6D4(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1902891AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902891F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19028923C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190289288()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902892C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902893F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028942C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190289468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1902894C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1902895D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1902896E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19028975C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_190289848@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_190289900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_190289958(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190C89C20(v2);
}

uint64_t sub_1902899B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190289A10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_190289BFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
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

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_190289DEC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD2660();

  return sub_190D52690();
}

__n128 sub_190289E60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_190289E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190289EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190289F58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190289FB8()
{
  v1 = v0;
  v2 = type metadata accessor for DetailsWalletTabView();
  v24 = *(*(v2 - 1) + 80);
  v3 = (v24 + 16) & ~v24;
  v4 = *(*(v2 - 1) + 64);
  v5 = _s10WalletPassVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v23 = *(*(v5 - 8) + 64);
  v7 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D540E0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = v4 + v6;
  v10 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v3 + v9;
  v13 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D53DF0();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = v12 & ~v6;

  v16 = v7 + v2[11];
  v17 = sub_190D515F0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (!v19(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v20 = v0 + v15;

  v21 = *(v5 + 28);
  if (!v19(v1 + v15 + v21, 1, v17))
  {
    (*(v18 + 8))(v20 + v21, v17);
  }

  return MEMORY[0x1EEE6BDD0](v1, v15 + v23, v24 | v6 | 7);
}

uint64_t sub_19028A3C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_190D518A0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_19028A47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028A528()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  sub_1908BE0A0();

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

double sub_19028A5A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_19028A5FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19028A650@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19028A6A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_19028A8A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_19028A940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  return sub_19023C414(v3 + v4, a2);
}

uint64_t sub_19028A9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19028AA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19028AAB0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D52D20();
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

uint64_t sub_19028AD3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D52D20();
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

uint64_t sub_19028ADF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028AE2C()
{
  v1 = (_s11ContentViewVMa_9(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_190D52D20();
  (*(*(v6 - 8) + 8))(v5, v6);

  MEMORY[0x193AF7B30](v5 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_19028AF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19028AFDC()
{
  v1 = (_s11ContentViewVMa_9(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_190D52D20();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x193AF7B30](v0 + v3 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028B108()
{
  v1 = (_s11ContentViewVMa_9(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_190D52D20();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x193AF7B30](v0 + v3 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028B234()
{
  v1 = sub_190D53D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19028B31C()
{
  v1 = sub_190D52930();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19028B3F8()
{
  v1 = sub_190D52930();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_19028B4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
  sub_19081E868();
  sub_19081E484();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  swift_getOpaqueTypeConformance2();
  sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19028B6F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028B738()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19028B790()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19028B800()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028B840()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028B888()
{
  v1 = type metadata accessor for BannerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53A60();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + v3 + *(v1 + 20));

  sub_1908BE0A0();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19028B9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53A60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19028BA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53A60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19028BAD4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028BB0C()
{
  v1 = sub_190D51C00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19028BBEC()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19028BCBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028BCF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028BD2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028BD78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19028BDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19028BE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19028BF70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028BFA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_19028BFE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_19028C03C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_190D56ED0();
  [v2 setSubtitle_];
}

id sub_19028C0A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 subtitleHidden];
  *a2 = result;
  return result;
}

id sub_19028C0E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 chevronHidden];
  *a2 = result;
  return result;
}

id sub_19028C130@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

uint64_t sub_19028C188()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028C1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19028C228()
{
  v1 = sub_190D50F40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19028C2C4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028C300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

double sub_19028C35C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_19028C3DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_19028C444(id *a1)
{
  v1 = *a1;
  sub_190CCC158(v1);
}

id sub_19028C490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_19028C4F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190CCB104(v1);
}

uint64_t sub_19028C528()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19028C560(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D518A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19028C60C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19028C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_190D518A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19028C75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_190D518A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}