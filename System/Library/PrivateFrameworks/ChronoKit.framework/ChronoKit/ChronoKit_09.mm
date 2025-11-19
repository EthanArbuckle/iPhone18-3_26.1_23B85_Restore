unint64_t sub_1BF4617FC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x7363697274656DLL;
  if (v1 != 4)
  {
    v4 = 0x796C696D6166;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E65644974736F68;
  if (v1 != 2)
  {
    v5 = 0x7974697669746361;
  }

  if (*v0)
  {
    v2 = 0x7974697669746361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BF4618FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF464338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF461924(uint64_t a1)
{
  v2 = sub_1BF463464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF461960(uint64_t a1)
{
  v2 = sub_1BF463464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v48 - v5;
  v56 = sub_1BF4E8364();
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v51 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BF4E8674();
  v55 = *(v57 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v52 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  v10 = *(*(v53 - 1) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v62 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v48 - v14;
  v16 = sub_1BF4E7394();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v63 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96D8, &qword_1BF4F1E58);
  v61 = *(v65 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v21 = v48 - v20;
  v22 = type metadata accessor for RemoteActivitySubscription(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 44);
  v28 = sub_1BF4E7334();
  v29 = *(*(v28 - 8) + 56);
  v67 = v27;
  v68 = v25;
  v29(&v25[v27], 1, 1, v28);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF463464();
  v64 = v21;
  v31 = v66;
  sub_1BF4E9854();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1BF38C9B4(&v68[v67], &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    v33 = v61;
    v32 = v62;
    v66 = v28;
    v77 = 0;
    sub_1BF462CA8(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
    v34 = v63;
    sub_1BF4E95B4();
    (*(v60 + 32))(v68, v34, v16);
    v76 = 1;
    v36 = sub_1BF4E9564();
    v48[1] = v16;
    v37 = v22;
    v38 = &v68[*(v22 + 20)];
    *v38 = v36;
    v38[1] = v39;
    v75 = 2;
    sub_1BF38C8B4(&qword_1EDC9D548, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    v40 = v59;
    v63 = 0;
    sub_1BF4E95B4();
    (*(v58 + 32))(&v68[v37[6]], v15, v40);
    v74 = 3;
    sub_1BF462CA8(&qword_1EBDD96E8, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
    sub_1BF4E95B4();
    v53 = a1;
    v41 = v68;
    sub_1BF462CF0(v32, &v68[v37[7]]);
    v73 = 4;
    sub_1BF462CA8(&qword_1EDC96440, MEMORY[0x1E6985AA8]);
    v42 = v52;
    v43 = v57;
    sub_1BF4E95B4();
    (*(v55 + 32))(v41 + v37[8], v42, v43);
    v72 = 5;
    sub_1BF462CA8(&qword_1EDC96470, MEMORY[0x1E69858D8]);
    v44 = v51;
    v45 = v56;
    sub_1BF4E95B4();
    (*(v54 + 32))(v41 + v37[9], v44, v45);
    v70 = 6;
    sub_1BF4634B8();
    sub_1BF4E9554();
    v46 = v71;
    if (v71 == 4)
    {
      v46 = 3;
    }

    *(v41 + v37[10]) = v46;
    v69 = 7;
    sub_1BF462CA8(&qword_1EDC9D5F0, MEMORY[0x1E6969530]);
    v47 = v50;
    sub_1BF4E9554();
    (*(v33 + 8))(v64, v65);
    sub_1BF3AC398(v47, v41 + v67);
    sub_1BF46350C(v41, v49, type metadata accessor for RemoteActivitySubscription);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return sub_1BF463574(v41, type metadata accessor for RemoteActivitySubscription);
  }
}

uint64_t RemoteActivitySubscription.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96F8, &qword_1BF4F1E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF463464();
  sub_1BF4E9864();
  v31 = 0;
  sub_1BF4E7394();
  sub_1BF462CA8(&qword_1EDC9D5E0, MEMORY[0x1E69695A8]);
  sub_1BF4E9674();
  if (!v2)
  {
    v11 = type metadata accessor for RemoteActivitySubscription(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v30 = 1;
    sub_1BF4E9624();
    v22 = v11;
    v15 = *(v11 + 24);
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9D558, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF4E9674();
    v16 = v22;
    v17 = v22[7];
    v28 = 3;
    type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
    sub_1BF462CA8(&qword_1EBDD9700, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
    sub_1BF4E9674();
    v18 = v16[8];
    v27 = 4;
    sub_1BF4E8674();
    sub_1BF462CA8(&qword_1EDC96448, MEMORY[0x1E6985AA8]);
    sub_1BF4E9674();
    v19 = v16[9];
    v26 = 5;
    sub_1BF4E8364();
    sub_1BF462CA8(&qword_1EDC96478, MEMORY[0x1E69858D8]);
    sub_1BF4E9674();
    v25 = *(v3 + v16[10]);
    v24 = 6;
    sub_1BF4635D4();
    sub_1BF4E9674();
    v20 = v16[11];
    v23 = 7;
    sub_1BF4E7334();
    sub_1BF462CA8(&qword_1EDC9D5F8, MEMORY[0x1E6969530]);
    sub_1BF4E9614();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _s9ChronoKit26RemoteActivitySubscriptionV0D9OwnershipO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97D0, &qword_1BF4F2910);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BF46350C(a1, &v23 - v15, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  sub_1BF46350C(a2, &v16[v18], type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BF46350C(v16, v12, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = sub_1BF4E7364();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BF463574(v16, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v16, &qword_1EBDD97D0, &qword_1BF4F2910);
    v20 = 0;
    return v20 & 1;
  }

  sub_1BF463574(v16, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  v20 = 1;
  return v20 & 1;
}

unint64_t sub_1BF462BAC()
{
  result = qword_1EBDD9618;
  if (!qword_1EBDD9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9618);
  }

  return result;
}

unint64_t sub_1BF462C00()
{
  result = qword_1EBDD9620;
  if (!qword_1EBDD9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9620);
  }

  return result;
}

unint64_t sub_1BF462C54()
{
  result = qword_1EBDD9628;
  if (!qword_1EBDD9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9628);
  }

  return result;
}

uint64_t sub_1BF462CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF462CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF462D54()
{
  result = qword_1EBDD9670;
  if (!qword_1EBDD9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9670);
  }

  return result;
}

unint64_t sub_1BF462DA8()
{
  result = qword_1EBDD9678;
  if (!qword_1EBDD9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9678);
  }

  return result;
}

unint64_t sub_1BF462DFC()
{
  result = qword_1EBDD9680;
  if (!qword_1EBDD9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9680);
  }

  return result;
}

unint64_t sub_1BF462E50()
{
  result = qword_1EBDD9688;
  if (!qword_1EBDD9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9688);
  }

  return result;
}

unint64_t sub_1BF462EA4()
{
  result = qword_1EBDD9690;
  if (!qword_1EBDD9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9690);
  }

  return result;
}

uint64_t sub_1BF462F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit26RemoteActivitySubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((sub_1BF4E7364() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for RemoteActivitySubscription(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v36 = v8;
  v37 = v5;
  v38 = v4;
  v23 = v17[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v41 == v39 && v42 == v40)
  {
  }

  else
  {
    v24 = sub_1BF4E9734();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  if ((_s9ChronoKit26RemoteActivitySubscriptionV0D9OwnershipO2eeoiySbAE_AEtFZ_0(a1 + v17[7], a2 + v17[7]) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFB588A0](a1 + v17[8], a2 + v17[8]) & 1) == 0)
  {
    return 0;
  }

  v25 = v17[9];
  sub_1BF4E8364();
  sub_1BF462CA8(&qword_1EDC9D790, MEMORY[0x1E69858D8]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v41 != v39 || *(a1 + v17[10]) != *(a2 + v17[10]))
  {
    return 0;
  }

  v26 = v17[11];
  v27 = *(v13 + 48);
  sub_1BF3ABF74(a1 + v26, v16);
  sub_1BF3ABF74(a2 + v26, &v16[v27]);
  v29 = v37;
  v28 = v38;
  v30 = *(v37 + 48);
  if (v30(v16, 1, v38) == 1)
  {
    if (v30(&v16[v27], 1, v28) == 1)
    {
      sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1BF3ABF74(v16, v12);
  if (v30(&v16[v27], 1, v28) == 1)
  {
    (*(v29 + 8))(v12, v28);
LABEL_20:
    sub_1BF38C9B4(v16, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    return 0;
  }

  v32 = v36;
  (*(v29 + 32))(v36, &v16[v27], v28);
  sub_1BF462CA8(&qword_1EDC9F0C0, MEMORY[0x1E6969530]);
  v33 = sub_1BF4E88C4();
  v34 = *(v29 + 8);
  v34(v32, v28);
  v34(v12, v28);
  sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return (v33 & 1) != 0;
}

unint64_t sub_1BF463464()
{
  result = qword_1EBDD96E0;
  if (!qword_1EBDD96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD96E0);
  }

  return result;
}

unint64_t sub_1BF4634B8()
{
  result = qword_1EBDD96F0;
  if (!qword_1EBDD96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD96F0);
  }

  return result;
}

uint64_t sub_1BF46350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF463574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BF4635D4()
{
  result = qword_1EBDD9708;
  if (!qword_1EBDD9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9708);
  }

  return result;
}

unint64_t sub_1BF46362C()
{
  result = qword_1EBDD9710;
  if (!qword_1EBDD9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9710);
  }

  return result;
}

void sub_1BF4636F0()
{
  sub_1BF4E7394();
  if (v0 <= 0x3F)
  {
    sub_1BF3D9314();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RemoteActivitySubscription.ActivityOwnership(319);
      if (v2 <= 0x3F)
      {
        sub_1BF4E8674();
        if (v3 <= 0x3F)
        {
          sub_1BF4E8364();
          if (v4 <= 0x3F)
          {
            sub_1BF3C363C();
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

uint64_t sub_1BF46380C()
{
  v0 = sub_1BF4E7394();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for StateReplicatorEnumValues.RelationshipState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateReplicatorEnumValues.RelationshipState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF463A48()
{
  result = qword_1EBDD9718;
  if (!qword_1EBDD9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9718);
  }

  return result;
}

unint64_t sub_1BF463AA0()
{
  result = qword_1EBDD9720;
  if (!qword_1EBDD9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9720);
  }

  return result;
}

unint64_t sub_1BF463AF8()
{
  result = qword_1EBDD9728;
  if (!qword_1EBDD9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9728);
  }

  return result;
}

unint64_t sub_1BF463B50()
{
  result = qword_1EBDD9730;
  if (!qword_1EBDD9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9730);
  }

  return result;
}

unint64_t sub_1BF463BA8()
{
  result = qword_1EBDD9738;
  if (!qword_1EBDD9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9738);
  }

  return result;
}

unint64_t sub_1BF463C00()
{
  result = qword_1EBDD9740;
  if (!qword_1EBDD9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9740);
  }

  return result;
}

unint64_t sub_1BF463C58()
{
  result = qword_1EBDD9748;
  if (!qword_1EBDD9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9748);
  }

  return result;
}

unint64_t sub_1BF463CB0()
{
  result = qword_1EBDD9750;
  if (!qword_1EBDD9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9750);
  }

  return result;
}

unint64_t sub_1BF463D08()
{
  result = qword_1EBDD9758;
  if (!qword_1EBDD9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9758);
  }

  return result;
}

unint64_t sub_1BF463D60()
{
  result = qword_1EBDD9760;
  if (!qword_1EBDD9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9760);
  }

  return result;
}

unint64_t sub_1BF463DB8()
{
  result = qword_1EBDD9768;
  if (!qword_1EBDD9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9768);
  }

  return result;
}

unint64_t sub_1BF463E10()
{
  result = qword_1EBDD9770;
  if (!qword_1EBDD9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9770);
  }

  return result;
}

unint64_t sub_1BF463E68()
{
  result = qword_1EBDD9778;
  if (!qword_1EBDD9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9778);
  }

  return result;
}

unint64_t sub_1BF463EC0()
{
  result = qword_1EBDD9780;
  if (!qword_1EBDD9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9780);
  }

  return result;
}

unint64_t sub_1BF463F18()
{
  result = qword_1EBDD9788;
  if (!qword_1EBDD9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9788);
  }

  return result;
}

unint64_t sub_1BF463F70()
{
  result = qword_1EBDD9790;
  if (!qword_1EBDD9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9790);
  }

  return result;
}

unint64_t sub_1BF463FC8()
{
  result = qword_1EBDD9798;
  if (!qword_1EBDD9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9798);
  }

  return result;
}

unint64_t sub_1BF464020()
{
  result = qword_1EBDD97A0;
  if (!qword_1EBDD97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97A0);
  }

  return result;
}

unint64_t sub_1BF464078()
{
  result = qword_1EBDD97A8;
  if (!qword_1EBDD97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97A8);
  }

  return result;
}

unint64_t sub_1BF4640D0()
{
  result = qword_1EBDD97B0;
  if (!qword_1EBDD97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97B0);
  }

  return result;
}

unint64_t sub_1BF464128()
{
  result = qword_1EBDD97B8;
  if (!qword_1EBDD97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97B8);
  }

  return result;
}

unint64_t sub_1BF464180()
{
  result = qword_1EBDD97C0;
  if (!qword_1EBDD97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97C0);
  }

  return result;
}

uint64_t sub_1BF4641D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436574617473 && a2 == 0xEC0000007365676ELL || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BF4E9734();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BF464338(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEA00000000004449 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974736F68 && a2 == 0xEC00000079746974 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xED000072656E774FLL || (sub_1BF4E9734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BF4FBF10 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BF4E9734();

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

uint64_t ExtensionMetadata.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtensionMetadata.id.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ExtensionMetadata.version.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtensionMetadata() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtensionMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtensionMetadata() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ExtensionMetadata.widgetDescriptors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtensionMetadata() + 24));
}

uint64_t ExtensionMetadata.widgetDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtensionMetadata.controlDescriptors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtensionMetadata() + 28));
}

uint64_t ExtensionMetadata.controlDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtensionMetadata.originOSVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtensionMetadata() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtensionMetadata.originOSVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtensionMetadata() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ExtensionMetadata.allDescriptors.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExtensionMetadata();
  v3 = v2;
  v4 = *(v0 + *(v2 + 24));
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v10 = *(v0 + *(v2 + 24));
    }

    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v11 = sub_1BF4E9474();

    v4 = v11;
  }

  else
  {
    v5 = *(v0 + *(v2 + 24));

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v6 = *(v1 + *(v3 + 28));
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v12 = *(v1 + *(v3 + 28));
    }

    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v13 = sub_1BF4E9474();

    v6 = v13;
  }

  else
  {
    v7 = *(v1 + *(v3 + 28));

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  sub_1BF44BBA4(v6);
  v8 = *(v1 + *(v3 + 36));
  if (v8 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v14 = sub_1BF4E9474();

    v8 = v14;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  sub_1BF44BBA4(v8);
  return v4;
}

uint64_t ExtensionMetadata.activityDescriptors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtensionMetadata() + 36));
}

