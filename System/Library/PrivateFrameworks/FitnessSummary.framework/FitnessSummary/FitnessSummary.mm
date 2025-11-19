uint64_t sub_1E67084C8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E6708504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v13 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  swift_getFunctionTypeMetadata1();
  v16 = sub_1E671FE1C();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 44);

  return v17(v18, a2, v16);
}

uint64_t sub_1E6708678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v14 = *(a4 + 16);
  v13 = *(a4 + 24);
  v15 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v11 = *(v16 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 44);

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E6708874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E67088AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  v31 = *(*(v3 - 1) + 64);
  v4 = (v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E671FEBC();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v3[9];
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v4[v7], v8);
  v10(&v4[v3[10]], v8);
  v11 = v3[11];
  if (!(*(v9 + 48))(&v4[v11], 1, v8))
  {
    v10(&v4[v11], v8);
  }

  v12 = &v4[v3[13]];
  v13 = type metadata accessor for SummaryArtwork();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_1E671FE3C();
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(v12, 1, v14))
      {
        (*(v15 + 8))(v12, v14);
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
      v17 = sub_1E671FDBC();
    }

    else
    {
      v18 = *(v12 + 1);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
      v20 = *(v19 + 48);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
      (*(*(v21 - 8) + 8))(&v12[v20], v21);
      v16 = *(v19 + 64);
      v17 = sub_1E671FE3C();
    }

    v22 = v17;
    v23 = *(v17 - 8);
    if (!(*(v23 + 48))(&v12[v16], 1, v17))
    {
      (*(v23 + 8))(&v12[v16], v22);
    }
  }

  v24 = v3[16];
  v25 = sub_1E671FDCC();
  (*(*(v25 - 8) + 8))(&v4[v24], v25);
  v26 = v3[17];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  (*(*(v27 - 8) + 8))(&v4[v26], v27);
  v28 = v3[18];
  swift_getFunctionTypeMetadata1();
  v29 = sub_1E671FE1C();
  (*(*(v29 - 8) + 8))(&v4[v28], v29);

  return swift_deallocObject();
}

uint64_t sub_1E6708DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096908, &qword_1E6720D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6708E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E671FD7C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = *(a3 + 36);
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = *(a3 + 44);
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + *(a3 + 48));
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = *(a3 + 52);
    goto LABEL_7;
  }

  v18 = sub_1E671FDCC();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = *(a3 + 64);
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = *(a3 + 68);
    goto LABEL_7;
  }

  v20 = *(a3 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v21 = sub_1E671FE1C();
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + *(a3 + 72);

  return v22(v23, a2, v21);
}

uint64_t sub_1E670915C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E671FD7C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 36);
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = *(a4 + 44);
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + *(a4 + 48)) = a2 + 1;
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = *(a4 + 52);
    goto LABEL_7;
  }

  v18 = sub_1E671FDCC();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = *(a4 + 64);
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = *(a4 + 68);
    goto LABEL_7;
  }

  v20 = *(a4 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v21 = sub_1E671FE1C();
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + *(a4 + 72);

  return v22(v23, a2, a2, v21);
}

uint64_t sub_1E6709440(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  swift_getWitnessTable();
  sub_1E670D384();
  swift_getWitnessTable();
  sub_1E672047C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  sub_1E672051C();
  swift_getWitnessTable();
  sub_1E672047C();
  sub_1E672008C();
  sub_1E67203DC();
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0);
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E670978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E671FD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E6709888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E6709990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = *(a3 + 24);
  v12 = *(a3 + 40);
  v13 = type metadata accessor for SummaryWorkoutsCardItem();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = *(a3 + 52);
LABEL_9:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1E671FDCC();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = *(a3 + 64);
    goto LABEL_9;
  }

  v17 = *(a3 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = *(a3 + 68);
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 72);

  return v21(v22, a2, v20);
}

uint64_t sub_1E6709BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = *(a4 + 24);
  v14 = *(a4 + 40);
  v15 = type metadata accessor for SummaryWorkoutsCardItem();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v10 = v15;
    v16 = *(v15 - 8);
    v17 = *(a4 + 52);
LABEL_9:
    v11 = *(v16 + 56);
    v12 = a1 + v17;
    goto LABEL_10;
  }

  v18 = sub_1E671FDCC();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v16 = *(v18 - 8);
    v17 = *(a4 + 64);
    goto LABEL_9;
  }

  v19 = *(a4 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v16 = *(v20 - 8);
    v17 = *(a4 + 68);
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata1();
  v22 = sub_1E671FE1C();
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + *(a4 + 72);

  return v23(v24, a2, a2, v22);
}

uint64_t sub_1E6709E0C()
{
  v57 = *(v0 + 16);
  v61 = *(v0 + 24);
  v63 = *(v0 + 40);
  v1 = type metadata accessor for SummaryWorkoutsCardItemView();
  v59 = *(*(v1 - 1) + 80);
  v2 = (v59 + 48) & ~v59;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = v61;
  v5 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v6;
  v58 = *(*(v5 - 1) + 64);
  v8 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E671FEBC();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
  }

  else
  {
    v10 = *v8;
  }

  v60 = v0;
  v62 = v7 & ~v6;
  v11 = &v8[v1[13]];
  type metadata accessor for SummaryWorkoutsCardItem();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v4 - 8) + 8))(v11, v4);
    v23 = type metadata accessor for SummaryWorkoutsCardErrorItem();
    v24 = v23[9];
    v25 = sub_1E671FD7C();
    v26 = *(*(v25 - 8) + 8);
    v26(&v11[v24], v25);
    v26(&v11[v23[10]], v25);
    v26(&v11[v23[11]], v25);
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(*(v4 - 8) + 8))(v11, v4);
    v13 = v5[9];
    v14 = sub_1E671FD7C();
    v15 = *(v14 - 8);
    v16 = *(v15 + 8);
    v16(&v11[v13], v14);
    v16(&v11[v5[10]], v14);
    v17 = v5[11];
    if (!(*(v15 + 48))(&v11[v17], 1, v14))
    {
      v16(&v11[v17], v14);
    }

    v18 = &v11[v5[13]];
    type metadata accessor for SummaryArtwork();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1E671FE3C();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v18, 1, v19))
      {
        (*(v20 + 8))(v18, v19);
      }

      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
      v22 = sub_1E671FDBC();
    }

    else
    {
      v27 = *(v18 + 1);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
      v29 = *(v28 + 48);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
      (*(*(v30 - 8) + 8))(&v18[v29], v30);
      v21 = *(v28 + 64);
      v22 = sub_1E671FE3C();
    }

    v31 = v22;
    v32 = *(v22 - 8);
    if (!(*(v32 + 48))(&v18[v21], 1, v22))
    {
      (*(v32 + 8))(&v18[v21], v31);
    }
  }

  v33 = v1[16];
  v34 = sub_1E671FDCC();
  (*(*(v34 - 8) + 8))(&v8[v33], v34);
  v35 = v1[17];
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v36 = sub_1E671FE1C();
  (*(*(v36 - 8) + 8))(&v8[v35], v36);
  v37 = v1[18];
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E671FE1C();
  (*(*(v38 - 8) + 8))(&v8[v37], v38);
  v39 = v60 + v62;
  (*(*(v4 - 8) + 8))(v60 + v62, v4);
  v40 = v5[9];
  v41 = sub_1E671FD7C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  v43(v60 + v62 + v40, v41);
  v43(v60 + v62 + v5[10], v41);
  v44 = v5[11];
  if (!(*(v42 + 48))(v60 + v62 + v44, 1, v41))
  {
    v43(v39 + v44, v41);
  }

  v45 = v39 + v5[13];
  swift_checkMetadataState();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1E671FE3C();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v45, 1, v46))
    {
      (*(v47 + 8))(v45, v46);
    }

    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    v49 = sub_1E671FDBC();
  }

  else
  {
    v50 = *(v45 + 8);

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v52 = *(v51 + 48);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
    (*(*(v53 - 8) + 8))(v45 + v52, v53);
    v48 = *(v51 + 64);
    v49 = sub_1E671FE3C();
  }

  v54 = v49;
  v55 = *(v49 - 8);
  if (!(*(v55 + 48))(v45 + v48, 1, v49))
  {
    (*(v55 + 8))(v45 + v48, v54);
  }

  return swift_deallocObject();
}

uint64_t sub_1E670A6D0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E670A710(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E672008C();
  type metadata accessor for SummaryWorkoutsCardErrorItemView();
  sub_1E672008C();
  sub_1E67203DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E670A890(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SummaryWorkoutsCardHeader();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1E671FDCC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1E670AA1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SummaryWorkoutsCardHeader();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_1E671FDCC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E670AB9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E671FFCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E670ABD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E671FFDC();
}

uint64_t sub_1E670AC00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E671FF6C();
  *a1 = result;
  return result;
}

uint64_t sub_1E670AC2C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E671FF7C();
}

uint64_t sub_1E670AC58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA8, &qword_1E67213D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E670ACC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A58, &qword_1E6721348);
  sub_1E671BBF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E670AD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryWorkoutsCardHeader();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 52));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1E671FDCC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = *(a3 + 60);
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = *(a3 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v17 = sub_1E671FE1C();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = *(a3 + 64);
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = *(a3 + 68);
    goto LABEL_13;
  }

  v19 = *(a3 + 24);
  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 72);

  return v21(v22, a2, v20);
}

uint64_t sub_1E670AF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryWorkoutsCardHeader();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
    return result;
  }

  v13 = sub_1E671FDCC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 60);
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = *(a4 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v17 = sub_1E671FE1C();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = *(a4 + 64);
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = *(a4 + 68);
    goto LABEL_11;
  }

  v19 = *(a4 + 24);
  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 72);

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1E670B1EC(uint64_t *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = a1[3];
  type metadata accessor for SummaryWorkoutsCardItemView();
  type metadata accessor for SummaryWorkoutsCardItem();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E671FDEC();
  sub_1E67203DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B18, &qword_1E6721490);
  sub_1E671FEEC();
  sub_1E671FEEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1ED096B58, &qword_1ED096B18, &qword_1E6721490);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E670B3E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E670B420()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E670B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E670B554(uint64_t a1))()
{
  v2 = *(a1 + 44);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_1E670DE2C;
}

uint64_t sub_1E670B5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E672004C();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D0, &qword_1E6720AE0);
  sub_1E670B698(v2, *(a1 + 16), *(a1 + 24), (a2 + *(v5 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096798, &qword_1E6720AB0);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_1E670B698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v82 = a1;
  v100 = a4;
  v96 = sub_1E672038C();
  v95 = *(v96 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  v85 = a3;
  v9 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  v83 = v9;
  v89 = *(v9 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v80 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D8, &qword_1E6720B18);
  v11 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v80 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967E0, &qword_1E6720B20);
  v105 = *(v99 - 8);
  v13 = v105[8];
  v14 = MEMORY[0x1EEE9AC00](v99);
  v98 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v80 - v16;
  v17 = a1 + *(v9 + 36);
  v102 = v17;
  v18 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v19 = v17 + *(v18 + 36);
  v20 = sub_1E671FD5C();
  v22 = v21;
  v24 = v23;
  sub_1E67201BC();
  v25 = sub_1E672027C();
  v27 = v26;
  v29 = v28;

  sub_1E670D8A0(v20, v22, v24 & 1);

  sub_1E672017C();
  v30 = sub_1E672024C();
  v93 = v31;
  v92 = v32;
  v103 = v33;
  sub_1E670D8A0(v25, v27, v29 & 1);

  v34 = v102 + *(v18 + 40);
  v35 = sub_1E671FD5C();
  v37 = v36;
  LOBYTE(v17) = v38;
  sub_1E672014C();
  v39 = sub_1E672027C();
  v41 = v40;
  v43 = v42;

  sub_1E670D8A0(v35, v37, v17 & 1);

  LODWORD(v112) = sub_1E67200BC();
  v86 = sub_1E672025C();
  v101 = v44;
  v87 = v45;
  v102 = v46;
  sub_1E670D8A0(v39, v41, v43 & 1);

  v47 = v89;
  v48 = v88;
  v49 = v82;
  v50 = v83;
  (*(v89 + 16))(v88, v82, v83);
  v51 = v47;
  v52 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v53 = swift_allocObject();
  v54 = v84;
  v55 = v85;
  *(v53 + 16) = v84;
  *(v53 + 24) = v55;
  (*(v51 + 32))(v53 + v52, v48, v50);
  v109 = v54;
  v110 = v55;
  v111 = v49;
  v56 = v91;
  sub_1E672045C();
  (*(v95 + 104))(v94, *MEMORY[0x1E69814D8], v96);
  v57 = sub_1E67203AC();
  KeyPath = swift_getKeyPath();
  v112 = v57;
  v59 = sub_1E671FE7C();
  v60 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967E8, &qword_1E6720B58) + 36));
  *v60 = KeyPath;
  v60[1] = v59;
  LOBYTE(v59) = sub_1E672010C();
  sub_1E671FE5C();
  v61 = v56 + *(v97 + 36);
  *v61 = v59;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  v106 = v54;
  v107 = v55;
  v108 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967F0, &qword_1E6720B60);
  sub_1E670D920();
  sub_1E670DA90(&qword_1ED096828, &qword_1ED0967F0, &qword_1E6720B60);
  v66 = v104;
  sub_1E672034C();
  sub_1E670DAD8(v56);
  LOBYTE(v59) = v92 & 1;
  LOBYTE(v112) = v92 & 1;
  v67 = v105[2];
  v68 = v98;
  v69 = v99;
  v67(v98, v66, v99);
  v70 = v100;
  v81 = v30;
  v71 = v93;
  *v100 = v30;
  v70[1] = v71;
  *(v70 + 16) = v59;
  v72 = v86;
  v70[3] = v103;
  v70[4] = v72;
  v70[5] = v101;
  LODWORD(v97) = v87 & 1;
  *(v70 + 48) = v87 & 1;
  v70[7] = v102;
  v73 = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096830, &qword_1E6720B78);
  v67(v73 + *(v74 + 64), v68, v69);
  sub_1E670DB40(v30, v71, v59);

  v75 = v72;
  v76 = v72;
  v77 = v101;
  LOBYTE(v72) = v97;
  sub_1E670DB40(v76, v101, v97);
  v78 = v105[1];

  v78(v104, v69);
  v78(v68, v69);
  sub_1E670D8A0(v75, v77, v72);

  sub_1E670D8A0(v81, v71, v112);
}

uint64_t sub_1E670BEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SummaryWorkoutsCardErrorItemView() + 36);
  v4 = v3 + *(type metadata accessor for SummaryWorkoutsCardErrorItem() + 44);
  v5 = sub_1E671FD5C();
  v7 = v6;
  LOBYTE(v3) = v8;
  sub_1E672014C();
  v9 = sub_1E672027C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1E670D8A0(v5, v7, v3 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_1E670BFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v44 = a4;
  v36 = a2;
  v5 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (MEMORY[0x1EEE9AC00])();
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096838, &qword_1E6720B80);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = (MEMORY[0x1EEE9AC00])();
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1 + *(v5 + 36);
  v18 = v38;
  v19 = v17 + *(type metadata accessor for SummaryWorkoutsCardErrorItem() + 44);
  v20 = sub_1E671FD5C();
  v39 = v21;
  v40 = v20;
  v41 = v22;
  v42 = v23;
  (*(v6 + 16))(v9, a1, v5);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v36;
  *(v25 + 24) = v18;
  (*(v6 + 32))(v25 + v24, v9, v5);
  v37 = v16;
  sub_1E672045C();
  v26 = v11[2];
  v27 = v43;
  v26(v43, v16, v10);
  v28 = v39;
  v29 = v40;
  v30 = v44;
  *v44 = v40;
  v30[1] = v28;
  LOBYTE(v9) = v41 & 1;
  *(v30 + 16) = v41 & 1;
  v30[3] = v42;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096840, &qword_1E6720B88);
  v26(v31 + *(v32 + 48), v27, v10);
  sub_1E670DB40(v29, v28, v9);
  v33 = v11[1];

  v33(v37, v10);
  v33(v27, v10);
  sub_1E670D8A0(v29, v28, v9);
}

uint64_t sub_1E670C2EC(uint64_t a1)
{
  v2 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  sub_1E670B554(v2);
  v4 = *(v3 + 40);
  (*(v3 + 32))(a1 + *(v2 + 36));
}

uint64_t sub_1E670C358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  v15 = v14[9];
  v16 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  (*(*(v16 - 8) + 32))(a6 + v15, a1, v16);
  *(a6 + v14[10]) = a7;
  v17 = a6 + v14[11];
  return sub_1E670B4B0(a2, a3, a4, a5);
}

