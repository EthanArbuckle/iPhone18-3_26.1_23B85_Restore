void *sub_1909FEE50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59EB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1909FF00C();
  sub_190D588F0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59EC0);
    sub_1909FF080(&qword_1EAD59EC8, &qword_1EAD59ED0);
    sub_190D58660();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1909FF00C()
{
  result = qword_1EAD59EB8;
  if (!qword_1EAD59EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59EB8);
  }

  return result;
}

uint64_t sub_1909FF080(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59EC0);
    sub_1909FF11C(a2, type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1909FF11C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1909FF164()
{
  result = qword_1EAD59EF0;
  if (!qword_1EAD59EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59EF0);
  }

  return result;
}

unint64_t sub_1909FF1B8()
{
  result = qword_1EAD59EF8;
  if (!qword_1EAD59EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59EF8);
  }

  return result;
}

uint64_t sub_1909FF22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909FF294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionWithMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909FF320()
{
  result = sub_190D51840();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1909FF3C4()
{
  result = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(319);
  if (v1 <= 0x3F)
  {
    result = _s10SuggestionCMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1909FF44C()
{
  result = qword_1EAD59F20;
  if (!qword_1EAD59F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F20);
  }

  return result;
}

unint64_t sub_1909FF4A4()
{
  result = qword_1EAD59F28;
  if (!qword_1EAD59F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F28);
  }

  return result;
}

unint64_t sub_1909FF4FC()
{
  result = qword_1EAD59F30;
  if (!qword_1EAD59F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F30);
  }

  return result;
}

unint64_t sub_1909FF550()
{
  result = qword_1EAD59F40;
  if (!qword_1EAD59F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F40);
  }

  return result;
}

uint64_t sub_1909FF5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundSuggestionStore.SuggestionMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909FF608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1909FF668()
{
  result = qword_1EAD59F78;
  if (!qword_1EAD59F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F78);
  }

  return result;
}

unint64_t sub_1909FF6E0()
{
  result = qword_1EAD59F98;
  if (!qword_1EAD59F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59F98);
  }

  return result;
}

unint64_t sub_1909FF738()
{
  result = qword_1EAD59FA0;
  if (!qword_1EAD59FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59FA0);
  }

  return result;
}

unint64_t sub_1909FF790()
{
  result = qword_1EAD59FA8;
  if (!qword_1EAD59FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59FA8);
  }

  return result;
}

unint64_t sub_1909FF7E8()
{
  result = qword_1EAD59FB0;
  if (!qword_1EAD59FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59FB0);
  }

  return result;
}

unint64_t sub_1909FF840()
{
  result = qword_1EAD59FB8;
  if (!qword_1EAD59FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59FB8);
  }

  return result;
}

unint64_t sub_1909FF898()
{
  result = qword_1EAD59FC0;
  if (!qword_1EAD59FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD59FC0);
  }

  return result;
}

uint64_t type metadata accessor for TTRNotificationIssueView()
{
  result = qword_1EAD59FC8;
  if (!qword_1EAD59FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1909FF970()
{
  sub_1909606CC();
  if (v0 <= 0x3F)
  {
    sub_1909FFA04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1909FFA04()
{
  result = qword_1EAD57B70;
  if (!qword_1EAD57B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD57B70);
  }

  return result;
}

uint64_t sub_1909FFA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1909645C0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1909FFC54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FF0);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FF8);
  v30 = *(v8 - 8);
  v9 = v30;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A000);
  sub_190233640(&qword_1EAD5A008, &qword_1EAD5A000);
  v29 = v14;
  sub_190D562E0();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v27 = v7;
  sub_190D562E0();
  v15 = *(v9 + 16);
  v28 = v11;
  v15(v11, v14, v8);
  v16 = *(v3 + 16);
  v17 = v31;
  v18 = v7;
  v19 = v32;
  v16(v31, v18, v32);
  v20 = v33;
  v15(v33, v11, v8);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A010) + 48)];
  v22 = v17;
  v16(v21, v17, v19);
  v23 = *(v3 + 8);
  v23(v27, v19);
  v24 = *(v30 + 8);
  v24(v29, v8);
  v23(v22, v19);
  return (v24)(v28, v8);
}

uint64_t sub_1909FFFD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TTRNotificationIssueView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v38 - v21;
  sub_190A0135C(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_190A013C0(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_190D56030();
  sub_190A0135C(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_190A013C0(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  sub_190D56030();
  sub_190A0135C(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_190A013C0(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
  sub_190D56030();
  sub_190A0135C(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_190A013C0(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22);
  v27 = v47;
  sub_190D56030();
  v28 = *(v44 + 16);
  v29 = v38;
  v28(v38, v43, v6);
  v30 = v39;
  v28(v39, v46, v6);
  v31 = v40;
  v32 = v45;
  v28(v40, v45, v6);
  v33 = v41;
  v28(v41, v27, v6);
  v34 = v42;
  v28(v42, v29, v6);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A018);
  v28(&v34[v35[12]], v30, v6);
  v28(&v34[v35[16]], v31, v6);
  v28(&v34[v35[20]], v33, v6);
  v36 = *(v44 + 8);
  v36(v47, v6);
  v36(v32, v6);
  v36(v46, v6);
  v36(v43, v6);
  v36(v33, v6);
  v36(v31, v6);
  v36(v30, v6);
  return (v36)(v29, v6);
}

uint64_t sub_190A005A0()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A00688(0xD00000000000002FLL, 0x8000000190E6C6F0);
  sub_1909FFA6C(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

id sub_190A00688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = sub_190D53D10();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v13 = type metadata accessor for TTRNotificationIssueView();
  MEMORY[0x193AF28B0](*(v3 + v13[7]), *(v3 + v13[7] + 8));
  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v14 = *(v2 + v13[5]);
  result = [v14 guid];
  if (result)
  {
    v16 = result;
    v17 = sub_190D56F10();
    v19 = v18;

    MEMORY[0x193AF28B0](v17, v19);

    MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
    MEMORY[0x193AF28B0](*(v3 + v13[6]), *(v3 + v13[6] + 8));
    MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
    v20 = [v14 description];
    v21 = sub_190D56F10();
    v23 = v22;

    MEMORY[0x193AF28B0](v21, v23);

    v24 = v36;
    v25 = v37;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD000000000000029, 0x8000000190E6C470);
    MEMORY[0x193AF28B0](v32, v33);
    MEMORY[0x193AF28B0](0xD000000000000071, 0x8000000190E6C4A0);
    MEMORY[0x193AF28B0](v24, v25);

    MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
    sub_190D515E0();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_19084CF50(v9);
    }

    else
    {
      v26 = v31;
      (*(v11 + 32))(v31, v9, v10);
      v27 = [objc_opt_self() sharedApplication];
      v28 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190964630();
      v29 = sub_190D56D60();

      [v27 openURL:v28 options:v29 completionHandler:0];

      (*(v11 + 8))(v26, v10);
    }

    sub_1909FFA6C(v6);
    sub_190D53D00();
    return (*(v34 + 8))(v6, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A00B44@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A00BBC()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A00688(0xD000000000000035, 0x8000000190E6C690);
  sub_1909FFA6C(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A00CA4@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A00D1C()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A00688(0xD000000000000039, 0x8000000190E6C620);
  sub_1909FFA6C(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A00E04@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A00E7C()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A00688(0xD000000000000057, 0x8000000190E6C590);
  sub_1909FFA6C(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A00F64@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A00FDC(uint64_t a1)
{
  v2 = type metadata accessor for TTRNotificationIssueView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190A0135C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190A013C0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_190D56030();
}

uint64_t sub_190A01108()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A00688(0xD00000000000001ELL, 0x8000000190E6C420);
  sub_1909FFA6C(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A011F0@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A01268@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FD8);
  sub_190233640(&qword_1EAD59FE0, &qword_1EAD59FD8);
  sub_190D554D0();
  v2 = sub_190D55E00();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FE8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_190A0135C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNotificationIssueView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A013C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNotificationIssueView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for TTRNotificationIssueView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
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

uint64_t sub_190A015DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TTRNotificationIssueView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_190A01650()
{
  result = qword_1EAD5A020;
  if (!qword_1EAD5A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59FE8);
    sub_190233640(&qword_1EAD5A028, &qword_1EAD5A030);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A020);
  }

  return result;
}

uint64_t static CKPosterEditingHelpers.preferredEditorModalPresentationStyle(for:)(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  if ((v1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_190DE6BF0[(v1 - 1)];
  }
}

id static CKPosterEditingHelpers.makeEditingViewControllerConfiguration(for:conversation:)(uint64_t a1, void *a2)
{
  swift_getObjectType();

  return sub_190A01CA0(a1, a2, v4);
}

void sub_190A01810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_190D56ED0();
  }

  else
  {
    v3 = 0;
  }

  if (byte_1F04021B8)
  {
    v4 = 0x8000000190E6C750;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  if ((byte_1F04021B8 & 1) == 0 && v4 == 0xEB00000000656C74)
  {
    v5 = 0;
LABEL_10:

    goto LABEL_13;
  }

  v7 = sub_190D58760();

  if (v7)
  {
    v5 = 0;
  }

  else
  {
    if (byte_1F04021B9)
    {
      v9 = 0x8000000190E6C750;
    }

    else
    {
      v9 = 0xEB00000000656C74;
    }

    if ((byte_1F04021B9 & 1) == 0 && v9 == 0xEB00000000656C74)
    {
      v5 = 1;
      goto LABEL_10;
    }

    v10 = sub_190D58760();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v5 = 1;
  }

LABEL_13:
  gotLoadHelper_x8__PRPosterHostedContentSettingsBase(v6);
  if (__OFADD__(**(v8 + 880), v5))
  {
    __break(1u);
    return;
  }

LABEL_14:
  [v2 setObject:v3 forSetting:?];

  swift_unknownObjectRelease();
}

void sub_190A01994(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v3 = byte_1F04021E0;
  if (byte_1F04021E0)
  {
    v4 = 0x8000000190E6C750;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  v12 = v2;
  if (v3 == 1 && 0x8000000190E6C750 == v4)
  {
    v8 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v6 = sub_190D58760();

  if (v6)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (byte_1F04021E1)
  {
    v10 = 0x8000000190E6C750;
  }

  else
  {
    v10 = 0xEB00000000656C74;
  }

  if (byte_1F04021E1 == 1 && 0x8000000190E6C750 == v10)
  {
    v8 = 1;
    goto LABEL_11;
  }

  v11 = sub_190D58760();

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = 1;
LABEL_12:
  gotLoadHelper_x8__PRPosterHostedContentSettingsBase(v7);
  if (__OFADD__(**(v9 + 880), v8))
  {
    __break(1u);
    return;
  }

LABEL_13:
  [v1 setObject:v12 forSetting:?];
}

id CKPosterEditingHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPosterEditingHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterEditingHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKPosterEditingHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPosterEditingHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190A01CA0(uint64_t a1, void *a2, double a3)
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
    sub_190A01FB0(inited + 32);
    gotLoadHelper_x8__OBJC_CLASS___PRPosterHostedContentSettings(v17);
    v19 = objc_allocWithZone(*(v18 + 784));
    sub_190A02018();
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

uint64_t sub_190A01FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190A02018()
{
  result = qword_1EAD44EB0;
  if (!qword_1EAD44EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44EB0);
  }

  return result;
}

uint64_t sub_190A02064(void *a1)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A058));
  sub_190D50920();
  v3 = a1;
  v4 = sub_190D533D0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_190D53410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A060);
  sub_190D53400();
  v5(v8, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_190D53410();
  sub_190D533F0();
  v6(v8, 0);

  return v4;
}

void sub_190A0221C()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong conversationForSendMenu];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v4 = OBJC_IVAR___CKSendMenuViewController_sendMenuListItems;
  v5 = qword_1F0402620;
  v6 = *(v0 + OBJC_IVAR___CKSendMenuViewController_contentProvider + 24);
  v7 = *(v0 + OBJC_IVAR___CKSendMenuViewController_contentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___CKSendMenuViewController_contentProvider), v6);
  v8 = (*(v7 + 16))(v5, v3, v6, v7);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v4);
  v22 = *(v1 + v4);
  *(v1 + v4) = 0x8000000000000000;
  v11 = sub_1908789E8(v5);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v7) = v12;
  if (*(v10 + 24) < v16)
  {
    sub_190B64814(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1908789E8(v5);
    if ((v7 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

    v11 = sub_190D587C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_12:
    v19 = v11;
    sub_190B68E98();
    v11 = v19;
    v18 = v22;
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_9:
  v18 = v22;
  if (v7)
  {
LABEL_10:
    *(v18[7] + 8 * v11) = v8;

LABEL_15:
    *(v1 + v4) = v18;
    swift_endAccess();

    return;
  }

LABEL_13:
  v18[(v11 >> 6) + 8] |= 1 << v11;
  *(v18[6] + 8 * v11) = v5;
  *(v18[7] + 8 * v11) = v8;
  v20 = v18[2];
  v15 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v15)
  {
    v18[2] = v21;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_190A02438(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_190D51C00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19097C3AC();
  v21[0] = a1;
  v21[1] = a2;
  sub_190D53440();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v17 = sub_19097C1B4();
    v18 = sub_190D51BB0();
    v19 = [v17 cellForItemAtIndexPath_];

    if (v19)
    {
      type metadata accessor for SendMenuCollectionViewCell();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {

        sub_190D58510();
        __break(1u);
        return;
      }

      sub_190A02B7C(v20, a1, a2);
    }

    (*(v8 + 8))(v10, v7);
    return;
  }

  sub_19022EEA4(v6, &qword_1EAD55490);
  if (qword_1EAD46180 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9D658);
  sub_190D52690();
  v13 = sub_190D53020();
  v14 = sub_190D576A0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_19021D9F8(a1, a2, v21);
    _os_log_impl(&dword_19020E000, v13, v14, "Could not find index path for itemIdentifier=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x193AF7A40](v16, -1, -1);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }
}

char *sub_190A027BC(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  v7 = Strong;
  v8 = sub_190D56ED0();
  v9 = sub_190D51BB0();
  v10 = [a1 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

  type metadata accessor for SendMenuCollectionViewCell();
  v11 = swift_dynamicCastClassUnconditional();
  sub_190A02B7C(v11, v4, v5);

  return v11;
}

uint64_t sub_190A028DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_19083B854(Strong + OBJC_IVAR___CKSendMenuViewController_contentProvider, v9);

    sub_19029058C(v9, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = (*(v6 + 24))(v1, v2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_190A029B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58480);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - v2 + 16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_19083B854(result + OBJC_IVAR___CKSendMenuViewController_contentProvider, v12);

    sub_19029058C(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A068);
    sub_190D532F0();
    *&v12[0] = 0;
    v6 = sub_190D532D0();
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v8 + 32))(v6, v7, v8);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_190A0221C();
    }

    (*(v1 + 8))(v3, v0);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return result;
}

void sub_190A02B7C(char *a1, uint64_t a2, unint64_t a3)
{
  sub_190A02D1C(a2, a3, &v11);
  if (v12)
  {
    sub_19029058C(&v11, v13);
    sub_190A02F48(a1, v13);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_19022EEA4(&v11, &qword_1EAD5A050);
    if (qword_1EAD46180 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D658);
    sub_190D52690();
    v7 = sub_190D53020();
    v8 = sub_190D576A0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_19021D9F8(a2, a3, v13);
      _os_log_impl(&dword_19020E000, v7, v8, "Could not find SendMenuListItem for itemIdentifier=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }
  }
}

uint64_t sub_190A02D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR___CKSendMenuViewController_sendMenuListItems;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  result = sub_190D52690();
  v14 = 0;
  v28 = v12;
  v29 = v8;
  v31 = result;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_8:
        v16 = *(*(result + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v11)))));
        v17 = *(v16 + 16);
        result = sub_190D52690();
        if (v17)
        {
          v18 = 0;
          v19 = v16 + 32;
          while (1)
          {
            if (v18 >= *(v16 + 16))
            {
              goto LABEL_24;
            }

            sub_19083B854(v19, v32);
            v20 = a2;
            v21 = v33;
            v22 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            v23 = *(v22 + 64);
            v24 = v22;
            a2 = v20;
            if (v23(v21, v24) == a1 && v25 == v20)
            {
              break;
            }

            v27 = sub_190D58760();

            if (v27)
            {

              goto LABEL_22;
            }

            ++v18;
            result = __swift_destroy_boxed_opaque_existential_0(v32);
            v19 += 40;
            if (v17 == v18)
            {
              goto LABEL_17;
            }
          }

LABEL_22:
          sub_19083B854(v32, a3);
          return __swift_destroy_boxed_opaque_existential_0(v32);
        }

LABEL_17:
        v11 &= v11 - 1;

        result = v31;
        v12 = v28;
        v8 = v29;
      }

      while (v11);
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_190A02F48(char *a1, void *a2)
{
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v81 = *(v4 + 8);
  v81(v5, v4);
  v6 = *&a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel];
  v7 = sub_190D56ED0();

  v83 = v6;
  [v6 setText_];

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 56))(v8, v9);
  v11 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v12 = *&a1[v11];
  *&a1[v11] = v10;
  v13 = v10;
  sub_190A15820(v12);

  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 24))(v14, v15);
  v17 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForDarkMode;
  swift_beginAccess();
  v18 = *&a1[v17];
  *&a1[v17] = v16;
  v19 = v16;

  sub_190A155A4();
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 16))(v20, v21);
  v23 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForLightMode;
  swift_beginAccess();
  v24 = *&a1[v23];
  *&a1[v23] = v22;
  v25 = v22;

  sub_190A155A4();
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v28 = (*(v27 + 32))(v26, v27);
  v29 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForLightMode;
  swift_beginAccess();
  v30 = *&a1[v29];
  *&a1[v29] = v28;
  v31 = v28;

  sub_190A136DC();
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  v34 = (*(v33 + 40))(v32, v33);
  v35 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForDarkMode;
  swift_beginAccess();
  v36 = *&a1[v35];
  *&a1[v35] = v34;
  v37 = v34;

  sub_190A136DC();
  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  v40 = (*(v39 + 48))(v38, v39);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets];
  swift_beginAccess();
  *v47 = v40;
  *(v47 + 1) = v42;
  *(v47 + 2) = v44;
  *(v47 + 3) = v46;
  sub_190A16510();
  v81(v5, v4);
  v48 = sub_190D56ED0();

  [a1 setAccessibilityLabel_];

  v49 = a2[3];
  v50 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v49);
  (*(v50 + 64))(v49, v50);
  v51 = sub_190D56ED0();

  [a1 setAccessibilityIdentifier_];

  v52 = [objc_opt_self() sharedFeatureFlags];
  LOBYTE(v51) = [v52 isPopoverSendMenuEnabled];

  if (v51)
  {
    v53 = 0;
  }

  else
  {
    v54 = [*(v82 + OBJC_IVAR___CKSendMenuViewController_presentationContext) presentationStyle];
    if (v54 == 1)
    {
      v53 = 0;
    }

    else
    {
      if (v54)
      {
        result = sub_190D58510();
        __break(1u);
        return result;
      }

      v53 = 1;
    }
  }

  v55 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  swift_beginAccess();
  a1[v55] = v53;
  v56 = &a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate];
  swift_beginAccess();
  *(v56 + 1) = &protocol witness table for SendMenuViewController;
  swift_unknownObjectWeakAssign();
  v57 = a2[3];
  v58 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v57);
  v59 = (*(v58 + 80))(v57, v58);
  if (v59)
  {
    v60 = 1.0;
  }

  else
  {
    v60 = 0.3;
  }

  v61 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  *&a1[v61] = v60;
  v62 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v63 = *&a1[v62];
  v64 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  v65 = *&a1[v64];
  if (v65 >= v63)
  {
    v65 = v63;
  }

  if (v60 < v65)
  {
    v65 = v60;
  }

  [v83 setAlpha_];
  v66 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v67 = *&a1[v66];
  v68 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  v69 = *&a1[v68];
  if (v69 >= v67)
  {
    v69 = v67;
  }

  if (*&a1[v61] >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = *&a1[v61];
  }

  [*&a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] setAlpha_];
  v72 = *&a1[v11];
  if (v72)
  {
    *&v71 = v70;
    [v72 setOpacity_];
  }

  v73 = *MEMORY[0x1E69DD9F0];
  v74 = [a1 accessibilityTraits];
  v75 = v74 & v73;
  if (v59)
  {
    v76 = v75 == 0;
    v77 = -1;
    if (!v76)
    {
      v77 = ~v73;
    }

    v78 = v77 & v74;
  }

  else
  {
    if (v75 == v73)
    {
      v79 = 0;
    }

    else
    {
      v79 = v73;
    }

    v78 = v79 | v74;
  }

  return [a1 setAccessibilityTraits_];
}