uint64_t ExtensionMetadata.activityDescriptors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtensionMetadata() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtensionMetadata.init(id:version:originOSVersion:widgetDescriptors:controlDescriptors:activityDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for ExtensionMetadata();
  v18 = (a9 + v17[8]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  result = (*(*(v19 - 8) + 32))(a9, a1, v19);
  v21 = (a9 + v17[5]);
  *v21 = a2;
  v21[1] = a3;
  *v18 = a4;
  v18[1] = a5;
  *(a9 + v17[6]) = a6;
  *(a9 + v17[9]) = a8;
  *(a9 + v17[7]) = a7;
  return result;
}

uint64_t sub_1BF464DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1BF464E78()
{
  sub_1BF464F94();
  if (v0 <= 0x3F)
  {
    sub_1BF4650DC(319, &qword_1EDC963D8, &unk_1EDC9D6D8, 0x1E6994388);
    if (v1 <= 0x3F)
    {
      sub_1BF4650DC(319, &qword_1EDC963C8, &qword_1EDC96348, 0x1E6994248);
      if (v2 <= 0x3F)
      {
        sub_1BF3B9B04();
        if (v3 <= 0x3F)
        {
          sub_1BF4650DC(319, &qword_1EDC963C0, &qword_1EDC96310, 0x1E6994358);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BF464F94()
{
  if (!qword_1EDC9D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF38C8B4(&qword_1EDC9D598, &qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF38C8B4(&qword_1EDC9D570, &qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF38C8B4(&qword_1EDC9D590, &qword_1EBDD8B48, &unk_1BF4EC990);
    sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990);
    v0 = sub_1BF4E77D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D520);
    }
  }
}

void sub_1BF4650DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1BF3901C0(255, a3, a4);
    v5 = sub_1BF4E8CA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BF465134()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EBDE1E88);
  __swift_project_value_buffer(v0, qword_1EBDE1E88);
  return sub_1BF4E7B44();
}

uint64_t Preferences.isAnyDiagnosticEnabled.getter()
{
  if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
  {
    return 1;
  }

  return sub_1BF4E75C4();
}

void sub_1BF4651F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v1 = [v0 processName];

  v2 = sub_1BF4E8914();
  v4 = v3;

  qword_1EBDD97D8 = v2;
  unk_1EBDD97E0 = v4;
}

uint64_t WidgetDiagnosticTriggers.isEnabled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v53 - v3;
  v5 = *v0;
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
  {
  }

  else
  {
    v35 = sub_1BF4E75C4();

    if ((v35 & 1) == 0)
    {
      if (qword_1EBDD8538 != -1)
      {
        swift_once();
      }

      v36 = sub_1BF4E7B54();
      __swift_project_value_buffer(v36, qword_1EBDE1E88);
      v9 = sub_1BF4E7B34();
      v10 = sub_1BF4E8E44();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_50;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      *v11 = 136446210;
      v37 = "staleIntervalLapsed";
      v38 = 0xD000000000000011;
      if (v5 != 1)
      {
        v38 = 0xD000000000000013;
        v37 = "interactionFailed";
      }

      if (v5)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0xD000000000000013;
      }

      if (v5)
      {
        v40 = v37;
      }

      else
      {
        v40 = "idealizedDateComponents";
      }

      v41 = sub_1BF38D65C(v39, v40 | 0x8000000000000000, &v54);

      *(v11 + 4) = v41;
      v18 = "[%{public}s] All diagnostics are disabled.";
LABEL_48:
      _os_log_impl(&dword_1BF389000, v9, v10, v18, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
      v42 = v11;
LABEL_49:
      MEMORY[0x1BFB5A5D0](v42, -1, -1);
LABEL_50:

      return 0;
    }
  }

  static BootSession.UUID.getter(v4);
  v6 = sub_1BF4E7394();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD97E8, &unk_1BF4F29E0);
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EBDE1E88);
    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E44();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_50;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54 = v12;
    *v11 = 136446210;
    v13 = "staleIntervalLapsed";
    v14 = 0xD000000000000011;
    if (v5 != 1)
    {
      v14 = 0xD000000000000013;
      v13 = "interactionFailed";
    }

    if (v5)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0xD000000000000013;
    }

    if (v5)
    {
      v16 = v13;
    }

    else
    {
      v16 = "idealizedDateComponents";
    }

    v17 = sub_1BF38D65C(v15, v16 | 0x8000000000000000, &v54);

    *(v11 + 4) = v17;
    v18 = "[%{public}s] Failed to get boot session.";
    goto LABEL_48;
  }

  v19 = sub_1BF4E7354();
  v21 = v20;
  (*(v7 + 8))(v4, v6);
  v22 = "idealizedDateComponents";
  sub_1BF4E75E4();
  v23 = "staleIntervalLapsed";
  if (v5 == 1)
  {
    v24 = 0xD000000000000011;
  }

  else
  {
    v24 = 0xD000000000000013;
  }

  v53 = "staleIntervalLapsed";
  if (v5 != 1)
  {
    v23 = "interactionFailed";
  }

  if (v5)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0xD000000000000013;
  }

  if (v5)
  {
    v22 = v23;
  }

  v26 = sub_1BF4E7584();

  if (!*(v26 + 16))
  {

    goto LABEL_52;
  }

  v27 = sub_1BF3CD5D0(v25, v22 | 0x8000000000000000);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_52:

    return 1;
  }

  v30 = (*(v26 + 56) + 16 * v27);
  v32 = *v30;
  v31 = v30[1];

  if (v32 == v19 && v31 == v21)
  {

LABEL_55:
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v44 = sub_1BF4E7B54();
    __swift_project_value_buffer(v44, qword_1EBDE1E88);
    v9 = sub_1BF4E7B34();
    v45 = sub_1BF4E8E44();
    if (!os_log_type_enabled(v9, v45))
    {
      goto LABEL_50;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136446210;
    if (v5 == 1)
    {
      v48 = 0xD000000000000011;
    }

    else
    {
      v48 = 0xD000000000000013;
    }

    v49 = v53;
    if (v5 != 1)
    {
      v49 = "interactionFailed";
    }

    if (v5)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0xD000000000000013;
    }

    if (v5)
    {
      v51 = v49;
    }

    else
    {
      v51 = "idealizedDateComponents";
    }

    v52 = sub_1BF38D65C(v50, v51 | 0x8000000000000000, &v54);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_1BF389000, v9, v45, "[%{public}s] Already prompted in this boot session.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1BFB5A5D0](v47, -1, -1);
    v42 = v46;
    goto LABEL_49;
  }

  v34 = sub_1BF4E9734();

  if (v34)
  {
    goto LABEL_55;
  }

  return 1;
}

void WidgetDiagnosticTriggers.errorStateTriggered(widget:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *v9;
  v24 = [a1 extensionIdentity];
  v16 = [a1 kind];
  v17 = sub_1BF4E8914();
  v19 = v18;

  v20 = [a1 intentReference];
  v26 = v15;
  v25[0] = v24;
  v25[1] = v17;
  v25[2] = v19;
  v25[3] = v20;
  WidgetDiagnosticTriggers.errorStateTriggered(timelineKey:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(v25, a2, a3, a4, a5, a6, a7, a8, a9);
}

void WidgetDiagnosticTriggers.errorStateTriggered(timelineKey:succinctTitle:succinctDescription:fullDescription:timeOfIssue:remoteDeviceIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v152 = a7;
  v153 = a8;
  v151 = a6;
  v158 = a5;
  v146 = a4;
  v148 = a2;
  v149 = a3;
  v11 = sub_1BF4E7334();
  v156 = *(v11 - 8);
  v12 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v136 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v143 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v136 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v150 = &v136 - v26;
  v155 = type metadata accessor for TapToRadarDraft();
  v27 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v136 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v136 - v34;
  v36 = *a1;
  v37 = *(a1 + 8);
  v147 = *(a1 + 16);
  v38 = *v9;
  LOBYTE(aBlock) = *v9;
  if (WidgetDiagnosticTriggers.isEnabled.getter())
  {
    v39 = sub_1BF4E75F4();
    sub_1BF4E75E4();
    if (sub_1BF4E7594() & 1) != 0 || (sub_1BF4E75A4())
    {
    }

    else
    {
      v90 = sub_1BF4E75C4();

      if ((v90 & 1) == 0)
      {
        return;
      }
    }

    v139 = v11;
    v157 = v39;
    v138 = v23;
    v40 = 0xD000000000000013;
    v141 = [v36 isRemote];
    static BootSession.UUID.getter(v35);
    v41 = sub_1BF4E7394();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v35, 1, v41);
    v140 = v36;
    if (v43 == 1)
    {
      sub_1BF38C9B4(v35, &qword_1EBDD97E8, &unk_1BF4F29E0);
    }

    else
    {
      v137 = v37;
      v44 = v38;
      v45 = sub_1BF4E7354();
      v47 = v46;
      (*(v42 + 8))(v35, v41);
      sub_1BF4E75E4();
      v48 = "staleIntervalLapsed";
      v49 = 0xD000000000000011;
      if (v44 != 1)
      {
        v49 = 0xD000000000000013;
        v48 = "interactionFailed";
      }

      v50 = v44;
      if (v44)
      {
        v51 = v49;
      }

      else
      {
        v51 = 0xD000000000000013;
      }

      if (v44)
      {
        v52 = v48;
      }

      else
      {
        v52 = "idealizedDateComponents";
      }

      v53 = sub_1BF4E7574();
      v55 = v54;
      v56 = *v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159 = *v55;
      *v55 = 0x8000000000000000;
      sub_1BF3D76F4(v45, v47, v51, v52 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      *v55 = v159;
      v53(&aBlock, 0);

      v37 = v137;
      v38 = v50;
      v40 = 0xD000000000000013;
    }

    sub_1BF4E75E4();
    v58 = sub_1BF4E7594();

    v59 = v158;
    if (v58)
    {
      if (qword_1EBDD8538 != -1)
      {
        swift_once();
      }

      v60 = sub_1BF4E7B54();
      __swift_project_value_buffer(v60, qword_1EBDE1E88);

      v61 = sub_1BF4E7B34();
      v62 = sub_1BF4E8E74();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = v37;
        v64 = v59;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock = v66;
        *v65 = 136446210;
        v67 = v64;
        v37 = v63;
        v40 = 0xD000000000000013;
        *(v65 + 4) = sub_1BF38D65C(v146, v67, &aBlock);
        _os_log_impl(&dword_1BF389000, v61, v62, "%{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x1BFB5A5D0](v66, -1, -1);
        MEMORY[0x1BFB5A5D0](v65, -1, -1);
      }
    }

    sub_1BF4E75E4();
    v68 = sub_1BF4E75A4();

    if ((v68 & 1) == 0)
    {
LABEL_44:
      sub_1BF4E75E4();
      v125 = sub_1BF4E75C4();

      if ((v125 & 1) == 0)
      {
        return;
      }

      v126 = *MEMORY[0x1E69941B8];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
      v127 = sub_1BF4E76B4();
      v129 = v128;
      swift_endAccess();
      aBlock = 0;
      v161 = 0xE000000000000000;
      sub_1BF4E92E4();

      aBlock = 0xD00000000000001ELL;
      v161 = 0x80000001BF4F9960;
      if (v38)
      {
        if (v38 == 1)
        {
          v130 = "staleIntervalLapsed";
          v40 = 0xD000000000000011;
          goto LABEL_51;
        }

        v131 = "interactionTimedOut";
      }

      else
      {
        v131 = "staleIntervalLapsed";
      }

      v130 = v131 - 32;
LABEL_51:
      MEMORY[0x1BFB58C90](v40, v130 | 0x8000000000000000);

      v132 = swift_allocObject();
      *(v132 + 16) = v141;
      *(v132 + 24) = v127;
      *(v132 + 32) = v129;
      *(v132 + 40) = v37;
      *(v132 + 48) = v147;

      if (sub_1BF3F34B4())
      {
      }

      else
      {
        v133 = sub_1BF4E88E4();

        v134 = swift_allocObject();
        *(v134 + 16) = sub_1BF3F377C;
        *(v134 + 24) = v132;
        v164 = sub_1BF4671D4;
        v165 = v134;
        aBlock = MEMORY[0x1E69E9820];
        v161 = 1107296256;
        v162 = sub_1BF3F3410;
        v163 = &block_descriptor_8;
        v135 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();

        _Block_release(v135);
      }

      return;
    }

    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v69 = sub_1BF4E7B54();
    v158 = __swift_project_value_buffer(v69, qword_1EBDE1E88);
    v70 = sub_1BF4E7B34();
    v71 = sub_1BF4E8E84();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1BF389000, v70, v71, "Prompting for TTR.", v72, 2u);
      MEMORY[0x1BFB5A5D0](v72, -1, -1);
    }

    v73 = v38;
    v74 = v37;

    sub_1BF443FBC(v31);
    if (qword_1EBDD8530 != -1)
    {
      swift_once();
    }

    v75 = qword_1EBDE1E70;
    v76 = unk_1EBDE1E78;
    v77 = qword_1EBDE1E80;
    v78 = *(v31 + 4);
    v79 = *(v31 + 5);
    v80 = *(v31 + 6);
    v81 = *(v31 + 7);
    v82 = *(v31 + 8);
    *(v31 + 2) = xmmword_1EBDE1E60;
    *(v31 + 6) = v75;
    *(v31 + 7) = v76;
    *(v31 + 8) = v77;

    sub_1BF4671DC(v78, v79, v80);
    v31[88] = 5;
    v31[112] = 5;
    v83 = *(v31 + 18);
    v84 = v149;
    *(v31 + 17) = v148;
    *(v31 + 18) = v84;

    v85 = *(v31 + 22);
    v86 = v152;
    *(v31 + 21) = v151;
    *(v31 + 22) = v86;

    if (v141)
    {
      v37 = v74;
      v38 = v73;
      v87 = v155;
      v88 = v156;
      v89 = v154;
      if (!a9)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v37 = v74;
      v38 = v73;
      v87 = v155;
      v88 = v156;
      v89 = v154;
      if (!a9 || !*(a9 + 16))
      {
        goto LABEL_38;
      }
    }

    v91 = &v31[v87[16]];
    v92 = *(v91 + 2);
    *(v91 + 2) = a9;

LABEL_37:
    v93 = &v31[v87[17]];
    v94 = *(v93 + 2);

    *(v93 + 2) = &unk_1F3DED390;
LABEL_38:
    v31[v87[20] + 16] = 1;
    v95 = v150;
    v96 = v139;
    (*(v88 + 16))(v150, v153, v139);
    (*(v88 + 56))(v95, 0, 1, v96);
    v97 = v87[11];
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
    sub_1BF3AC398(v95, &v31[v97 + *(v98 + 36)]);
    TapToRadarDraft.url.getter(v89);
    v99 = sub_1BF4E7194();
    v100 = v89;
    v101 = *(v99 - 8);
    (*(v101 + 56))(v100, 0, 1, v99);
    v102 = v138;
    sub_1BF39D6DC(v100, v138);
    v103 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
    v104 = sub_1BF4E88E4();
    [v103 setTitle_];

    v105 = sub_1BF4E88E4();
    [v103 setBody_];

    if (qword_1EBDD8540 != -1)
    {
      swift_once();
    }

    v106 = sub_1BF4E88E4();
    [v103 setThreadIdentifier_];

    [v103 setInterruptionLevel_];
    v107 = v102;
    v108 = v143;
    sub_1BF3E90C8(v107, v143);
    if ((*(v101 + 48))(v108, 1, v99) == 1)
    {
      v109 = 0;
    }

    else
    {
      v109 = sub_1BF4E7094();
      (*(v101 + 8))(v108, v99);
    }

    [v103 setDefaultActionURL_];

    [v103 setShouldSuppressScreenLightUp_];
    v110 = v144;
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v111 = v145;
    sub_1BF4E7284();
    v112 = *(v88 + 8);
    v113 = v110;
    v114 = v139;
    v112(v113, v139);
    v115 = sub_1BF4E7254();
    v112(v111, v114);
    [v103 setExpirationDate_];

    v40 = 0xD000000000000013;
    v116 = sub_1BF4E88E4();
    v117 = [objc_opt_self() iconForApplicationIdentifier_];

    [v103 setIcon_];
    v118 = v103;
    v119 = sub_1BF4E88E4();

    v120 = [objc_opt_self() requestWithIdentifier:v119 content:v118 trigger:0];

    v121 = objc_allocWithZone(MEMORY[0x1E6983308]);
    v122 = sub_1BF4E88E4();
    v123 = [v121 initWithBundleIdentifier_];

    v164 = sub_1BF466B1C;
    v165 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v161 = 1107296256;
    v162 = sub_1BF466D6C;
    v163 = &block_descriptor_6;
    v124 = _Block_copy(&aBlock);
    [v123 addNotificationRequest:v120 withCompletionHandler:v124];
    _Block_release(v124);

    sub_1BF38C9B4(v138, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF467220(v31);
    goto LABEL_44;
  }
}