uint64_t sub_1E670C464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v97 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096718, &qword_1E6720A68);
  v3 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v5 = &v85 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096720, &qword_1E6720A70);
  v6 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v85 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096728, &qword_1E6720A78);
  v8 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v85 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096730, &qword_1E6720A80);
  v10 = *(*(v96 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v96);
  v89 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v85 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096738, &qword_1E6720A88);
  v14 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v85 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096740, &qword_1E6720A90);
  v16 = *(*(v94 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v94);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v85 - v20;
  v22 = sub_1E671FEBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v85 - v28;
  sub_1E670CEF4(&v85 - v28);
  (*(v23 + 104))(v27, *MEMORY[0x1E697E6C0], v22);
  v30 = sub_1E671FEAC();
  v31 = *(v23 + 8);
  v31(v27, v22);
  v31(v29, v22);
  if (v30)
  {
    v32 = sub_1E672039C();
    sub_1E67204EC();
    sub_1E671FF1C();
    *&v98[54] = v103;
    *&v98[70] = v104;
    *&v98[86] = v105;
    *&v98[102] = v106;
    *&v98[6] = v100;
    *&v98[22] = v101;
    v99 = 0;
    *&v98[38] = v102;
    v33 = sub_1E67204EC();
    v35 = v34;
    v36 = &v19[*(v94 + 36)];
    v37 = *(v92 + 16);
    v38 = *(v92 + 24);
    sub_1E670CC94(v2, v36);
    v39 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096768, &qword_1E6720AA8) + 36));
    *v39 = v33;
    v39[1] = v35;
    v40 = *&v98[32];
    *(v19 + 66) = *&v98[48];
    *(v19 + 50) = v40;
    v41 = *v98;
    *(v19 + 34) = *&v98[16];
    *(v19 + 18) = v41;
    *(v19 + 16) = *&v98[110];
    *(v19 + 114) = *&v98[96];
    v42 = *&v98[64];
    *(v19 + 98) = *&v98[80];
    *v19 = v32;
    *(v19 + 1) = 0x3FFC71C71C71C71CLL;
    *(v19 + 8) = 0;
    *(v19 + 82) = v42;
    v43 = &qword_1ED096740;
    v44 = &qword_1E6720A90;
    sub_1E670D7E4(v19, v21, &qword_1ED096740, &qword_1E6720A90);
    sub_1E670D71C(v21, v95, &qword_1ED096740, &qword_1E6720A90);
    swift_storeEnumTagMultiPayload();
    sub_1E670D1F8();
    sub_1E670D408();
    sub_1E672007C();
    v45 = v21;
  }

  else
  {
    v46 = v92;
    sub_1E670B5FC(v92, v5);
    v47 = sub_1E672010C();
    v48 = *(v2 + *(v46 + 40));
    sub_1E671FE5C();
    v49 = &v5[*(v85 + 36)];
    *v49 = v47;
    *(v49 + 1) = v50;
    *(v49 + 2) = v51;
    *(v49 + 3) = v52;
    *(v49 + 4) = v53;
    v49[40] = 0;
    sub_1E67204EC();
    sub_1E671FF1C();
    v54 = v88;
    sub_1E670D7E4(v5, v88, &qword_1ED096718, &qword_1E6720A68);
    v55 = (v54 + *(v86 + 36));
    v56 = v103;
    v57 = v105;
    v58 = v106;
    v55[4] = v104;
    v55[5] = v57;
    v55[6] = v58;
    v59 = v101;
    v60 = v102;
    *v55 = v100;
    v55[1] = v59;
    v55[2] = v60;
    v55[3] = v56;
    v61 = sub_1E672013C();
    sub_1E671FE5C();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v90;
    sub_1E670D7E4(v54, v90, &qword_1ED096720, &qword_1E6720A70);
    v71 = v70 + *(v87 + 36);
    *v71 = v61;
    *(v71 + 8) = v63;
    *(v71 + 16) = v65;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 0;
    LOBYTE(v54) = sub_1E67200EC();
    sub_1E671FE5C();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v70;
    v81 = v89;
    sub_1E670D7E4(v80, v89, &qword_1ED096728, &qword_1E6720A78);
    v82 = v81 + *(v96 + 36);
    *v82 = v54;
    *(v82 + 8) = v73;
    *(v82 + 16) = v75;
    *(v82 + 24) = v77;
    *(v82 + 32) = v79;
    *(v82 + 40) = 0;
    v43 = &qword_1ED096730;
    v44 = &qword_1E6720A80;
    v83 = v91;
    sub_1E670D7E4(v81, v91, &qword_1ED096730, &qword_1E6720A80);
    sub_1E670D71C(v83, v95, &qword_1ED096730, &qword_1E6720A80);
    swift_storeEnumTagMultiPayload();
    sub_1E670D1F8();
    sub_1E670D408();
    sub_1E672007C();
    v45 = v83;
  }

  return sub_1E670D784(v45, v43, v44);
}

__n128 sub_1E670CC94@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967B8, &qword_1E6720AC8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v41 - v7;
  v9 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  sub_1E670B5FC(v9, v8);
  v10 = sub_1E672010C();
  v11 = *(a1 + *(v9 + 40));
  sub_1E671FE5C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096718, &qword_1E6720A68) + 36)];
  *v20 = v10;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_1E672013C();
  sub_1E671FE5C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967C0, &qword_1E6720AD0) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_1E67200EC();
  sub_1E671FE5C();
  v32 = &v8[*(v5 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_1E67204EC();
  sub_1E671FF1C();
  sub_1E670D7E4(v8, a2, &qword_1ED0967B8, &qword_1E6720AC8);
  v37 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967C8, &qword_1E6720AD8) + 36);
  v38 = v41[5];
  *(v37 + 64) = v41[4];
  *(v37 + 80) = v38;
  *(v37 + 96) = v41[6];
  v39 = v41[1];
  *v37 = v41[0];
  *(v37 + 16) = v39;
  result = v41[3];
  *(v37 + 32) = v41[2];
  *(v37 + 48) = result;
  return result;
}

uint64_t sub_1E670CEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E671FFFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  sub_1E670DE54(v2, &v20 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E671FEBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_1E67205DC();
    v17 = sub_1E67200DC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E670DEC4(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_1E6707000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1E694FF50](v19, -1, -1);
      MEMORY[0x1E694FF50](v18, -1, -1);
    }

    sub_1E671FFEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
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

uint64_t sub_1E670D1D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_1E670D1F8()
{
  result = qword_1ED096748;
  if (!qword_1ED096748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096740, &qword_1E6720A90);
    sub_1E670D2F8();
    sub_1E670DA90(&qword_1ED096760, &qword_1ED096768, &qword_1E6720AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096748);
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

unint64_t sub_1E670D2F8()
{
  result = qword_1EE2C5460;
  if (!qword_1EE2C5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096750, &qword_1E6720A98);
    sub_1E670D384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5460);
  }

  return result;
}

unint64_t sub_1E670D384()
{
  result = qword_1EE2C5488;
  if (!qword_1EE2C5488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5488);
  }

  return result;
}

unint64_t sub_1E670D408()
{
  result = qword_1ED096770;
  if (!qword_1ED096770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096730, &qword_1E6720A80);
    sub_1E670D494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096770);
  }

  return result;
}

unint64_t sub_1E670D494()
{
  result = qword_1ED096778;
  if (!qword_1ED096778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096728, &qword_1E6720A78);
    sub_1E670D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096778);
  }

  return result;
}

unint64_t sub_1E670D520()
{
  result = qword_1ED096780;
  if (!qword_1ED096780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096720, &qword_1E6720A70);
    sub_1E670D5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096780);
  }

  return result;
}

unint64_t sub_1E670D5AC()
{
  result = qword_1ED096788;
  if (!qword_1ED096788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096718, &qword_1E6720A68);
    sub_1E670D638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096788);
  }

  return result;
}

unint64_t sub_1E670D638()
{
  result = qword_1ED096790;
  if (!qword_1ED096790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096798, &qword_1E6720AB0);
    sub_1E670DA90(&qword_1ED0967A0, &qword_1ED0967A8, &qword_1E6720AB8);
    sub_1E670DA90(&qword_1EE2C5408, &qword_1ED0967B0, &qword_1E6720AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096790);
  }

  return result;
}

uint64_t sub_1E670D71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E670D784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E670D7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E670D84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E671FF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E670D8A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E670D8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1E670BEC8(v1[4], a1);
}

uint64_t sub_1E670D8BC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694F590]();
  *a1 = result;
  return result;
}

uint64_t sub_1E670D8E8(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E694F5A0](v2);
}

unint64_t sub_1E670D920()
{
  result = qword_1ED0967F8;
  if (!qword_1ED0967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0967D8, &qword_1E6720B18);
    sub_1E670D9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0967F8);
  }

  return result;
}

unint64_t sub_1E670D9AC()
{
  result = qword_1ED096800;
  if (!qword_1ED096800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0967E8, &qword_1E6720B58);
    sub_1E670DA90(&qword_1ED096808, &qword_1ED096810, &qword_1E6720B68);
    sub_1E670DA90(&qword_1ED096818, &qword_1ED096820, &qword_1E6720B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096800);
  }

  return result;
}

uint64_t sub_1E670DA90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E670DAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D8, &qword_1E6720B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E670DB40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  v16 = *(*(v3 - 8) + 80);
  v15 = *(*(v3 - 8) + 64);
  v4 = (v0 + ((v16 + 32) & ~v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E671FEBC();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[*(v3 + 36)];
  (*(*(v1 - 8) + 8))(v7, v1);
  v8 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v9 = v8[9];
  v10 = sub_1E671FD7C();
  v11 = *(*(v10 - 8) + 8);
  v11(&v7[v9], v10);
  v11(&v7[v8[10]], v10);
  v11(&v7[v8[11]], v10);
  v12 = *(v3 + 44);
  swift_getFunctionTypeMetadata1();
  v13 = sub_1E671FE1C();
  (*(*(v13 - 8) + 8))(&v4[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_1E670DDB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SummaryWorkoutsCardErrorItemView() - 8);
  return sub_1E670C2EC(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

uint64_t sub_1E670DE2C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1E670DE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E670DEC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E670DFDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E670E0E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1E670DFDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E670E144(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E672060C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1E670E0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E670E144(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E670E190(a1, a2);
  sub_1E670E2C0(&unk_1F5FD4888);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E670E190(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E670E3AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E672060C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E67205AC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E670E3AC(v10, 0);
        result = sub_1E67205FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E670E2C0(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E670E420(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E670E3AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096848, &unk_1E6720B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E670E420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096848, &unk_1E6720B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1E670E520(uint64_t a1)
{
  sub_1E670E614();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    type metadata accessor for SummaryWorkoutsCardErrorItem();
    if (v5 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      sub_1E671FE1C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E670E614()
{
  if (!qword_1EE2C54B8[0])
  {
    sub_1E671FEBC();
    v0 = sub_1E671FE6C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C54B8);
    }
  }
}

unint64_t sub_1E670E66C()
{
  result = qword_1ED096858;
  if (!qword_1ED096858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096860, &qword_1E6720BE8);
    sub_1E670D1F8();
    sub_1E670D408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096858);
  }

  return result;
}

uint64_t sub_1E670E770(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E672052C();
}

uint64_t sub_1E670E940(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096878, &qword_1E6720CB8);
  return sub_1E671FDFC();
}

uint64_t (*sub_1E670E9D4(uint64_t a1))()
{
  v1 = *(a1 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  sub_1E671FE0C();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_1E6712EA8;
}

uint64_t sub_1E670EA64()
{
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t sub_1E670EAC0(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v4;
}

uint64_t sub_1E670EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = *(a1 + 16);
  v57 = *(v5 - 8);
  v6 = v57[8];
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E671FEEC();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  v67 = v8;
  v11 = sub_1E671FEEC();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for SummaryArtwork();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v25 = sub_1E672008C();
  v65 = *(v25 - 8);
  v66 = v25;
  v26 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v55 - v27;
  sub_1E670D71C(v3 + *(a1 + 52), v19, &qword_1ED096870, &qword_1E6720CB0);
  v28 = (*(v21 + 48))(v19, 1, v20);
  v29 = MEMORY[0x1E697F568];
  if (v28 == 1)
  {
    sub_1E670D784(v19, &qword_1ED096870, &qword_1E6720CB0);
    v83[0] = sub_1E672039C();
    v83[1] = 0x3FFC71C71C71C71CLL;
    v84 = 0;
    v30 = *(a1 + 24);
    v81 = v30;
    v82 = v29;
    WitnessTable = swift_getWitnessTable();
    v32 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
    v79 = WitnessTable;
    v80 = v32;
    swift_getWitnessTable();
    sub_1E670D384();
    v33 = v64;
    sub_1E6718738(v83, v11, v63);
  }

  else
  {
    sub_1E67133E4(v19, v24);
    v34 = v3;
    v35 = sub_1E670EAC0(a1);
    v36 = v56;
    v37 = v24;
    v55 = v24;
    v35(v24);

    v30 = *(a1 + 24);
    v38 = v59;
    sub_1E67202CC();
    (v57[1])(v36, v5);
    v39 = sub_1E67204DC();
    v56 = v40;
    v57 = &v55;
    MEMORY[0x1EEE9AC00](v39);
    *(&v55 - 4) = v5;
    *(&v55 - 3) = v30;
    *(&v55 - 2) = v34;
    *(&v55 - 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969B0, &qword_1E6720E50);
    v71 = v30;
    v72 = v29;
    v41 = v67;
    v42 = swift_getWitnessTable();
    sub_1E6713454();
    v43 = v58;
    sub_1E672035C();
    (*(v60 + 8))(v38, v41);
    v44 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
    v69 = v42;
    v70 = v44;
    v45 = swift_getWitnessTable();
    v46 = v61;
    sub_1E671EA50(v43, v11, v45);
    v47 = *(v62 + 8);
    v47(v43, v11);
    sub_1E671EA50(v46, v11, v45);
    sub_1E670D384();
    v33 = v64;
    sub_1E6718640(v43, v11);
    v47(v43, v11);
    v29 = MEMORY[0x1E697F568];
    v47(v46, v11);
    sub_1E671352C(v55);
  }

  v77 = v30;
  v78 = v29;
  v48 = swift_getWitnessTable();
  v49 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  v75 = v48;
  v76 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_1E670D384();
  v73 = v50;
  v74 = v51;
  v52 = v66;
  v53 = swift_getWitnessTable();
  sub_1E671EA50(v33, v52, v53);
  return (*(v65 + 8))(v33, v52);
}

uint64_t sub_1E670F360@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E671FEBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  sub_1E670CEF4(v17 - v8);
  (*(v3 + 104))(v7, *MEMORY[0x1E697E6C0], v2);
  v10 = sub_1E671FEAC();
  v11 = *(v3 + 8);
  v11(v7, v2);
  result = (v11)(v9, v2);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969B8, &qword_1E6720E58);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E6720C00;
    *(v13 + 32) = sub_1E671EA58();
    *(v13 + 40) = sub_1E672039C();
    sub_1E672053C();
    MEMORY[0x1E694FA90](v13);
    result = sub_1E671FE9C();
    v14 = v17[1];
    v15 = v18;
    v16 = v19;
  }

  else
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_1E670F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E672005C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096980, &qword_1E6720DC0);
  return sub_1E670F5B0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_1E670F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v109 = a3;
  v105 = a2;
  v106 = a4;
  v5 = sub_1E67201EC();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E672038C();
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096988, &qword_1E6720DC8);
  v101 = *(v108 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v14 = &v96 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v96 - v17;
  v19 = sub_1E671FD7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096990, &qword_1E6720DD0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v110 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - v28;
  v109 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  v30 = v109[11];
  v105 = a1;
  sub_1E670D71C(a1 + v30, v18, &qword_1ED096868, &unk_1E6721040);
  v31 = (*(v20 + 48))(v18, 1, v19);
  v107 = v29;
  if (v31 == 1)
  {
    sub_1E670D784(v18, &qword_1ED096868, &unk_1E6721040);
    v32 = 1;
  }

  else
  {
    v33 = *(v20 + 32);
    v97 = v23;
    v98 = v19;
    v33(v23, v18, v19);
    v34 = sub_1E671FD5C();
    v36 = v35;
    v38 = v37;
    (*(v99 + 104))(v11, *MEMORY[0x1E69814D8], v100);
    v111 = sub_1E67203AC();
    v39 = sub_1E672025C();
    v41 = v40;
    v43 = v42;
    v99 = v44;
    sub_1E670D8A0(v34, v36, v38 & 1);

    sub_1E672020C();
    sub_1E672018C();
    sub_1E67201DC();

    v45 = sub_1E672027C();
    v47 = v46;
    v49 = v48;
    v100 = v50;

    sub_1E670D8A0(v39, v41, v43 & 1);

    (*(v20 + 8))(v97, v98);
    KeyPath = swift_getKeyPath();
    v52 = &v14[*(v108 + 36)];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969A0, &qword_1E6720E10) + 28);
    v54 = *MEMORY[0x1E6980FD8];
    v55 = sub_1E672026C();
    v56 = *(v55 - 8);
    (*(v56 + 104))(v52 + v53, v54, v55);
    (*(v56 + 56))(v52 + v53, 0, 1, v55);
    *v52 = swift_getKeyPath();
    *v14 = v45;
    *(v14 + 1) = v47;
    v57 = v49 & 1;
    v29 = v107;
    v14[16] = v57;
    *(v14 + 3) = v100;
    *(v14 + 4) = KeyPath;
    *(v14 + 5) = 1;
    v14[48] = 0;
    sub_1E670D7E4(v14, v29, &qword_1ED096988, &qword_1E6720DC8);
    v32 = 0;
  }

  (*(v101 + 56))(v29, v32, 1, v108);
  v58 = v105;
  v59 = v105 + v109[9];
  v60 = sub_1E671FD5C();
  v62 = v61;
  v64 = v63;
  sub_1E67201CC();
  sub_1E672016C();

  v66 = v102;
  v65 = v103;
  v67 = v104;
  (*(v103 + 104))(v102, *MEMORY[0x1E6980EA8], v104);
  sub_1E672022C();

  (*(v65 + 8))(v66, v67);
  v103 = sub_1E672027C();
  v104 = v68;
  v108 = v69;
  LODWORD(v101) = v70;

  sub_1E670D8A0(v60, v62, v64 & 1);

  v102 = swift_getKeyPath();
  v71 = v58 + v109[10];
  v72 = sub_1E671FD5C();
  v74 = v73;
  v76 = v75;
  sub_1E672020C();
  sub_1E672019C();
  sub_1E67201DC();

  v109 = sub_1E672027C();
  v78 = v77;
  LOBYTE(v58) = v79;
  v105 = v80;

  sub_1E670D8A0(v72, v74, v76 & 1);

  v81 = swift_getKeyPath();
  LODWORD(v100) = sub_1E67200BC();
  v114 = v58 & 1;
  v113 = 0;
  v82 = v107;
  v83 = v110;
  sub_1E670D71C(v107, v110, &qword_1ED096990, &qword_1E6720DD0);
  v84 = v101 & 1;
  v112 = v101 & 1;
  LOBYTE(v72) = v113;
  LOBYTE(v58) = v114;
  v85 = v106;
  sub_1E670D71C(v83, v106, &qword_1ED096990, &qword_1E6720DD0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096998, &qword_1E6720E08);
  v87 = v85 + *(v86 + 48);
  v88 = v103;
  v89 = v104;
  v90 = v108;
  *v87 = v103;
  *(v87 + 8) = v90;
  *(v87 + 16) = v84;
  v91 = v102;
  *(v87 + 24) = v89;
  *(v87 + 32) = v91;
  *(v87 + 40) = 2;
  *(v87 + 48) = 0;
  v92 = v85 + *(v86 + 64);
  v93 = v109;
  *v92 = v109;
  *(v92 + 8) = v78;
  *(v92 + 16) = v58;
  *(v92 + 24) = v105;
  *(v92 + 32) = v81;
  *(v92 + 40) = 1;
  *(v92 + 48) = v72;
  *(v92 + 52) = v100;
  v94 = v88;
  sub_1E670DB40(v88, v90, v84);

  sub_1E670DB40(v93, v78, v58 & 1);

  sub_1E670D784(v82, &qword_1ED096990, &qword_1E6720DD0);
  sub_1E670D8A0(v93, v78, v58 & 1);

  sub_1E670D8A0(v94, v108, v112);

  return sub_1E670D784(v110, &qword_1ED096990, &qword_1E6720DD0);
}

uint64_t sub_1E670FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  v18 = v17[9];
  v19 = sub_1E671FD7C();
  v20 = *(*(v19 - 8) + 32);
  v20(a9 + v18, a1, v19);
  v20(a9 + v17[10], a2, v19);
  sub_1E670D7E4(a3, a9 + v17[11], &qword_1ED096868, &unk_1E6721040);
  *(a9 + v17[12]) = a4;
  sub_1E670D7E4(a5, a9 + v17[13], &qword_1ED096870, &qword_1E6720CB0);
  *(a9 + v17[14]) = a10;
  *(a9 + v17[15]) = a11;
  v21 = v17[16];
  v22 = sub_1E671FDCC();
  (*(*(v22 - 8) + 32))(a9 + v21, a6, v22);
  v23 = a9 + v17[17];
  sub_1E670E940(a7, a8);
  v24 = a9 + v17[18];
  return sub_1E670EA64();
}