uint64_t sub_190A03660(char a1)
{
  sub_190A038C0();
  result = sub_190D532E0();
  if (a1)
  {
    v4 = OBJC_IVAR___CKSendMenuViewController_sendMenuListItems;
    swift_beginAccess();
    v5 = qword_1F0402648;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A048);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_190DD1D90;
    *(v6 + 32) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58480);
    sub_190D532B0();

    v7 = *(v1 + v4);
    v8 = MEMORY[0x1E69E7CC0];
    if (*(v7 + 16))
    {
      v9 = sub_1908789E8(v5);
      if (v10)
      {
        v11 = *(*(v7 + 56) + 8 * v9);
        sub_190D52690();
        v12 = *(v11 + 16);
        if (!v12)
        {
          goto LABEL_13;
        }

LABEL_7:
        v26 = v8;
        sub_19082DBB4(0, v12, 0);
        v13 = v11 + 32;
        do
        {
          sub_19083B854(v13, &v22);
          v14 = v24;
          v15 = v25;
          __swift_project_boxed_opaque_existential_1(&v22, v24);
          v16 = (*(v15 + 64))(v14, v15);
          v18 = v17;
          __swift_destroy_boxed_opaque_existential_0(&v22);
          v26 = v8;
          v20 = *(v8 + 16);
          v19 = *(v8 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_19082DBB4((v19 > 1), v20 + 1, 1);
            v8 = v26;
          }

          *(v8 + 16) = v20 + 1;
          v21 = v8 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          v13 += 40;
          --v12;
        }

        while (v12);

        goto LABEL_14;
      }

      v11 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v12)
      {
        goto LABEL_7;
      }
    }

LABEL_13:

LABEL_14:
    v22 = 0;
    v23 = 1;
    sub_190D53290();
  }

  return result;
}

unint64_t sub_190A038C0()
{
  result = qword_1EAD45980;
  if (!qword_1EAD45980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45980);
  }

  return result;
}

id sub_190A0392C()
{
  swift_getKeyPath();
  sub_190A08614(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);

  return v1;
}

void sub_190A039DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for DetailsViewConfiguration();
  v5 = v4;
  v6 = sub_190D57D90();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A08614(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C10();
  }
}

id sub_190A03B38()
{
  v0 = sub_190A07FCC();

  return v0;
}

double sub_190A03B64()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 52.0;
  if (v1 == 5)
  {
    return 44.0;
  }

  return result;
}

void sub_190A03BD0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = 6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A260);
  v9 = *(v8 + 48);
  v10 = &a4[*(v8 + 44)];
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailsViewConfiguration();
  sub_190A08614(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v11 = a1;
  sub_190D56340();
  _s9ViewModelCMa_11();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_downloadAttachmentsTextFont;
  v16 = v11;
  *(v12 + v13) = sub_190D55490();
  v14 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_buttonFont;
  *(v12 + v14) = sub_190D55360();
  v15 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_buttonColor;
  *(v12 + v15) = sub_190D55D50();
  sub_190D51C50();
  sub_190D51C50();
  *(v12 + 16) = v16;
  sub_190A08614(&qword_1EAD5A2F0, _s9ViewModelCMa_11);
  sub_190D56340();
  *v10 = a2;
  v10[1] = a3;
  sub_19096BC78(a2);
  sub_190C1A690();
  sub_19096BC7C(a2);
}

uint64_t sub_190A03DEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DetailsViewList(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewModel(0);
  sub_190A08614(&qword_1EAD56300, type metadata accessor for DetailsViewModel);
  sub_190D50920();
  sub_190D56340();
  v14 = &v13[*(v11 + 20)];
  *v14 = a3;
  *(v14 + 1) = a4;
  *(v14 + 2) = a1;
  sub_190D50920();
  sub_190D50920();
  MEMORY[0x193AF14A0](v13, a5, v11, a6);
  return sub_190A087F4(v13);
}

uint64_t sub_190A03F68(uint64_t a1)
{
  v2 = sub_190D540E0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D545E0();
}

id sub_190A04030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A08614(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_190A04114()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_190A041B8()
{
  v1 = OBJC_IVAR____TtC7ChatKit16DetailsViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190A04220()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7ChatKit16DetailsViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

ChatKit::DetailsSection_optional __swiftcall DetailsSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_190D585F0();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DetailsSection.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x736E61725479656BLL;
    v7 = 0x746E6F4365766173;
    if (v1 != 8)
    {
      v7 = 0x6E6F436B636F6C62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x616964656DLL;
    if (v1 != 5)
    {
      v8 = 0x64616F6C6E776F64;
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
    v2 = 0x7069636974726170;
    v3 = 0x6950656C646E6168;
    v4 = 0x6E6F697461636F6CLL;
    if (v1 != 3)
    {
      v4 = 0xD000000000000014;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000014;
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

unint64_t sub_190A044E8()
{
  result = qword_1EAD5A070;
  if (!qword_1EAD5A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A070);
  }

  return result;
}

uint64_t sub_190A0453C()
{
  sub_190D58870();
  sub_190B1F670();
  return sub_190D588C0();
}

uint64_t sub_190A0458C()
{
  sub_190D58870();
  sub_190B1F670();
  return sub_190D588C0();
}

unint64_t sub_190A045DC@<X0>(unint64_t *a1@<X8>)
{
  result = DetailsSection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A04668()
{
  result = qword_1EAD5A088;
  if (!qword_1EAD5A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A088);
  }

  return result;
}

uint64_t sub_190A046E4()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190A047AC()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_190A049D4()
{
  sub_190A04ADC(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration);
  if (v0 <= 0x3F)
  {
    sub_190A04ADC(319, &unk_1EAD562C0, type metadata accessor for DetailsViewModel);
    if (v1 <= 0x3F)
    {
      sub_190A04C98(319, &qword_1EAD57F70, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_190A04B30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190A04ADC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D56360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190A04B30()
{
  if (!qword_1EAD5A0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57F80);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5A0F0);
    }
  }
}

void sub_190A04BDC()
{
  sub_190A04ADC(319, &unk_1EAD562C0, type metadata accessor for DetailsViewModel);
  if (v0 <= 0x3F)
  {
    sub_190A04C98(319, &qword_1EAD55E28, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190A04C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190A04D08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D88);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-v4];
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  (*(v3 + 8))(v5, v2);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  swift_getKeyPath();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57DB0);
  sub_190D56210();

  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A208);
  sub_190A08664();
  return sub_190D54210();
}

uint64_t sub_190A04F10@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A230);
  sub_190233640(&unk_1EAD5A238, &qword_1EAD5A230);
  sub_190D554D0();
  type metadata accessor for DetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  sub_190D56320();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57FA0);
  sub_190D55FF0();
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A208) + 36);
  type metadata accessor for DetailsViewModel(0);
  sub_190A08614(&qword_1EAD56300, type metadata accessor for DetailsViewModel);
  sub_190D56340();
  result = type metadata accessor for DetailsViewList(0);
  v4 = (v2 + *(result + 20));
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return result;
}