void sub_1BF466B1C(NSObject *a1)
{
  if (!a1)
  {
    if (qword_1EBDD8538 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF4E7B54();
    __swift_project_value_buffer(v10, qword_1EBDE1E88);
    oslog = sub_1BF4E7B34();
    v11 = sub_1BF4E8E84();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BF389000, oslog, v11, "TTR request notification posted.", v12, 2u);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_1EBDD8538 != -1)
  {
    swift_once();
  }

  v3 = sub_1BF4E7B54();
  __swift_project_value_buffer(v3, qword_1EBDE1E88);
  v4 = a1;
  oslog = sub_1BF4E7B34();
  v5 = sub_1BF4E8E64();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BF389000, oslog, v5, "Error posting TTR request notification: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_1BF466D6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t WidgetDiagnosticTriggers.Identifier.description.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

ChronoKit::WidgetDiagnosticTriggers::Identifier_optional __swiftcall WidgetDiagnosticTriggers.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF466E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "staleIntervalLapsed";
  v4 = 0xD000000000000011;
  if (v2 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "staleIntervalLapsed";
  }

  else
  {
    v6 = "interactionFailed";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "idealizedDateComponents";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "interactionFailed";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "idealizedDateComponents";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF466F6C()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF467004()
{
  *v0;
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF467088()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

void sub_1BF467128(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "staleIntervalLapsed";
  v4 = 0xD000000000000011;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = "interactionFailed";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "idealizedDateComponents";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1BF467180()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1BF4671DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1BF467220(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF46727C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF4672E4()
{
  result = qword_1EBDD97F0;
  if (!qword_1EBDD97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD97F0);
  }

  return result;
}

uint64_t sub_1BF467364()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BF467770();
  return v3;
}

uint64_t sub_1BF4673F0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1BF4E7C34();
  *a2 = result;
  return result;
}

_OWORD *sub_1BF46743C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9820, &qword_1BF4F2E08);
  result = swift_initStackObject();
  result[1] = xmmword_1BF4F2B20;
  v1 = *MEMORY[0x1E69E4CF0];
  if (!*MEMORY[0x1E69E4CF0])
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v2 = result;
  *(result + 4) = v1;
  v3 = qword_1EDC979B8;
  result = v1;
  if (v3 != -1)
  {
    result = swift_once();
  }

  v2[5] = qword_1EDC979C0;
  v4 = *MEMORY[0x1E69E4DD8];
  if (!*MEMORY[0x1E69E4DD8])
  {
    goto LABEL_23;
  }

  v2[6] = v4;
  v5 = qword_1EDC97A40;
  v6 = v4;

  if (v5 != -1)
  {
    result = swift_once();
  }

  v2[7] = qword_1EDC97A48;
  v7 = *MEMORY[0x1E69E4EB8];
  if (!*MEMORY[0x1E69E4EB8])
  {
    goto LABEL_24;
  }

  v2[8] = v7;
  v8 = qword_1EDC97A28;
  v9 = v7;

  if (v8 != -1)
  {
    result = swift_once();
  }

  v2[9] = qword_1EDC97A30;
  v10 = *MEMORY[0x1E69E4D00];
  if (!*MEMORY[0x1E69E4D00])
  {
    goto LABEL_25;
  }

  v2[10] = v10;
  v11 = qword_1EDC979F0;
  v12 = v10;

  if (v11 != -1)
  {
    result = swift_once();
  }

  v2[11] = qword_1EDC979F8;
  v13 = *MEMORY[0x1E69E4CE0];
  if (!*MEMORY[0x1E69E4CE0])
  {
    goto LABEL_26;
  }

  v2[12] = v13;
  v14 = qword_1EDC979D8;
  v15 = v13;

  if (v14 != -1)
  {
    result = swift_once();
  }

  v2[13] = qword_1EDC979E0;
  v16 = *MEMORY[0x1E69E4D10];
  if (!*MEMORY[0x1E69E4D10])
  {
    goto LABEL_27;
  }

  v2[14] = v16;
  v17 = qword_1EDC97A00;
  v18 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v2[15] = qword_1EDC97A08;

  v2[16] = sub_1BF4E88E4();
  if (qword_1EDC979C8 != -1)
  {
    swift_once();
  }

  v2[17] = qword_1EDC979D0;

  v19 = sub_1BF3DAAD4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9828, &unk_1BF4F2E10);
  result = swift_arrayDestroy();
  off_1EDC97A18 = v19;
  return result;
}

uint64_t sub_1BF467770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97F8, &unk_1BF4F2B88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v159 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v174 = &v159 - v9;
  v175 = sub_1BF4E8F14();
  v177 = *(v175 - 8);
  v10 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9800, &unk_1BF4F2B98);
  v178 = *(v176 - 8);
  v12 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v173 = &v159 - v13;
  *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_subscriptions) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v179 = v14;
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  *(v1 + 24) = v17;
  sub_1BF4E7F54();
  v19 = objc_opt_self();

  v20 = [v19 mainScreen];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    v23 = [v22 displayConfiguration];
    if (v23)
    {
      v24 = v23;
      KeyPath = swift_getKeyPath();
      v26 = v24;
      sub_1BF46C044(0xD000000000000018, 0x80000001BF4FC110, KeyPath, v1, v26);

      goto LABEL_13;
    }
  }

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v27 = sub_1BF4E7B54();
  __swift_project_value_buffer(v27, qword_1EDCA6AA8);
  v28 = sub_1BF4E7B34();
  v29 = sub_1BF4E8E64();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BF389000, v28, v29, "UIScreen.main or its displayConfiguration was nil", v30, 2u);
    MEMORY[0x1BFB5A5D0](v30, -1, -1);
  }

  v31 = [objc_opt_self() displays];
  v32 = sub_1BF4E8BA4();

  if (!*(v32 + 16))
  {
    v156 = sub_1BF4E7B34();
    v157 = sub_1BF4E8E64();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&dword_1BF389000, v156, v157, "CA reports no displays; exiting cleanly", v158, 2u);
      MEMORY[0x1BFB5A5D0](v158, -1, -1);
    }

    exit(0);
  }

  v33 = sub_1BF4E7B34();
  v34 = sub_1BF4E8E64();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1BF389000, v33, v34, "Falling back to FBSDisplayMonitor mainConfiguration", v35, 2u);
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
  }

  v36 = [objc_allocWithZone(MEMORY[0x1E699FB10]) init];
  v37 = [v36 mainConfiguration];
  v38 = swift_getKeyPath();
  v26 = v37;
  sub_1BF46C044(0xD000000000000018, 0x80000001BF4FC110, v38, v1, v26);

LABEL_13:

  if (qword_1EDC97A10 == -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    swift_once();
LABEL_14:
    v160 = v6;
    v161 = v3;
    v162 = v2;
    v163 = v21;
    swift_beginAccess();
    if ((off_1EDC97A18 & 0xC000000000000001) != 0)
    {
      v39 = 0;
      v40 = 0;
      v6 = 0;
      v41 = sub_1BF4E9414() | 0x8000000000000000;
    }

    else
    {
      v42 = -1 << *(off_1EDC97A18 + 32);
      v40 = ~v42;
      v39 = off_1EDC97A18 + 64;
      v43 = -v42;
      v44 = v43 < 64 ? ~(-1 << v43) : -1;
      v6 = (v44 & *(off_1EDC97A18 + 8));
      v41 = off_1EDC97A18;
    }

    v45 = 0;
    v171 = v40;
    v46 = (v40 + 64) >> 6;
    if ((v41 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_21:
    v47 = v45;
    v48 = v6;
    v21 = v45;
    if (v6)
    {
LABEL_25:
      v2 = (v48 - 1) & v48;
      v49 = (v21 << 9) | (8 * __clz(__rbit64(v48)));
      v3 = *(*(v41 + 56) + v49);
      v50 = *(*(v41 + 48) + v49);

      if (v50)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    while (1)
    {
      v21 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v21 >= v46)
      {
        goto LABEL_31;
      }

      v48 = *&v39[8 * v21];
      ++v47;
      if (v48)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v51 = sub_1BF4E9444();
    if (!v51)
    {
      break;
    }

    v53 = v52;
    v181 = v51;
    type metadata accessor for CFString(0);
    swift_dynamicCast();
    v50 = aBlock[0];
    v181 = v53;
    swift_dynamicCast();
    v3 = aBlock[0];
    v21 = v45;
    v2 = v6;
    if (!v50)
    {
      break;
    }

LABEL_29:

    v54 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v54, 0, sub_1BF4698DC, v50, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v45 = v21;
    v6 = v2;
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  sub_1BF39A9CC();
  if (qword_1EDC979B8 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDC979C0;
  v56 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v55;

  v57 = v172;
  sub_1BF4E8F04();
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  v58 = sub_1BF4E8F34();
  v181 = v58;
  v59 = sub_1BF4E8EF4();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v62 = v174;
  v171 = v59;
  v170 = v61;
  v169 = v60 + 56;
  (v61)(v174, 1, 1);
  v63 = sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0);
  v64 = sub_1BF45EB9C();
  v65 = v173;
  v168 = v63;
  v167 = v64;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v62, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v66 = *(v177 + 8);
  v177 += 8;
  v166 = v66;
  v66(v57, v175);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1BF46C3D4;
  *(v67 + 24) = v56;
  v68 = sub_1BF38C8B4(&qword_1EDC9D428, &qword_1EBDD9800, &unk_1BF4F2B98);

  v69 = v176;
  v165 = v68;
  sub_1BF4E7D14();

  v70 = *(v178 + 8);
  v178 += 8;
  v164 = v70;
  v70(v65, v69);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v73 = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000027, 0x80000001BF4FC130, v73, v72, MEMORY[0x1E69E4B58]);
  }

  if (qword_1EDC97A40 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDC97A48;
  v75 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v74;

  v76 = v172;
  sub_1BF4E8F04();
  v77 = sub_1BF4E8F34();
  aBlock[19] = v77;
  v78 = v174;
  v170(v174, 1, 1, v171);
  v79 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v78, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v76, v175);
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1BF46C3DC;
  *(v80 + 24) = v75;

  v81 = v176;
  sub_1BF4E7D14();

  v164(v79, v81);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v82 = swift_weakLoadStrong();
  if (v82)
  {
    v83 = v82;
    v84 = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC160, v84, v83, MEMORY[0x1E69E4B68]);
  }

  if (qword_1EDC97A28 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDC97A30;
  v86 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v85;

  v87 = v172;
  sub_1BF4E8F04();
  v88 = sub_1BF4E8F34();
  aBlock[16] = v88;
  v89 = v174;
  v170(v174, 1, 1, v171);
  v90 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v89, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v87, v175);
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1BF46C3E4;
  *(v91 + 24) = v86;

  v92 = v176;
  sub_1BF4E7D14();

  v164(v90, v92);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v93 = swift_weakLoadStrong();
  if (v93)
  {
    v94 = v93;
    v95 = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC180, v95, v94, MEMORY[0x1E69E4B70]);
  }

  if (qword_1EDC979F0 != -1)
  {
    swift_once();
  }

  v96 = qword_1EDC979F8;
  v97 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v96;

  v98 = v172;
  sub_1BF4E8F04();
  v99 = sub_1BF4E8F34();
  aBlock[13] = v99;
  v100 = v174;
  v170(v174, 1, 1, v171);
  v101 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v100, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v98, v175);
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1BF46C3EC;
  *(v102 + 24) = v97;

  v103 = v176;
  sub_1BF4E7D14();

  v164(v101, v103);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v104 = swift_weakLoadStrong();
  if (v104)
  {
    v105 = v104;
    v106 = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000020, 0x80000001BF4FC1A0, v106, v105, MEMORY[0x1E69E4B60]);
  }

  if (qword_1EDC979D8 != -1)
  {
    swift_once();
  }

  v107 = qword_1EDC979E0;
  v108 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v107;

  v109 = v172;
  sub_1BF4E8F04();
  v110 = sub_1BF4E8F34();
  aBlock[10] = v110;
  v111 = v174;
  v170(v174, 1, 1, v171);
  v112 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v111, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v109, v175);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1BF46C3F4;
  *(v113 + 24) = v108;

  v114 = v176;
  sub_1BF4E7D14();

  v164(v112, v114);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v115 = swift_weakLoadStrong();
  if (v115)
  {
    v116 = v115;
    v117 = swift_getKeyPath();
    sub_1BF46B43C(0xD000000000000014, 0x80000001BF4FC1D0, v117, v116);
  }

  if (qword_1EDC97A00 != -1)
  {
    swift_once();
  }

  v118 = qword_1EDC97A08;
  v119 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v118;

  v120 = v172;
  sub_1BF4E8F04();
  v121 = sub_1BF4E8F34();
  aBlock[7] = v121;
  v122 = v174;
  v170(v174, 1, 1, v171);
  v123 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v122, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v120, v175);
  v124 = swift_allocObject();
  *(v124 + 16) = sub_1BF46C3FC;
  *(v124 + 24) = v119;

  v125 = v176;
  sub_1BF4E7D14();

  v164(v123, v125);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  swift_beginAccess();
  v126 = swift_weakLoadStrong();
  if (v126)
  {
    v127 = v126;
    v128 = swift_getKeyPath();
    sub_1BF46B93C(0xD000000000000010, 0x80000001BF4FC1F0, v128, v127);
  }

  if (qword_1EDC979C8 != -1)
  {
    swift_once();
  }

  v129 = qword_1EDC979D0;
  v130 = swift_allocObject();
  swift_weakInit();
  aBlock[0] = v129;

  v131 = v172;
  sub_1BF4E8F04();
  v132 = sub_1BF4E8F34();
  aBlock[6] = v132;
  v133 = v174;
  v170(v174, 1, 1, v171);
  v134 = v173;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v133, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v166(v131, v175);
  v135 = swift_allocObject();
  *(v135 + 16) = sub_1BF46C404;
  *(v135 + 24) = v130;

  v136 = v176;
  sub_1BF4E7D14();

  v164(v134, v136);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF469DBC();

  v137 = swift_allocObject();
  swift_weakInit();
  v138 = qword_1EDC99408;

  if (v138 != -1)
  {
    swift_once();
  }

  aBlock[0] = qword_1EDC99410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200);
  aBlock[0] = sub_1BF4E7C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9810, &qword_1BF4F2D00);
  sub_1BF38C8B4(&qword_1EDC9D3E8, &qword_1EBDD9810, &qword_1BF4F2D00);
  v139 = v160;
  sub_1BF4E7CD4();

  v140 = swift_allocObject();
  *(v140 + 16) = sub_1BF46C40C;
  *(v140 + 24) = v137;
  sub_1BF38C8B4(&qword_1EDC9D440, &qword_1EBDD97F8, &unk_1BF4F2B88);

  v141 = v162;
  sub_1BF4E7D14();

  (*(v161 + 8))(v139, v141);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF46A614();

  v142 = sub_1BF4E8F34();
  v143 = swift_allocObject();
  swift_weakInit();

  v144 = objc_allocWithZone(MEMORY[0x1E69DEBD8]);
  aBlock[4] = sub_1BF46C414;
  aBlock[5] = v143;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3CAF50;
  aBlock[3] = &block_descriptor_9;
  v145 = _Block_copy(aBlock);

  v146 = [v144 initWithChangesDeliveredOnQueue:v142 toBlock:v145];
  _Block_release(v145);

  v147 = *(v1 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver);
  *(v1 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver) = v146;
  v148 = v146;

  v149 = swift_getKeyPath();
  v150 = v148;
  sub_1BF46CDC0(0x686353726F6C6F63, 0xEB00000000656D65, v149, v1, v150);

  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v151 = sub_1BF4E75B4();

  aBlock[0] = v151;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D48, &qword_1BF4EDB38);
  sub_1BF38C8B4(&qword_1EDC9FF78, &qword_1EBDD8D48, &qword_1BF4EDB38);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v152 = swift_getKeyPath();
  sub_1BF46AD94(0xD000000000000025, 0x80000001BF4FC240, v152, v1, MEMORY[0x1E6993F70]);

  sub_1BF4E75E4();
  v153 = sub_1BF4E75D4();

  aBlock[0] = v153;
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v154 = swift_getKeyPath();
  sub_1BF46AD94(0xD00000000000002BLL, 0x80000001BF4FC270, v154, v1, MEMORY[0x1E6993F78]);

  return v1;
}