uint64_t sub_1E67100C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = *(a1 - 8);
  v51 = *(v50 + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v2 + 16);
  v4 = v2;
  v46 = v2;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  v44 = *(v4 + 24);
  v69 = v44;
  v70 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  v67 = WitnessTable;
  v68 = v6;
  v7 = swift_getWitnessTable();
  v8 = sub_1E670D384();
  v65 = v7;
  v66 = v8;
  v43 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  sub_1E672047C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  sub_1E672051C();
  swift_getWitnessTable();
  sub_1E672047C();
  sub_1E672008C();
  v9 = sub_1E67203DC();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v39 - v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0);
  v63 = v12;
  v64 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8);
  v61 = v14;
  v62 = v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v59 = v16;
  v60 = v17;
  v58 = swift_getWitnessTable();
  v40 = v9;
  v41 = swift_getWitnessTable();
  v56 = v9;
  v57 = v41;
  v42 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v43 + 64);
  v20 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v25 = v47;
  v26 = v44;
  v53 = v47;
  v54 = v44;
  v27 = v49;
  v55 = v49;
  sub_1E67203CC();
  v28 = v50;
  v29 = v48;
  v30 = v46;
  (*(v50 + 16))(v48, v27, v46);
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  *(v32 + 24) = v26;
  (*(v28 + 32))(v32 + v31, v29, v30);
  v33 = v40;
  v34 = v41;
  v35 = v39;
  sub_1E67202DC();

  (*(v45 + 8))(v35, v33);
  v56 = v33;
  v57 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E671EA50(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v43 + 8);
  v37(v22, OpaqueTypeMetadata2);
  sub_1E671EA50(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v37)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_1E67107A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v86 = a1;
  v96 = a4;
  v89 = a2;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  v80 = sub_1E672051C();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1E672047C();
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = v76 - v9;
  v90 = a3;
  v116 = a3;
  v117 = MEMORY[0x1E697F568];
  v10 = swift_getWitnessTable();
  v11 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  v114 = v10;
  v115 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1E670D384();
  v112 = v12;
  v113 = v13;
  v76[1] = swift_getWitnessTable();
  v14 = sub_1E672047C();
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v76 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  v97 = v14;
  v18 = sub_1E671FEEC();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v87 = v76 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  v94 = v18;
  v21 = sub_1E671FEEC();
  v84 = *(v21 - 8);
  v22 = *(v84 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v83 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v82 = v76 - v25;
  v26 = sub_1E671FEBC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v76 - v32;
  v95 = v5;
  v93 = sub_1E672008C();
  v92 = *(v93 - 8);
  v34 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = v76 - v35;
  v36 = v86;
  sub_1E670CEF4(v33);
  (*(v27 + 104))(v31, *MEMORY[0x1E697E6C0], v26);
  LOBYTE(v5) = sub_1E671FEAC();
  v37 = *(v27 + 8);
  v37(v31, v26);
  v38 = (v37)(v33, v26);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v38);
    v39 = v89;
    v88 = v21;
    v40 = v90;
    v76[-4] = v89;
    v76[-3] = v40;
    v76[-2] = v36;
    sub_1E672004C();
    sub_1E672046C();
    WitnessTable = sub_1E67204AC();
    v77 = v41;
    v80 = v76;
    MEMORY[0x1EEE9AC00](WitnessTable);
    v76[-4] = v39;
    v76[-3] = v40;
    v76[-2] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968C0, &qword_1E6720D08);
    v85 = MEMORY[0x1E6981870];
    v42 = v97;
    v43 = swift_getWitnessTable();
    sub_1E670DA90(&qword_1EE2C53E0, &qword_1ED0968C0, &qword_1E6720D08);
    sub_1E672035C();
    (*(v78 + 8))(v17, v42);
    WitnessTable = sub_1E67204BC();
    v78 = v44;
    v80 = v76;
    MEMORY[0x1EEE9AC00](WitnessTable);
    v76[-4] = v39;
    v76[-3] = v40;
    v45 = v88;
    v76[-2] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968C8, &qword_1E6720D10);
    v46 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0);
    v100 = v43;
    v101 = v46;
    v47 = v94;
    v48 = swift_getWitnessTable();
    sub_1E670DA90(&qword_1EE2C53D0, &qword_1ED0968C8, &qword_1E6720D10);
    v49 = v83;
    v50 = v87;
    sub_1E672035C();
    (*(v81 + 8))(v50, v47);
    v51 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8);
    v98 = v48;
    v99 = v51;
    v52 = swift_getWitnessTable();
    v53 = v82;
    sub_1E671EA50(v49, v45, v52);
    v54 = *(v84 + 8);
    v54(v49, v45);
    sub_1E671EA50(v53, v45, v52);
    swift_getWitnessTable();
    v55 = v91;
    sub_1E6718640(v49, v45);
    v54(v49, v45);
    v54(v53, v45);
  }

  else
  {
    v56 = sub_1E672005C();
    MEMORY[0x1EEE9AC00](v56);
    v57 = v90;
    v76[-4] = v89;
    v76[-3] = v57;
    v76[-2] = v36;
    v58 = v77;
    sub_1E672046C();
    v59 = v95;
    v60 = swift_getWitnessTable();
    v61 = v88;
    sub_1E671EA50(v58, v59, v60);
    v90 = *(v85 + 8);
    v90(v58, v59);
    sub_1E671EA50(v61, v59, v60);
    v62 = swift_getWitnessTable();
    v63 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0);
    v110 = v62;
    v111 = v63;
    v64 = swift_getWitnessTable();
    v65 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8);
    v108 = v64;
    v109 = v65;
    swift_getWitnessTable();
    v55 = v91;
    sub_1E6718738(v58, v21, v59);
    v66 = v90;
    v90(v58, v59);
    v66(v88, v59);
  }

  v67 = swift_getWitnessTable();
  v68 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0);
  v106 = v67;
  v107 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8);
  v104 = v69;
  v105 = v70;
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v102 = v71;
  v103 = v72;
  v73 = v93;
  v74 = swift_getWitnessTable();
  sub_1E671EA50(v55, v73, v74);
  return (*(v92 + 8))(v55, v73);
}

uint64_t sub_1E6711528@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v3 = sub_1E672008C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  sub_1E670EB2C(v11, v8);
  v19[6] = a1;
  v19[7] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  v19[4] = WitnessTable;
  v19[5] = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1E670D384();
  v19[2] = v14;
  v19[3] = v15;
  v16 = swift_getWitnessTable();
  sub_1E671EA50(v8, v3, v16);
  v17 = *(v4 + 8);
  v17(v8, v3);
  sub_1E671EA50(v10, v3, v16);
  return (v17)(v10, v3);
}

uint64_t sub_1E6711780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E672000C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096958, &qword_1E6720D98);
  return sub_1E67117F0(a1, a2 + *(v4 + 44));
}

uint64_t sub_1E67117F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096960, &qword_1E6720DA0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  sub_1E670F550(v12, v11);
  v13 = sub_1E67200EC();
  sub_1E671FE5C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096968, &qword_1E6720DA8) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_1E672010C();
  v24 = *(a1 + *(v12 + 56)) + 5.0;
  sub_1E671FE5C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096970, &qword_1E6720DB0) + 36)];
  *v33 = v23;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_1E672011C();
  v35 = *(a1 + *(v12 + 60)) + 5.0;
  sub_1E671FE5C();
  v36 = &v11[*(v5 + 44)];
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_1E670D71C(v11, v9, &qword_1ED096960, &qword_1E6720DA0);
  sub_1E670D71C(v9, a2, &qword_1ED096960, &qword_1E6720DA0);
  v41 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096978, &qword_1E6720DB8) + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_1E670D784(v11, &qword_1ED096960, &qword_1E6720DA0);
  return sub_1E670D784(v9, &qword_1ED096960, &qword_1E6720DA0);
}

uint64_t sub_1E6711A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a2;
  v118 = a3;
  v6 = sub_1E671FDCC();
  v116 = *(v6 - 8);
  v7 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E672057C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968D0, &qword_1E6720D18);
  v14 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968D8, &qword_1E6720D20);
  v110 = *(v17 - 8);
  v111 = v17;
  v18 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v95 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968E0, &qword_1E6720D28);
  v20 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v95 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968E8, &qword_1E6720D30);
  v22 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v109 = &v95 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968F0, &qword_1E6720D38);
  v24 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v95 - v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968F8, &qword_1E6720D40);
  v26 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v95 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096900, &qword_1E6720D48);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v95 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096908, &qword_1E6720D50);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v95 - v37;
  v39 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  if ((*(a1 + *(v39 + 48)) & 1) == 0)
  {
    v95 = v39;
    v96 = v38;
    v97 = v29;
    v98 = v28;
    v99 = v36;
    v100 = v13;
    v101 = v9;
    v102 = v6;
    v117 = a1;
    v118 = a4;
    sub_1E672049C();
    sub_1E67203EC();
    v40 = sub_1E672028C();
    v42 = v41;
    v44 = v43;
    LODWORD(v119) = sub_1E67200AC();
    v45 = sub_1E672025C();
    v47 = v46;
    v49 = v48;
    sub_1E670D8A0(v40, v42, v44 & 1);

    sub_1E67201FC();
    sub_1E672016C();

    v50 = sub_1E672027C();
    v52 = v51;
    v54 = v53;
    v56 = v55;

    sub_1E670D8A0(v45, v47, v49 & 1);

    v119 = v50;
    v120 = v52;
    v121 = v54 & 1;
    v122 = v56;
    v57 = *MEMORY[0x1E697E728];
    v58 = sub_1E671FEBC();
    (*(*(v58 - 8) + 104))(v16, v57, v58);
    sub_1E6712EE0();
    if (sub_1E672055C())
    {
      sub_1E670DA90(&qword_1ED096918, &qword_1ED0968D0, &qword_1E6720D18);
      v59 = v107;
      sub_1E67202FC();
      sub_1E670D784(v16, &qword_1ED0968D0, &qword_1E6720D18);
      sub_1E670D8A0(v50, v52, v54 & 1);

      v60 = v106;
      v61 = &v106[*(v103 + 36)];
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096920, &qword_1E6720D58) + 28);
      v63 = *MEMORY[0x1E69816E0];
      v64 = sub_1E67203FC();
      (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
      *v61 = swift_getKeyPath();
      (*(v110 + 32))(v60, v59, v111);
      LOBYTE(v63) = sub_1E672012C();
      sub_1E671FE5C();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v73 = v109;
      sub_1E670D7E4(v60, v109, &qword_1ED0968E0, &qword_1E6720D28);
      v74 = v73 + *(v105 + 36);
      *v74 = v63;
      *(v74 + 8) = v66;
      *(v74 + 16) = v68;
      *(v74 + 24) = v70;
      *(v74 + 32) = v72;
      *(v74 + 40) = 0;
      LOBYTE(v63) = sub_1E672011C();
      sub_1E671FE5C();
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v83 = v73;
      v84 = v112;
      sub_1E670D7E4(v83, v112, &qword_1ED0968E8, &qword_1E6720D30);
      v85 = v84 + *(v108 + 36);
      *v85 = v63;
      *(v85 + 8) = v76;
      *(v85 + 16) = v78;
      *(v85 + 24) = v80;
      *(v85 + 32) = v82;
      *(v85 + 40) = 0;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.435294118 alpha:1.0];
      v86 = sub_1E672037C();
      v16 = v115;
      sub_1E670D7E4(v84, v115, &qword_1ED0968F0, &qword_1E6720D38);
      v87 = &v16[*(v114 + 36)];
      *v87 = v86;
      *(v87 + 8) = xmmword_1E6720C10;
      *(v87 + 3) = 0x4000000000000000;
      sub_1E672056C();
      if (qword_1EE2C53B0 == -1)
      {
LABEL_5:
        v88 = qword_1EE2C6190;
        (*(v116 + 16))(v101, v117 + *(v95 + 64), v102);
        v89 = v88;
        v119 = sub_1E672058C();
        v120 = v90;
        sub_1E67130B0();
        sub_1E6713390();
        v91 = v113;
        sub_1E672031C();

        sub_1E670D784(v16, &qword_1ED0968F8, &qword_1E6720D40);
        v92 = v91;
        v38 = v96;
        sub_1E670D7E4(v92, v96, &qword_1ED096900, &qword_1E6720D48);
        (*(v97 + 56))(v38, 0, 1, v98);
        a4 = v118;
        v36 = v99;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  (*(v29 + 56))(v38, 1, 1, v28);
LABEL_6:
  sub_1E6708DC8(v38, v36);
  *a4 = 0;
  *(a4 + 8) = 1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096950, &qword_1E6720D90);
  sub_1E6708DC8(v36, a4 + *(v93 + 48));
  sub_1E670D784(v38, &qword_1ED096908, &qword_1E6720D50);
  return sub_1E670D784(v36, &qword_1ED096908, &qword_1E6720D50);
}