uint64_t sub_190A050C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A248);
  MEMORY[0x1EEE9AC00](v190);
  v204 = &v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v202 = &v172 - v5;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A250);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v177 = &v172 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A258);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v203 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v212 = &v172 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A260);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v201 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v211 = &v172 - v14;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A268);
  MEMORY[0x1EEE9AC00](v187);
  v200 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v172 - v17;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5A270);
  MEMORY[0x1EEE9AC00](v186);
  v199 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v209 = &v172 - v20;
  v185 = _s11ContentViewVMa_1();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v176 = (&v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D90);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v198 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v214 = &v172 - v25;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A280);
  MEMORY[0x1EEE9AC00](v183);
  v197 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v208 = &v172 - v28;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A288);
  MEMORY[0x1EEE9AC00](v182);
  v196 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v207 = &v172 - v31;
  v174 = sub_190D554A0();
  v172 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = _s11ContentViewVMa_2();
  v181 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v175 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A290);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v195 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v213 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A298);
  v39 = (v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v194 = &v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v172 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v45 = a1;
  sub_190D56320();
  v46 = *v221;
  v47 = type metadata accessor for DetailsView(0);
  v48 = (v45 + *(v47 + 24));
  v206 = v45;
  v49 = *v48;
  v50 = v48[1];
  *&v217 = v49;
  *(&v217 + 1) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57FA0);
  sub_190D55FF0();
  v180 = *&v221[8];
  v193 = *v221;
  v51 = *&v221[16];
  v52 = (v45 + *(v47 + 28));
  v53 = *(v52 + 2);
  v217 = *v52;
  v218 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5A2A0);
  sub_190D55FF0();
  v54 = *v221;
  v179 = *&v221[24];
  v55 = type metadata accessor for DetailsViewConfiguration();
  v56 = sub_190A08614(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v178 = *&v221[8];
  *v43 = 0;
  v57 = &v43[v39[13]];
  v58 = v46;
  v216 = v55;
  sub_190D56340();
  type metadata accessor for DetailsGroupIdentityViewModel();
  swift_allocObject();
  v59 = v58;
  sub_1908C6E00(v59);
  sub_190A08614(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel);
  sub_190D56340();

  *v57 = nullsub_10;
  v57[1] = 0;
  v60 = &v43[v39[14]];
  v61 = v180;
  *v60 = v193;
  v60[1] = v61;
  v60[2] = v51;
  v62 = v39[15];
  v193 = v43;
  v63 = &v43[v62];
  *v63 = v54;
  *(v63 + 8) = v178;
  *(v63 + 3) = v179;
  v215 = v44;
  sub_190D56320();
  v64 = *v221;
  if ([*(*v221 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) supportsHandleSelection])
  {
    swift_getKeyPath();
    *v221 = v64;
    sub_190D51C20();

    v65 = *&v64[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

    v66 = v56;
    if ((v65 & 0x1000) != 0)
    {
      sub_190D56320();
      v68 = *v221;
      v69 = *(*v221 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

      _s9ViewModelCMa_2(0);
      swift_allocObject();
      v70 = sub_1908B711C(v69);
      v71 = v192;
      *v221 = 0x4039000000000000;
      (*(v172 + 104))(v173, *MEMORY[0x1E6980EF8], v174);
      sub_1909C8F50();
      v72 = v175;
      sub_190D53B90();
      v73 = *(v71 + 28);
      *(v72 + v73) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
      swift_storeEnumTagMultiPayload();
      *v72 = v70;
      v74 = v70[4];
      sub_190D50920();
      v75 = [v74 selectedSenderIdentity];
      v76 = [v75 isValidSubscription];
      v77 = [v75 label];
      v78 = sub_190D56F10();
      v80 = v79;
      if (v76)
      {

        v81 = [v75 shortName];
        v82 = sub_190D56F10();
        v84 = v83;
      }

      else
      {

        v82 = 0;
        v84 = 0;
      }

      *&v217 = v78;
      *(&v217 + 1) = v80;
      v218 = v82;
      v219 = v84;
      v220 = v76 ^ 1;
      sub_190D55FC0();
      v85 = v222;
      v86 = v223;
      v87 = *&v221[16];
      *(v72 + 8) = *v221;
      *(v72 + 24) = v87;
      *(v72 + 40) = v85;
      *(v72 + 48) = v86;
      sub_190A08754(v72, v213, _s11ContentViewVMa_2);
      v67 = 0;
    }

    else
    {
      v67 = 1;
    }
  }

  else
  {

    v67 = 1;
    v66 = v56;
  }

  v205 = v66;
  (*(v181 + 56))(v213, v67, 1, v192);
  sub_190D56320();
  v88 = *v221;
  v89 = v182;
  v90 = *(v182 + 40);
  KeyPath = swift_getKeyPath();
  v92 = v207;
  *(v207 + v90) = KeyPath;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v93 = (v92 + *(v89 + 44));
  *(v92 + *(v89 + 48)) = 3;
  v94 = v88;
  sub_190D56340();
  _s9ViewModelCMa_12();
  v95 = swift_allocObject();
  v96 = v94;
  sub_190D51C50();
  sub_190D51C50();
  *(v95 + 16) = v96;
  sub_190A08614(&qword_1EAD5A2B0, _s9ViewModelCMa_12);
  sub_190D56340();

  *v93 = nullsub_10;
  v93[1] = 0;
  sub_190D56320();
  v97 = *v221;
  v98 = v208;
  *v208 = 1;
  v99 = *(v183 + 48);
  v100 = &v98[*(v183 + 44)];
  *&v98[v99] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  v101 = v97;
  sub_190D56340();
  _s9ViewModelCMa();
  v102 = swift_allocObject();
  *(v102 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle) = 0;
  *(v102 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert) = 0;
  *(v102 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientPopover) = 0;
  *(v102 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientNavigationDestination) = 0;
  v103 = v101;
  sub_190D51C50();
  sub_190D51C50();
  *(v102 + 16) = v103;
  sub_190A08614(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D56340();

  *v100 = nullsub_10;
  v100[1] = 0;
  sub_190D56320();
  v104 = *v221;
  swift_getKeyPath();
  *v221 = v104;
  sub_190D51C20();

  if ((sub_1908553EC() & 1) == 0)
  {

    goto LABEL_13;
  }

  swift_getKeyPath();
  *v221 = v104;
  sub_190D51C20();

  v105 = *&v104[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

  if ((v105 & 2) == 0)
  {
LABEL_13:
    v115 = 1;
    v114 = v185;
    goto LABEL_14;
  }

  sub_190D56320();
  v106 = *v221;
  v107 = *(*v221 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);

  sub_190D56320();
  v108 = *v221;
  v109 = sub_1908398B0();

  _s9ViewModelCMa_1();
  swift_allocObject();
  v110 = sub_19085C90C(v107, v109);
  v111 = v176;
  *v176 = v110;
  v112 = v185;
  v113 = [objc_opt_self() defaultCenter];
  sub_190D579C0();

  sub_190A08754(v111, v214, _s11ContentViewVMa_1);
  v114 = v112;
  v115 = 0;
LABEL_14:
  (*(v184 + 56))(v214, v115, 1, v114);
  sub_190D56320();
  v116 = *v221;
  v117 = v209;
  *v209 = 4;
  v118 = v186;
  v119 = &v117[v186[11]];
  v120 = &v117[v186[12]];
  LOBYTE(v217) = 0;
  sub_190D55FC0();
  v121 = *&v221[8];
  *v120 = v221[0];
  *(v120 + 1) = v121;
  v122 = v118[13];
  *&v117[v122] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v123 = v116;
  sub_190D56340();
  type metadata accessor for DetailsConversationSettingsViewModel();
  swift_allocObject();
  v124 = v123;
  sub_190C57D08(v124);
  v186 = &unk_190DE6E60;
  sub_190A08614(&qword_1EAD5A2B8, type metadata accessor for DetailsConversationSettingsViewModel);
  sub_190D56340();

  *v119 = nullsub_10;
  v119[1] = 0;
  sub_190D56320();
  v125 = *v221;
  v126 = v210;
  *v210 = 5;
  v127 = v187;
  v128 = &v126[*(v187 + 44)];
  LOBYTE(v217) = 1;
  sub_190D55FC0();
  v129 = *&v221[8];
  *v128 = v221[0];
  *(v128 + 1) = v129;
  v130 = &v126[*(v127 + 48)];
  v131 = v125;
  sub_190D56340();
  type metadata accessor for DetailsMediaViewModel();
  v132 = swift_allocObject();
  v133 = (v132 + OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel_listRowInsets);
  *v133 = 0u;
  v133[1] = 0u;
  v134 = OBJC_IVAR____TtC7ChatKit21DetailsMediaViewModel_mediaSectionBackgroundColor;
  v135 = v131;
  *(v132 + v134) = sub_190D55DA0();
  sub_190D51C50();
  sub_190D51C50();
  *(v132 + 16) = v135;
  sub_190A08614(&unk_1EAD5A2C0, type metadata accessor for DetailsMediaViewModel);
  sub_190D56340();

  *v130 = nullsub_10;
  v130[1] = 0;
  sub_190D56320();
  sub_190A03BD0(*v221, nullsub_10, 0, v211);
  v136 = objc_opt_self();
  v137 = [v136 sharedFeatureFlags];
  v138 = [v137 isContactReviewEnabled];

  if ((v138 & 1) != 0 || (v139 = [v136 sharedFeatureFlags], v140 = objc_msgSend(v139, sel_isIntroductionsEnabled), v139, v140))
  {
    sub_190D56320();
    v141 = *v221;
    v142 = v189;
    v143 = *(v189 + 40);
    v144 = swift_getKeyPath();
    v145 = v177;
    *&v177[v143] = v144;
    swift_storeEnumTagMultiPayload();
    v146 = (v145 + *(v142 + 44));
    *(v145 + *(v142 + 48)) = 9;
    v147 = v141;
    sub_190D56340();
    _s9ViewModelCMa_10();
    v148 = swift_allocObject();
    *(v148 + OBJC_IVAR____TtCV7ChatKit30DetailsViewBlockContactSection9ViewModel__isPresentingBlockAlert) = 0;
    v149 = v147;
    sub_190D51C50();
    sub_190D51C50();
    *(v148 + 16) = v149;
    sub_190A08614(&qword_1EAD5A2D8, _s9ViewModelCMa_10);
    sub_190D56340();

    *v146 = nullsub_10;
    v146[1] = 0;
    v150 = v212;
    sub_19081E40C(v145, v212, &qword_1EAD5A250);
    v151 = 0;
  }

  else
  {
    v151 = 1;
    v150 = v212;
    v142 = v189;
  }

  (*(v188 + 56))(v150, v151, 1, v142);
  sub_190D56320();
  v152 = *v221;
  v153 = v202;
  *v202 = 7;
  v154 = &v153[*(v190 + 44)];
  v155 = v153;
  v156 = v152;
  v157 = v155;
  sub_190D56340();
  _s9ViewModelCMa_0();
  swift_allocObject();
  v158 = v156;
  sub_190B98238(v158);
  sub_190A08614(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D56340();

  *v154 = nullsub_10;
  v154[1] = 0;
  v159 = v194;
  sub_19022FD14(v193, v194, &qword_1EAD5A298);
  v160 = v195;
  sub_19022FD14(v213, v195, &qword_1EAD5A290);
  v161 = v196;
  sub_19022FD14(v207, v196, &qword_1EAD5A288);
  v162 = v197;
  sub_19022FD14(v208, v197, &qword_1EAD5A280);
  v163 = v198;
  sub_19022FD14(v214, v198, &qword_1EAD57D90);
  v164 = v199;
  sub_19022FD14(v209, v199, &unk_1EAD5A270);
  v165 = v200;
  sub_19022FD14(v210, v200, &qword_1EAD5A268);
  v166 = v201;
  sub_19022FD14(v211, v201, &qword_1EAD5A260);
  sub_19022FD14(v212, v203, &qword_1EAD5A258);
  sub_19022FD14(v157, v204, &qword_1EAD5A248);
  v167 = v191;
  sub_19022FD14(v159, v191, &qword_1EAD5A298);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A2D0);
  sub_19022FD14(v160, v167 + v168[12], &qword_1EAD5A290);
  sub_19022FD14(v161, v167 + v168[16], &qword_1EAD5A288);
  sub_19022FD14(v162, v167 + v168[20], &qword_1EAD5A280);
  sub_19022FD14(v163, v167 + v168[24], &qword_1EAD57D90);
  sub_19022FD14(v164, v167 + v168[28], &unk_1EAD5A270);
  sub_19022FD14(v165, v167 + v168[32], &qword_1EAD5A268);
  sub_19022FD14(v166, v167 + v168[36], &qword_1EAD5A260);
  v169 = v203;
  sub_19022FD14(v203, v167 + v168[40], &qword_1EAD5A258);
  v170 = v204;
  sub_19022FD14(v204, v167 + v168[44], &qword_1EAD5A248);
  sub_19022EEA4(v202, &qword_1EAD5A248);
  sub_19022EEA4(v212, &qword_1EAD5A258);
  sub_19022EEA4(v211, &qword_1EAD5A260);
  sub_19022EEA4(v210, &qword_1EAD5A268);
  sub_19022EEA4(v209, &unk_1EAD5A270);
  sub_19022EEA4(v214, &qword_1EAD57D90);
  sub_19022EEA4(v208, &qword_1EAD5A280);
  sub_19022EEA4(v207, &qword_1EAD5A288);
  sub_19022EEA4(v213, &qword_1EAD5A290);
  sub_19022EEA4(v193, &qword_1EAD5A298);
  sub_19022EEA4(v170, &qword_1EAD5A248);
  sub_19022EEA4(v169, &qword_1EAD5A258);
  sub_19022EEA4(v201, &qword_1EAD5A260);
  sub_19022EEA4(v200, &qword_1EAD5A268);
  sub_19022EEA4(v199, &unk_1EAD5A270);
  sub_19022EEA4(v198, &qword_1EAD57D90);
  sub_19022EEA4(v197, &qword_1EAD5A280);
  sub_19022EEA4(v196, &qword_1EAD5A288);
  sub_19022EEA4(v195, &qword_1EAD5A290);
  return sub_19022EEA4(v194, &qword_1EAD5A298);
}

uint64_t sub_190A06CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v4 = type metadata accessor for DetailsViewList(0);
  v124 = *(v4 - 8);
  v123 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D54870();
  v120 = *(v6 - 8);
  v121 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D54970();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_190D54300();
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A108);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v93 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A110);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A118);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v93 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A120);
  MEMORY[0x1EEE9AC00](v96);
  v23 = &v93 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A128);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = &v93 - v24;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A130) - 8;
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v93 - v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A138) - 8;
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v93 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A140);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v93 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A148);
  v29 = *(v28 - 8);
  v111 = v28;
  v112 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v106 = &v93 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A150);
  v117 = *(v31 - 8);
  v118 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v127 = &v93 - v32;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A158) - 8;
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v93 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A160);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v116 = &v93 - v35;
  v36 = sub_190D54240();
  v37 = sub_190D552B0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A168);
  (*(*(v38 - 8) + 16))(v14, a1, v38);
  v39 = &v14[*(v12 + 44)];
  *v39 = v36;
  v39[8] = v37;
  KeyPath = swift_getKeyPath();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v42 = v2;
  sub_190D56320();

  v43 = [objc_opt_self() currentDevice];
  v44 = [v43 userInterfaceIdiom];

  if (v44 == 5)
  {
    v45 = 44.0;
  }

  else
  {
    v45 = 52.0;
  }

  v46 = v95;
  sub_19081E40C(v14, v95, &qword_1EAD5A108);
  v47 = v46 + *(v16 + 44);
  v48 = v46;
  *v47 = KeyPath;
  *(v47 + 8) = v45;
  v49 = swift_getKeyPath();
  v50 = sub_190D55360();
  sub_19081E40C(v48, v21, &qword_1EAD5A110);
  v51 = &v21[*(v19 + 44)];
  *v51 = v49;
  v51[1] = v50;
  v52 = sub_190D548D0();
  sub_19081E40C(v21, v23, &qword_1EAD5A118);
  *&v23[*(v96 + 36)] = v52;
  sub_190D56320();

  v53 = v98;
  sub_190D542F0();
  sub_190A07CC4();
  v54 = v94;
  v55 = v107;
  sub_190D55C90();
  (*(v108 + 8))(v53, v55);
  sub_19022EEA4(v23, &qword_1EAD5A120);
  v56 = v42;
  sub_190D56320();
  v57 = sub_190A080B8();

  v58 = sub_190D552B0();
  v59 = v97;
  (*(v103 + 32))(v97, v54, v104);
  v60 = v59 + *(v100 + 44);
  *v60 = v57;
  *(v60 + 8) = v58;
  v93 = v41;
  v126 = v56;
  sub_190D56320();

  v61 = v99;
  sub_19081E40C(v59, v99, &qword_1EAD5A130);
  *(v61 + *(v101 + 44)) = 0;
  sub_190D56320();

  v62 = v113;
  sub_190D54960();
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5A1B0) + 36);
  v64 = v114;
  v65 = v115;
  v66 = v102;
  (*(v114 + 16))(&v102[v63], v62, v115);
  v67 = v64;
  v68 = *(v64 + 56);
  v68(v66 + v63, 0, 1, v65);
  sub_19081E40C(v61, v66, &qword_1EAD5A138);
  v69 = swift_getKeyPath();
  v70 = v105;
  v71 = (v66 + *(v105 + 36));
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59400) + 28);
  (*(v67 + 32))(v71 + v72, v62, v65);
  v68(v71 + v72, 0, 1, v65);
  *v71 = v69;
  v74 = v119;
  v73 = v120;
  v75 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x1E697C438], v121);
  v76 = sub_190A081CC();
  v77 = v106;
  sub_190D55AE0();
  (*(v73 + 8))(v74, v75);
  sub_190273834(v66);
  v78 = v122;
  sub_190A08530(v126, v122);
  v79 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v80 = swift_allocObject();
  sub_190A08754(v78, v80 + v79, type metadata accessor for DetailsViewList);
  v128 = v70;
  v129 = v76;
  swift_getOpaqueTypeConformance2();
  sub_1908C90F0();
  v81 = v111;
  sub_190D55A90();

  (*(v112 + 8))(v77, v81);
  sub_190D56320();
  v82 = v128;
  v83 = v109;
  v84 = &v109[*(v110 + 44)];
  v85 = *(type metadata accessor for DetailsViewNavigation(0) + 24);
  *&v84[v85] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailsViewModel(0);
  sub_190A08614(&qword_1EAD56300, type metadata accessor for DetailsViewModel);
  sub_190D50920();
  sub_190D56340();
  swift_getKeyPath();
  v128 = v82;
  sub_190A08614(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v86 = *(v82 + 16);
  type metadata accessor for DetailsViewConfiguration();
  sub_190A08614(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v87 = v86;
  sub_190D56340();

  (*(v117 + 32))(v83, v127, v118);
  v88 = v116;
  sub_19081E40C(v83, v116, &qword_1EAD5A158);
  sub_190D56320();
  v89 = v128;
  swift_getKeyPath();
  v128 = v89;
  sub_190D51C20();

  v90 = *(v89 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5A1F8);
  v91 = v125;
  sub_190D56340();
  return sub_19081E40C(v88, v91, &qword_1EAD5A160);
}

uint64_t sub_190A07C18@<X0>(void *a1@<X8>)
{
  result = sub_190D54010();
  *a1 = v3;
  return result;
}

uint64_t sub_190A07C44()
{
  type metadata accessor for DetailsViewList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55EF0);
  return sub_190D56200();
}

unint64_t sub_190A07CC4()
{
  result = qword_1EAD5A170;
  if (!qword_1EAD5A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A120);
    sub_190A07D50();
    sub_190A07F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A170);
  }

  return result;
}

unint64_t sub_190A07D50()
{
  result = qword_1EAD5A178;
  if (!qword_1EAD5A178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A118);
    sub_190A07E08();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A178);
  }

  return result;
}

unint64_t sub_190A07E08()
{
  result = qword_1EAD5A180;
  if (!qword_1EAD5A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A110);
    sub_190A07EC0();
    sub_190233640(&qword_1EAD467A8, &qword_1EAD5A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A180);
  }

  return result;
}

unint64_t sub_190A07EC0()
{
  result = qword_1EAD5A188;
  if (!qword_1EAD5A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A108);
    sub_190233640(&unk_1EAD5A190, &qword_1EAD5A168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A188);
  }

  return result;
}