void sub_1BF4698DC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1BF46CCA0(a3);
}

uint64_t sub_1BF46994C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000027, 0x80000001BF4FC130, KeyPath, v1, MEMORY[0x1E69E4B58]);
  }

  return result;
}

uint64_t sub_1BF4699F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC160, KeyPath, v1, MEMORY[0x1E69E4B68]);
  }

  return result;
}

uint64_t sub_1BF469AA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD00000000000001ALL, 0x80000001BF4FC180, KeyPath, v1, MEMORY[0x1E69E4B70]);
  }

  return result;
}

uint64_t sub_1BF469B50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46AA50(0xD000000000000020, 0x80000001BF4FC1A0, KeyPath, v1, MEMORY[0x1E69E4B60]);
  }

  return result;
}

uint64_t sub_1BF469BFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46B43C(0xD000000000000014, 0x80000001BF4FC1D0, KeyPath, v1);
  }

  return result;
}

uint64_t sub_1BF469C94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    sub_1BF46B93C(0xD000000000000010, 0x80000001BF4FC1F0, KeyPath, v1);
  }

  return result;
}

uint64_t sub_1BF469D2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BF46D2D0(a1, &v6 - v4);
  return sub_1BF4E7D84();
}

void sub_1BF469DBC()
{
  v0 = _AXSCopyPreferredContentSizeCategoryName();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1BF4E8904();
    }

    else
    {
    }
  }
}

uint64_t sub_1BF469EFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69DDC68];
  v5 = sub_1BF4E8914();
  v7 = v6;
  if (v5 == sub_1BF4E8914() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_1BF4E9734();

  if (v10)
  {

LABEL_8:
    v11 = MEMORY[0x1E697F658];
    goto LABEL_9;
  }

  v16 = *MEMORY[0x1E69DDC88];
  v17 = sub_1BF4E8914();
  v19 = v18;
  if (v17 == sub_1BF4E8914() && v19 == v20)
  {

    goto LABEL_19;
  }

  v22 = sub_1BF4E9734();

  if (v22)
  {

LABEL_19:
    v11 = MEMORY[0x1E697F690];
    goto LABEL_9;
  }

  v23 = *MEMORY[0x1E69DDC78];
  v24 = sub_1BF4E8914();
  v26 = v25;
  if (v24 == sub_1BF4E8914() && v26 == v27)
  {

LABEL_25:
    v11 = MEMORY[0x1E697F698];
    goto LABEL_9;
  }

  v28 = sub_1BF4E9734();

  if (v28)
  {

    goto LABEL_25;
  }

  v29 = *MEMORY[0x1E69DDC70];
  v30 = sub_1BF4E8914();
  v32 = v31;
  if (v30 == sub_1BF4E8914() && v32 == v33)
  {

LABEL_31:
    v11 = MEMORY[0x1E697F680];
    goto LABEL_9;
  }

  v34 = sub_1BF4E9734();

  if (v34)
  {

    goto LABEL_31;
  }

  v35 = *MEMORY[0x1E69DDC60];
  v36 = sub_1BF4E8914();
  v38 = v37;
  if (v36 == sub_1BF4E8914() && v38 == v39)
  {

LABEL_37:
    v11 = MEMORY[0x1E697F650];
    goto LABEL_9;
  }

  v40 = sub_1BF4E9734();

  if (v40)
  {

    goto LABEL_37;
  }

  v41 = *MEMORY[0x1E69DDC58];
  v42 = sub_1BF4E8914();
  v44 = v43;
  if (v42 == sub_1BF4E8914() && v44 == v45)
  {

LABEL_43:
    v11 = MEMORY[0x1E697F660];
    goto LABEL_9;
  }

  v46 = sub_1BF4E9734();

  if (v46)
  {

    goto LABEL_43;
  }

  v47 = *MEMORY[0x1E69DDC50];
  v48 = sub_1BF4E8914();
  v50 = v49;
  if (v48 == sub_1BF4E8914() && v50 == v51)
  {

LABEL_49:
    v11 = MEMORY[0x1E697F630];
    goto LABEL_9;
  }

  v52 = sub_1BF4E9734();

  if (v52)
  {

    goto LABEL_49;
  }

  v53 = *MEMORY[0x1E69DDC40];
  v54 = sub_1BF4E8914();
  v56 = v55;
  if (v54 == sub_1BF4E8914() && v56 == v57)
  {

LABEL_55:
    v11 = MEMORY[0x1E697F670];
    goto LABEL_9;
  }

  v58 = sub_1BF4E9734();

  if (v58)
  {

    goto LABEL_55;
  }

  v59 = *MEMORY[0x1E69DDC38];
  v60 = sub_1BF4E8914();
  v62 = v61;
  if (v60 == sub_1BF4E8914() && v62 == v63)
  {

LABEL_61:
    v11 = MEMORY[0x1E697F668];
    goto LABEL_9;
  }

  v64 = sub_1BF4E9734();

  if (v64)
  {

    goto LABEL_61;
  }

  v65 = *MEMORY[0x1E69DDC30];
  v66 = sub_1BF4E8914();
  v68 = v67;
  if (v66 == sub_1BF4E8914() && v68 == v69)
  {

LABEL_67:
    v11 = MEMORY[0x1E697F678];
    goto LABEL_9;
  }

  v70 = sub_1BF4E9734();

  if (v70)
  {

    goto LABEL_67;
  }

  v71 = *MEMORY[0x1E69DDC28];
  v72 = sub_1BF4E8914();
  v74 = v73;
  if (v72 == sub_1BF4E8914() && v74 == v75)
  {

LABEL_73:
    v11 = MEMORY[0x1E697F640];
    goto LABEL_9;
  }

  v76 = sub_1BF4E9734();

  if (v76)
  {

    goto LABEL_73;
  }

  v77 = *MEMORY[0x1E69DDC20];
  v78 = sub_1BF4E8914();
  v80 = v79;
  if (v78 == sub_1BF4E8914() && v80 == v81)
  {

    v11 = MEMORY[0x1E697F648];
  }

  else
  {
    v82 = sub_1BF4E9734();

    v11 = MEMORY[0x1E697F680];
    if (v82)
    {
      v11 = MEMORY[0x1E697F648];
    }
  }

LABEL_9:
  v12 = *v11;
  v13 = sub_1BF4E7F84();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_1BF46A614()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v12[0] = v0;
  v1 = [objc_opt_self() archivedPreferencesWithHash_];
  v2 = v12[0];

  v3 = sub_1BF4E8764();
  v4 = sub_1BF4E71C4();
  v6 = v5;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    KeyPath = swift_getKeyPath();
    sub_1BF3D8864(v4, v6);

    sub_1BF46C8E8(0xD000000000000011, 0x80000001BF4FC2A0, KeyPath, v8, v4, v6, v3);
    sub_1BF3B03C0(v4, v6);

    sub_1BF3B03C0(v4, v6);
  }

  else
  {
    sub_1BF3B03C0(v4, v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BF46A7E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    KeyPath = swift_getKeyPath();
    v5 = a1;
    sub_1BF46CDC0(0x686353726F6C6F63, 0xEB00000000656D65, KeyPath, v3, v5);
  }
}

uint64_t sub_1BF46A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BF46A960(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BF46B0FC(0xD000000000000025, 0x80000001BF4FC240, KeyPath, a2, v3);
}

uint64_t sub_1BF46A9D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BF46B0FC(0xD00000000000002BLL, 0x80000001BF4FC270, KeyPath, a2, v3);
}

uint64_t sub_1BF46AA50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double))
{
  v31[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(v12);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v16 = sub_1BF4E7B54();
  __swift_project_value_buffer(v16, qword_1EDCA6AA8);

  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E84();

  v19 = v15 != 0;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v9;
    v22 = v21;
    v33[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1BF38D65C(a1, a2, v33);
    *(v20 + 12) = 2082;
    v32 = v19;
    v23 = sub_1BF4E8994();
    v25 = sub_1BF38D65C(v23, v24, v33);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_1BF389000, v17, v18, "Environment value changed [%{public}s]: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v26 = v22;
    v9 = v31[0];
    MEMORY[0x1BFB5A5D0](v26, -1, -1);
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
  }

  v27 = *(a4 + 24);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v14, a4 + v28, v9);
  v32 = v19;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v28, v14, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v27 + 16));
  v29 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t sub_1BF46AD94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v30[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v14 = a5();

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v15 = sub_1BF4E7B54();
  __swift_project_value_buffer(v15, qword_1EDCA6AA8);

  v16 = sub_1BF4E7B34();
  v17 = sub_1BF4E8E84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BF38D65C(a1, a2, v32);
    *(v19 + 12) = 2082;
    v21 = v14 & 1;
    v31 = v21;
    v22 = sub_1BF4E8994();
    v24 = sub_1BF38D65C(v22, v23, v32);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1BF389000, v16, v17, "Environment value changed [%{public}s]: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
    v25 = v19;
    v9 = v30[0];
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  else
  {

    v21 = v14 & 1;
  }

  v26 = *(a4 + 24);
  os_unfair_lock_lock(*(v26 + 16));
  v27 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v13, a4 + v27, v9);
  v31 = v21;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v27, v13, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v26 + 16));
  v28 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t sub_1BF46B0FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v29[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v14 = sub_1BF4E7B54();
  __swift_project_value_buffer(v14, qword_1EDCA6AA8);

  v15 = sub_1BF4E7B34();
  v16 = sub_1BF4E8E84();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[0] = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1BF38D65C(a1, a2, v31);
    *(v18 + 12) = 2082;
    v20 = a5 & 1;
    v30 = a5 & 1;
    v21 = sub_1BF4E8994();
    v23 = sub_1BF38D65C(v21, v22, v31);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1BF389000, v15, v16, "Environment value changed [%{public}s]: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
    v24 = v18;
    v9 = v29[0];
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
  }

  else
  {

    v20 = a5 & 1;
  }

  v25 = *(a4 + 24);
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v13, a4 + v26, v9);
  v30 = v20;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v26, v13, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v25 + 16));
  v27 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t sub_1BF46B43C(uint64_t (*a1)(char *, uint64_t), unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v47 = a1;
  v51 = sub_1BF4E7F64();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7F74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = _AXDarkenSystemColors();
  v21 = MEMORY[0x1E697F600];
  if (v20)
  {
    v21 = MEMORY[0x1E697F608];
  }

  (*(v10 + 104))(v19, *v21, v9);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v22 = sub_1BF4E7B54();
  __swift_project_value_buffer(v22, qword_1EDCA6AA8);
  v23 = *(v10 + 16);
  v50 = v19;
  v52 = v23;
  v23(v16, v19, v9);

  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E84();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = v6;
    v27 = v26;
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v27 = 136446466;
    *(v27 + 4) = sub_1BF38D65C(v47, a2, v53);
    *(v27 + 12) = 2082;
    v52(v13, v16, v9);
    v28 = sub_1BF4E8994();
    v44 = a4;
    v30 = v29;
    v31 = *(v10 + 8);
    v46 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v31;
    v31(v16, v9);
    v32 = sub_1BF38D65C(v28, v30, v53);
    a4 = v44;

    *(v27 + 14) = v32;
    _os_log_impl(&dword_1BF389000, v24, v25, "Environment value changed [%{public}s]: %{public}s", v27, 0x16u);
    v33 = v43;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v33, -1, -1);
    v34 = v27;
    v6 = v45;
    MEMORY[0x1BFB5A5D0](v34, -1, -1);
  }

  else
  {

    v35 = *(v10 + 8);
    v46 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v35;
    v35(v16, v9);
  }

  v36 = *(a4 + 24);
  os_unfair_lock_lock(*(v36 + 16));
  v37 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v38 = v48;
  v39 = v51;
  (*(v6 + 16))(v48, a4 + v37, v51);
  v40 = v50;
  v52(v13, v50, v9);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v6 + 40))(a4 + v37, v38, v39);
  swift_endAccess();
  os_unfair_lock_unlock(*(v36 + 16));
  v41 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();

  return v47(v40, v9);
}