uint64_t sub_1E67124E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096968, &qword_1E6720DA8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v80 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096970, &qword_1E6720DB0);
  v12 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v80 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096960, &qword_1E6720DA0);
  v14 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v80 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096898, &qword_1E6720CE0);
  v16 = *(*(v90 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v90);
  v91 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v87 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v80 - v21;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v22 = sub_1E672008C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v80 - v28;
  v30 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  sub_1E670EB2C(v30, v27);
  v96[6] = a2;
  v96[7] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0);
  v96[4] = WitnessTable;
  v96[5] = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1E670D384();
  v96[2] = v33;
  v96[3] = v34;
  v35 = swift_getWitnessTable();
  v36 = v29;
  v37 = v80;
  v81 = v35;
  sub_1E671EA50(v27, v22, v35);
  v82 = *(v23 + 8);
  v82(v27, v22);
  sub_1E670F550(v30, v37);
  LOBYTE(v33) = sub_1E67200EC();
  sub_1E671FE5C();
  v38 = v37 + *(v9 + 44);
  *v38 = v33;
  v39 = v83;
  *(v38 + 8) = v40;
  *(v38 + 16) = v41;
  *(v38 + 24) = v42;
  *(v38 + 32) = v43;
  *(v38 + 40) = 0;
  v44 = sub_1E672010C();
  sub_1E670D71C(a1 + v30[13], v39, &qword_1ED096870, &qword_1E6720CB0);
  v45 = type metadata accessor for SummaryArtwork();
  if ((*(*(v45 - 8) + 48))(v39, 1, v45) == 1)
  {
    v46 = *(a1 + v30[14]) + 5.0;
  }

  sub_1E670D784(v39, &qword_1ED096870, &qword_1E6720CB0);
  sub_1E671FE5C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v37;
  v56 = v86;
  sub_1E670D7E4(v55, v86, &qword_1ED096968, &qword_1E6720DA8);
  v57 = v56 + *(v84 + 36);
  *v57 = v44;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  v58 = sub_1E672011C();
  v59 = *(a1 + v30[15]) + 5.0;
  sub_1E671FE5C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v88;
  sub_1E670D7E4(v56, v88, &qword_1ED096970, &qword_1E6720DB0);
  v69 = v68 + *(v85 + 36);
  *v69 = v58;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  sub_1E67204FC();
  sub_1E671FF1C();
  v70 = v87;
  sub_1E670D7E4(v68, v87, &qword_1ED096960, &qword_1E6720DA0);
  v71 = v90;
  v72 = (v70 + *(v90 + 36));
  v73 = v102;
  v72[4] = v101;
  v72[5] = v73;
  v72[6] = v103;
  v74 = v98;
  *v72 = v97;
  v72[1] = v74;
  v75 = v100;
  v72[2] = v99;
  v72[3] = v75;
  v76 = v89;
  sub_1E670D7E4(v70, v89, &qword_1ED096898, &qword_1E6720CE0);
  (*(v23 + 16))(v27, v36, v22);
  v96[0] = v27;
  v77 = v91;
  sub_1E670D71C(v76, v91, &qword_1ED096898, &qword_1E6720CE0);
  v96[1] = v77;
  v95[0] = v22;
  v95[1] = v71;
  v93 = v81;
  v94 = sub_1E6713588();
  sub_1E670E770(v96, 2uLL, v95);
  sub_1E670D784(v76, &qword_1ED096898, &qword_1E6720CE0);
  v78 = v82;
  v82(v36, v22);
  sub_1E670D784(v77, &qword_1ED096898, &qword_1E6720CE0);
  return v78(v27, v22);
}

uint64_t (*sub_1E6712CE8())()
{
  v0 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  result = sub_1E670E9D4(v0);
  if (result)
  {
    v2 = result;
    result();

    return sub_1E6712E98(v2);
  }

  return result;
}

uint64_t sub_1E6712DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t (*sub_1E6712E14())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SummaryWorkoutsCardWorkoutItemView() - 8) + 80);

  return sub_1E6712CE8();
}

uint64_t sub_1E6712E98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E6712EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_1E6711528(v1[3], a1);
}

uint64_t sub_1E6712EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1E6711780(v1[4], a1);
}

unint64_t sub_1E6712EE0()
{
  result = qword_1ED096910;
  if (!qword_1ED096910)
  {
    sub_1E671FEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096910);
  }

  return result;
}

uint64_t sub_1E6712F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969A8, &qword_1E6720E48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E670D71C(a1, &v6 - v4, &qword_1ED0969A8, &qword_1E6720E48);
  return sub_1E671FFBC();
}

uint64_t sub_1E6712FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1E67130B0()
{
  result = qword_1ED096928;
  if (!qword_1ED096928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968F8, &qword_1E6720D40);
    sub_1E671313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096928);
  }

  return result;
}

unint64_t sub_1E671313C()
{
  result = qword_1ED096930;
  if (!qword_1ED096930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968F0, &qword_1E6720D38);
    sub_1E67131C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096930);
  }

  return result;
}

unint64_t sub_1E67131C8()
{
  result = qword_1ED096938;
  if (!qword_1ED096938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968E8, &qword_1E6720D30);
    sub_1E6713254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096938);
  }

  return result;
}

unint64_t sub_1E6713254()
{
  result = qword_1ED096940;
  if (!qword_1ED096940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968E0, &qword_1E6720D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968D0, &qword_1E6720D18);
    sub_1E670DA90(&qword_1ED096918, &qword_1ED0968D0, &qword_1E6720D18);
    swift_getOpaqueTypeConformance2();
    sub_1E670DA90(&qword_1ED096948, &qword_1ED096920, &qword_1E6720D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096940);
  }

  return result;
}

unint64_t sub_1E6713390()
{
  result = qword_1EE2C53C8;
  if (!qword_1EE2C53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C53C8);
  }

  return result;
}

uint64_t sub_1E67133E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6713448@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1E670F360(a1);
}

unint64_t sub_1E6713454()
{
  result = qword_1EE2C54A8;
  if (!qword_1EE2C54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969B0, &qword_1E6720E50);
    sub_1E67134D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54A8);
  }

  return result;
}

unint64_t sub_1E67134D8()
{
  result = qword_1EE2C54B0;
  if (!qword_1EE2C54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54B0);
  }

  return result;
}

uint64_t sub_1E671352C(uint64_t a1)
{
  v2 = type metadata accessor for SummaryArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6713588()
{
  result = qword_1ED0969C0;
  if (!qword_1ED0969C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
    sub_1E6713614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969C0);
  }

  return result;
}

unint64_t sub_1E6713614()
{
  result = qword_1ED0969C8;
  if (!qword_1ED0969C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096960, &qword_1E6720DA0);
    sub_1E67136A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969C8);
  }

  return result;
}

unint64_t sub_1E67136A0()
{
  result = qword_1ED0969D0;
  if (!qword_1ED0969D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096970, &qword_1E6720DB0);
    sub_1E671372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969D0);
  }

  return result;
}

unint64_t sub_1E671372C()
{
  result = qword_1ED0969D8;
  if (!qword_1ED0969D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096968, &qword_1E6720DA8);
    sub_1E670DA90(&qword_1ED0969E0, &qword_1ED0969E8, &unk_1E6720E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969D8);
  }

  return result;
}

void sub_1E67137EC(uint64_t a1)
{
  sub_1E67139DC(319, qword_1EE2C54B8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E671FD7C();
    if (v3 <= 0x3F)
    {
      sub_1E67139DC(319, &qword_1EE2C5AF0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1E67139DC(319, qword_1EE2C55C8, type metadata accessor for SummaryArtwork, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          sub_1E671FDCC();
          if (v6 <= 0x3F)
          {
            sub_1E6713A40();
            if (v7 <= 0x3F)
            {
              v8 = *(a1 + 16);
              type metadata accessor for SummaryArtwork();
              swift_getFunctionTypeMetadata1();
              sub_1E671FE1C();
              if (v9 <= 0x3F)
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

void sub_1E67139DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E6713A40()
{
  if (!qword_1EE2C5AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096878, &qword_1E6720CB8);
    v0 = sub_1E671FE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C5AD0);
    }
  }
}

uint64_t SummaryWorkoutsCardErrorItem.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.description.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.buttonTitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.init(context:title:description:buttonTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v11 = v10[9];
  v12 = sub_1E671FD7C();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), a6 + v11, a2, v12);
  v15(a6 + v10[10], a3, v12);
  v13 = a6 + v10[11];

  return (v15)(v13, a4, v12);
}

uint64_t static SummaryWorkoutsCardErrorItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if ((sub_1E672055C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v6 = v5[9];
  if ((sub_1E671FD6C() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[10];
  if ((sub_1E671FD6C() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[11];

  return sub_1E671FD6C();
}

uint64_t SummaryWorkoutsCardErrorItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1E672054C();
  v7 = *(a2 + 36);
  sub_1E671FD7C();
  sub_1E6713ECC();
  sub_1E672054C();
  v8 = v3 + *(a2 + 40);
  sub_1E672054C();
  v9 = v3 + *(a2 + 44);
  return sub_1E672054C();
}

unint64_t sub_1E6713ECC()
{
  result = qword_1EE2C5B00;
  if (!qword_1EE2C5B00)
  {
    sub_1E671FD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5B00);
  }

  return result;
}

uint64_t SummaryWorkoutsCardErrorItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardErrorItem.hash(into:)(v3, a1);
  return sub_1E672065C();
}

uint64_t sub_1E6713F74(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardErrorItem.hash(into:)(v4, a2);
  return sub_1E672065C();
}

uint64_t sub_1E6713FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1E671FD7C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6714070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E67142E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1E671FD7C() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

id sub_1E6714620()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2C6190 = result;
  return result;
}

uint64_t SummaryArtwork.hash(into:)(uint64_t a1)
{
  v60 = a1;
  v1 = sub_1E671FDBC();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F0, &qword_1E6720F88);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - v8;
  v10 = sub_1E671FE3C();
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v53 - v30;
  v32 = type metadata accessor for SummaryArtwork();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6715EAC(v59, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    sub_1E670D7E4(v35, v21, &qword_1ED0969F8, &qword_1E6720F90);
    sub_1E670D7E4(&v35[v36], v9, &qword_1ED0969F0, &qword_1E6720F88);
    MEMORY[0x1E694FC40](1);
    sub_1E670D71C(v21, v18, &qword_1ED0969F8, &qword_1E6720F90);
    if ((*(v62 + 48))(v18, 1, v61) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v42 = v61;
      v41 = v62;
      v43 = v56;
      (*(v62 + 32))(v56, v18, v61);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AC8, MEMORY[0x1E699DB98]);
      sub_1E672054C();
      (*(v41 + 8))(v43, v42);
    }

    v44 = v58;
    v45 = v55;
    sub_1E670D71C(v9, v55, &qword_1ED0969F0, &qword_1E6720F88);
    v46 = v57;
    if ((*(v57 + 48))(v45, 1, v44) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v52 = v54;
      (*(v46 + 32))(v54, v45, v44);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AE8, MEMORY[0x1E6968FB0]);
      sub_1E672054C();
      (*(v46 + 8))(v52, v44);
    }

    sub_1E670D784(v9, &qword_1ED0969F0, &qword_1E6720F88);
    return sub_1E670D784(v21, &qword_1ED0969F8, &qword_1E6720F90);
  }

  else
  {
    v37 = *v35;
    v38 = *(v35 + 1);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v40 = *(v39 + 64);
    (*(v28 + 32))(v31, &v35[*(v39 + 48)], v27);
    sub_1E670D7E4(&v35[v40], v26, &qword_1ED0969F8, &qword_1E6720F90);
    MEMORY[0x1E694FC40](0);
    sub_1E672059C();

    sub_1E6715F10();
    sub_1E672054C();
    sub_1E670D71C(v26, v24, &qword_1ED0969F8, &qword_1E6720F90);
    if ((*(v62 + 48))(v24, 1, v61) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v47 = v62;
      v48 = v56;
      v49 = v24;
      v50 = v61;
      (*(v62 + 32))(v56, v49, v61);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AC8, MEMORY[0x1E699DB98]);
      sub_1E672054C();
      (*(v47 + 8))(v48, v50);
    }

    sub_1E670D784(v26, &qword_1ED0969F8, &qword_1E6720F90);
    return (*(v28 + 8))(v31, v27);
  }
}

uint64_t SummaryArtwork.hashValue.getter()
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v1);
  return sub_1E672065C();
}

uint64_t sub_1E6714E20()
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v1);
  return sub_1E672065C();
}

uint64_t sub_1E6714E64()
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v1);
  return sub_1E672065C();
}