unint64_t sub_190A07F78()
{
  result = qword_1EAD5A1A8;
  if (!qword_1EAD5A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1A8);
  }

  return result;
}

uint64_t sub_190A07FCC()
{
  swift_getKeyPath();
  sub_190A08614(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  return *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
}

uint64_t sub_190A080B8()
{
  v0 = sub_190D564A0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    sub_190D56490();
  }

  else
  {
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    sub_190D55CE0();
  }

  return sub_190D53C70();
}

unint64_t sub_190A081CC()
{
  result = qword_1EAD5A1C0;
  if (!qword_1EAD5A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A140);
    sub_190A08284();
    sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1C0);
  }

  return result;
}

unint64_t sub_190A08284()
{
  result = qword_1EAD5A1C8;
  if (!qword_1EAD5A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5A1B0);
    sub_190A0833C();
    sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1C8);
  }

  return result;
}

unint64_t sub_190A0833C()
{
  result = qword_1EAD5A1D0;
  if (!qword_1EAD5A1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A138);
    sub_190A083C8();
    sub_190A084DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1D0);
  }

  return result;
}

unint64_t sub_190A083C8()
{
  result = qword_1EAD5A1D8;
  if (!qword_1EAD5A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A120);
    sub_190D54300();
    sub_190A07CC4();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD5A1E0, &qword_1EAD5A1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1D8);
  }

  return result;
}

unint64_t sub_190A084DC()
{
  result = qword_1EAD5A1F0;
  if (!qword_1EAD5A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A1F0);
  }

  return result;
}

uint64_t sub_190A08530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A08594()
{
  type metadata accessor for DetailsViewList(0);

  return sub_190A07C44();
}

uint64_t sub_190A08614(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190A08664()
{
  result = qword_1EAD5A210;
  if (!qword_1EAD5A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A208);
    sub_190233640(&qword_1EAD5A218, &unk_1EAD5A220);
    sub_190A08614(&qword_1EAD57D98, type metadata accessor for DetailsViewList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A210);
  }

  return result;
}

uint64_t sub_190A08754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_190A087BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_190A087F4(uint64_t a1)
{
  v2 = type metadata accessor for DetailsViewList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190A08850()
{
  result = qword_1EAD5A2F8;
  if (!qword_1EAD5A2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5A1F8);
    sub_190A0890C();
    sub_190A08614(&qword_1EAD57DA0, type metadata accessor for DetailsViewSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A2F8);
  }

  return result;
}

unint64_t sub_190A0890C()
{
  result = qword_1EAD5A300;
  if (!qword_1EAD5A300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A160);
    sub_190A08998();
    sub_190A08AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A300);
  }

  return result;
}

unint64_t sub_190A08998()
{
  result = qword_1EAD5A308;
  if (!qword_1EAD5A308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A140);
    sub_190A081CC();
    swift_getOpaqueTypeConformance2();
    sub_1908C90F0();
    swift_getOpaqueTypeConformance2();
    sub_190A08614(&qword_1EAD5A310, type metadata accessor for DetailsViewNavigation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A308);
  }

  return result;
}

unint64_t sub_190A08AE8()
{
  result = qword_1EAD5A318;
  if (!qword_1EAD5A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A318);
  }

  return result;
}

id sub_190A08B3C()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A08C1C@<X0>(uint64_t *a1@<X8>)
{
  sub_190A09A14();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190A08C5C()
{
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();
}

uint64_t sub_190A08CE0()
{
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();
}

void (*sub_190A08D68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908F5C8C();
  return sub_190A08E88;
}

void sub_190A08E88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_190A08F1C()
{
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A08FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A09050(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A09A68(&qword_1EAD45FC8);
    sub_190D51C10();
  }
}

uint64_t sub_190A0919C()
{
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();

  return *(v0 + 32);
}

uint64_t sub_190A09228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A09A68(&qword_1EAD45FC8);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_190A092BC(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A09A68(&qword_1EAD45FC8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190A093AC()
{

  v1 = OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsInfoTab()
{
  result = qword_1EAD45FB8;
  if (!qword_1EAD45FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A094A4()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190A09570()
{
  result = qword_1EAD45170;
  if (!qword_1EAD45170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45170);
  }

  return result;
}

unint64_t sub_190A095D8()
{
  result = qword_1EAD45FE0;
  if (!qword_1EAD45FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FE0);
  }

  return result;
}

unint64_t sub_190A09630()
{
  result = qword_1EAD45FF0;
  if (!qword_1EAD45FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FF0);
  }

  return result;
}

unint64_t sub_190A09688()
{
  result = qword_1EAD45FD8;
  if (!qword_1EAD45FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FD8);
  }

  return result;
}

unint64_t sub_190A096E0()
{
  result = qword_1EAD45FE8;
  if (!qword_1EAD45FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FE8);
  }

  return result;
}

void *sub_190A09734()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v0[2] = v6;
    v0[3] = v8;
    v0[4] = 0;
    sub_190D51C50();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_190A09828(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_190A08D68(v2);
  return sub_190A09898;
}

void sub_190A0989C()
{
  type metadata accessor for DetailsInfoTab();

  JUMPOUT(0x193AEE5C0);
}

void (*sub_190A098E0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D52D70();
  return sub_190A09AAC;
}

uint64_t sub_190A09974@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsInfoTab();
  sub_190A09A68(&qword_1EAD45FD0);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A09A14()
{
  result = qword_1EAD45FF8;
  if (!qword_1EAD45FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45FF8);
  }

  return result;
}

uint64_t sub_190A09A68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetailsInfoTab();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190A09AB0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_defaultImageOpacity] = 0x3FE147AE147AE148;
  *&v4[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeImageOpacity] = 0x3FEF5C28F5C28F5CLL;
  v9 = &v4[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_imageFilter];
  *v9 = sub_190D56F10();
  v9[1] = v10;
  v11 = objc_opt_self();
  v12 = sub_190D56ED0();
  v13 = [v11 ckImageNamed_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_sparklesImage;
  v15 = [v13 imageWithRenderingMode_];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView] = 0;
  v16 = objc_opt_self();
  v17 = [v16 sharedBehaviors];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_buttonBGColor;
  v20 = [v17 generationButtonRegularBackgroundColor];

  *&v4[v19] = v20;
  v21 = [v16 sharedBehaviors];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  v23 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_buttonTintColor;
  v24 = [v21 generationButtonRegularTintColor];

  *&v4[v23] = v24;
  v25 = [v16 sharedBehaviors];
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  v27 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeButtonBGColor;
  v28 = [v25 generationButtonHighlightedBackgroundColor];

  *&v4[v27] = v28;
  v29 = [v16 sharedBehaviors];
  if (v29)
  {
    v30 = v29;
    v31 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeButtonTintColor;
    v32 = [v29 generationButtonHighlightedTintColor];

    *&v4[v31] = v32;
    v4[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance] = 0;
    v34.receiver = v4;
    v34.super_class = type metadata accessor for CKInlineMediaViewGenerateButton();
    v33 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
    sub_190A0A320();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_190A09D94(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_defaultImageOpacity] = 0x3FE147AE147AE148;
  *&v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeImageOpacity] = 0x3FEF5C28F5C28F5CLL;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_imageFilter];
  *v3 = sub_190D56F10();
  v3[1] = v4;
  v5 = objc_opt_self();
  v6 = sub_190D56ED0();
  v7 = [v5 ckImageNamed_];

  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_sparklesImage;
  v9 = [v7 imageWithRenderingMode_];

  *&v1[v8] = v9;
  *&v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView] = 0;
  v10 = objc_opt_self();
  v11 = [v10 sharedBehaviors];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_buttonBGColor;
  v14 = [v11 generationButtonRegularBackgroundColor];

  *&v1[v13] = v14;
  v15 = [v10 sharedBehaviors];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_buttonTintColor;
  v18 = [v15 generationButtonRegularTintColor];

  *&v1[v17] = v18;
  v19 = [v10 sharedBehaviors];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeButtonBGColor;
  v22 = [v19 generationButtonHighlightedBackgroundColor];

  *&v1[v21] = v22;
  v23 = [v10 sharedBehaviors];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_generativeButtonTintColor;
  v26 = [v23 generationButtonHighlightedTintColor];

  *&v1[v25] = v26;
  v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance] = 0;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for CKInlineMediaViewGenerateButton();
  v27 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
  if (v27)
  {
    v28 = v27;
    sub_190A0A320();
  }
}

uint64_t sub_190A0A0AC()
{
  v1 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190A0A144(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 != (a1 & 1))
  {
    v5 = *&v1[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView];
    if (v5)
    {
      v6 = v5[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminated];
      v5[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminated] = a1 & 1;
      if (v6 != (a1 & 1))
      {
        v7 = v5;
        sub_190A0B470();
      }
    }

    if (v1[v3])
    {
      v8 = 0.98;
    }

    else
    {
      v8 = 0.54;
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:v8];
    [v1 setTintColor_];
  }
}

void (*sub_190A0A24C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_190A0A2E0;
}

void sub_190A0A2E0(uint64_t a1)
{
  v1 = *a1;
  sub_190A0A144(*(*a1 + 32));

  free(v1);
}

uint64_t sub_190A0A320()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setUserInteractionEnabled_];
  [v0 bounds];
  v17 = [objc_allocWithZone(type metadata accessor for CKGenerateButtonBackground()) initWithFrame_];
  sub_190D57F70();
  v18 = [objc_opt_self() whiteColor];
  sub_190D57F00();
  v29 = v17;
  v19 = sub_190D57DE0();
  sub_190D53210();
  v19(v30, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190D53310();
  v20 = sub_190D53300();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  sub_190D57F10();
  v21 = *&v0[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_sparklesImage];
  sub_190D57F60();
  (*(v9 + 16))(v4, v12, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_190D57FE0();
  v22 = *&v0[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView];
  *&v0[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView] = v17;
  v23 = v29;

  v24 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  if (v1[v24])
  {
    v25 = 0.98;
  }

  else
  {
    v25 = 0.54;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:v25];
  [v1 setTintColor_];

  return (*(v9 + 8))(v12, v8);
}

id sub_190A0A6FC(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v8[0] = 0.0;
    [a1 getRed:0 green:0 blue:0 alpha:v8];
    v3 = [v2 isHighlighted];
    v4 = v8[0];
    if (v3)
    {
      v4 = v8[0] * 0.4;
    }

    v5 = [a1 colorWithAlphaComponent_];

    return v5;
  }

  else
  {

    return a1;
  }
}

void sub_190A0A824()
{
  v1 = [v0 imageView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    v4 = sub_190D56ED0();
    [v3 setCompositingFilter_];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for CKInlineMediaViewGenerateButton();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_backgroundView];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }
}

CGColorRef sub_190A0AAD0()
{
  result = CGColorCreateGenericRGB(0.0509803922, 0.639215686, 1.0, 1.0);
  qword_1EAD5A348 = result;
  return result;
}

CGColorRef sub_190A0AB08()
{
  result = CGColorCreateGenericRGB(0.125490196, 0.647058824, 1.0, 1.0);
  qword_1EAD5A350 = result;
  return result;
}

double sub_190A0AB44()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v1 = sub_190D57160();
  [v0 setValue:v1 forKey:*MEMORY[0x1E6979C28]];

  v2 = sub_190D573F0();
  v3 = *MEMORY[0x1E6979990];
  [v0 setValue:v2 forKey:*MEMORY[0x1E6979990]];

  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v5 = sub_190D573F0();
  [v4 setValue:v5 forKey:v3];

  v6 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v7 = sub_190D573F0();
  [v6 setValue:v7 forKey:v3];

  v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v9 = sub_190D573F0();
  [v8 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

  v10 = sub_190D57230();
  [v8 setValue:v10 forKey:*MEMORY[0x1E6979B78]];

  v11 = sub_190D57230();
  [v8 setValue:v11 forKey:*MEMORY[0x1E6979B48]];

  v12 = sub_190D56ED0();
  [v8 setValue:v12 forKey:*MEMORY[0x1E6979BA0]];

  v13 = sub_190D57230();
  [v8 setValue:v13 forKey:*MEMORY[0x1E6979AC8]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v14 = swift_allocObject();
  *&result = 4;
  *(v14 + 16) = xmmword_190DD86A0;
  *(v14 + 32) = v0;
  *(v14 + 40) = v4;
  *(v14 + 48) = v6;
  *(v14 + 56) = v8;
  return result;
}

double sub_190A0AE00()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v1 = sub_190D57160();
  [v0 setValue:v1 forKey:*MEMORY[0x1E6979C28]];

  v2 = sub_190D573F0();
  [v0 setValue:v2 forKey:*MEMORY[0x1E6979990]];

  v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v4 = sub_190D573F0();
  [v3 setValue:v4 forKey:*MEMORY[0x1E6979BA8]];

  v5 = sub_190D57230();
  [v3 setValue:v5 forKey:*MEMORY[0x1E6979B78]];

  v6 = sub_190D57230();
  [v3 setValue:v6 forKey:*MEMORY[0x1E6979B48]];

  v7 = sub_190D56ED0();
  [v3 setValue:v7 forKey:*MEMORY[0x1E6979BA0]];

  v8 = sub_190D57230();
  [v3 setValue:v8 forKey:*MEMORY[0x1E6979AC8]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v9 = swift_allocObject();
  *&result = 2;
  *(v9 + 16) = xmmword_190DD5CE0;
  *(v9 + 32) = v0;
  *(v9 + 40) = v3;
  return result;
}

void sub_190A0B000(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminated] = 0;
  v9 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_defaultBackdropFilters;
  sub_190A0AB44();
  *&v4[v9] = v10;
  v11 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedBackdropFilters;
  sub_190A0AE00();
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer;
  v14 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1EAD51B40 != -1)
  {
    swift_once();
  }

  [v14 setBackgroundColor_];
  [v14 setCompositingFilter_];
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer;
  v16 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1EAD51B48 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor_];
  [v16 setCompositingFilter_];
  *&v4[v15] = v16;
  v17 = objc_opt_self();
  v18 = sub_190D56ED0();
  v19 = [v17 ckImageNamed_];

  if (v19)
  {
    v20 = [v19 imageWithRenderingMode_];

    v21 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
    *&v4[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_backdropLayer] = v21;
    v22 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    *&v4[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_maskLayer] = v22;
    v23 = v22;
    v24 = [v20 CGImage];
    [v23 setContents_];

    v40.receiver = v4;
    v40.super_class = type metadata accessor for CKGenerateButtonBackground();
    v25 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
    v26 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_backdropLayer;
    v27 = *&v25[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_backdropLayer];
    v28 = v25;
    v29 = v27;
    [v28 bounds];
    [v29 setFrame_];

    v30 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_maskLayer;
    v31 = *&v28[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_maskLayer];
    [v28 bounds];
    [v31 setFrame_];

    v32 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer;
    v33 = *&v28[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer];
    [v28 bounds];
    [v33 setFrame_];

    v34 = OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer;
    v35 = *&v28[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer];
    [v28 bounds];
    [v35 setFrame_];

    v36 = [v28 layer];
    [v36 addSublayer_];

    v37 = [v28 layer];
    [v37 addSublayer_];

    v38 = [v28 layer];
    [v38 addSublayer_];

    v39 = [v28 layer];
    [v39 setMask_];

    sub_190A0B470();
  }

  else
  {
    __break(1u);
  }
}

id sub_190A0B470()
{
  v1 = v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminated];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_backdropLayer];
  v3 = sub_190D52690();
  sub_1908A1E3C(v3);

  v4 = sub_190D57160();

  [v2 setFilters_];

  [*&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer] setHidden_];
  [*&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer] setHidden_];

  return [v0 setNeedsLayout];
}

void sub_190A0B7F4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CKGenerateButtonBackground();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_backdropLayer];
  [v0 bounds];
  [v1 setFrame_];

  v2 = *&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_maskLayer];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusLighterLayer];
  [v0 bounds];
  [v3 setFrame_];

  v4 = *&v0[OBJC_IVAR____TtC7ChatKitP33_48E4CE588C5118AF31EDCFDBF5B7EAE826CKGenerateButtonBackground_illuminatedPlusDarkerLayer];
  [v0 bounds];
  [v4 setFrame_];
}

