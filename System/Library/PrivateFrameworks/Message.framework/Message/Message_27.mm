uint64_t sub_1B07FECD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    if (a2 == 1)
    {

      return 2;
    }

    else if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFBE8();
      v8 = sub_1B0E45748();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v8)
      {
        v7 = sub_1B0E45748();
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      return v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFBE8();
      if (sub_1B0E45748())
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }

      return v5;
    }
  }

  else if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFBE8();
    if (sub_1B0E45748())
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07FF000(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = 0;
  v37 = 0;
  v33 = 0;
  v31 = 0;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v35[0] = sub_1B0E46A28();
  v35[1] = v3;
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  v34 = a1;
  sub_1B0E469F8();
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v35);
  v36 = sub_1B0E44C88();
  v37 = v6;
  sub_1B07F200C(a2);
  if (a2 < 2)
  {
    v10 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v10);
  }

  else
  {
    v31 = a2;
    v30[2] = a2;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v26 = sub_1B07AFBE8();
    v7 = sub_1B0E45748();
    if (v7)
    {
      v8 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v8);
    }

    else
    {
      v30[1] = a2;
      v30[0] = sub_1B039CA88(sub_1B07AA064, 0, v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v24);
      sub_1B0E44838();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v22 = sub_1B0E448E8();
      v23 = v9;

      sub_1B039E440(v30);
      MEMORY[0x1B2726E80](v22, v23);
    }
  }

  v11 = sub_1B0E44838();
  MEMORY[0x1B2726E80](v11);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a3)
  {
    v33 = a3;
    v32[2] = a3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v21 = sub_1B07AFBE8();
    v13 = sub_1B0E45748();
    if (v13)
    {
      v14 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v14);
    }

    else
    {
      v32[1] = a3;
      v32[0] = sub_1B039CA88(sub_1B07AA064, 0, v20, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v24);
      sub_1B0E44838();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v18 = sub_1B0E448E8();
      v19 = v15;

      sub_1B039E440(v32);
      MEMORY[0x1B2726E80](v18, v19);
    }
  }

  else
  {
    v12 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v12);
  }

  v17 = v36;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(&v36);
  return v17;
}

BOOL sub_1B07FF63C(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    return (a4 & 0x100) != 0;
  }

  if ((a4 & 0x100) != 0)
  {
    return 0;
  }

  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

BOOL sub_1B07FF80C(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = *(a1 + 8);
  HIBYTE(v4) = *(a1 + 9) & 1;
  LOBYTE(v3) = *(a2 + 8);
  HIBYTE(v3) = *(a2 + 9) & 1;
  return sub_1B07FF63C(*a1, v4, *a2, v3);
}

uint64_t sub_1B07FF8A8()
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(0x7FFFFFFFFFFFFFFFLL);
  qword_1EB7381F8 = result;
  return result;
}

uint64_t *sub_1B07FF8CC()
{
  if (qword_1EB6E0B50 != -1)
  {
    swift_once();
  }

  return &qword_1EB7381F8;
}

uint64_t sub_1B0813728@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v9 = 0;
  v8 = sub_1B0813E78;
  v16 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v15 = &v4 - v5;
  v16 = v1;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B041C1E8();
  v14 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v2);
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v15, v8, v9, v13, v7, &unk_1F26C8718, v6);
  sub_1B03D09B8(v15);
}

uint64_t sub_1B08138C0@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v9 = 0;
  v8 = sub_1B081ABBC;
  v16 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v15 = &v4 - v5;
  v16 = v1;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B041C1E8();
  v14 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v2);
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v15, v8, v9, v13, v7, &unk_1F26C87A0, v6);
  sub_1B03D09B8(v15);
}

uint64_t sub_1B0813A58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 40);
  v4 = *(result + 41);
  *a2 = *(result + 32);
  *(a2 + 8) = v3;
  *(a2 + 9) = v4 & 1;
  return result;
}

uint64_t sub_1B0813A80(uint64_t a1)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v1 = &v4 - v5;
  v8 = &v4 - v5;
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  sub_1B03D08AC(v6 + *(v2 + 24), v1);
  v9 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v8);
  return v9;
}

char *sub_1B0813B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v10 = a1;
  v8 = 0;
  v11 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v8 - v9;
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  sub_1B07F4C24((v10 + *(v2 + 20)), v12);
  v3 = &v12[*(v11 + 28)];
  v13 = *v3;
  v14 = v3[8];
  v15 = v3[9];
  result = sub_1B07F4FB8(v12);
  v5 = v14;
  v6 = v15;
  v7 = v16;
  *v16 = v13;
  *(v7 + 8) = v5;
  *(v7 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1B0813C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v19 = a2;
  v21 = a3;
  v18 = 0;
  v17 = sub_1B0813E78;
  v23 = 0;
  v22 = 0;
  v24 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v14);
  v16 = &v11 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v15 = &v11 - v13;
  v23 = v6;
  v22 = v3;
  sub_1B0813E10(v6, v7);
  v8 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v8);
  sub_1B0E44FD8();
  v9 = v11 + *(_s19CachedMailboxValuesV15MissingBodyDataVMa() + 24);
  MessageIdentifierSet.subtract(_:)();
  return sub_1B03D09B8(v15);
}

BOOL sub_1B0813E78(uint64_t a1, const void *a2)
{
  v6 = a1;
  memcpy(__dst, a2, sizeof(__dst));
  v4 = sub_1B07CF88C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v5, &v4, v2);
}

uint64_t sub_1B0813EFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v24 = a1;
  v23 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v18 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28 = &v18 - v19;
  v37 = &v18 - v19;
  v36 = v8;
  v34 = v9;
  v35 = v10;
  v32 = v11;
  v33 = v12;
  v31 = v5;
  v13 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v13);
  v26 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v14 = sub_1B08140B0(v24, v23, v20, v21, v22, v5 + *(v26 + 24), v28);
  v15 = v25;
  v29 = v14;
  v30 = v14;
  sub_1B03D08AC(v28, v27);
  v16 = v15 + *(v26 + 20);
  sub_1B0814528(v27);
  sub_1B03D09B8(v27);
  sub_1B03D09B8(v28);
  return v29;
}

uint64_t sub_1B08140B0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v20 - v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v50);
  v46 = &v20 - v44;
  v65 = v7;
  v63 = v8;
  v64 = v9;
  v61 = v10;
  v62 = v11;
  v60 = v12;
  v59 = v13;
  v58 = v14;
  v47 = __dst;
  memcpy(__dst, v14, 0x2AuLL);
  sub_1B07F48B4(__dst, v57);
  v49 = type metadata accessor for MissingBodyDataRequest();
  v45 = *(v50 + *(v49 + 24));
  sub_1B03D08AC(v50, v46);
  v48 = sub_1B0816558(v45, v46);
  sub_1B03D09B8(v46);
  sub_1B07F4A10(v47);
  v56 = v48;
  if (sub_1B0E452A8() < *(v50 + *(v49 + 24)))
  {
    v15 = v42[40];
    v16 = v42[41];
    v17 = v50 + *(v49 + 20);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v51 = *(v42 + 4);
    LOBYTE(v52) = v15;
    HIBYTE(v52) = v16 & 1;
    v32 = sub_1B0816758(v18, v17 & 1, v51, v52);
  }

  else
  {
    v32 = 0;
  }

  v29 = v32;
  v28 = 1;
  v55 = v32;
  sub_1B03D08AC(v40, v46);
  MessageIdentifierSet.ranges.getter(v35);
  sub_1B03D09B8(v46);
  v27 = sub_1B07D76A4();
  v30 = sub_1B0E45718();
  sub_1B07D772C(v35);
  v31 = v30 > 28;
  v54 = v31 & v28;
  v26 = v29 || v31;
  if ((v26 & 1) == 0)
  {
    return v48;
  }

  if (v29)
  {
    sub_1B0816870(v50, v36, v37, v40, v41);
  }

  sub_1B03D08AC(v40, v46);
  MessageIdentifierSet.ranges.getter(v35);
  sub_1B03D09B8(v46);
  v25 = sub_1B0E45718();
  sub_1B07D772C(v35);
  if (v25 > 28)
  {
    sub_1B0816E60(v38, v39, v40);
  }

  v22 = v66;
  memcpy(v66, v42, 0x2AuLL);
  sub_1B07F48B4(v66, &v53);
  v21 = *(v50 + *(v49 + 24));
  sub_1B03D08AC(v50, v46);
  v23 = sub_1B0816558(v21, v46);
  sub_1B03D09B8(v46);
  sub_1B07F4A10(v22);

  return v23;
}

uint64_t sub_1B0814528(uint64_t a1)
{
  v3 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.formUnion(_:)(a1, v1);
}

uint64_t sub_1B0814598(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v26 = a1;
  v25 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v18 - v18[0];
  v37 = MEMORY[0x1EEE9AC00](v26);
  v35 = v7;
  v36 = v8;
  v33 = v9;
  v34 = v10;
  v31 = v11;
  v32 = v12;
  v30 = v13;
  v19 = __dst;
  memcpy(__dst, v13, 0x2AuLL);
  sub_1B07F48B4(__dst, v29);
  sub_1B0813728(v27);
  v14 = v18[1];
  sub_1B07F4A10(v19);
  v15 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v16 = *(v15 + 20);
  v28 = sub_1B0814750(v26, v25, v20, v21, v22, v23, v24, v27, v14 + *(v15 + 24));
  sub_1B03D09B8(v27);
  return v28;
}

uint64_t sub_1B0814750(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a1;
  v34 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v43 = a9;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v26 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v21 - v26;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v21 - v27;
  v37 = 0;
  v36 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v21 - v36;
  v65 = v42;
  v63 = v10;
  v64 = v11;
  v61 = v12;
  v62 = v13;
  v59 = v14;
  v60 = v15;
  v58 = v16;
  v57 = v17;
  v56 = v9;
  sub_1B07F4C24(v9, &v21 - v36);
  v41 = type metadata accessor for MissingBodyDataRequest();
  v38 = *(v42 + *(v41 + 24));
  sub_1B03D08AC(v42, v45);
  v18 = sub_1B0817EB0(v38, v45);
  v19 = v45;
  v40 = v18;
  sub_1B03D09B8(v45);
  sub_1B07F4FB8(v39);
  v55 = v40;
  v50 = sub_1B0E452A8() < *(v42 + *(v41 + 24));
  v49 = 1;
  v54 = v50;
  sub_1B03D08AC(v43, v19);
  MessageIdentifierSet.ranges.getter(v48);
  sub_1B03D09B8(v45);
  v47 = sub_1B07D76A4();
  v51 = sub_1B0E45718();
  sub_1B07D772C(v48);
  v52 = v51 > 28;
  v53 = v52 & v49;
  v25 = v50 || v52;
  if ((v25 & 1) == 0)
  {
    return v40;
  }

  if (v50)
  {
    sub_1B08180D8(v42, v34, v28, v29, v30, v31, v32, v33, v43);
  }

  sub_1B03D08AC(v43, v45);
  MessageIdentifierSet.ranges.getter(v48);
  sub_1B03D09B8(v45);
  v24 = sub_1B0E45718();
  sub_1B07D772C(v48);
  if (v24 > 28)
  {
    sub_1B0816E60(v31, v32, v43);
  }

  sub_1B07F4C24(v35, v39);
  v21 = *(v42 + *(v41 + 24));
  sub_1B03D08AC(v42, v45);
  v22 = sub_1B0817EB0(v21, v45);
  sub_1B03D09B8(v45);
  sub_1B07F4FB8(v39);

  return v22;
}

void sub_1B0814C54()
{
  sub_1B0814CC4();
  v2 = *(_s19CachedMailboxValuesV15MissingBodyDataVMa() + 20);
  v0 = v1 + v2 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 28);
  sub_1B0814CC4();
}

void sub_1B0814CC4()
{
  if ((*(v0 + 9) & 1) == 0 && (*(v0 + 8) & 1) == 0)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 9) = 1;
  }
}