uint64_t _s14FitnessSummary0B7ArtworkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v3 = sub_1E671FDBC();
  v125 = *(v3 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A10, &qword_1E6721028);
  v6 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v8 = &v119 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F0, &qword_1E6720F88);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v119 - v15;
  v16 = sub_1E671FE3C();
  v17 = *(v16 - 8);
  v131 = v16;
  v132 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A18, &qword_1E6721030);
  v20 = *(*(v129 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v129);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v122 = &v119 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v127 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v133 = &v119 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
  v137 = *(v35 - 8);
  v138 = v35;
  v36 = *(v137 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v130 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v119 - v39;
  v40 = type metadata accessor for SummaryArtwork();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v119 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A20, &qword_1E6721038);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v51 = &v119 - v50;
  v52 = (&v119 + *(v49 + 56) - v50);
  sub_1E6715EAC(a1, &v119 - v50);
  sub_1E6715EAC(v139, v52);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v126 = v51;
    sub_1E6715EAC(v51, v46);
    v64 = *v46;
    v63 = *(v46 + 1);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v66 = *(v65 + 48);
    v67 = *(v65 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1E670D784(&v46[v67], &qword_1ED0969F8, &qword_1E6720F90);
      (*(v137 + 8))(&v46[v66], v138);
      v51 = v126;
      goto LABEL_9;
    }

    v68 = v52[1];
    v139 = *v52;
    v69 = v138;
    v70 = *(v137 + 32);
    v70(v134, &v46[v66], v138);
    sub_1E670D7E4(&v46[v67], v133, &qword_1ED0969F8, &qword_1E6720F90);
    v71 = v52 + v66;
    v72 = v130;
    v70(v130, v71, v69);
    v73 = v127;
    sub_1E670D7E4(v52 + v67, v127, &qword_1ED0969F8, &qword_1E6720F90);
    if (v64 == v139 && v63 == v68)
    {

      v74 = v126;
      v75 = v128;
    }

    else
    {
      v76 = sub_1E672061C();

      v74 = v126;
      v75 = v128;
      if ((v76 & 1) == 0)
      {
        sub_1E670D784(v73, &qword_1ED0969F8, &qword_1E6720F90);
        v92 = v138;
        v90 = *(v137 + 8);
        v90(v72, v138);
        sub_1E670D784(v133, &qword_1ED0969F8, &qword_1E6720F90);
        v93 = v134;
        goto LABEL_24;
      }
    }

    sub_1E67161E8();
    v77 = v134;
    v78 = sub_1E671FE4C();
    v79 = v72;
    v80 = v133;
    if (v78)
    {
      v81 = *(v129 + 48);
      sub_1E670D71C(v133, v75, &qword_1ED0969F8, &qword_1E6720F90);
      sub_1E670D71C(v73, v75 + v81, &qword_1ED0969F8, &qword_1E6720F90);
      v82 = v131;
      v83 = *(v132 + 48);
      if (v83(v75, 1, v131) == 1)
      {
        sub_1E670D784(v73, &qword_1ED0969F8, &qword_1E6720F90);
        v84 = v138;
        v85 = *(v137 + 8);
        v85(v130, v138);
        sub_1E670D784(v80, &qword_1ED0969F8, &qword_1E6720F90);
        v85(v77, v84);
        if (v83(v75 + v81, 1, v82) == 1)
        {
          sub_1E670D784(v75, &qword_1ED0969F8, &qword_1E6720F90);
          v86 = v126;
LABEL_43:
          sub_1E671352C(v86);
          return 1;
        }
      }

      else
      {
        v104 = v122;
        sub_1E670D71C(v75, v122, &qword_1ED0969F8, &qword_1E6720F90);
        if (v83(v75 + v81, 1, v82) != 1)
        {
          v113 = v132;
          v114 = v75 + v81;
          v115 = v123;
          (*(v132 + 32))(v123, v114, v82);
          sub_1E67161A0(&qword_1EE2C5AC0, MEMORY[0x1E699DB98]);
          LODWORD(v139) = sub_1E672055C();
          v116 = *(v113 + 8);
          v116(v115, v82);
          sub_1E670D784(v73, &qword_1ED0969F8, &qword_1E6720F90);
          v117 = v138;
          v118 = *(v137 + 8);
          v118(v130, v138);
          sub_1E670D784(v80, &qword_1ED0969F8, &qword_1E6720F90);
          v118(v134, v117);
          v116(v122, v82);
          sub_1E670D784(v75, &qword_1ED0969F8, &qword_1E6720F90);
          v86 = v126;
          if (v139)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        v105 = v73;
        v106 = v104;
        sub_1E670D784(v105, &qword_1ED0969F8, &qword_1E6720F90);
        v107 = v138;
        v108 = *(v137 + 8);
        v108(v130, v138);
        sub_1E670D784(v80, &qword_1ED0969F8, &qword_1E6720F90);
        v108(v77, v107);
        (*(v132 + 8))(v106, v82);
      }

      sub_1E670D784(v75, &qword_1ED096A18, &qword_1E6721030);
      v86 = v126;
LABEL_34:
      sub_1E671352C(v86);
      return 0;
    }

    sub_1E670D784(v73, &qword_1ED0969F8, &qword_1E6720F90);
    v90 = *(v137 + 8);
    v91 = v79;
    v92 = v138;
    v90(v91, v138);
    sub_1E670D784(v80, &qword_1ED0969F8, &qword_1E6720F90);
    v93 = v77;
LABEL_24:
    v90(v93, v92);
    v86 = v74;
    goto LABEL_34;
  }

  v139 = v3;
  sub_1E6715EAC(v51, v44);
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v51;
    sub_1E670D7E4(&v44[v53], v136, &qword_1ED0969F0, &qword_1E6720F88);
    sub_1E670D7E4(v52 + v53, v135, &qword_1ED0969F0, &qword_1E6720F88);
    v55 = *(v129 + 48);
    sub_1E670D7E4(v44, v23, &qword_1ED0969F8, &qword_1E6720F90);
    sub_1E670D7E4(v52, &v23[v55], &qword_1ED0969F8, &qword_1E6720F90);
    v56 = v131;
    v57 = v132;
    v58 = *(v132 + 48);
    if (v58(v23, 1, v131) == 1)
    {
      v59 = v58(&v23[v55], 1, v56);
      v61 = v135;
      v60 = v136;
      if (v59 == 1)
      {
        sub_1E670D784(v23, &qword_1ED0969F8, &qword_1E6720F90);
        v62 = v54;
LABEL_26:
        v97 = *(v124 + 48);
        sub_1E670D71C(v60, v8, &qword_1ED0969F0, &qword_1E6720F88);
        sub_1E670D71C(v61, &v8[v97], &qword_1ED0969F0, &qword_1E6720F88);
        v98 = v125;
        v99 = v61;
        v100 = *(v125 + 48);
        v101 = v139;
        if (v100(v8, 1, v139) == 1)
        {
          sub_1E670D784(v99, &qword_1ED0969F0, &qword_1E6720F88);
          sub_1E670D784(v60, &qword_1ED0969F0, &qword_1E6720F88);
          if (v100(&v8[v97], 1, v101) == 1)
          {
            sub_1E670D784(v8, &qword_1ED0969F0, &qword_1E6720F88);
LABEL_41:
            v86 = v62;
            goto LABEL_43;
          }
        }

        else
        {
          v102 = v121;
          sub_1E670D71C(v8, v121, &qword_1ED0969F0, &qword_1E6720F88);
          if (v100(&v8[v97], 1, v101) != 1)
          {
            v109 = v120;
            (*(v98 + 32))(v120, &v8[v97], v101);
            sub_1E67161A0(&qword_1EE2C5AE0, MEMORY[0x1E6968FB0]);
            v110 = v102;
            v111 = sub_1E672055C();
            v112 = *(v98 + 8);
            v112(v109, v101);
            sub_1E670D784(v135, &qword_1ED0969F0, &qword_1E6720F88);
            sub_1E670D784(v136, &qword_1ED0969F0, &qword_1E6720F88);
            v112(v110, v101);
            sub_1E670D784(v8, &qword_1ED0969F0, &qword_1E6720F88);
            if (v111)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          sub_1E670D784(v135, &qword_1ED0969F0, &qword_1E6720F88);
          sub_1E670D784(v136, &qword_1ED0969F0, &qword_1E6720F88);
          (*(v98 + 8))(v102, v101);
        }

        v88 = &qword_1ED096A10;
        v89 = &qword_1E6721028;
        v87 = v8;
LABEL_32:
        sub_1E670D784(v87, v88, v89);
LABEL_33:
        v86 = v62;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1E670D71C(v23, v29, &qword_1ED0969F8, &qword_1E6720F90);
      if (v58(&v23[v55], 1, v56) != 1)
      {
        v94 = v123;
        (*(v57 + 32))(v123, &v23[v55], v56);
        sub_1E67161A0(&qword_1EE2C5AC0, MEMORY[0x1E699DB98]);
        v95 = sub_1E672055C();
        v96 = *(v57 + 8);
        v96(v94, v56);
        v96(v29, v56);
        sub_1E670D784(v23, &qword_1ED0969F8, &qword_1E6720F90);
        v62 = v54;
        v61 = v135;
        v60 = v136;
        if (v95)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1E670D784(v61, &qword_1ED0969F0, &qword_1E6720F88);
        v87 = v60;
        v88 = &qword_1ED0969F0;
        v89 = &qword_1E6720F88;
        goto LABEL_32;
      }

      (*(v57 + 8))(v29, v56);
      v61 = v135;
      v60 = v136;
    }

    sub_1E670D784(v23, &qword_1ED096A18, &qword_1E6721030);
    v62 = v54;
    goto LABEL_21;
  }

  sub_1E670D784(&v44[v53], &qword_1ED0969F0, &qword_1E6720F88);
  sub_1E670D784(v44, &qword_1ED0969F8, &qword_1E6720F90);
LABEL_9:
  sub_1E670D784(v51, &qword_1ED096A20, &qword_1E6721038);
  return 0;
}

uint64_t type metadata accessor for SummaryArtwork()
{
  result = qword_1EE2C55F8;
  if (!qword_1EE2C55F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6715EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6715F10()
{
  result = qword_1ED096A00;
  if (!qword_1ED096A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968A8, &qword_1E6720CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096A00);
  }

  return result;
}

void sub_1E671600C()
{
  sub_1E6716080();
  if (v0 <= 0x3F)
  {
    sub_1E6716114();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E6716080()
{
  if (!qword_1EE2C53C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968A8, &qword_1E6720CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F8, &qword_1E6720F90);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C53C0);
    }
  }
}

void sub_1E6716114()
{
  if (!qword_1EE2C5AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F8, &qword_1E6720F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F0, &qword_1E6720F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2C5AB8);
    }
  }
}

uint64_t sub_1E67161A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E67161E8()
{
  result = qword_1ED096A28;
  if (!qword_1ED096A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED096A28);
  }

  return result;
}

uint64_t SummaryWorkoutsCardWorkoutItem.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardWorkoutItem.subtitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E6716360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SummaryWorkoutsCardWorkoutItem.init(context:title:subtitle:caption:isAvailable:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v13 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v14 = v13[9];
  v15 = sub_1E671FD7C();
  v16 = *(*(v15 - 8) + 32);
  v16(a8 + v14, a2, v15);
  v16(a8 + v13[10], a3, v15);
  sub_1E6716544(a4, a8 + v13[11]);
  *(a8 + v13[12]) = a5;
  v17 = a8 + v13[13];

  return sub_1E67133E4(a6, v17);
}

uint64_t sub_1E6716544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryWorkoutsCardWorkoutItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E671FD7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A30, &unk_1E67211D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v20 = *(a4 + 8);
  if ((sub_1E672055C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v22 = v21[9];
  if ((sub_1E671FD6C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = v21[10];
  if ((sub_1E671FD6C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v24 = v21[11];
  v25 = *(v16 + 48);
  sub_1E6716360(a1 + v24, v19);
  v32 = v25;
  sub_1E6716360(a2 + v24, &v19[v25]);
  v26 = *(v8 + 48);
  if (v26(v19, 1, v7) != 1)
  {
    sub_1E6716360(v19, v15);
    if (v26(&v19[v32], 1, v7) != 1)
    {
      (*(v8 + 32))(v11, &v19[v32], v7);
      sub_1E6716C0C(&qword_1EE2C5AF8);
      v27 = sub_1E672055C();
      v28 = *(v8 + 8);
      v28(v11, v7);
      v28(v15, v7);
      sub_1E670D784(v19, &qword_1ED096868, &unk_1E6721040);
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v8 + 8))(v15, v7);
LABEL_9:
    sub_1E670D784(v19, &qword_1ED096A30, &unk_1E67211D0);
    goto LABEL_12;
  }

  if (v26(&v19[v32], 1, v7) != 1)
  {
    goto LABEL_9;
  }

  sub_1E670D784(v19, &qword_1ED096868, &unk_1E6721040);
LABEL_11:
  if (*(a1 + v21[12]) == *(a2 + v21[12]))
  {
    v29 = _s14FitnessSummary0B7ArtworkO2eeoiySbAC_ACtFZ_0(a1 + v21[13], a2 + v21[13]);
    return v29 & 1;
  }

LABEL_12:
  v29 = 0;
  return v29 & 1;
}

uint64_t SummaryWorkoutsCardWorkoutItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E671FD7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  sub_1E672054C();
  v17 = *(a2 + 36);
  sub_1E6716C0C(&qword_1EE2C5B00);
  sub_1E672054C();
  v18 = v3 + *(a2 + 40);
  sub_1E672054C();
  sub_1E6716360(v3 + *(a2 + 44), v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_1E672064C();
    sub_1E672054C();
    (*(v7 + 8))(v10, v6);
  }

  v19 = *(v3 + *(a2 + 48));
  sub_1E672064C();
  v20 = v3 + *(a2 + 52);
  return SummaryArtwork.hash(into:)(a1);
}

uint64_t SummaryWorkoutsCardWorkoutItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardWorkoutItem.hash(into:)(v3, a1);
  return sub_1E672065C();
}

uint64_t sub_1E6716BBC(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardWorkoutItem.hash(into:)(v4, a2);
  return sub_1E672065C();
}

uint64_t sub_1E6716C0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E671FD7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E6716C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E671FD7C();
    if (v3 <= 0x3F)
    {
      sub_1E671766C();
      if (v4 <= 0x3F)
      {
        type metadata accessor for SummaryArtwork();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E6716D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v46 = sub_1E671FD7C();
  v5 = *(v46 - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v6 - 1;
  if (!v6)
  {
    v8 = 0;
  }

  v45 = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v7 <= 0xFE)
  {
    v7 = 254;
  }

  v47 = v4;
  v48 = v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1E671FE3C() - 8);
  v13 = *(v12 + 80);
  v14 = (((v10 + 16) & ~v10) + v11 + v13) & ~v13;
  v15 = *(v12 + 84);
  v16 = *(v12 + 64);
  v17 = *(sub_1E671FDBC() - 8);
  v18 = v17;
  if (v6)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = *(v17 + 80);
  v21 = *(v17 + 64);
  if (v15)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v23 = *(v5 + 80);
  v24 = *(v5 + 64);
  v25 = v14 + v22;
  v26 = (v22 + v20) & ~v20;
  if (!*(v18 + 84))
  {
    ++v21;
  }

  v27 = v21 + v26;
  if (v27 > v25)
  {
    v25 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = *(v3 + 64) + v23;
  v29 = v24 + v23;
  v30 = a1;
  if (a2 > v48)
  {
    v31 = v25 + ((v19 + v24 + (v10 | v13 | v20 | 7) + ((v29 + ((v29 + (v28 & ~v23)) & ~v23)) & ~v23)) & ~(v10 | v13 | v20 | 7)) + 1;
    v32 = 8 * v31;
    if (v31 > 3)
    {
      goto LABEL_23;
    }

    v34 = ((a2 - v48 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v34))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v34 > 0xFF)
    {
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v34 >= 2)
    {
LABEL_23:
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_43;
      }

LABEL_30:
      v35 = (v33 - 1) << v32;
      if (v31 > 3)
      {
        v35 = 0;
      }

      if (v31)
      {
        if (v31 <= 3)
        {
          v36 = v31;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      v44 = v48 + (v37 | v35);
      return (v44 + 1);
    }
  }

LABEL_43:
  if (v47 != v48)
  {
    v39 = ~v23;
    v30 = ((a1 + v28) & v39);
    if (v6 == v48)
    {
      v38 = *(v5 + 48);
      goto LABEL_47;
    }

    v41 = (v29 + ((v30 + v29) & v39)) & v39;
    if (v45 == v48)
    {
      if (v6 >= 2)
      {
        v42 = (*(v5 + 48))(v41, v6, v46);
        if (v42 >= 2)
        {
          return v42 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    if (!v6)
    {
      ++v24;
    }

    v43 = *(v24 + v41);
    if (v43 < 2)
    {
      return 0;
    }

    v44 = (v43 + 2147483646) & 0x7FFFFFFF;
    return (v44 + 1);
  }

  v38 = *(v3 + 48);
LABEL_47:

  return v38(v30);
}

void sub_1E671719C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1E671FD7C() - 8);
  v7 = *(v6 + 84);
  v45 = v5;
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v43 = v9;
  if (v9 > v8)
  {
    v8 = v9;
  }

  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v46 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1E671FE3C() - 8);
  v14 = *(v13 + 80);
  v15 = (((v11 + 16) & ~v11) + v12 + v14) & ~v14;
  v16 = *(v13 + 84);
  v17 = *(v13 + 64);
  v18 = sub_1E671FDBC();
  v19 = 0;
  v20 = *(v18 - 8);
  if (v7)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v22 = *(v20 + 80);
  v23 = *(*(v18 - 8) + 64);
  if (v16)
  {
    v24 = v17;
  }

  else
  {
    v24 = v17 + 1;
  }

  v25 = *(v6 + 80);
  v26 = *(v4 + 64) + v25;
  v27 = *(v6 + 64);
  v28 = v27 + v25;
  v29 = (v21 + v27 + (v11 | v14 | v22 | 7) + ((v27 + v25 + ((v27 + v25 + (v26 & ~v25)) & ~v25)) & ~v25)) & ~(v11 | v14 | v22 | 7);
  v30 = (v24 + v22) & ~v22;
  if (!*(v20 + 84))
  {
    ++v23;
  }

  v31 = v23 + v30;
  if (v31 <= v15 + v24)
  {
    v31 = v15 + v24;
  }

  v32 = v31 + v29 + 1;
  if (a3 > v46)
  {
    if (v32 <= 3)
    {
      v33 = ((a3 - v46 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v33))
      {
        v19 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v19 = v34;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v46 < a2)
  {
    v35 = ~v46 + a2;
    if (v32 < 4)
    {
      v37 = (v35 >> (8 * v32)) + 1;
      if (v32)
      {
        v39 = v19;
        v40 = v35 & ~(-1 << (8 * v32));
        bzero(a1, v32);
        if (v32 != 3)
        {
          v19 = v39;
          if (v32 == 2)
          {
            *a1 = v40;
            if (v39 > 1)
            {
LABEL_63:
              if (v19 == 2)
              {
                *&a1[v32] = v37;
              }

              else
              {
                *&a1[v32] = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v35;
            if (v39 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v40;
        a1[2] = BYTE2(v40);
        v19 = v39;
      }

      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v36 = v19;
      bzero(a1, v32);
      v19 = v36;
      *a1 = v35;
      v37 = 1;
      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v19)
    {
      a1[v32] = v37;
    }

    return;
  }

  v38 = a1;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v32] = 0;
  }

  else if (v19)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v45 == v46)
  {
    v41 = *(v44 + 56);
LABEL_55:

    v41(v38);
    return;
  }

  v42 = ~v25;
  v38 = (&a1[v26] & v42);
  if (v7 == v46)
  {
    v41 = *(v6 + 56);
    goto LABEL_55;
  }

  v38 = ((v28 + (&v38[v28] & v42)) & v42);
  if (v43 == v46)
  {
    v41 = *(v6 + 56);
    goto LABEL_55;
  }

  if (!v7)
  {
    ++v27;
  }

  v38[v27] = a2 + 1;
}

void sub_1E671766C()
{
  if (!qword_1EE2C5AF0)
  {
    sub_1E671FD7C();
    v0 = sub_1E67205EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C5AF0);
    }
  }
}

uint64_t SummaryWorkoutsCardHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E671FD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SummaryWorkoutsCardHeader.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SummaryWorkoutsCardHeader() + 20);

  return sub_1E6716360(v3, a1);
}

uint64_t type metadata accessor for SummaryWorkoutsCardHeader()
{
  result = qword_1EE2C59A8;
  if (!qword_1EE2C59A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryWorkoutsCardHeader.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E671FD7C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SummaryWorkoutsCardHeader() + 20);

  return sub_1E6716544(a2, v7);
}

uint64_t SummaryWorkoutsCardHeader.hash(into:)()
{
  v1 = sub_1E671FD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848]);
  sub_1E672054C();
  v10 = type metadata accessor for SummaryWorkoutsCardHeader();
  sub_1E6716360(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1E672064C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1E672064C();
  sub_1E672054C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t SummaryWorkoutsCardHeader.hashValue.getter()
{
  v1 = sub_1E671FD7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1E672062C();
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848]);
  sub_1E672054C();
  v10 = type metadata accessor for SummaryWorkoutsCardHeader();
  sub_1E6716360(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1E672064C();
    sub_1E672054C();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1E672065C();
}

uint64_t sub_1E6717C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848]);
  sub_1E672054C();
  sub_1E6716360(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_1E672064C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1E672064C();
  sub_1E672054C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E6717E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1E672062C();
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848]);
  sub_1E672054C();
  sub_1E6716360(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1E672064C();
    sub_1E672054C();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1E672065C();
}