id sub_190A0B968(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190A0BA58(uint64_t a1)
{
  v3 = [v1 recipients];
  v4 = sub_190D57180();

  if (*(v4 + 16))
  {
    sub_19021834C(v4 + 32, v6);

    sub_19084E158();
    if (swift_dynamicCast())
    {
      sub_190A0BB2C(v5, a1);
    }
  }

  else
  {
  }
}

void sub_190A0BB2C(void *a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = sub_190D56D60();
  LODWORD(v5) = [v5 isModernScreenSharingAvailableForEntity:a1 capabilities:v6];

  if (v5)
  {
    v17 = [v2 chat];
    [v17 initiateTUConversationWithScreenShareType_];
LABEL_16:

    return;
  }

  v7 = [a1 defaultIMHandle];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v9 = sub_190D57160();
  v17 = [v8 cnContactWithKeys_];

  if (v17)
  {
    v10 = [objc_opt_self() isCNContactAKnownContact_];
    if (v10)
    {
      v11 = [v17 identifier];
    }

    else
    {
      v11 = [a1 rawAddress];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    sub_190D56F10();

    if (a2)
    {
      if (a2 == 2)
      {
        v15 = [objc_opt_self() sharedController];
        v16 = [v15 remoteDaemon];

        v14 = sub_190D56ED0();

        [v16 askHandleIDToShareTheirScreen:v14 isContact:v10];
        goto LABEL_15;
      }

      if (a2 == 1)
      {
        v12 = [objc_opt_self() sharedController];
        v13 = [v12 remoteDaemon];

        v14 = sub_190D56ED0();

        [v13 inviteHandleIDToShareMyScreen:v14 isContact:v10];
LABEL_15:
        swift_unknownObjectRelease();

        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }
}

void sub_190A0BE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 recipients];
  v5 = sub_190D57180();

  v28 = MEMORY[0x1E69E7CC0];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_19021834C(v7, v27);
      sub_190824530(v27, &v25);
      sub_19084E158();
      if ((swift_dynamicCast() & 1) != 0 && v26)
      {
        MEMORY[0x193AF29E0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v8 = v28;
      }

      v7 += 32;
      --v6;
    }

    while (v6);

    if (!(v8 >> 62))
    {
LABEL_10:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_11;
      }

LABEL_27:

      return;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_10;
    }
  }

  v9 = sub_190D581C0();
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_11:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193AF3B90](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v11 defaultIMHandle];
    if (!v14)
    {
      goto LABEL_33;
    }

    v15 = v14;
    v16 = [v14 ID];

    v17 = sub_190D56F10();
    v19 = v18;

    if (v17 == a1 && v19 == a2)
    {

LABEL_29:

      sub_190A0BB2C(v12, a3);

      return;
    }

    v21 = sub_190D58760();

    if (v21)
    {
      goto LABEL_29;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id StickerReactionLayoutHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickerReactionLayoutHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerReactionLayoutHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StickerReactionLayoutHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerReactionLayoutHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s7ChatKit27StickerReactionLayoutHelperC13stickerCenter3for2in9alignLeft0G4SizeSo7CGPointVSi_So6CGRectVSbSo6CGSizeVtFZ_0(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v15 = ((a1 & 1) == 0) ^ a2;
  if (v15)
  {
    MinX = CGRectGetMinX(*&a3);
  }

  else
  {
    MinX = CGRectGetMaxX(*&a3);
  }

  v56 = MinX;
  if (v15)
  {
    v17 = a7 * 0.5;
  }

  else
  {
    v17 = -(a7 * 0.5);
  }

  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  if (a1)
  {
    MinY = CGRectGetMinY(*&v18);
    v22 = 1.0;
  }

  else
  {
    MinY = CGRectGetMaxY(*&v18);
    v22 = -1.0;
  }

  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  v60 = CGRectInset(v59, -8.0, -8.0);
  if (a1 >= -1)
  {
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    height = v60.size.height;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = a1 / 2;
    v31 = a8 * 0.5 * v22;
    while (!__OFADD__(v28, 2))
    {
      if (v29 >= 0)
      {
        v33 = v29 & 1;
      }

      else
      {
        v33 = -(v29 & 1);
      }

      v34 = v28 & 1;
      if (v28 < 0)
      {
        v34 = -v34;
      }

      v35 = v33 == v34;
      v32 = __OFADD__(v29, v35);
      v36 = v29 + v35;
      if (v32)
      {
        goto LABEL_42;
      }

      v37 = vcvtd_n_f64_s64(v36, 1uLL);
      if (v33 == v34)
      {
        v38 = -1;
      }

      else
      {
        v38 = 1;
      }

      v39 = vcvtd_n_f64_s64(v28, 1uLL) + 0.5;
      v40 = v37 * v38;
      v41 = v56 + v17 * v39 - v17 * v40;
      v42 = MinY + v31 * v39 + v31 * v40;
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v57.x = v41;
      v57.y = v42;
      if (CGRectContainsPoint(v61, v57))
      {
        v32 = __OFADD__(v29++, 1);
        if (v32)
        {
          goto LABEL_45;
        }

        if (v29 < v28 + 2)
        {
          if (v30 == v27)
          {
            return;
          }
        }

        else
        {
          if (v30 == v27)
          {
            return;
          }

          v29 = 0;
          ++v28;
        }
      }

      else
      {
        v43 = v28++ < -1;
        v44 = v28 & 1;
        if (v43)
        {
          v44 = -v44;
        }

        v45 = v33 == v44;
        v32 = __OFADD__(v29, v45);
        v46 = v29 + v45;
        if (v32)
        {
          goto LABEL_44;
        }

        v47 = vcvtd_n_f64_s64(v46, 1uLL);
        if (v33 == v44)
        {
          v48 = -1;
        }

        else
        {
          v48 = 1;
        }

        v49 = vcvtd_n_f64_s64(v28, 1uLL) + 0.5;
        v50 = v47 * v48;
        v51 = v56 + v17 * v49 - v17 * v50;
        v52 = MinY + v31 * v49 + v31 * v50;
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        v58.x = v51;
        v58.y = v52;
        if (!CGRectContainsPoint(v62, v58) || v30 == v27)
        {
          return;
        }

        v29 = 1;
      }

      v32 = __OFADD__(v27++, 1);
      if (v32)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
}

size_t sub_190A0C4A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v117 = a2;
  v115 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v114 = &v110 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v141 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v110 - v10;
  v11 = sub_190D50620();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v137 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v139 = (&v110 - v14);
  v140 = sub_190D50650();
  v15 = *(v140 - 8);
  v16 = MEMORY[0x1EEE9AC00](v140);
  v136 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v110 - v18;
  v128 = sub_190D505E0();
  v124 = *(v128 - 8);
  v19 = MEMORY[0x1EEE9AC00](v128);
  v113 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v110 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3E8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v134 = &v110 - v23;
  v24 = sub_190D513C0();
  v130 = *(v24 - 8);
  v131 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_190D505B0();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v111 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v110 - v30);
  v32 = [a1 identifier];
  v33 = sub_190D56F10();
  v35 = v34;

  *v31 = v33;
  v31[1] = v35;
  v36 = *MEMORY[0x1E6959F88];
  v112 = v27;
  v37 = *(v27 + 104);
  v122 = v31;
  v123 = v26;
  v37(v31, v36, v26);
  v38 = [a1 phoneticGivenName];
  sub_190D56F10();
  v133 = v39;

  v40 = [a1 phoneticMiddleName];
  sub_190D56F10();

  v41 = [a1 phoneticFamilyName];
  sub_190D56F10();

  v135 = *(v130 + 56);
  v42 = v134;
  (v135)(v134, 1, 1, v131);
  v43 = v42;
  sub_190D51390();
  v44 = [a1 namePrefix];
  v45 = sub_190D56F10();
  v132 = v46;
  v133 = v45;

  v47 = [a1 givenName];
  v126 = sub_190D56F10();
  v121 = v48;

  v49 = [a1 middleName];
  v120 = sub_190D56F10();
  v119 = v50;

  v51 = [a1 familyName];
  sub_190D56F10();
  v118 = v52;

  v53 = [a1 nameSuffix];
  sub_190D56F10();

  v54 = [a1 nickname];
  sub_190D56F10();

  v55 = v43;
  v56 = v43;
  v57 = v131;
  (*(v130 + 16))(v56, v129, v131);
  (v135)(v55, 0, 1, v57);
  v58 = v127;
  sub_190D51390();
  (*(v124 + 104))(v58, *MEMORY[0x1E6959FA8], v128);
  v126 = a1;
  v59 = [a1 phoneNumbers];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0);
  v61 = sub_190D57180();

  v62 = v61;
  if (v61 >> 62)
  {
    v63 = sub_190D581C0();
    v62 = v61;
  }

  else
  {
    v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = MEMORY[0x1E69E7CC0];
  v65 = v141;
  if (v63)
  {
    v66 = v62;
    v142 = MEMORY[0x1E69E7CC0];
    result = sub_19082DC5C(0, v63 & ~(v63 >> 63), 0);
    if (v63 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v121 = v60;
    v68 = 0;
    v69 = v142;
    v70 = v66;
    v132 = v15 + 32;
    v133 = v66 & 0xC000000000000001;
    v134 = v63;
    v135 = v66;
    do
    {
      if (v133)
      {
        v71 = MEMORY[0x193AF3B90](v68, v70);
      }

      else
      {
        v71 = v70[v68 + 4];
      }

      v72 = v71;
      v73 = [v71 value];
      v74 = [v73 stringValue];

      sub_190D56F10();
      v75 = [v72 label];
      if (v75)
      {
        v76 = v75;
        v77 = sub_190D56F10();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      v65 = v141;
      sub_190A0D428(v77, v79, v139);
      v80 = v138;
      sub_190D505F0();

      v142 = v69;
      v82 = *(v69 + 16);
      v81 = *(v69 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_19082DC5C(v81 > 1, v82 + 1, 1);
        v69 = v142;
      }

      ++v68;
      *(v69 + 16) = v82 + 1;
      (*(v15 + 32))(v69 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v82, v80, v140);
      v70 = v135;
    }

    while (v134 != v68);

    v64 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v69 = MEMORY[0x1E69E7CC0];
  }

  v83 = [v126 emailAddresses];
  v84 = sub_190D57180();

  v85 = v125;
  if (v84 >> 62)
  {
    v86 = sub_190D581C0();
    if (v86)
    {
LABEL_19:
      v87 = v84;
      v142 = v64;
      result = sub_19082DC5C(0, v86 & ~(v86 >> 63), 0);
      if ((v86 & 0x8000000000000000) == 0)
      {
        v88 = 0;
        v89 = v142;
        v90 = v87;
        v134 = (v15 + 32);
        v135 = (v87 & 0xC000000000000001);
        v138 = v86;
        v139 = v87;
        do
        {
          if (v135)
          {
            v91 = MEMORY[0x193AF3B90](v88, v90);
          }

          else
          {
            v91 = v90[v88 + 4];
          }

          v92 = v91;
          v93 = [v91 value];
          sub_190D56F10();

          v94 = [v92 label];
          if (v94)
          {
            v95 = v94;
            v96 = sub_190D56F10();
            v98 = v97;
          }

          else
          {
            v96 = 0;
            v98 = 0;
          }

          sub_190A0D428(v96, v98, v137);
          v99 = v136;
          sub_190D50600();

          v142 = v89;
          v101 = *(v89 + 16);
          v100 = *(v89 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_19082DC5C(v100 > 1, v101 + 1, 1);
            v89 = v142;
          }

          ++v88;
          *(v89 + 16) = v101 + 1;
          (*(v15 + 32))(v89 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v101, v99, v140);
          v90 = v139;
          v65 = v141;
        }

        while (v138 != v88);

        v85 = v125;
        goto LABEL_34;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_19;
    }
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v102 = sub_190D50B50();
  v103 = *(*(v102 - 8) + 56);
  v103(v85, 1, 1, v102);
  v104 = [v126 imageData];
  if (v104)
  {
    v105 = v104;
    sub_190D51670();

    sub_190D50B40();
    sub_19022EEA4(v85, &qword_1EAD55080);
    v103(v65, 0, 1, v102);
    sub_190A0DB48(v65, v85);
  }

  v106 = v112;
  (*(v112 + 16))(v111, v122, v123);
  v107 = v124;
  (*(v124 + 16))(v113, v127, v128);
  v108 = v117;
  sub_19022FD14(v117, v114, &unk_1EAD53DB0);
  v142 = v69;
  sub_190CA9DFC(v89);
  v109 = v125;
  sub_19022FD14(v125, v65, &qword_1EAD55080);
  sub_190D505C0();

  sub_19022EEA4(v108, &unk_1EAD53DB0);
  sub_19022EEA4(v109, &qword_1EAD55080);
  (*(v107 + 8))(v127, v128);
  (*(v130 + 8))(v129, v131);
  return (*(v106 + 8))(v122, v123);
}

uint64_t sub_190A0D278()
{
  v0 = sub_190D50620();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D56ED0();
  IsEmail = IMStringIsEmail();

  if (IsEmail)
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E6959FE0], v0);
    return sub_190D50600();
  }

  else
  {
    v7 = sub_190D56ED0();
    v8 = MEMORY[0x193AF5D40]();

    if (v8)
    {
      (*(v1 + 104))(v3, *MEMORY[0x1E6959FE0], v0);
      return sub_190D505F0();
    }

    else
    {

      return sub_190D50610();
    }
  }
}

uint64_t sub_190A0D428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_190D56F10();
  if (!a2)
  {

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();

    sub_190D56F10();
LABEL_9:

    v10 = MEMORY[0x1E6959FE0];
    goto LABEL_12;
  }

  if (v6 == a1 && v7 == a2)
  {

LABEL_11:

    v10 = MEMORY[0x1E6959FC8];
    goto LABEL_12;
  }

  v9 = sub_190D58760();

  if (v9)
  {
    goto LABEL_11;
  }

  if (sub_190D56F10() == a1 && v15 == a2)
  {

LABEL_22:

    v10 = MEMORY[0x1E695A010];
    goto LABEL_12;
  }

  v17 = sub_190D58760();

  if (v17)
  {
    goto LABEL_22;
  }

  if (sub_190D56F10() == a1 && v18 == a2)
  {

LABEL_30:

    v10 = MEMORY[0x1E6959FF8];
    goto LABEL_12;
  }

  v20 = sub_190D58760();

  if (v20)
  {
    goto LABEL_30;
  }

  if (sub_190D56F10() == a1 && v21 == a2)
  {

LABEL_35:

    v10 = MEMORY[0x1E6959FD0];
    goto LABEL_12;
  }

  v22 = sub_190D58760();

  if (v22)
  {
    goto LABEL_35;
  }

  if (sub_190D56F10() == a1 && v23 == a2)
  {

LABEL_40:

    v10 = MEMORY[0x1E695A000];
    goto LABEL_12;
  }

  v24 = sub_190D58760();

  if (v24)
  {
    goto LABEL_40;
  }

  if (sub_190D56F10() == a1 && v25 == a2)
  {

    goto LABEL_9;
  }

  v26 = sub_190D58760();

  if (v26)
  {
    goto LABEL_9;
  }

  if (sub_190D56F10() == a1 && v27 == a2)
  {

LABEL_49:

    v10 = MEMORY[0x1E6959FE8];
    goto LABEL_12;
  }

  v28 = sub_190D58760();

  if (v28)
  {
    goto LABEL_49;
  }

  if (sub_190D56F10() == a1 && v29 == a2)
  {

LABEL_54:

    v10 = MEMORY[0x1E695A008];
    goto LABEL_12;
  }

  v30 = sub_190D58760();

  if (v30)
  {
    goto LABEL_54;
  }

  if (sub_190D56F10() == a1 && v31 == a2)
  {

LABEL_59:

    v10 = MEMORY[0x1E6959FD8];
    goto LABEL_12;
  }

  v32 = sub_190D58760();

  if (v32)
  {
    goto LABEL_59;
  }

  if (sub_190D56F10() == a1 && v33 == a2)
  {

LABEL_64:

    v10 = MEMORY[0x1E695A018];
    goto LABEL_12;
  }

  v34 = sub_190D58760();

  if (v34)
  {
    goto LABEL_64;
  }

  *a3 = a1;
  a3[1] = a2;
  v10 = MEMORY[0x1E6959FF0];
LABEL_12:
  v11 = *v10;
  v12 = sub_190D50620();
  v13 = *(*(v12 - 8) + 104);

  return v13(a3, v11, v12);
}

id sub_190A0D9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DE75E0;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C300];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C308];
  v4 = *MEMORY[0x1E695C310];
  *(v0 + 48) = *MEMORY[0x1E695C308];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C240];
  v6 = *MEMORY[0x1E695C2F0];
  *(v0 + 64) = *MEMORY[0x1E695C240];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C230];
  v8 = *MEMORY[0x1E695C348];
  *(v0 + 80) = *MEMORY[0x1E695C230];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C340];
  v10 = *MEMORY[0x1E695C350];
  *(v0 + 96) = *MEMORY[0x1E695C340];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E695C330];
  v27 = *MEMORY[0x1E695C208];
  v12 = *MEMORY[0x1E695C208];
  *(v0 + 112) = *MEMORY[0x1E695C330];
  *(v0 + 120) = v12;
  v26 = *MEMORY[0x1E695C278];
  *(v0 + 128) = *MEMORY[0x1E695C278];
  qword_1EAD9DD30 = v0;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v27;

  return v26;
}