uint64_t sub_1BF46B93C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v44 = a1;
  v6 = sub_1BF4E7F64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = _AXSEnhanceTextLegibilityEnabled();
  v20 = sub_1BF4E7D34();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1E697E9F8];
  if (v19)
  {
    v22 = MEMORY[0x1E697E9F0];
  }

  (*(*(v20 - 8) + 104))(v18, *v22, v20);
  sub_1BF4E7D34();
  (*(v21 + 56))(v18, 0, 1, v20);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v23 = sub_1BF4E7B54();
  __swift_project_value_buffer(v23, qword_1EDCA6AA8);
  sub_1BF46D2D0(v18, v15);

  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E84();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v42 = v6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v41 = v7;
    v29 = v28;
    v47[0] = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_1BF38D65C(v44, a2, v47);
    *(v27 + 12) = 2082;
    sub_1BF46D2D0(v15, v12);
    v30 = sub_1BF4E8994();
    v32 = v31;
    sub_1BF38C9B4(v15, &qword_1EBDD9818, &qword_1BF4F2E00);
    v33 = sub_1BF38D65C(v30, v32, v47);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_1BF389000, v24, v25, "Environment value changed [%{public}s]: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v34 = v29;
    v7 = v41;
    MEMORY[0x1BFB5A5D0](v34, -1, -1);
    v35 = v27;
    v6 = v42;
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v15, &qword_1EBDD9818, &qword_1BF4F2E00);
  }

  v36 = *(a4 + 24);
  os_unfair_lock_lock(*(v36 + 16));
  v37 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v38 = v45;
  (*(v7 + 16))(v45, a4 + v37, v6);
  sub_1BF46D2D0(v18, v12);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v7 + 40))(a4 + v37, v38, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v36 + 16));
  v39 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();

  return sub_1BF38C9B4(v18, &qword_1EBDD9818, &qword_1BF4F2E00);
}

void sub_1BF46BE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_subscriptions);

  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver);
}

uint64_t sub_1BF46BE60()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v4 = sub_1BF4E7F64();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_subscriptions];

  v6 = *&v0[OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IOSSystemEnvironmentProvider()
{
  result = qword_1EDC979A8;
  if (!qword_1EDC979A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF46BFE4()
{
  v0 = type metadata accessor for IOSSystemEnvironmentProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BF467770();
  return v3;
}

uint64_t sub_1BF46C044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v15 = sub_1BF4E7B54();
  __swift_project_value_buffer(v15, qword_1EDCA6AA8);
  v16 = v14;

  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E84();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31[0] = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1BF38D65C(a1, a2, v33);
    *(v20 + 12) = 2082;
    v32 = v16;
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    v22 = sub_1BF4E8994();
    v24 = sub_1BF38D65C(v22, v23, v33);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1BF389000, v17, v18, "Environment value changed [%{public}s]: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v21, -1, -1);
    v25 = v20;
    v9 = v31[0];
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  else
  {
  }

  v26 = *(a4 + 24);
  os_unfair_lock_lock(*(v26 + 16));
  v27 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v13, a4 + v27, v9);
  v32 = v16;
  v28 = v16;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v27, v13, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v26 + 16));
  v29 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t sub_1BF46C41C(uint64_t (*a1)(char *, uint64_t), unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v54 = a3;
  v52 = a1;
  v8 = sub_1BF4E7F64();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E7F84();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  sub_1BF469EFC(a5, &v48 - v20);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v22 = sub_1BF4E7B54();
  __swift_project_value_buffer(v22, qword_1EDCA6AA8);
  v23 = v12[2];
  v55 = v21;
  v24 = v21;
  v25 = v23;
  v23(v18, v24, v11);

  v26 = sub_1BF4E7B34();
  v27 = sub_1BF4E8E84();

  v28 = os_log_type_enabled(v26, v27);
  v50 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v49 = a4;
    v30 = v29;
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v30 = 136446466;
    *(v30 + 4) = sub_1BF38D65C(v52, a2, v58);
    *(v30 + 12) = 2082;
    v25(v15, v18, v11);
    v31 = sub_1BF4E8994();
    v32 = v11;
    v34 = v33;
    v35 = v12[1];
    v51 = (v12 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v35;
    v35(v18, v32);
    v36 = sub_1BF38D65C(v31, v34, v58);
    v11 = v32;

    *(v30 + 14) = v36;
    _os_log_impl(&dword_1BF389000, v26, v27, "Environment value changed [%{public}s]: %{public}s", v30, 0x16u);
    v37 = v48;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v37, -1, -1);
    v38 = v30;
    a4 = v49;
    MEMORY[0x1BFB5A5D0](v38, -1, -1);
  }

  else
  {

    v39 = v12[1];
    v51 = (v12 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v39;
    v39(v18, v11);
  }

  v40 = *(a4 + 24);
  os_unfair_lock_lock(*(v40 + 16));
  v41 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v43 = v56;
  v42 = v57;
  v44 = v53;
  (*(v56 + 16))(v53, a4 + v41, v57);
  v45 = v55;
  v50(v15, v55, v11);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v43 + 40))(a4 + v41, v44, v42);
  swift_endAccess();
  os_unfair_lock_unlock(*(v40 + 16));
  v46 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();

  return v52(v45, v11);
}

uint64_t sub_1BF46C8E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v37 = a3;
  v13 = sub_1BF4E7F64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    sub_1BF3D8864(a5, a6);
  }

  else
  {
    a5 = 0;
    a6 = 0xC000000000000000;
  }

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF4E7B54();
  __swift_project_value_buffer(v18, qword_1EDCA6AA8);
  sub_1BF3D8864(a5, a6);
  sub_1BF3D8864(a5, a6);

  v19 = sub_1BF4E7B34();
  v20 = sub_1BF4E8E84();

  sub_1BF3B03C0(a5, a6);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = v14;
    v24 = v23;
    v38[0] = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1BF38D65C(a1, a2, v38);
    *(v22 + 12) = 2082;
    v38[3] = a5;
    v38[4] = a6;
    v25 = sub_1BF4E8994();
    v27 = sub_1BF38D65C(v25, v26, v38);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1BF389000, v19, v20, "Environment value changed [%{public}s]: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    v28 = v24;
    v14 = v35;
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
    v29 = v22;
    v13 = v36;
    MEMORY[0x1BFB5A5D0](v29, -1, -1);
  }

  else
  {
    sub_1BF3B03C0(a5, a6);
  }

  v30 = *(a4 + 24);
  os_unfair_lock_lock(*(v30 + 16));
  v31 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v14 + 16))(v17, a4 + v31, v13);
  v38[0] = a5;
  v38[1] = a6;
  sub_1BF3D8864(a5, a6);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v14 + 40))(a4 + v31, v17, v13);
  swift_endAccess();
  os_unfair_lock_unlock(*(v30 + 16));
  v32 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();

  return sub_1BF3B03C0(a5, a6);
}

void sub_1BF46CCA0(void *a1)
{
  if (a1)
  {
    v1 = qword_1EDC97A10;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EDC97A18;
    v4 = v2;
    v5 = sub_1BF427568(v4, v3);

    swift_endAccess();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF4E7C74();
    }
  }
}

uint64_t sub_1BF46CDC0(uint64_t (*a1)(char *, uint64_t), unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a3;
  v50 = a1;
  v54 = sub_1BF4E7F64();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E7D24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = [a5 userInterfaceStyle];
  v24 = MEMORY[0x1E697DBA8];
  if (v23 != 2)
  {
    v24 = MEMORY[0x1E697DBB8];
  }

  (*(v12 + 104))(v22, *v24, v11);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v25 = sub_1BF4E7B54();
  __swift_project_value_buffer(v25, qword_1EDCA6AA8);
  v26 = *(v12 + 16);
  v53 = v22;
  v55 = v26;
  v26(v18, v22, v11);

  v27 = sub_1BF4E7B34();
  v28 = sub_1BF4E8E84();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = v8;
    v30 = v29;
    v46 = swift_slowAlloc();
    v56[0] = v46;
    *v30 = 136446466;
    *(v30 + 4) = sub_1BF38D65C(v50, a2, v56);
    *(v30 + 12) = 2082;
    v55(v15, v18, v11);
    v31 = sub_1BF4E8994();
    v47 = a4;
    v33 = v32;
    v34 = *(v12 + 8);
    v49 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v34;
    v34(v18, v11);
    v35 = sub_1BF38D65C(v31, v33, v56);
    a4 = v47;

    *(v30 + 14) = v35;
    _os_log_impl(&dword_1BF389000, v27, v28, "Environment value changed [%{public}s]: %{public}s", v30, 0x16u);
    v36 = v46;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
    v37 = v30;
    v8 = v48;
    MEMORY[0x1BFB5A5D0](v37, -1, -1);
  }

  else
  {

    v38 = *(v12 + 8);
    v49 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v38;
    v38(v18, v11);
  }

  v39 = *(a4 + 24);
  os_unfair_lock_lock(*(v39 + 16));
  v40 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v41 = v51;
  v42 = v54;
  (*(v8 + 16))(v51, a4 + v40, v54);
  v43 = v53;
  v55(v15, v53, v11);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v8 + 40))(a4 + v40, v41, v42);
  swift_endAccess();
  os_unfair_lock_unlock(*(v39 + 16));
  v44 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();

  return v50(v43, v11);
}

uint64_t sub_1BF46D2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF46D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E8174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v35 - v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_1BF4708E8(qword_1EDC9FA00, 255, MEMORY[0x1E6985750]);
        v28 = sub_1BF4E8874();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_1BF4708E8(&qword_1EDC96498, 255, MEMORY[0x1E6985750]);
          v33 = sub_1BF4E88C4();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BF46D6F8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1BF46FD90(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1BF47089C();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1BF4E9094();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1BF4E90A4();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1BF46D960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E8454();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v35 - v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_1BF4708E8(&qword_1EDC9F1A0, 255, MEMORY[0x1E6985A18]);
        v28 = sub_1BF4E8874();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_1BF4708E8(&qword_1EBDD9840, 255, MEMORY[0x1E6985A18]);
          v33 = sub_1BF4E88C4();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BF46DD18(uint64_t a1)
{
  v2 = v1[5];
  v1[5] = a1;

  os_unfair_lock_assert_owner(*(v1[2] + 16));

  if (v1[5])
  {
    v4 = v1[4];
    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

uint64_t (*sub_1BF46DDB0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + 16);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  v5[14] = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  swift_beginAccess();
  sub_1BF3ABF74(v1 + v10, v8);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF470940;
}

uint64_t sub_1BF46DEEC()
{
  v1 = OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&unk_1EDC9FD80);
    v3 = v0;
    v2 = sub_1BF4E7C84();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BF46DFB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = a1;
}

uint64_t (*sub_1BF46DFC8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BF46DEEC();
  return sub_1BF46E010;
}

uint64_t sub_1BF46E010(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = v2;
}

void sub_1BF46E028(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + 40);
  v6 = *(v4 + 16);

  os_unfair_lock_unlock(v6);
  *a2 = v5;
}

uint64_t sub_1BF46E07C(uint64_t a1)
{
  sub_1BF46FFF4(a1);
}

void sub_1BF46E0B4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 40))
  {
    if (a2)
    {
      v5 = *(a1 + 40);

      v7 = _s9ChronoKit19ControlEntryContentC2eeoiySbAC_ACtFZ_0(v6, a2);

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  *a3 = 1;

  sub_1BF46DD18(v8);
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 56) == 1)
    {
      if (qword_1EBDD8578 != -1)
      {
        swift_once();
      }

      v9 = sub_1BF4E7B54();
      __swift_project_value_buffer(v9, qword_1EBDE1ED8);
      v10 = sub_1BF4E7B34();
      v11 = sub_1BF4E8E84();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1BF389000, v10, v11, "Content has developer error state set.", v12, 2u);
        MEMORY[0x1BFB5A5D0](v12, -1, -1);
      }
    }
  }
}

uint64_t (*sub_1BF46E21C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + 40);
  v5 = *(v3 + 16);

  os_unfair_lock_unlock(v5);
  *a1 = v4;
  return sub_1BF46E28C;
}

uint64_t sub_1BF46E28C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v9 = 0;
    v5 = *(v3 + 16);

    os_unfair_lock_lock(v5);
    sub_1BF46E0B4(v2, v4, &v9);
    os_unfair_lock_unlock(*(v3 + 16));
    if (v9)
    {
      v6 = *(v2 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF3A4BB0(&qword_1EDC9FD90);
      sub_1BF4E7C74();
    }
  }

  else
  {
    v10[0] = 0;
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF46E0B4(v2, v4, v10);
    os_unfair_lock_unlock(*(v3 + 16));
    if (v10[0])
    {
      v7 = *(v2 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF3A4BB0(&qword_1EDC9FD90);
      sub_1BF4E7C74();
    }
  }
}

void sub_1BF46E40C(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *a2;
  swift_beginAccess();
  sub_1BF3ABF74(v5 + v7, a3);
  os_unfair_lock_unlock(*(v6 + 16));
}

uint64_t sub_1BF46E47C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1BF3ABF74(a1, &v14 - v10);
  v12 = *a2;
  return a5(v11);
}