uint64_t sub_1B0814D38(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v37 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    v4 = sub_1B07FECD8(a2, a3, a4);
    if (sub_1B06E5C34(v4, 1))
    {
      sub_1B0815120(a1);
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    v27 = a2;
    v28 = a3;
    v29 = a4;
    sub_1B08151D4(a1, v38);
    memcpy(__dst, v38, sizeof(__dst));
    if ((__dst[2] & 0xFF00) != 0x200)
    {
      memcpy(v41, __dst, sizeof(v41));
      v10 = v41[0];
      v11 = v41[1];
      v12 = v41[2];
      v13 = BYTE1(v41[2]);
      v14 = v41[3];
      v15 = v41[4];
      sub_1B07F200C(a3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = v10;
      v25 = v11;
      LOBYTE(v26) = v12 & 1;
      HIBYTE(v26) = v13;
      sub_1B07F3D8C(v10, v11, v26, v14, v15, a2, a3, a4, v39);
      v16 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
      v6 = v20 + *(v16 + 20);
      sub_1B0815264(v39);
      sub_1B082085C(v39);
      v22 = a1;
      v7 = v20 + *(v16 + 24);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.insert(_:)(v23, &v22, v8);
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v9 = v20 + *(_s19CachedMailboxValuesV15MissingBodyDataVMa() + 20);
    if (sub_1B0815448(a1, a2, a3, a4))
    {
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  return sub_1B08155A8(a1);
}

BOOL sub_1B0815120(int a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B08151D4(a1, v12);
  v6 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v1 = v4 + *(v6 + 20);
  sub_1B08156D8(a1);
  v8 = a1;
  v7 = *(v6 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v9, &v8, v2);
}

uint64_t sub_1B08151D4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v13 = a1;
  v12 = v2;
  v10 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  result = KeyedSequence.removeElement(forKey:)(&v10, v3, v11);
  v5 = v11[1];
  v6 = v11[2];
  v7 = v11[3];
  v8 = v11[4];
  *a2 = v11[0];
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return result;
}

uint64_t sub_1B0815264(void *a1)
{
  v20 = 0;
  v19 = 0;
  v21 = a1;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  sub_1B07F200C(v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B07FECD8(v9, v10, v11);
  sub_1B07F2124(v10);

  if (!v12 || v12 == 1)
  {
    v19 = 0;
    v6 = 0;
  }

  else
  {
    v19 = 1;
    v6 = 1;
  }

  if (v6)
  {
    memcpy(__dst, a1, sizeof(__dst));
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    KeyedSequence.insert(_:)(__dst, v1);
  }

  else
  {
    v16 = sub_1B07CF88C();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    KeyedSequence.removeElement(forKey:)(&v16, v2, v17);
    memcpy(v18, v17, 0x40uLL);
    sub_1B08208B0(v18);
  }

  v14 = sub_1B07CF88C();
  v3 = v8 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.remove(_:)(&v14, v4, v15);
}

BOOL sub_1B0815448(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = 0;
  v19 = 0;
  v25 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v20 = a1;
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  v12 = KeyedSequence.update(key:_:)(&v20, sub_1B082091C, v13, v4);
  sub_1B07F2124(a3);

  v19 = v12;
  v17 = a1;
  v11 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.remove(_:)(&v17, v5, v18);
  return v12;
}

BOOL sub_1B08155A8(unsigned int a1)
{
  v12 = a1;
  v19 = 0;
  v18 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v8 - v8;
  v19 = MEMORY[0x1EEE9AC00](v12);
  v18 = v1;
  sub_1B08151D4(v19, v20);
  v2 = v10;
  v9 = &v17;
  v17 = v12;
  v3 = sub_1B041C1E8();
  MessageIdentifierSet.init(_:)(v9, &type metadata for UID, v3);
  v14 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v4 = v2 + *(v14 + 20);
  sub_1B0814528(v11);
  v5 = v10;
  sub_1B03D09B8(v11);
  v15 = v12;
  v6 = v5 + *(v14 + 24);
  return MessageIdentifierSet.insert(_:)(v16, &v15, v13);
}

uint64_t sub_1B08156D8(int a1)
{
  v10 = 0;
  v11 = a1;
  v8 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  KeyedSequence.removeElement(forKey:)(&v8, v1, v9);
  memcpy(__dst, v9, sizeof(__dst));
  sub_1B08208B0(__dst);
  v6 = a1;
  v5 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.remove(_:)(&v6, v2, v7);
}

uint64_t *sub_1B08157B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v132 = a8;
  v125 = a7;
  v124 = a6;
  v123 = a5;
  v122 = a4;
  v121 = a2;
  v127 = a1;
  v129 = a10;
  v111 = a10;
  v128 = a9;
  v112 = a9;
  v137 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v160[1] = 0;
  v160[0] = 0;
  v138 = 0;
  v158 = 0;
  v156 = 0;
  v153 = 0;
  v172 = a8;
  v113 = *(a8 - 8);
  v114 = v113;
  v115 = *(v113 + 64);
  v11 = MEMORY[0x1EEE9AC00](0);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v52 - v117;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v52 - v117;
  v171 = &v52 - v117;
  v119 = (*(*(sub_1B0E45D88() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v120 = &v52 - v119;
  v131 = sub_1B0E462B8();
  v126 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v130 = &v52 - v126;
  v170 = v127;
  v169 = v12;
  v168 = a3;
  v166 = v13;
  v167 = v14;
  v164 = v15;
  v165 = v16;
  v163 = sub_1B0E46A48();
  v161 = v137;
  v136 = 1;
  v162 = 1;
  MEMORY[0x1B27270C0](v128, v129);
  swift_getWitnessTable();
  v159[1] = sub_1B0E45038();
  v134 = sub_1B0E45358();
  v133 = v134;
  WitnessTable = swift_getWitnessTable();
  sub_1B0E45798();
  v139 = v137;
  v140 = v136;
  v141 = v138;
LABEL_2:
  v108 = v140;
  v109 = v139;
  for (i = v141; ; i = v57)
  {
    v107 = i;
    sub_1B0E46528();
    sub_1B0E46518();
    if ((*(v114 + 48))(v120, 1, v132) == 1)
    {
      break;
    }

    (*(v114 + 32))(v118, v120, v132);
    v158 = v122(v118);
    v157 = v158;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((MessageIdentifierSet.contains(_:)(&v157, v17) & 1) == 0)
    {
      v105 = v163;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v106 = sub_1B0E452A8();

      if (v106 >= v127)
      {
        if (v108)
        {
          v86 = v109;
          v87 = v108;
          v88 = v107;
        }

        else
        {
          v89 = v109;
          v85 = v109;
          v156 = v109;
          v27 = v124(v118);
          if (sub_1B07FF884(v85, v27))
          {
            v28 = v107;
            v81 = v163;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v154[0] = v81;
            v82 = &v52;
            MEMORY[0x1EEE9AC00](&v52);
            v29 = v124;
            v30 = v125;
            *(&v52 - 6) = v31;
            *(&v52 - 5) = v32;
            *(&v52 - 4) = v33;
            *(&v52 - 3) = v29;
            *(&v52 - 2) = v30;
            *(&v52 - 1) = v34;
            sub_1B0E456F8();
            v83 = v28;
            v84 = v82;
            if (v28)
            {
              goto LABEL_26;
            }

            sub_1B039E440(v154);
            v80 = v154[1];
            if (v155)
            {
              v76 = v109;
              v77 = v108;
              v78 = v83;
            }

            else
            {
              v79 = v80;
              v35 = v83;
              v65 = v80;
              v153 = v80;
              (*(v114 + 16))(v116, v118, v132);
              v66 = &v152;
              v67 = sub_1B0E45398();
              (*(v114 + 40))(v36, v116, v132);
              v67(v66, 0);
              v68 = v163;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v149[1] = v68;
              v70 = swift_getWitnessTable();
              MEMORY[0x1B27270C0](v149, v133);
              v69 = v149[0];

              v148 = v69;
              v71 = &v52;
              MEMORY[0x1EEE9AC00](&v52);
              v37 = v111;
              v38 = v124;
              v72 = &v52 - 8;
              *(&v52 - 6) = v39;
              *(&v52 - 5) = v40;
              *(&v52 - 4) = v37;
              *(&v52 - 3) = v38;
              *(&v52 - 2) = v41;
              v73 = sub_1B0E462B8();
              v147[1] = WitnessTable;
              v42 = swift_getWitnessTable();
              v44 = sub_1B039CA88(sub_1B08209C8, v72, v73, &unk_1F26C8A98, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
              v74 = v35;
              v75 = v44;
              if (v35)
              {
                goto LABEL_27;
              }

              v61 = v75;
              sub_1B039E440(&v148);
              v147[0] = v61;
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
              v62 = sub_1B0820A14();
              sub_1B0820A9C();
              v64 = v147;
              sub_1B0E45068();
              sub_1B039E440(v64);
              v161 = v150;
              v162 = v151;
              v76 = v150;
              v77 = v151;
              v78 = v74;
            }
          }

          else
          {
            v76 = v109;
            v77 = v108;
            v78 = v107;
          }

          v86 = v76;
          v87 = v77;
          v88 = v78;
        }

        v94 = v86;
        v95 = v87;
        v96 = v88;
        goto LABEL_21;
      }

      v18 = v107;
      (*(v114 + 16))(v116, v118, v132);
      sub_1B0E452E8();
      v97 = v163;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v144[1] = v97;
      v99 = swift_getWitnessTable();
      MEMORY[0x1B27270C0](v144, v133);
      v98 = v144[0];

      v143 = v98;
      v100 = &v52;
      MEMORY[0x1EEE9AC00](&v52);
      v19 = v111;
      v20 = v124;
      v101 = &v52 - 8;
      *(&v52 - 6) = v21;
      *(&v52 - 5) = v22;
      *(&v52 - 4) = v19;
      *(&v52 - 3) = v20;
      *(&v52 - 2) = v23;
      v102 = sub_1B0E462B8();
      v142[1] = WitnessTable;
      v24 = swift_getWitnessTable();
      v26 = sub_1B039CA88(sub_1B08209C8, v101, v102, &unk_1F26C8A98, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
      v103 = v18;
      v104 = v26;
      if (!v18)
      {
        v90 = v104;
        sub_1B039E440(&v143);
        v142[0] = v90;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
        v91 = sub_1B0820A14();
        sub_1B0820A9C();
        v93 = v142;
        sub_1B0E45068();
        sub_1B039E440(v93);
        v161 = v145;
        v162 = v146;
        v94 = v145;
        v95 = v146;
        v96 = v103;
LABEL_21:
        v60 = v96;
        v59 = v95;
        v58 = v94;
        (*(v114 + 8))(v118, v132);
        v139 = v58;
        v140 = v59;
        v141 = v60;
        goto LABEL_2;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v57 = v107;
    (*(v114 + 8))(v118, v132);
  }

  v45 = v107;
  sub_1B039E440(v160);
  v53 = v163;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v159[0] = v53;
  v54 = &v52;
  MEMORY[0x1EEE9AC00](&v52);
  v46 = v111;
  v47 = v122;
  v55 = &v52 - 8;
  *(&v52 - 6) = v48;
  *(&v52 - 5) = v49;
  *(&v52 - 4) = v46;
  *(&v52 - 3) = v47;
  *(&v52 - 2) = v50;
  swift_getWitnessTable();
  v56 = sub_1B0E44FF8();
  if (!v45)
  {
    v52 = v56;
    sub_1B039E440(v159);
    sub_1B039E440(&v163);
    return v52;
  }

LABEL_28:
  result = v54;
  __break(1u);
  return result;
}

uint64_t sub_1B0816394@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B08163D8(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_1B0820A9C();
  return sub_1B0E44958() & 1;
}

BOOL sub_1B081648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v16 = a6;
  v15 = a1;
  v14 = a2;
  v12 = a3;
  v13 = a4;
  v11 = a3();
  v10 = (a3)(a2);
  v6 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v11, &v10, &type metadata for UID, v6);
}

uint64_t sub_1B0816558(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = v2;
  v21 = *v2;
  v22 = v2[1];
  sub_1B0820B18(&v21, v17);
  v16[0] = v21;
  v16[1] = v22;
  KeyPath = swift_getKeyPath();

  v10 = swift_getKeyPath();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  v3 = sub_1B0820BAC();
  v12 = sub_1B08157B8(a1, a2, v16, sub_1B0820B9C, KeyPath, sub_1B0820BA4, v10, &unk_1F26C8718, v7, v3);

  sub_1B07F4A10(v16);
  v15 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  v4 = sub_1B0820C34();
  v6 = sub_1B039CA88(sub_1B0817E70, 0, v13, &type metadata for MessageToDownload, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(&v15);
  return v6;
}

BOOL sub_1B0816758(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    return 1;
  }

  else
  {
    return (a4 & 1) == 0 && ((a2 & 1) != 0 || a3 < a1);
  }
}

uint64_t sub_1B0816870(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v61 = 0;
  v35 = 0;
  v44 = type metadata accessor for MissingBodyDataRequest();
  v36 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v27 - v36;
  v6 = type metadata accessor for MessagesMissingAllBodyData();
  v38 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v27 - v38;
  v72 = &v27 - v38;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v52 = *(*(v46 - 8) + 64);
  v47 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v27 - v47;
  v49 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v27 - v49;
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v27 - v51;
  v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v27 - v54;
  v71 = &v27 - v54;
  v70 = v10;
  v68 = v11;
  v69 = v12;
  v67 = v13;
  v66 = v14;
  v65 = v5;
  v63 = *(v10 + *(v15 + 24));
  v62 = 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1B0E46B78();
  v56 = 2 * v64;
  if ((v64 * 2) >> 64 == (2 * v64) >> 63)
  {
    v61 = v56;
    v28 = __dst;
    memcpy(__dst, v34, 0x2AuLL);
    sub_1B07F48B4(__dst, v60);
    sub_1B0813728(v50);
    sub_1B07F4A10(v28);
    sub_1B03D08AC(v42, v48);
    MessageIdentifierSet.union(_:)(v48, v53);
    sub_1B03D09B8(v48);
    sub_1B03D09B8(v50);
    sub_1B03D08AC(v45, v50);
    MessageIdentifierSet.union(_:)(v50, v55);
    sub_1B03D09B8(v50);
    sub_1B03D09B8(v53);
    sub_1B03D08AC(v55, v53);
    sub_1B07D023C(v53, *(v45 + *(v44 + 20)), *(v45 + *(v44 + 20) + 8) & 1, v56, *(v45 + *(v44 + 28)), v37);
    v40(v37);
    sub_1B03D09B8(v37);
    v17 = v45 + *(v44 + 20);
    v31 = *v17;
    v32 = *(v17 + 8);
    v30 = *v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59 = v30;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    sub_1B0820C34();
    v18 = sub_1B0E45748();
    v19 = v34;
    v33 = v18;

    v20 = sub_1B0816FFC(v31, v32 & 1, v33 & 1);
    v21 = v43;
    v22 = v20;
    v23 = v39;
    v25 = v24;
    v26 = v42;
    v57 = v22;
    v58 = v25;
    v19[4] = v22;
    *(v19 + 40) = v25;
    *(v19 + 41) = HIBYTE(v25) & 1;
    sub_1B08170E0(v23, v26, v21);
    sub_1B0820CBC(v39);
    return sub_1B03D09B8(v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0816E60(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v15 = a2;
  v18 = a3;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v20 - 8) + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v18);
  v19 = &v10 - v11;
  v12 = v11;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v12;
  v16 = &v10 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v21 = &v10 - v14;
  v26 = &v10 - v14;
  v24 = v17;
  v25 = v7;
  v23 = v6;
  v22 = v8;
  sub_1B03D08AC(v6, v5);
  sub_1B0817328(v19);
  sub_1B03D09B8(v16);
  v17(v19);
  sub_1B03D09B8(v19);
  MessageIdentifierSet.formUnion(_:)(v21, v20);
  return sub_1B03D09B8(v21);
}

uint64_t sub_1B0816FFC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t sub_1B08170E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v20 = a2;
  v23 = a3;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v25);
  v21 = &v13 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v13 - v14;
  v15 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v27 = &v13 - v15;
  v32 = v8;
  v31 = v9;
  v30 = v10;
  v29 = v3;
  v16 = *v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = &v28;
  v28 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  sub_1B07F16DC();
  KeyedSequence.insert<A>(contentsOf:)(v19, v17, v18);
  v11 = v22;
  sub_1B039E440(v19);
  v24 = type metadata accessor for MessagesMissingAllBodyData();
  sub_1B03D08AC(v25 + *(v24 + 20), v11);
  sub_1B03D08AC(v25 + *(v24 + 24), v21);
  MessageIdentifierSet.union(_:)(v21, v27);
  sub_1B03D09B8(v21);
  sub_1B03D09B8(v22);
  MessageIdentifierSet.formUnion(_:)(v27, v26);
  sub_1B03D09B8(v27);
  sub_1B03D08AC(v25 + *(v24 + 24), v27);
  MessageIdentifierSet.formUnion(_:)(v27, v26);
  return sub_1B03D09B8(v27);
}

uint64_t *sub_1B0817328@<X0>(uint64_t a1@<X8>)
{
  v66 = v126;
  v59 = a1;
  v60 = sub_1B081FCD4;
  v61 = sub_1B081FE34;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v70 = 0;
  v122 = 0;
  v120 = 0;
  v118 = 0;
  v106 = 0;
  v102 = 0;
  v98 = 0;
  v88 = 0;
  v89 = 0;
  v81 = 0;
  v73 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v62 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v9 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v9 - v64;
  v130 = &v9 - v64;
  v129 = v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E0, &qword_1B0E9CCE0);
  v128 = sub_1B0E46A48();
  *v66 = 0;
  v127 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v67);
  sub_1B07D76A4();
  sub_1B0E45798();
  for (i = v70; ; i = v57)
  {
    v57 = i;
    sub_1B0E46518();
    v58 = v124[5];
    if (v125)
    {
      break;
    }

    v56 = v58;
    v52 = HIDWORD(v58);
    v53 = v58;
    v120 = v58;
    v54 = v128;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v55 = sub_1B0E452A8();

    if (v55 >= 1000)
    {
      break;
    }

    v51 = *v66;
    if (v127)
    {
      v119 = __PAIR64__(v52, v53);
      sub_1B081FC84(v126, __SPAIR64__(v52, v53));
    }

    else
    {
      v50 = v51;
      v44 = HIDWORD(v51);
      v45 = v51;
      v118 = v51;
      v117 = v51;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      MessageIdentifierRange.upperBound.getter(v46, &v116);
      v48 = &v115;
      v115 = v116;
      v49 = sub_1B041C1E8();
      v47 = &type metadata for UID;
      static MessageIdentifier.max.getter(&type metadata for UID, v49);
      v114[0] = v114[1];
      if (static MessageIdentifier.< infix(_:_:)(v48, v114, v47, v49))
      {
        v42 = &type metadata for UID;
        static MessageIdentifier.min.getter(&type metadata for UID, v49);
        v43 = v112;
        v112[0] = v112[1];
        v111[1] = v53;
        v111[2] = v52;
        MessageIdentifierRange.lowerBound.getter(v46, v111);
        v110 = v111[0];
        if (static MessageIdentifier.< infix(_:_:)(v43, &v110, v42, v49))
        {
          v108[1] = v45;
          v108[2] = v44;
          MessageIdentifierRange.upperBound.getter(v46, v108);
          v107 = v108[0];
          v35 = &type metadata for UID;
          MessageIdentifier.advanced(by:)(1, &type metadata for UID, v49, &v109);
          v36 = v109;
          v106 = v109;
          v104[1] = v53;
          v104[2] = v52;
          MessageIdentifierRange.lowerBound.getter(v46, v104);
          v103 = v104[0];
          MessageIdentifier.advanced(by:)(-1, v35, v49, &v105);
          v102 = v105;
          v100 = v36;
          v99 = v105;
          static MessageIdentifier.... infix(_:_:)(&v100, &v99, v35, v49, &v101);
          v37 = v101;
          v98 = v101;
          v38 = v128;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v97 = v38;
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
          sub_1B0820F9C();
          sub_1B0E44888();
          v40 = v94;
          v41 = v95;
          if (v96)
          {
          }

          else
          {
            v33 = v40;
            v34 = v41;
            v31 = v41;
            v30 = v40;
            v88 = v40;
            v89 = v41;

            v87 = v31;
            MessageIdentifierRange.upperBound.getter(v46, &v86);
            v32 = &v85;
            v85 = v86;
            v84 = v37;
            MessageIdentifierRange.lowerBound.getter(v46, &v83);
            v82 = v83;
            if (MessageIdentifier.distance(to:)(&v82, &type metadata for UID, v49) <= 3)
            {
              v25 = v128;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v24 = sub_1B0E452A8();

              v26 = sub_1B0E452C8();

              v81 = v26;
              v79 = v31;
              MessageIdentifierRange.lowerBound.getter(v46, &v78);
              v27 = &v77;
              v77 = v78;
              v76 = v37;
              MessageIdentifierRange.upperBound.getter(v46, &v75);
              v74 = v75;
              static MessageIdentifier.... infix(_:_:)(v27, &v74, &type metadata for UID, v49, &v80);
              v28 = v80;
              v73 = v80;
              v72[4] = v37;
              result = MessageIdentifierRange.count.getter(v46);
              v29 = result + v30;
              if (__OFADD__(v30, result))
              {
                goto LABEL_26;
              }

              v23 = v72;
              v4 = sub_1B0E45398();
              v5 = v28;
              *v6 = v29;
              v6[1] = v5;
              v4();
              goto LABEL_17;
            }
          }

          v93 = v37;
          v91 = MessageIdentifierRange.count.getter(v46);
          v92 = v37;
          sub_1B0E452E8();
LABEL_17:
          v90 = __PAIR64__(v52, v53);
          sub_1B081FC84(v126, __SPAIR64__(v52, v53));
          continue;
        }
      }

      v113 = __PAIR64__(v52, v53);
      sub_1B081FC84(v126, __SPAIR64__(v52, v53));
    }
  }

  v7 = v57;
  sub_1B07D772C(v68);
  v19 = v128;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v124[0] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
  sub_1B0820D7C();
  result = sub_1B0E44FF8();
  v21 = v7;
  v22 = result;
  if (v7)
  {
    __break(1u);
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v22;
  sub_1B039E440(v124);
  v123[4] = v14;
  sub_1B0820E04();
  sub_1B0E45738();
  v123[0] = v124[1];
  v123[1] = v124[2];
  v123[2] = v124[3];
  v123[3] = v124[4];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F0, &unk_1B0E9CCF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v8 = sub_1B0820E8C();
  v18 = sub_1B039CA88(v61, 0, v15, v16, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v17);
  v13 = v18;
  sub_1B03FD360(v123);
  v122 = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = &v121;
  v121 = v13;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
  v11 = sub_1B041C1E8();
  sub_1B0820F14();
  MessageIdentifierSet.init<A>(_:)(v12, &type metadata for UID, v10);

  return sub_1B039E440(&v128);
}

uint64_t sub_1B0817D00(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);

  swift_getAtKeyPath();

  return v8;
}

uint64_t sub_1B0817DB8(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);

  swift_getAtKeyPath();

  return v8;
}

uint64_t sub_1B0817E70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 17);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = v5;
  return result;
}

uint64_t sub_1B0817EB0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = a2;
  v21 = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v20[3] = v10;
  KeyPath = swift_getKeyPath();

  v14 = swift_getKeyPath();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  v3 = sub_1B0821034();
  v16 = sub_1B08157B8(a1, a2, v20, sub_1B0821024, KeyPath, sub_1B082102C, v14, &unk_1F26C87A0, v11, v3);

  sub_1B07F4A10(v20);
  v19 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2500, &qword_1B0E9CD50);
  v4 = sub_1B08210BC();
  v6 = sub_1B039CA88(sub_1B0817E70, 0, v17, &type metadata for MessageToDownload, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v18);
  sub_1B039E440(&v19);
  return v6;
}

uint64_t sub_1B08180D8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v59 = a3;
  v71 = a2;
  v66 = a1;
  v65 = a9;
  v58 = a9;
  v73 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v75 = 0;
  v82 = 0;
  v79 = 0;
  v67 = type metadata accessor for MissingBodyDataRequest();
  v68 = *(*(v67 - 1) + 64);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v32 - v70;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v32 - v70;
  v101 = &v32 - v70;
  v100 = v11;
  v98 = v71;
  v99 = v12;
  v96 = v13;
  v97 = v14;
  v94 = v15;
  v95 = v16;
  v93 = v17;
  v92 = v18;
  v91 = v9;
  sub_1B07F1114(v11, &v32 - v70);
  v86 = v73;
  v87 = 2000;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  for (i = v75; ; i = v42)
  {
    v56 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    sub_1B0E46518();
    if (v85)
    {
      v33 = v56;
      return sub_1B03D09B8(v72);
    }

    if (*(v72 + v67[7]) < 1)
    {
      v33 = v56;
      return sub_1B03D09B8(v72);
    }

    v19 = v56;
    sub_1B081886C(v72, v71, v59, v64, v58);
    sub_1B07F1114(v72, v69);
    sub_1B08194BC(v69, v60, v61, v58);
    sub_1B03D09B8(v69);
    v48 = *v57;
    v49 = v57[1];
    v44 = v49;
    v50 = v57[2];
    v45 = v50;
    v51 = v57[3];
    v46 = v51;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v83 = 0;
    v53 = &v32;
    MEMORY[0x1EEE9AC00](&v32);
    v47 = &v30;
    v52 = sub_1B08207A0();
    v31 = v52;
    KeyedSequence.reduce<A>(into:_:)(&v83, sub_1B0821144, v47, v51, &v84, &unk_1F26C87A0, MEMORY[0x1E69E6530]);
    v54 = v19;
    v55 = v53;
    if (v19)
    {
      break;
    }

    v82 = v84;
    if (v84 >= *(v72 + v67[6]))
    {
      v33 = v54;
      return sub_1B03D09B8(v72);
    }

    v20 = v54;
    v37 = v57[4];
    v38 = v57[5];
    v34 = v38;
    v39 = v57[6];
    v35 = v39;
    v40 = v57[7];
    v36 = v40;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v80 = 0;
    v41 = &v32;
    MEMORY[0x1EEE9AC00](&v32);
    v31 = v21;
    KeyedSequence.reduce<A>(into:_:)(&v80, sub_1B082116C, &v30, v22, &v81, &unk_1F26C0960, MEMORY[0x1E69E6530]);
    v42 = v20;
    v43 = v41;
    if (v20)
    {
      goto LABEL_16;
    }

    v79 = v81;
    if (v81 < 1)
    {
      goto LABEL_11;
    }

    v23 = v57 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 28);
    v24 = *v23;
    v25 = v23[8];
    LOBYTE(v23) = v23[9];
    v26 = v72 + v67[5];
    v27 = *v26;
    v28 = *(v26 + 8);
    v77 = v24;
    LOBYTE(v78) = v25;
    HIBYTE(v78) = v23;
    if (!sub_1B0816758(v27, v28, v24, v78))
    {
LABEL_11:
      v33 = v42;
      return sub_1B03D09B8(v72);
    }
  }

  __break(1u);
LABEL_16:
  result = v43;
  __break(1u);
  return result;
}