uint64_t sub_190A0DB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A0DBD0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_190A0DC68(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_190A5BCD8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_190A0DD9C(uint64_t a1)
{
  v3 = OBJC_IVAR___CKChatItemController_chatItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = sub_190D52690();
  LOBYTE(v3) = sub_1909A7E08(v5, v4);

  if ((v3 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result chatItemControllerDidSetChatItems];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_190A0DE60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  sub_1902188FC(0, a4);
  sub_190D52690();
  v5 = sub_190D57160();

  return v5;
}

uint64_t sub_190A0DFCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKChatItemController_associatedChatItems;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_190D52690();
}

id ChatItemController.__allocating_init(for:chatItems:delegate:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_190A0F4D8(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

id ChatItemController.init(for:chatItems:delegate:)(void *a1, uint64_t a2)
{
  v3 = sub_190A0F4D8(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_190A0E16C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v58[1] = a3;
  v59 = a2;
  v72 = sub_190D51B70();
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A408);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v58 - v14;
  v16 = sub_190D52690();
  sub_190A0DD9C(v16);
  v17 = sub_190A0F200(a1);
  v74 = v17;
  v18 = OBJC_IVAR___CKChatItemController_associatedChatItems;
  swift_beginAccess();
  v19 = *(v4 + v18);
  v76 = v17;
  v75 = v19;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A410);
  sub_190A0F5B8();
  sub_190D56DE0();
  v20 = a1;

  (*(v10 + 16))(v12, v15, v9);
  v73 = sub_190A3F8CC(v12);
  (*(v10 + 8))(v15, v9);
  v64 = v4;
  *(v4 + v18) = v74;

  v63 = sub_190D50E40();
  v21 = sub_190D50E40();
  v61 = sub_190D50E40();
  sub_190D51B60();
  if (a1 >> 62)
  {
LABEL_42:
    v74 = v20 & 0xFFFFFFFFFFFFFF8;
    v22 = sub_190D581C0();
  }

  else
  {
    v74 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v21;
  v60 = OBJC_IVAR___CKChatItemController_delegate;
  v67 = OBJC_IVAR___CKChatItemDiff_removed;
  swift_beginAccess();
  v68 = (v65 + 16);
  v69 = (v65 + 8);
  if (v22)
  {
    v23 = 0;
    v24 = v20 & 0xC000000000000001;
    v66 = v20;
    do
    {
      v25 = v23;
      while (1)
      {
        if (v24)
        {
          v26 = MEMORY[0x193AF3B90](v25, v20);
        }

        else
        {
          if (v25 >= *(v74 + 16))
          {
            goto LABEL_41;
          }

          v26 = *(v20 + 8 * v25 + 32);
        }

        v21 = v26;
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          break;
        }

        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (!v28)
        {
          goto LABEL_28;
        }

        v29 = v28;
        v30 = v21;
        v31 = [v29 mediaObject];
        v32 = [v31 shouldSuppressPreview];

        if (v32)
        {
          if (([v29 isFromMe] & 1) == 0)
          {
            v36 = sub_190D50E40();
            v37 = v62;
            if (v62 == v36)
            {
              if (![v29 isPlayed])
              {
                v37 = v25;
              }

              v62 = v37;
            }

            v38 = [v29 mediaObject];
            [v38 setHasBeenPlayed_];

            v61 = v25;
          }

          v63 = v25;
          goto LABEL_27;
        }

        ++v25;
        if (v23 == v22)
        {
          goto LABEL_34;
        }
      }

      v33 = v27;
      Strong = swift_unknownObjectWeakLoadStrong();
      v35 = v21;
      if (Strong)
      {
        [Strong configurePluginChatItemForChatItemControllerWithChatItem_];
        swift_unknownObjectRelease();
      }

      sub_190D51B30();
LABEL_27:

LABEL_28:
      v39 = *v68;
      v40 = v72;
      v41 = v70;
      (*v68)(v70, v73 + v67, v72);
      v42 = sub_190D51B50();
      v43 = *v69;
      (*v69)(v41, v40);
      if ((v42 & 1) == 0 && [v21 invalidateContiguousTypeOverride])
      {
        sub_190D51B30();
      }

      v20 = v66;
      sub_190A0F908(v66, v25);
      if ((v44 & 1) == 0)
      {
        v45 = v72;
        v46 = v70;
        v39(v70, v73 + v67, v72);
        v47 = sub_190D51B50();
        v48 = v46;
        v20 = v66;
        v43(v48, v45);
        if ((v47 & 1) == 0)
        {
          sub_190D51B30();
        }
      }
    }

    while (v23 != v22);
  }

LABEL_34:
  v49 = v65;
  v50 = v70;
  v51 = v72;
  (*(v65 + 16))(v70, v71, v72);
  v52 = OBJC_IVAR___CKChatItemDiff_parentItemsToReload;
  v53 = v73;
  swift_beginAccess();
  (*(v49 + 40))(v53 + v52, v50, v51);
  swift_endAccess();
  sub_190A0E89C(v63, v62, v61);
  if (sub_190A3F298())
  {
    v54 = swift_unknownObjectWeakLoadStrong();
    if (v54)
    {
      [v54 chatItemControllerDidChangeAssociatedChatItemsWithChatItemDiff_];
      swift_unknownObjectRelease();
    }
  }

  v55 = v59;
  if (v59)
  {
    v56 = sub_190D50920();
    v55(v56);
    sub_19022123C(v55);
  }

  (*v69)(v71, v72);
  return v73;
}

uint64_t sub_190A0E89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (sub_190D50E40() == a1)
  {
    if (sub_190D50E40() == a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = a2;
    }
  }

  if (v6 == sub_190D50E40())
  {
    goto LABEL_16;
  }

  v7 = OBJC_IVAR___CKChatItemController_chatItems;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_190D581C0();
    if (v6 >= result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= result)
    {
      goto LABEL_16;
    }
  }

  v10 = *(v3 + v7);
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 8 * v6 + 32);
      goto LABEL_12;
    }

    __break(1u);
    return result;
  }

  sub_190D52690();
  v11 = MEMORY[0x193AF3B90](v6, v10);

LABEL_12:
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = [v12 mediaObject];
    v14 = [v13 transferGUID];

    if (v14)
    {
      sub_190D56F10();
      v16 = v15;

      goto LABEL_17;
    }
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v18 = Strong;
  if (v16)
  {
    v19 = sub_190D56ED0();
  }

  else
  {
    v19 = 0;
  }

  [v18 updateSpeakerTransferGUIDForChatItemController_];

  return swift_unknownObjectRelease();
}

void *sub_190A0EB80(unint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___CKChatItemController_collectionView) collectionViewLayout];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 reloadData];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result chatItemControllerDidRequestReloadData];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190A0ECB4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CKChatItemController_chatItems;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7 >> 62)
  {
    result = sub_190D581C0();
    if (a2 < 0)
    {
      return result;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 < 0)
    {
      return result;
    }
  }

  if (result <= a2)
  {
    return result;
  }

  result = *(v3 + v6);
  v12 = result;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  v10 = *(v3 + v6);
  v11 = sub_190D581C0();
  result = v10;
  if (v11 < a2)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_190D52690();
  v9 = a1;
  sub_190A0FD18(a2, a2, v9, sub_190CACFC4, sub_190CACC2C);

  sub_190A0DD9C(v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result chatItemControllerDidRequestReloadData];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_190A0EE80(int64_t a1)
{
  v3 = OBJC_IVAR___CKChatItemController_chatItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    result = sub_190D581C0();
    if (a1 < 0)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 < 0)
    {
      return result;
    }
  }

  if (result > a1)
  {
    v6 = *(v1 + v3);
    sub_190D52690();

    sub_190A0DD9C(v6);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result chatItemControllerDidRequestReloadData];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id ChatItemController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChatItemController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatItemController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A0F200(unint64_t a1)
{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v22 = v1 + 32;
    v23 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x1E69E7CC0];
    v21 = v1;
    v24 = v1 & 0xC000000000000001;
    v25 = i;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x193AF3B90](v3, v1);
      }

      else
      {
        if (v3 >= *(v23 + 16))
        {
          goto LABEL_32;
        }

        v6 = *(v22 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 visibleAssociatedMessageChatItems];
        if (!v11)
        {
          goto LABEL_24;
        }

        v12 = v11;
        sub_1902188FC(0, &qword_1EAD44F88);
        v13 = sub_190D57180();

        if (v13 >> 62)
        {
          v14 = sub_190D581C0();
          if (v14)
          {
LABEL_14:
            if (v14 < 1)
            {
              goto LABEL_33;
            }

            for (j = 0; j != v14; ++j)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x193AF3B90](j, v13);
              }

              else
              {
                v16 = *(v13 + 8 * j + 32);
              }

              v17 = v16;
              MEMORY[0x193AF29E0]();
              if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_190D571A0();
              }

              sub_190D571E0();
            }

            v5 = v26;
            v1 = v21;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_14;
          }
        }

        v4 = v24;
        i = v25;
LABEL_24:
        v18 = [v10 messageHighlightChatItem];
        if (!v18)
        {
          goto LABEL_4;
        }

        v19 = v18;
        MEMORY[0x193AF29E0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();

        v5 = v26;
        if (v3 == i)
        {
          return v5;
        }
      }

      else
      {
LABEL_4:

        if (v3 == i)
        {
          return v5;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_190A0F4D8(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___CKChatItemController_associatedChatItems;
  *&v2[OBJC_IVAR___CKChatItemController_associatedChatItems] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___CKChatItemController_collectionView] = a1;
  *&v2[OBJC_IVAR___CKChatItemController_chatItems] = a2;
  v6 = a1;
  v7 = sub_190D52690();
  v8 = sub_190A0F200(v7);

  swift_beginAccess();
  *&v2[v5] = v8;

  swift_unknownObjectWeakAssign();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ChatItemController();
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_190A0F5B8()
{
  result = qword_1EAD45110;
  if (!qword_1EAD45110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45110);
  }

  return result;
}

id sub_190A0F61C(void *a1)
{
  v1 = [a1 visibleAssociatedMessageChatItems];
  if (!v1)
  {
    goto LABEL_38;
  }

  v2 = v1;
  sub_1902188FC(0, &qword_1EAD44F88);
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_37:

LABEL_38:
    v22 = 0;
    return (v22 & 1);
  }

LABEL_4:
  v5 = 0;
  v24 = 0;
  v26 = v3 & 0xFFFFFFFFFFFFFF8;
  v27 = v3 & 0xC000000000000001;
  v23 = v3;
  v25 = v3 + 32;
  v3 = &selRef_systemFontOfSize_weight_design_;
  while (1)
  {
    if (v27)
    {
      v6 = MEMORY[0x193AF3B90](v5, v23);
    }

    else
    {
      if (v5 >= *(v26 + 16))
      {
        goto LABEL_35;
      }

      v6 = *(v25 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (v8)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v4 = sub_190D581C0();
      if (!v4)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      v22 = 1;
      return (v22 & 1);
    }

    result = [v10 acknowledgments];
    if (!result)
    {
      goto LABEL_41;
    }

    v12 = result;
    v28 = v7;
    v29 = v9;
    sub_1902188FC(0, &qword_1EAD5E5E0);
    v13 = sub_190D57180();

    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        break;
      }

      goto LABEL_5;
    }

    v14 = sub_190D581C0();
    if (v14)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v5 = v29;
    if (v29 == v4)
    {

      v22 = v24;
      return (v22 & 1);
    }
  }

  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x193AF3B90](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v19 = [v16 tapback];
    if (!v19)
    {

      goto LABEL_17;
    }

    result = [v17 tapback];
    if (!result)
    {
      break;
    }

    v20 = result;
    v21 = [result isRemoved];

    if ((v21 & 1) == 0)
    {

      v24 = 1;
      goto LABEL_6;
    }

LABEL_17:
    ++v15;
    if (v18 == v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_190A0F908(uint64_t result, uint64_t a2)
{
  v4 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
LABEL_43:
    v5 = MEMORY[0x193AF3B90](a2, v2);
    goto LABEL_6;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v2 = result;
  v3 = result & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
    goto LABEL_45;
  }

  v5 = *(result + 8 * a2 + 32);
LABEL_6:
  v6 = v5;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v4 = 0;
LABEL_32:

    return v4;
  }

  v7 = result;
  if (!v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v2 + 8 * v4 + 32);
        goto LABEL_14;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v8 = MEMORY[0x193AF3B90](v4, v2);
LABEL_14:
  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = v10, (sub_190A0F61C(v7) & 1) == 0))
  {
    v4 = 0;
LABEL_31:

    v6 = v9;
    goto LABEL_32;
  }

  v12 = v6;
  result = [v7 IMChatItem];
  if (!result)
  {
    goto LABEL_47;
  }

  v13 = result;
  v14 = [result contiguousType];

  v9 = v9;
  result = [v11 IMChatItem];
  if (!result)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = result;
  v16 = [result contiguousType];

  if ((v14 & 0xFE) != 2)
  {

    goto LABEL_29;
  }

  v17 = objc_opt_self();
  result = [v17 sharedBehaviors];
  if (!result)
  {
    goto LABEL_49;
  }

  v18 = result;
  [result messageAcknowledgmentTranscriptBalloonSize];
  v20 = v19;

  result = [v17 sharedBehaviors];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v21 = result;
  [result messageAcknowledgmentTranscriptBalloonRelativePosition];
  v23 = v22;

  result = [v17 sharedBehaviors];
  if (result)
  {
    v24 = result;
    v25 = v20 - v23;
    [result messageAcknowledgmentTranscriptBalloonRelativePosition];
    v27 = v26;

    [v11 size];
    v29 = v28;

    v30 = v27 + v29;
    [v7 size];
    v32 = v31 - v25;
    sub_190A0F61C(v11);
    if (v32 < v30)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          [v7 setContiguousTypeOverride_];
          v34 = 3;
          goto LABEL_39;
        }

        if (v16 != 3)
        {
          goto LABEL_37;
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          [v7 setContiguousTypeOverride_];
          v34 = 0;
LABEL_39:

          if ([v11 contiguousType] == v34)
          {
            goto LABEL_40;
          }

          [v11 setContiguousTypeOverride_];
          v6 = v9;
          goto LABEL_30;
        }

LABEL_37:

        sub_1902188FC(0, &qword_1EAD5A428);
        v33 = sub_190D58030();
        sub_190D576C0();
        sub_190D52F40();

        goto LABEL_40;
      }

LABEL_40:
      v4 = 0;
      v6 = v12;
      goto LABEL_31;
    }