void sub_1BF46E524(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *a1;
  swift_beginAccess();
  sub_1BF3ABF74(v2 + v6, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_1BF46E59C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = *(v2 + 16);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF3ABF74(a1, v8);
  v10 = *a2;
  swift_beginAccess();
  sub_1BF3AC398(v8, v2 + v10);
  swift_endAccess();
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t (*sub_1BF46E690(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + 16);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  v5[14] = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3ABF74(v1 + v10, v8);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF46E7CC;
}

void sub_1BF46E7D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v8 = *(*a1 + 72);
  v7 = *(*a1 + 80);
  if (a2)
  {
    sub_1BF3ABF74(*(*a1 + 96), v5);
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF3ABF74(v5, v7);
    swift_beginAccess();
    sub_1BF3AC398(v7, v8 + v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
    sub_1BF38C9B4(v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF3ABF74(v6, v5);
    swift_beginAccess();
    sub_1BF3AC398(v5, v8 + v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
  }

  sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1BF46E90C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  if (v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v2 + 16, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_1BF4E83A4();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void sub_1BF46E9A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  v8 = *(v5 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1BF46EA10()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  if (v0[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void sub_1BF46EA70(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = v2[4];
  v2[3] = a1;
  v2[4] = a2;

  v7 = *(v5 + 16);

  os_unfair_lock_unlock(v7);
}

void (*sub_1BF46EAC8(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[2];
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock(*(v3 + 16));
  if (v1[5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v1[3];
    v5 = v1[4];
  }

  os_unfair_lock_unlock(*(v3 + 16));
  *a1 = v4;
  a1[1] = v5;
  return sub_1BF46EB48;
}

void sub_1BF46EB48(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v4 + 16);
  if (a2)
  {
    v7 = a1[1];

    os_unfair_lock_lock(v6);
    v8 = *(v5 + 32);
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    v9 = *(v5 + 32);
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;

    v10 = *(v4 + 16);

    os_unfair_lock_unlock(v10);
  }
}

uint64_t sub_1BF46EBF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF46EC84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BF46ED9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ControlEntry.__allocating_init(key:environmentProvider:protectionType:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ControlEntry.init(key:environmentProvider:protectionType:)(a1, a2, a3);
  return v9;
}

char *ControlEntry.init(key:environmentProvider:protectionType:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v4 + 2) = v8;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  v11 = sub_1BF4E7334();
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v13 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v4[v13] = sub_1BF4E7C34();
  *&v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher] = 0;
  v12(&v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate], 1, 1, v11);
  v17 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  v18 = *MEMORY[0x1E6985998];
  v19 = sub_1BF4E8424();
  v20 = *(v19 - 8);
  (*(v20 + 104))(&v4[v17], v18, v19);
  swift_beginAccess();
  (*(v20 + 40))(&v4[v17], a3, v19);
  swift_endAccess();
  sub_1BF38E610(a2, &v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry_environmentProvider]);
  sub_1BF470124(a1, &v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry_key]);
  return v4;
}

char *ControlEntry.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v4 = *&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher];

  v5 = *&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher];

  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v6 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  sub_1BF39ABC8(&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry_key]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC9ChronoKit12ControlEntry_environmentProvider]);
  return v0;
}

uint64_t ControlEntry.__deallocating_deinit()
{
  ControlEntry.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1BF46F27C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + 40);
  v6 = *(v4 + 16);

  os_unfair_lock_unlock(v6);
  *a1 = v5;
}

uint64_t sub_1BF46F2D0(uint64_t *a1)
{
  v2 = *v1;
  sub_1BF46FFF4(*a1);
}

uint64_t (*sub_1BF46F310(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF46E21C(v3);
  return sub_1BF413050;
}

void sub_1BF46F384(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3ABF74(v3 + v5, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF46F418(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF46E690(v3);
  return sub_1BF413050;
}

void sub_1BF46F4B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v5[2];
  os_unfair_lock_lock(*(v6 + 16));
  v7 = v5[4];
  v5[3] = a1;
  v5[4] = a2;

  v8 = *(v6 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t (*sub_1BF46F50C(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1BF46EAC8(v3);
  return sub_1BF412658;
}

uint64_t sub_1BF46F580(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  sub_1BF38E610(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF46F62C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  sub_1BF38E610(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF46F6D4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1BF46F764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_1BF46F7C4()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_1BF46F7FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t ControlEntryContent.__allocating_init(archive:hasDeveloperError:urlAttributes:)(__int128 *a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1BF38E610(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t ControlEntryContent.init(archive:hasDeveloperError:urlAttributes:)(__int128 *a1, char a2, uint64_t a3)
{
  sub_1BF38E610(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_1BF46F9F0(__int128 *a1)
{
  swift_beginAccess();
  sub_1BF38E49C(v1 + 16, v8);
  v3 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = *(v3 + 32);
  sub_1BF4E8884();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  swift_beginAccess();
  v5 = *(v1 + 56);
  sub_1BF4E9824();
  swift_beginAccess();
  v6 = *(v1 + 64);

  sub_1BF44A2D4(a1, v6);
}

uint64_t sub_1BF46FAD0()
{
  swift_beginAccess();
  sub_1BF38E49C(v0 + 16, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1BF4E8374();
  swift_beginAccess();
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v0 + 64);
  type metadata accessor for ControlEntryContent();
  v3 = swift_allocObject();
  sub_1BF38E610(&v5, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 64) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t ControlEntryContent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t ControlEntryContent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF46FC18()
{
  sub_1BF4E9804();
  swift_beginAccess();
  sub_1BF38E49C(v0 + 16, v6);
  v1 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = *(v1 + 32);
  sub_1BF4E8884();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  swift_beginAccess();
  v3 = *(v0 + 56);
  sub_1BF4E9824();
  swift_beginAccess();
  v4 = *(v0 + 64);

  sub_1BF44A2D4(v7, v4);

  return sub_1BF4E9844();
}

uint64_t sub_1BF46FD44()
{
  sub_1BF4E9804();
  v1 = *v0;
  sub_1BF46F9F0(v3);
  return sub_1BF4E9844();
}

void sub_1BF46FD90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1BF4E9204())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1BF4E9244();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t _s9ChronoKit19ControlEntryContentC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BF38E49C(a1 + 16, v12);
  swift_beginAccess();
  sub_1BF38E49C(a2 + 16, v11);
  v4 = sub_1BF4E8684();
  sub_1BF38C9B4(v11, &qword_1EBDD9838, qword_1BF4F2F68);
  sub_1BF38C9B4(v12, &qword_1EBDD9838, qword_1BF4F2F68);
  if ((v4 & 1) != 0 && (swift_beginAccess(), v5 = *(a1 + 56), swift_beginAccess(), v5 == *(a2 + 56)))
  {
    swift_beginAccess();
    v7 = *(a1 + 64);
    swift_beginAccess();
    v8 = *(a2 + 64);

    sub_1BF46D960(v7, v8);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1BF46FFF4(uint64_t a1)
{
  v5 = 0;
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF46E0B4(v1, a1, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  if (v5)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&qword_1EDC9FD90);
    sub_1BF4E7C74();
  }
}

uint64_t sub_1BF4700C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlEntryKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF470124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlEntryKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ControlEntry()
{
  result = qword_1EDC9F948;
  if (!qword_1EDC9F948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF470248()
{
  sub_1BF3C363C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1BF4E8424();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ControlEntryKey();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1BF47089C()
{
  result = qword_1EDC9F9C0;
  if (!qword_1EDC9F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F9C0);
  }

  return result;
}

uint64_t sub_1BF4708E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF47094C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4B746E6169726176;
  }

  else
  {
    v4 = 0x7974697669746361;
  }

  if (v3)
  {
    v5 = 0xEB0000000079654BLL;
  }

  else
  {
    v5 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v6 = 0x4B746E6169726176;
  }

  else
  {
    v6 = 0x7974697669746361;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007965;
  }

  else
  {
    v7 = 0xEB0000000079654BLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();
  }

  return v9 & 1;
}

uint64_t sub_1BF470A00()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF470A90()
{
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF470B0C()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF470B98@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BF4E9514();

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

void sub_1BF470BF8(uint64_t *a1@<X8>)
{
  v2 = 0x7974697669746361;
  if (*v1)
  {
    v2 = 0x4B746E6169726176;
  }

  v3 = 0xEB0000000079654BLL;
  if (*v1)
  {
    v3 = 0xEA00000000007965;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF470C44()
{
  if (*v0)
  {
    result = 0x4B746E6169726176;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

uint64_t sub_1BF470C8C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BF4E9514();

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

uint64_t sub_1BF470CF0(uint64_t a1)
{
  v2 = sub_1BF471684(qword_1EDC9E718, sub_1BF471198);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF470D5C(uint64_t a1)
{
  v2 = sub_1BF471684(qword_1EDC9E718, sub_1BF471198);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VariantIdentifier<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for ActivityVariantKey();
  v3 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ActivityKey();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9848, &qword_1BF4F2FA0);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF471198();
  sub_1BF471684(qword_1EDC9E718, sub_1BF471198);
  v16 = v29;
  sub_1BF4E9854();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v29 = v11;
  v17 = v14;
  v18 = v25;
  v31 = 0;
  sub_1BF471684(&qword_1EDC9B650, type metadata accessor for ActivityKey);
  v19 = v27;
  v20 = v28;
  sub_1BF4E95B4();
  sub_1BF44C740(v19, v17, type metadata accessor for ActivityKey);
  v30 = 1;
  sub_1BF471684(&qword_1EDC9A458, type metadata accessor for ActivityVariantKey);
  sub_1BF4E95B4();
  (*(v18 + 8))(v10, v20);
  sub_1BF44C740(v5, v17 + *(v29 + 68), type metadata accessor for ActivityVariantKey);
  sub_1BF471254(v17, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1BF4712C4(v17);
}

void sub_1BF471198()
{
  if (!qword_1EDC9E700)
  {
    v0 = _s10CodingKeysOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9E700);
    }
  }
}

uint64_t sub_1BF4711F8(uint64_t a1)
{
  v2 = type metadata accessor for ActivityKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF471254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4712C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VariantIdentifier<>.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9850, &qword_1BF4F2FA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF471198();
  sub_1BF471684(qword_1EDC9E718, sub_1BF471198);
  sub_1BF4E9864();
  v13 = 0;
  type metadata accessor for ActivityKey();
  sub_1BF471684(qword_1EDC9B658, type metadata accessor for ActivityKey);
  sub_1BF4E9674();
  if (!v1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0) + 68);
    v12 = 1;
    type metadata accessor for ActivityVariantKey();
    sub_1BF471684(qword_1EDC9A460, type metadata accessor for ActivityVariantKey);
    sub_1BF4E9674();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BF471684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentModifiersAssertion.environmentModifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v1 + v5, a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF47174C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v3 + v6, a2);
  os_unfair_lock_unlock(*(v4 + 16));
}

void sub_1BF4717D0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentModifiers();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF44B0AC(a1, v7);
  v8 = *a2;
  EnvironmentModifiersAssertion.environmentModifiers.setter(v7);
}

void EnvironmentModifiersAssertion.environmentModifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  if (*(v1 + 40))
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
    swift_beginAccess();
    sub_1BF4718F8(a1, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));

    sub_1BF44B050(a1);
  }
}

uint64_t sub_1BF4718F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*EnvironmentModifiersAssertion.environmentModifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EnvironmentModifiers() - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 16);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v1 + v11, v8);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF471A7C;
}

void sub_1BF471A7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1BF44B0AC(v4, v3);
    EnvironmentModifiersAssertion.environmentModifiers.setter(v3);
    sub_1BF44B050(v4);
  }

  else
  {
    EnvironmentModifiersAssertion.environmentModifiers.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentModifiersAssertion.deinit()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *(v0 + 32);
    sub_1BF3B0E64(*(v0 + 24));
    sub_1BF44B050(v0 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EnvironmentModifiersAssertion.__deallocating_deinit()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *(v0 + 32);
    sub_1BF3B0E64(*(v0 + 24));
    sub_1BF44B050(v0 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers);
    v3 = *(*v0 + 48);
    v4 = *(*v0 + 52);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall EnvironmentModifiersAssertion.invalidate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  *(v0 + 40) = 1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  os_unfair_lock_unlock(*(v1 + 16));

  if (v3)
  {
    v3(v5);

    sub_1BF3B0E64(v3);
  }
}

uint64_t sub_1BF471C7C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF471CB4(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t EnvironmentModificationContext.__allocating_init()()
{
  v0 = swift_allocObject();
  EnvironmentModificationContext.init()();
  return v0;
}

uint64_t *EnvironmentModificationContext.init()()
{
  v1 = *v0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  v0[2] = v2;
  v4 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v5 = *(v1 + 88);
  v0[3] = sub_1BF4E8724();
  type metadata accessor for EnvironmentModifiers();
  v0[4] = sub_1BF4E8724();
  return v0;
}

uint64_t sub_1BF471DC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 32);
  *(v1 + 32) = a1;

  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF471E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v5[2];
      v9 = *(v8 + 16);

      os_unfair_lock_lock(v9);
      sub_1BF471F24(v5, a3, v7);
      os_unfair_lock_unlock(*(v8 + 16));
    }
  }

  return result;
}

uint64_t sub_1BF471F24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v19 - v11;
  swift_beginAccess();
  v13 = a1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v19[1] = *(v7 + 88);
  sub_1BF4E8854();

  if (!v22)
  {
    v20 = v3;
    v14 = 0;
    goto LABEL_9;
  }

  v14 = sub_1BF47253C(&v22, a3);
  v20 = v3;

  if (!(v22 >> 62))
  {
    v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v14)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v18 = sub_1BF4E9204();
    v16 = a2;
    if (!v18)
    {
      goto LABEL_7;
    }

LABEL_10:
    (*(v9 + 16))(v12, v16, v8);
    v21 = v14;
    swift_beginAccess();
    sub_1BF4E8834();

    goto LABEL_11;
  }

  v15 = sub_1BF4E9204();
  if (v15 < v14)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_1BF472924(v14, v15);
  v14 = v22;
  if (!v22)
  {
LABEL_9:
    v16 = a2;
    goto LABEL_10;
  }

  if (v22 >> 62)
  {
    goto LABEL_14;
  }

  v16 = a2;
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_7:
  (*(v9 + 16))(v12, v16, v8);
  v21 = 0;
  swift_beginAccess();
  sub_1BF4E8834();
LABEL_11:
  sub_1BF4E8864();
  swift_endAccess();
}

void *EnvironmentModificationContext.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t EnvironmentModificationContext.__deallocating_deinit()
{
  EnvironmentModificationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF472264(uint64_t a1)
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
    sub_1BF4E9204();
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
  result = sub_1BF4E9324();
  *v1 = result;
  return result;
}

uint64_t sub_1BF472304(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BF4E9204();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1BF4E9324();
}

uint64_t sub_1BF472370()
{
  result = type metadata accessor for EnvironmentModifiers();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF47253C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_1BF4E9204();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB59570](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
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
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v12 == sub_1BF4E9204())
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1BFB59570](v12, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v15 = *(v3 + 8 * v12 + 32);
          }

          v16 = swift_weakLoadStrong();

          if (!v16 || (, v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = MEMORY[0x1BFB59570](v7, v3);
                v18 = MEMORY[0x1BFB59570](v12, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_60;
                }

                if (v12 >= v19)
                {
                  goto LABEL_61;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1BF472304(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if ((v3 & 0x8000000000000000) != 0 || v20)
              {
                v3 = sub_1BF472304(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_1BF4E9204();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_1BF4E9204();
  }

  return *(v4 + 16);
}

uint64_t sub_1BF472824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for _WeakEnvironmentModifiersAssertion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BF4E9204();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1BF4E9204();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF472924(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BF4E9204();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1BF4E9204();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1BF472264(result);

  return sub_1BF472824(v4, v2, 0);
}

uint64_t sub_1BF4729FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF472A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF472AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF472B74(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  (*(v5 + 24))(v10 + v11, v9, v4);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  swift_beginAccess();
  v13 = *(v10 + v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BF472D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v4 = sub_1BF4E7F64();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF472DA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  swift_beginAccess();
  v7 = *(v1 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();

  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_1BF472EE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BF472F44;
}

uint64_t sub_1BF472F44(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
    swift_beginAccess();
    v7 = *(v5 + v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&qword_1EDC9FD90);
    sub_1BF4E7C74();
  }

  return result;
}

uint64_t sub_1BF473084(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1BF4730F4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1BF473144(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t EnvironmentProviderMock.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BF4E7F54();
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v3 + v4) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  *(v3 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  return v3;
}

uint64_t EnvironmentProviderMock.init()()
{
  sub_1BF4E7F54();
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  return v0;
}

uint64_t EnvironmentProviderMock.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher);

  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange);

  return v0;
}

uint64_t EnvironmentProviderMock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher);

  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4734BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1BF473548()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1BF473594(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  sub_1BF38E60C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF4735F8(uint64_t a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  sub_1BF38E60C(a1, v1 + 16);
  return swift_endAccess();
}

void *EnvironmentProvidingFactoryMock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for EnvironmentProviderMock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_1BF4E7F54();
  v5 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v4 + v5) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  *(v4 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  v0[5] = v1;
  v0[6] = &protocol witness table for EnvironmentProviderMock;
  v0[2] = v4;
  return v0;
}

void *EnvironmentProvidingFactoryMock.init()()
{
  v1 = type metadata accessor for EnvironmentProviderMock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_1BF4E7F54();
  v5 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v4 + v5) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  *(v4 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  v0[5] = v1;
  v0[6] = &protocol witness table for EnvironmentProviderMock;
  v0[2] = v4;
  return v0;
}

uint64_t type metadata accessor for EnvironmentProviderMock()
{
  result = qword_1EBDD9868;
  if (!qword_1EBDD9868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentProvidingFactoryMock.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4738E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a1);
}

uint64_t sub_1BF473938()
{
  result = sub_1BF4E7F64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF473C48(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, double a8)
{
  v14 = *a4;
  v15 = v8[8];
  v16 = *(v15 + 16);
  v17 = *a7;
  v18 = *a5;

  os_unfair_lock_lock(v16);
  sub_1BF473D2C(a1, a2, a3, v14, v18, a6, v17, v8, a8);
  os_unfair_lock_unlock(*(v15 + 16));
}

uint64_t sub_1BF473D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, int a7, void *a8, double a9)
{
  v35 = a7;
  v34 = a6;
  v33 = a5;
  v31 = a2;
  v32 = a3;
  v12 = *a8;
  v13 = *a8;
  v36 = a8;
  v14 = *(v12 + 88);
  v37 = *(v14 - 8);
  v27 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v26 - v15;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1BF4E7204();
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v17 = [v16 UUIDString];

  v18 = sub_1BF4E8914();
  v20 = v19;

  MEMORY[0x1BFB58C90](v18, v20);

  v30 = v40;
  v38 = v41;
  if (!sub_1BF4E8C34())
  {
  }

  v21 = *(v13 + 104);
  type metadata accessor for PowerlogUpdateEntry();
  v22 = 0;
  v29 = (v37 + 16);
  v28 = a4 & 1;
  while (1)
  {
    v23 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v23)
    {
      (*(v37 + 16))(v39, a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v14);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BF4E9304();
    if (v27 != 8)
    {
      break;
    }

    v40 = result;
    (*v29)(v39, &v40, v14);
    swift_unknownObjectRelease();
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    LOBYTE(v40) = v28;
    LOBYTE(v42) = v33;
    v43 = v35;
    v42 = sub_1BF43C8F8(v30, v38, v39, v31, v32, &v40, &v42, v34, a9, &v43);
    swift_beginAccess();
    sub_1BF4E8CA4();

    sub_1BF4E8C44();
    swift_endAccess();

    ++v22;
    if (v24 == sub_1BF4E8C34())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4740D0()
{
  v1 = v0[8];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_1BF474154(v0);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_1BF474154(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[7];
  swift_beginAccess();
  v4 = *(v2 + 88);
  v5 = *(v2 + 104);
  type metadata accessor for PowerlogUpdateEntry();
  sub_1BF4E8CA4();

  sub_1BF4E8C94();
  swift_endAccess();
  sub_1BF38E49C((a1 + 2), v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 56))(v3, v6, v7);

  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_1BF474270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  BSDispatchQueueAssertMain();
  [*(v3 + 72) invalidate];
  v7 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v8 = sub_1BF4E88E4();
  v9 = [v7 initWithIdentifier_];

  v10 = *(v6 + 72);
  *(v6 + 72) = v9;
  v11 = v9;

  if (v11)
  {
    sub_1BF3DC720();
    v12 = sub_1BF4E8F34();
    v13 = swift_allocObject();
    swift_weakInit();
    v15[4] = a2;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BF3CAF50;
    v15[3] = a3;
    v14 = _Block_copy(v15);

    [v11 scheduleRepeatingWithFireInterval:v12 repeatInterval:v14 leewayInterval:900.0 queue:900.0 handler:300.0];
    _Block_release(v14);
  }
}

uint64_t sub_1BF474400()
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EDCA6A90);
  v1 = sub_1BF4E7B34();
  v2 = sub_1BF4E8E84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF389000, v1, v2, "Performing scheduled flush of powerlog update entries", v3, 2u);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 64);
    v6 = *(v5 + 16);
    v7 = result;

    os_unfair_lock_lock(v6);
    swift_beginAccess();
    v8 = *(v7 + 56);
    *(v7 + 56) = MEMORY[0x1E69E7CC0];
    sub_1BF38E49C(v7 + 16, v11);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 56))(v8, v9, v10);

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