BOOL _s14FitnessSummary0B18WorkoutsCardHeaderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A30, &unk_1E67211D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((sub_1E671FD6C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for SummaryWorkoutsCardHeader() + 20);
  v18 = *(v13 + 48);
  sub_1E6716360(a1 + v17, v16);
  sub_1E6716360(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1E670D784(v16, &qword_1ED096868, &unk_1E6721040);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1E6716360(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1E670D784(v16, &qword_1ED096A30, &unk_1E67211D0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1E6718440(&qword_1EE2C5AF8, MEMORY[0x1E6968848]);
  v21 = sub_1E672055C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1E670D784(v16, &qword_1ED096868, &unk_1E6721040);
  return (v21 & 1) != 0;
}

void sub_1E67183BC()
{
  sub_1E671FD7C();
  if (v0 <= 0x3F)
  {
    sub_1E671766C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E6718440(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E6718488(void *a1)
{
  sub_1E670E614();
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    v4 = a1[5];
    type metadata accessor for SummaryWorkoutsCardItem();
    if (v5 <= 0x3F)
    {
      sub_1E671FDCC();
      if (v6 <= 0x3F)
      {
        v7 = a1[2];
        type metadata accessor for SummaryArtwork();
        swift_getFunctionTypeMetadata1();
        sub_1E671FE1C();
        if (v8 <= 0x3F)
        {
          swift_getFunctionTypeMetadata1();
          sub_1E671FE1C();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E67185FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6718640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E672006C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E672007C();
}

uint64_t sub_1E6718738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E672006C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E672007C();
}

uint64_t sub_1E6718830(uint64_t a1)
{
  v1 = *(a1 + 68);
  v2 = *(a1 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v4;
}

uint64_t sub_1E671889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E6718954(uint64_t a1))()
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v6;
  return sub_1E671A59C;
}

uint64_t sub_1E6718A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, uint64_t a10, uint64_t a11)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for SummaryWorkoutsCardItemView();
  v19 = v18[13];
  v20 = type metadata accessor for SummaryWorkoutsCardItem();
  (*(*(v20 - 8) + 32))(a7 + v19, a1, v20);
  *(a7 + v18[14]) = a8;
  *(a7 + v18[15]) = a9;
  v21 = v18[16];
  v22 = sub_1E671FDCC();
  (*(*(v22 - 8) + 32))(a7 + v21, a2, v22);
  v23 = a7 + v18[17];
  sub_1E670EA64();
  v24 = a7 + v18[18];
  return sub_1E671889C(a3, a4, a5, a6, a10, a11);
}

uint64_t sub_1E6718B94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = a1[4];
  v25 = a1[2];
  v26 = v3;
  v4 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  WitnessTable = swift_getWitnessTable();
  v37 = v4;
  v38 = WitnessTable;
  v24[0] = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  sub_1E672008C();
  v6 = a1[3];
  v7 = a1[5];
  v24[1] = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  sub_1E672008C();
  v8 = sub_1E67203DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  *&v16 = v25;
  *&v17 = v26;
  *(&v16 + 1) = v6;
  *(&v17 + 1) = v7;
  v29 = v16;
  v30 = v17;
  v31 = v27;
  v37 = v4;
  v38 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = WitnessTable;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v33 = v18;
  v34 = v19;
  v20 = swift_getWitnessTable();
  sub_1E67203CC();
  v32 = v20;
  v21 = swift_getWitnessTable();
  sub_1E671EA50(v13, v8, v21);
  v22 = *(v9 + 8);
  v22(v13, v8);
  sub_1E671EA50(v15, v8, v21);
  return (v22)(v15, v8);
}

uint64_t sub_1E6718E54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v169 = a1;
  v182 = a6;
  v10 = type metadata accessor for SummaryWorkoutsCardErrorItemView();
  v149 = *(v10 - 8);
  v11 = *(v149 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = (&v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v137 - v14;
  v157 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v156 = *(v157 - 1);
  v15 = *(v156 + 64);
  v16 = MEMORY[0x1EEE9AC00](v157);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v137 - v19;
  v194 = a2;
  v195 = a3;
  v196 = a4;
  v197 = a5;
  v20 = type metadata accessor for SummaryWorkoutsCardItemView();
  v139 = *(v20 - 8);
  v142 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v137 - v21;
  v162 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v161 = *(v162 - 8);
  v22 = *(v161 + 64);
  v23 = MEMORY[0x1EEE9AC00](v162);
  v141 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v137 - v25;
  v165 = a2;
  v164 = a4;
  v26 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView();
  WitnessTable = swift_getWitnessTable();
  v194 = v26;
  v195 = WitnessTable;
  v180 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = sub_1E672008C();
  v168 = *(v29 - 8);
  v30 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v137 - v31;
  v148 = sub_1E671FF0C();
  v147 = *(v148 - 8);
  v32 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1E671FDCC();
  v158 = *(v159 - 8);
  v34 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v174 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v172 = &v137 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v171 = &v137 - v41;
  v42 = sub_1E671FDAC();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v151 = sub_1E671FD7C();
  v150 = *(v151 - 8);
  v44 = *(v150 + 64);
  v45 = MEMORY[0x1EEE9AC00](v151);
  v170 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v183 = &v137 - v48;
  v178 = v26;
  v49 = v26;
  v50 = a5;
  v163 = *(v49 - 8);
  v51 = *(v163 + 64);
  v52 = MEMORY[0x1EEE9AC00](v47);
  v138 = (&v137 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = MEMORY[0x1EEE9AC00](v52);
  v173 = (&v137 - v55);
  v166 = OpaqueTypeMetadata2;
  v143 = *(OpaqueTypeMetadata2 - 8);
  v56 = *(v143 + 64);
  v57 = MEMORY[0x1EEE9AC00](v54);
  v153 = &v137 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v152 = &v137 - v59;
  v60 = type metadata accessor for SummaryWorkoutsCardItem();
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v137 - v63;
  v179 = v29;
  v65 = v20;
  v181 = v10;
  v66 = v169;
  v177 = sub_1E672008C();
  v176 = *(v177 - 8);
  v67 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v137 - v68;
  v69 = *(v20 + 52);
  v70 = v66;
  (*(v61 + 16))(v64, v66 + v69, v60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v72 = v156;
      v73 = v155;
      v74 = v157;
      (*(v156 + 32))(v155, v64, v157);
      (*(v72 + 16))(v18, v73, v74);
      v75 = *(v70 + v65[14]);
      sub_1E6718954(v65);
      v76 = v146;
      sub_1E670C358(v18, sub_1E671A59C, v77, a3, v50, v146, v75);
      v78 = v181;
      v79 = swift_getWitnessTable();
      v80 = v145;
      sub_1E671EA50(v76, v78, v79);
      v81 = *(v149 + 8);
      v81(v76, v78);
      sub_1E671EA50(v80, v78, v79);
      v82 = v178;
      v83 = v180;
      v194 = v178;
      v195 = v180;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v193 = v83;
      v84 = v179;
      swift_getWitnessTable();
      v85 = v175;
      sub_1E6718738(v76, v84, v78);
      v81(v76, v78);
      v81(v80, v78);
      (*(v156 + 8))(v155, v157);
    }

    else
    {
      v112 = sub_1E67205BC();
      v112[2] = 20;
      v112[4] = 88;
      v112[5] = 0xE100000000000000;
      v112[6] = 88;
      v112[7] = 0xE100000000000000;
      v112[8] = 88;
      v112[9] = 0xE100000000000000;
      v112[10] = 88;
      v112[11] = 0xE100000000000000;
      v112[12] = 88;
      v112[13] = 0xE100000000000000;
      v112[14] = 88;
      v112[15] = 0xE100000000000000;
      v112[16] = 88;
      v112[17] = 0xE100000000000000;
      v112[18] = 88;
      v112[19] = 0xE100000000000000;
      v112[20] = 88;
      v112[21] = 0xE100000000000000;
      v112[22] = 88;
      v112[23] = 0xE100000000000000;
      v112[24] = 88;
      v112[25] = 0xE100000000000000;
      v112[26] = 88;
      v112[27] = 0xE100000000000000;
      v112[28] = 88;
      v112[29] = 0xE100000000000000;
      v112[30] = 88;
      v112[31] = 0xE100000000000000;
      v112[32] = 88;
      v112[33] = 0xE100000000000000;
      v112[34] = 88;
      v112[35] = 0xE100000000000000;
      v112[36] = 88;
      v112[37] = 0xE100000000000000;
      v112[38] = 88;
      v112[39] = 0xE100000000000000;
      v112[40] = 88;
      v112[41] = 0xE100000000000000;
      v112[42] = 88;
      v112[43] = 0xE100000000000000;
      v194 = v112;
      sub_1E671FD9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A40, &qword_1E6721270);
      sub_1E671A510();
      sub_1E671FD8C();
      v113 = sub_1E67205BC();
      v113[2] = 20;
      v113[4] = 88;
      v113[5] = 0xE100000000000000;
      v113[6] = 88;
      v113[7] = 0xE100000000000000;
      v113[8] = 88;
      v113[9] = 0xE100000000000000;
      v113[10] = 88;
      v113[11] = 0xE100000000000000;
      v113[12] = 88;
      v113[13] = 0xE100000000000000;
      v113[14] = 88;
      v113[15] = 0xE100000000000000;
      v113[16] = 88;
      v113[17] = 0xE100000000000000;
      v113[18] = 88;
      v113[19] = 0xE100000000000000;
      v113[20] = 88;
      v113[21] = 0xE100000000000000;
      v113[22] = 88;
      v113[23] = 0xE100000000000000;
      v113[24] = 88;
      v113[25] = 0xE100000000000000;
      v113[26] = 88;
      v113[27] = 0xE100000000000000;
      v113[28] = 88;
      v113[29] = 0xE100000000000000;
      v113[30] = 88;
      v113[31] = 0xE100000000000000;
      v113[32] = 88;
      v113[33] = 0xE100000000000000;
      v113[34] = 88;
      v113[35] = 0xE100000000000000;
      v113[36] = 88;
      v113[37] = 0xE100000000000000;
      v113[38] = 88;
      v113[39] = 0xE100000000000000;
      v113[40] = 88;
      v113[41] = 0xE100000000000000;
      v113[42] = 88;
      v113[43] = 0xE100000000000000;
      v194 = v113;
      sub_1E671FD9C();
      v114 = v170;
      sub_1E671FD8C();
      v115 = sub_1E67205BC();
      v115[2] = 18;
      v115[4] = 88;
      v115[5] = 0xE100000000000000;
      v115[6] = 88;
      v115[7] = 0xE100000000000000;
      v115[8] = 88;
      v115[9] = 0xE100000000000000;
      v115[10] = 88;
      v115[11] = 0xE100000000000000;
      v115[12] = 88;
      v115[13] = 0xE100000000000000;
      v115[14] = 88;
      v115[15] = 0xE100000000000000;
      v115[16] = 88;
      v115[17] = 0xE100000000000000;
      v115[18] = 88;
      v115[19] = 0xE100000000000000;
      v115[20] = 88;
      v115[21] = 0xE100000000000000;
      v115[22] = 88;
      v115[23] = 0xE100000000000000;
      v115[24] = 88;
      v115[25] = 0xE100000000000000;
      v115[26] = 88;
      v115[27] = 0xE100000000000000;
      v115[28] = 88;
      v115[29] = 0xE100000000000000;
      v115[30] = 88;
      v115[31] = 0xE100000000000000;
      v115[32] = 88;
      v115[33] = 0xE100000000000000;
      v115[34] = 88;
      v115[35] = 0xE100000000000000;
      v115[36] = 88;
      v115[37] = 0xE100000000000000;
      v115[38] = 88;
      v115[39] = 0xE100000000000000;
      v194 = v115;
      sub_1E671FD9C();
      v116 = v171;
      sub_1E671FD8C();
      (*(v150 + 56))(v116, 0, 1, v151);
      v117 = type metadata accessor for SummaryArtwork();
      v118 = v172;
      (*(*(v117 - 8) + 56))(v172, 1, 1, v117);
      v119 = *(v66 + v65[14]);
      v120 = *(v66 + v65[15]);
      v121 = v174;
      (*(v158 + 16))(v174, v70 + v65[16], v159);
      sub_1E6718830(v65);
      v122 = v173;
      sub_1E670FEDC(v183, v114, v116, 1, v118, v121, 0, 0, v173, v119, v120);
      v123 = v144;
      sub_1E671FEFC();
      v124 = v153;
      v82 = v178;
      v83 = v180;
      sub_1E672036C();
      (*(v147 + 8))(v123, v148);
      (*(v163 + 8))(v122, v82);
      v194 = v82;
      v195 = v83;
      v125 = swift_getOpaqueTypeConformance2();
      v126 = v152;
      v127 = v166;
      sub_1E671EA50(v124, v166, v125);
      v128 = *(v143 + 8);
      v128(v124, v127);
      sub_1E671EA50(v126, v127, v125);
      v129 = v167;
      sub_1E6718640(v124, v127);
      v184 = v125;
      v185 = v83;
      v130 = v179;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v85 = v175;
      sub_1E6718640(v129, v130);
      (*(v168 + 8))(v129, v130);
      v128(v153, v127);
      v128(v152, v127);
    }
  }

  else
  {
    v86 = v161;
    v87 = *(v161 + 32);
    v156 = v161 + 32;
    v157 = v87;
    v88 = v160;
    v89 = v64;
    v153 = v50;
    v90 = v162;
    (v87)(v160, v89, v162);
    v91 = *(v150 + 16);
    v92 = v151;
    v91(v183, &v88[v90[9]], v151);
    v91(v170, &v88[v90[10]], v92);
    sub_1E6716360(&v88[v90[11]], v171);
    v93 = v90[13];
    LODWORD(v155) = v88[v90[12]];
    v94 = v172;
    sub_1E6715EAC(&v88[v93], v172);
    v95 = type metadata accessor for SummaryArtwork();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    v96 = *(v70 + v65[14]);
    v97 = *(v70 + v65[15]);
    (*(v158 + 16))(v174, v70 + v65[16], v159);
    v98 = v139;
    (*(v139 + 16))(v154, v70, v65);
    v99 = v141;
    v100 = v88;
    v101 = v90;
    (*(v86 + 16))(v141, v100, v90);
    v102 = (*(v98 + 80) + 48) & ~*(v98 + 80);
    v103 = (v142 + *(v86 + 80) + v102) & ~*(v86 + 80);
    v104 = swift_allocObject();
    *(v104 + 2) = v165;
    *(v104 + 3) = a3;
    v105 = v153;
    *(v104 + 4) = v164;
    *(v104 + 5) = v105;
    (*(v98 + 32))(&v104[v102], v154, v65);
    (v157)(&v104[v103], v99, v101);
    sub_1E6718830(v65);
    v106 = v138;
    sub_1E670FEDC(v183, v170, v171, v155, v172, v174, sub_1E671A400, v104, v138, v96, v97);
    v107 = v173;
    v82 = v178;
    v83 = v180;
    sub_1E671EA50(v106, v178, v180);
    v108 = *(v163 + 8);
    v108(v106, v82);
    sub_1E671EA50(v107, v82, v83);
    v194 = v82;
    v195 = v83;
    v109 = swift_getOpaqueTypeConformance2();
    v110 = v167;
    sub_1E6718738(v106, v166, v82);
    v186 = v109;
    v187 = v83;
    v111 = v179;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v85 = v175;
    sub_1E6718640(v110, v111);
    (*(v168 + 8))(v110, v111);
    v108(v106, v82);
    v108(v173, v82);
    (*(v161 + 8))(v160, v162);
  }

  v131 = v177;
  v132 = v176;
  v194 = v82;
  v195 = v83;
  v190 = swift_getOpaqueTypeConformance2();
  v191 = v83;
  v133 = swift_getWitnessTable();
  v134 = swift_getWitnessTable();
  v188 = v133;
  v189 = v134;
  v135 = swift_getWitnessTable();
  sub_1E671EA50(v85, v131, v135);
  return (*(v132 + 8))(v85, v131);
}

uint64_t sub_1E671A384(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SummaryWorkoutsCardItemView();
  sub_1E6718954(v3);
  v5 = *(v4 + 56);
  (*(v4 + 48))(a2);
}

uint64_t sub_1E671A400()
{
  v1 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v2 = *(type metadata accessor for SummaryWorkoutsCardItemView() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(type metadata accessor for SummaryWorkoutsCardWorkoutItem() - 8);
  v6 = v0 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1E671A384(v0 + v3, v6);
}

unint64_t sub_1E671A510()
{
  result = qword_1EE2C53B8;
  if (!qword_1EE2C53B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A40, &qword_1E6721270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C53B8);
  }

  return result;
}

uint64_t sub_1E671A59C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1E671A5EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t type metadata accessor for SummaryWorkoutsCardHeaderView()
{
  result = qword_1EE2C5810;
  if (!qword_1EE2C5810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E671A688()
{
  type metadata accessor for SummaryWorkoutsCardHeader();
  if (v0 <= 0x3F)
  {
    sub_1E671FDCC();
    if (v1 <= 0x3F)
    {
      sub_1E671A72C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E671A72C()
{
  if (!qword_1EE2C5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A50, &qword_1E67212F0);
    v0 = sub_1E671FE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C5AD8);
    }
  }
}

uint64_t sub_1E671A7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A78, &unk_1E6721368);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51[-v11];
  v13 = sub_1E671FD7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A80, &qword_1E6721378);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v61 = &v51[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v51[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A88, &qword_1E6721380);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v60 = &v51[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v51[-v27];
  *v28 = sub_1E672000C();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A90, &qword_1E6721388);
  sub_1E671AD60(a1, &v28[*(v29 + 44)]);
  v30 = type metadata accessor for SummaryWorkoutsCardHeader();
  sub_1E670D71C(a1 + *(v30 + 20), v12, &qword_1ED096868, &unk_1E6721040);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E670D784(v12, &qword_1ED096868, &unk_1E6721040);
    v31 = v59;
    (*(v5 + 56))(v59, 1, 1, v4);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v56 = v4;
    v32 = sub_1E671FD5C();
    v58 = v5;
    v34 = v33;
    v36 = v35;
    v53 = v13;
    sub_1E672014C();
    v37 = sub_1E672027C();
    v54 = v38;
    v55 = v37;
    v52 = v39;
    v57 = v40;

    sub_1E670D8A0(v32, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    LODWORD(v34) = sub_1E67200BC();
    (*(v14 + 8))(v17, v53);
    v66 = v52 & 1;
    v64 = 0;
    v42 = v56;
    v43 = *(v56 + 36);
    v44 = *MEMORY[0x1E6981DB8];
    v45 = sub_1E672050C();
    (*(*(v45 - 8) + 104))(&v8[v43], v44, v45);
    v46 = v54;
    *v8 = v55;
    *(v8 + 1) = v46;
    v8[16] = v66;
    *(v8 + 17) = *v65;
    *(v8 + 5) = *&v65[3];
    *(v8 + 3) = v57;
    *(v8 + 4) = KeyPath;
    *(v8 + 5) = 2;
    v8[48] = v64;
    *(v8 + 49) = v62;
    v8[51] = v63;
    *(v8 + 13) = v34;
    v31 = v59;
    sub_1E671BD64(v8, v59);
    (*(v58 + 56))(v31, 0, 1, v42);
  }

  v47 = v60;
  sub_1E670D71C(v28, v60, &qword_1ED096A88, &qword_1E6721380);
  v48 = v61;
  sub_1E670D71C(v31, v61, &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D71C(v47, a2, &qword_1ED096A88, &qword_1E6721380);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A98, &qword_1E6721390);
  sub_1E670D71C(v48, a2 + *(v49 + 48), &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D784(v31, &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D784(v28, &qword_1ED096A88, &qword_1E6721380);
  sub_1E670D784(v48, &qword_1ED096A80, &qword_1E6721378);
  return sub_1E670D784(v47, &qword_1ED096A88, &qword_1E6721380);
}

uint64_t sub_1E671AD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v109 = type metadata accessor for SummaryWorkoutsCardHeaderView();
  v99 = *(v109 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v100 = v4;
  v101 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1E671FDCC();
  v96 = *(v98 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E672057C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E672003C();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E672038C();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA0, &qword_1E67213C8);
  v16 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v83 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA8, &qword_1E67213D0);
  v106 = *(v103 - 8);
  v18 = *(v106 + 64);
  v19 = MEMORY[0x1EEE9AC00](v103);
  v87 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v83 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AB0, &qword_1E67213D8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v107 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v83 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AB8, &qword_1E67213E0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v105 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v83 - v34;
  v36 = sub_1E671FD5C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  KeyPath = swift_getKeyPath();
  v44 = sub_1E67200FC();
  sub_1E671FE5C();
  LOBYTE(v110) = v40 & 1;
  v122 = 0;
  v121 = 0;
  *&v114 = v36;
  *(&v114 + 1) = v38;
  LOBYTE(v115) = v40 & 1;
  *(&v115 + 1) = v42;
  *&v116 = KeyPath;
  *(&v116 + 1) = 1;
  LOBYTE(v117) = 0;
  BYTE8(v117) = v44;
  *&v118 = v45;
  *(&v118 + 1) = v46;
  *&v119 = v47;
  *(&v119 + 1) = v48;
  v120 = 0;
  sub_1E67201AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AC0, &qword_1E67213E8);
  sub_1E671BF70(&qword_1EE2C5468, &qword_1ED096AC0, &qword_1E67213E8, sub_1E671BDD4);
  v49 = a1;
  sub_1E67202BC();
  v123[4] = v118;
  v123[5] = v119;
  v124 = v120;
  v123[0] = v114;
  v123[1] = v115;
  v123[2] = v116;
  v123[3] = v117;
  sub_1E670D784(v123, &qword_1ED096AC0, &qword_1E67213E8);
  sub_1E672015C();
  v50 = sub_1E672021C();

  v51 = swift_getKeyPath();
  v52 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AD8, &qword_1E6721430) + 36)];
  *v52 = v51;
  v52[1] = v50;
  LODWORD(v51) = sub_1E67200AC();
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AE0, &qword_1E6721438) + 36)] = v51;
  v53 = *(v30 + 44);
  v54 = *MEMORY[0x1E6981DB8];
  v55 = sub_1E672050C();
  v56 = *(*(v55 - 8) + 104);
  v104 = v35;
  v56(&v35[v53], v54, v55);
  if (*(a1 + *(v109 + 20)) == 1)
  {
    v57 = sub_1E67203EC();
    v58 = sub_1E67200FC();
    LOBYTE(v114) = 0;
    v59 = sub_1E672023C();
    v60 = swift_getKeyPath();
    *&v110 = v57;
    BYTE8(v110) = 1;
    LOBYTE(v111[0]) = v58;
    *(v111 + 8) = xmmword_1E67212B0;
    *(&v111[1] + 1) = 0;
    *&v112 = 0;
    BYTE8(v112) = 0;
    *&v113 = v60;
    *(&v113 + 1) = v59;
    sub_1E67201AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BE8C();
    v61 = v89;
    sub_1E67202BC();
    v117 = v112;
    v118 = v113;
    v115 = v111[0];
    v116 = v111[1];
    v114 = v110;
    sub_1E670D784(&v114, &qword_1ED096AF0, &qword_1E6721448);
    (*(v85 + 104))(v84, *MEMORY[0x1E69814D8], v86);
    *(v61 + *(v88 + 36)) = sub_1E67203AC();
    v62 = v91;
    sub_1E672001C();
    sub_1E671C0D4();
    v63 = v87;
    sub_1E672032C();
    v64 = v93;
    v65 = *(v92 + 8);
    v65(v62, v93);
    sub_1E670D784(v61, &qword_1ED096AA0, &qword_1E67213C8);
    sub_1E672002C();
    v66 = v90;
    v67 = v103;
    sub_1E671FEDC();
    v65(v62, v64);
    sub_1E670D784(v63, &qword_1ED096AA8, &qword_1E67213D0);
    sub_1E672056C();
    if (qword_1EE2C53B0 != -1)
    {
      swift_once();
    }

    v68 = qword_1EE2C6190;
    (*(v96 + 16))(v97, v49 + *(v109 + 24), v98);
    v69 = v68;
    *&v110 = sub_1E672058C();
    *(&v110 + 1) = v70;
    v71 = v101;
    sub_1E671BB14(v49, v101);
    v72 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v73 = swift_allocObject();
    sub_1E671BB78(v71, v73 + v72);
    sub_1E6713390();
    v74 = v94;
    sub_1E671FECC();

    sub_1E670D784(v66, &qword_1ED096AA8, &qword_1E67213D0);
    v75 = v102;
    sub_1E670AC58(v74, v102);
    (*(v106 + 56))(v75, 0, 1, v67);
  }

  else
  {
    v75 = v102;
    (*(v106 + 56))(v102, 1, 1, v103);
  }

  v77 = v104;
  v76 = v105;
  sub_1E670D71C(v104, v105, &qword_1ED096AB8, &qword_1E67213E0);
  v78 = v107;
  sub_1E670D71C(v75, v107, &qword_1ED096AB0, &qword_1E67213D8);
  v79 = v108;
  sub_1E670D71C(v76, v108, &qword_1ED096AB8, &qword_1E67213E0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AE8, &qword_1E6721440);
  v81 = v79 + *(v80 + 48);
  *v81 = 0;
  *(v81 + 8) = 0;
  sub_1E670D71C(v78, v79 + *(v80 + 64), &qword_1ED096AB0, &qword_1E67213D8);
  sub_1E670D784(v75, &qword_1ED096AB0, &qword_1E67213D8);
  sub_1E670D784(v77, &qword_1ED096AB8, &qword_1E67213E0);
  sub_1E670D784(v78, &qword_1ED096AB0, &qword_1E67213D8);
  return sub_1E670D784(v76, &qword_1ED096AB8, &qword_1E67213E0);
}