LABEL_29:

    v4 = 0;
    v6 = v12;
LABEL_30:
    v9 = v12;
    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_190A0FD18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_190D581C0();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = sub_190D581C0();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return sub_190D52690();
}

uint64_t sub_190A1003C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_190D581C0();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_190D581C0();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_190A10164(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

BOOL sub_190A10290()
{
  v1 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) != 0;
}

uint64_t sub_190A10304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_190D52690();
  sub_1908AA174(&v5, a1, a2);
  swift_endAccess();
}

uint64_t sub_190A1038C(void *a1)
{
  v2 = sub_190D56F10();
  v4 = v3;
  swift_beginAccess();
  v5 = a1;
  sub_1908AA174(&v7, v2, v4);
  swift_endAccess();
}

uint64_t sub_190A10424()
{
  v1 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  v3 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
  swift_beginAccess();
  *(v0 + v3) = v2;
}

uint64_t sub_190A10544(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  v6 = *(v2 + v5);
  sub_190D52690();
  v7 = sub_190CA994C(a1, a2, v6);

  v8 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
  swift_beginAccess();
  v9 = *(v2 + v8);
  sub_190D52690();
  LODWORD(a2) = sub_190CA994C(a1, a2, v9);

  return (v7 | a2) & 1;
}

id BalloonEmphasisManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalloonEmphasisManager.init()()
{
  v1 = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BalloonEmphasisManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id BalloonEmphasisManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalloonEmphasisManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_190A109D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_190A10A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_190A10AD0()
{
  sub_190A10BAC(319, &qword_1EAD44E10, &qword_1EAD55E20);
  if (v0 <= 0x3F)
  {
    sub_190A10BAC(319, &qword_1EAD45138, &unk_1EAD59920);
    if (v1 <= 0x3F)
    {
      sub_190D518A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190A10BAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_190D58050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_190A10D98()
{
  sub_1909B83E4();
  if (v0 <= 0x3F)
  {
    sub_1908E1324();
    if (v1 <= 0x3F)
    {
      sub_190D518A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_190A10E4C()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A10F2C@<X0>(uint64_t *a1@<X8>)
{
  sub_190A12D74();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190A10F6C()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();
}

uint64_t sub_190A11004()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();
}

void (*sub_190A110A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit16DetailsWalletTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908F5C8C();
  return sub_190A111D4;
}

void sub_190A111D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_190A11268()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A11318@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A113C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
    sub_190D51C10();
  }
}

uint64_t sub_190A11524()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  v1 = *(v0 + 32);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A115D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A11680(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_190A117F0()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  _s10WalletPassVMa(0);
  sub_190A12DC8(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v2 = v1[qword_1EAD629B0];

  return v2;
}

uint64_t sub_190A11990()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  return *(v0 + 48);
}

uint64_t sub_190A11A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_190A11AD8(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190A11BDC()
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_190A11C80@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_190A11D2C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
    sub_190D51C10();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  _s9ViewModelCMa_7(0);
  v3 = v2;
  v4 = sub_190D57D90();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

id sub_190A11EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = 1;
    goto LABEL_8;
  }

  v5 = Strong;
  v31 = a3;
  MEMORY[0x1EEE9AC00](Strong);
  _s10WalletPassVMa(0);
  sub_190A12DC8(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v6 = sub_190D56ED0();
  v30 = objc_opt_self();
  [v30 systemImageNamed_];

  result = CKFrameworkBundle();
  if (result)
  {
    v8 = result;
    sub_1908D84D0();
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:{v10, "AB_FILTER_SCREENSHOTS"}];

    sub_190D56F10();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    sub_19029063C(a1);
    v14 = sub_190D57DC0();

    swift_getKeyPath();
    sub_190D51C20();

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {

      v28 = 1;
      a3 = v31;
      goto LABEL_8;
    }

    v16 = v15;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    sub_190D51C20();

    v17 = sub_190D56ED0();
    v18 = [v30 systemImageNamed_];

    result = CKFrameworkBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_190D56ED0();
      v21 = sub_190D56ED0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_190D56F10();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      sub_19029063C(a1);
      v25 = sub_190D57DC0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_190DD55F0;
      *(v26 + 32) = v14;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_190DD55F0;
      *(v27 + 32) = v25;
      a3 = v31;
      sub_190D52C00();
      v28 = 0;
LABEL_8:
      v29 = sub_190D52C10();
      return (*(*(v29 - 8) + 56))(a3, v28, 1, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A12524()
{

  MEMORY[0x193AF7B30](v0 + 56);
  v1 = OBJC_IVAR____TtC7ChatKit16DetailsWalletTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsWalletTab()
{
  result = qword_1EAD45E48;
  if (!qword_1EAD45E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A1262C()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190A12750()
{
  result = qword_1EAD45E70;
  if (!qword_1EAD45E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E70);
  }

  return result;
}

unint64_t sub_190A127A8()
{
  result = qword_1EAD45E80;
  if (!qword_1EAD45E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E80);
  }

  return result;
}

unint64_t sub_190A12800()
{
  result = qword_1EAD45E68;
  if (!qword_1EAD45E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E68);
  }

  return result;
}

unint64_t sub_190A12858()
{
  result = qword_1EAD45E78;
  if (!qword_1EAD45E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E78);
  }

  return result;
}

void (*sub_190A128AC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_190A110A0(v2);
  return sub_190854AE0;
}

void sub_190A1291C()
{
  type metadata accessor for DetailsWalletTab();

  JUMPOUT(0x193AEE5C0);
}

void sub_190A1295C(char a1)
{
  swift_getKeyPath();
  sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1908EA8D0(a1 & 1);
  }
}

void (*sub_190A12A18(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC7ChatKit16DetailsWalletTab___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_190A12DC8(&qword_1EAD45E58, type metadata accessor for DetailsWalletTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    _s10WalletPassVMa(0);
    sub_190A12DC8(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    *v4 = v6;
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    v7 = v6[qword_1EAD629B0];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_190A12C10;
}

void sub_190A12C10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  *v1 = v1[1];
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1908EA8D0(v2);
  }

  free(v1);
}

uint64_t sub_190A12CAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsWalletTab();
  sub_190A12DC8(&qword_1EAD45E60, type metadata accessor for DetailsWalletTab);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A12D74()
{
  result = qword_1EAD45E88;
  if (!qword_1EAD45E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E88);
  }

  return result;
}

uint64_t sub_190A12DC8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_190A12E28(void *a1)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_190D56F10();
    v10 = v9;

    v1[2] = v8;
    v1[3] = v10;
    result = CKFrameworkBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_190D56ED0();
      v13 = sub_190D56ED0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v15 = sub_190D56F10();
      v17 = v16;

      v1[4] = v15;
      v1[5] = v17;
      v1[6] = 6;
      swift_unknownObjectWeakInit();
      sub_190D51C50();
      v18 = a1;
      sub_190A11D2C(a1);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A13024(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190A13090(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1908424BC;
}

id SendMenuCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SendMenuCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToEdgeHorizontalConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToLabelHorizontalConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToBottomConstraint] = 0;
  v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset] = 1;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForLightMode] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForDarkMode] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForLightMode] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForDarkMode] = 0;
  v9 = &v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets];
  v10 = *(MEMORY[0x1E69DC5C0] + 16);
  *v9 = *MEMORY[0x1E69DC5C0];
  v9[1] = v10;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity] = 0x3FF0000000000000;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel] = v11;
  type metadata accessor for SendMenuCellBlurContainerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] = v14;
  v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView] = v15;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SendMenuCollectionViewCell();
  v16 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel];
  v19 = v16;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView;
  [*&v19[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView;
  [*&v19[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView;
  [*&v19[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView] setTranslatesAutoresizingMaskIntoConstraints_];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v24 = result;
    v25 = *&v16[v17];
    v26 = [v24 sendMenuListItemFont];
    [v25 setFont_];

    v27 = *&v16[v17];
    v28 = [v24 sendMenuListItemTextColor];
    [v27 setTextColor_];

    [*&v16[v17] setNumberOfLines_];
    [*&v16[v17] setIsAccessibilityElement_];
    [*&v19[v21] setContentMode_];
    [*&v19[v22] addSubview_];
    v29 = v19;
    v30 = [v29 contentView];
    [v30 addSubview_];

    [*&v19[v20] addSubview_];
    v31 = [v29 contentView];
    [v31 addSubview_];

    v32 = [v29 contentView];
    v33 = [v32 layer];

    [v33 setAllowsGroupBlending_];
    [v29 setIsAccessibilityElement_];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

    [v29 addInteraction_];
    sub_190A138E8();
    sub_190A136DC();

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190A136DC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];
  if (v2 == 2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForDarkMode;
  }

  else
  {
    if (v2 != 1)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_7;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForLightMode;
  }

  v5 = &v0[v4];
  swift_beginAccess();
  v6 = *v5;
  v7 = v3;
LABEL_7:
  v8 = [*&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView] layer];
  [v8 setCompositingFilter_];

  v9 = [*&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView] layer];
  [v9 setCompositingFilter_];
}

void sub_190A138E8()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    v100 = v1;
    [v1 sendMenuListItemIconSize];
    v4 = v3;
    v6 = v5;
    [v2 sendMenuListItemIconToLabelPadding];
    v8 = v7;
    [v2 sendMenuListItemIconToEdgePadding];
    v10 = v9;
    [v2 sendMenuListItemIconVerticalPadding];
    v12 = v11;
    v13 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView];
    v14 = [v13 widthAnchor];
    v97 = [v14 constraintEqualToConstant_];

    v15 = [v13 heightAnchor];
    v16 = [v15 constraintEqualToConstant_];

    v17 = [v13 leadingAnchor];
    v18 = [v0 contentView];
    v19 = [v18 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];

    v20 = [v17 constraintEqualToAnchor:v19 constant:v10];
    v101 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel];
    v21 = [v101 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];
    v22 = [v13 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:v8];

    v24 = [v13 topAnchor];
    v25 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView];
    v90 = v25;
    v26 = [v25 &selRef_tipKitLayoutSectionForEnvironment_];
    v27 = [v24 constraintEqualToAnchor:v26 constant:v12];

    v28 = [v25 bottomAnchor];
    v29 = [v13 &selRef_canPeel + 5];
    v30 = [v28 constraintEqualToAnchor:v29 constant:v12];

    v96 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_190DE7BF0;
    *(v31 + 32) = v97;
    *(v31 + 40) = v16;
    *(v31 + 48) = v20;
    *(v31 + 56) = v23;
    v93 = v97;
    v94 = v16;
    v95 = v20;
    v98 = v23;
    v32 = [v0 contentView];
    v33 = [v32 trailingAnchor];

    v34 = [v101 trailingAnchor];
    v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:v10];

    *(v31 + 64) = v35;
    *(v31 + 72) = v27;
    *(v31 + 80) = v30;
    v91 = v27;
    v92 = v30;
    v36 = [v101 centerYAnchor];
    v37 = [v13 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v31 + 88) = v38;
    v39 = [v90 leadingAnchor];
    v40 = [v0 contentView];
    v41 = [v40 leadingAnchor];

    v42 = [v39 constraintEqualToAnchor_];
    *(v31 + 96) = v42;
    v43 = [v90 trailingAnchor];
    v44 = [v0 contentView];
    v45 = [v44 trailingAnchor];

    v46 = [v43 constraintEqualToAnchor_];
    *(v31 + 104) = v46;
    v47 = [v90 topAnchor];
    v48 = [v0 contentView];
    v49 = [v48 topAnchor];

    v50 = [v47 constraintEqualToAnchor_];
    *(v31 + 112) = v50;
    v51 = [v90 bottomAnchor];
    v52 = [v0 contentView];
    v53 = [v52 bottomAnchor];

    v54 = [v51 constraintEqualToAnchor_];
    *(v31 + 120) = v54;
    v55 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView];
    v56 = [v55 leadingAnchor];
    v57 = [v0 contentView];
    v58 = [v57 leadingAnchor];

    v59 = [v56 constraintEqualToAnchor_];
    *(v31 + 128) = v59;
    v60 = [v55 trailingAnchor];
    v61 = [v0 contentView];
    v62 = [v61 trailingAnchor];

    v63 = [v60 constraintEqualToAnchor_];
    *(v31 + 136) = v63;
    v64 = [v55 topAnchor];
    v65 = [v0 contentView];
    v66 = [v65 topAnchor];

    v67 = [v64 constraintEqualToAnchor_];
    *(v31 + 144) = v67;
    v68 = [v55 bottomAnchor];
    v69 = [v0 contentView];
    v70 = [v69 bottomAnchor];

    v71 = [v68 constraintEqualToAnchor_];
    *(v31 + 152) = v71;
    sub_1902188FC(0, &qword_1EAD45040);
    v72 = sub_190D57160();

    [v96 activateConstraints_];

    v73 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconWidthConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconWidthConstraint] = v93;
    v74 = v93;

    v75 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconHeightConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconHeightConstraint] = v94;
    v76 = v94;

    v77 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToEdgeHorizontalConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToEdgeHorizontalConstraint] = v95;
    v78 = v95;

    v79 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToLabelHorizontalConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToLabelHorizontalConstraint] = v98;
    v80 = v98;

    v81 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToTopConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToTopConstraint] = v91;
    v82 = v91;

    v83 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToBottomConstraint];
    *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToBottomConstraint] = v92;
    v99 = v92;

    LODWORD(v84) = 1148846080;
    [v55 setContentHuggingPriority:1 forAxis:v84];
    LODWORD(v85) = 1148846080;
    [v55 setContentCompressionResistancePriority:1 forAxis:v85];
    LODWORD(v86) = 1148846080;
    [v90 setContentHuggingPriority:1 forAxis:v86];
    LODWORD(v87) = 1148846080;
    [v90 setContentCompressionResistancePriority:1 forAxis:v87];
    LODWORD(v88) = 1144750080;
    [v101 setContentHuggingPriority:0 forAxis:v88];
    LODWORD(v89) = 1144750080;
    [v101 setContentCompressionResistancePriority:0 forAxis:v89];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190A142E8()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190A1432C(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_190A143DC()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset;
  swift_beginAccess();
  if (v0[v9] == 1)
  {
    v10 = [objc_opt_self() sharedBehaviors];
    if (v10)
    {
      v11 = v10;
      [v10 sendMenuListItemIconToEdgePadding];
      v17.origin.x = v2;
      v17.origin.y = v4;
      v17.size.width = v6;
      v17.size.height = v8;
      CGRectGetMinX(v17);
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      CGRectGetMaxX(v18);
      v12 = [v0 _shouldReverseLayoutDirection];
      [*&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel] frame];
      if (v12)
      {
        CGRectGetMinX(*&v13);
        v19.origin.x = v2;
        v19.origin.y = v4;
        v19.size.width = v6;
        v19.size.height = v8;
        CGRectGetMinX(v19);
      }

      else
      {
        CGRectGetMaxX(*&v13);
        v20.origin.x = v2;
        v20.origin.y = v4;
        v20.size.width = v6;
        v20.size.height = v8;
        CGRectGetMaxX(v20);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_190A14580(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for SendMenuCollectionViewCell();
  v8 = objc_msgSendSuper2(&v25, sel_hitTest_withEvent_, a1, a2, a3);
  if (v8)
  {
    sub_1902188FC(0, &qword_1EAD46530);
    v9 = v8;
    v10 = v3;
    v11 = sub_190D57D90();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v4 contentView];
  v13 = v12;
  if (!v8)
  {
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v12 && (sub_1902188FC(0, &qword_1EAD46530), v14 = v8, v15 = sub_190D57D90(), v13, v14, (v15 & 1) != 0) || (v16 = *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView], sub_1902188FC(0, &qword_1EAD46530), v17 = v8, v18 = v16, v19 = sub_190D57D90(), v18, v17, (v19 & 1) != 0) || (v20 = *&v4[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView], v21 = v17, v22 = v20, v23 = sub_190D57D90(), v22, v21, (v23 & 1) != 0))
  {
LABEL_10:
    sub_190A143DC();
    v26.x = a2;
    v26.y = a3;
    if (CGRectContainsPoint(v27, v26))
    {
      return v8;
    }

    v13 = v8;
LABEL_12:

    return 0;
  }

  return v8;
}

void sub_190A147E0()
{
  v1 = v0;
  v2 = sub_190D531D0();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SendMenuCollectionViewCell();
  objc_msgSendSuper2(&v6, sel__bridgedUpdateConfigurationUsingState_, v2);

  v3 = 0.9;
  if ((sub_190D531C0() & 1) == 0 && (sub_190D531A0() & 1) == 0)
  {
    if (sub_190D531B0())
    {
      v3 = 0.9;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;
  if (vabdd_f64(v3, v5) > 2.22044605e-16)
  {
    sub_190A14BB0();
  }
}

void sub_190A14998(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (vabdd_f64(v2, v5) > 2.22044605e-16)
  {
    sub_190A14BB0();
  }
}

double sub_190A14A08()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190A14A4C(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (vabdd_f64(a1, v4) > 2.22044605e-16)
  {
    sub_190A14BB0();
  }
}

void (*sub_190A14AB8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190A14B4C;
}

void sub_190A14B4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (vabdd_f64(v2, v5) > 2.22044605e-16)
  {
    sub_190A14BB0();
  }

  free(v1);
}

void sub_190A14BB0()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale;
  swift_beginAccess();
  v2 = *&v0[v1];
  CGAffineTransformMakeScale(&v30, v2, v2);
  v26 = *&v30.c;
  v27 = *&v30.a;
  tx = v30.tx;
  ty = v30.ty;
  v5 = [v0 _shouldReverseLayoutDirection];
  v6 = [objc_opt_self() sharedBehaviors];
  if (v6)
  {
    v7 = v6;
    [v6 sendMenuListItemIconToLabelPadding];
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] frame];
    v14 = v9 * 0.5;
    if (v5)
    {
      v15 = CGRectGetMinX(*&v10) - v14;
    }

    else
    {
      v15 = v14 + CGRectGetMaxX(*&v10);
    }

    v16 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView];
    [v16 bounds];
    MidX = CGRectGetMidX(v31);
    CGAffineTransformMakeTranslation(&v30, (1.0 - v2) * (v15 - MidX), 0.0);
    *&t1.c = v26;
    *&t1.a = v27;
    t1.tx = tx;
    t1.ty = ty;
    t2 = v30;
    CGAffineTransformConcat(&v30, &t1, &t2);
    v18 = [v7 sendMenuSelectionScaleAnimator];
    if (v18)
    {
      v19 = v18;
      v20 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleBlurContainerView];
      v21 = swift_allocObject();
      v22 = *&v30.c;
      *(v21 + 24) = *&v30.a;
      *(v21 + 16) = v16;
      *(v21 + 40) = v22;
      *(v21 + 56) = *&v30.tx;
      *(v21 + 72) = v20;
      *&t1.tx = sub_190A19F44;
      *&t1.ty = v21;
      *&t1.a = MEMORY[0x1E69E9820];
      *&t1.b = 1107296256;
      *&t1.c = sub_190840E6C;
      *&t1.d = &block_descriptor_58;
      v23 = _Block_copy(&t1);
      v24 = v16;
      v25 = v20;

      [v19 addAnimations_];
      _Block_release(v23);
      [v19 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_190A14E38(void *a1, uint64_t *a2, void *a3)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = *a2;
  v4 = v11;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  [a1 setTransform_];
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  return [a3 setTransform_];
}

void sub_190A14F30()
{
  v0 = [objc_allocWithZone(type metadata accessor for SendMenuCollectionViewCell()) initWithFrame_];
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel];
  v2 = sub_190D56ED0();
  [v1 setText_];

  qword_1EAD456E0 = v0;
}