uint64_t BasePowerlogUpdateService.__deallocating_deinit()
{
  BasePowerlogUpdateService.deinit();

  return swift_deallocClassInstance();
}

void *PowerlogWidgetUpdateService.init(owner:)(char *a1)
{
  v14 = sub_1BF4E8F24();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BF4E8064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  type metadata accessor for WidgetPowerlogProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_1BF3DC720();
  sub_1BF4E8044();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v14);
  *(v11 + 24) = sub_1BF4E8F64();
  return sub_1BF474C08(v11, v15);
}

void *PowerlogControlsUpdateService.init(owner:)(char *a1)
{
  v14 = sub_1BF4E8F24();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BF4E8064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  type metadata accessor for ControlsPowerlogProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_1BF3DC720();
  sub_1BF4E8044();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v14);
  *(v11 + 24) = sub_1BF4E8F64();
  return sub_1BF474CF8(v11, v15);
}

uint64_t _s9ChronoKit25BasePowerlogUpdateServiceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t _s9ChronoKit27PowerlogWidgetUpdateServiceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void *sub_1BF474C08(uint64_t a1, void *a2)
{
  v7[3] = type metadata accessor for WidgetPowerlogProvider();
  v7[4] = sub_1BF3A10B4(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider);
  v7[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  a2[8] = v4;
  a2[9] = 0;
  sub_1BF38E49C(v7, (a2 + 2));
  sub_1BF474270(&unk_1F3DF1F38, sub_1BF474FA8, &block_descriptor_40);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return a2;
}

void *sub_1BF474CF8(uint64_t a1, void *a2)
{
  v7[3] = type metadata accessor for ControlsPowerlogProvider();
  v7[4] = sub_1BF3A10B4(qword_1EDC99168, type metadata accessor for ControlsPowerlogProvider);
  v7[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  a2[8] = v4;
  a2[9] = 0;
  sub_1BF38E49C(v7, (a2 + 2));
  sub_1BF474270(&unk_1F3DF1EE8, sub_1BF474FD8, &block_descriptor_10);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return a2;
}

uint64_t ControlEntryKey.host.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ControlEntryKey() + 20);

  return sub_1BF3988F8(v3, a1);
}

uint64_t ControlEntryKey.init(control:host:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for ControlEntryKey() + 20);

  return sub_1BF3C0870(a2, v4);
}