uint64_t sub_1B081886C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a1;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v90 = a5;
  v76 = sub_1B07E07B4;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v119 = 0;
  v77 = 0;
  v80 = 0;
  v91 = type metadata accessor for MissingBodyDataRequest();
  v78 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v45 - v78;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  v82 = (*(*(FragmentedMessagesResult - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v45 - v82;
  v130 = &v45 - v82;
  v84 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v45 - v85;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v107 = *(*(v93 - 8) + 64);
  v94 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v92);
  v95 = &v45 - v94;
  v96 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v45 - v96;
  v98 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v45 - v98;
  v100 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v101 = &v45 - v100;
  v102 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v45 - v102;
  v104 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v45 - v104;
  v106 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v108 = &v45 - v106;
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v110 = &v45 - v109;
  v129 = &v45 - v109;
  v128 = v13;
  v126 = v14;
  v127 = v15;
  v125 = v16;
  v124 = v17;
  v123 = v5;
  v121 = *(v13 + *(v18 + 24));
  v120 = 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1B0E46B78();
  v111 = 2 * v122;
  if ((v122 * 2) >> 64 == (2 * v122) >> 63)
  {
    v119 = v111;
    for (i = v77; ; i = v64)
    {
      v73 = i;
      if (*(v92 + *(v91 + 28)) <= 0)
      {
        v72 = 0;
      }

      else
      {
        v67 = *(v75 + 4);
        v68 = *(v75 + 5);
        v69 = *(v75 + 6);
        v70 = *(v75 + 7);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = sub_1B08207A0();
        v71 = KeyedSequence.count.getter(v67, v68, v69, v70, &type metadata for UID, &unk_1F26C0960, v20);

        result = v71;
        v72 = v71 < v111;
      }

      if (v72)
      {
        v21 = &v75[*(v84 + 28)];
        v22 = *v21;
        v23 = v21[8];
        LOBYTE(v21) = v21[9];
        v24 = v92 + *(v91 + 20);
        v25 = *v24;
        LOBYTE(v24) = *(v24 + 8);
        v112 = v22;
        LOBYTE(v113) = v23;
        HIBYTE(v113) = v21 & 1;
        result = sub_1B0816758(v25, v24 & 1, v22, v113);
        v66 = result;
      }

      else
      {
        v66 = 0;
      }

      if ((v66 & 1) == 0)
      {
        break;
      }

      v26 = v73;
      sub_1B07F4C24(v75, v86);
      sub_1B08138C0(v99);
      sub_1B07F4FB8(v86);
      sub_1B03D08AC(v90, v97);
      MessageIdentifierSet.union(_:)(v97, v101);
      sub_1B03D09B8(v97);
      sub_1B03D09B8(v99);
      MessageIdentifierSet.union(_:)(v89, v103);
      sub_1B03D09B8(v101);
      v58 = *(v75 + 4);
      v59 = *(v75 + 5);
      v60 = *(v75 + 6);
      v61 = *(v75 + 7);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v118[0] = v58;
      v118[1] = v59;
      v118[2] = v60;
      v118[3] = v61;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
      v27 = sub_1B0821194();
      result = sub_1B07CAF78(v76, 0, v62, &type metadata for UID, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v63);
      v64 = v26;
      v65 = result;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }

      v50 = v65;
      sub_1B07F4A10(v118);
      v53 = &v117;
      v117 = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
      v52 = sub_1B074B97C();
      sub_1B07F193C();
      sub_1B0E46098();
      MessageIdentifierSet.union(_:)(v95, v105);
      sub_1B03D09B8(v95);
      sub_1B03D09B8(v103);
      sub_1B03D08AC(v92, v101);
      MessageIdentifierSet.union(_:)(v101, v108);
      sub_1B03D09B8(v101);
      sub_1B03D09B8(v105);
      sub_1B03D08AC(&v75[*(v84 + 24)], v101);
      MessageIdentifierSet.subtracting(_:)(v101, v110);
      sub_1B03D09B8(v101);
      sub_1B03D09B8(v108);
      sub_1B03D08AC(v110, v101);
      v28 = v92 + *(v91 + 20);
      v54 = *v28;
      v55 = *(v28 + 8);
      v29 = sub_1B07D0230();
      sub_1B07D023C(v101, v54, v55 & 1, v111, v29, v79);
      v87(v79);
      result = sub_1B03D09B8(v79);
      v30 = *&v83[*(FragmentedMessagesResult + 24)];
      v56 = (v92 + *(v91 + 28));
      v31 = __OFSUB__(*v56, v30);
      v57 = *v56 - v30;
      v32 = v31;
      if (v32)
      {
        goto LABEL_19;
      }

      v33 = v83;
      v34 = v92;
      v35 = v91;
      *v56 = v57;
      v36 = v34 + *(v35 + 20);
      v47 = *v36;
      v48 = *(v36 + 8);
      v46 = *v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v116 = v46;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
      sub_1B07F18B4();
      v37 = sub_1B0E45748();
      v38 = v75;
      v49 = v37;

      v39 = sub_1B0816FFC(v47, v48 & 1, v49 & 1);
      v40 = v83;
      v42 = v41;
      v43 = v90;
      v114 = v39;
      v115 = v42;
      v44 = &v38[*(v84 + 28)];
      *v44 = v39;
      v44[8] = v42;
      v44[9] = HIBYTE(v42) & 1;
      sub_1B081A03C(v40, v43);
      sub_1B082121C(v83);
      sub_1B03D09B8(v110);
      result = v64;
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08194BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v107 = &v151;
  v114 = &v135;
  v113 = a4;
  v112 = a3;
  v111 = a2;
  v115 = a1;
  v109 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v110 = 0;
  memset(&v142[7], 0, 24);
  memset(v142, 0, 48);
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0u;
  v135 = 0u;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v118 = *(*(v116 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v115);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v47 - v120;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v119 = &v47 - v120;
  *(v7 + 304) = &v47 - v120;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v121 = &v47 - v120;
  v9[37] = v8;
  v9[35] = v10;
  v9[36] = v11;
  v9[34] = v12;
  v9[33] = v4;
  v122 = v4[4];
  v124 = v4[5];
  v125 = v4[6];
  v126 = v4[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v123 = sub_1B08207A0();
  v127 = KeyedSequence.isEmpty.getter();

  if (v127)
  {
    return v110;
  }

  v13 = v110;
  v101 = *v108;
  v102 = v108[1];
  v98 = v102;
  v103 = v108[2];
  v99 = v103;
  v104 = v108[3];
  v100 = v104;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v114 + 31) = 0;
  v105 = &v47;
  MEMORY[0x1EEE9AC00](&v47);
  v46 = v14;
  KeyedSequence.reduce<A>(into:_:)(v143, sub_1B0821144, &v45, v15, v144, &unk_1F26C87A0, MEMORY[0x1E69E6530]);
  v106 = v13;
  if (v13)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = v70;
    __break(1u);
    goto LABEL_32;
  }

  v96 = *(v114 + 32);
  *(v114 + 29) = v96;
  result = type metadata accessor for MissingBodyDataRequest();
  v17 = *(v115 + *(result + 24));
  v18 = v17 - v96;
  v19 = __OFSUB__(v17, v96);
  v97 = v18;
  if (!v19)
  {
    v20 = v97;
    *(v114 + 28) = v97;
    if (v20 >= 1)
    {
      result = 2 * v97;
      v21 = __OFADD__(v97, v97);
      v95 = 2 * v97;
      if (v21)
      {
        goto LABEL_33;
      }

      v22 = v106;
      sub_1B03D08AC(v115, v121);
      v90 = sub_1B081A46C(v95, v121);
      v89 = v90;
      sub_1B03D09B8(v121);
      v23 = v114;
      v24 = v90;
      *(v114 + 27) = v90;
      *(v23 + 26) = v24;
      v25 = sub_1B041C1E8();
      MessageIdentifierSet.init()(&type metadata for UID, v25);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
      v91 = v92;
      v93 = sub_1B07F19EC();
      sub_1B0E44FD8();
      v94 = v22;
      if (!v22)
      {
        v87 = v111(v119);
        v86 = v87;
        *(v114 + 25) = v87;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B043CF70();
        sub_1B0E445C8();
        v26 = v114;
        v27 = v94;
        v28 = *v107;
        v29 = *(v107 + 1);
        *(v114 + 24) = *(v107 + 4);
        v26[11] = v29;
        v26[10] = v28;
        for (i = v27; ; i = v49)
        {
          v81 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2510, &qword_1B0E9CD60);
          sub_1B0E446D8();
          v82 = *(v114 + 16);
          v83 = *(v114 + 17);
          v84 = *(v114 + 18);
          v85 = *(v114 + 19);
          if (v85 == 1)
          {
            break;
          }

          v77 = v82;
          v78 = v83;
          v79 = v84;
          v80 = v85;
          v30 = v114;
          v31 = v83;
          v32 = v84;
          v33 = v85;
          v72 = v85;
          v73 = v84;
          v74 = v83;
          v75 = v82;
          v141 = v82;
          *(v114 + 12) = v83;
          *(v30 + 13) = v32;
          *(v30 + 14) = v33;
          v76 = sub_1B07FECD8(v31, v32, v33);
          if (!v76 || v76 == 1)
          {
            v34 = v81;
            HIDWORD(v129) = v75;
            v35 = v108 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
            MessageIdentifierSet.remove(_:)(&v129 + 4, v116, &v130);
            v128 = v75;
            MessageIdentifierSet.insert(_:)(&v129, &v128, v116);
            v71 = v34;
          }

          else
          {
            v36 = v81;
            *(v114 + 6) = v89;
            v68 = &v47;
            MEMORY[0x1EEE9AC00](&v47);
            LODWORD(v46) = v37;
            sub_1B0E44FB8();
            v69 = v36;
            v70 = v68;
            if (v36)
            {
              goto LABEL_31;
            }

            v63 = *(v114 + 7);
            v64 = *(v114 + 8);
            v65 = *(v114 + 9);
            v66 = *(v114 + 10);
            v67 = *(v114 + 11);
            if ((v65 & 0xFF00) != 0x200)
            {
              v57 = v63;
              v58 = v64;
              v59 = v65;
              v60 = v65 >> 8;
              v61 = v66;
              v62 = v67;
              v38 = v73;
              v39 = v114;
              v40 = v67;
              v55 = v67;
              v54 = v66;
              v51 = v64;
              v50 = v63;
              LODWORD(v135) = v63;
              *(&v135 + 1) = v64;
              v52 = v65 & 1;
              LOWORD(v136) = v65 & 0x101;
              v53 = BYTE1(v65) & 1;
              *(v114 + 3) = v66;
              *(v39 + 4) = v40;
              sub_1B07F200C(v38);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v132 = v50;
              v133 = v51;
              LOBYTE(v134) = v52;
              HIBYTE(v134) = v53;
              sub_1B07F3D8C(v50, v51, v134, v54, v55, v74, v73, v72, v152);
              v41 = *(v107 + 40);
              v42 = *(v107 + 56);
              v43 = *(v107 + 72);
              v131[3] = *(v107 + 88);
              v131[2] = v43;
              v131[1] = v42;
              v131[0] = v41;
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
              v56 = v131;
              KeyedSequence.insert(_:)(v131, v44);
              sub_1B082085C(v56);
            }

            v71 = v69;
          }

          v49 = v71;
          sub_1B07F2124(v73);
        }

        sub_1B06B91B0(v142);

        sub_1B03D09B8(v119);

        return v81;
      }

      goto LABEL_30;
    }

    return v106;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0819DAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v12 = a3;
  v18 = 0;
  v17 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v7 - v11;
  v18 = MEMORY[0x1EEE9AC00](v10);
  memcpy(__dst, v3, sizeof(__dst));
  v17 = v12;
  sub_1B03D08AC(v12, &v7 - v11);
  v16 = sub_1B07CF88C();
  v15 = MessageIdentifierSet.contains(_:)(&v16, v13);
  sub_1B03D09B8(v14);
  result = v15;
  if ((v15 & 1) == 0)
  {
    v5 = __OFADD__(*v10, 1);
    v8 = *v10 + 1;
    v6 = v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *v10 = v8;
    }
  }

  return result;
}

uint64_t sub_1B0819EF4(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7[2] = a2;
  v10 = a3;
  v16 = 0;
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v7 - v9;
  v16 = MEMORY[0x1EEE9AC00](v8);
  memcpy(__dst, v3, sizeof(__dst));
  v15 = v10;
  sub_1B03D08AC(v10, v7 - v9);
  v14 = sub_1B07CF88C();
  v13 = MessageIdentifierSet.contains(_:)(&v14, v11);
  sub_1B03D09B8(v12);
  result = v13;
  if ((v13 & 1) == 0)
  {
    v5 = __OFADD__(*v8, 1);
    v7[0] = *v8 + 1;
    v6 = v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *v8 = v7[0];
    }
  }

  return result;
}

uint64_t sub_1B081A03C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v26 = a2;
  v34 = 0;
  v38 = sub_1B081A820;
  v25 = sub_1B081A88C;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v43 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v27);
  v30 = v14 - v29;
  v31 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v32 = v14 - v31;
  v49 = v14 - v31;
  v48 = v5;
  v47 = v6;
  v46 = v2;
  v33 = *v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v45 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2518, &qword_1B0E9CD68);
  v7 = sub_1B07F18B4();
  v8 = sub_1B039CA88(v38, v34, v35, v36, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v37);
  v39 = 0;
  v40 = v8;
  v19 = v8;
  sub_1B039E440(&v45);
  v22 = &v44;
  v44 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2520, &qword_1B0E9CD70);
  v21 = sub_1B043CF70();
  sub_1B08212D0();
  v23 = sub_1B0E44718();
  v18 = v23;
  v43 = v23;
  v14[5] = &type metadata for UID;
  v14[6] = &unk_1F26C0960;
  v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[3] = &v42;
  v42 = v9;
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2528, &qword_1B0E9CD78);
  v14[2] = sub_1B074B97C();
  sub_1B0821358();
  sub_1B0E46098();
  v14[4] = 0;
  v10 = v24 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  MessageIdentifierSet.subtract(_:)();
  MessageIdentifierSet.formUnion(_:)(v32, v28);
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult();
  sub_1B03D08AC(v27 + *(FragmentedMessagesResult + 20), v30);
  MessageIdentifierSet.formUnion(_:)(v30, v28);
  sub_1B03D09B8(v30);
  v12 = sub_1B0E446B8();
  v17 = &v41;
  v41 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2530, &qword_1B0E9CD80);
  sub_1B08213E0();
  KeyedSequence.insert<A>(contentsOf:)(v17, v15, v16);
  sub_1B039E440(v17);
  sub_1B03D09B8(v32);
}

uint64_t *sub_1B081A46C(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v19 = 0;
  v32 = a1;
  v31 = a2;
  v30 = v2;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29[0] = v6;
  v29[1] = v7;
  v29[2] = v8;
  v29[3] = v9;
  KeyPath = swift_getKeyPath();

  v13 = swift_getKeyPath();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
  v3 = sub_1B0821194();
  v15 = sub_1B08157B8(a1, a2, v29, sub_1B0820B9C, KeyPath, sub_1B0820BA4, v13, &unk_1F26C0960, v10, v3);

  sub_1B07F4A10(v29);
  v28 = v15;
  v26[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v4 = sub_1B07F19EC();
  MEMORY[0x1B27270C0](v26, v16, v4);
  v25 = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2538, &qword_1B0E9CDD0);
  sub_1B0821468();
  sub_1B0E46728();
  sub_1B039E440(&v25);
  v22 = v26[2];
  v23 = v26[3];
  v24 = v26[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2540, &qword_1B0E9CDD8);
  sub_1B0E464B8();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2548, &qword_1B0E9CDE0);
    sub_1B0E464C8();
    if (v21)
    {
      break;
    }

    v19 = v20;
    v17 = v20;
    KeyedSequence.removeElement(forKey:)(&v17, v10, v18);
  }

  sub_1B07F2650(v27);
  return v15;
}

uint64_t sub_1B081A780(const void *a1)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B07CF88C();
  sub_1B0714E4C();
  return sub_1B0E45ED8() & 1;
}

void *sub_1B081A820@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  *a2 = sub_1B07CF88C();
  return memcpy(a2 + 2, __dst, 0x28uLL);
}

uint64_t sub_1B081A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v17[5], 0, 0x28uLL);
  memset(v17, 0, 0x28uLL);
  result = a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  LODWORD(v17[5]) = *a1;
  v17[6] = v4;
  LOBYTE(v17[7]) = v5 & 1;
  BYTE1(v17[7]) = v6;
  v17[8] = v7;
  v17[9] = v8;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  LODWORD(v17[0]) = *a2;
  *a3 = v17[0];
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 17) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_1B081A980(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = a1[6];
  v10 = a1[7];
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  sub_1B07F2124(v4);
}

uint64_t sub_1B081AA14@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1B0824F18(a1, v4);
  memcpy(__dst, v4, sizeof(__dst));
  *a2 = sub_1B07CF88C();
  return sub_1B082085C(__dst);
}

uint64_t sub_1B081AA7C(const void *a1)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0824F18(__dst, v4);

  memcpy(v3, __dst, sizeof(v3));
  swift_getAtKeyPath();
  sub_1B082085C(v3);

  return v2;
}

uint64_t sub_1B081AB1C(const void *a1)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0824F18(__dst, v4);

  memcpy(v3, __dst, sizeof(v3));
  swift_getAtKeyPath();
  sub_1B082085C(v3);

  return v2;
}

BOOL sub_1B081ABBC(uint64_t a1, const void *a2)
{
  v6 = a1;
  memcpy(__dst, a2, sizeof(__dst));
  v4 = sub_1B07CF88C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v5, &v4, v2);
}

uint64_t sub_1B081AC40(uint64_t a1, __int16 a2)
{
  v8 = 0;
  v12 = a1;
  v13 = a2;
  v9 = a1;
  v10 = a2;
  v11 = HIBYTE(a2) & 1;
  if (a2 & 0x100) != 0 || (a2)
  {
    return sub_1B0E44838();
  }

  v8 = a1;
  v7[0] = sub_1B0E46A28();
  v7[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v7);
  return sub_1B0E44C88();
}

uint64_t sub_1B081AE1C()
{
  LOBYTE(v2) = *(v0 + 8);
  HIBYTE(v2) = *(v0 + 9) & 1;
  return sub_1B081AC40(*v0, v2);
}

uint64_t sub_1B081AE64()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1B081AE90(uint64_t a1)
{

  v2 = *v1;
  *v1 = a1;
}

void *sub_1B081AF04(void *a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s19CachedMailboxValuesVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B07F3F74(v2, v5 - v5[0]);
  v3 = _s5CacheV5EntryVMa();
  sub_1B07F436C(v6, v1 + *(v3 + 20));
  return sub_1B07F45A0(v7);
}

uint64_t *sub_1B081AFAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v11 = a1;
  v14 = 0;
  v13 = 0;
  v5 = 0;
  v6 = (*(*(_s19CachedMailboxValuesVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = &v5 - v6;
  v8 = _s5CacheV5EntryVMa();
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v12 = &v5 - v7;
  v14 = &v5 - v7;
  v13 = v2;

  v3 = v9;
  *v12 = v11;
  sub_1B07F46DC(v3);
  sub_1B08203F4(v9, &v12[*(v8 + 20)]);
  sub_1B08215D8(v12, v10);

  return sub_1B082189C(v12);
}

uint64_t *sub_1B081B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v30 = a1;
  v29 = a2;
  v27 = a3;
  v25 = a4;
  v26 = a5;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  v45 = a6;
  v8 = v28;
  v31 = _s5CacheV5EntryVMa();
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = (v18 - v32);
  v44 = *MEMORY[0x1EEE9AC00](v30);
  v42 = v9;
  v43 = v10;
  v40 = v11;
  v41 = v12;
  v39 = v7;
  v38 = v44;
  result = sub_1B081B384(&v38, v9, v10);
  v34 = v8;
  v35 = result;
  v36 = v8;
  if (!v8)
  {
    v18[2] = v35;
    v37 = v35;
    v14 = *v24;
    sub_1B0E453A8();
    v19 = *v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    v15 = sub_1B0E45398();
    v16 = v34;
    v20 = v15;
    v25(v19, v17 + *(v31 + 20));
    v21 = v16;
    v22 = v16;
    if (v16)
    {
      v18[0] = v22;
    }

    v20();

    return sub_1B082189C(v33);
  }

  return result;
}

uint64_t sub_1B081B384(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v54 = sub_1B08219F8;
  v38 = "Fatal error";
  v39 = "Range requires lowerBound <= upperBound";
  v40 = "Swift/Range.swift";
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v60 = 0;
  v58 = 0;
  v44 = _s5CacheV5EntryVMa();
  v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v43);
  v46 = (v15 - v45);
  v70 = v15 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = (v15 - v47);
  v50 = *v6;
  v69 = v50;
  v67 = v7;
  v68 = v8;
  v66 = v3;
  v49 = *v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64[0] = v49;
  v51 = &v56;
  v57 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821A24();
  v9 = v53;
  sub_1B0E456F8();
  v55 = v9;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1B039E440(v64);
    v36 = v64[1];
    if ((v65 & 1) == 0)
    {
      v35 = v36;
      v32 = v36;
      v58 = v36;
      v10 = *v37;
      sub_1B0E453A8();
      v33 = *v48;

      v34 = sub_1B081BAC0();

      sub_1B082189C(v48);
      if (v34)
      {
        v30 = v32;
        v31 = v55;
        return v30;
      }

      sub_1B0E45308();
      sub_1B082189C(v48);
    }

    v11 = v55;
    v63 = v50;
    v12 = v42(&v63);
    v27 = v11;
    v28 = v12;
    v29 = v11;
    if (!v11)
    {
      sub_1B081AFAC(v28, v46);
      v25 = *v37;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = sub_1B0E452A8();

      if (v26 >= 5)
      {
        v19 = *v37;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = sub_1B0E452A8();

        if (v20 < 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v15[3] = v61;
        v61[0] = 0;
        v61[1] = v20;
        v15[1] = v37 + 1;
        v15[2] = sub_1B039A4F8();
        sub_1B0714728();
        sub_1B0E46588();
        v18 = v62;
        v60 = v62;
        sub_1B08215D8(v46, v48);
        v17 = &v59;
        v16 = sub_1B0E45398();
        sub_1B0821AAC(v48, v13);
        v16();
        sub_1B082189C(v46);
        v30 = v18;
        v31 = v27;
      }

      else
      {
        sub_1B08215D8(v46, v48);
        sub_1B0E452E8();
        v23 = *v37;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = *v37;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = sub_1B0E452A8();

        v24 = sub_1B0E452C8();

        sub_1B082189C(v46);
        v30 = v24;
        v31 = v27;
      }

      return v30;
    }
  }

  return v15[0];
}

BOOL sub_1B081BA20(uint64_t *a1, id a2)
{
  v3 = *a1;

  v4 = *(v3 + 16);
  MEMORY[0x1E69E5928](v4);

  v6 = [v4 databaseID];
  MEMORY[0x1E69E5920](v4);
  return v6 == a2;
}

uint64_t sub_1B081BAC0()
{
  v43 = 0;
  v1 = _s18MailboxPersistenceVMa();
  v33 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v6 - v33;
  v43 = v0;
  v35 = *(v0 + 16);
  MEMORY[0x1E69E5928](v35);
  v37 = [v35 isValid];
  MEMORY[0x1E69E5920](v35);

  if ((v37 & 1) == 0)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v31 = *(v36 + 16);
  MEMORY[0x1E69E5928](v31);
  v32 = [v31 account];
  MEMORY[0x1E69E5920](v31);
  if (v32)
  {
    v30 = v32;
    v28 = v32;
    v29 = [v32 identifier];
    if (v29)
    {
      v27 = v29;
      v20 = v29;
      v21 = sub_1B0E44AD8();
      v22 = v2;
      MEMORY[0x1E69E5920](v20);
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v19 = v24;
    v18 = v23;
    MEMORY[0x1E69E5920](v28);
    v25 = v18;
    v26 = v19;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v3 = v34;
  v16 = v26;
  v15 = v25;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03F4D78(v36 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v3);
  v14 = sub_1B03F4EB8();
  v17 = v4;
  sub_1B03F4F08(v34);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41[0] = v15;
  v41[1] = v16;
  *&v42 = v14;
  *(&v42 + 1) = v17;
  if (!v16)
  {
    if (!*(&v42 + 1))
    {
      sub_1B03B1198(v41);
      v13 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1B070B280(v41, &v40);
  if (!*(&v42 + 1))
  {
    sub_1B03B1198(&v40);
LABEL_15:
    sub_1B06FF6F0(v41);
    v13 = 0;
    goto LABEL_14;
  }

  v11 = &v39;
  v39 = v40;
  v10 = &v38;
  v38 = v42;
  v12 = MEMORY[0x1B2726DE0](v40, *(&v40 + 1), v42, *(&v42 + 1));
  sub_1B03B1198(v10);
  sub_1B03B1198(v11);
  sub_1B03B1198(v41);
  v13 = v12;
LABEL_14:
  v8 = v13;

  v9 = v8;
LABEL_18:
  v7 = v9;

  return v7 & 1;
}

uint64_t *sub_1B081BEC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  v33 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v27 = a5;
  v28 = a6;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v48 = a7;
  v9 = v31;
  v34 = _s5CacheV5EntryVMa();
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = (v20 - v35);
  v46 = MEMORY[0x1EEE9AC00](v33);
  v47 = v10;
  v44 = v11;
  v45 = v12;
  v42 = v13;
  v43 = v14;
  v41 = v8;
  result = sub_1B081C15C(v46, v10, v11, v12);
  v37 = v9;
  v38 = result;
  v39 = v9;
  if (!v9)
  {
    v20[3] = v38;
    v40 = v38;
    v16 = *v26;
    sub_1B0E453A8();
    v21 = *v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    v17 = sub_1B0E45398();
    v18 = v37;
    v22 = v17;
    v27(v21, v19 + *(v34 + 20));
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      v20[1] = v24;
    }

    v22();

    return sub_1B082189C(v36);
  }

  return result;
}

uint64_t sub_1B081C15C(uint64_t a1, unsigned int a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v43 = a3;
  v44 = a4;
  v56 = sub_1B0821D18;
  v40 = "Fatal error";
  v41 = "Range requires lowerBound <= upperBound";
  v42 = "Swift/Range.swift";
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v63 = 0;
  v61 = 0;
  v45 = _s5CacheV5EntryVMa();
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v51);
  v47 = (v17 - v46);
  v73 = v17 - v46;
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v49 = (v17 - v48);
  v71 = v7;
  v72 = v8;
  v69 = v9;
  v70 = v10;
  v68 = v4;
  v50 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v66[0] = v50;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = &v58;
  v59 = v51;
  v60 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821A24();
  v11 = v55;
  sub_1B0E456F8();
  v57 = v11;
  if (v11)
  {

    __break(1u);
  }

  else
  {

    sub_1B039E440(v66);
    v38 = v66[1];
    if ((v67 & 1) == 0)
    {
      v37 = v38;
      v34 = v38;
      v61 = v38;
      v12 = *v39;
      sub_1B0E453A8();
      v35 = *v49;

      v36 = sub_1B081BAC0();

      sub_1B082189C(v49);
      if (v36)
      {
        v32 = v34;
        v33 = v57;
        return v32;
      }

      sub_1B0E45308();
      sub_1B082189C(v49);
    }

    v13 = v57;
    v14 = v43(v51, v52);
    v29 = v13;
    v30 = v14;
    v31 = v13;
    if (!v13)
    {
      sub_1B081AFAC(v30, v47);
      v27 = *v39;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = sub_1B0E452A8();

      if (v28 >= 5)
      {
        v21 = *v39;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = sub_1B0E452A8();

        if (v22 < 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v17[3] = v64;
        v64[0] = 0;
        v64[1] = v22;
        v17[1] = v39 + 1;
        v17[2] = sub_1B039A4F8();
        sub_1B0714728();
        sub_1B0E46588();
        v20 = v65;
        v63 = v65;
        sub_1B08215D8(v47, v49);
        v19 = &v62;
        v18 = sub_1B0E45398();
        sub_1B0821AAC(v49, v15);
        v18();
        sub_1B082189C(v47);
        v32 = v20;
        v33 = v29;
      }

      else
      {
        sub_1B08215D8(v47, v49);
        sub_1B0E452E8();
        v25 = *v39;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = *v39;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = sub_1B0E452A8();

        v26 = sub_1B0E452C8();

        sub_1B082189C(v47);
        v32 = v26;
        v33 = v29;
      }

      return v32;
    }
  }

  return v17[0];
}

uint64_t sub_1B081C83C(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;

  v9 = sub_1B0829EAC();
  v6 = v3;

  v10 = static MailboxName.== infix(_:_:)(v9, v6, a2, a3);

  return v10 & 1;
}

uint64_t sub_1B081C8E0()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821D48();
  sub_1B0821DD0();
  sub_1B0E45898();
}

uint64_t sub_1B081C9B8()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  _s5CacheV5EntryVMa();
  v4 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4;
  v3 = sub_1B0713BE8();
  v0 = sub_1B0713BFC();
  v6 = PCG32Random.init(state:inc:)(v3, v0);
  v7 = v1;
  sub_1B039E440(&v5);
  return v4;
}