id static SendMenuCollectionViewCell.prototypeCell.getter()
{
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EAD456E0;

  return v0;
}

void static SendMenuCollectionViewCell.prototypeCell.setter(uint64_t a1)
{
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAD456E0;
  qword_1EAD456E0 = a1;
}

uint64_t (*static SendMenuCollectionViewCell.prototypeCell.modify())()
{
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_190A15154@<X0>(void *a1@<X8>)
{
  if (qword_1EAD456D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAD456E0;
  *a1 = qword_1EAD456E0;

  return v2;
}

void sub_190A151E0(id *a1)
{
  v1 = qword_1EAD456D8;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EAD456E0;
  qword_1EAD456E0 = v2;
}

void sub_190A1529C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_190A15310(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel);
  v3 = sub_190D56ED0();
  [v2 setText_];
}

uint64_t sub_190A15380()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_190D56F10();

  return v3;
}

void sub_190A153F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel);
  v2 = sub_190D56ED0();

  [v1 setText_];
}

void (*sub_190A1545C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_190D56F10();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_190A154EC;
}

void sub_190A154EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    sub_190D52690();
    v3 = sub_190D56ED0();

    [v2 setText_];
  }

  else
  {
    v3 = sub_190D56ED0();

    [v2 setText_];
  }
}

void sub_190A155A4()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView];
    [v2 setImage_];
    [v2 setHidden_];
    return;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForDarkMode;
  }

  else
  {
    if (v4 != 1)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForLightMode;
  }

  v6 = &v0[v5];
  swift_beginAccess();
  v7 = *v6;
LABEL_9:
  v8 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView];
  [v8 setHidden_];
  [v8 setImage_];
}

void *sub_190A156E8()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForLightMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_190A15754(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190A19F54;
}

void sub_190A157B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_190A15820(v5);
}

void sub_190A15820(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 superlayer];
    v5 = [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView) layer];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {

        goto LABEL_10;
      }

      sub_1902188FC(0, &qword_1EAD46528);
      v7 = sub_190D57D90();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v5)
    {

LABEL_10:
      goto LABEL_11;
    }

    [v3 removeFromSuperlayer];
    goto LABEL_10;
  }

LABEL_11:
  sub_190A155A4();
  v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9)
  {
    v10 = v9;
    [v10 setGeometryFlipped_];
    v11 = [*(v2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconBlurContainerView) layer];
    [v11 addSublayer_];

    sub_190A15E20();
    v12 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
    swift_beginAccess();
    v15 = *(v2 + v14);
    v16 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
    swift_beginAccess();
    if (v15 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    if (*(v2 + v16) >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = *(v2 + v16);
    }

    [*(v2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
    v20 = *(v2 + v8);
    if (v20)
    {
      *&v19 = v18;
      [v20 setOpacity_];
    }
  }
}

void *sub_190A15A40()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190A15A8C(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_190A15820(v4);
}

void (*sub_190A15AF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_190A15B94;
}

void sub_190A15B94(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_190A15820(v8);

    v8 = *v5;
  }

  else
  {
    sub_190A15820(v8);
  }

  free(v3);
}

void sub_190A15C30()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SendMenuCollectionViewCell();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedBehaviors];
    if (v5)
    {
      v6 = v5;
      [v5 sendMenuListItemIconSize];
      v8 = v7;
      v10 = v9;
      [v6 sendMenuListItemIconToEdgePadding];
      v12 = v11;
      [v6 sendMenuListItemIconVerticalPadding];
      v14 = v13;
      if ([v0 _shouldReverseLayoutDirection])
      {
        v15 = [v0 contentView];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v26.origin.x = v17;
        v26.origin.y = v19;
        v26.size.width = v21;
        v26.size.height = v23;
        v24 = CGRectGetMaxX(v26) - v12 + v8 * -0.5;
      }

      else
      {
        v24 = v12 + v8 * 0.5;
      }

      [v4 setPosition_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_190A15E20()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedBehaviors];
    if (v5)
    {
      v6 = v5;
      [v5 sendMenuListItemIconSize];
      v8 = v7;
      v10 = v9;
      [v6 sendMenuListItemIconToEdgePadding];
      v12 = v11;
      [v6 sendMenuListItemIconVerticalPadding];
      v14 = v13;
      if ([v0 _shouldReverseLayoutDirection])
      {
        v15 = [v0 contentView];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v25.origin.x = v17;
        v25.origin.y = v19;
        v25.size.width = v21;
        v25.size.height = v23;
        v24 = CGRectGetMaxX(v25) - v12 + v8 * -0.5;
      }

      else
      {
        v24 = v12 + v8 * 0.5;
      }

      [v4 setPosition_];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_190A15FB0()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForDarkMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_190A1601C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190A16080;
}

void *sub_190A16098()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForLightMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_190A16104(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190A19F58;
}

uint64_t sub_190A16168(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  return a6();
}

void *sub_190A161D8()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForDarkMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190A16244(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t (*sub_190A162B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190A1631C;
}

void sub_190A16334(_OWORD *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets);
  swift_beginAccess();
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  sub_190A16510();
}

double sub_190A16394()
{
  v1 = v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets;
  swift_beginAccess();
  return *v1;
}

void sub_190A163E0(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_190A16510();
}

uint64_t (*sub_190A16450(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190A164B4;
}

uint64_t sub_190A164CC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_190A16510()
{
  v1 = [objc_opt_self() sharedBehaviors];
  if (v1)
  {
    v2 = v1;
    [v1 sendMenuListItemIconSize];
    v4 = v3;
    v6 = v5;
    [v2 sendMenuListItemIconToLabelPadding];
    v24 = v7;
    [v2 sendMenuListItemIconToEdgePadding];
    v9 = v8;
    [v2 sendMenuListItemIconVerticalPadding];
    v11 = v10;
    v12 = (v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets);
    swift_beginAccess();
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconWidthConstraint);
    if (v17)
    {
      [v17 setConstant_];
    }

    v18 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconHeightConstraint);
    if (v18)
    {
      [v18 setConstant_];
    }

    v19 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToEdgeHorizontalConstraint);
    if (v19)
    {
      [v19 setConstant_];
    }

    v20 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToLabelHorizontalConstraint);
    if (v20)
    {
      [v20 setConstant_];
    }

    v21 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToTopConstraint);
    if (v21)
    {
      [v21 setConstant_];
    }

    v22 = *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToBottomConstraint);
    if (v22)
    {
      v23 = v22;
      [v23 setConstant_];
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_190A167F4()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_190A16854(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190A168DC;
}

double sub_190A168F0()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_190A16950(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190A169D8;
}

double sub_190A16A04()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190A16A64(uint64_t *a1, uint64_t *a2, double a3)
{
  v6 = *a1;
  swift_beginAccess();
  *(v3 + v6) = a3;
  v7 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v7 = *(v3 + v6);
    v8 = *a2;
    swift_beginAccess();
    if (v7 <= *(v3 + v8))
    {
      v7 = *(v3 + v8);
    }
  }

  sub_190A18960(v7);
}

void (*sub_190A16B04(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190A16B8C;
}

void sub_190A16BA0(void **a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = 0.0;
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v7 = v5[3];
      v6 = *(v7 + v5[4]);
      v8 = *a3;
      swift_beginAccess();
      if (v6 <= *(v7 + v8))
      {
        v6 = *(v7 + v8);
      }
    }

    sub_190A18960(v6);
  }

  free(v5);
}

double sub_190A16C48()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190A16CA8(uint64_t *a1, uint64_t *a2, double a3)
{
  v6 = *a1;
  swift_beginAccess();
  *(v3 + v6) = a3;
  v7 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v8 = *a2;
    swift_beginAccess();
    if (*(v3 + v8) > *(v3 + v6))
    {
      v7 = *(v3 + v8);
    }

    else
    {
      v7 = *(v3 + v6);
    }
  }

  sub_190A18960(v7);
}

void (*sub_190A16D48(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190A16DD0;
}

void sub_190A16DE4(void **a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = 0.0;
    if (!UIAccessibilityIsReduceTransparencyEnabled())
    {
      v8 = v5[3];
      v7 = v5[4];
      v9 = *a3;
      swift_beginAccess();
      if (*(v8 + v9) > *(v8 + v7))
      {
        v6 = *(v8 + v9);
      }

      else
      {
        v6 = *(v8 + v7);
      }
    }

    sub_190A18960(v6);
  }

  free(v5);
}

void sub_190A16EA0(void *a1)
{
  v2 = *(v1 + *a1);
  v3 = *&v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v5;
    v6 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
    if ((v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
    {
      v7 = [v2 layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_190DD1D90;
      v9 = sub_190A18658();
      *(v8 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
      *(v8 + 32) = v9;
      v10 = sub_190D57160();

      [v7 setFilters_];

      v2[v6] = 1;
    }
  }
}

void sub_190A16FC4(void *a1)
{
  v2 = *(v1 + *a1);
  v3 = *&v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] = v5;
    v6 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
    if (v2[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] == 1 && v5 == 0 && sub_190A18840() == 0.0)
    {
      v8 = [v2 layer];
      v9 = sub_190D57160();
      [v8 setFilters_];

      v2[v6] = 0;
    }
  }
}

double sub_190A17088()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A170CC(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  if (v5 <= a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1;
  }

  if (*(v1 + v6) >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v1 + v6);
  }

  [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(v1 + v9);
  if (result)
  {
    *&v10 = v8;
    return [result setOpacity_];
  }

  return result;
}

void (*sub_190A171BC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_190A17244;
}

void sub_190A17244(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[9];
    v4 = v3[10];
    v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = *(v5 + v4);
    v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
    swift_beginAccess();
    v10 = v8 >= v7 ? v7 : v8;
    v11 = *(v5 + v9) >= v10 ? v10 : *(v5 + v9);
    [*(v5 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
    v12 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
    swift_beginAccess();
    v14 = *(v5 + v12);
    if (v14)
    {
      *&v13 = v11;
      [v14 setOpacity_];
    }
  }

  free(v3);
}

double sub_190A17340()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A17384(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  if (v5 >= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = v5;
  }

  if (*(v1 + v6) >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v1 + v6);
  }

  [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(v1 + v9);
  if (result)
  {
    *&v10 = v8;
    return [result setOpacity_];
  }

  return result;
}

void (*sub_190A17474(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_190A174FC;
}

void sub_190A174FC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + v3[10]);
    v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
    swift_beginAccess();
    v9 = v7 >= v5 ? v5 : v7;
    v10 = *(v4 + v8) >= v9 ? v9 : *(v4 + v8);
    [*(v4 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
    v11 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
    swift_beginAccess();
    v13 = *(v4 + v11);
    if (v13)
    {
      *&v12 = v10;
      [v13 setOpacity_];
    }
  }

  free(v3);
}

id sub_190A175F8()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*(v0 + v5) >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v0 + v5);
  }

  [*(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(v0 + v8);
  if (result)
  {
    *&v9 = v7;
    return [result setOpacity_];
  }

  return result;
}

double sub_190A176E4()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A17728(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v5 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= v8)
  {
    v7 = v8;
  }

  return [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
}

void (*sub_190A177E0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_190A17868;
}

void sub_190A17868(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + v3[7]);
    v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if (v7 >= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v9 >= v10)
    {
      v9 = v10;
    }

    [*(v4 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
  }

  free(v3);
}

double sub_190A1792C()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A17970(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v5 <= a1)
  {
    v8 = v5;
  }

  else
  {
    v8 = a1;
  }

  if (v7 >= v8)
  {
    v7 = v8;
  }

  return [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
}

void (*sub_190A17A28(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_190A17AB0;
}

void sub_190A17AB0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[6];
    v4 = v3[7];
    v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v8 = *(v5 + v4);
    v9 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
    swift_beginAccess();
    v10 = *(v5 + v9);
    if (v8 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if (v10 >= v11)
    {
      v10 = v11;
    }

    [*(v5 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
  }

  free(v3);
}

double sub_190A17B74()
{
  v1 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190A17BB8(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >= v5)
  {
    v7 = v5;
  }

  if (v7 > a1)
  {
    v7 = a1;
  }

  [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
  v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >= v9)
  {
    v11 = v9;
  }

  if (*(v1 + v3) >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v1 + v3);
  }

  [*(v1 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
  v13 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  result = *(v1 + v13);
  if (result)
  {
    *&v14 = v12;
    return [result setOpacity_];
  }

  return result;
}