uint64_t sub_1E671B864()
{
  v0 = *(type metadata accessor for SummaryWorkoutsCardHeaderView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v1 = sub_1E671FE0C();
  v3(v1);
}

uint64_t sub_1E671B8CC(uint64_t a1)
{
  result = type metadata accessor for SummaryWorkoutsCardHeaderView();
  if (*(a1 + *(result + 20)) == 1)
  {
    v3 = *(result + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
    v4 = sub_1E671FE0C();
    v5(v4);
  }

  return result;
}

uint64_t sub_1E671B944(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A58, &qword_1E6721348);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  *v8 = sub_1E672005C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A60, &qword_1E6721350);
  sub_1E671A7AC(v2, &v8[*(v9 + 44)]);
  v8[*(v5 + 36)] = 0;
  sub_1E671BB14(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1E671BB78(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1E671BBF4();
  sub_1E67202DC();

  return sub_1E670D784(v8, &qword_1ED096A58, &qword_1E6721348);
}

uint64_t sub_1E671BB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671BB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E671BBF4()
{
  result = qword_1EE2C5478;
  if (!qword_1EE2C5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A58, &qword_1E6721348);
    sub_1E670DA90(&qword_1EE2C53D8, &qword_1ED096A68, &qword_1E6721358);
    sub_1E670DA90(&qword_1EE2C5420, &qword_1ED096A70, &qword_1E6721360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5478);
  }

  return result;
}

uint64_t sub_1E671BD00@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E671FFCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E671BD34(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E671FFDC();
}

uint64_t sub_1E671BD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A78, &unk_1E6721368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E671BDD4()
{
  result = qword_1EE2C5498;
  if (!qword_1EE2C5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AC8, &qword_1E67213F0);
    sub_1E670DA90(&qword_1EE2C53F8, &qword_1ED096AD0, &qword_1E67213F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5498);
  }

  return result;
}

unint64_t sub_1E671BE8C()
{
  result = qword_1EE2C5448;
  if (!qword_1EE2C5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BF70(&qword_1EE2C5458, &qword_1ED096AF8, &qword_1E6721450, sub_1E671BFF4);
    sub_1E670DA90(&qword_1EE2C5400, &qword_1ED096B08, &qword_1E6721460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5448);
  }

  return result;
}

uint64_t sub_1E671BF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E671BFF4()
{
  result = qword_1EE2C5480;
  if (!qword_1EE2C5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B00, &qword_1E6721458);
    sub_1E671C080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5480);
  }

  return result;
}

unint64_t sub_1E671C080()
{
  result = qword_1EE2C5428;
  if (!qword_1EE2C5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5428);
  }

  return result;
}

unint64_t sub_1E671C0D4()
{
  result = qword_1EE2C5490;
  if (!qword_1EE2C5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AA0, &qword_1E67213C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BE8C();
    swift_getOpaqueTypeConformance2();
    sub_1E670DA90(&qword_1EE2C5410, &qword_1ED096B10, &qword_1E6721468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5490);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SummaryWorkoutsCardHeaderView();
  v12 = *(*(v1 - 8) + 64);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1E671FD7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(type metadata accessor for SummaryWorkoutsCardHeader() + 20);
  if (!(*(v4 + 48))(v2 + v6, 1, v3))
  {
    v5(v2 + v6, v3);
  }

  v7 = *(v1 + 24);
  v8 = sub_1E671FDCC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1E671C3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryWorkoutsCardHeaderView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E671C468(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 16);
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v4;
}

uint64_t sub_1E671C4D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A50, &qword_1E67212F0);
  return sub_1E671FDFC();
}

uint64_t (*sub_1E671C55C(uint64_t a1))()
{
  v1 = *(a1 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  sub_1E671FE0C();
  *(swift_allocObject() + 16) = v3;
  return sub_1E6712EA8;
}

uint64_t sub_1E671C5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E671C690(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v6;
  return sub_1E671EA30;
}

uint64_t sub_1E671C73C(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B68, &qword_1E6721558);
  sub_1E672043C();
  return v3;
}

double sub_1E671C794(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  sub_1E672041C();
  return v4;
}

uint64_t sub_1E671C7F4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  return sub_1E672042C();
}

double sub_1E671C854(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  sub_1E672041C();
  return v4;
}

uint64_t sub_1E671C8B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  return sub_1E672042C();
}

uint64_t SummaryWorkoutsCardView.init(header:items:isInteractive:locale:artworkViewBuilder:headerAction:itemAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for SummaryWorkoutsCardView();
  v17 = v16[19];
  sub_1E672040C();
  *(a7 + v17) = a10;
  v18 = (a7 + v16[20]);
  sub_1E672040C();
  *v18 = a10;
  v19 = (a7 + v16[21]);
  sub_1E672040C();
  *v19 = a10;
  sub_1E671CB58(a1, a7);
  *(a7 + v16[13]) = a2;
  *(a7 + v16[14]) = a3;
  v20 = v16[15];
  v21 = sub_1E671FDCC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7 + v20, a4, v21);
  v23 = v16[16];

  sub_1E670EA64();
  v24 = v16[17];

  sub_1E671C4D4(a5, a6);
  v25 = a7 + v16[18];
  sub_1E671C5D8(a8, a9, a10, *(&a10 + 1), a11, a12);

  (*(v22 + 8))(a4, v21);
  return sub_1E671CBBC(a1);
}

uint64_t sub_1E671CB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671CBBC(uint64_t a1)
{
  v2 = type metadata accessor for SummaryWorkoutsCardHeader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SummaryWorkoutsCardView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = a1;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v61 = type metadata accessor for SummaryWorkoutsCardItemView();
  v62 = type metadata accessor for SummaryWorkoutsCardItem();
  WitnessTable = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  sub_1E671FDEC();
  v6 = sub_1E67203DC();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B18, &qword_1E6721490);
  v38 = sub_1E671FEEC();
  v43 = *(v38 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v34 - v10;
  v11 = sub_1E671FEEC();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v34 - v15;
  v51 = v2;
  v52 = v3;
  v16 = v5;
  v53 = v5;
  v54 = v4;
  v17 = v4;
  v18 = v40;
  v55 = v40;
  v19 = swift_getWitnessTable();
  sub_1E67203CC();
  sub_1E67204CC();
  v46 = v2;
  v47 = v3;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B20, &qword_1E6721498);
  v60 = v19;
  v21 = swift_getWitnessTable();
  sub_1E671DDC0();
  v22 = v36;
  v23 = v35;
  sub_1E672035C();
  (*(v41 + 8))(v23, v6);
  v24 = *(v20 + *(v44 + 14));
  v25 = sub_1E670DA90(&qword_1ED096B58, &qword_1ED096B18, &qword_1E6721490);
  v58 = v21;
  v59 = v25;
  v26 = v38;
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_1E672030C();
  (*(v43 + 8))(v22, v26);
  v56 = v27;
  v57 = MEMORY[0x1E69805B0];
  swift_getWitnessTable();
  v29 = v42;
  v30 = *(v42 + 16);
  v31 = v39;
  v30(v39, v28, v11);
  v32 = *(v29 + 8);
  v32(v28, v11);
  v30(v45, v31, v11);
  return (v32)(v31, v11);
}