uint64_t *sub_1B081CA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  v4 = sub_1B0821A24();
  v6 = sub_1B039CA88(sub_1B081CB48, 0, v9, &unk_1F26C8B98, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v10);
  result = sub_1B039E440(v11);
  *a4 = v6;
  return result;
}

uint64_t sub_1B081CB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v27 = a1;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v21 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v21 - v21;
  v22 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v21 - v21);
  v33 = &v21 - v22;
  v38 = 0;
  v23 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v32 = &v21 - v23;
  v24 = (*(*(_s19CachedMailboxValuesVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v28 = (&v21 - v24);
  v35 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v25 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v55 = (&v21 - v25);
  v63 = &v21 - v25;
  v62 = v3;
  v26 = *v3;

  v56 = sub_1B0829EAC();
  v29 = v4;
  v60 = v56;
  v61 = v4;

  v5 = _s5CacheV5EntryVMa();
  sub_1B07F3F74((v27 + *(v5 + 20)), v28);
  sub_1B07F3F74(v28, v55);
  sub_1B07F45A0(v28);
  v59[6] = MailboxName.debugDescription.getter();
  v59[7] = v6;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v7 = v33;
  v30 = v59[11];
  v51 = sub_1B0E44EC8();
  v52 = v8;

  v31 = __dst;
  memcpy(__dst, v55, 0x2AuLL);
  sub_1B07F48B4(__dst, v59);
  v45 = sub_1B081CFF8(v31);
  v46 = v9;
  v47 = v10;
  v48 = v11;
  sub_1B07F4C24(v55 + *(v35 + 20), v32);
  v49 = v64;
  sub_1B081D624(v32, v64);
  sub_1B03D08AC(v55 + *(v35 + 24), v7);
  v50 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v33);
  v12 = sub_1B0E46A28();
  v42 = &v57;
  v57 = v12;
  v58 = v13;
  v40 = "";
  v39 = 1;
  v14 = sub_1B0E44838();
  v34 = v15;
  MEMORY[0x1B2728B30](v14);

  sub_1B03D08AC(v55 + *(v35 + 24), v37);
  sub_1B0E469E8();
  sub_1B03D09B8(v37);
  v16 = sub_1B0E44838();
  v41 = v17;
  MEMORY[0x1B2728B30](v16);

  v44 = v57;
  v43 = v58;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v42);
  v18 = sub_1B0E44C88();
  v54 = v65;
  sub_1B081DE70(v49, v51, v52, v45, v46, v47, v48, v50, v65, v18, v19);
  memcpy(v53, v54, 0x78uLL);
  sub_1B07F45A0(v55);
}

uint64_t sub_1B081CFF8(uint64_t *a1)
{
  v45 = a1;
  v49 = 0;
  v48 = sub_1B0813E78;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v59 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v55 = &v21[-v41];
  v42 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v21[-v42];
  v63 = v3;
  v43 = 0;
  v61 = sub_1B0E46A28();
  v62 = v4;
  v5 = sub_1B0E44838();
  v44 = v6;
  MEMORY[0x1B2728B30](v5);

  sub_1B07F48B4(v45, v60);
  v50 = *v45;
  v51 = v45[1];
  v52 = v45[2];
  v53 = v45[3];
  v7 = sub_1B041C1E8();
  v54 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v7);
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v55, v48, v49, v53, v47, &unk_1F26C8718, v46);
  sub_1B03D09B8(v55);

  v37 = &v61;
  sub_1B0E469E8();
  sub_1B03D09B8(v47);
  v8 = sub_1B0E44838();
  v36 = v9;
  MEMORY[0x1B2728B30](v8);

  v39 = v61;
  v38 = v62;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v37);
  *&v40 = sub_1B0E44C88();
  *(&v40 + 1) = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64 = v40;
  v66 = v45[4];
  v67 = *(v45 + 20);
  v68 = v66;
  v69 = v67;
  if ((v67 & 0x100) != 0)
  {
    *&v22 = sub_1B0E44838();
    *(&v22 + 1) = v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v65 = v22;
    v33 = v22;
  }

  else
  {
    v35 = v68;
    if (v69)
    {
      *&v32 = sub_1B0E44838();
      *(&v32 + 1) = v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v65 = v32;
      v33 = v32;
    }

    else
    {
      v34 = v35;
      v25 = v35;
      v59 = v35;
      v23 = 18;
      v12 = sub_1B0E46A28();
      v28 = &v57;
      v57 = v12;
      v58 = v13;
      v26 = 1;
      v14 = sub_1B0E44838();
      v24 = v15;
      MEMORY[0x1B2728B30](v14);

      v56 = v25;
      sub_1B0E469F8();
      v16 = sub_1B0E44838();
      v27 = v17;
      MEMORY[0x1B2728B30](v16);

      v30 = v57;
      v29 = v58;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v28);
      *&v31 = sub_1B0E44C88();
      *(&v31 + 1) = v18;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v65 = v31;
      v33 = v31;
    }
  }

  *&v21[8] = v33;
  sub_1B07F4A10(v45);
  sub_1B06FF6F0(&v64);
  return v40;
}

uint64_t sub_1B081D624@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v81 = a1;
  v86 = 0;
  v85 = sub_1B081ABBC;
  v70 = sub_1B0813E78;
  memset(__b, 0, sizeof(__b));
  v101 = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v71 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v37 - v71;
  v73 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v37 - v73;
  v75 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v37 - v75;
  v77 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v37 - v77;
  v78 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v37 - v78;
  v101 = v10;
  v79 = 0;
  v99 = sub_1B0E46A28();
  v100 = v11;
  v12 = sub_1B0E44838();
  v80 = v13;
  MEMORY[0x1B2728B30](v12);

  v87 = *v81;
  v88 = *(v81 + 1);
  v89 = *(v81 + 2);
  v90 = *(v81 + 3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82 = sub_1B041C1E8();
  v91 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v82);
  v93 = sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v92, v85, v86, v90, v84, &unk_1F26C87A0, v83);
  v94 = 0;
  sub_1B03D09B8(v92);

  v55 = &v99;
  sub_1B0E469E8();
  sub_1B03D09B8(v84);
  v61 = "";
  v62 = 0;
  v60 = 1;
  v14 = sub_1B0E44838();
  v54 = v15;
  MEMORY[0x1B2728B30](v14);

  v57 = v99;
  v56 = v100;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v55);
  v58 = sub_1B0E44C88();
  v59 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = v58;
  __b[1] = v59;
  v97 = sub_1B0E46A28();
  v98 = v17;
  v18 = sub_1B0E44838();
  v63 = v19;
  MEMORY[0x1B2728B30](v18);

  v64 = *(v81 + 4);
  v65 = *(v81 + 5);
  v66 = *(v81 + 6);
  v67 = *(v81 + 7);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = &type metadata for UID;
  MessageIdentifierSet.init()(&type metadata for UID, v82);
  KeyedSequence.reduce<A>(into:_:)(v74, v70, 0, v67, v76, &unk_1F26C0960, v83);
  sub_1B03D09B8(v74);

  v38 = &v97;
  sub_1B0E469E8();
  sub_1B03D09B8(v76);
  v44 = "";
  v42 = 0;
  v43 = 1;
  v20 = sub_1B0E44838();
  v37 = v21;
  MEMORY[0x1B2728B30](v20);

  v40 = v97;
  v39 = v98;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v38);
  v50 = sub_1B0E44C88();
  v51 = v22;
  v49 = __b;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[2] = v50;
  __b[3] = v51;
  v23 = sub_1B0E46A28();
  v46 = &v95;
  v95 = v23;
  v96 = v24;
  v25 = sub_1B0E44838();
  v41 = v26;
  MEMORY[0x1B2728B30](v25);

  v27 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  sub_1B03D08AC(&v81[*(v27 + 24)], v72);
  sub_1B0E469E8();
  sub_1B03D09B8(v72);
  v28 = sub_1B0E44838();
  v45 = v29;
  MEMORY[0x1B2728B30](v28);

  v48 = v95;
  v47 = v96;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v46);
  v53 = sub_1B0E44C88();
  v52 = v30;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = v53;
  __b[5] = v52;
  sub_1B07F4FB8(v81);
  sub_1B0821E58(v49);
  v31 = v59;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  v35 = v69;
  result = v53;
  *v69 = v58;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = result;
  v35[5] = v34;
  return result;
}

void *sub_1B081DE70@<X0>(void *__src@<X6>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  memcpy(__dst, __src, sizeof(__dst));
  __srca[0] = a2;
  __srca[1] = a3;
  __srca[2] = a4;
  __srca[3] = a5;
  __srca[4] = a6;
  __srca[5] = a7;
  __srca[6] = __dst[0];
  __srca[7] = __dst[1];
  __srca[8] = __dst[2];
  __srca[9] = __dst[3];
  __srca[10] = __dst[4];
  __srca[11] = __dst[5];
  __srca[12] = a8;
  __srca[13] = a10;
  __srca[14] = a11;
  return memcpy(a9, __srca, 0x78uLL);
}

uint64_t sub_1B081DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[3];
  v9 = v4[5];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void *sub_1B081E008(void *a1)
{
  sub_1B0821E9C(a1, v4);
  sub_1B0821F28(a1, (v1 + 48));
  return sub_1B0821E58(a1);
}

uint64_t sub_1B081E054()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B081E08C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1B081E10C(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B081E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25A8, &qword_1B0E9D830);
  v17 = *(v26 - 8);
  v18 = v26 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v12 - v19;
  v33 = MEMORY[0x1EEE9AC00](v16);
  *&v31 = v5;
  *(&v31 + 1) = v6;
  *&v32 = v7;
  *(&v32 + 1) = v8;
  v20 = v33[3];
  v21 = v33[4];
  __swift_project_boxed_opaque_existential_0(v33, v20);
  sub_1B0822024();
  sub_1B0E46D48();
  v9 = v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = 0;
  sub_1B0E46928();
  v27 = v9;
  v28 = v9;
  if (v9)
  {
    v12[2] = v28;

    return (*(v17 + 8))(v22, v26);
  }

  else
  {

    v10 = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = 1;
    sub_1B0E46928();
    v12[4] = v10;
    v13 = v10;
    if (v10)
    {
      v12[1] = v13;
    }

    return (*(v17 + 8))(v22, v26);
  }
}

uint64_t sub_1B081E6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081E10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081E6F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081E2B0();
  *a1 = result;
  return result;
}