id ControlEntryKey.extensionIdentity.getter()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t ControlEntryKey.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = *v0;
  sub_1BF4E90B4();
  v12 = type metadata accessor for ControlEntryKey();
  sub_1BF3988F8(v1 + *(v12 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018);
  sub_1BF4E8884();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ControlEntryKey.hashValue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  sub_1BF4E9804();
  v11 = *v0;
  sub_1BF4E90B4();
  v12 = type metadata accessor for ControlEntryKey();
  sub_1BF3988F8(v1 + *(v12 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018);
    sub_1BF4E8884();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF475480(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1BF4E9804();
  v13 = *v1;
  sub_1BF4E90B4();
  sub_1BF3988F8(v3 + *(a1 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018);
    sub_1BF4E8884();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF475670(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  v14 = *v2;
  sub_1BF4E90B4();
  sub_1BF3988F8(v4 + *(a2 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018);
  sub_1BF4E8884();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BF475850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1953722216;
  }

  else
  {
    v4 = 0x6C6F72746E6F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1953722216;
  }

  else
  {
    v6 = 0x6C6F72746E6F63;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();
  }

  return v9 & 1;
}

uint64_t sub_1BF4758F0()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF47596C()
{
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF4759D4()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF475A4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BF4E9514();

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

void sub_1BF475AAC(uint64_t *a1@<X8>)
{
  v2 = 1953722216;
  if (!*v1)
  {
    v2 = 0x6C6F72746E6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF475AE4()
{
  if (*v0)
  {
    result = 1953722216;
  }

  else
  {
    result = 0x6C6F72746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1BF475B18@<X0>(char *a1@<X8>)
{
  v2 = sub_1BF4E9514();

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

uint64_t sub_1BF475B7C(uint64_t a1)
{
  v2 = sub_1BF4763B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF475BB8(uint64_t a1)
{
  v2 = sub_1BF4763B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ControlEntryKey.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9878, &qword_1BF4F3510);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ControlEntryKey();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4763B0();
  v16 = v30;
  sub_1BF4E9854();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v17 = v29;
    v33 = 0;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v30 = v10;
    v27 = v7;
    v19 = v31;
    v18 = v32;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF3901C0(0, &qword_1EDC9F138, 0x1E6994260);
    v20 = sub_1BF4E8EB4();
    v25 = v18;
    v26 = v19;
    if (v20)
    {
      v21 = v14;
      *v14 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      LOBYTE(v31) = 1;
      sub_1BF38C8FC(&qword_1EDC9D548);
      v22 = v27;
      v23 = v30;
      sub_1BF4E9554();
      (*(v17 + 8))(v23, v22);
      sub_1BF3B03C0(v26, v25);
      v24 = v28;
      sub_1BF3C0870(v6, v21 + *(v11 + 20));
      sub_1BF4700C0(v21, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      sub_1BF39ABC8(v21);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ControlEntryKey.encode(to:)(void *a1)
{
  v2 = v1;
  v36[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9888, &qword_1BF4F3518);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4763B0();
  sub_1BF4E9864();
  v16 = objc_opt_self();
  v17 = *v2;
  v36[0] = 0;
  v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v36];
  v19 = v36[0];
  if (!v18)
  {
    v25 = v19;
    sub_1BF4E6FF4();

    swift_willThrow();
    goto LABEL_8;
  }

  v20 = sub_1BF4E71C4();
  v22 = v21;

  v36[0] = v20;
  v36[1] = v22;
  v35 = 0;
  sub_1BF3B01D8();
  v23 = v34;
  sub_1BF4E9674();
  if (!v23)
  {
    v26 = type metadata accessor for ControlEntryKey();
    sub_1BF3988F8(v2 + *(v26 + 20), v7);
    v27 = v31;
    v28 = v33;
    if ((*(v31 + 48))(v7, 1) == 1)
    {
      (*(v11 + 8))(v14, v10);
      sub_1BF3B03C0(v20, v22);
      result = sub_1BF38C9B4(v7, &qword_1EBDD8E78, &unk_1BF4EE790);
      goto LABEL_9;
    }

    (*(v27 + 32))(v32, v7, v28);
    LOBYTE(v36[0]) = 1;
    sub_1BF38C8FC(&unk_1EDC9D558);
    v29 = v32;
    sub_1BF4E9674();
    sub_1BF3B03C0(v20, v22);
    (*(v27 + 8))(v29, v33);
LABEL_8:
    result = (*(v11 + 8))(v14, v10);
    goto LABEL_9;
  }

  (*(v11 + 8))(v14, v10);
  result = sub_1BF3B03C0(v20, v22);
LABEL_9:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BF4763B0()
{
  result = qword_1EBDD9880;
  if (!qword_1EBDD9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9880);
  }

  return result;
}

uint64_t sub_1BF476404(uint64_t a1)
{
  result = sub_1BF47647C(&qword_1EDC9F7D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF47647C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlEntryKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BF4764C0()
{
  sub_1BF3901C0(319, &qword_1EDC9F138, 0x1E6994260);
  if (v0 <= 0x3F)
  {
    sub_1BF3A1C10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BF476568()
{
  result = qword_1EBDD9890;
  if (!qword_1EBDD9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9890);
  }

  return result;
}

unint64_t sub_1BF4765C0()
{
  result = qword_1EBDD9898;
  if (!qword_1EBDD9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9898);
  }

  return result;
}

unint64_t sub_1BF476618()
{
  result = qword_1EBDD98A0;
  if (!qword_1EBDD98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98A0);
  }

  return result;
}

uint64_t sub_1BF47666C()
{
  v0 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  return 118;
}

BOOL sub_1BF476724(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return v5;
  }
}

unint64_t sub_1BF476754(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v2 = sub_1BF4E94C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1BF38E49C(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_1BF38E610(v29, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
        swift_dynamicCast();
        sub_1BF38EB2C(&v25, v27);
        sub_1BF38EB2C(v27, v28);
        sub_1BF38EB2C(v28, &v26);
        result = sub_1BF3CD5D0(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_1BF38EB2C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1BF38EB2C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BF4769F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98B0, &qword_1BF4F37F8);
    v2 = sub_1BF4E94C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BF38D324(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1BF38EB2C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BF38EB2C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BF38EB2C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1BF4E9254();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1BF38EB2C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static BugCapture.reportBug(type:subType:name:value:priority:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), uint64_t a11)
{
  v33 = a1;
  v34 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v29 - v20;
  result = sub_1BF3F34B4();
  if (result)
  {
    if (a10)
    {
      return a10();
    }
  }

  else
  {
    v32 = a5;
    v23 = sub_1BF4E8D04();
    v30 = v11;
    v31 = a7;
    v24 = v23;
    v25 = *(v23 - 8);
    (*(v25 + 16))(v21, a9, v23);
    (*(v25 + 56))(v21, 0, 1, v24);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v34;
    v26[4] = v33;
    v26[5] = a2;
    v26[6] = v27;
    v26[7] = a4;
    v28 = v31;
    v26[8] = v32;
    v26[9] = a6;
    v26[10] = v28;
    v26[11] = a8;
    v26[12] = a10;
    v26[13] = a11;
    v26[14] = v30;

    sub_1BF391990(a10);
    sub_1BF476F6C(0, 0, v21, &unk_1BF4F37B0, v26);
  }

  return result;
}

uint64_t sub_1BF476EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF476EF8, 0, 0);
}

uint64_t sub_1BF476EF8()
{
  sub_1BF477EA0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF476F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1BF477C58(a3, v27 - v11);
  v13 = sub_1BF4E8D04();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1BF477CC8(v12);
  }

  else
  {
    sub_1BF4E8CF4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1BF4E8CD4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1BF4E89B4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1BF477CC8(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF477CC8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1BF47722C(uint64_t a1, void (*a2)(void))
{
  if (!a1)
  {
    if (qword_1EDC9D518 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EDCA69D0);
    v14 = sub_1BF4E7B34();
    v15 = sub_1BF4E8E64();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Failed to receive response";
    goto LABEL_19;
  }

  v4 = *MEMORY[0x1E69D50D0];
  v30 = sub_1BF4E8914();
  sub_1BF4E9274();
  if (*(a1 + 16) && (v5 = sub_1BF3EC854(v33), (v6 & 1) != 0))
  {
    sub_1BF38D324(*(a1 + 56) + 32 * v5, v34);
    sub_1BF3EE198(v33);
    sub_1BF4785E4();
    if (swift_dynamicCast())
    {
      v7 = v30;
      if ([v30 BOOLValue])
      {
        if (qword_1EDC9D518 != -1)
        {
          swift_once();
        }

        v8 = sub_1BF4E7B54();
        __swift_project_value_buffer(v8, qword_1EDCA69D0);
        v9 = sub_1BF4E7B34();
        v10 = sub_1BF4E8E44();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          v12 = "Captured bug report successfully";
LABEL_35:
          _os_log_impl(&dword_1BF389000, v9, v10, v12, v11, 2u);
          v28 = v11;
LABEL_36:
          MEMORY[0x1BFB5A5D0](v28, -1, -1);
        }
      }

      else
      {
        v19 = *MEMORY[0x1E69D50B0];
        v31 = sub_1BF4E8914();
        v32 = v20;
        sub_1BF4E9274();
        if (*(a1 + 16) && (v21 = sub_1BF3EC854(v33), (v22 & 1) != 0))
        {
          sub_1BF38D324(*(a1 + 56) + 32 * v21, v34);
          sub_1BF3EE198(v33);
          if (swift_dynamicCast())
          {
            if (qword_1EDC9D518 != -1)
            {
              swift_once();
            }

            v23 = sub_1BF4E7B54();
            __swift_project_value_buffer(v23, qword_1EDCA69D0);

            v9 = sub_1BF4E7B34();
            v24 = sub_1BF4E8E44();

            if (!os_log_type_enabled(v9, v24))
            {

              if (!a2)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v33[0] = v26;
            *v25 = 136446210;
            v27 = sub_1BF38D65C(v31, v32, v33);

            *(v25 + 4) = v27;
            _os_log_impl(&dword_1BF389000, v9, v24, "Failed to capture bug for reason: %{public}s", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v26);
            MEMORY[0x1BFB5A5D0](v26, -1, -1);
            v28 = v25;
            goto LABEL_36;
          }
        }

        else
        {
          sub_1BF3EE198(v33);
        }

        if (qword_1EDC9D518 != -1)
        {
          swift_once();
        }

        v29 = sub_1BF4E7B54();
        __swift_project_value_buffer(v29, qword_1EDCA69D0);
        v9 = sub_1BF4E7B34();
        v10 = sub_1BF4E8E44();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          v12 = "Failed to capture bug for unknown reason";
          goto LABEL_35;
        }
      }

      if (!a2)
      {
LABEL_39:

        return;
      }

LABEL_38:
      a2();
      goto LABEL_39;
    }
  }

  else
  {
    sub_1BF3EE198(v33);
  }

  if (qword_1EDC9D518 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF4E7B54();
  __swift_project_value_buffer(v13, qword_1EDCA69D0);
  v14 = sub_1BF4E7B34();
  v15 = sub_1BF4E8E64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Received malformed response";
LABEL_19:
    _os_log_impl(&dword_1BF389000, v14, v15, v17, v16, 2u);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

LABEL_20:

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1BF477780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1BF4E8764();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1BF477828(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF477920;

  return v7(a1);
}

uint64_t sub_1BF477920()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BF477A18(uint64_t a1)
{
  v4 = *(v1 + 24);
  v16 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1BF477B28;

  return sub_1BF476EB8(a1, v16, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BF477B28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BF477C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF477CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF477D30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BF478638;

  return sub_1BF477828(a1, v5);
}

uint64_t sub_1BF477DE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BF477B28;

  return sub_1BF477828(a1, v5);
}

void sub_1BF477EA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10)
{
  v60 = a8;
  v63 = a7;
  v62 = a5;
  v61 = a10;
  v65 = a9;
  v15 = sub_1BF4E7334();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v66 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v21 = sub_1BF4E88E4();
  v56 = a1;
  v58 = a2;
  v22 = sub_1BF4E88E4();
  v57 = a3;
  v59 = a4;
  v23 = sub_1BF4E88E4();
  v64 = v20;
  v24 = [v20 processName];
  if (!v24)
  {
    sub_1BF4E8914();
    v24 = sub_1BF4E88E4();
  }

  v25 = [v66 signatureWithDomain:v21 type:v22 subType:v23 detectedProcess:v24 triggerThresholdValues:0];

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4F0C60;
    v27 = *MEMORY[0x1E69D5090];
    *(inited + 32) = sub_1BF4E8914();
    *(inited + 40) = v28;
    sub_1BF4E7324();
    sub_1BF4E72C4();
    v30 = v29;
    (*(v16 + 8))(v19, v15);
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 72) = sub_1BF4785E4();
    *(inited + 48) = v31;
    v32 = *MEMORY[0x1E69D5060];
    *(inited + 80) = sub_1BF4E8914();
    *(inited + 88) = v33;
    v34 = MEMORY[0x1E69E6158];
    *(inited + 120) = MEMORY[0x1E69E6158];
    *(inited + 96) = v62;
    *(inited + 104) = a6;
    v35 = *MEMORY[0x1E69D5070];
    *(inited + 128) = sub_1BF4E8914();
    *(inited + 136) = v36;
    *(inited + 168) = v34;
    v37 = v60;
    *(inited + 144) = v63;
    *(inited + 152) = v37;

    v38 = sub_1BF3DA488(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
    swift_arrayDestroy();
    if (qword_1EDC9D518 != -1)
    {
      swift_once();
    }

    v39 = sub_1BF4E7B54();
    __swift_project_value_buffer(v39, qword_1EDCA69D0);

    v40 = v58;

    v41 = v59;

    v42 = sub_1BF4E7B34();
    v43 = sub_1BF4E8E84();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v40;
      v47 = v45;
      aBlock[0] = v45;
      *v44 = 136446978;
      *(v44 + 4) = sub_1BF38D65C(v56, v46, aBlock);
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_1BF38D65C(v57, v41, aBlock);
      *(v44 + 22) = 2082;
      *(v44 + 24) = sub_1BF38D65C(v62, a6, aBlock);
      *(v44 + 32) = 2082;
      *(v44 + 34) = sub_1BF38D65C(v63, v37, aBlock);
      _os_log_impl(&dword_1BF389000, v42, v43, "Capturing bug report with type %{public}s; subtype: %{public}s; name: %{public}s; value: %{public}s", v44, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
    }

    aBlock[0] = 0;
    v48 = v25;
    sub_1BF4E8754();
    if (aBlock[0])
    {

      v49 = sub_1BF4E8744();

      sub_1BF4769F4(v38);

      v50 = sub_1BF4E8744();

      v51 = swift_allocObject();
      v52 = v65;
      v53 = v61;
      *(v51 + 16) = v65;
      *(v51 + 24) = v53;
      aBlock[4] = sub_1BF478630;
      aBlock[5] = v51;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF477780;
      aBlock[3] = &block_descriptor_11;
      v54 = _Block_copy(aBlock);
      sub_1BF391990(v52);

      [v66 snapshotWithSignature:v49 duration:v50 event:0 payload:v54 reply:120.0];

      _Block_release(v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v65)
    {
      v65();
    }

    v55 = v66;
  }
}

unint64_t sub_1BF4785E4()
{
  result = qword_1EDC9D6B0;
  if (!qword_1EDC9D6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D6B0);
  }

  return result;
}

uint64_t PowerlogSuggestionEntry.suggestionIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PowerlogSuggestionEntry.init(widget:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PowerlogSuggestionEntry.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FC6B0);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogSuggestionEntry.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1BF4E90B4();

  return sub_1BF4E89F4();
}

uint64_t static PowerlogSuggestionEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t PowerlogSuggestionEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4788E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF47894C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1BF4E90B4();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4789A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

unint64_t sub_1BF478A04()
{
  result = qword_1EBDD98B8;
  if (!qword_1EBDD98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98B8);
  }

  return result;
}

uint64_t sub_1BF478A80(uint64_t a1, unint64_t a2, char a3)
{
  v11 = *(*(v3 + 16) + 16) + 1;
  v7 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(a1, a2, a3);
  v8 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  sub_1BF3D6680(a1, a2, a3, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v12;
  return result;
}

uint64_t sub_1BF478B84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  result = MEMORY[0x1BFB58C40](a1);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = v4;
  return result;
}

void sub_1BF478BE8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  JUMPOUT(0x1BFB58C90);
}

uint64_t *sub_1BF478BF4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t sub_1BF478C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  (v13)(v10, v12, a3);
  v14 = sub_1BF429BBC(v10, a3, a4);
  v16 = v15;
  LOBYTE(v13) = v17;
  sub_1BF478A80(v14, v15, v17);
  sub_1BF3D88B8(v14, v16, v13);
  return (*(v6 + 8))(v12, a3);
}

unint64_t sub_1BF478D78()
{
  result = qword_1EBDD98C0;
  if (!qword_1EBDD98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98C0);
  }

  return result;
}

unint64_t sub_1BF478DDC()
{
  result = qword_1EBDD98C8;
  if (!qword_1EBDD98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98C8);
  }

  return result;
}

unint64_t sub_1BF478E40()
{
  result = qword_1EBDD98D0;
  if (!qword_1EBDD98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98D0);
  }

  return result;
}

unint64_t sub_1BF478E98()
{
  result = qword_1EBDD98D8;
  if (!qword_1EBDD98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98D8);
  }

  return result;
}

uint64_t sub_1BF478EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF478F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _WidgetEntryDescriptorChangeObserver.deinit()
{
  if (*(v0 + 72))
  {

    sub_1BF4E7BD4();

    v1 = *(v0 + 72);
  }

  *(v0 + 72) = 0;

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return v0;
}

uint64_t _WidgetEntryDescriptorChangeObserver.__deallocating_deinit()
{
  _WidgetEntryDescriptorChangeObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF479038()
{
  if (*(v0 + 72))
  {

    sub_1BF4E7BD4();

    v1 = *(v0 + 72);
  }

  *(v0 + 72) = 0;
}

void sub_1BF479094(void *a1)
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF3A000C(v1, a1, &selRef_removeObject_, "[%{public}s] Unregistering for descriptor changes for widget: %{public}s");
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1BF479270()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  LOBYTE(v4) = *(v0 + 88);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  LOBYTE(v4) = *(v0 + 89);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  *&v4 = *(v0 + 96);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  v2 = *(v0 + 104);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF479478()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  LOBYTE(v4) = *(v0 + 104);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  LOBYTE(v4) = *(v0 + 105);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  *&v4 = *(v0 + 112);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  v2 = *(v0 + 120);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

ChronoKit::PowerlogErrorReason_optional __swiftcall PowerlogErrorReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PowerlogErrorReason.rawValue.getter()
{
  v1 = 0x676F646863746177;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_1BF479740()
{
  result = qword_1EBDD98E8;
  if (!qword_1EBDD98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98E8);
  }

  return result;
}

uint64_t sub_1BF479794()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF47982C()
{
  *v0;
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF4798B0()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

void sub_1BF479950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676F646863746177;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BF4799A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676F646863746177;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676F646863746177;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
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
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

void sub_1BF479AE8(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  isa = v8[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF47E4BC(a1);
  if (v13)
  {
    v14 = v13;
    v24 = v4;
    v25 = v8;
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v1;
    v16[4] = a1;
    aBlock[4] = sub_1BF47E828;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_35;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v23 = v14;

    sub_1BF4E8014();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v24 + 8))(v7, v3);
    (*(isa + 1))(v12, v25);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA6A90);
    v25 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E84();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF389000, v25, v20, "No powerlog update entries to flush.", v21, 2u);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    v22 = v25;
  }
}

void sub_1BF479ED8(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  isa = v8[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF47D994(a1);
  if (v13)
  {
    v14 = v13;
    v24 = v4;
    v25 = v8;
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v1;
    v16[4] = a1;
    aBlock[4] = sub_1BF47DF60;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_28_0;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v23 = v14;

    sub_1BF4E8014();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v24 + 8))(v7, v3);
    (*(isa + 1))(v12, v25);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA6A90);
    v25 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E84();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BF389000, v25, v20, "No powerlog view entries to flush.", v21, 2u);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    v22 = v25;
  }
}