uint64_t sub_1E671D17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v64 = a6;
  v65 = a4;
  v66 = a2;
  v67 = a3;
  v61 = a2;
  v68 = a4;
  v69 = a5;
  v54 = a5;
  v11 = type metadata accessor for SummaryWorkoutsCardView();
  v12 = *(v11 - 8);
  v46 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v15 = type metadata accessor for SummaryWorkoutsCardItemView();
  v45 = a3;
  v16 = type metadata accessor for SummaryWorkoutsCardItem();
  v60 = v15;
  WitnessTable = swift_getWitnessTable();
  v58 = WitnessTable;
  v59 = v16;
  v18 = swift_getWitnessTable();
  v57 = v18;
  v55 = swift_getWitnessTable();
  v66 = v15;
  v67 = v16;
  v68 = WitnessTable;
  v69 = v18;
  v70 = v55;
  v19 = sub_1E671FDEC();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v53 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v44 - v23;
  v24 = a1;
  v48 = a1;
  v25 = sub_1E671C73C(v11);
  v51 = v26;
  v52 = v25;
  v50 = v27;
  v49 = *(a1 + *(v11 + 52));
  v47 = *(v12 + 16);
  v28 = v14;
  v47(v14, v24, v11);
  v29 = v12;
  v30 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v31 = swift_allocObject();
  v32 = v61;
  *(v31 + 2) = v61;
  *(v31 + 3) = a3;
  v33 = v54;
  *(v31 + 4) = v65;
  *(v31 + 5) = v33;
  v34 = *(v29 + 32);
  v44 = v28;
  v34(&v31[v30], v28, v11);
  v47(v28, v48, v11);
  v35 = swift_allocObject();
  v36 = v45;
  *(v35 + 2) = v32;
  *(v35 + 3) = v36;
  *(v35 + 4) = v65;
  *(v35 + 5) = v33;
  v34(&v35[v30], v44, v11);

  v37 = v53;
  sub_1E671FDDC();
  v38 = v63;
  swift_getWitnessTable();
  v39 = v62;
  v40 = *(v62 + 16);
  v41 = v56;
  v40(v56, v37, v38);
  v42 = *(v39 + 8);
  v42(v37, v38);
  v40(v64, v41, v38);
  return (v42)(v41, v38);
}

uint64_t sub_1E671D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v45 = a1;
  v49 = a7;
  v12 = sub_1E671FDCC();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a4;
  v15 = a6;
  v42 = type metadata accessor for SummaryWorkoutsCardItem();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v19 = &v38 - v18;
  v43 = &v38 - v18;
  v44 = a3;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v20 = a5;
  v40 = v15;
  v41 = a5;
  v21 = type metadata accessor for SummaryWorkoutsCardItemView();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v38 - v27;
  (*(v16 + 16))(v19, v45, v42);
  v50 = a3;
  v29 = v39;
  v51 = v39;
  v52 = v20;
  v53 = v15;
  v30 = type metadata accessor for SummaryWorkoutsCardView();
  v31 = sub_1E671C794(v30);
  v32 = sub_1E671C854(v30);
  v33 = v46;
  (*(v47 + 16))(v46, a2 + *(v30 + 60), v48);
  sub_1E671C468(v30);
  sub_1E671C690(v30);
  sub_1E6718A00(v43, v33, sub_1E671EA30, v34, v44, v29, v26, v31, v32, v41, v40);
  swift_getWitnessTable();
  v35 = v22[2];
  v35(v28, v26, v21);
  v36 = v22[1];
  v36(v26, v21);
  v35(v49, v28, v21);
  return (v36)(v28, v21);
}

uint64_t sub_1E671D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v47 = a6;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  v7 = type metadata accessor for SummaryWorkoutsCardView();
  v8 = *(v7 - 8);
  v41 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B38, &qword_1E67214A8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B30, &qword_1E67214A0);
  v15 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v39 - v16;
  sub_1E671CB58(a1, v14);
  v18 = *(v7 + 60);
  v19 = *(a1 + *(v7 + 56));
  v20 = type metadata accessor for SummaryWorkoutsCardHeaderView();
  v21 = v20[6];
  v22 = sub_1E671FDCC();
  (*(*(v22 - 8) + 16))(&v14[v21], a1 + v18, v22);
  sub_1E671C55C(v7);
  v24 = v23;
  v14[v20[5]] = v19;
  v25 = v20[7];
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1E6712EA8;
  *(v26 + 24) = v24;
  *&v48 = sub_1E671E448;
  *(&v48 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A50, &qword_1E67212F0);
  sub_1E671FDFC();
  LOBYTE(v20) = sub_1E67200FC();
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B40, &qword_1E67214B0) + 36)];
  *v27 = v20;
  *(v27 + 8) = xmmword_1E6721470;
  *(v27 + 24) = xmmword_1E6721480;
  v27[40] = 0;
  v28 = v40;
  (*(v8 + 16))(v40, a1, v7);
  v29 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 2) = v43;
  *(v30 + 3) = v31;
  v32 = v46;
  *(v30 + 4) = v45;
  *(v30 + 5) = v32;
  (*(v8 + 32))(&v30[v29], v28, v7);
  v33 = &v14[*(v11 + 44)];
  *v33 = sub_1E671E0C4;
  v33[1] = 0;
  v33[2] = sub_1E671E450;
  v33[3] = v30;
  sub_1E67204FC();
  sub_1E671FF1C();
  sub_1E671E500(v14, v17);
  v34 = &v17[*(v42 + 36)];
  v35 = v53;
  *(v34 + 4) = v52;
  *(v34 + 5) = v35;
  *(v34 + 6) = v54;
  v36 = v49;
  *v34 = v48;
  *(v34 + 1) = v36;
  v37 = v51;
  *(v34 + 2) = v50;
  *(v34 + 3) = v37;
  sub_1E671DE7C();
  sub_1E672033C();
  return sub_1E671E570(v17);
}

unint64_t sub_1E671DDC0()
{
  result = qword_1ED096B28;
  if (!qword_1ED096B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B20, &qword_1E6721498);
    sub_1E671DE7C();
    sub_1E671E07C(&qword_1ED096B50, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096B28);
  }

  return result;
}

unint64_t sub_1E671DE7C()
{
  result = qword_1EE2C5450;
  if (!qword_1EE2C5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B30, &qword_1E67214A0);
    sub_1E671DF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5450);
  }

  return result;
}

unint64_t sub_1E671DF08()
{
  result = qword_1EE2C5470;
  if (!qword_1EE2C5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B38, &qword_1E67214A8);
    sub_1E671DFC0();
    sub_1E670DA90(&qword_1EE2C5418, &qword_1ED096B48, &qword_1E67214B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5470);
  }

  return result;
}

unint64_t sub_1E671DFC0()
{
  result = qword_1EE2C54A0;
  if (!qword_1EE2C54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B40, &qword_1E67214B0);
    sub_1E671E07C(qword_1EE2C5820, type metadata accessor for SummaryWorkoutsCardHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54A0);
  }

  return result;
}

uint64_t sub_1E671E07C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E671E0C4@<D0>(double *a1@<X8>)
{
  v2 = sub_1E672009C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E67200CC();
  sub_1E671FE8C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  result = ceil(CGRectGetHeight(v17));
  *a1 = result;
  return result;
}

uint64_t sub_1E671E1E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E671E234(void *a1)
{
  type metadata accessor for SummaryWorkoutsCardHeader();
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    v4 = a1[5];
    type metadata accessor for SummaryWorkoutsCardItem();
    sub_1E67205CC();
    if (v5 <= 0x3F)
    {
      sub_1E671FDCC();
      if (v6 <= 0x3F)
      {
        v7 = a1[2];
        type metadata accessor for SummaryArtwork();
        swift_getFunctionTypeMetadata1();
        sub_1E671FE1C();
        if (v8 <= 0x3F)
        {
          sub_1E671A72C();
          if (v9 <= 0x3F)
          {
            swift_getFunctionTypeMetadata1();
            sub_1E671FE1C();
            if (v10 <= 0x3F)
            {
              sub_1E671E3FC(319, &qword_1EE2C53E8);
              if (v11 <= 0x3F)
              {
                sub_1E671E3FC(319, &qword_1EE2C53F0);
                if (v12 <= 0x3F)
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

void sub_1E671E3FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E672044C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1E671E450(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for SummaryWorkoutsCardView() - 8);
  v8 = *a1;
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = type metadata accessor for SummaryWorkoutsCardView();
  return sub_1E671C7F4(v10);
}

uint64_t sub_1E671E500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B38, &qword_1E67214A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671E570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B30, &qword_1E67214A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E671E5D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for SummaryWorkoutsCardView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E671D614(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_3Tm()
{
  v22 = *(v0 + 16);
  v20 = *(v0 + 24);
  v23 = *(v0 + 40);
  v1 = type metadata accessor for SummaryWorkoutsCardView();
  v21 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  v3 = sub_1E671FD7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(type metadata accessor for SummaryWorkoutsCardHeader() + 20);
  if (!(*(v4 + 48))(v2 + v6, 1, v3))
  {
    v5(v2 + v6, v3);
  }

  v7 = *(v2 + v1[13]);

  v8 = v1[15];
  v9 = sub_1E671FDCC();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = v1[16];
  type metadata accessor for SummaryArtwork();
  swift_getFunctionTypeMetadata1();
  v11 = sub_1E671FE1C();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  v12 = v1[17];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  (*(*(v13 - 8) + 8))(v2 + v12, v13);
  v14 = v1[18];
  swift_getFunctionTypeMetadata1();
  v15 = sub_1E671FE1C();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = *(v2 + v1[19] + 8);

  v17 = *(v2 + v1[20] + 8);

  v18 = *(v2 + v1[21] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E671E984()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for SummaryWorkoutsCardView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = type metadata accessor for SummaryWorkoutsCardView();
  return sub_1E671C8B4(v7);
}

uint64_t sub_1E671EA30(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_1E671A574(a1, *(v1 + 48));
}

uint64_t sub_1E671EA40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return sub_1E671A5C4(a1, *(v1 + 48));
}

uint64_t sub_1E671EA58()
{
  v1 = v0;
  v2 = sub_1E671FE3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummaryArtwork();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1E6715EAC(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    sub_1E671ED38(v10, v17);
    sub_1E670D784(&v10[v18], &qword_1ED0969F0, &qword_1E6720F88);
  }

  else
  {
    v19 = *(v10 + 1);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v21 = *(v20 + 48);
    sub_1E671ED38(&v10[*(v20 + 64)], v17);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
    (*(*(v22 - 8) + 8))(&v10[v21], v22);
  }

  sub_1E671ED38(v17, v15);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_1E670D784(v15, &qword_1ED0969F8, &qword_1E6720F90);
    return sub_1E672039C();
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    sub_1E671FE2C();
    v24 = sub_1E672037C();
    (*(v3 + 8))(v6, v2);
    return v24;
  }
}

uint64_t sub_1E671ED38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryWorkoutsCardItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v51 = a2;
  v6 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v42 - v8;
  v9 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v43 = a3;
  v44 = a4;
  v13 = type metadata accessor for SummaryWorkoutsCardItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(TupleTypeMetadata2 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v42 - v25;
  v27 = *(v24 + 48);
  v49 = v14;
  v28 = *(v14 + 16);
  v28(&v42 - v25, v50, v13);
  v28(&v26[v27], v51, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v47;
    v28(v20, v26, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v35;
      v38 = *(v35 + 32);
      v39 = v12;
      v40 = v48;
      v38(v12, &v26[v27], v48);
      v33 = static SummaryWorkoutsCardWorkoutItem.== infix(_:_:)(v20, v12, v43, v44);
      v41 = *(v37 + 8);
      v41(v39, v40);
      v41(v20, v40);
      v22 = v49;
      goto LABEL_11;
    }

    (*(v35 + 8))(v20, v48);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = 1;
      v22 = v49;
      goto LABEL_11;
    }

LABEL_10:
    v33 = 0;
    v13 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v28(v18, v26, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v45 + 8))(v18, v46);
    goto LABEL_10;
  }

  v31 = v45;
  v30 = v46;
  v32 = v42;
  (*(v45 + 32))(v42, &v26[v27], v46);
  v33 = static SummaryWorkoutsCardErrorItem.== infix(_:_:)(v18, v32, v43, v44);
  v34 = *(v31 + 8);
  v34(v32, v30);
  v34(v18, v30);
  v22 = v49;
LABEL_11:
  (*(v22 + 8))(v26, v13);
  return v33 & 1;
}

uint64_t SummaryWorkoutsCardItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for SummaryWorkoutsCardErrorItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - v17;
  v19 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 32))(v12, v21, v8);
      MEMORY[0x1E694FC40](2);
      SummaryWorkoutsCardErrorItem.hash(into:)(a1, v8);
      return (*(v9 + 8))(v12, v8);
    }

    else
    {
      return MEMORY[0x1E694FC40](0);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v21, v13);
    MEMORY[0x1E694FC40](1);
    SummaryWorkoutsCardWorkoutItem.hash(into:)(a1, v13);
    return (*(v14 + 8))(v18, v13);
  }
}

uint64_t SummaryWorkoutsCardItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardItem.hash(into:)(v3, a1);
  return sub_1E672065C();
}

uint64_t sub_1E671F554(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardItem.hash(into:)(v4, a2);
  return sub_1E672065C();
}

uint64_t sub_1E671F5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SummaryWorkoutsCardWorkoutItem();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for SummaryWorkoutsCardErrorItem();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E671F674(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(sub_1E671FD7C() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v6 + v5 + ((v6 + v5 + ((v3 + v5) & ~v5)) & ~v5)) & ~v5;
  v8 = *(v4 + 84);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_1E671FE3C() - 8);
  v12 = *(v11 + 80);
  v13 = *(sub_1E671FDBC() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v7 + v6;
  if (v8)
  {
    v17 = v7 + v6;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = (v17 + (v10 | v12 | v15 | 7) + 1) & ~(v10 | v12 | v15 | 7);
  if (*(v11 + 84))
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = (v19 + v15) & ~v15;
  v21 = *(v13 + 64);
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = v21 + v20;
  if (v22 <= v19 + ((((v10 + 16) & ~v10) + v12 + *(v9 + 64)) & ~v12))
  {
    v22 = v19 + ((((v10 + 16) & ~v10) + v12 + *(v9 + 64)) & ~v12);
  }

  v23 = v22 + v18;
  if (v16 <= v23 + 1)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v7 + v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_36;
  }

  v25 = v24 + 1;
  v26 = 8 * (v24 + 1);
  if ((v24 + 1) <= 3)
  {
    v29 = ((a2 + ~(-1 << v26) - 253) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v29 < 2)
    {
LABEL_36:
      v31 = *(a1 + v24);
      if (v31 >= 3)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_36;
  }

LABEL_25:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return (v25 | v30) + 254;
}

void sub_1E671F9A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  v5 = *(sub_1E671FD7C() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v7 + v6 + ((v4 + v6) & ~v6)) & ~v6)) & ~v6;
  v9 = *(v5 + 84);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v11 = *(v10 + 80);
  v12 = *(sub_1E671FE3C() - 8);
  v13 = *(v12 + 80);
  v14 = *(sub_1E671FDBC() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v8 + v7;
  if (v9)
  {
    v18 = v8 + v7;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = (v18 + (v11 | v13 | v16 | 7) + 1) & ~(v11 | v13 | v16 | 7);
  if (*(v12 + 84))
  {
    v20 = *(v12 + 64);
  }

  else
  {
    v20 = *(v12 + 64) + 1;
  }

  v21 = (v20 + v16) & ~v16;
  v22 = *(v14 + 64);
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = v22 + v21;
  if (v23 <= v20 + ((((v11 + 16) & ~v11) + v13 + *(v10 + 64)) & ~v13))
  {
    v23 = v20 + ((((v11 + 16) & ~v11) + v13 + *(v10 + 64)) & ~v13);
  }

  v24 = v23 + v19;
  if (v17 <= v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = v8 + v7;
  }

  v26 = v25 + 1;
  if (a3 < 0xFE)
  {
    v29 = 0;
    v27 = a1;
    v28 = a2;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    if (v26 <= 3)
    {
      v32 = ((a3 + ~(-1 << (8 * v26)) - 253) >> (8 * v26)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v28 > 0xFD)
  {
    v30 = v28 - 254;
    if (v26 >= 4)
    {
      bzero(v27, v25 + 1);
      *v27 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v31 = (v30 >> (8 * v26)) + 1;
    if (v25 != -1)
    {
      v34 = v30 & ~(-1 << (8 * v26));
      bzero(v27, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *v27 = v34;
          if (v29 > 1)
          {
LABEL_50:
            if (v29 == 2)
            {
              *&v27[v26] = v31;
            }

            else
            {
              *&v27[v26] = v31;
            }

            return;
          }
        }

        else
        {
          *v27 = v30;
          if (v29 > 1)
          {
            goto LABEL_50;
          }
        }

LABEL_47:
        if (v29)
        {
          v27[v26] = v31;
        }

        return;
      }

      *v27 = v34;
      v27[2] = BYTE2(v34);
    }

    if (v29 > 1)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      v27[v26] = 0;
      if (!v28)
      {
        return;
      }

LABEL_36:
      v27[v25] = -v28;
      return;
    }

LABEL_35:
    if (!v28)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v29 == 2)
  {
    *&v27[v26] = 0;
    goto LABEL_35;
  }

  *&v27[v26] = 0;
  if (v28)
  {
    goto LABEL_36;
  }
}