uint64_t sub_1B081E7EC(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v15[0], v2, a1, a2);
  sub_1B03B1198(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = sub_1B0E44838();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1B2726DE0](v14[0], v3, a1, a2);
  sub_1B03B1198(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13[0] = sub_1B0E44838();
  v13[1] = v4;
  v7 = MEMORY[0x1B2726DE0](v13[0], v4, a1, a2);
  sub_1B03B1198(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B081EB58(uint64_t a1)
{
  v17 = a1;
  v35 = 0;
  v34 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25B0, &unk_1B0E9D838);
  v18 = *(v28 - 8);
  v19 = v28 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v6 - v20;
  v35 = MEMORY[0x1EEE9AC00](v17);
  v34 = v1;
  v21 = v35[3];
  v22 = v35[4];
  __swift_project_boxed_opaque_existential_0(v35, v21);
  sub_1B082211C();
  sub_1B0E46D48();
  v2 = v25;
  v26 = *v24;
  v27 = v24[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = 0;
  sub_1B0E46928();
  v29 = v2;
  v30 = v2;
  if (v2)
  {
    v7 = v30;

    result = (*(v18 + 8))(v23, v28);
    v8 = v7;
  }

  else
  {

    v3 = v29;
    v13 = v24[2];
    v14 = v24[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = 1;
    sub_1B0E46928();
    v15 = v3;
    v16 = v3;
    if (v3)
    {
      v6[2] = v16;

      return (*(v18 + 8))(v23, v28);
    }

    else
    {

      v4 = v15;
      v9 = v24[4];
      v10 = v24[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = 2;
      sub_1B0E46928();
      v11 = v4;
      v12 = v4;
      if (v4)
      {
        v6[1] = v12;
      }

      return (*(v18 + 8))(v23, v28);
    }
  }

  return result;
}

uint64_t sub_1B081EE80(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x1B2726DE0](v21[0], v2, a1, a2);
  sub_1B03B1198(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v20[0], v3, a1, a2);
  sub_1B03B1198(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v19[0], v4, a1, a2);
  sub_1B03B1198(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = sub_1B0E44838();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v18[0], v5, a1, a2);
  sub_1B03B1198(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = sub_1B0E44838();
  v17[1] = v6;
  v9 = MEMORY[0x1B2726DE0](v17[0], v6, a1, a2);
  sub_1B03B1198(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1B081F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081E7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081F36C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081EA28();
  *a1 = result;
  return result;
}

uint64_t sub_1B081F5FC(uint64_t a1)
{
  v34 = v58;
  v35 = a1;
  v58[1] = 0;
  v58[0] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25A0, &qword_1B0E9D828);
  v36 = *(v46 - 8);
  v37 = v46 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v35);
  v41 = v13 - v38;
  v3[1] = v2;
  *v3 = v1;
  v39 = v2[3];
  v40 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v39);
  sub_1B0822214();
  sub_1B0E46D48();
  v4 = v43;
  v44 = *v42;
  v45 = v42[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v57 = 0;
  sub_1B0E46928();
  v47 = v4;
  v48 = v4;
  if (v4)
  {
    v16 = v48;

    result = (*(v36 + 8))(v41, v46);
    v17 = v16;
  }

  else
  {

    v5 = v42;
    v6 = v34;
    *(v34 + 4) = *(v42 + 1);
    *(v6 + 5) = *(v5 + 2);
    sub_1B075D098(v60, v56);
    v7 = *(v34 + 4);
    v31 = v55;
    v55[0] = v7;
    v55[1] = *(v34 + 5);
    v30 = &v54;
    v54 = 1;
    sub_1B0824D38();
    v8 = v47;
    sub_1B0E46958();
    v32 = v8;
    v33 = v8;
    if (v8)
    {
      v15 = v33;
      sub_1B06FF6F0(v55);
      result = (*(v36 + 8))(v41, v46);
      v17 = v15;
    }

    else
    {
      sub_1B06FF6F0(v55);
      v24 = __dst;
      v25 = 48;
      memcpy(__dst, v42 + 6, sizeof(__dst));
      sub_1B0821E9C(__dst, v53);
      v27 = v52;
      memcpy(v52, v24, v25);
      v26 = &v51;
      v51 = 2;
      sub_1B0824DB4();
      v9 = v32;
      sub_1B0E46958();
      v28 = v9;
      v29 = v9;
      if (v9)
      {
        v14 = v29;
        sub_1B0821E58(v52);
        result = (*(v36 + 8))(v41, v46);
        v17 = v14;
      }

      else
      {
        sub_1B0821E58(v52);
        v10 = v28;
        v11 = v42[12];
        v50 = 3;
        sub_1B0E46948();
        v22 = v10;
        v23 = v10;
        if (v10)
        {
          v13[2] = v23;
        }

        else
        {
          v18 = v42[13];
          v19 = v42[14];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v49 = 4;
          sub_1B0E46928();
          v20 = 0;
          v21 = 0;
        }

        return (*(v36 + 8))(v41, v46);
      }
    }
  }

  return result;
}

uint64_t sub_1B081FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081EE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081FB84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081F1F4();
  *a1 = result;
  return result;
}

uint64_t sub_1B081FC84(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

BOOL sub_1B081FCD4(uint64_t *a1, uint64_t *a2)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v6 = *a1;
  v7 = a1[1];
  v18 = v6;
  v19 = v7;
  v8 = *a2;
  v9 = a2[1];
  v16 = v8;
  v17 = v9;
  if (v8 >= v6)
  {
    if (v6 == v8)
    {
      v15 = v7;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      MessageIdentifierRange.lowerBound.getter(v4, &v14);
      v13 = v14;
      v12 = v9;
      MessageIdentifierRange.lowerBound.getter(v4, &v11);
      v10 = v11;
      v2 = sub_1B041C1E8();
      return static MessageIdentifier.< infix(_:_:)(&v13, &v10, &type metadata for UID, v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t *sub_1B081FE34@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 3);
  *a2 = *(result + 2);
  a2[1] = v3;
  return result;
}

void sub_1B081FE6C(uint64_t (*a1)(void))
{
  v12 = a1();
  v13 = sub_1B03B1F78(v12);
  if (!v13)
  {

    v6 = sub_1B0A18AE0(0);
LABEL_9:
    v14[0] = v6;
    sub_1B0E44838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    sub_1B0E448E8();

    sub_1B039E440(v14);
    return;
  }

  v15 = sub_1B0A188BC();
  sub_1B0A188EC(v13);
  if (v13 < 0)
  {
    __break(1u);
  }

  else if (v13 > 0)
  {
    for (i = 0; ; ++i)
    {
      has_malloc_size = _swift_stdlib_has_malloc_size();
      v7 = sub_1B082010C(i, has_malloc_size & 1, v12);
      sub_1B0A5D9E4(4);
      v14[1] = sub_1B0E44838();
      v14[2] = v2;

      v3 = SectionSpecifier.Part.debugDescription.getter(v7);
      MEMORY[0x1B2726E80](v3);

      v4 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v4);

      v9 = sub_1B0E44C88();
      v10 = v5;

      sub_1B0A189D4();
      v8 = *(v15 + 16);
      sub_1B0A18A44(v8);
      sub_1B0A18ABC(v8, v9, v10);
      sub_1B0394A5C();
      if (i + 1 == v13)
      {
        break;
      }
    }

    v6 = v15;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B082010C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 32 + 8 * a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  else
  {
    v5 = sub_1B0820194(a1, a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_unknownObjectRelease();
    return v5;
  }
}

uint64_t sub_1B0820194(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7[1] = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  sub_1B039E440(v7);
  return v6;
}

unint64_t sub_1B0820378()
{
  v2 = qword_1EB6E24A8;
  if (!qword_1EB6E24A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E24A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B08203F4(char *a1, char *__dst)
{
  memcpy(__dst, a1, 0x2AuLL);
  v12 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v7 = &a1[*(v12 + 20)];
  v8 = &__dst[*(v12 + 20)];
  *v8 = *v7;
  *(v8 + 1) = *(v7 + 1);
  *(v8 + 2) = *(v7 + 2);
  *(v8 + 3) = *(v7 + 3);
  v6 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v5 = *(v6 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v11 = *(*(v10 - 8) + 32);
  v11(&v8[v5], &v7[v5]);
  v2 = &v7[*(v6 + 28)];
  v3 = &v8[*(v6 + 28)];
  *v3 = *v2;
  *(v3 + 4) = *(v2 + 4);
  (v11)(&__dst[*(v12 + 24)], &a1[*(v12 + 24)], v10);
  return __dst;
}

uint64_t sub_1B0820564@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813A58(v3, a1);
}

unint64_t sub_1B08205D8()
{
  v2 = qword_1EB6E24B8;
  if (!qword_1EB6E24B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E24B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0820654()
{
  v1 = *(_s19CachedMailboxValuesV15MissingBodyDataVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0813A80(v2);
}

char *sub_1B08206B8@<X0>(void *a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813B8C(v3, a1);
}

uint64_t sub_1B082072C@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813B48(v3, a1);
}

unint64_t sub_1B08207A0()
{
  v2 = qword_1EB6DE1E0;
  if (!qword_1EB6DE1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0820818(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1B07F200C(a2);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B082085C(uint64_t a1)
{
  if (*(a1 + 48) > 1uLL)
  {
    v1 = *(a1 + 48);
  }

  v2 = *(a1 + 56);

  return a1;
}

uint64_t sub_1B08208B0(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    if (*(a1 + 48) > 1uLL)
    {
      v1 = *(a1 + 48);
    }

    v2 = *(a1 + 56);
  }

  return a1;
}

uint64_t sub_1B0820978(uint64_t a1)
{
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  return sub_1B08163D8(a1, *(v1 + 40)) & 1;
}

uint64_t sub_1B08209C8@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  return sub_1B0816394(*(v1 + 40), a1);
}

unint64_t sub_1B0820A14()
{
  v2 = qword_1EB6DB168;
  if (!qword_1EB6DB168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820A9C()
{
  v2 = qword_1EB6DBC48;
  if (!qword_1EB6DBC48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC48);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0820B18(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v6;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v8;
  return result;
}

unint64_t sub_1B0820BAC()
{
  v2 = qword_1EB6DEAF0;
  if (!qword_1EB6DEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820C34()
{
  v2 = qword_1EB6DB170;
  if (!qword_1EB6DB170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB170);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0820CBC(char *a1)
{
  v1 = *a1;

  v4 = type metadata accessor for MessagesMissingAllBodyData();
  v3 = *(v4 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 8);
  v6(&a1[v3]);
  (v6)(&a1[*(v4 + 24)], v5);
  return a1;
}

unint64_t sub_1B0820D7C()
{
  v2 = qword_1EB6DB030;
  if (!qword_1EB6DB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820E04()
{
  v2 = qword_1EB6DB028;
  if (!qword_1EB6DB028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820E8C()
{
  v2 = qword_1EB6DA558;
  if (!qword_1EB6DA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24F0, &unk_1B0E9CCF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820F14()
{
  v2 = qword_1EB6DB570;
  if (!qword_1EB6DB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820F9C()
{
  v2 = qword_1EB6DB038;
  if (!qword_1EB6DB038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821034()
{
  v2 = qword_1EB6DEB00[0];
  if (!qword_1EB6DEB00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB6DEB00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08210BC()
{
  v2 = qword_1EB6DB188;
  if (!qword_1EB6DB188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2500, &qword_1B0E9CD50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821194()
{
  v2 = qword_1EB6DEAE8;
  if (!qword_1EB6DEAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2508, &qword_1B0E9CD58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEAE8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B082121C(char *a1)
{
  v1 = *a1;

  v4 = *(type metadata accessor for FindFragmentedMessagesResult() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 8))(&a1[v4]);
  return a1;
}

unint64_t sub_1B08212D0()
{
  v2 = qword_1EB6DB510;
  if (!qword_1EB6DB510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2520, &qword_1B0E9CD70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821358()
{
  v2 = qword_1EB6DB840;
  if (!qword_1EB6DB840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2528, &qword_1B0E9CD78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08213E0()
{
  v2 = qword_1EB6DB7E0;
  if (!qword_1EB6DB7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2530, &qword_1B0E9CD80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821468()
{
  v2 = qword_1EB6DA508;
  if (!qword_1EB6DA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2538, &qword_1B0E9CDD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA508);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s5CacheV5EntryVMa()
{
  v1 = qword_1EB6DBB28;
  if (!qword_1EB6DBB28)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s19CachedMailboxValuesVMa()
{
  v1 = qword_1EB6DBC20;
  if (!qword_1EB6DBC20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B08215D8(uint64_t *a1, void *a2)
{
  v5 = *a1;

  *a2 = v5;
  v7 = *(_s5CacheV5EntryVMa() + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);

  v25 = a2 + v7;
  *v25 = v8;
  *(v25 + 1) = v9;
  v10 = *(a1 + v7 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v25 + 2) = v10;
  v11 = *(a1 + v7 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v25 + 3) = v11;
  *(v25 + 4) = *(a1 + v7 + 32);
  *(v25 + 20) = *(a1 + v7 + 40);
  v28 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v12 = *(v28 + 20);
  v23 = a1 + v7 + v12;
  v13 = *v23;
  v14 = *(v23 + 1);

  v24 = a2 + v7 + v12;
  *v24 = v13;
  *(v24 + 1) = v14;
  v15 = *(v23 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 2) = v15;
  v16 = *(v23 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 3) = v16;
  v17 = *(v23 + 4);
  v18 = *(v23 + 5);

  *(v24 + 4) = v17;
  *(v24 + 5) = v18;
  v19 = *(v23 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 6) = v19;
  v20 = *(v23 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 7) = v20;
  v22 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v21 = *(v22 + 24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v27 = *(*(v26 - 8) + 16);
  v27(&v24[v21], &v23[v21]);
  v2 = *(v22 + 28);
  v3 = &v24[v2];
  *v3 = *&v23[v2];
  *(v3 + 4) = *&v23[v2 + 8];
  (v27)(a2 + v7 + *(v28 + 24), a1 + v7 + *(v28 + 24), v26);
  return a2;
}

uint64_t *sub_1B082189C(uint64_t *a1)
{
  v1 = *a1;

  v15 = (a1 + *(_s5CacheV5EntryVMa() + 20));
  v2 = v15[1];

  v3 = v15[2];

  v4 = v15[3];

  v14 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v12 = v15 + *(v14 + 20);
  v5 = *(v12 + 1);

  v6 = *(v12 + 2);

  v7 = *(v12 + 3);

  v8 = *(v12 + 5);

  v9 = *(v12 + 6);

  v10 = *(v12 + 7);

  v13 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v17 = *(*(v16 - 8) + 8);
  v17(&v12[v13]);
  (v17)(v15 + *(v14 + 24), v16);
  return a1;
}

unint64_t sub_1B0821A24()
{
  v2 = qword_1EB6DB0F0;
  if (!qword_1EB6DB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B0821AAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;

  v4 = _s5CacheV5EntryVMa();
  v26 = a1 + *(v4 + 20);
  v5 = *(v26 + 1);
  v25 = a2 + *(v4 + 20);
  *v25 = *v26;
  v6 = *(v25 + 1);
  *(v25 + 1) = v5;

  v7 = *(v25 + 2);
  *(v25 + 2) = *(v26 + 2);

  v8 = *(v25 + 3);
  *(v25 + 3) = *(v26 + 3);

  *(v25 + 4) = *(v26 + 4);
  *(v25 + 20) = *(v26 + 20);
  v29 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v23 = &v26[*(v29 + 20)];
  v9 = *(v23 + 1);
  v24 = &v25[*(v29 + 20)];
  *v24 = *v23;
  v10 = *(v24 + 1);
  *(v24 + 1) = v9;

  v11 = *(v24 + 2);
  *(v24 + 2) = *(v23 + 2);

  v12 = *(v24 + 3);
  *(v24 + 3) = *(v23 + 3);

  v13 = *(v23 + 5);
  *(v24 + 4) = *(v23 + 4);
  v14 = *(v24 + 5);
  *(v24 + 5) = v13;

  v15 = *(v24 + 6);
  *(v24 + 6) = *(v23 + 6);

  v16 = *(v24 + 7);
  *(v24 + 7) = *(v23 + 7);

  v22 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v21 = *(v22 + 24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v28 = *(*(v27 - 8) + 40);
  v28(&v24[v21], &v23[v21]);
  v17 = &v23[*(v22 + 28)];
  v18 = &v24[*(v22 + 28)];
  *v18 = *v17;
  *(v18 + 4) = *(v17 + 4);
  (v28)(&v25[*(v29 + 24)], &v26[*(v29 + 24)], v27);
  return a2;
}

unint64_t sub_1B0821D48()
{
  v2 = qword_1EB6DB0F8;
  if (!qword_1EB6DB0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821DD0()
{
  v2 = qword_1EB6DB0E8;
  if (!qword_1EB6DB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0821E58(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  return a1;
}

void *sub_1B0821E9C(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v5;
  a2[4] = a1[4];
  v7 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[5] = v7;
  return result;
}

void *sub_1B0821F28(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a2[1];
  a2[1] = v2;

  a2[2] = a1[2];
  v4 = a2[3];
  a2[3] = a1[3];

  a2[4] = a1[4];
  v5 = a2[5];
  a2[5] = a1[5];

  return a2;
}

unint64_t sub_1B0821FA8()
{
  v2 = qword_1EB6E2558;
  if (!qword_1EB6E2558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822024()
{
  v2 = qword_1EB6DBB78;
  if (!qword_1EB6DBB78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08220A0()
{
  v2 = qword_1EB6E2560;
  if (!qword_1EB6E2560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082211C()
{
  v2 = qword_1EB6DBB58;
  if (!qword_1EB6DBB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822198()
{
  v2 = qword_1EB6E2568;
  if (!qword_1EB6E2568)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822214()
{
  v2 = qword_1EB6DBB90;
  if (!qword_1EB6DBB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08222E0()
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B08223C8()
{
  v3 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B08224D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08225F0(uint64_t result, int a2, int a3)
{
  v3 = (result + 42);
  if (a2 < 0)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B0822814()
{
  v4 = sub_1B082292C();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B08229D4();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B043B29C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B082292C()
{
  v4 = qword_1EB6DEAF8;
  if (!qword_1EB6DEAF8)
  {
    sub_1B08207A0();
    v3 = type metadata accessor for KeyedSequence();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DEAF8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08229D4()
{
  v4 = qword_1EB6DEAE0;
  if (!qword_1EB6DEAE0)
  {
    sub_1B08207A0();
    v3 = type metadata accessor for KeyedSequence();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DEAE0);
      return v1;
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_7Message24MailboxPersistenceHelperC07MissingA5PartsV013NonAttachmentF0O(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0822BF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 64))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 56) < 0x100000000uLL)
      {
        v4 = *(a1 + 56);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0822D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0822F38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0823068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
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

uint64_t sub_1B082324C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483645;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B082339C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFE)
  {
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B0823704(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 10))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0823814(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 10);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t sub_1B0823B10()
{
  v3 = type metadata accessor for MailboxPersistenceHelper();
  if (v0 <= 0x3F)
  {
    v3 = _s19CachedMailboxValuesVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B0823C0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0823D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0823F34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0824074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B082429C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08243B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08245C8()
{
  v2 = qword_1EB6DB100;
  if (!qword_1EB6DB100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2578, &unk_1B0EA2E60);
    sub_1B0824660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824660()
{
  v2 = qword_1EB6DBB38;
  if (!qword_1EB6DBB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08246F4()
{
  v2 = qword_1EB6DBB80;
  if (!qword_1EB6DBB80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824788()
{
  v2 = qword_1EB6DBB88;
  if (!qword_1EB6DBB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082481C()
{
  v2 = qword_1EB6E2580;
  if (!qword_1EB6E2580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08248B0()
{
  v2 = qword_1EB6DBB48;
  if (!qword_1EB6DBB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824944()
{
  v2 = qword_1EB6DBB50;
  if (!qword_1EB6DBB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08249D8()
{
  v2 = qword_1EB6E2588;
  if (!qword_1EB6E2588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824A6C()
{
  v2 = qword_1EB6DBB68;
  if (!qword_1EB6DBB68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824B00()
{
  v2 = qword_1EB6DBB70;
  if (!qword_1EB6DBB70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824B94()
{
  v2 = qword_1EB6E2590;
  if (!qword_1EB6E2590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824C28()
{
  v2 = qword_1EB6DBC40;
  if (!qword_1EB6DBC40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824CBC()
{
  v2 = qword_1EB6E2598;
  if (!qword_1EB6E2598)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824D38()
{
  v2 = qword_1EB6DBB60;
  if (!qword_1EB6DBB60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824DB4()
{
  v2 = qword_1EB6DBB40;
  if (!qword_1EB6DBB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB40);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0824E30(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v7 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v6 = *(v7 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v6], &a1[v6]);
  result = a2;
  v4 = &a1[*(v7 + 28)];
  v5 = &a2[*(v7 + 28)];
  *v5 = *v4;
  *(v5 + 4) = *(v4 + 4);
  return result;
}

uint64_t sub_1B0824F18(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  if (*(a1 + 48) > 1uLL)
  {
    v4 = *(a1 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 48) = v4;
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1B0824FC8(void *a1, void *a2)
{
  v19 = 0u;
  MEMORY[0x1E69E5928](a1);
  v13 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v15 = [v13 stringValue];
  *&v14 = sub_1B0E44AD8();
  *(&v14 + 1) = v2;
  MEMORY[0x1E69E5920](v13);
  v18 = v14;
  MEMORY[0x1E69E5920](v15);
  v17 = [a2 destinationMessage];
  if (v17)
  {
    swift_getObjectType();
    v3 = [v17 persistentID];
    v10 = v3;
    if (v3)
    {
      *&v8 = sub_1B0E44AD8();
      *(&v8 + 1) = v4;
      MEMORY[0x1E69E5920](v10);
      v9 = v8;
    }

    else
    {
      v9 = 0uLL;
    }

    swift_unknownObjectRelease();
    v11 = v9;
  }

  else
  {
    v11 = 0uLL;
  }

  if (*(&v11 + 1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = v11;

    v6 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B06FF6F0(&v18);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B03B1198(&v18);
    return 0;
  }
}

uint64_t sub_1B08252D8(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v19 = a1;
  v20 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!a2)
  {
    goto LABEL_10;
  }

  v16 = a1;
  v17 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039A4F8();
  sub_1B0E46598();
  if (v15)
  {

LABEL_10:

    v4 = 0;
    v5 = 1;
    goto LABEL_11;
  }

  v13 = v14;
  v10 = v14;
  v6 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  MessageIdentifier.init<A>(exactly:)(&v10, &type metadata for UID, MEMORY[0x1E69E6530], v6, v2, &v11);
  v7 = v11;
  if (v12)
  {

    goto LABEL_10;
  }

  v21 = v11;

  v4 = v7;
  v5 = 0;
LABEL_11:
  LODWORD(v18) = v4;
  BYTE4(v18) = v5 & 1;
  return v18;
}

uint64_t sub_1B0825490@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v4[1] = 0;
  v1 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = v4 - v4[0];
  swift_storeEnumTagMultiPayload();
  v2 = sub_1B0E46A48();
  return sub_1B08274A8(v6, v2, v5);
}

uint64_t _s31PreviouslyDownloadedMessageDataV4MIMEOMa()
{
  v1 = qword_1EB6DBC70;
  if (!qword_1EB6DBC70)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08255A8()
{
  v10 = 0;
  v7 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v3[-v6];
  v10 = MEMORY[0x1EEE9AC00](v5);
  sub_1B07AF5B8(v10, &v3[-v6]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v1 = sub_1B0E443C8();
      (*(*(v1 - 8) + 8))(v8);
LABEL_10:
      v4 = 0;
      return v4 & 1;
    case 1:
      v0 = sub_1B0E443C8();
      (*(*(v0 - 8) + 8))(v8);
      break;
    case 2:
    case 3:
      break;
    default:
      goto LABEL_10;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1B0825730(uint64_t a1)
{
  if (a1 == *MEMORY[0x1E699A728])
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1B082579C(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v17[4] = a1;
  v17[5] = a2;
  if (sub_1B0E44DA8())
  {
    v2 = sub_1B0E46A48();
    v11 = SectionSpecifier.Part.init(arrayLiteral:)(v2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = v11;
    v12 = v11;
  }

  else
  {
    v17[2] = a1;
    v17[3] = a2;
    v17[0] = sub_1B0E44838();
    v17[1] = v3;
    sub_1B07C7F5C();
    v7 = sub_1B0E45EE8();
    sub_1B03B1198(v17);
    v16 = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    v4 = sub_1B0750598();
    v10 = sub_1B039CA88(sub_1B0827EDC, 0, v8, MEMORY[0x1E69E6530], v9, v4, MEMORY[0x1E69E7288], &v15);
    sub_1B039E440(&v16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    rawValue = SectionSpecifier.Part.init(_:)(v10).array._rawValue;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = rawValue;

    v12 = rawValue;
  }

  sub_1B039E440(&v18);
  return v12;
}

uint64_t sub_1B08259E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v50 = a1;
  v31 = sub_1B0827E7C;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v32 = 0;
  v52 = 0;
  v51 = 0;
  v38 = 0;
  v33 = sub_1B0E443C8();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v13 - v36;
  v39 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v13 - v40;
  v42 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v13 - v42;
  v58 = &v13 - v42;
  v44 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v13 - v44;
  v46 = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v50);
  v47 = &v13 - v46;
  v48 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v13 - v48;
  v57 = &v13 - v48;
  v56 = v8;
  MEMORY[0x1E69E5928](v8);
  if (!v50)
  {
    swift_storeEnumTagMultiPayload();
    v9 = sub_1B0E46A48();
    sub_1B08274A8(v45, v9, v47);
    sub_1B07B48B8(v47, v49);
LABEL_16:
    sub_1B075E87C(v49, v30);
    MEMORY[0x1E69E5920](v50);
    return sub_1B075ECD0(v49);
  }

  v29 = v50;
  v25 = v50;
  v55 = v50;
  v27 = [v50 hasFullMessageData];
  v24 = [v25 hasPartialMessageData];
  v26 = [v25 headersOnlyData];
  v10 = [v25 partialMessageData];
  v28 = v10;
  if (v27)
  {
    goto LABEL_5;
  }

  if (v28)
  {
    v23 = v28;
    v22 = v28;
    MEMORY[0x1E69E5928](v28);
    v51 = v22;
    MEMORY[0x1E69E5928](v22);
    sub_1B0E44348();
    (*(v34 + 32))(v45, v37, v33);
    swift_storeEnumTagMultiPayload();
    sub_1B0827FE8(v45, v43);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v28);
  }

  else
  {
    if (!v26)
    {
LABEL_5:
      swift_storeEnumTagMultiPayload();
      sub_1B0827FE8(v45, v43);
      MEMORY[0x1E69E5920](v26);
      MEMORY[0x1E69E5920](v28);
      goto LABEL_11;
    }

    v21 = v26;
    v20 = v26;
    MEMORY[0x1E69E5928](v26);
    v52 = v20;
    MEMORY[0x1E69E5928](v20);
    sub_1B0E44348();
    (*(v34 + 32))(v45, v37, v33);
    swift_storeEnumTagMultiPayload();
    sub_1B0827FE8(v45, v43);
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v28);
  }

LABEL_11:
  sub_1B07AF5B8(v43, v41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B075EC04(v41);
    v18 = sub_1B0E46A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = v18;
    v19 = v18;
LABEL_15:
    v13 = v19;
    sub_1B07AF5B8(v43, v45);
    sub_1B08274A8(v45, v13, v47);
    sub_1B07B48B8(v47, v49);
    sub_1B039E440(&v54);
    sub_1B075EC04(v43);
    MEMORY[0x1E69E5920](v25);
    goto LABEL_16;
  }

  v11 = v32;
  (*(v34 + 8))(v41, v33);
  v15 = [v25 mimeParts];
  v53 = sub_1B0E451B8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B06E3764();
  result = sub_1B0E44F58();
  v17 = result;
  if (!v11)
  {
    v14 = v17;
    sub_1B039E440(&v53);
    MEMORY[0x1E69E5920](v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v54 = v14;
    v19 = v14;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0826230(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B08264BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v24 = a2;
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25E8, &unk_1B0E9DD80);
  v17 = *(v26 - 8);
  v18 = v26 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v12 - v19;
  v33 = MEMORY[0x1EEE9AC00](v16);
  *&v31 = v5;
  *(&v31 + 1) = v6;
  *&v32 = v7;
  *(&v32 + 1) = v8;
  v20 = v33[3];
  v21 = v33[4];
  __swift_project_boxed_opaque_existential_0(v33, v20);
  sub_1B082818C();
  sub_1B0E46D48();
  v9 = v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = 0;
  sub_1B0E46928();
  v27 = v9;
  v28 = v9;
  if (v9)
  {
    v12[2] = v28;

    return (*(v17 + 8))(v22, v26);
  }

  else
  {

    v10 = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = 1;
    sub_1B0E46928();
    v12[4] = v10;
    v13 = v10;
    if (v10)
    {
      v12[1] = v13;
    }

    return (*(v17 + 8))(v22, v26);
  }
}

uint64_t sub_1B0826750(uint64_t *a1)
{
  v24 = a1;
  v37 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25E0, &qword_1B0E9DD78);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v7 - v28;
  v37 = MEMORY[0x1EEE9AC00](v24);
  v31 = v37[3];
  v32 = v37[4];
  __swift_project_boxed_opaque_existential_0(v37, v31);
  sub_1B082818C();
  v1 = v30;
  sub_1B0E46D18();
  v33 = v1;
  v34 = v1;
  if (v1)
  {
    v9 = v34;
    v10 = 0;
    v8 = 0;
    v7[2] = v34;
    __swift_destroy_boxed_opaque_existential_0(v24);
    if (v8)
    {
      sub_1B03B1198(&v38);
    }

    return v7[0];
  }

  else
  {
    v36 = 0;
    v2 = sub_1B0E46848();
    v20 = 0;
    v21 = v2;
    v22 = v3;
    v23 = 0;
    v38 = v2;
    v39 = v3;
    v35 = 1;
    v4 = sub_1B0E46848();
    v16 = 0;
    v17 = v4;
    v18 = v5;
    v19 = 0;
    v14 = v5;
    v13 = v4;
    v11 = &v38;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = v13;
    v41 = v14;
    (*(v26 + 8))(v29, v25);
    v15 = v38;
    v12 = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1B06FF6F0(v11);
    return v15;
  }
}

uint64_t sub_1B0826AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0826230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0826B7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0826750(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B0826D14(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1B0826ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0826D14(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1B0826F00@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_1B0826D88(*v1 & 1);
  *a1 = result;
  return result;
}

uint64_t sub_1B0826F94()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0826FCC(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 8);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1B0827034(uint64_t a1)
{
  sub_1B0828300(a1, v4);
  sub_1B0828370(a1, v1 + 24);
  return sub_1B08283D8(a1);
}

void *sub_1B0827070@<X0>(void *__src@<X4>, char a2@<W0>, int a3@<W1>, uint64_t a4@<X2>, int a5@<W3>, void *a6@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  LOBYTE(__srca[0]) = a2 & 1;
  HIDWORD(__srca[0]) = a3;
  __srca[1] = a4;
  LODWORD(__srca[2]) = a5;
  __srca[3] = __dst[0];
  __srca[4] = __dst[1];
  LODWORD(__srca[5]) = __dst[2];
  __srca[6] = __dst[3];
  __srca[7] = __dst[4];
  return memcpy(a6, __srca, 0x40uLL);
}

uint64_t sub_1B082714C(uint64_t a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B075E87C(v2, v5 - v5[0]);
  v3 = _s18SectionsToDownloadVMa();
  sub_1B075EA98(v6, (v1 + *(v3 + 20)));
  return sub_1B075ECD0(v7);
}

uint64_t sub_1B082722C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v5);
  v2 = _s18SectionsToDownloadVMa();
  sub_1B075DEC8(a1, (v1 + *(v2 + 24)));
  return sub_1B075E728(a1);
}

uint64_t sub_1B08272A4(unsigned int a1)
{
  v2 = _s18SectionsToDownloadVMa();
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

int *sub_1B08272E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, const void *a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = _s18SectionsToDownloadVMa();
  sub_1B07B48B8(a2, &a5[v8[5]]);
  memcpy(&a5[v8[6]], a3, 0xB1uLL);
  result = v8;
  a5[v8[7]] = a4;
  return result;
}

uint64_t sub_1B082738C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(_s31PreviouslyDownloadedMessageDataV4MIMEOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AF5B8(v1, v3 - v3[0]);
  sub_1B0828410(v4, v3[1]);
  return sub_1B075EC04(v5);
}

uint64_t sub_1B0827424()
{
  v2 = *(v0 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B082745C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B08274A8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1B0827FE8(a1, a3);
  result = _s31PreviouslyDownloadedMessageDataVMa();
  *&a3[*(result + 20)] = a2;
  return result;
}

_BYTE *sub_1B08274F0()
{
  v30 = 0;
  v43 = 0;
  v26 = 0;
  v39 = 0;
  v27 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v1 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v28 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = _s31PreviouslyDownloadedMessageDataVMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = v0;
  v31 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v31;
  v6 = sub_1B0E46A48();
  v41 = SectionSpecifier.Part.init(arrayLiteral:)(v6);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v32 = v34;
  v35 = sub_1B07AFA50();
  v33 = v35;
  sub_1B07F3770();
  v36 = &v41;
  v37 = &v42;
  v38 = sub_1B0E450A8();
  sub_1B039E440(v36);
  sub_1B039E440(v37);
  if (v38)
  {
    v20 = 0;
    v21 = v26;
    return (v20 & 1);
  }

  v7 = _s18SectionsToDownloadVMa();
  sub_1B075E87C(&v25[*(v7 + 20)], v29);
  sub_1B07AF5B8(v29, v28);
  sub_1B075ECD0(v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v23 = sub_1B0E443C8();
      (*(*(v23 - 8) + 8))(v28);
LABEL_9:
      v20 = 0;
      v21 = v26;
      return (v20 & 1);
    case 1:
      v22 = sub_1B0E443C8();
      (*(*(v22 - 8) + 8))(v28);
      goto LABEL_9;
    case 2:
      goto LABEL_9;
  }

  v18 = *v25;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v40[1] = v18;
  sub_1B07AFBE8();
  v19 = sub_1B0E45748();

  if (v19)
  {
    v20 = 1;
    v21 = v26;
    return (v20 & 1);
  }

  v8 = v26;
  v14 = *v25;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v40[0] = v14;
  v15 = v12;
  MEMORY[0x1EEE9AC00](v12);
  *&v12[-16] = v9;
  v10 = sub_1B0E44F48();
  v16 = v8;
  v17 = v10;
  if (!v8)
  {
    v13 = v17;
    sub_1B039E440(v40);
    v39 = v13 & 1;
    v20 = v13 ^ 1;
    v21 = v16;
    return (v20 & 1);
  }

  result = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B0827908(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v6 = *a1;
  v10 = *a1;
  v9 = a2;
  v2 = _s18SectionsToDownloadVMa();
  memcpy(__dst, (a2 + *(v2 + 24)), 0xB1uLL);
  sub_1B075DC38(__dst, v8);
  memcpy(v16, __dst, 0xB1uLL);
  if (sub_1B075FACC(v16) == 1)
  {
    goto LABEL_5;
  }

  memcpy(v14, v16, sizeof(v14));
  BodyStructure.find(_:)(v6, v11);
  memcpy(v12, v11, 0xB1uLL);
  if (sub_1B075FACC(v12) == 1)
  {
    sub_1B075E648(v16);
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  memcpy(v13, v12, 0xB1uLL);
  v4 = BodyStructure.isAttachment.getter();
  sub_1B075E648(v13);
  sub_1B075E648(v16);
  v5 = v4;
  return v5 & 1;
}

uint64_t sub_1B0827A6C@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v11 = a1;
  v10 = v2;
  v6 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = _s18SectionsToDownloadVMa();
  memcpy(__dst, v2 + *(v3 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v9);
  v8 = sub_1B0827B34(v6, __dst, a1);
  sub_1B075E728(__dst);

  sub_1B0827C70(v8, a2);
}

uint64_t sub_1B0827B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9[4] = a1;
  v9[3] = a2;
  v9[2] = a3;
  v9[1] = a1;
  v3 = sub_1B0E46A48();
  v9[0] = SectionSpecifier.Part.init(arrayLiteral:)(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  sub_1B07AFA50();
  sub_1B07F3770();
  v8 = sub_1B0E450A8();
  sub_1B039E440(v9);
  if (v8)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B0827D88(a3, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07F22F8();
    return sub_1B0E45378();
  }
}

int *sub_1B0827C70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v7 = a2;
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v5[1] = 0;
  v5[0] = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v5 - v5[0];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v12 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = _s18SectionsToDownloadVMa();
  sub_1B075E87C((v2 + v6[5]), v8);
  v3 = (v2 + v6[6]);
  v9 = __dst;
  memcpy(__dst, v3, 0xB1uLL);
  sub_1B075DC38(__dst, v11);
  return sub_1B08272E0(v10, v8, v9, *(v2 + v6[7]) & 1, v7);
}

uint64_t sub_1B0827D88(unint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(0, a2);
    return v2;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(a1, a2);
    v5 = v3;

    v8 = v5;
  }

  return v8;
}

uint64_t sub_1B0827E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B082579C(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B0827EDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039A4F8();
  result = sub_1B0E46598();
  if (v10)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(result);
    sub_1B0829B6C();
    v4 = swift_allocError();
    swift_willThrow();
    result = v4;
    *a2 = v4;
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

void *sub_1B0827FE8(const void *a1, void *a2)
{
  v6 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1B0828110()
{
  v2 = qword_1EB6E25B8;
  if (!qword_1EB6E25B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082818C()
{
  v2 = qword_1EB6DBBF8;
  if (!qword_1EB6DBBF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0828208()
{
  v2 = qword_1EB6E25C0;
  if (!qword_1EB6E25C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0828284()
{
  v2 = qword_1EB6DBBA0;
  if (!qword_1EB6DBBA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0828300(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B0828370(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;

  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a2 + 32);
  *(a2 + 32) = *(a1 + 32);

  return a2;
}

uint64_t sub_1B08283D8(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 32);

  return a1;
}

void *sub_1B0828410(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1B075EC04(a2);
    v4 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1B082857C()
{
  result = *v0;
  v2 = v0[1] & 1;
  return result;
}

uint64_t sub_1B08285B4(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B0828628(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B06BC2F4(v2, &v5 - v6);
  v3 = _s6UploadVMa();
  sub_1B06BC6BC(v7, (v1 + *(v3 + 20)));
  return sub_1B06B97A8(v8);
}

uint64_t sub_1B08286D8()
{
  v1 = v0 + *(_s6UploadVMa() + 24);
  v3 = *v1;
  sub_1B03B2000(*v1, *(v1 + 8));
  return v3;
}

uint64_t sub_1B0828720(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = (v2 + *(_s6UploadVMa() + 24));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_1B0391D50(v4, v5);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B0828780@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v19 = 0;
  v25 = sub_1B0E43108();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v18 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v17 - v18;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v28 = &v17 - v20;
  v34 = _s6UploadVMa();
  v30 = *(v34 - 8);
  v31 = v34 - 8;
  v5 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v34);
  v40 = (&v17 - v7);
  v47 = &v17 - v7;
  v46 = v39;
  v44 = v8;
  v45 = v9;
  v43 = v36;
  v10 = *(v6 + 20);
  v27 = *(v22 + 56);
  v26 = v22 + 56;
  v33 = 1;
  v27(&v17 + v10 - v7, 1);
  sub_1B03B2000(v38, v37);
  v11 = v37;
  v12 = (v40 + *(v34 + 24));
  *v12 = v38;
  v12[1] = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v21 = [v39 flags];
  swift_unknownObjectRelease();
  v13 = sub_1B072136C(v21);
  v14 = v40;
  v41 = v13;
  v42 = v15 & 1 & v33;
  v48 = v13;
  v49 = v42;
  *v40 = v13;
  *(v14 + 8) = v49;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = [v39 dateReceived];
  sub_1B0E430D8();
  (*(v22 + 32))(v28, v24, v25);
  swift_unknownObjectRelease();
  v32 = 0;
  (v27)(v28);
  sub_1B06BC6BC(v28, v40 + *(v34 + 20));
  MEMORY[0x1E69E5920](v29);
  sub_1B0828B38(v40, v35);
  (*(v30 + 56))(v35, v32, v33, v34);
  sub_1B074B764(v36);
  sub_1B0391D50(v38, v37);
  swift_unknownObjectRelease();
  return sub_1B0828D04(v40);
}

uint64_t sub_1B0828B38(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v9 = _s6UploadVMa();
  v10 = *(v9 + 20);
  v12 = sub_1B0E43108();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1 + v10, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v10), (a1 + v10), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))();
    (*(v13 + 56))(a2 + v10, 0, 1, v12);
  }

  v6 = (a2 + *(v9 + 24));
  v3 = (a1 + *(v9 + 24));
  v5 = *v3;
  v7 = v3[1];
  sub_1B03B2000(*v3, v7);
  result = a2;
  *v6 = v5;
  v6[1] = v7;
  return result;
}

uint64_t sub_1B0828D04(uint64_t a1)
{
  v2 = _s6UploadVMa();
  v3 = *(v2 + 20);
  v5 = sub_1B0E43108();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  sub_1B0391D50(*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 8));
  return a1;
}

uint64_t sub_1B0828DF4(int a1)
{
  v6 = a1;
  v5[0] = sub_1B0E46A28();
  v5[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469E8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v5);
  return sub_1B0E44C88();
}

uint64_t sub_1B0828EE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v14 = sub_1B0829160;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while unwrapping an Optional value";
  v17 = "Message/MailboxPersistenceHelper+Types.swift";
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v18 = 0;
  v26 = sub_1B0E44B68();
  v22 = *(v26 - 8);
  v23 = v26 - 8;
  v19 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v7 - v19;
  v29 = MEMORY[0x1EEE9AC00](v20);
  v30 = v2;
  sub_1B0E44B48();
  sub_1B0394868();
  v25 = sub_1B0E44AE8();
  v27 = v3;
  (*(v22 + 8))(v24, v26);
  if ((v27 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v12 = v25;
    v13 = v27;
  }

  v4 = v18;
  v28[0] = v12;
  v28[1] = v13;
  v5 = sub_1B082922C();
  result = sub_1B039CA88(v14, 0, MEMORY[0x1E6969080], MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v10);
  v11 = result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v11;
    sub_1B075D3E8(v28);
    v9 = EncodedString.init(rawValue:)(v7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = &v31;
    v31 = v9;

    sub_1B039E440(v8);
    return v9;
  }

  return result;
}

unint64_t sub_1B082922C()
{
  v2 = qword_1EB6E3CE0;
  if (!qword_1EB6E3CE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3CE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08292E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0829420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B08296C8()
{
  v3 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B043B0C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B0829794()
{
  v2 = sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B08298A0()
{
  v2 = qword_1EB6E25C8;
  if (!qword_1EB6E25C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829934()
{
  v2 = qword_1EB6E25D0;
  if (!qword_1EB6E25D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08299C8()
{
  v2 = qword_1EB6DBBE8;
  if (!qword_1EB6DBBE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829A5C()
{
  v2 = qword_1EB6DBBF0;
  if (!qword_1EB6DBBF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829AF0()
{
  v2 = qword_1EB6E25D8;
  if (!qword_1EB6E25D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829B6C()
{
  v2 = qword_1EB6E25F0;
  if (!qword_1EB6E25F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0829BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v29 = a2;
  v31 = a3;
  v4 = v3;
  v24 = v4;
  v28 = 0;
  v27 = sub_1B086F1A8;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v35 = a2;
  v30 = sub_1B0E43308();
  v17 = *(v30 - 8);
  v18 = v30 - 8;
  v22 = *(v17 + 64);
  v19 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v20 = &v10 - v19;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](&v10 - v19);
  v26 = &v10 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v10 - v23;
  v34 = &v10 - v23;
  v33 = a1;
  v32 = v24;
  sub_1B0E432F8();
  sub_1B0E44FD8();
  v8 = v20;
  v11 = *(v24 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v11);
  (*(v17 + 16))(v8, v25, v30);
  v10 = sub_1B0E43258();
  v14 = *(v17 + 8);
  v13 = v17 + 8;
  v14(v20, v30);
  v12 = [v11 serverMessagesForIMAPUIDs:v10 limit:sub_1B0E43288() returnLastEntries:0];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  sub_1B086F238();
  v15 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v12);
  v14(v25, v30);
  return v15;
}

uint64_t sub_1B0829EAC()
{
  v8 = 0;
  v4 = _s6LoggerVMa_1();
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v3 - v3;
  v8 = v0;
  sub_1B074B69C(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, &v3 - v3);
  v1 = v5 + *(v4 + 20);
  v7 = *(v1 + 8);
  v6 = *(v1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v5);
  return v7;
}

id sub_1B0829F6C(uint64_t a1)
{
  v50 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v10 - v41;
  v43 = sub_1B0E42E68();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v10 - v46;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v46);
  v49 = &v10 - v48;
  v51 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v50);
  v52 = &v10 - v51;
  v53 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v54 = &v10 - v53;
  v55 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v10 - v55;
  v65 = v7;
  v64 = v1;
  v57 = sub_1B0721E7C(v7);
  if (!v57)
  {
    return 0;
  }

  v39 = v57;
  v37 = v57;
  v63 = v57;
  v8 = [v57 transferType];
  v35 = &v62;
  v62 = v8;
  v33 = &v61;
  v61 = 1;
  v34 = type metadata accessor for ECTransferMessageActionType();
  v36 = sub_1B071C014();
  v38 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v37);
  if (v38)
  {
    v32 = 1;
  }

  else
  {
    v60 = [v37 transferType];
    v59 = 0;
    v32 = sub_1B0E46AE8();
  }

  v31 = v32;
  MEMORY[0x1E69E5920](v37);
  if ((v31 & 1) == 0)
  {
    goto LABEL_23;
  }

  v29 = [v37 itemsToCopy];
  sub_1B071C094();
  v28 = sub_1B0E451B8();
  v58 = v28;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  v30 = sub_1B0E45748();

  MEMORY[0x1E69E5920](v29);
  if (v30)
  {
LABEL_23:
    MEMORY[0x1E69E5920](v37);
    return 0;
  }

  MEMORY[0x1E69E5928](v37);
  v21 = [v37 mailboxURL];
  sub_1B0E42DE8();
  v22 = v44[4];
  v23 = v44 + 4;
  v22(v56, v49, v43);
  MEMORY[0x1E69E5920](v37);
  v24 = v44[7];
  v25 = v44 + 7;
  v24(v56, 0, 1, v43);
  v26 = [v37 destinationMailboxURL];
  if (v26)
  {
    v20 = v26;
    v19 = v26;
    sub_1B0E42DE8();
    v22(v54, v47, v43);
    v24(v54, 0, 1, v43);
    MEMORY[0x1E69E5920](v19);
  }

  else
  {
    v24(v54, 1, 1, v43);
  }

  v16 = &v42[*(v40 + 48)];
  sub_1B071C180(v56, v42);
  sub_1B071C180(v54, v16);
  v17 = v44[6];
  v18 = v44 + 6;
  if (v17(v42, 1, v43) == 1)
  {
    if (v17(v16, 1, v43) == 1)
    {
      sub_1B06E3800(v42);
      v15 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1B071C180(v42, v52);
    if (v17(v16, 1, v43) != 1)
    {
      v22(v47, v16, v43);
      sub_1B071C3D4();
      v14 = sub_1B0E44A28();
      v13 = v44[1];
      v12 = v44 + 1;
      v13(v47, v43);
      v13(v52, v43);
      sub_1B06E3800(v42);
      v15 = v14;
      goto LABEL_18;
    }

    (v44[1])(v52, v43);
  }

  sub_1B071C2A8(v42);
  v15 = 0;
LABEL_18:
  v11 = v15;
  sub_1B06E3800(v54);
  sub_1B06E3800(v56);
  MEMORY[0x1E69E5920](v21);
  if (v11)
  {
    goto LABEL_23;
  }

  return v37;
}

uint64_t sub_1B082A818(int a1)
{
  v11 = a1;
  v10 = v1;
  v2 = sub_1B0E46A48();
  *v3 = a1;
  sub_1B0394964();
  v9 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v4 = sub_1B07F193C();
  sub_1B082A914(&v9, v7, v4);
  sub_1B039E440(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  sub_1B086F29C();
  sub_1B0E45728();

  return v8;
}

uint64_t sub_1B082A914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v10);
  sub_1B07CAF78(sub_1B0721718, 0, a2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v13);
  v8 = sub_1B0E451A8();

  v9 = [v10 messagesWithRemoteIDs_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v10);
  if (v9)
  {
    sub_1B07F1AFC();
    v6 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  sub_1B07F1AFC();
  return sub_1B0E46A48();
}

uint64_t sub_1B082AB08@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL;
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B082ABB4()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082ABF0()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082AC2C()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082AC68()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache);

  return v2;
}

uint64_t sub_1B082ACC4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B082AD24(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

void *sub_1B082ADC0@<X0>(void *a1@<X8>)
{
  __src = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  swift_beginAccess();
  memcpy(__dst, __src, sizeof(__dst));
  swift_endAccess();
  return memcpy(a1, __dst, 0x2DuLL);
}

uint64_t sub_1B082AE44(const void *a1)
{
  __dst = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  swift_beginAccess();
  memcpy(__dst, a1, 0x2DuLL);
  swift_endAccess();
  return sub_1B082AD94();
}

uint64_t (*sub_1B082AEBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B082AF2C;
}

uint64_t sub_1B082AF2C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  v2 = *(a1 + 24);
  swift_endAccess();
  return sub_1B082AD94();
}

uint64_t sub_1B082AF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1B082AFE8(a1, a2, a3, a4, a5);
}

uint64_t sub_1B082AFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a1;
  v106 = a2;
  v103 = a3;
  v104 = a4;
  v105 = a5;
  v86 = "Fatal error";
  v87 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v88 = "Message/MailboxPersistenceHelper.swift";
  v89 = *v5;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v123 = 0;
  v98 = 0;
  v90 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v91 = &v37 - v90;
  v92 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v37 - v92;
  v6 = _s6LoggerVMa_1();
  v94 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v37 - v94;
  v96 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v37 - v94);
  v97 = &v37 - v96;
  v134 = &v37 - v96;
  v99 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v98);
  v100 = &v37 - v99;
  v101 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v37 - v101;
  v107 = sub_1B0E42E68();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v116);
  v111 = &v37 - v110;
  v112 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v37 - v112;
  v133 = &v37 - v112;
  v132 = v12;
  v114 = *v13;
  v131 = v114;
  v130 = v14;
  v129 = v15;
  v128 = v16;
  v127 = v5;
  v115 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries;
  v17 = sub_1B0A220EC();
  v18 = v116;
  *(v5 + v115) = v17;
  v117 = [v18 URL];
  if (v117)
  {
    v84 = v117;
    v83 = v117;
    sub_1B0E42DE8();
    (*(v108 + 32))(v102, v111, v107);
    (*(v108 + 56))(v102, 0, 1, v107);
    MEMORY[0x1E69E5920](v83);
  }

  else
  {
    (*(v108 + 56))(v102, 1, 1, v107);
  }

  if ((*(v108 + 48))(v102, 1, v107) == 1)
  {
    sub_1B06E3800(v102);
    v82 = v85;
LABEL_42:
    v38 = v82;
    sub_1B039E440((v82 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries));
    v34 = *(*v38 + 48);
    v35 = *(*v38 + 52);
    swift_deallocPartialClassInstance();
    sub_1B039480C(v105);

    sub_1B03F4F08(v103);
    MEMORY[0x1E69E5920](v116);
    return 0;
  }

  v76 = *(v108 + 32);
  v77 = v108 + 32;
  v76(v113, v102, v107);
  v78 = *(v108 + 16);
  v79 = v108 + 16;
  v78(v100, v113, v107);
  (*(v108 + 56))(v100, 0, 1, v107);
  v81 = sub_1B07BF5C8(v100);
  v80 = v19;
  sub_1B06E3800(v100);
  if (!v81)
  {
    (*(v108 + 8))(v113, v107);
    v82 = v85;
    goto LABEL_42;
  }

  v74 = v81;
  v75 = v80;
  v71 = v80;
  v72 = v81;
  v125 = v81;
  v126 = v80;
  v20 = [v116 account];
  v73 = v20;
  if (v20)
  {
    v70 = v73;
    v67 = v73;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v68 = v21;
    if (v21)
    {
      v66 = v68;
    }

    else
    {
      MEMORY[0x1E69E5920](v67);
      v66 = 0;
    }

    v69 = v66;
  }

  else
  {
    v69 = 0;
  }

  v65 = v69;
  if (!v69)
  {

    (*(v108 + 8))(v113, v107);
    v82 = v85;
    goto LABEL_42;
  }

  v64 = v65;
  v62 = v65;
  v124 = v65;
  MEMORY[0x1E69E5928](v116);
  v63 = [v62 storeForMailboxUid_];
  MEMORY[0x1E69E5920](v116);
  if (v63)
  {
    v61 = v63;
    v58 = v63;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v59 = v22;
    if (v22)
    {
      v57 = v59;
    }

    else
    {
      MEMORY[0x1E69E5920](v58);
      v57 = 0;
    }

    v60 = v57;
  }

  else
  {
    v60 = 0;
  }

  v56 = v60;
  if (!v60)
  {
    MEMORY[0x1E69E5920](v62);

    (*(v108 + 8))(v113, v107);
    v82 = v85;
    goto LABEL_42;
  }

  v55 = v56;
  v53 = v56;
  v123 = v56;

  v23 = v105;
  v24 = v93;
  *(v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache) = v104;
  sub_1B0394784(v23, v24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v93, v72, v71, v97);
  sub_1B074B69C(v97, v95);
  v25 = sub_1B074E41C(v95, v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger);
  (v78)(v111, v113, v107, v25);
  v76((v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v111, v107);
  v26 = v91;
  v27 = v103;
  *(v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxRowID) = v114;
  sub_1B03F4D78(v27, v26);
  sub_1B04158DC(v91, v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence);
  MEMORY[0x1E69E5928](v116);
  v28 = v53;
  *(v85 + 16) = v116;
  MEMORY[0x1E69E5928](v28);
  v29 = v53;
  *(v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store) = v53;
  v30 = [v29 serverMessagePersistence];
  v54 = v30;
  if (v30)
  {
    v52 = v54;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v31 = v97;
  v32 = v114;
  *(v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence) = v52;
  v121 = v32;
  v51 = v135;
  sub_1B07C1964(&v121, v31, v135);
  memcpy(v120, v51, sizeof(v120));
  if (v120[45])
  {
    v48 = v136;
    sub_1B0A42A60(v136);
    memcpy(v119, v48, sizeof(v119));
    memcpy(v122, v119, sizeof(v122));
  }

  else
  {
    v49 = v118;
    v50 = 45;
    memcpy(v118, v120, 0x2DuLL);
    memcpy(v122, v118, sizeof(v122));
  }

  memcpy((v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata), v122, 0x2DuLL);
  MEMORY[0x1E69E5928](v53);
  v47 = [v53 library];
  MEMORY[0x1E69E5920](v53);
  if (v47)
  {
    v46 = v47;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v44 = v46;
  v45 = [v46 persistence];
  MEMORY[0x1E69E5920](v44);
  if (v45)
  {
    v43 = v45;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v39 = v43;
  v40 = [v43 messageChangeManager];
  MEMORY[0x1E69E5920](v39);
  v33 = v97;
  *(v85 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager) = v40;
  sub_1B074B764(v33);
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v62);

  (*(v108 + 8))(v113, v107);
  v41 = v85;
  sub_1B039480C(v105);

  sub_1B03F4F08(v103);
  MEMORY[0x1E69E5920](v116);
  return v41;
}

uint64_t sub_1B082BDC8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v4 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL;
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(v0 + v4);
  sub_1B03F4F08(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager));
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache);

  sub_1B074B764(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries));
  return v5;
}

uint64_t sub_1B082BEE4()
{
  v0 = *sub_1B082BDC8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B082BF48(uint64_t *a1)
{
  v167 = a1;
  v160 = sub_1B074E050;
  v168 = sub_1B0872F60;
  v171 = sub_1B0394C30;
  v172 = sub_1B0394C24;
  v174 = sub_1B074DFFC;
  v176 = sub_1B039BA88;
  v179 = sub_1B039BB94;
  v180 = sub_1B0394C24;
  v182 = sub_1B039BBA0;
  v184 = sub_1B039BC08;
  v186 = sub_1B06BA324;
  v189 = sub_1B074E0E4;
  v191 = sub_1B039BCF8;
  v193 = sub_1B0872F58;
  v194 = sub_1B039BC08;
  v198 = sub_1B0872FF0;
  v202 = sub_1B039BC08;
  v205 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v209 = sub_1B0399178;
  v211 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v215 = sub_1B039BA94;
  v217 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v221 = sub_1B0399178;
  v223 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v227 = sub_1B03991EC;
  v229 = sub_1B0398F5C;
  v231 = sub_1B0398F5C;
  v233 = sub_1B03993BC;
  v235 = sub_1B0398F5C;
  v237 = sub_1B0398F5C;
  v239 = sub_1B039BCEC;
  v241 = sub_1B0398F5C;
  v243 = sub_1B0398F5C;
  v245 = sub_1B03991EC;
  v247 = sub_1B0398F5C;
  v249 = sub_1B0398F5C;
  v252 = sub_1B03991EC;
  v265 = 0;
  v264 = 0;
  v141 = 0;
  v147 = 0;
  v142 = sub_1B0E42E68();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v146 = &v108 - v145;
  v155 = sub_1B0E439A8();
  v153 = *(v155 - 8);
  v154 = v155 - 8;
  v148 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v1 = &v108 - v148;
  v149 = &v108 - v148;
  v158 = _s6LoggerVMa_1();
  v151 = *(*(v158 - 8) + 64);
  v150 = (v151 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v167);
  v159 = &v108 - v150;
  v152 = (v151 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v156 = &v108 - v152;
  v265 = v3;
  v264 = v4;
  v157 = &unk_1EB737000;
  sub_1B074B69C(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, &v108 - v152);
  (*(v153 + 16))(v1, v156, v155);
  sub_1B074B764(v156);

  sub_1B074B69C(v170 + v157[299], v159);
  v5 = (v159 + *(v158 + 20));
  v163 = *v5;
  v164 = *(v5 + 1);
  v165 = *(v5 + 1);
  v166 = *(v5 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v159);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v162 = 36;
  v200 = 7;
  v6 = swift_allocObject();
  v7 = v164;
  v8 = v165;
  v9 = v166;
  v175 = v6;
  *(v6 + 16) = v163;
  *(v6 + 20) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = swift_allocObject();
  v11 = v164;
  v12 = v165;
  v13 = v166;
  v161 = v10;
  *(v10 + 16) = v163;
  *(v10 + 20) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v13;

  v199 = 32;
  v14 = swift_allocObject();
  v15 = v161;
  v183 = v14;
  *(v14 + 16) = v160;
  *(v14 + 24) = v15;
  sub_1B0394868();
  sub_1B0394868();

  v16 = swift_allocObject();
  v17 = v164;
  v18 = v165;
  v19 = v166;
  v190 = v16;
  *(v16 + 16) = v163;
  *(v16 + 20) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v19;

  v169 = swift_allocObject();
  memcpy((v169 + 16), v167, 0x21uLL);

  v20 = swift_allocObject();
  v21 = v169;
  v201 = v20;
  *(v20 + 16) = v168;
  *(v20 + 24) = v21;
  sub_1B0394868();
  sub_1B0394868();

  v22 = sub_1B0E43988();
  v23 = v170;
  v256 = v22;
  v257 = sub_1B0E45908();
  v196 = 17;
  v206 = swift_allocObject();
  v178 = 16;
  *(v206 + 16) = 16;
  v208 = swift_allocObject();
  v197 = 4;
  *(v208 + 16) = 4;
  v24 = swift_allocObject();
  v173 = v24;
  *(v24 + 16) = v171;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  v26 = v173;
  v210 = v25;
  *(v25 + 16) = v172;
  *(v25 + 24) = v26;
  v212 = swift_allocObject();
  *(v212 + 16) = 0;
  v214 = swift_allocObject();
  *(v214 + 16) = 1;
  v27 = swift_allocObject();
  v28 = v175;
  v177 = v27;
  *(v27 + 16) = v174;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v177;
  v216 = v29;
  *(v29 + 16) = v176;
  *(v29 + 24) = v30;
  v218 = swift_allocObject();
  *(v218 + 16) = v178;
  v220 = swift_allocObject();
  *(v220 + 16) = v197;
  v31 = swift_allocObject();
  v181 = v31;
  *(v31 + 16) = v179;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v181;
  v222 = v32;
  *(v32 + 16) = v180;
  *(v32 + 24) = v33;
  v224 = swift_allocObject();
  *(v224 + 16) = 0;
  v226 = swift_allocObject();
  *(v226 + 16) = v197;
  v34 = swift_allocObject();
  v35 = v183;
  v185 = v34;
  *(v34 + 16) = v182;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v185;
  v228 = v36;
  *(v36 + 16) = v184;
  *(v36 + 24) = v37;
  v230 = swift_allocObject();
  *(v230 + 16) = 112;
  v232 = swift_allocObject();
  v188 = 8;
  *(v232 + 16) = 8;
  v204 = 24;
  v187 = swift_allocObject();
  *(v187 + 16) = 0x786F626C69616DLL;
  v38 = swift_allocObject();
  v39 = v187;
  v234 = v38;
  *(v38 + 16) = v186;
  *(v38 + 24) = v39;
  v236 = swift_allocObject();
  *(v236 + 16) = 37;
  v238 = swift_allocObject();
  *(v238 + 16) = v188;
  v40 = swift_allocObject();
  v41 = v190;
  v192 = v40;
  *(v40 + 16) = v189;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v192;
  v240 = v42;
  *(v42 + 16) = v191;
  *(v42 + 24) = v43;
  v242 = swift_allocObject();
  *(v242 + 16) = 0;
  v244 = swift_allocObject();
  *(v244 + 16) = v197;
  v44 = swift_allocObject();
  v195 = v44;
  *(v44 + 16) = v193;
  *(v44 + 24) = v23;
  v45 = swift_allocObject();
  v46 = v195;
  v246 = v45;
  *(v45 + 16) = v194;
  *(v45 + 24) = v46;
  v248 = swift_allocObject();
  *(v248 + 16) = 0;
  v250 = swift_allocObject();
  *(v250 + 16) = v197;
  v47 = swift_allocObject();
  v48 = v201;
  v203 = v47;
  *(v47 + 16) = v198;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v203;
  v253 = v49;
  *(v49 + 16) = v202;
  *(v49 + 24) = v50;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v251 = sub_1B0E46A48();
  v254 = v51;

  v52 = v206;
  v53 = v254;
  *v254 = v205;
  v53[1] = v52;

  v54 = v208;
  v55 = v254;
  v254[2] = v207;
  v55[3] = v54;

  v56 = v210;
  v57 = v254;
  v254[4] = v209;
  v57[5] = v56;

  v58 = v212;
  v59 = v254;
  v254[6] = v211;
  v59[7] = v58;

  v60 = v214;
  v61 = v254;
  v254[8] = v213;
  v61[9] = v60;

  v62 = v216;
  v63 = v254;
  v254[10] = v215;
  v63[11] = v62;

  v64 = v218;
  v65 = v254;
  v254[12] = v217;
  v65[13] = v64;

  v66 = v220;
  v67 = v254;
  v254[14] = v219;
  v67[15] = v66;

  v68 = v222;
  v69 = v254;
  v254[16] = v221;
  v69[17] = v68;

  v70 = v224;
  v71 = v254;
  v254[18] = v223;
  v71[19] = v70;

  v72 = v226;
  v73 = v254;
  v254[20] = v225;
  v73[21] = v72;

  v74 = v228;
  v75 = v254;
  v254[22] = v227;
  v75[23] = v74;

  v76 = v230;
  v77 = v254;
  v254[24] = v229;
  v77[25] = v76;

  v78 = v232;
  v79 = v254;
  v254[26] = v231;
  v79[27] = v78;

  v80 = v234;
  v81 = v254;
  v254[28] = v233;
  v81[29] = v80;

  v82 = v236;
  v83 = v254;
  v254[30] = v235;
  v83[31] = v82;

  v84 = v238;
  v85 = v254;
  v254[32] = v237;
  v85[33] = v84;

  v86 = v240;
  v87 = v254;
  v254[34] = v239;
  v87[35] = v86;

  v88 = v242;
  v89 = v254;
  v254[36] = v241;
  v89[37] = v88;

  v90 = v244;
  v91 = v254;
  v254[38] = v243;
  v91[39] = v90;

  v92 = v246;
  v93 = v254;
  v254[40] = v245;
  v93[41] = v92;

  v94 = v248;
  v95 = v254;
  v254[42] = v247;
  v95[43] = v94;

  v96 = v250;
  v97 = v254;
  v254[44] = v249;
  v97[45] = v96;

  v98 = v253;
  v99 = v254;
  v254[46] = v252;
  v99[47] = v98;
  sub_1B0394964();

  if (os_log_type_enabled(v256, v257))
  {
    v100 = v141;
    v134 = sub_1B0E45D78();
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v135 = sub_1B03949A8(0);
    v136 = sub_1B03949A8(1);
    v137 = &v262;
    v262 = v134;
    v138 = &v261;
    v261 = v135;
    v139 = &v260;
    v260 = v136;
    sub_1B0394A48(3, &v262);
    sub_1B0394A48(8, v137);
    v258 = v205;
    v259 = v206;
    sub_1B03949FC(&v258, v137, v138, v139);
    v140 = v100;
    if (v100)
    {

      __break(1u);
    }

    else
    {
      v258 = v207;
      v259 = v208;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v132 = 0;
      v258 = v209;
      v259 = v210;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v131 = 0;
      v258 = v211;
      v259 = v212;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v130 = 0;
      v258 = v213;
      v259 = v214;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v129 = 0;
      v258 = v215;
      v259 = v216;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v128 = 0;
      v258 = v217;
      v259 = v218;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v127 = 0;
      v258 = v219;
      v259 = v220;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v126 = 0;
      v258 = v221;
      v259 = v222;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v125 = 0;
      v258 = v223;
      v259 = v224;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v124 = 0;
      v258 = v225;
      v259 = v226;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v123 = 0;
      v258 = v227;
      v259 = v228;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v122 = 0;
      v258 = v229;
      v259 = v230;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v121 = 0;
      v258 = v231;
      v259 = v232;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v120 = 0;
      v258 = v233;
      v259 = v234;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v119 = 0;
      v258 = v235;
      v259 = v236;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v118 = 0;
      v258 = v237;
      v259 = v238;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v117 = 0;
      v258 = v239;
      v259 = v240;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v116 = 0;
      v258 = v241;
      v259 = v242;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v115 = 0;
      v258 = v243;
      v259 = v244;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v114 = 0;
      v258 = v245;
      v259 = v246;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v113 = 0;
      v258 = v247;
      v259 = v248;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v112 = 0;
      v258 = v249;
      v259 = v250;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      v111 = 0;
      v258 = v252;
      v259 = v253;
      sub_1B03949FC(&v258, &v262, &v261, &v260);
      _os_log_impl(&dword_1B0389000, v256, v257, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Deleting all server messages due to validity change: %u → 0x%x", v134, 0x37u);
      sub_1B03998A8(v135);
      sub_1B03998A8(v136);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v101 = v146;
  MEMORY[0x1E69E5920](v256);
  (*(v153 + 8))(v149, v155);
  v109 = *(v170 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v109);
  (*(v143 + 16))(v101, v170 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v142);
  v108 = sub_1B0E42D58();
  (*(v143 + 8))(v146, v142);
  [v109 reflectAllMessagesDeletedInMailboxURL_];
  MEMORY[0x1E69E5920](v108);
  MEMORY[0x1E69E5920](v109);
  v102 = *(v167 + 4);
  v103 = v167[1];
  v104 = *(v167 + 16);
  v105 = v167[3];
  v106 = *(v167 + 32);
  LODWORD(v263) = *v167;
  BYTE4(v263) = v102 & 1;
  v110 = v266;
  sub_1B0A42B34(v263, v103, v104 & 1, v105, v106 & 1, 0, 1, v266);
  return sub_1B082AE44(v110);
}

uint64_t sub_1B082E174(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v2);
  v3 = [v2 uidValidity];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B082E1D8(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return v2;
}

uint64_t sub_1B082E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v27 = a3;
  v28 = a4;
  v25 = sub_1B087314C;
  v26 = sub_1B0873158;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v70 = a2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v29 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v15 - v29;
  v69 = &v15 - v29;
  v68 = __PAIR64__(v6, v35);
  v67 = v7;
  v66 = v8;
  v65 = v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v31 = sub_1B0E46A48();
  v40 = sub_1B041C1E8();
  v38 = &type metadata for UID;
  MessageIdentifierSet.init(arrayLiteral:)(v31, &type metadata for UID);
  v64 = 0;
  v32 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v32);
  v62 = v35;
  MessageIdentifierRange.lowerBound.getter(v36, &v61);
  v33 = &v60;
  v60 = v61;
  v39 = sub_1B03948EC();
  v37 = MEMORY[0x1E69E6530];
  BinaryInteger.init<A>(_:)(v33, MEMORY[0x1E69E6530], v38, v39, v40);
  v34 = v63;
  v58 = v35;
  MessageIdentifierRange.upperBound.getter(v36, &v57);
  v56 = v57;
  BinaryInteger.init<A>(_:)(&v56, v37, v38, v39, v40);
  v41 = v59;
  v54 = v35;
  MessageIdentifierRange.lowerBound.getter(v36, &v53);
  v52 = v53;
  result = BinaryInteger.init<A>(_:)(&v52, v37, v38, v39, v40);
  v42 = v41 - v55;
  if (__OFSUB__(v41, v55))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_12;
  }

  v17 = 32;
  v18 = 7;
  v12 = swift_allocObject();
  v19 = v12;
  *(v12 + 16) = v30;
  *(v12 + 24) = &v64;

  v13 = swift_allocObject();
  v14 = v19;
  v21 = v13;
  *(v13 + 16) = v25;
  *(v13 + 24) = v14;

  v50 = v26;
  v51 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_1B082E8F4;
  v49 = &block_descriptor_6;
  v20 = _Block_copy(&aBlock);

  v43 = v34;
  v44 = v23;
  [v32 enumerateMessageBatchLimitUIDsWithWindow:v34 batchSize:v23 newUIDCount:v27 block:{v28, v20}];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](v32);
    sub_1B03D08AC(v30, v24);
    v16 = v64;
    sub_1B03D09B8(v30);

    return v16;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B082E74C(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = 0;
  v12 = 0;
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v19 = a1;
  v9 = sub_1B041C1E8();
  v4 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v19, &type metadata for UID, MEMORY[0x1E69E7668], v9, v4, &v20);
  if ((v21 & 1) == 0)
  {
    v12 = v20;
    v10 = v20;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v11, &v10, v5);
  }

  v17 = a2;
  v18 = 0;
  v16 = a2;
  v14 = *a4;
  v13 = a2;
  result = sub_1B0E46B68();
  *a4 = v15;
  return result;
}

uint64_t sub_1B082E92C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v373 = a1;
  v403 = a2;
  v371 = a3;
  v372 = a4;
  v378 = a5;
  v395 = sub_1B074E050;
  v404 = sub_1B08731F4;
  v406 = sub_1B0394C30;
  v407 = sub_1B0394C24;
  v410 = sub_1B074DFFC;
  v412 = sub_1B039BA88;
  v415 = sub_1B039BB94;
  v416 = sub_1B0394C24;
  v419 = sub_1B039BBA0;
  v421 = sub_1B039BC08;
  v423 = 0x786F626C69616DLL;
  v424 = sub_1B06BA324;
  v426 = sub_1B074E0E4;
  v428 = sub_1B039BCF8;
  v430 = sub_1B08731EC;
  v432 = sub_1B03B0DF8;
  v436 = sub_1B074EF98;
  v440 = sub_1B039BCF8;
  v443 = sub_1B0398F5C;
  v445 = sub_1B0398F5C;
  v447 = sub_1B0399178;
  v449 = sub_1B0398F5C;
  v451 = sub_1B0398F5C;
  v453 = sub_1B039BA94;
  v455 = sub_1B0398F5C;
  v457 = sub_1B0398F5C;
  v459 = sub_1B0399178;
  v461 = sub_1B0398F5C;
  v463 = sub_1B0398F5C;
  v465 = sub_1B03991EC;
  v467 = sub_1B0398F5C;
  v469 = sub_1B0398F5C;
  v471 = sub_1B03993BC;
  v473 = sub_1B0398F5C;
  v475 = sub_1B0398F5C;
  v477 = sub_1B039BCEC;
  v479 = sub_1B0398F5C;
  v481 = sub_1B0398F5C;
  v483 = sub_1B0399260;
  v485 = sub_1B0398F5C;
  v487 = sub_1B0398F5C;
  v490 = sub_1B039BCEC;
  v330 = sub_1B074E050;
  v331 = sub_1B08731FC;
  v332 = sub_1B087321C;
  v333 = sub_1B0394C24;
  v334 = sub_1B074DFFC;
  v335 = sub_1B039BA88;
  v336 = sub_1B0394C24;
  v337 = sub_1B039BBA0;
  v338 = sub_1B039BC08;
  v339 = sub_1B06BA324;
  v340 = sub_1B074E0E4;
  v341 = sub_1B039BCF8;
  v342 = sub_1B0873228;
  v343 = sub_1B039BCF8;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0399178;
  v347 = sub_1B0398F5C;
  v348 = sub_1B0398F5C;
  v349 = sub_1B039BA94;
  v350 = sub_1B0398F5C;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0399178;
  v353 = sub_1B0398F5C;
  v354 = sub_1B0398F5C;
  v355 = sub_1B03991EC;
  v356 = sub_1B0398F5C;
  v357 = sub_1B0398F5C;
  v358 = sub_1B03993BC;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B039BCEC;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B039BCEC;
  v520 = 0;
  v519 = 0;
  v517 = 0;
  v518 = 0;
  v516 = 0;
  v515 = 0;
  memset(&v507[7], 0, 0x38uLL);
  v506 = 0;
  v367 = 0;
  v365 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v366 = (v206 - v365);
  v388 = sub_1B0E439A8();
  v386 = *(v388 - 8);
  v387 = v388 - 8;
  v368 = (v386[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v367);
  v369 = v206 - v368;
  v370 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v385 = v206 - v370;
  v393 = _s6LoggerVMa_1();
  v374 = (*(*(v393 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v373);
  v375 = v206 - v374;
  v376 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v394 = v206 - v376;
  v377 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v391 = v206 - v377;
  v520 = v12;
  v519 = v13;
  v517 = v14;
  v409 = 1;
  v518 = v15 & 1;
  v516 = v16;
  v515 = v5;
  sub_1B0831978(v12, v13);
  v379 = v508;
  v380 = v510;
  v381 = v512;
  v382 = v514;
  v507[7] = v508;
  v507[8] = v509;
  v507[9] = v510;
  v507[10] = v511;
  v507[11] = v512;
  v507[12] = v513;
  v507[13] = v514;
  v384 = v507;
  v507[0] = v508;
  v507[1] = v509;
  v507[2] = v510;
  v507[3] = v511;
  v507[4] = v512;
  v507[5] = v513;
  v507[6] = v514;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2650, &unk_1B0E9DDA0);
  v17 = sub_1B0873164();
  sub_1B0813C80(v384, v383, v17);
  v18 = v385;
  v392 = &unk_1EB737000;
  sub_1B074B69C(v402 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v391);
  v389 = v386[2];
  v390 = v386 + 2;
  v389(v18, v391, v388);
  sub_1B074B764(v391);

  sub_1B074B69C(v402 + v392[299], v394);
  v19 = (v394 + *(v393 + 20));
  v398 = *v19;
  v399 = *(v19 + 1);
  v400 = *(v19 + 1);
  v401 = *(v19 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v394);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v397 = 36;
  v438 = 7;
  v20 = swift_allocObject();
  v21 = v399;
  v22 = v400;
  v23 = v401;
  v411 = v20;
  *(v20 + 16) = v398;
  *(v20 + 20) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v23;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = swift_allocObject();
  v25 = v399;
  v26 = v400;
  v27 = v401;
  v396 = v24;
  *(v24 + 16) = v398;
  *(v24 + 20) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = v27;

  v437 = 32;
  v28 = swift_allocObject();
  v29 = v396;
  v420 = v28;
  *(v28 + 16) = v395;
  *(v28 + 24) = v29;
  sub_1B0394868();
  sub_1B0394868();

  v30 = swift_allocObject();
  v31 = v399;
  v32 = v400;
  v33 = v401;
  v427 = v30;
  *(v30 + 16) = v398;
  *(v30 + 20) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v33;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v442 = 24;
  v431 = swift_allocObject();
  *(v431 + 16) = v403;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v405 = swift_allocObject();
  *(v405 + 16) = v403;

  v34 = swift_allocObject();
  v35 = v405;
  v439 = v34;
  *(v34 + 16) = v404;
  *(v34 + 24) = v35;

  v494 = sub_1B0E43988();
  v495 = sub_1B0E45908();
  v434 = 17;
  v444 = swift_allocObject();
  v414 = 16;
  *(v444 + 16) = 16;
  v446 = swift_allocObject();
  v418 = 4;
  *(v446 + 16) = 4;
  v36 = swift_allocObject();
  v408 = v36;
  *(v36 + 16) = v406;
  *(v36 + 24) = 0;
  v37 = swift_allocObject();
  v38 = v408;
  v448 = v37;
  *(v37 + 16) = v407;
  *(v37 + 24) = v38;
  v450 = swift_allocObject();
  *(v450 + 16) = 0;
  v452 = swift_allocObject();
  *(v452 + 16) = v409;
  v39 = swift_allocObject();
  v40 = v411;
  v413 = v39;
  *(v39 + 16) = v410;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v413;
  v454 = v41;
  *(v41 + 16) = v412;
  *(v41 + 24) = v42;
  v456 = swift_allocObject();
  *(v456 + 16) = v414;
  v458 = swift_allocObject();
  *(v458 + 16) = v418;
  v43 = swift_allocObject();
  v417 = v43;
  *(v43 + 16) = v415;
  *(v43 + 24) = 0;
  v44 = swift_allocObject();
  v45 = v417;
  v460 = v44;
  *(v44 + 16) = v416;
  *(v44 + 24) = v45;
  v462 = swift_allocObject();
  *(v462 + 16) = 0;
  v464 = swift_allocObject();
  *(v464 + 16) = v418;
  v46 = swift_allocObject();
  v47 = v420;
  v422 = v46;
  *(v46 + 16) = v419;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v422;
  v466 = v48;
  *(v48 + 16) = v421;
  *(v48 + 24) = v49;
  v468 = swift_allocObject();
  *(v468 + 16) = 112;
  v470 = swift_allocObject();
  v435 = 8;
  *(v470 + 16) = 8;
  v425 = swift_allocObject();
  *(v425 + 16) = v423;
  v50 = swift_allocObject();
  v51 = v425;
  v472 = v50;
  *(v50 + 16) = v424;
  *(v50 + 24) = v51;
  v474 = swift_allocObject();
  *(v474 + 16) = 37;
  v476 = swift_allocObject();
  *(v476 + 16) = v435;
  v52 = swift_allocObject();
  v53 = v427;
  v429 = v52;
  *(v52 + 16) = v426;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v429;
  v478 = v54;
  *(v54 + 16) = v428;
  *(v54 + 24) = v55;
  v480 = swift_allocObject();
  *(v480 + 16) = 0;
  v482 = swift_allocObject();
  *(v482 + 16) = v435;
  v56 = swift_allocObject();
  v57 = v431;
  v433 = v56;
  *(v56 + 16) = v430;
  *(v56 + 24) = v57;
  v58 = swift_allocObject();
  v59 = v433;
  v484 = v58;
  *(v58 + 16) = v432;
  *(v58 + 24) = v59;
  v486 = swift_allocObject();
  *(v486 + 16) = 34;
  v488 = swift_allocObject();
  *(v488 + 16) = v435;
  v60 = swift_allocObject();
  v61 = v439;
  v441 = v60;
  *(v60 + 16) = v436;
  *(v60 + 24) = v61;
  v62 = swift_allocObject();
  v63 = v441;
  v491 = v62;
  *(v62 + 16) = v440;
  *(v62 + 24) = v63;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v489 = sub_1B0E46A48();
  v492 = v64;

  v65 = v444;
  v66 = v492;
  *v492 = v443;
  v66[1] = v65;

  v67 = v446;
  v68 = v492;
  v492[2] = v445;
  v68[3] = v67;

  v69 = v448;
  v70 = v492;
  v492[4] = v447;
  v70[5] = v69;

  v71 = v450;
  v72 = v492;
  v492[6] = v449;
  v72[7] = v71;

  v73 = v452;
  v74 = v492;
  v492[8] = v451;
  v74[9] = v73;

  v75 = v454;
  v76 = v492;
  v492[10] = v453;
  v76[11] = v75;

  v77 = v456;
  v78 = v492;
  v492[12] = v455;
  v78[13] = v77;

  v79 = v458;
  v80 = v492;
  v492[14] = v457;
  v80[15] = v79;

  v81 = v460;
  v82 = v492;
  v492[16] = v459;
  v82[17] = v81;

  v83 = v462;
  v84 = v492;
  v492[18] = v461;
  v84[19] = v83;

  v85 = v464;
  v86 = v492;
  v492[20] = v463;
  v86[21] = v85;

  v87 = v466;
  v88 = v492;
  v492[22] = v465;
  v88[23] = v87;

  v89 = v468;
  v90 = v492;
  v492[24] = v467;
  v90[25] = v89;

  v91 = v470;
  v92 = v492;
  v492[26] = v469;
  v92[27] = v91;

  v93 = v472;
  v94 = v492;
  v492[28] = v471;
  v94[29] = v93;

  v95 = v474;
  v96 = v492;
  v492[30] = v473;
  v96[31] = v95;

  v97 = v476;
  v98 = v492;
  v492[32] = v475;
  v98[33] = v97;

  v99 = v478;
  v100 = v492;
  v492[34] = v477;
  v100[35] = v99;

  v101 = v480;
  v102 = v492;
  v492[36] = v479;
  v102[37] = v101;

  v103 = v482;
  v104 = v492;
  v492[38] = v481;
  v104[39] = v103;

  v105 = v484;
  v106 = v492;
  v492[40] = v483;
  v106[41] = v105;

  v107 = v486;
  v108 = v492;
  v492[42] = v485;
  v108[43] = v107;

  v109 = v488;
  v110 = v492;
  v492[44] = v487;
  v110[45] = v109;

  v111 = v491;
  v112 = v492;
  v492[46] = v490;
  v112[47] = v111;
  sub_1B0394964();

  if (os_log_type_enabled(v494, v495))
  {
    v322 = sub_1B0E45D78();
    v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v323 = sub_1B03949A8(0);
    v324 = sub_1B03949A8(2);
    v325 = &v500;
    v500 = v322;
    v326 = &v499;
    v499 = v323;
    v327 = &v498;
    v498 = v324;
    sub_1B0394A48(3, &v500);
    sub_1B0394A48(8, v325);
    v113 = v329;
    v496 = v443;
    v497 = v444;
    sub_1B03949FC(&v496, v325, v326, v327);
    v328 = v113;
    if (v113)
    {

      __break(1u);
    }

    else
    {
      v496 = v445;
      v497 = v446;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v319 = 0;
      v496 = v447;
      v497 = v448;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v318 = 0;
      v496 = v449;
      v497 = v450;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v317 = 0;
      v496 = v451;
      v497 = v452;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v316 = 0;
      v496 = v453;
      v497 = v454;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v315 = 0;
      v496 = v455;
      v497 = v456;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v314 = 0;
      v496 = v457;
      v497 = v458;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v313 = 0;
      v496 = v459;
      v497 = v460;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v312 = 0;
      v496 = v461;
      v497 = v462;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v311 = 0;
      v496 = v463;
      v497 = v464;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v310 = 0;
      v496 = v465;
      v497 = v466;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v309 = 0;
      v496 = v467;
      v497 = v468;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v308 = 0;
      v496 = v469;
      v497 = v470;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v307 = 0;
      v496 = v471;
      v497 = v472;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v306 = 0;
      v496 = v473;
      v497 = v474;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v305 = 0;
      v496 = v475;
      v497 = v476;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v304 = 0;
      v496 = v477;
      v497 = v478;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v303 = 0;
      v496 = v479;
      v497 = v480;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v302 = 0;
      v496 = v481;
      v497 = v482;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v301 = 0;
      v496 = v483;
      v497 = v484;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v300 = 0;
      v496 = v485;
      v497 = v486;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v299 = 0;
      v496 = v487;
      v497 = v488;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v298 = 0;
      v496 = v490;
      v497 = v491;
      sub_1B03949FC(&v496, &v500, &v499, &v498);
      v297 = 0;
      _os_log_impl(&dword_1B0389000, v494, v495, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Created %ld new message(s) with UIDs %{public}s.", v322, 0x3Fu);
      sub_1B03998A8(v323);
      sub_1B03998A8(v324);
      sub_1B0E45D58();

      v320 = v297;
    }
  }

  else
  {

    v320 = v329;
  }

  v292 = v320;
  MEMORY[0x1E69E5920](v494);
  v293 = v386[1];
  v294 = v386 + 1;
  v293(v385, v388);
  sub_1B07F3F74(v378, v366);
  v296 = sub_1B0829EAC();
  v295 = v114;
  sub_1B074B69C(v402 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v394);
  sub_1B07FFA2C(v296, v295, v394);
  sub_1B074B764(v394);

  sub_1B07F45A0(v366);
  if (v372)
  {
    v290 = v292;
  }

  else
  {
    v291 = v371;
    v115 = v369;
    v244 = v371;
    v506 = v371;
    v237 = &unk_1EB737000;
    sub_1B074B69C(v402 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v375);
    v389(v115, v375, v388);
    sub_1B074B764(v375);

    sub_1B074B69C(v402 + v237[299], v394);
    v116 = (v394 + *(v393 + 20));
    v240 = *v116;
    v241 = *(v116 + 1);
    v242 = *(v116 + 1);
    v243 = *(v116 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v394);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v239 = 36;
    v262 = 7;
    v117 = swift_allocObject();
    v118 = v241;
    v119 = v242;
    v120 = v243;
    v248 = v117;
    *(v117 + 16) = v240;
    *(v117 + 20) = v118;
    *(v117 + 24) = v119;
    *(v117 + 32) = v120;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v121 = swift_allocObject();
    v122 = v241;
    v123 = v242;
    v124 = v243;
    v238 = v121;
    *(v121 + 16) = v240;
    *(v121 + 20) = v122;
    *(v121 + 24) = v123;
    *(v121 + 32) = v124;

    v261 = 32;
    v125 = swift_allocObject();
    v126 = v238;
    v253 = v125;
    *(v125 + 16) = v330;
    *(v125 + 24) = v126;
    sub_1B0394868();
    sub_1B0394868();

    v127 = swift_allocObject();
    v128 = v241;
    v129 = v242;
    v130 = v243;
    v257 = v127;
    *(v127 + 16) = v240;
    *(v127 + 20) = v128;
    *(v127 + 24) = v129;
    *(v127 + 32) = v130;

    v255 = 24;
    v131 = swift_allocObject();
    v132 = HIDWORD(v244);
    v246 = v131;
    *(v131 + 16) = v244;
    *(v131 + 20) = v132;

    v133 = swift_allocObject();
    v134 = v246;
    v245 = v133;
    *(v133 + 16) = v331;
    *(v133 + 24) = v134;

    v135 = swift_allocObject();
    v136 = v245;
    v263 = v135;
    *(v135 + 16) = v332;
    *(v135 + 24) = v136;

    v288 = sub_1B0E43988();
    v289 = sub_1B0E458D8();
    v259 = 17;
    v265 = swift_allocObject();
    v250 = 16;
    *(v265 + 16) = 16;
    v266 = swift_allocObject();
    v252 = 4;
    *(v266 + 16) = 4;
    v137 = swift_allocObject();
    v247 = v137;
    *(v137 + 16) = v406;
    *(v137 + 24) = 0;
    v138 = swift_allocObject();
    v139 = v247;
    v267 = v138;
    *(v138 + 16) = v333;
    *(v138 + 24) = v139;
    v268 = swift_allocObject();
    *(v268 + 16) = 0;
    v269 = swift_allocObject();
    *(v269 + 16) = 1;
    v140 = swift_allocObject();
    v141 = v248;
    v249 = v140;
    *(v140 + 16) = v334;
    *(v140 + 24) = v141;
    v142 = swift_allocObject();
    v143 = v249;
    v270 = v142;
    *(v142 + 16) = v335;
    *(v142 + 24) = v143;
    v271 = swift_allocObject();
    *(v271 + 16) = v250;
    v272 = swift_allocObject();
    *(v272 + 16) = v252;
    v144 = swift_allocObject();
    v251 = v144;
    *(v144 + 16) = v415;
    *(v144 + 24) = 0;
    v145 = swift_allocObject();
    v146 = v251;
    v273 = v145;
    *(v145 + 16) = v336;
    *(v145 + 24) = v146;
    v274 = swift_allocObject();
    *(v274 + 16) = 0;
    v275 = swift_allocObject();
    *(v275 + 16) = v252;
    v147 = swift_allocObject();
    v148 = v253;
    v254 = v147;
    *(v147 + 16) = v337;
    *(v147 + 24) = v148;
    v149 = swift_allocObject();
    v150 = v254;
    v276 = v149;
    *(v149 + 16) = v338;
    *(v149 + 24) = v150;
    v277 = swift_allocObject();
    *(v277 + 16) = 112;
    v278 = swift_allocObject();
    v260 = 8;
    *(v278 + 16) = 8;
    v256 = swift_allocObject();
    *(v256 + 16) = v423;
    v151 = swift_allocObject();
    v152 = v256;
    v279 = v151;
    *(v151 + 16) = v339;
    *(v151 + 24) = v152;
    v280 = swift_allocObject();
    *(v280 + 16) = 37;
    v281 = swift_allocObject();
    *(v281 + 16) = v260;
    v153 = swift_allocObject();
    v154 = v257;
    v258 = v153;
    *(v153 + 16) = v340;
    *(v153 + 24) = v154;
    v155 = swift_allocObject();
    v156 = v258;
    v282 = v155;
    *(v155 + 16) = v341;
    *(v155 + 24) = v156;
    v283 = swift_allocObject();
    *(v283 + 16) = 34;
    v284 = swift_allocObject();
    *(v284 + 16) = v260;
    v157 = swift_allocObject();
    v158 = v263;
    v264 = v157;
    *(v157 + 16) = v342;
    *(v157 + 24) = v158;
    v159 = swift_allocObject();
    v160 = v264;
    v286 = v159;
    *(v159 + 16) = v343;
    *(v159 + 24) = v160;
    v285 = sub_1B0E46A48();
    v287 = v161;

    v162 = v265;
    v163 = v287;
    *v287 = v344;
    v163[1] = v162;

    v164 = v266;
    v165 = v287;
    v287[2] = v345;
    v165[3] = v164;

    v166 = v267;
    v167 = v287;
    v287[4] = v346;
    v167[5] = v166;

    v168 = v268;
    v169 = v287;
    v287[6] = v347;
    v169[7] = v168;

    v170 = v269;
    v171 = v287;
    v287[8] = v348;
    v171[9] = v170;

    v172 = v270;
    v173 = v287;
    v287[10] = v349;
    v173[11] = v172;

    v174 = v271;
    v175 = v287;
    v287[12] = v350;
    v175[13] = v174;

    v176 = v272;
    v177 = v287;
    v287[14] = v351;
    v177[15] = v176;

    v178 = v273;
    v179 = v287;
    v287[16] = v352;
    v179[17] = v178;

    v180 = v274;
    v181 = v287;
    v287[18] = v353;
    v181[19] = v180;

    v182 = v275;
    v183 = v287;
    v287[20] = v354;
    v183[21] = v182;

    v184 = v276;
    v185 = v287;
    v287[22] = v355;
    v185[23] = v184;

    v186 = v277;
    v187 = v287;
    v287[24] = v356;
    v187[25] = v186;

    v188 = v278;
    v189 = v287;
    v287[26] = v357;
    v189[27] = v188;

    v190 = v279;
    v191 = v287;
    v287[28] = v358;
    v191[29] = v190;

    v192 = v280;
    v193 = v287;
    v287[30] = v359;
    v193[31] = v192;

    v194 = v281;
    v195 = v287;
    v287[32] = v360;
    v195[33] = v194;

    v196 = v282;
    v197 = v287;
    v287[34] = v361;
    v197[35] = v196;

    v198 = v283;
    v199 = v287;
    v287[36] = v362;
    v199[37] = v198;

    v200 = v284;
    v201 = v287;
    v287[38] = v363;
    v201[39] = v200;

    v202 = v286;
    v203 = v287;
    v287[40] = v364;
    v203[41] = v202;
    sub_1B0394964();

    if (os_log_type_enabled(v288, v289))
    {
      v230 = sub_1B0E45D78();
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v231 = sub_1B03949A8(0);
      v232 = sub_1B03949A8(2);
      v233 = &v505;
      v505 = v230;
      v234 = &v504;
      v504 = v231;
      v235 = &v503;
      v503 = v232;
      sub_1B0394A48(3, &v505);
      sub_1B0394A48(7, v233);
      v204 = v292;
      v501 = v344;
      v502 = v265;
      sub_1B03949FC(&v501, v233, v234, v235);
      v236 = v204;
      if (v204)
      {

        __break(1u);
      }

      else
      {
        v501 = v345;
        v502 = v266;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v227 = 0;
        v501 = v346;
        v502 = v267;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v226 = 0;
        v501 = v347;
        v502 = v268;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v225 = 0;
        v501 = v348;
        v502 = v269;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v224 = 0;
        v501 = v349;
        v502 = v270;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v223 = 0;
        v501 = v350;
        v502 = v271;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v222 = 0;
        v501 = v351;
        v502 = v272;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v221 = 0;
        v501 = v352;
        v502 = v273;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v220 = 0;
        v501 = v353;
        v502 = v274;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v219 = 0;
        v501 = v354;
        v502 = v275;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v218 = 0;
        v501 = v355;
        v502 = v276;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v217 = 0;
        v501 = v356;
        v502 = v277;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v216 = 0;
        v501 = v357;
        v502 = v278;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v215 = 0;
        v501 = v358;
        v502 = v279;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v214 = 0;
        v501 = v359;
        v502 = v280;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v213 = 0;
        v501 = v360;
        v502 = v281;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v212 = 0;
        v501 = v361;
        v502 = v282;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v211 = 0;
        v501 = v362;
        v502 = v283;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v210 = 0;
        v501 = v363;
        v502 = v284;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v209 = 0;
        v501 = v364;
        v502 = v286;
        sub_1B03949FC(&v501, &v505, &v504, &v503);
        v208 = 0;
        _os_log_impl(&dword_1B0389000, v288, v289, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v230, 0x35u);
        sub_1B03998A8(v231);
        sub_1B03998A8(v232);
        sub_1B0E45D58();

        v228 = v208;
      }
    }

    else
    {

      v228 = v292;
    }

    v207 = v228;
    MEMORY[0x1E69E5920](v288);
    v293(v369, v388);
    sub_1B0A42BC0(v244 | (HIDWORD(v244) << 32), 0);
    v290 = v207;
  }

  v206[1] = v290;
}