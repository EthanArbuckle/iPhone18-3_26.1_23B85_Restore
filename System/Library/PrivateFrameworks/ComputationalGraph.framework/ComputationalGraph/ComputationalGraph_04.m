unint64_t sub_1C6E2FC3C()
{
  v0 = sub_1C6EE48F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6590;
  sub_1C6EE48E0();
  v6 = sub_1C6EE48D0();
  (*(v1 + 8))(v4, v0);
  result = sub_1C6EE48D0();
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E6438];
    *(v5 + 56) = MEMORY[0x1E69E63B0];
    *(v5 + 64) = v8;
    *(v5 + 32) = (v6 - result) / 1000000.0;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return result;
}

void sub_1C6E2FDF4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 96);
  sub_1C6ECFF6C(a2);
  if (v2)
  {
    if (qword_1EDEF66C8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6EE6590;
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6DF10E0();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v7 = *(a1 + 96);
    sub_1C6ED0370();
    sub_1C6ECFF6C(a2);
  }
}

uint64_t sub_1C6E2FFA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6E2FFC8, 0, 0);
}

uint64_t sub_1C6E2FFC8()
{
  v1 = v0[2];
  v2 = sub_1C6ED1770();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1C6E3006C;
  v4 = v0[2];
  v5 = v0[3];

  return sub_1C6E30790(v2, v4);
}

uint64_t sub_1C6E3006C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1C6E301F0;
  }

  else
  {
    v3 = sub_1C6E30180;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6E30180()
{
  v1 = *(*(v0 + 32) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_1C6E301F0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

uint64_t sub_1C6E30258@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[12];
  v5 = sub_1C6DEDD3C(1);
  if (v5)
  {
    v6 = *(v3 + 80);
    v12 = *(v6 - 8);
    (*(v12 + 16))(a1, v5 + *(*v5 + 104), v6);

    v7 = *(v12 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v10 = *(v3 + 80);
    v7 = *(*(v10 - 8) + 56);
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_1C6E303A4()
{
  v1 = *(v0 + 96);
  v2 = sub_1C6DEDD3C(1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + *(*v2 + 112));
  v4 = *v3;
  v5 = v3[1];

  return v4;
}

uint64_t sub_1C6E3041C(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v7 = *a2;
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EE0();
  sub_1C6EE4730();
  v8 = v2[10];
  v9 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v8);
  result = (*(v9 + 24))(v8, v9);
  if (!v3)
  {
    v11 = result;
    v12 = *(v7 + 88);
    sub_1C6EE49C0();

    swift_getWitnessTable();
    sub_1C6EE4E20();
    v13 = sub_1C6EE4E10();

    if (v13)
    {
      sub_1C6E30C1C(v11, a2);
    }

    else
    {
      v14 = sub_1C6EE4E20();
      if (*(v14 + 16) <= *(a1 + 16) >> 3)
      {

        sub_1C6E038DC(v14);

        v15 = a1;
      }

      else
      {

        v15 = sub_1C6E04178(v14, a1);
      }

      v16 = *(v6 + 80);
      v17 = *(v6 + 88);
      type metadata accessor for FileContainerManager.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v18 = v15;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C6E306F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  result = sub_1C6EE51C0();
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_1C6E30790(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6E307B4, 0, 0);
}

uint64_t sub_1C6E307B4()
{
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6EE6590;
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1C6EE4DF0();
  v7 = v6;
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6DF10E0();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v8 = v1[10];
  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
  v10 = *(v9 + 32);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_1C6E309C8;
  v13 = v0[2];

  return v15(v13, v8, v9);
}

uint64_t sub_1C6E309C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C6E30B18, 0, 0);
  }
}

uint64_t sub_1C6E30B18()
{
  v1 = *(v0 + 48);
  sub_1C6E30C1C(*(v0 + 56), *(v0 + 24));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *sub_1C6E30BA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_1C6E30BD0()
{
  sub_1C6E30BA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6E30C1C(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = *a2;
  if (qword_1EDEF66C8 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDEF66D0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  v40 = xmmword_1C6EE6590;
  *(v4 + 16) = xmmword_1C6EE6590;
  v5 = v3[11];
  v47 = a1;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v3[10];
  v37 = v3[12];
  KeyPath = swift_getKeyPath();
  v42 = v37;
  v43 = v6;
  v34 = v6;
  v35 = v37;
  v36 = MEMORY[0x1EEE9AC00](KeyPath);
  v8 = MEMORY[0x1E69E6158];
  v9 = sub_1C6EE49D0();

  WitnessTable = swift_getWitnessTable();
  v10 = v44;
  v12 = sub_1C6E2E468(sub_1C6E31054, v33, v9, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = MEMORY[0x1CCA580B0](v12, v8);
  v15 = v14;

  *(v4 + 56) = v8;
  v16 = sub_1C6DF10E0();
  *(v4 + 64) = v16;
  *(v4 + 32) = v13;
  *(v4 + 40) = v15;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v47 = a1;

  swift_getWitnessTable();
  v17 = sub_1C6EE4D60();
  sub_1C6ED18D8(v17);

  if (!v10)
  {
    v19 = swift_allocObject();
    v46 = v16;
    v20 = v19;
    *(v19 + 16) = v40;
    v47 = a1;
    MEMORY[0x1EEE9AC00](v19);
    v21 = v42;
    v22 = v43;
    v36 = v43;
    v37 = v42;
    v23 = swift_getKeyPath();
    v44 = &v38;
    v24 = MEMORY[0x1EEE9AC00](v23);
    v34 = v22;
    v35 = v21;
    v36 = v24;

    v25 = v9;
    v26 = MEMORY[0x1E69E6158];
    v28 = sub_1C6E2E468(sub_1C6E3115C, v33, v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);

    v29 = MEMORY[0x1CCA580B0](v28, v26);
    v31 = v30;

    v32 = v46;
    v20[7] = v26;
    v20[8] = v32;
    v20[4] = v29;
    v20[5] = v31;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return result;
}

uint64_t sub_1C6E31080()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6E310C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E31110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E31184(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  result = sub_1C6E4B948(v12, v13);
  if (!v3)
  {
    v15 = result;
    v32 = 0;
    swift_beginAccess();
    v16 = *(v4 + 16);
    if (*(v16 + 16) && (v17 = sub_1C6DEBD64(v15), (v18 & 1) != 0))
    {
      sub_1C6E0D038(*(v16 + 56) + 40 * v17, v28);
      sub_1C6DEC3A8(v28, v29);
      swift_endAccess();
      v19 = v30;
      v20 = v31;
      v21 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v26 = a2;
      v27 = v21;
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      (*(v23 + 16))(v22, v23);
      (*(v20 + 8))(v11, v26, v19, v20);
      (*(v8 + 8))(v11, v7);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      swift_endAccess();
      sub_1C6E3282C();
      swift_allocError();
      *v24 = v15;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C6E313AC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_1C6E3144C(uint64_t a1, uint64_t a2)
{
  v26[1] = a1;
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C6EE4090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6EE41A0();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v29 = a2;
  v14 = sub_1C6EE4100();
  v30[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v30];

  v16 = v30[0];
  if (!v15)
  {
    goto LABEL_4;
  }

  v17 = v30[0];
  v18 = [v12 defaultManager];
  v19 = sub_1C6EE4100();
  v30[0] = sub_1C6EE40E0();
  v30[1] = v20;
  (*(v4 + 104))(v7, *MEMORY[0x1E6968F58], v3);
  sub_1C6DF0C68();
  sub_1C6EE4180();
  (*(v4 + 8))(v7, v3);

  v21 = sub_1C6EE4100();
  (*(v27 + 8))(v11, v28);
  v30[0] = 0;
  v22 = [v18 copyItemAtURL:v19 toURL:v21 error:v30];

  v16 = v30[0];
  if (v22)
  {
    result = v30[0];
  }

  else
  {
LABEL_4:
    v24 = v16;
    sub_1C6EE4050();

    result = swift_willThrow();
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C6E31748()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1C6EE4170();
  v2 = sub_1C6EE4A60();

  v3 = [v1 fileExistsAtPath_];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    sub_1C6EE4170();
    v5 = sub_1C6EE4A60();

    v16[0] = 0;
    v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:v16];

    v7 = v16[0];
    if (!v6)
    {
LABEL_6:
      v14 = v7;
      sub_1C6EE4050();

      result = swift_willThrow();
      goto LABEL_7;
    }

    v8 = v16[0];
  }

  v9 = objc_opt_self();
  v10 = sub_1C6EE4100();
  v11 = sub_1C6EE4100();
  v16[0] = 0;
  v12 = [v9 unarchiveZipAtURL:v10 to:v11 error:v16];

  v7 = v16[0];
  if (!v12)
  {
    goto LABEL_6;
  }

  result = v16[0];
LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6E3191C(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v89 = a1;
  v96[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1C6EE4350();
  v3 = *(v2 - 8);
  v84 = v2;
  v85 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v81 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E78, &qword_1C6EE8F60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v80 - v10;
  v92 = sub_1C6EE4860();
  v95 = *(v92 - 8);
  v12 = *(v95 + 64);
  v13 = MEMORY[0x1EEE9AC00](v92);
  v83 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = v80 - v15;
  v16 = sub_1C6EE4090();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6EE41A0();
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE40E0();
  v25 = sub_1C6EE4A60();

  v26 = [v25 stringByDeletingPathExtension];

  v27 = sub_1C6EE4A90();
  v29 = v28;

  v96[0] = v27;
  v96[1] = v29;
  (*(v17 + 104))(v20, *MEMORY[0x1E6968F58], v16);
  sub_1C6DF0C68();
  sub_1C6EE4180();
  (*(v17 + 8))(v20, v16);

  v87 = sub_1C6EE4160();
  v94 = v30;
  v31 = v93;
  v32 = *(v93 + 8);
  v90 = v21;
  v32(v24, v21);
  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  sub_1C6EE4170();
  v35 = sub_1C6EE4A60();

  LOBYTE(v26) = [v34 fileExistsAtPath_];

  v36 = v95;
  if ((v26 & 1) == 0)
  {
    v37 = [v33 defaultManager];
    v38 = sub_1C6EE4A60();
    v96[0] = 0;
    v39 = [v37 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:v96];

    if (!v39)
    {
      v71 = v96[0];

      sub_1C6EE4050();

      goto LABEL_13;
    }

    v40 = v96[0];
    v31 = v93;
  }

  v41 = *(v31 + 16);
  v43 = v89;
  v42 = v90;
  v41(v24, v89, v90);
  sub_1C6EE4850();
  v44 = v92;
  if ((*(v36 + 48))(v11, 1, v92) == 1)
  {

    sub_1C6E326CC(v11);
    type metadata accessor for AppleArchivePackageInstaller.Errors();
    sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors);
    swift_allocError();
    v41(v45, v43, v42);
    swift_storeEnumTagMultiPayload();
LABEL_13:
    result = swift_willThrow();
    goto LABEL_18;
  }

  v46 = v88;
  (*(v36 + 32))(v88, v11, v44);
  sub_1C6EE4330();
  v47 = sub_1C6EE4310();
  if (v47)
  {
    v48 = v47;
    v49 = MEMORY[0x1E69E7CC0];
    v96[0] = MEMORY[0x1E69E7CC0];
    v50 = sub_1C6E32780(&qword_1EC1F7E88, MEMORY[0x1E69E5BA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E90, &qword_1C6EE8F68);
    sub_1C6E327C8();
    v51 = v86;
    v52 = v84;
    v93 = v50;
    sub_1C6EE50C0();
    v53 = sub_1C6EE4300();
    v54 = *(v85 + 8);
    v54(v51, v52);
    if (v53)
    {
      v90 = v48;
      v55 = sub_1C6EE43A0();
      v96[0] = v49;
      sub_1C6EE50C0();
      v91 = v55;
      v56 = sub_1C6EE4360();
      v57 = v86;
      v58 = v56;
      v54(v86, v52);
      if (v58)
      {
        v89 = v58;
        v80[1] = v53;
        v59 = v83;
        MEMORY[0x1CCA57C70](v87, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EA0, &qword_1C6EE8F70);
        v60 = *(v85 + 72);
        v61 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v62 = swift_allocObject();
        v62[1] = xmmword_1C6EE6590;
        sub_1C6EE4340();
        v96[0] = v62;
        sub_1C6EE50C0();
        v63 = sub_1C6EE4370();
        v54(v57, v52);
        v64 = *(v95 + 8);
        v95 += 8;
        v64(v59, v92);
        if (v63)
        {
          v96[0] = MEMORY[0x1E69E7CC0];
          v65 = v81;
          sub_1C6EE50C0();
          v66 = v82;
          sub_1C6EE4390();
          if (v66)
          {
            v67 = v64;
            v54(v65, v52);
            sub_1C6EE4380();
            v68 = v92;
            v69 = v88;

            sub_1C6EE4380();

            sub_1C6EE4320();

            sub_1C6EE4320();

            result = v67(v69, v68);
          }

          else
          {
            v94 = v64;
            v54(v65, v52);
            sub_1C6EE4380();
            v78 = v92;
            v79 = v88;

            sub_1C6EE4380();

            sub_1C6EE4320();

            sub_1C6EE4320();

            result = v94(v79, v78);
          }
        }

        else
        {
          type metadata accessor for AppleArchivePackageInstaller.Errors();
          sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1C6EE4380();
          v75 = v92;
          v76 = v88;

          sub_1C6EE4320();

          sub_1C6EE4320();

          result = (v64)(v76, v75);
        }
      }

      else
      {

        type metadata accessor for AppleArchivePackageInstaller.Errors();
        sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1C6EE4320();
        v72 = v92;
        v73 = v95;
        v74 = v88;

        sub_1C6EE4320();

        result = (*(v73 + 8))(v74, v72);
      }
    }

    else
    {

      type metadata accessor for AppleArchivePackageInstaller.Errors();
      sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1C6EE4320();

      result = (*(v95 + 8))(v88, v92);
    }
  }

  else
  {

    type metadata accessor for AppleArchivePackageInstaller.Errors();
    sub_1C6E32780(&qword_1EC1F7E80, type metadata accessor for AppleArchivePackageInstaller.Errors);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    result = (*(v36 + 8))(v46, v44);
  }

LABEL_18:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6E326CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7E78, &qword_1C6EE8F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AppleArchivePackageInstaller.Errors()
{
  result = qword_1EC1F7EB0;
  if (!qword_1EC1F7EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E32780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6E327C8()
{
  result = qword_1EC1F7E98;
  if (!qword_1EC1F7E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7E90, &qword_1C6EE8F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7E98);
  }

  return result;
}

unint64_t sub_1C6E3282C()
{
  result = qword_1EC1F7EA8;
  if (!qword_1EC1F7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7EA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PackageInstaller.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PackageInstaller.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C6E32A34()
{
  result = sub_1C6EE41A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UniqueIOUtilError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UniqueIOUtilError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E32C08()
{
  result = qword_1EC1F7EC0;
  if (!qword_1EC1F7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7EC0);
  }

  return result;
}

uint64_t sub_1C6E32C74()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E32CE8()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E32D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a4;
  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v49 = 0;
    v50 = a1 + 32;
    v51 = a2 + 56;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v52 = v49;
      while (1)
      {
        if (v52 >= v4)
        {
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v49 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_79;
        }

        if (!*(a2 + 16))
        {
          goto LABEL_54;
        }

        v53 = (v50 + 16 * v52);
        v5 = *v53;
        v54 = v53[1];
        v55 = *(a2 + 40);
        sub_1C6EE5580();

        sub_1C6EE4B30();
        v56 = sub_1C6EE55A0();
        v57 = -1 << *(a2 + 32);
        v58 = v56 & ~v57;
        if ((*(v51 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          break;
        }

LABEL_53:

LABEL_54:
        v52 = v49;
        if (v49 == v4)
        {
          v66 = *(v11 + 16);
          return v11;
        }
      }

      v59 = ~v57;
      while (1)
      {
        v60 = (*(a2 + 48) + 16 * v58);
        v61 = *v60 == v5 && v60[1] == v54;
        if (v61 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v51 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6E15A10(0, *(v11 + 16) + 1, 1);
      }

      v63 = *(v11 + 16);
      v62 = *(v11 + 24);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        sub_1C6E15A10((v62 > 1), v63 + 1, 1);
        v64 = v63 + 1;
      }

      *(v11 + 16) = v64;
      v65 = v11 + 16 * v63;
      *(v65 + 32) = v5;
      *(v65 + 40) = v54;
      if (v49 == v4)
      {
        return v11;
      }
    }
  }

  v71 = a1 + 32;
  v8 = a2 + 56;

  v9 = 0;
  v10 = 0;
  v67 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v11 = 0xE000000000000000;
  v69 = v4;
  v70 = v5;
  while (v9 != v4)
  {
    v12 = v11;
    v13 = v10;
    while (1)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v15 = v9;
      v16 = __OFADD__(v9++, 1);
      if (v16)
      {
        goto LABEL_77;
      }

      v17 = (v71 + 16 * v15);
      v10 = *v17;
      v11 = v17[1];
      if (v15)
      {
        break;
      }

      v14 = v17[1];

LABEL_9:

      v12 = v11;
      v13 = v10;
      if (v9 == v4)
      {
        goto LABEL_43;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6EE6B40;
    *(v18 + 32) = v13;
    *(v18 + 40) = v12;
    v72 = v10;
    *(v18 + 48) = v10;
    *(v18 + 56) = v11;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6E33840();
    v5 = sub_1C6EE4A10();
    v20 = v19;

    if (*(a2 + 16))
    {
      v21 = *(a2 + 40);
      sub_1C6EE5580();
      sub_1C6EE4B30();
      v22 = sub_1C6EE55A0();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if ((*(v8 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v24);
          v27 = *v26 == v5 && v26[1] == v20;
          if (v27 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v8 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        swift_bridgeObjectRelease_n();
        v10 = v5;
        v11 = v20;
        v4 = v69;
        goto LABEL_9;
      }
    }

LABEL_22:

    if (!*(a2 + 16))
    {

      v4 = v69;
      goto LABEL_33;
    }

    v28 = *(a2 + 40);
    sub_1C6EE5580();
    sub_1C6EE4B30();
    v29 = sub_1C6EE55A0();
    v30 = -1 << *(a2 + 32);
    v31 = v29 & ~v30;
    v4 = v69;
    if (((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
LABEL_31:

LABEL_33:
      v10 = v72;
      goto LABEL_9;
    }

    v32 = ~v30;
    while (1)
    {
      v33 = (*(a2 + 48) + 16 * v31);
      v34 = *v33 == v13 && v33[1] == v12;
      if (v34 || (sub_1C6EE54B0() & 1) != 0)
      {
        break;
      }

      v31 = (v31 + 1) & v32;
      if (((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v35 = v68;
    }

    else
    {
      v35 = sub_1C6ED8FB0(0, *(v68 + 2) + 1, 1, v68);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1C6ED8FB0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v68 = v35;
    v38 = &v35[16 * v37];
    *(v38 + 4) = v13;
    *(v38 + 5) = v12;
    v5 = v70;
    sub_1C6DF0C68();

    v39 = sub_1C6EE4FF0();

    v40 = *(v39 + 16);

    v16 = __OFADD__(v67, v40);
    v67 += v40;
    v10 = v72;
    if (v16)
    {
      goto LABEL_80;
    }
  }

LABEL_43:
  if ((sub_1C6EDCBA0(v10, v11, a2) & 1) == 0)
  {

    return v68;
  }

  v5 = v10;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v41 = v68;
    goto LABEL_46;
  }

LABEL_81:
  v41 = sub_1C6ED8FB0(0, *(v68 + 2) + 1, 1, v68);
LABEL_46:
  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_1C6ED8FB0((v42 > 1), v43 + 1, 1, v41);
  }

  *(v41 + 2) = v43 + 1;
  v44 = v41;
  v45 = &v41[16 * v43];
  *(v45 + 4) = v5;
  *(v45 + 5) = v11;
  sub_1C6DF0C68();
  v46 = sub_1C6EE4FF0();

  v47 = *(v46 + 16);

  if (!__OFADD__(v67, v47))
  {
    return v44;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E33400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0) + 24);
  sub_1C6E336A8(a1 + v17, v8);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v16 = 0;
    v16[8] = 1;
    *(v16 + 2) = 0;
    *(v16 + 3) = 0xE000000000000000;
    v19 = &v16[*(v9 + 24)];
    sub_1C6EE4420();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C6E33718(v8);
    }
  }

  else
  {
    sub_1C6E337DC(v8, v16);
  }

  v20 = *v16;
  v21 = v16[8];
  sub_1C6E33780(v16);
  if (v21 != 1 || v20 == 0)
  {
    return 0;
  }

  sub_1C6E336A8(a1 + v17, v6);
  if (v18(v6, 1, v9) == 1)
  {
    *v14 = 0;
    v14[8] = 1;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0xE000000000000000;
    v24 = &v14[*(v9 + 24)];
    sub_1C6EE4420();
    if (v18(v6, 1, v9) != 1)
    {
      sub_1C6E33718(v6);
    }
  }

  else
  {
    sub_1C6E337DC(v6, v14);
  }

  v23 = *(v14 + 2);
  v25 = *(v14 + 3);

  sub_1C6E33780(v14);
  return v23;
}

uint64_t sub_1C6E336A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E33718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E33780(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E337DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6E33840()
{
  result = qword_1EDEF67C8;
  if (!qword_1EDEF67C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF67C8);
  }

  return result;
}

uint64_t sub_1C6E338A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6E338EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E33938(uint64_t a1)
{
  v2 = sub_1C6EE4760();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6EE4790();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEF8F88;
  sub_1C6EE4EB0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v11 = swift_allocObject();
  v25 = xmmword_1C6EE6590;
  *(v11 + 16) = xmmword_1C6EE6590;
  v12 = MEMORY[0x1E69E6158];
  v13 = sub_1C6EE49B0();
  v15 = v14;
  *(v11 + 56) = v12;
  v27 = sub_1C6DF10E0();
  *(v11 + 64) = v27;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_1C6EE4730();

  v16 = v10;
  sub_1C6EE4770();
  sub_1C6EE4780();
  sub_1C6EE4740();
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v33 = v18;
  *v17 = 136446210;
  v19 = v28;
  *(v17 + 4) = sub_1C6E41514(*(v28 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName), *(v28 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName + 8), &v33);
  v20 = sub_1C6EE4780();
  LOBYTE(v13) = sub_1C6EE4F80();
  v21 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v20, v13, v21, "CoreMLModelContainer.doCall", "%{public}s", v17, 0xCu);
  sub_1C6E33D88(v19, a1, &v34);
  LOBYTE(v10) = sub_1C6EE4F70();
  v22 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v20, v10, v22, "CoreMLModelContainer.doCall", "%{public}s", v17, 0xCu);

  v23 = v34;
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x1CCA59290](v18, -1, -1);
  MEMORY[0x1CCA59290](v17, -1, -1);
  (*(v29 + 8))(v5, v30);
  (*(v31 + 8))(v9, v32);
  return v23;
}

void sub_1C6E33D88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v63 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v64 = *(v5 - 8);
  v6 = v64[8];
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = a1;
  v9 = sub_1C6E2E05C(a2);
  if (qword_1EDEF8F80 != -1)
  {
LABEL_27:
    swift_once();
  }

  v10 = qword_1EDEF8F88;
  sub_1C6EE4EB0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  sub_1C6E34D60();

  v13 = MEMORY[0x1E69E6158];
  v14 = sub_1C6EE49B0();
  v16 = v15;

  *(v12 + 56) = v13;
  v17 = sub_1C6DF10E0();
  *(v12 + 64) = v17;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1C6EE4730();

  sub_1C6E34394(v9);

  v18 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v19 = v72;
  v20 = sub_1C6E34944();
  if (v19)
  {
    return;
  }

  v67 = v17;
  v68 = v11;
  v65 = v10;
  v21 = v71;
  v22 = *(v71 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock);
  v23 = MEMORY[0x1EEE9AC00](v20);
  *(&v60 - 2) = v21;
  *(&v60 - 1) = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  *(&v60 - 2) = sub_1C6E34DAC;
  *(&v60 - 1) = v25;
  v26 = v24;
  os_unfair_lock_lock(v22 + 4);
  sub_1C6E34DC8(&v73);
  v9 = 0;
  os_unfair_lock_unlock(v22 + 4);
  v62 = 0;
  v61 = v26;
  v72 = v73;
  v27 = *(v21 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec + 8);
  v70 = *(v27 + 16);
  if (!v70)
  {
    v71 = MEMORY[0x1E69E7CC8];
LABEL_21:
    v57 = v62;
    sub_1C6E2AAA8(v71);
    if (v57)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v59 = v58;

      swift_unknownObjectRelease();

      *v63 = v59;
    }

    return;
  }

  v28 = 0;
  v71 = MEMORY[0x1E69E7CC8];
  v66 = xmmword_1C6EE6B40;
  v29 = v64;
  v69 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1C6E00BFC(v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v29[9] * v28, v8);
    v36 = *v8;
    v35 = v8[1];
    v37 = v72;
    swift_getObjectType();

    v38 = sub_1C6EE4A60();
    v39 = [v37 featureValueForName_];

    if (v39)
    {
      v40 = [v39 multiArrayValue];

      if (v40)
      {
        break;
      }
    }

    v30 = swift_allocObject();
    *(v30 + 16) = v66;
    v73 = 0;
    v74 = 0xE000000000000000;
    v75 = v72;
    v9 = &v73;
    sub_1C6EE5480();
    v31 = v73;
    v32 = v74;
    v33 = MEMORY[0x1E69E6158];
    v34 = v67;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = v34;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    *(v30 + 96) = v33;
    *(v30 + 104) = v34;
    *(v30 + 72) = v36;
    *(v30 + 80) = v35;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

LABEL_6:
    ++v28;
    sub_1C6E34E0C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v27 = v69;
    if (v70 == v28)
    {
      goto LABEL_21;
    }
  }

  v41 = v8;
  v8 = v29;
  v9 = v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v9;
  v43 = sub_1C6DEC784(v36, v35);
  v45 = v9[2];
  v46 = (v44 & 1) == 0;
  v47 = __OFADD__(v45, v46);
  v48 = v45 + v46;
  if (v47)
  {
    goto LABEL_26;
  }

  v49 = v44;
  if (v9[3] >= v48)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = &v73;
      v56 = v43;
      sub_1C6E09C58();
      v43 = v56;
    }
  }

  else
  {
    sub_1C6E072DC(v48, isUniquelyReferenced_nonNull_native);
    v9 = v73;
    v43 = sub_1C6DEC784(v36, v35);
    if ((v49 & 1) != (v50 & 1))
    {
      goto LABEL_29;
    }
  }

  v29 = v8;
  v8 = v41;
  v71 = v73;
  if (v49)
  {
    v51 = *(v73 + 56);
    v9 = *(v51 + 8 * v43);
    *(v51 + 8 * v43) = v40;

    goto LABEL_6;
  }

  v52 = v71;
  *(v73 + 8 * (v43 >> 6) + 64) |= 1 << v43;
  v53 = (v52[6] + 16 * v43);
  *v53 = v36;
  v53[1] = v35;
  *(v52[7] + 8 * v43) = v40;
  v54 = v52[2];
  v47 = __OFADD__(v54, 1);
  v55 = v54 + 1;
  if (!v47)
  {
    v52[2] = v55;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  sub_1C6EE5500();
  __break(1u);
}

unint64_t sub_1C6E34394(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7790, &unk_1C6EE6940);
    v2 = sub_1C6EE5340();
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
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_1C6E34D60();

        v20 = v19;
        swift_dynamicCast();
        sub_1C6DEC868(&v26, v28);
        sub_1C6DEC868(v28, v29);
        sub_1C6DEC868(v29, &v27);
        result = sub_1C6DEC784(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1C6DEC868(&v27, v12);
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
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_1C6DEC868(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
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

id sub_1C6E345F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1C6E34A2C();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider + 8);
    result = (*(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider))();
    if (v3)
    {
      goto LABEL_8;
    }

    v14 = *(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);
    *(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = result;
    v8 = result;
    sub_1C6E34D50(v14);
    v7 = 0;
  }

  v17[0] = 0;
  v9 = v7;
  v10 = [v8 predictionFromFeatures:a2 error:v17];

  v11 = v17[0];
  if (v10)
  {
    *a3 = v10;
    result = v11;
  }

  else
  {
    v15 = v17[0];
    sub_1C6EE4050();

    result = swift_willThrow();
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6E34724()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock);

  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName + 8);

  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);

  sub_1C6E34D50(v4);
}

uint64_t sub_1C6E3478C()
{
  v1 = v0[3];

  sub_1C6E34E0C(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock);

  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider + 8);

  sub_1C6E34D50(*(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreMLModelContainer()
{
  result = qword_1EDEF82C0;
  if (!qword_1EDEF82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C6E34944()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1C6EE4990();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C6E34A2C()
{
  result = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = 0;
  }

  return result;
}

uint64_t sub_1C6E34A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_1C6EE42F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED0, &unk_1C6EE9160);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v6 + v20) = v21;
  *(v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = 1;
  v22 = (v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName);
  *v22 = a2;
  v22[1] = a3;
  v23 = (v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider);
  *v23 = a4;
  v23[1] = a5;

  sub_1C6EE42E0();
  v24 = sub_1C6EE42D0();
  v26 = v25;
  (*(v16 + 8))(v19, v15);
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  *(v6 + 16) = v24;
  *(v6 + 24) = v26;
  sub_1C6E34C7C(v30, v6 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  sub_1C6E34CE0(v14, v6 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);
  return v6;
}

uint64_t sub_1C6E34C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E34CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6E34D50(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_1C6E34D60()
{
  result = qword_1EDEF6788;
  if (!qword_1EDEF6788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6788);
  }

  return result;
}

void *sub_1C6E34DC8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1C6E34E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1C6E34E6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1C6E35D64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    *a4 = *v8;
    *(a4 + 8) = v10;
    *(a4 + 16) = v11;

    sub_1C6E00CBC(v9, v10, v11);
  }

  else
  {
    result = 0.0;
    *a4 = xmmword_1C6EE7FC0;
    *(a4 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E34EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_1C6E35D64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 24 * v6;
    v12 = *v8;
    v13 = *(v8 + 16);
    return Feature.stringList.getter();
  }

  else
  {
    sub_1C6E2AC54();
    swift_allocError();
    v10 = MEMORY[0x1E69E6168];
    v11[3] = MEMORY[0x1E69E6158];
    v11[4] = v10;
    *v11 = a1;
    v11[1] = a2;
    swift_willThrow();
  }
}

char *sub_1C6E34FC0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C6EE42F0();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  v21 = &v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer];
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 1) = v22;
  *(v21 + 24) = *(a1 + 96);
  v23 = *(a1 + 80);
  *(v21 + 4) = *(a1 + 64);
  *(v21 + 5) = v23;
  v24 = *(a1 + 48);
  *(v21 + 2) = *(a1 + 32);
  *(v21 + 3) = v24;
  v25 = *(*a2 + 16);
  if (v25 == 1 && (v26 = (*(v18 + 80) + 32) & ~*(v18 + 80), sub_1C6E00BFC(*a2 + v26, &v50 - v19), sub_1C6E35C10(v20, &v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO), v27 = a2[1], *(v27 + 16) == 1))
  {
    sub_1C6E00BFC(v27 + v26, v17);
    v28 = OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output;
    sub_1C6E35C10(v17, &v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E00BFC(&v3[v28], v14);
    v29 = *(v14 + 2);
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      sub_1C6E35BB0(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *&v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_codesLength] = v30;
      sub_1C6EE42E0();
      v31 = sub_1C6EE42D0();
      v33 = v32;
      (*(v50 + 8))(v9, v51);
      sub_1C6E35C10(a2, &v3[OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      v34 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
      v35 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
      (*(*(v35 - 8) + 56))(&v3[v34], 1, 1, v35);
      *(v3 + 2) = v31;
      *(v3 + 3) = v33;
      return v3;
    }

    sub_1C6E0E478();
    v48 = swift_allocError();
    v38 = 1;
    *v49 = 1;
    v52 = v48;
    swift_willThrow();
    sub_1C6E35BB0(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E35BB0(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  else
  {
    sub_1C6E0E478();
    v36 = swift_allocError();
    *v37 = 0;
    v52 = v36;
    swift_willThrow();
    sub_1C6E35BB0(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    v38 = 0;
  }

  v39 = *(v21 + 1);
  v40 = *(v21 + 3);
  v41 = *(v21 + 7);
  v42 = *(v21 + 8);
  v43 = *(v21 + 9);
  v44 = *(v21 + 11);

  if (v25 == 1)
  {
    sub_1C6E35BB0(&v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  if (v38)
  {
    sub_1C6E35BB0(&v3[OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  type metadata accessor for TextPreprocessModelContainer();
  v45 = *(*v3 + 48);
  v46 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1C6E35484(uint64_t a1)
{
  v2 = sub_1C6E34EEC(*(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input), *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input + 8), a1);
  v35 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 64);
  v36 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 80);
  v37 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 96);
  v31 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer);
  v32 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 16);
  v33 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 32);
  v34 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 48);
  v3 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_codesLength);
  v5 = sub_1C6E2C1EC(v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE83C0;
  v7 = *(v5 + 16);
  *(v6 + 32) = sub_1C6EE4E30();
  *(v6 + 40) = sub_1C6EE4E30();
  v8 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v9 = sub_1C6E35C78(v6, 131104);
  v27 = v3;
  v30 = *(v5 + 16);
  if (v30)
  {
    v10 = 0;
    v28 = v5;
    v29 = v5 + 32;
    while (v10 < *(v5 + 16))
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        v11 = *(v29 + 8 * v10);
        if (v4 > *(v11 + 16))
        {
          goto LABEL_15;
        }

        v12 = *(v29 + 8 * v10);

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1C6EE83C0;
          *(v15 + 32) = sub_1C6EE4E30();
          *(v15 + 40) = sub_1C6EE4E30();
          v16 = *(v11 + 4 * v13 + 32);
          v17 = sub_1C6EE5550();
          sub_1C6E1F61C();
          v18 = sub_1C6EE4C90();

          [v9 setObject:v17 forKeyedSubscript:v18];

          v13 = v14;
        }

        while (v4 != v14);

        v5 = v28;
      }

      if (++v10 == v30)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    swift_once();
    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v25 = swift_allocObject();
    *(v25 + 16) = *(v10 + 1424);
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C6DF10E0();
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    sub_1C6EE4730();

    return MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C70, &unk_1C6EE8400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6EE6590;
    v20 = *(v27 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output + 8);
    *(inited + 32) = *(v27 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output);
    *(inited + 40) = v20;
    *(inited + 48) = v9;

    v21 = v9;
    v22 = sub_1C6E0BB74(inited);
    swift_setDeallocating();
    sub_1C6E35E94(inited + 32, &qword_1EC1F7C78, &unk_1C6EE91B0);
    sub_1C6E2AAA8(v22);
    v24 = v23;
  }

  return v24;
}

uint64_t sub_1C6E35898()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 8);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 24);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 56);
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 64);
  v5 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 72);
  v6 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 88);

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  return sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
}

uint64_t sub_1C6E3594C()
{
  v1 = v0[3];

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E35E94(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 24);
  v4 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 56);
  v5 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 64);
  v6 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 72);
  v7 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer + 88);

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextPreprocessModelContainer()
{
  result = qword_1EDEF7F20;
  if (!qword_1EDEF7F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E35B04()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
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

uint64_t sub_1C6E35BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E35C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1C6E35C78(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1C6E1F61C();
  v4 = sub_1C6EE4C90();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_1C6E35D64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C6EE5580();
  sub_1C6EE4B30();
  v6 = sub_1C6EE55A0();

  return sub_1C6E35DDC(a1, a2, v6);
}

unint64_t sub_1C6E35DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C6EE54B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C6E35E94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E35EF4(uint64_t a1)
{
  v2 = sub_1C6EE4970();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6E41EBC(&qword_1EDEF6210, MEMORY[0x1E69666B0]);
  v7 = sub_1C6EE4C10();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A10(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_1C6EE4C00();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1C6EE6590;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1C6EE4AC0();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1C6E15A10((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1C6EE6590;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1C6EE4AC0();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1C6E15A10((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E362A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v1 = sub_1C6EE40B0();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

char *sub_1C6E36310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v64 = &v60 - v3;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  v73 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v18 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v21 = *(*(v72 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v72);
  v71 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v28 = *(v27 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v29 = v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v70 = (v9 + 48);
  v60 = (v5 + 56);
  v75 = v8;
  v76 = MEMORY[0x1E69E7CC0];
  v30 = *(v24 + 72);
  v68 = v4;
  v69 = v30;
  v31 = &unk_1C6EF23C0;
  v61 = (v5 + 48);
  v62 = &v60 - v25;
  v63 = v17;
  do
  {
    v77 = v29;
    v78 = v28;
    sub_1C6E41E54(v29, v26, &qword_1EC1F7F00, &unk_1C6EE9290);
    v32 = v71;
    sub_1C6E41E54(v26, v71, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41D64(v32 + *(v72 + 48), v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v33 = sub_1C6EE41A0();
    (*(*(v33 - 8) + 8))(v32, v33);
    v34 = *(v73 + 32);
    sub_1C6E41E54(&v20[v34], v17, &qword_1EC1F7EF8, v31);
    v35 = v17;
    v36 = v17;
    v37 = v75;
    v74 = *v70;
    if (v74(v35, 1, v75) == 1)
    {
      sub_1C6E41F84(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      sub_1C6E41F04(v26, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41F04(v36, &qword_1EC1F7EF8, v31);
      v17 = v36;
    }

    else
    {
      sub_1C6E41F04(v36, &qword_1EC1F7EF8, v31);
      v38 = v20;
      v39 = v67;
      v40 = v31;
      sub_1C6E41E54(&v20[v34], v67, &qword_1EC1F7EF8, v31);
      v41 = v74;
      if (v74(v39, 1, v37) == 1)
      {
        v42 = v66;
        *v66 = 0;
        *(v42 + 1) = 0xE000000000000000;
        v43 = &v42[*(v37 + 20)];
        sub_1C6EE4420();
        (*v60)(&v42[*(v37 + 24)], 1, 1, v68);
        v44 = v41(v39, 1, v37);
        v45 = v42;
        v31 = v40;
        v46 = v61;
        if (v44 != 1)
        {
          sub_1C6E41F04(v67, &qword_1EC1F7EF8, v40);
        }
      }

      else
      {
        v47 = v39;
        v45 = v66;
        sub_1C6E41D64(v47, v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        v31 = v40;
        v46 = v61;
      }

      v48 = v64;
      sub_1C6E41E54(&v45[*(v75 + 24)], v64, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v49 = *v46;
      v50 = v68;
      if ((*v46)(v48, 1, v68) == 1)
      {
        v51 = v65;
        *v65 = 0;
        v51[1] = 0xE000000000000000;
        v52 = v51 + *(v50 + 20);
        sub_1C6EE4420();
        sub_1C6E41F84(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        if (v49(v48, 1, v50) != 1)
        {
          sub_1C6E41F04(v48, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        sub_1C6E41F84(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        v51 = v65;
        sub_1C6E41D64(v48, v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v54 = *v51;
      v53 = v51[1];

      sub_1C6E41F84(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_1C6ED8FB0(0, *(v76 + 2) + 1, 1, v76);
      }

      v56 = *(v76 + 2);
      v55 = *(v76 + 3);
      if (v56 >= v55 >> 1)
      {
        v76 = sub_1C6ED8FB0((v55 > 1), v56 + 1, 1, v76);
      }

      v20 = v38;
      sub_1C6E41F84(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v26 = v62;
      sub_1C6E41F04(v62, &qword_1EC1F7F00, &unk_1C6EE9290);
      v57 = v76;
      *(v76 + 2) = v56 + 1;
      v58 = &v57[16 * v56];
      *(v58 + 4) = v54;
      *(v58 + 5) = v53;
      v17 = v63;
    }

    v29 = v77 + v69;
    v28 = v78 - 1;
  }

  while (v78 != 1);
  return v76;
}

void *sub_1C6E36AAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v185 = a5;
  LODWORD(v183) = a4;
  v182 = a3;
  v193 = a2;
  v164 = sub_1C6EE47A0();
  v175 = *(v164 - 8);
  v8 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v174 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v202 = &v163 - v12;
  v201 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v168 = *(v201 - 8);
  v13 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v203 = &v163 - v17;
  v199 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v167 = *(v199 - 8);
  v18 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v165 = *(v206 - 8);
  v20 = *(v165 + 64);
  v21 = MEMORY[0x1EEE9AC00](v206);
  v205 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v196 = (&v163 - v23);
  v197 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v170 = *(v197 - 8);
  v24 = *(v170 + 64);
  v25 = MEMORY[0x1EEE9AC00](v197);
  v207 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v163 - v27;
  v28 = sub_1C6EE41A0();
  v187 = *(v28 - 8);
  v29 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v181 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C6EE4790();
  v32 = *(v31 - 8);
  v194 = v31;
  v195 = v32;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v177 = &v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v188 = &v163 - v36;
  v37 = sub_1C6EE4760();
  v190 = *(v37 - 8);
  v191 = v37;
  v38 = *(v190 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v173 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v178 = &v163 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v189 = &v163 - v43;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v44 = *(*(v176 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v176);
  v179 = &v163 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v180 = &v163 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v163 - v49;
  v6[2] = 0;
  v51 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_signposter;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDEF8F88;
  sub_1C6EE4770();
  *(v6 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_loadedComputations) = MEMORY[0x1E69E7CC8];
  v53 = (v6 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
  *v53 = 0;
  v53[1] = 0;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C6EE6B40;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
  v192 = a1;
  v204 = v28;
  v55 = sub_1C6EE5460();
  v57 = v56;
  v58 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v59 = v6;
  v60 = sub_1C6DF10E0();
  *(v54 + 64) = v60;
  *(v54 + 32) = v55;
  *(v54 + 40) = v57;
  sub_1C6E41E54(v193, v50, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v61 = sub_1C6EE4AF0();
  *(v54 + 96) = v58;
  *(v54 + 104) = v60;
  v171 = v60;
  v62 = v59;
  *(v54 + 72) = v61;
  *(v54 + 80) = v63;
  sub_1C6EE4EE0();
  v172 = v52;
  sub_1C6EE4730();

  v64 = v194;
  v65 = v195;
  v66 = *(v195 + 16);
  v67 = v188;
  v66(v188, &v62[v51], v194);
  sub_1C6EE4780();
  v68 = v189;
  sub_1C6EE4740();
  v188 = *(v65 + 8);
  (v188)(v67, v64);
  v176 = v51;
  v186 = v62;
  v69 = v177;
  v66(v177, &v62[v51], v64);
  v70 = sub_1C6EE4780();
  v71 = sub_1C6EE4F80();
  v72 = v64;
  v73 = v65 + 8;
  if (sub_1C6EE4FB0())
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    v75 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v70, v71, v75, "ResourceReader.init", "", v74, 2u);
    MEMORY[0x1CCA59290](v74, -1, -1);
  }

  (*(v190 + 16))(v178, v68, v191);
  v76 = sub_1C6EE47D0();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  v79 = sub_1C6EE47C0();
  v195 = v73;
  (v188)(v69, v72);
  v80 = v181;
  v81 = v192;
  sub_1C6EE4120();
  v82 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory;
  v83 = v187;
  v84 = v186;
  v85 = v204;
  (*(v187 + 32))(&v186[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory], v80, v204);
  v86 = v193;
  v87 = v179;
  sub_1C6E41E54(v193, v179, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v83 + 48))(v87, 1, v85) == 1)
  {
    sub_1C6E41F04(v87, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v88 = 1;
    v89 = v184;
    v90 = v180;
  }

  else
  {
    v90 = v180;
    sub_1C6EE4120();
    v85 = v204;
    (*(v83 + 8))(v87, v204);
    v88 = 0;
    v89 = v184;
  }

  (*(v83 + 56))(v90, v88, 1, v85);
  v91 = v90;
  v92 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory;
  sub_1C6E41FE4(v91, v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory, &unk_1EC1F9AB0, &qword_1C6EE9250);
  *(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_computeUnits) = v182;
  *(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_readOnly) = v183 & 1;
  v93 = sub_1C6E37F00(v185, v81);
  if (v89)
  {

LABEL_10:
    sub_1C6E41F04(v86, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v94 = *(v83 + 8);
    v95 = v204;
    v94(v192, v204);
    (*(v190 + 8))(v189, v191);
    v96 = v84[2];

    v94(v84 + v82, v95);
    sub_1C6E41F04(v84 + v92, &unk_1EC1F9AB0, &qword_1C6EE9250);
    (v188)(v84 + v176, v194);
    v97 = *(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_loadedComputations);

    v98 = *(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);
    sub_1C6E41D54(*(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver));
    type metadata accessor for ResourceReader();
    v99 = *(*v84 + 48);
    v100 = *(*v84 + 52);
    swift_deallocPartialClassInstance();
    return v84;
  }

  v101 = v93;

  if (!*(v101 + 16))
  {

    sub_1C6DFE4C0();
    swift_allocError();
    *v116 = xmmword_1C6EE91C0;
    *(v116 + 16) = 5;
    swift_willThrow();

    goto LABEL_10;
  }

  v185 = v79;
  v184 = 0;
  *(v84 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs) = v101;
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_1C6EE6590;
  v208 = 0;
  v209 = 0xE000000000000000;
  v102 = *(v101 + 16);
  v103 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    v210 = MEMORY[0x1E69E7CC0];

    sub_1C6E15BF0(0, v102, 0);
    v104 = v210;
    v105 = v101 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    v106 = *(v165 + 72);
    v194 = v101;
    v195 = v106;
    v107 = (v187 + 8);
    v108 = v170;
    v109 = v166;
    do
    {
      v110 = v196;
      sub_1C6E41E54(v105, v196, &qword_1EC1F7F00, &unk_1C6EE9290);
      v111 = v110;
      v112 = v205;
      sub_1C6E41FE4(v111, v205, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41D64(v112 + *(v206 + 48), v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      (*v107)(v112, v204);
      v210 = v104;
      v114 = *(v104 + 16);
      v113 = *(v104 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_1C6E15BF0(v113 > 1, v114 + 1, 1);
        v104 = v210;
      }

      *(v104 + 16) = v114 + 1;
      sub_1C6E41D64(v109, v104 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v114, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v105 += v195;
      --v102;
    }

    while (v102);

    v84 = v186;
    v115 = v104;
    v103 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v115 = MEMORY[0x1E69E7CC0];
    v108 = v170;
  }

  v117 = *(v115 + 16);
  v119 = v201;
  v118 = v202;
  v120 = v200;
  v121 = v203;
  if (v117)
  {
    v210 = v103;
    v122 = v115;
    sub_1C6E15A10(0, v117, 0);
    v206 = v210;
    v123 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v182 = v122;
    v124 = v122 + v123;
    v125 = (v167 + 48);
    v188 = (v168 + 56);
    v195 = *(v108 + 72);
    v196 = (v167 + 48);
    v194 = (v168 + 48);
    do
    {
      v205 = v117;
      v126 = v207;
      sub_1C6E41DCC(v124, v207, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      sub_1C6E41E54(v126 + *(v197 + 32), v121, &qword_1EC1F7EF8, &unk_1C6EF23C0);
      v127 = *v125;
      v128 = v199;
      if ((*v125)(v121, 1, v199) == 1)
      {
        v129 = v198;
        *v198 = 0;
        *(v129 + 1) = 0xE000000000000000;
        v130 = &v129[*(v128 + 20)];
        sub_1C6EE4420();
        (*v188)(&v129[*(v128 + 24)], 1, 1, v119);
        if (v127(v121, 1, v128) != 1)
        {
          sub_1C6E41F04(v203, &qword_1EC1F7EF8, &unk_1C6EF23C0);
        }
      }

      else
      {
        v129 = v198;
        sub_1C6E41D64(v121, v198, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      }

      sub_1C6E41E54(&v129[*(v128 + 24)], v118, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v131 = *v194;
      v132 = (*v194)(v118, 1, v119);
      v133 = v205;
      if (v132 == 1)
      {
        *v120 = 0;
        v120[1] = 0xE000000000000000;
        v134 = v120 + *(v119 + 20);
        sub_1C6EE4420();
        if (v131(v118, 1, v119) != 1)
        {
          sub_1C6E41F04(v118, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        sub_1C6E41D64(v118, v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v136 = *v120;
      v135 = v120[1];

      sub_1C6E41F84(v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E41F84(v129, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6E41F84(v207, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v210 = v206;
      v138 = *(v206 + 16);
      v137 = *(v206 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_1C6E15A10((v137 > 1), v138 + 1, 1);
        v206 = v210;
      }

      v139 = v206;
      *(v206 + 16) = v138 + 1;
      v140 = v139 + 16 * v138;
      *(v140 + 32) = v136;
      *(v140 + 40) = v135;
      v125 = v196;
      v124 += v195;
      v117 = v133 - 1;
      v119 = v201;
      v118 = v202;
      v120 = v200;
      v121 = v203;
    }

    while (v117);

    v84 = v186;
  }

  else
  {

    v206 = MEMORY[0x1E69E7CC0];
  }

  v141 = MEMORY[0x1E69E6158];
  v142 = MEMORY[0x1CCA580B0](v206, MEMORY[0x1E69E6158]);
  v144 = v143;

  MEMORY[0x1CCA57F60](v142, v144);

  v145 = v208;
  v146 = v209;
  v147 = v183;
  v148 = v171;
  *(v183 + 56) = v141;
  v147[8] = v148;
  v147[4] = v145;
  v147[5] = v146;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v149 = sub_1C6EE4780();
  v150 = v173;
  sub_1C6EE47B0();
  v151 = sub_1C6EE4F70();
  v152 = sub_1C6EE4FB0();
  v153 = v193;
  v154 = v175;
  v155 = v174;
  if (v152)
  {

    sub_1C6EE47E0();

    v156 = v164;
    if ((*(v154 + 88))(v155, v164) == *MEMORY[0x1E69E93E8])
    {
      v157 = "[Error] Interval already ended";
    }

    else
    {
      (*(v154 + 8))(v155, v156);
      v157 = "";
    }

    v158 = swift_slowAlloc();
    *v158 = 0;
    v159 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v149, v151, v159, "ResourceReader.init", v157, v158, 2u);
    MEMORY[0x1CCA59290](v158, -1, -1);
    v153 = v193;
  }

  sub_1C6E41F04(v153, &unk_1EC1F9AB0, &qword_1C6EE9250);
  (*(v187 + 8))(v192, v204);
  v160 = v191;
  v161 = *(v190 + 8);
  v161(v150, v191);
  v161(v189, v160);
  return v84;
}

uint64_t sub_1C6E37F00(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C6EE41A0();
  v39 = *(v5 - 1);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6EE6590;
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
    v30 = sub_1C6EE5460();
    v32 = v31;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6DF10E0();
    *(v17 + 32) = v30;
    *(v17 + 40) = v32;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v33 = sub_1C6E38418();
    if (!v2)
    {
      return v33;
    }

    return v17;
  }

  MEMORY[0x1EEE9AC00](v7);
  *(&v35 - 2) = a2;
  v10 = sub_1C6EDC2B0(sub_1C6E41E34, (&v35 - 4), a1);
  if (qword_1EDEF8F80 != -1)
  {
    goto LABEL_35;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6590;
  v37 = v5;
  v12 = MEMORY[0x1CCA580B0](v10, v5);
  v38 = v10;
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1C6DF10E0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = v38;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v36 = *(v15 + 16);
  if (v36)
  {
    v16 = 0;
    v35 = v39 + 16;
    v5 = (v39 + 8);
    v17 = MEMORY[0x1E69E7CC0];
    v10 = v37;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        swift_once();
        goto LABEL_3;
      }

      (*(v39 + 16))(v9, v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v16, v10);
      v18 = sub_1C6E38418();
      if (v2)
      {

        (*v5)(v9, v10);

        return v17;
      }

      v19 = v18;
      v20 = *(v18 + 16);
      v21 = *(v17 + 16);
      v10 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_31;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v17 + 24) >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v21 <= v10)
        {
          v23 = v21 + v20;
        }

        else
        {
          v23 = v21;
        }

        v17 = sub_1C6ED980C(isUniquelyReferenced_nonNull_native, v23, 1, v17);
        if (*(v19 + 16))
        {
LABEL_18:
          v10 = (*(v17 + 24) >> 1) - *(v17 + 16);
          v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290) - 8);
          if (v10 < v20)
          {
            goto LABEL_33;
          }

          v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
          v26 = *(v24 + 72);
          swift_arrayInitWithCopy();

          if (v20)
          {
            v27 = *(v17 + 16);
            v28 = __OFADD__(v27, v20);
            v29 = v27 + v20;
            if (v28)
            {
              goto LABEL_34;
            }

            *(v17 + 16) = v29;
          }

          goto LABEL_6;
        }
      }

      if (v20)
      {
        goto LABEL_32;
      }

LABEL_6:
      ++v16;
      v10 = v37;
      (*v5)(v9, v37);
      v15 = v38;
      if (v36 == v16)
      {
        goto LABEL_27;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v17;
}

uint64_t sub_1C6E38418()
{
  v0 = sub_1C6EE4450();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F18, &unk_1C6EE92C0);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  v16 = sub_1C6EE41A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v65;
  result = sub_1C6E408F8();
  v65 = v21;
  if (v21)
  {
    return result;
  }

  v55 = v3;
  v56 = v12;
  v57 = v16;
  v58 = v15;
  v23 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v63 = v11;
    v64 = v4;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_1C6EE4120();
    v25 = v65;
    sub_1C6E40A74(v20, v24);
    v26 = v58;
    v65 = v25;
    v27 = v17;
    if (v25)
    {
      (*(v17 + 8))(v20, v57);
    }

    (*(v17 + 8))(v20, v57);
    swift_beginAccess();
    v28 = *(v24 + 16);

    v11 = v63;
    v4 = v64;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v26 = v58;
    v27 = v17;
  }

  v29 = *(v28 + 16);
  v30 = v62;
  v31 = v56;
  if (v29)
  {
    v70 = v23;
    v54 = v28;
    v49 = v29;
    sub_1C6E15BB0(0, v29, 0);
    v32 = v54;
    v64 = v70;
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
    v52 = result;
    v33 = 0;
    v34 = v61;
    v51 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v50 = (v27 + 32);
    v53 = (v27 + 8);
    while (v33 < *(v32 + 16))
    {
      v35 = *(v34 + 72);
      v63 = v33;
      v36 = v11;
      sub_1C6E41E54(v51 + v35 * v33, v11, &qword_1EC1F7F18, &unk_1C6EE92C0);
      v37 = *(v31 + 48);
      sub_1C6E41E54(v11, v30, &qword_1EC1F7F18, &unk_1C6EE92C0);
      sub_1C6DF1134(*(v30 + *(v4 + 48)), *(v30 + *(v4 + 48) + 8));
      v38 = v30;
      v39 = v57;
      (*v50)(v26, v38, v57);
      v40 = v60;
      sub_1C6E41E54(v11, v60, &qword_1EC1F7F18, &unk_1C6EE92C0);
      v69 = *(v40 + *(v4 + 48));
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v41 = v65;
      sub_1C6EE45D0();
      v65 = v41;
      if (v41)
      {
        sub_1C6E41F04(v11, &qword_1EC1F7F18, &unk_1C6EE92C0);

        v48 = *v53;
        (*v53)(v40, v39);
        v48(v58, v39);
      }

      sub_1C6E41F04(v11, &qword_1EC1F7F18, &unk_1C6EE92C0);
      (*v53)(v40, v39);
      v42 = v64;
      v70 = v64;
      v44 = *(v64 + 16);
      v43 = *(v64 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1C6E15BB0(v43 > 1, v44 + 1, 1);
        v42 = v70;
      }

      v45 = v63 + 1;
      *(v42 + 16) = v44 + 1;
      v26 = v58;
      v46 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v42;
      result = sub_1C6E41FE4(v58, v42 + v46 + *(v59 + 72) * v44, &qword_1EC1F7F00, &unk_1C6EE9290);
      v33 = v45;
      v47 = v49 == v45;
      v34 = v61;
      v30 = v62;
      v31 = v56;
      v32 = v54;
      v11 = v36;
      if (v47)
      {

        return v64;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C6E38ACC(void *a1)
{
  v2 = sub_1C6EE4090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);
  sub_1C6DF0C68();
  sub_1C6EE4180();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6E38BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v59 - v3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v18 = *(*(v68 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v21;
  v24 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v65 = *(v24 + 16);
  if (!v65)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v25 = 0;
  v66 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v26 = MEMORY[0x1E69E7CC8];
  v27 = (v6 + 48);
  v73 = v5;
  v74 = v4;
  v71 = v13;
  v72 = v9;
  v63 = v22;
  v64 = v17;
  v61 = v24;
  v62 = &v59 - v21;
  v70 = (v6 + 48);
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      goto LABEL_31;
    }

    v29 = *(v22 + 72);
    v69 = v25;
    sub_1C6E41E54(v66 + v29 * v25, v23, &qword_1EC1F7F00, &unk_1C6EE9290);
    v30 = v23;
    v31 = v67;
    sub_1C6E41E54(v30, v67, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41D64(v31 + *(v68 + 48), v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v32 = sub_1C6EE41A0();
    (*(*(v32 - 8) + 8))(v31, v32);
    v33 = *(v17 + 2);
    v78 = *(v33 + 16);
    if (v78)
    {
      break;
    }

LABEL_3:
    v28 = v69 + 1;
    v23 = v62;
    sub_1C6E41F04(v62, &qword_1EC1F7F00, &unk_1C6EE9290);
    v17 = v64;
    sub_1C6E41F84(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v25 = v28;
    v22 = v63;
    v24 = v61;
    if (v28 == v65)
    {
      return v26;
    }
  }

  v34 = 0;
  v77 = *(v60 + 24);
  v76 = v33 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v75 = *(v59 + 72);
  while (1)
  {
    sub_1C6E41DCC(v76 + v75 * v34, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    sub_1C6E41E54(&v13[v77], v4, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v35 = *v27;
    if ((*v27)(v4, 1, v5) == 1)
    {
      *v9 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
      v36 = v9 + *(v5 + 20);
      sub_1C6EE4420();
      if (v35(v4, 1, v5) != 1)
      {
        sub_1C6E41F04(v4, &qword_1EC1F7D68, &unk_1C6EE89B0);
      }
    }

    else
    {
      sub_1C6E41D64(v4, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    }

    v37 = sub_1C6E29CBC(v9);
    sub_1C6E41F84(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v38 = *v13;
    v39 = *(*v13 + 16);

    if (v39)
    {
      break;
    }

LABEL_7:
    swift_bridgeObjectRelease_n();
    ++v34;
    v13 = v71;
    sub_1C6E41F84(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    v5 = v73;
    v4 = v74;
    v9 = v72;
    v27 = v70;
    if (v34 == v78)
    {
      goto LABEL_3;
    }
  }

  v40 = (v38 + 40);
  while (1)
  {
    v44 = *(v40 - 1);
    v43 = *v40;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v26;
    v47 = sub_1C6DEC784(v44, v43);
    v48 = v26[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v51 = v46;
    if (v26[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v79;
        if (v46)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6E0A2EC();
        v26 = v79;
        if (v51)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1C6E07EA4(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_1C6DEC784(v44, v43);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_32;
      }

      v47 = v52;
      v26 = v79;
      if (v51)
      {
LABEL_14:
        v41 = v26[7];
        v42 = *(v41 + 8 * v47);
        *(v41 + 8 * v47) = v37;
        swift_bridgeObjectRelease_n();
        goto LABEL_15;
      }
    }

    v26[(v47 >> 6) + 8] |= 1 << v47;
    v54 = (v26[6] + 16 * v47);
    *v54 = v44;
    v54[1] = v43;
    *(v26[7] + 8 * v47) = v37;
    v55 = v26[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_30;
    }

    v26[2] = v57;
LABEL_15:

    v40 += 2;
    if (!--v39)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E392C8()
{
  v2 = v1;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v68 = *(v3 - 8);
  v4 = *(v68 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v54 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6EE41A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v72 = (v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v17 = *(*(v63 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v63);
  v62 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = v54 - v21;
  v69 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v57 = *(v22 + 16);
  if (!v57)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v54[1] = v3;
  v23 = 0;
  v61 = v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v60 = (v14 + 32);
  v58 = (v14 + 8);
  v24 = MEMORY[0x1E69E7CC8];
  v25 = MEMORY[0x1E69E7CC8];
  v26 = v70;
  v59 = v12;
  v65 = v13;
  v55 = v22;
  v56 = v20;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_30;
    }

    v27 = *(v20 + 72);
    v64 = v23;
    v28 = v66;
    sub_1C6E41E54(v61 + v27 * v23, v66, &qword_1EC1F7F00, &unk_1C6EE9290);
    v29 = v62;
    sub_1C6E41E54(v28, v62, &qword_1EC1F7F00, &unk_1C6EE9290);
    v30 = *(v63 + 48);
    (*v60)(v72, v29, v65);
    sub_1C6E41D64(v29 + v30, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v31 = *(v12 + 1);
    v71 = *(v31 + 16);
    if (v71)
    {
      break;
    }

    v48 = v24;
LABEL_22:
    v52 = v64 + 1;
    sub_1C6E41F04(v66, &qword_1EC1F7F00, &unk_1C6EE9290);
    v12 = v59;
    sub_1C6E41F84(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    (*v58)(v72, v65);
    v24 = v48;
    v23 = v52;
    v20 = v56;
    v22 = v55;
    if (v52 == v57)
    {
      return v25;
    }
  }

  v32 = 0;
  v67 = v31;
  while (v32 < *(v31 + 16))
  {
    v35 = *(v68 + 72);
    sub_1C6E41DCC(v31 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v35 * v32, v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    sub_1C6E41DCC(v26, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v36 = sub_1C6E3B790(v72, v26);
    if (v2)
    {
      v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage;
      sub_1C6E41F84(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
      sub_1C6E41F84(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
      sub_1C6E41F04(v66, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41F84(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      (*v58)(v72, v65);

      return v25;
    }

    v37 = v36;
    v73 = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v24;
    v39 = v7;
    v41 = sub_1C6E02400(v7);
    v42 = *(v24 + 2);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_28;
    }

    v45 = v40;
    if (*(v24 + 3) >= v44)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v48 = v74;
        if (v40)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1C6E0A0AC();
        v48 = v74;
        if (v45)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1C6E07820(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_1C6E02400(v39);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_31;
      }

      v41 = v46;
      v48 = v74;
      if (v45)
      {
LABEL_6:
        v33 = *(v48 + 7);
        v34 = *(v33 + 8 * v41);
        *(v33 + 8 * v41) = v37;

        v7 = v39;
        goto LABEL_7;
      }
    }

    *(v48 + (v41 >> 6) + 8) |= 1 << v41;
    v7 = v39;
    sub_1C6E41DCC(v39, *(v48 + 6) + v41 * v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    *(*(v48 + 7) + 8 * v41) = v37;
    v49 = *(v48 + 2);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_29;
    }

    *(v48 + 2) = v51;
LABEL_7:
    ++v32;
    sub_1C6E41F84(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v26 = v70;
    sub_1C6E41F84(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v25 = v48;
    v24 = v48;
    v2 = v73;
    v31 = v67;
    if (v71 == v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E39950(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v256 = &v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v266 = &v237 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v277 = &v237 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F08, &qword_1C6EE92A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v237 - v15;
  v304 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v17 = *(v304 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v304);
  v299 = (&v237 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v298 = &v237 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v297 = (&v237 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v296 = &v237 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v303 = &v237 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v302 = &v237 - v29;
  v269 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v30 = *(*(v269 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v269);
  v286 = (&v237 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v281 = &v237 - v33;
  v260 = sub_1C6EE42F0();
  v34 = *(v260 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v237 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v37 = *(v268 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v258 = (&v237 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v246 = &v237 - v42;
  v262 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v43 = *(v262 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v245 = (&v237 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v257 = &v237 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v267 = &v237 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v247 = &v237 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v278 = &v237 - v55;
  v274 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v56 = *(v274 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x1EEE9AC00](v274);
  v244 = &v237 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v283 = &v237 - v60;
  v282 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  v276 = *(v282 - 1);
  v61 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v287 = (&v237 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v254 = &v237 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v66 = *(*(v252 - 8) + 64);
  v67 = MEMORY[0x1EEE9AC00](v252);
  v251 = &v237 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v253 = &v237 - v70;
  v71 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v307 = MEMORY[0x1E69E7CC0];
  v248 = *(v71 + 16);
  if (!v248)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v249 = v71 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v72 = (v56 + 48);
  v73 = 0;
  v272 = v72;
  v241 = v43;
  v261 = (v43 + 56);
  v264 = (v37 + 48);
  v255 = (v34 + 8);
  v300 = (v17 + 48);
  v301 = (v17 + 56);
  v305 = MEMORY[0x1E69E7CC0];
  v263 = a1;
  v291 = v14;
  v294 = v16;
  v74 = v274;
  v75 = v278;
  v76 = a1;
  v275 = v17;
  v243 = v69;
  v242 = v71;
  while (1)
  {
    if (v73 >= *(v71 + 16))
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v77 = *(v69 + 72);
    v250 = v73;
    v78 = v249 + v77 * v73;
    v79 = v253;
    sub_1C6E41E54(v78, v253, &qword_1EC1F7F00, &unk_1C6EE9290);
    v80 = v251;
    sub_1C6E41E54(v79, v251, &qword_1EC1F7F00, &unk_1C6EE9290);
    v81 = v254;
    sub_1C6E41D64(v80 + *(v252 + 48), v254, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v82 = sub_1C6EE41A0();
    (*(*(v82 - 8) + 8))(v80, v82);
    v83 = *v81;
    v270 = *(*v81 + 16);
    if (v270)
    {
      break;
    }

LABEL_3:
    v73 = v250 + 1;
    sub_1C6E41F04(v253, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41F84(v254, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v69 = v243;
    v71 = v242;
    if (v73 == v248)
    {
      return v305;
    }
  }

  v84 = 0;
  v273 = v282[7];
  v271 = v83 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
  v85 = v287;
  v265 = v83;
  while (1)
  {
    if (v84 >= *(v83 + 16))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    sub_1C6E41DCC(v271 + *(v276 + 72) * v84, v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    sub_1C6E41E54(v85 + v273, v75, &qword_1EC1F7F10, &qword_1C6EE92A8);
    v86 = *v272;
    if ((*v272)(v75, 1, v74) == 1)
    {
      v87 = v283;
      sub_1C6EE4420();
      (*v261)(v87 + *(v74 + 20), 1, 1, v262);
      v88 = *(v74 + 24);
      v89 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
      v90 = v87 + v88;
      v91 = v278;
      (*(*(v89 - 8) + 56))(v90, 1, 1, v89);
      if (v86(v91, 1, v74) != 1)
      {
        sub_1C6E41F04(v91, &qword_1EC1F7F10, &qword_1C6EE92A8);
      }
    }

    else
    {
      sub_1C6E41D64(v75, v283, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    }

    v92 = v283;
    if (!*(v76 + 16))
    {
      break;
    }

    v93 = sub_1C6E02400(v283);
    if ((v94 & 1) == 0)
    {
      break;
    }

    v288 = v84;
    v285 = *(*(v76 + 56) + 8 * v93);

    sub_1C6E41F84(v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v95 = v287;
    v96 = *v287;
    v97 = v287[1];
    v293 = v282[9];
    v98 = v267;
    sub_1C6E41E54(v287 + v293, v267, &qword_1EC1F7EF0, &unk_1C6EE9280);
    v99 = v268;
    v295 = *v264;
    v100 = v295(v98, 1, v268);
    v292 = v96;

    v305 = v97;

    sub_1C6E41F04(v98, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v100 == 1)
    {
      v101 = v259;
      sub_1C6EE42E0();
      v280 = sub_1C6EE42D0();
      v279 = v102;
      (*v255)(v101, v260);
      v103 = v299;
      v104 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v105 = v95 + v293;
      v106 = v257;
      sub_1C6E41E54(v105, v257, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v107 = v295;
      v108 = v295(v106, 1, v99);
      v103 = v299;
      v104 = MEMORY[0x1E69E7CC0];
      if (v108 == 1)
      {
        v109 = v258;
        *v258 = 0;
        v109[1] = 0xE000000000000000;
        v110 = v109 + *(v99 + 20);
        sub_1C6EE4420();
        if (v107(v106, 1, v99) != 1)
        {
          sub_1C6E41F04(v106, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        v109 = v258;
        sub_1C6E41D64(v106, v258, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v111 = v109[1];
      v280 = *v109;
      v279 = v111;

      sub_1C6E41F84(v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    }

    ++v288;
    v284 = (v285 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
    v112 = v286;
    *v286 = v104;
    v112[1] = v104;
    v113 = v112 + *(v269 + 24);
    sub_1C6EE4420();
    v114 = v292 + 64;
    v115 = 1 << *(v292 + 32);
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    else
    {
      v116 = -1;
    }

    v117 = v116 & *(v292 + 64);
    v118 = (v115 + 63) >> 6;

    v119 = 0;
    v120 = MEMORY[0x1E69E7CC8];
    v289 = v118;
    v290 = v114;
    while (v117)
    {
      v124 = v119;
LABEL_32:
      v125 = (v124 << 10) | (16 * __clz(__rbit64(v117)));
      v126 = *(v292 + 56);
      v127 = (*(v292 + 48) + v125);
      v128 = v127[1];
      v293 = *v127;
      v129 = (v126 + v125);
      v130 = *v129;
      v131 = v129[1];
      v295 = v128;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v306 = v120;
      v134 = sub_1C6DEC784(v130, v131);
      v135 = *(v120 + 16);
      v136 = (v133 & 1) == 0;
      v137 = v135 + v136;
      if (__OFADD__(v135, v136))
      {
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v138 = v133;
      if (*(v120 + 24) >= v137)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v139 = v120;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7728, &unk_1C6EE92B0);
          v148 = sub_1C6EE5320();
          v139 = v148;
          if (*(v120 + 16))
          {
            v149 = (v148 + 64);
            v150 = (v120 + 64);
            v151 = ((1 << *(v139 + 32)) + 63) >> 6;
            v238 = v120 + 64;
            if (v139 != v120 || v149 >= &v150[8 * v151])
            {
              memmove(v149, v150, 8 * v151);
            }

            v152 = 0;
            *(v139 + 16) = *(v120 + 16);
            v153 = 1 << *(v120 + 32);
            if (v153 < 64)
            {
              v154 = ~(-1 << v153);
            }

            else
            {
              v154 = -1;
            }

            v155 = v154 & *(v120 + 64);
            v156 = (v153 + 63) >> 6;
            v239 = v156;
            if (v155)
            {
              do
              {
                v157 = __clz(__rbit64(v155));
                v240 = (v155 - 1) & v155;
LABEL_55:
                v160 = 16 * (v157 | (v152 << 6));
                v161 = (*(v120 + 48) + v160);
                v163 = *v161;
                v162 = v161[1];
                v164 = (*(v120 + 56) + v160);
                v165 = *v164;
                v166 = v164[1];
                v167 = (*(v139 + 48) + v160);
                *v167 = v163;
                v167[1] = v162;
                v168 = (*(v139 + 56) + v160);
                *v168 = v165;
                v168[1] = v166;

                v156 = v239;
                v155 = v240;
              }

              while (v240);
            }

            v158 = v152;
            while (1)
            {
              v152 = v158 + 1;
              if (__OFADD__(v158, 1))
              {
                goto LABEL_115;
              }

              if (v152 >= v156)
              {
                break;
              }

              v159 = *(v238 + 8 * v152);
              ++v158;
              if (v159)
              {
                v157 = __clz(__rbit64(v159));
                v240 = (v159 - 1) & v159;
                goto LABEL_55;
              }
            }
          }
        }
      }

      else
      {
        sub_1C6E07BE4(v137, isUniquelyReferenced_nonNull_native);
        v139 = v306;
        v140 = sub_1C6DEC784(v130, v131);
        if ((v138 & 1) != (v141 & 1))
        {
          goto LABEL_116;
        }

        v134 = v140;
      }

      v103 = v299;
      v117 &= v117 - 1;
      if (v138)
      {

        v121 = (*(v139 + 56) + 16 * v134);
        v122 = v121[1];
        v123 = v295;
        *v121 = v293;
        v121[1] = v123;
      }

      else
      {
        *(v139 + 8 * (v134 >> 6) + 64) |= 1 << v134;
        v142 = (*(v139 + 48) + 16 * v134);
        *v142 = v130;
        v142[1] = v131;
        v143 = (*(v139 + 56) + 16 * v134);
        v144 = v295;
        *v143 = v293;
        v143[1] = v144;

        v145 = *(v139 + 16);
        v146 = __OFADD__(v145, 1);
        v147 = v145 + 1;
        if (v146)
        {
          goto LABEL_112;
        }

        *(v139 + 16) = v147;
      }

      v119 = v124;
      v120 = v139;
      v16 = v294;
      v118 = v289;
      v114 = v290;
    }

    while (1)
    {
      v124 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        __break(1u);
        return v305;
      }

      if (v124 >= v118)
      {
        break;
      }

      v117 = *(v114 + 8 * v124);
      ++v119;
      if (v117)
      {
        goto LABEL_32;
      }
    }

    v169 = *v284;
    v170 = *(*v284 + 16);
    if (v170)
    {
      v295 = ((*(v275 + 80) + 32) & ~*(v275 + 80));
      v171 = v295 + v169;
      v172 = *(v275 + 72);
      v173 = MEMORY[0x1E69E7CC0];
      do
      {
        v174 = v302;
        sub_1C6E41DCC(v171, v302, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v175 = v297;
        sub_1C6E41DCC(v174, v297, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (*(v120 + 16) && (v176 = sub_1C6DEC784(*v175, v175[1]), (v177 & 1) != 0))
        {
          v178 = (*(v120 + 56) + 16 * v176);
          v180 = *v178;
          v179 = v178[1];

          sub_1C6E41F84(v302, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

          *v175 = v180;
          v175[1] = v179;
          v16 = v294;
          sub_1C6E41DCC(v175, v294, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v181 = 0;
        }

        else
        {
          sub_1C6E41F84(v302, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v181 = 1;
        }

        v182 = v304;
        (*v301)(v16, v181, 1, v304);
        sub_1C6E41F84(v175, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if ((*v300)(v16, 1, v182) == 1)
        {
          sub_1C6E41F04(v16, &qword_1EC1F7F08, &qword_1C6EE92A0);
        }

        else
        {
          sub_1C6E41D64(v16, v296, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v173 = sub_1C6ED9830(0, v173[2] + 1, 1, v173);
          }

          v184 = v173[2];
          v183 = v173[3];
          if (v184 >= v183 >> 1)
          {
            v173 = sub_1C6ED9830(v183 > 1, v184 + 1, 1, v173);
          }

          v173[2] = v184 + 1;
          sub_1C6E41D64(v296, v295 + v173 + v184 * v172, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        }

        v103 = v299;
        v171 += v172;
        --v170;
      }

      while (v170);

      v185 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v185 = MEMORY[0x1E69E7CC0];
      v173 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6ED1F60(v173);
    v186 = v284[1];
    v187 = *(v186 + 16);
    v188 = v291;
    if (v187)
    {
      v295 = ((*(v275 + 80) + 32) & ~*(v275 + 80));
      v189 = v295 + v186;
      v190 = *(v275 + 72);
      v191 = v185;
      do
      {
        v192 = v303;
        sub_1C6E41DCC(v189, v303, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        sub_1C6E41DCC(v192, v103, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (*(v305 + 16) && (v193 = sub_1C6DEC784(*v103, v103[1]), (v194 & 1) != 0))
        {
          v195 = (*(v305 + 56) + 16 * v193);
          v197 = *v195;
          v196 = v195[1];

          sub_1C6E41F84(v303, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

          *v103 = v197;
          v103[1] = v196;
          v188 = v291;
          sub_1C6E41DCC(v103, v291, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v198 = 0;
        }

        else
        {
          sub_1C6E41F84(v303, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v198 = 1;
        }

        v199 = v304;
        (*v301)(v188, v198, 1, v304);
        sub_1C6E41F84(v103, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if ((*v300)(v188, 1, v199) == 1)
        {
          sub_1C6E41F04(v188, &qword_1EC1F7F08, &qword_1C6EE92A0);
        }

        else
        {
          sub_1C6E41D64(v188, v298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v191 = sub_1C6ED9830(0, v191[2] + 1, 1, v191);
          }

          v201 = v191[2];
          v200 = v191[3];
          if (v201 >= v200 >> 1)
          {
            v191 = sub_1C6ED9830(v200 > 1, v201 + 1, 1, v191);
          }

          v191[2] = v201 + 1;
          sub_1C6E41D64(v298, v295 + v191 + v201 * v190, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v103 = v299;
        }

        v189 += v190;
        --v187;
      }

      while (v187);
    }

    else
    {
      v191 = v185;
    }

    v202 = v286;
    sub_1C6ED1F60(v191);
    sub_1C6E41D64(v202, v281, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    v293 = v282[8];
    v203 = v266;
    sub_1C6E41E54(v287 + v293, v266, &qword_1EC1F7508, &unk_1C6EE6690);
    v204 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
    v205 = *(v204 - 8);
    v206 = 1;
    v295 = *(v205 + 48);
    v207 = v295(v203, 1, v204);
    sub_1C6E41F04(v203, &qword_1EC1F7508, &unk_1C6EE6690);
    if (v207 != 1)
    {
      v208 = v256;
      sub_1C6E41E54(v287 + v293, v256, &qword_1EC1F7508, &unk_1C6EE6690);
      if (v295(v208, 1, v204) == 1)
      {
        v209 = v277;
        sub_1C6EE4420();
        v210 = *(v204 + 20);
        v211 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
        (*(*(v211 - 8) + 56))(v209 + v210, 1, 1, v211);
        if (v295(v208, 1, v204) != 1)
        {
          sub_1C6E41F04(v208, &qword_1EC1F7508, &unk_1C6EE6690);
        }
      }

      else
      {
        sub_1C6E41D64(v208, v277, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      }

      v206 = 0;
    }

    v212 = v277;
    (*(v205 + 56))(v277, v206, 1, v204);
    v213 = type metadata accessor for AliasedModelContainer();
    v214 = *(v213 + 48);
    v215 = *(v213 + 52);
    v216 = swift_allocObject();
    *(v216 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer) = v285;
    *(v216 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap) = v292;
    *(v216 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap) = v305;
    v217 = v279;
    *(v216 + 16) = v280;
    *(v216 + 24) = v217;
    sub_1C6E41D64(v281, v216 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E41FE4(v212, v216 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);

    MEMORY[0x1CCA58080](v218);
    if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v219 = *((v307 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C6EE4CE0();
    }

    sub_1C6EE4D20();

    v85 = v287;
    sub_1C6E41F84(v287, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    v305 = v307;
    v84 = v288;
    v76 = v263;
    v74 = v274;
    v75 = v278;
    v83 = v265;
    if (v288 == v270)
    {
      goto LABEL_3;
    }
  }

  sub_1C6E41F84(v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  v220 = v247;
  sub_1C6E41E54(v287 + v273, v247, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if (v86(v220, 1, v74) == 1)
  {
    v221 = v244;
    sub_1C6EE4420();
    v222 = v262;
    (*v261)(v221 + *(v74 + 20), 1, 1, v262);
    v223 = *(v74 + 24);
    v224 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
    (*(*(v224 - 8) + 56))(v221 + v223, 1, 1, v224);
    v225 = v86(v220, 1, v74);
    v226 = v246;
    v227 = v241;
    if (v225 != 1)
    {
      sub_1C6E41F04(v220, &qword_1EC1F7F10, &qword_1C6EE92A8);
    }
  }

  else
  {
    v221 = v244;
    sub_1C6E41D64(v220, v244, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v226 = v246;
    v222 = v262;
    v227 = v241;
  }

  sub_1C6E41E54(v221 + *(v274 + 20), v226, &qword_1EC1F7820, &unk_1C6EEA180);
  v229 = *(v227 + 48);
  if (v229(v226, 1, v222) == 1)
  {
    v230 = v245;
    *v245 = 0;
    v230[1] = 0xE000000000000000;
    v230[2] = 0;
    *(v230 + 24) = 1;
    v231 = v230;
    v232 = v230 + *(v222 + 24);
    sub_1C6EE4420();
    sub_1C6E41F84(v221, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    if (v229(v226, 1, v222) != 1)
    {
      sub_1C6E41F04(v226, &qword_1EC1F7820, &unk_1C6EEA180);
    }
  }

  else
  {
    sub_1C6E41F84(v221, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v231 = v245;
    sub_1C6E41D64(v226, v245, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  }

  v233 = v231;
  v234 = *v231;
  v235 = *(v233 + 8);

  sub_1C6E41F84(v233, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6DFE4C0();
  swift_allocError();
  *v236 = v234;
  *(v236 + 8) = v235;
  *(v236 + 16) = 0;
  swift_willThrow();
  sub_1C6E41F84(v287, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
  sub_1C6E41F04(v253, &qword_1EC1F7F00, &unk_1C6EE9290);
  sub_1C6E41F84(v254, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
}

uint64_t sub_1C6E3B790(uint64_t *a1, uint64_t a2)
{
  v52 = a1;
  v3 = sub_1C6EE4760();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6EE41A0();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v50 - v19;
  v20 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0) + 20);
  v53 = a2;
  sub_1C6E41E54(a2 + v20, v9, &qword_1EC1F7820, &unk_1C6EEA180);
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0xE000000000000000;
    *(v14 + 2) = 0;
    v14[24] = 1;
    v22 = &v14[*(v10 + 24)];
    sub_1C6EE4420();
    if (v21(v9, 1, v10) != 1)
    {
      sub_1C6E41F04(v9, &qword_1EC1F7820, &unk_1C6EEA180);
    }
  }

  else
  {
    sub_1C6E41D64(v9, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  }

  v23 = *v14;
  v24 = *(v14 + 1);

  sub_1C6E41F84(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6EE4110();

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6EE6590;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
  v26 = sub_1C6EE5460();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6DF10E0();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  sub_1C6EE4730();

  v29 = v55;
  sub_1C6EE4780();
  v30 = v57;
  sub_1C6EE4740();
  v31 = v54;
  v32 = v51;
  (*(v54 + 16))(v51, v60, v15);
  v33 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v62 = v52;
  *v33 = 136446210;
  v34 = sub_1C6EE5460();
  v36 = v35;
  v37 = *(v31 + 8);
  v54 = v15;
  v38 = v15;
  v39 = v37;
  v37(v32, v38);
  v40 = sub_1C6E41514(v34, v36, &v62);

  *(v33 + 4) = v40;
  v41 = sub_1C6EE4780();
  LOBYTE(v36) = sub_1C6EE4F80();
  v42 = sub_1C6EE4750();
  v43 = v60;
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v41, v36, v42, "ResourceReader.loadComputation", "%{public}s", v33, 0xCu);
  v44 = v56;
  sub_1C6E3BDF4(v53, v43, v29, &v61);
  if (v44)
  {

    (*(v58 + 8))(v30, v59);
    v39(v43, v54);
  }

  else
  {
    v45 = v43;
    v46 = sub_1C6EE4F70();
    v47 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v41, v46, v47, "ResourceReader.loadComputation", "%{public}s", v33, 0xCu);

    v43 = v61;
    v48 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1CCA59290](v48, -1, -1);
    MEMORY[0x1CCA59290](v33, -1, -1);
    (*(v58 + 8))(v30, v59);
    v39(v45, v54);
  }

  return v43;
}

uint64_t sub_1C6E3BDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v334 = a3;
  v342 = a2;
  v317 = a4;
  v307 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
  v5 = *(*(v307 - 8) + 64);
  MEMORY[0x1EEE9AC00](v307);
  v308 = &v288 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1C6EE41A0();
  v315 = *(v316 - 8);
  v7 = *(v315 + 64);
  v8 = MEMORY[0x1EEE9AC00](v316);
  v314 = &v288 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v352 = &v288 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v339 = &v288 - v13;
  v351 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v332 = *(v351 - 8);
  v14 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v333 = (&v288 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v305 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec(0);
  v16 = *(*(v305 - 8) + 64);
  MEMORY[0x1EEE9AC00](v305);
  v306 = (&v288 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v296 = &v288 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v311 = &v288 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v298 = &v288 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v291 = &v288 - v26;
  v349 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v350 = *(v349 - 8);
  v27 = *(v350 + 64);
  v28 = MEMORY[0x1EEE9AC00](v349);
  v295 = (&v288 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v28);
  v310 = &v288 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v297 = &v288 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v290 = (&v288 - v34);
  v35 = sub_1C6EE4450();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v303 = &v288 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v302 = &v288 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v301 = &v288 - v41;
  v300 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v42 = *(*(v300 - 8) + 64);
  MEMORY[0x1EEE9AC00](v300);
  v304 = &v288 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v329 = &v288 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v328 = &v288 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v327 = &v288 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v338 = &v288 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v337 = &v288 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v288 - v56;
  v353 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v361 = *(v353 - 8);
  v58 = *(v361 + 64);
  v59 = MEMORY[0x1EEE9AC00](v353);
  v326 = &v288 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v325 = &v288 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v324 = &v288 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v331 = &v288 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v341 = (&v288 - v68);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v288 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v323 = &v288 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v322 = &v288 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v321 = &v288 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v336 = &v288 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v299 = &v288 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v312 = &v288 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v340 = &v288 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v294 = &v288 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v289 = &v288 - v90;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v288 - v91;
  v93 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v94 = *(v93 - 1);
  v95 = *(v94 + 64);
  v96 = MEMORY[0x1EEE9AC00](v93);
  v320 = &v288 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v319 = &v288 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v318 = &v288 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v330 = &v288 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v292 = &v288 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v309 = &v288 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v345 = &v288 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v293 = &v288 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v288 = &v288 - v113;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v288 - v114;
  v335 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v116 = *(v335 + 24);
  v346 = a1;
  v344 = v116;
  sub_1C6E41E54(a1 + v116, v92, &qword_1EC1F7810, &unk_1C6EE9270);
  v117 = *(v94 + 48);
  v118 = v117(v92, 1, v93);
  v348 = v94 + 48;
  v347 = v117;
  if (v118 == 1)
  {
    sub_1C6EE4420();
    v119 = v93[5];
    v120 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    (*(*(v120 - 8) + 56))(&v115[v119], 1, 1, v120);
    v121 = v361;
    v122 = v353;
    (*(v361 + 56))(&v115[v93[6]], 1, 1);
    (*(v350 + 56))(&v115[v93[7]], 1, 1, v349);
    v123 = v117(v92, 1, v93);
    v124 = v121;
    if (v123 != 1)
    {
      sub_1C6E41F04(v92, &qword_1EC1F7810, &unk_1C6EE9270);
    }
  }

  else
  {
    v122 = v353;
    sub_1C6E41D64(v92, v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    v124 = v361;
  }

  sub_1C6E41E54(&v115[v93[6]], v57, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v125 = *(v124 + 48);
  v126 = v125(v57, 1, v122);
  v127 = v351;
  if (v126 == 1)
  {
    *v70 = 0;
    *(v70 + 1) = 0xE000000000000000;
    *(v70 + 2) = 0;
    *(v70 + 3) = 0xE000000000000000;
    *(v70 + 4) = 0;
    v70[40] = 1;
    v128 = &v70[*(v122 + 28)];
    sub_1C6EE4420();
    sub_1C6E41F84(v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    v129 = v122;
    if (v125(v57, 1, v122) != 1)
    {
      sub_1C6E41F04(v57, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    }
  }

  else
  {
    sub_1C6E41F84(v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    sub_1C6E41D64(v57, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    v129 = v122;
  }

  v130 = *(v70 + 4);
  v131 = v70[40];
  sub_1C6E41F84(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  v132 = v352;
  if (v131 != 1)
  {
    sub_1C6DFE4C0();
    swift_allocError();
    *v139 = v130;
    *(v139 + 8) = 0;
    v140 = 2;
LABEL_76:
    *(v139 + 16) = v140;
    return swift_willThrow();
  }

  if (v130 > 4)
  {
    v133 = v347;
    v134 = v345;
    if (v130 > 6)
    {
      if (v130 == 7)
      {
        v166 = v343;
        result = sub_1C6EE41C0();
        if (!v166)
        {
          v357 = result;
          v358 = v167;
          v356 = 0;
          v354 = 0u;
          v355 = 0u;
          sub_1C6EE4440();
          sub_1C6E41EBC(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
          v168 = v308;
          sub_1C6EE45D0();
          v169 = v299;
          sub_1C6E41E54(v346 + v344, v299, &qword_1EC1F7810, &unk_1C6EE9270);
          if (v133(v169, 1, v93) == 1)
          {
            v170 = v292;
            sub_1C6EE4420();
            v171 = v93[5];
            v172 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
            (*(*(v172 - 8) + 56))(v170 + v171, 1, 1, v172);
            (*(v361 + 56))(v170 + v93[6], 1, 1, v129);
            v173 = v170;
            v174 = v299;
            v175 = v350;
            v176 = v133;
            v177 = v349;
            (*(v350 + 56))(v173 + v93[7], 1, 1, v349);
            if (v176(v174, 1, v93) != 1)
            {
              sub_1C6E41F04(v174, &qword_1EC1F7810, &unk_1C6EE9270);
            }
          }

          else
          {
            v173 = v292;
            sub_1C6E41D64(v169, v292, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            v175 = v350;
            v177 = v349;
          }

          v253 = v296;
          sub_1C6E41E54(v173 + v93[7], v296, &qword_1EC1F7EE0, &unk_1C6EE9260);
          v254 = *(v175 + 48);
          if (v254(v253, 1, v177) == 1)
          {
            v255 = MEMORY[0x1E69E7CC0];
            v256 = v295;
            *v295 = MEMORY[0x1E69E7CC0];
            v256[1] = v255;
            v257 = v256 + *(v177 + 24);
            sub_1C6EE4420();
            sub_1C6E41F84(v173, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            if (v254(v253, 1, v177) != 1)
            {
              sub_1C6E41F04(v253, &qword_1EC1F7EE0, &unk_1C6EE9260);
            }
          }

          else
          {
            sub_1C6E41F84(v173, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            v256 = v295;
            sub_1C6E41D64(v253, v295, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
          }

          v258 = type metadata accessor for FeaturePreprocessingContainer();
          v259 = *(v258 + 48);
          v260 = *(v258 + 52);
          swift_allocObject();
          result = sub_1C6E19240(v168, v256);
          goto LABEL_107;
        }

        return result;
      }

      if (v130 == 8)
      {
        v141 = v322;
        sub_1C6E41E54(v346 + v344, v322, &qword_1EC1F7810, &unk_1C6EE9270);
        if (v133(v141, 1, v93) == 1)
        {
          v142 = v319;
          sub_1C6EE4420();
          v143 = v93[5];
          v144 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
          (*(*(v144 - 8) + 56))(v142 + v143, 1, 1, v144);
          (*(v361 + 56))(v142 + v93[6], 1, 1, v129);
          v145 = v142;
          (*(v350 + 56))(v142 + v93[7], 1, 1, v349);
          v146 = v133(v141, 1, v93);
          v147 = v325;
          if (v146 != 1)
          {
            sub_1C6E41F04(v141, &qword_1EC1F7810, &unk_1C6EE9270);
          }
        }

        else
        {
          v145 = v319;
          sub_1C6E41D64(v141, v319, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
          v147 = v325;
        }

        v205 = v145 + v93[6];
        v206 = &v357;
      }

      else
      {
        v193 = v323;
        sub_1C6E41E54(v346 + v344, v323, &qword_1EC1F7810, &unk_1C6EE9270);
        if (v133(v193, 1, v93) == 1)
        {
          v194 = v320;
          sub_1C6EE4420();
          v195 = v93[5];
          v196 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
          (*(*(v196 - 8) + 56))(v194 + v195, 1, 1, v196);
          (*(v361 + 56))(v194 + v93[6], 1, 1, v129);
          v145 = v194;
          (*(v350 + 56))(v194 + v93[7], 1, 1, v349);
          v197 = v133(v193, 1, v93);
          v147 = v326;
          if (v197 != 1)
          {
            sub_1C6E41F04(v193, &qword_1EC1F7810, &unk_1C6EE9270);
          }
        }

        else
        {
          v145 = v320;
          sub_1C6E41D64(v193, v320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
          v147 = v326;
        }

        v205 = v145 + v93[6];
        v206 = &v358;
      }

      goto LABEL_71;
    }

    if (v130 != 5)
    {
      goto LABEL_24;
    }

LABEL_28:
    v153 = v336;
    sub_1C6E41E54(v346 + v344, v336, &qword_1EC1F7810, &unk_1C6EE9270);
    if (v133(v153, 1, v93) == 1)
    {
      v154 = v330;
      sub_1C6EE4420();
      v155 = v93[5];
      v156 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
      (*(*(v156 - 8) + 56))(v154 + v155, 1, 1, v156);
      (*(v361 + 56))(v154 + v93[6], 1, 1, v129);
      v145 = v154;
      (*(v350 + 56))(v154 + v93[7], 1, 1, v349);
      v157 = v133(v153, 1, v93);
      v147 = v331;
      if (v157 != 1)
      {
        sub_1C6E41F04(v153, &qword_1EC1F7810, &unk_1C6EE9270);
      }
    }

    else
    {
      v145 = v330;
      sub_1C6E41D64(v153, v330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      v147 = v331;
    }

    v205 = v145 + v93[6];
    v206 = &v360;
LABEL_71:
    v242 = *(v206 - 32);
    sub_1C6E41E54(v205, v242, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    if (v125(v242, 1, v129) == 1)
    {
      *v147 = 0;
      *(v147 + 8) = 0xE000000000000000;
      *(v147 + 16) = 0;
      *(v147 + 24) = 0xE000000000000000;
      *(v147 + 32) = 0;
      *(v147 + 40) = 1;
      v243 = v147 + *(v129 + 28);
      sub_1C6EE4420();
      sub_1C6E41F84(v145, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      if (v125(v242, 1, v129) != 1)
      {
        sub_1C6E41F04(v242, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      }
    }

    else
    {
      sub_1C6E41F84(v145, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      sub_1C6E41D64(v242, v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    }

    v244 = *(v147 + 32);
    v245 = *(v147 + 40);
    sub_1C6E41F84(v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6DFE4C0();
    swift_allocError();
    *v139 = v244;
    *(v139 + 8) = v245;
    v140 = 4;
    goto LABEL_76;
  }

  v133 = v347;
  v134 = v345;
  if (v130 <= 1)
  {
    if (v130)
    {
LABEL_24:
      v148 = v340;
      sub_1C6E41E54(v346 + v344, v340, &qword_1EC1F7810, &unk_1C6EE9270);
      if (v133(v148, 1, v93) == 1)
      {
        sub_1C6EE4420();
        v149 = v93[5];
        v150 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
        v151 = v134 + v149;
        v152 = v340;
        (*(*(v150 - 8) + 56))(v151, 1, 1, v150);
        (*(v361 + 56))(v134 + v93[6], 1, 1, v129);
        (*(v350 + 56))(v134 + v93[7], 1, 1, v349);
        if (v133(v152, 1, v93) != 1)
        {
          sub_1C6E41F04(v152, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        sub_1C6E41D64(v148, v134, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      }

      v198 = v337;
      sub_1C6E41E54(v134 + v93[6], v337, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      if (v125(v198, 1, v129) == 1)
      {
        v199 = v341;
        *v341 = 0;
        v199[1] = 0xE000000000000000;
        v199[2] = 0;
        v199[3] = 0xE000000000000000;
        v199[4] = 0;
        *(v199 + 40) = 1;
        v200 = v199 + *(v129 + 28);
        sub_1C6EE4420();
        sub_1C6E41F84(v134, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v201 = v125(v198, 1, v129) == 1;
        v202 = v334;
        v203 = v198;
        v204 = v332;
        if (!v201)
        {
          sub_1C6E41F04(v203, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
        }
      }

      else
      {
        sub_1C6E41F84(v134, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v198, v341, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
        v202 = v334;
        v204 = v332;
      }

      v207 = v339;
      sub_1C6E41E54(v346 + *(v335 + 20), v339, &qword_1EC1F7820, &unk_1C6EEA180);
      v208 = *(v204 + 48);
      if (v208(v207, 1, v127) == 1)
      {
        v209 = v127;
        v210 = v333;
        *v333 = 0;
        v210[1] = 0xE000000000000000;
        v210[2] = 0;
        *(v210 + 24) = 1;
        v211 = v210 + *(v209 + 24);
        sub_1C6EE4420();
        if (v208(v207, 1, v209) != 1)
        {
          sub_1C6E41F04(v207, &qword_1EC1F7820, &unk_1C6EEA180);
        }
      }

      else
      {
        v210 = v333;
        sub_1C6E41D64(v207, v333, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
      }

      v212 = v210[2];
      v213 = *(v210 + 24);
      sub_1C6E41F84(v210, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
      v214 = v341;
      v215 = v343;
      sub_1C6E3EF78(v202, v342, v341, v212, v132);
      v216 = v202;
      if (v215)
      {
        return sub_1C6E41F84(v214, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
      }

      v345 = 0;
      v217 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
      v218 = v214[2];
      v351 = v214[3];
      v343 = v218;
      v219 = sub_1C6EE4A60();
      [v217 setModelDisplayName_];

      [v217 setComputeUnits_];
      [v217 setAllowBackgroundGPUCompute_];
      v220 = v315 + 32;
      v221 = *(v315 + 32);
      v222 = v314;
      v223 = v316;
      v221(v314, v132, v316);
      v224 = v93;
      v225 = (*(v220 + 48) + 16) & ~*(v220 + 48);
      v226 = (v313 + v225 + 7) & 0xFFFFFFFFFFFFFFF8;
      v227 = swift_allocObject();
      v228 = v227 + v225;
      v229 = v224;
      v221(v228, v222, v223);
      v352 = v227;
      *(v227 + v226) = v217;
      v230 = v347;

      sub_1C6E41F84(v341, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
      v231 = v312;
      sub_1C6E41E54(v346 + v344, v312, &qword_1EC1F7810, &unk_1C6EE9270);
      if (v230(v231, 1, v224) == 1)
      {
        v232 = v309;
        sub_1C6EE4420();
        v233 = v229[5];
        v234 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
        (*(*(v234 - 8) + 56))(v232 + v233, 1, 1, v234);
        (*(v361 + 56))(v232 + v229[6], 1, 1, v353);
        v235 = v349;
        (*(v350 + 56))(v232 + v229[7], 1, 1, v349);
        v236 = v230(v231, 1, v229);
        v237 = v311;
        v238 = v310;
        if (v236 != 1)
        {
          sub_1C6E41F04(v231, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v232 = v309;
        sub_1C6E41D64(v231, v309, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v235 = v349;
        v237 = v311;
        v238 = v310;
      }

      sub_1C6E41E54(v232 + v229[7], v237, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v246 = *(v350 + 48);
      if (v246(v237, 1, v235) == 1)
      {
        v247 = MEMORY[0x1E69E7CC0];
        *v238 = MEMORY[0x1E69E7CC0];
        v238[1] = v247;
        v248 = v238 + *(v235 + 24);
        sub_1C6EE4420();
        sub_1C6E41F84(v232, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v246(v237, 1, v235) != 1)
        {
          sub_1C6E41F04(v237, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v232, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v237, v238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      v249 = type metadata accessor for CoreMLModelContainer();
      v250 = *(v249 + 48);
      v251 = *(v249 + 52);
      swift_allocObject();
      v252 = sub_1C6E34A4C(v238, v343, v351, sub_1C6E41B18, v352);

      goto LABEL_84;
    }

    goto LABEL_28;
  }

  if (v130 == 2)
  {
    v158 = v321;
    sub_1C6E41E54(v346 + v344, v321, &qword_1EC1F7810, &unk_1C6EE9270);
    if (v133(v158, 1, v93) == 1)
    {
      v159 = v318;
      sub_1C6EE4420();
      v160 = v93[5];
      v161 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
      (*(*(v161 - 8) + 56))(v159 + v160, 1, 1, v161);
      (*(v361 + 56))(v159 + v93[6], 1, 1, v129);
      v162 = v159;
      (*(v350 + 56))(v159 + v93[7], 1, 1, v349);
      v163 = v133(v158, 1, v93);
      v164 = v327;
      v165 = v324;
      if (v163 != 1)
      {
        sub_1C6E41F04(v158, &qword_1EC1F7810, &unk_1C6EE9270);
      }
    }

    else
    {
      v162 = v318;
      sub_1C6E41D64(v158, v318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      v164 = v327;
      v165 = v324;
    }

    sub_1C6E41E54(v162 + v93[6], v164, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    if (v125(v164, 1, v129) == 1)
    {
      *v165 = 0;
      *(v165 + 8) = 0xE000000000000000;
      *(v165 + 16) = 0;
      *(v165 + 24) = 0xE000000000000000;
      *(v165 + 32) = 0;
      *(v165 + 40) = 1;
      v239 = v165 + *(v129 + 28);
      sub_1C6EE4420();
      sub_1C6E41F84(v162, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      if (v125(v164, 1, v129) != 1)
      {
        sub_1C6E41F04(v164, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      }
    }

    else
    {
      sub_1C6E41F84(v162, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      sub_1C6E41D64(v164, v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    }

    v240 = *(v165 + 32);
    v241 = *(v165 + 40);
    sub_1C6E41F84(v165, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6DFE4C0();
    swift_allocError();
    *v139 = v240;
    *(v139 + 8) = v241;
    v140 = 3;
    goto LABEL_76;
  }

  if (v130 == 3)
  {
    v135 = v343;
    result = sub_1C6EE41C0();
    if (!v135)
    {
      v357 = result;
      v358 = v137;
      v356 = 0;
      v354 = 0u;
      v355 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      v138 = v304;
      sub_1C6EE45D0();
      sub_1C6E2CAD0(v138, 0, v359);
      sub_1C6E41F84(v138, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      v270 = v289;
      sub_1C6E41E54(v346 + v344, v289, &qword_1EC1F7810, &unk_1C6EE9270);
      v271 = v133(v270, 1, v93);
      if (v271 == 1)
      {
        v272 = v288;
        sub_1C6EE4420();
        v273 = v93[5];
        v274 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
        (*(*(v274 - 8) + 56))(v272 + v273, 1, 1, v274);
        v275 = v129;
        v276 = v272;
        (*(v361 + 56))(v272 + v93[6], 1, 1, v275);
        v277 = v350;
        v278 = v133;
        v279 = v349;
        (*(v350 + 56))(v276 + v93[7], 1, 1, v349);
        if (v278(v270, 1, v93) != 1)
        {
          sub_1C6E41F04(v270, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v276 = v288;
        sub_1C6E41D64(v270, v288, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v277 = v350;
        v279 = v349;
      }

      v280 = v291;
      sub_1C6E41E54(v276 + v93[7], v291, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v281 = *(v277 + 48);
      if (v281(v280, 1, v279) == 1)
      {
        v282 = MEMORY[0x1E69E7CC0];
        v283 = v290;
        *v290 = MEMORY[0x1E69E7CC0];
        v283[1] = v282;
        v284 = v283 + *(v279 + 24);
        sub_1C6EE4420();
        sub_1C6E41F84(v276, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v281(v280, 1, v279) != 1)
        {
          sub_1C6E41F04(v280, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v276, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v283 = v290;
        sub_1C6E41D64(v280, v290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      v285 = type metadata accessor for TextPreprocessModelContainer();
      v286 = *(v285 + 48);
      v287 = *(v285 + 52);
      swift_allocObject();
      result = sub_1C6E34FC0(v359, v283);
LABEL_107:
      v252 = result;
LABEL_84:
      *v317 = v252;
    }
  }

  else
  {
    v178 = v343;
    result = sub_1C6EE41C0();
    if (!v178)
    {
      v357 = result;
      v358 = v179;
      v356 = 0;
      v354 = 0u;
      v355 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
      v180 = v306;
      sub_1C6EE45D0();
      v352 = *v180;
      v181 = v133;
      v183 = v180[1];
      v182 = v180[2];

      sub_1C6E41F84(v180, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
      v184 = v294;
      sub_1C6E41E54(v346 + v344, v294, &qword_1EC1F7810, &unk_1C6EE9270);
      v185 = v181(v184, 1, v93);
      v345 = 0;
      if (v185 == 1)
      {
        v186 = v293;
        sub_1C6EE4420();
        v187 = v93[5];
        v188 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
        (*(*(v188 - 8) + 56))(v186 + v187, 1, 1, v188);
        v189 = v184;
        (*(v361 + 56))(v186 + v93[6], 1, 1, v129);
        v190 = v349;
        (*(v350 + 56))(v186 + v93[7], 1, 1, v349);
        v191 = v181(v184, 1, v93);
        v192 = v297;
        if (v191 != 1)
        {
          sub_1C6E41F04(v189, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v186 = v293;
        sub_1C6E41D64(v184, v293, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v190 = v349;
        v192 = v297;
      }

      v261 = v186 + v93[7];
      v262 = v298;
      sub_1C6E41E54(v261, v298, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v263 = *(v350 + 48);
      if (v263(v262, 1, v190) == 1)
      {
        v264 = MEMORY[0x1E69E7CC0];
        *v192 = MEMORY[0x1E69E7CC0];
        v192[1] = v264;
        v265 = v192 + *(v190 + 24);
        sub_1C6EE4420();
        sub_1C6E41F84(v186, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v263(v262, 1, v190) != 1)
        {
          sub_1C6E41F04(v262, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v186, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v262, v192, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      v266 = type metadata accessor for TextOutputContainer();
      v267 = *(v266 + 48);
      v268 = *(v266 + 52);
      swift_allocObject();
      v269 = v345;
      result = sub_1C6E0D52C(v182, v352, v183, v192);
      if (!v269)
      {
        goto LABEL_107;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E3E990@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  v19 = v18;
  sub_1C6E41E54(v2 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory, v6, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v8 + 48))(v6, 1, v19) == 1)
  {
    sub_1C6E41F04(v6, &unk_1EC1F9AB0, &qword_1C6EE9250);
    return (*(v8 + 56))(v53, 1, 1, v19);
  }

  v51 = v17;
  v52 = v8;
  v21 = *(v8 + 32);
  v21(v17, v6, v19);
  v22 = sub_1C6EE40B0();
  v50 = v19;
  v23 = v22;
  v24 = *(v22 + 16);
  v25 = *(sub_1C6E362A4() + 16);

  if (v25 >= v24)
  {

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000004ALL, 0x80000001C6EF8E00);
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
    v32 = v50;
    v33 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v33);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF8E50);
LABEL_16:
    v45 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v45);

    v46 = v54;
    v47 = v55;
    sub_1C6DFE4C0();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    swift_willThrow();
    return (*(v52 + 8))(v51, v32);
  }

  v26 = *(v2 + 16);
  v27 = *(v26 + 16);
  v28 = *(v23 + 16);
  if (v28 < v27)
  {
    __break(1u);
    goto LABEL_18;
  }

  v29 = v50;
  v30 = v21;
  v49 = v23;
  if (v28 == v27)
  {
  }

  else
  {
    sub_1C6EC8DE0(v23, v23 + 32, 0, (2 * v27) | 1);
  }

  v34 = sub_1C6E59BCC(v26, v31);

  if ((v34 & 1) == 0)
  {

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD000000000000041, 0x80000001C6EF8E70);
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
    v32 = v29;
    v44 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v44);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF8E50);
    goto LABEL_16;
  }

  v35 = *(*(v2 + 16) + 16);
  v36 = *(v49 + 16);
  if (v36 < v35)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v52 + 16))(v15, v51, v29);
  v37 = v36 - v35;
  v56 = v30;
  if (v36 != v35)
  {
    v38 = (v52 + 8);
    v39 = (v49 + 16 * v35 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;

      sub_1C6EE4110();

      (*v38)(v15, v29);
      v56(v15, v12, v29);
      v39 += 2;
      --v37;
    }

    while (v37);
  }

  v42 = v52;
  (*(v52 + 8))(v51, v29);
  v43 = v53;
  v56(v53, v15, v29);
  return (*(v42 + 56))(v43, 0, 1, v29);
}

uint64_t sub_1C6E3EF78@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v138 = a3;
  v139 = a4;
  v142 = a5;
  v153 = *MEMORY[0x1E69E9840];
  v137 = sub_1C6EE4970();
  v136 = *(v137 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1C6EE4960();
  v141 = *(v150 - 8);
  v9 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v151 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6EE41A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v132 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v134 = v127 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v140 = v127 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v146 = v127 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v127 - v22;
  v24 = &qword_1C6EE9250;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v133 = v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v127 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v127 - v32;
  v147 = a1;
  v143 = a2;
  sub_1C6E4039C(v127 - v32);
  v148 = v33;
  v34 = v33;
  v35 = v12;
  sub_1C6E41E54(v34, v31, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v36 = v12 + 48;
  v37 = *(v12 + 48);
  if (v37(v31, 1, v11) == 1)
  {
    sub_1C6E41F04(v31, &unk_1EC1F9AB0, &qword_1C6EE9250);
  }

  else
  {
    v131 = v37;
    v38 = *(v12 + 32);
    v38(v23, v31, v11);
    v39 = [objc_opt_self() defaultManager];
    sub_1C6EE4170();
    v40 = v11;
    v24 = sub_1C6EE4A60();

    v41 = [v39 fileExistsAtPath_];

    if (v41)
    {
      v151 = v38;
      v42 = v40;
      v24 = v142;
      if (qword_1EDEF8F80 != -1)
      {
LABEL_78:
        swift_once();
      }

      sub_1C6EE4EB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1C6EE6590;
      sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
      v44 = sub_1C6EE5460();
      v46 = v45;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1C6DF10E0();
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      sub_1C6EE4730();

      sub_1C6E41F04(v148, &unk_1EC1F9AB0, &qword_1C6EE9250);
      result = (v151)(v24, v23, v42);
      goto LABEL_12;
    }

    (*(v12 + 8))(v23, v40);
    v11 = v40;
    v35 = v12;
    v37 = v131;
  }

  v42 = v146;
  if (*(v147 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_readOnly))
  {
    sub_1C6DFE4C0();
    swift_allocError();
    *v48 = xmmword_1C6EE91D0;
LABEL_9:
    *(v48 + 16) = 5;
    swift_willThrow();
LABEL_11:
    result = sub_1C6E41F04(v148, &unk_1EC1F9AB0, &qword_1C6EE9250);
    goto LABEL_12;
  }

  v49 = v149;
  v50 = sub_1C6DFDC30(v143);
  v51 = v49;
  if (v49)
  {
    goto LABEL_11;
  }

  v23 = v50;
  v131 = v37;
  v127[1] = v36;
  sub_1C6EE4950();
  v53 = *(v23 + 2);
  v130 = v35;
  v54 = v23;
  v147 = v53;
  if (!v53)
  {
LABEL_33:

    v62 = v135;
    v63 = v151;
    sub_1C6EE4940();
    v64 = sub_1C6E35EF4(v62);
    (*(v136 + 8))(v62, v137);
    *&v152 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6E33840();
    v65 = sub_1C6EE4A10();
    v67 = v66;

    (*(v141 + 8))(v63, v150);
    v69 = *v138;
    v68 = v138[1];
    if (v65 != *v138 || v67 != v68)
    {
      v70 = *v138;
      v71 = v138[1];
      if ((sub_1C6EE54B0() & 1) == 0)
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1C6EE6B40;
        v118 = MEMORY[0x1E69E6158];
        *(v117 + 56) = MEMORY[0x1E69E6158];
        v119 = sub_1C6DF10E0();
        *(v117 + 32) = v65;
        *(v117 + 40) = v67;
        *(v117 + 96) = v118;
        *(v117 + 104) = v119;
        *(v117 + 64) = v119;
        *(v117 + 72) = v69;
        *(v117 + 80) = v68;

        sub_1C6EE4730();

        sub_1C6DFE4C0();
        swift_allocError();
        *v48 = 0;
        *(v48 + 8) = 0;
        goto LABEL_9;
      }
    }

    if (v139 == 10)
    {
      (*(v35 + 16))(v140, v143, v11);
      v72 = v131;
    }

    else
    {
      v73 = objc_opt_self();
      v74 = sub_1C6EE4100();
      *&v152 = 0;
      v75 = [v73 compileModelAtURL:v74 error:&v152];

      v76 = v152;
      v72 = v131;
      if (!v75)
      {
        v122 = v152;
        sub_1C6EE4050();

        swift_willThrow();
        goto LABEL_11;
      }

      sub_1C6EE4150();
      v77 = v76;
    }

    v78 = v133;
    sub_1C6E41E54(v148, v133, &unk_1EC1F9AB0, &qword_1C6EE9250);
    if (v72(v78, 1, v11) == 1)
    {
      v42 = v11;
      sub_1C6E41F04(v78, &unk_1EC1F9AB0, &qword_1C6EE9250);
      if (qword_1EDEF8F80 != -1)
      {
        goto LABEL_81;
      }

      goto LABEL_43;
    }

    v88 = *(v35 + 32);
    v150 = v35 + 32;
    v151 = v88;
    (v88)(v134, v78, v11);
    v89 = objc_opt_self();
    v90 = v35;
    v91 = [v89 defaultManager];
    v92 = v132;
    sub_1C6EE4130();
    v93 = sub_1C6EE4100();
    v94 = *(v90 + 8);
    v128 = v11;
    v130 = v90 + 8;
    v94(v92, v11);
    *&v152 = 0;
    v95 = [v91 createDirectoryAtURL:v93 withIntermediateDirectories:1 attributes:0 error:&v152];

    if (v95)
    {
      v147 = v94;
      v96 = v152;
      v97 = [v89 defaultManager];
      v98 = sub_1C6EE4100();
      v99 = sub_1C6EE4100();
      *&v152 = 0;
      v100 = [v97 moveItemAtURL:v98 toURL:v99 error:&v152];

      if (v100)
      {
        v101 = v152;
        if (v139 == 10)
        {
LABEL_55:
          v149 = v51;
          if (qword_1EDEF8F80 != -1)
          {
            swift_once();
          }

          sub_1C6EE4EB0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_1C6EE6B40;
          *&v152 = 0;
          *(&v152 + 1) = 0xE000000000000000;
          if (v139 == 10)
          {
            v108 = 1667592784;
          }

          else
          {
            v108 = 67;
          }

          if (v139 == 10)
          {
            v109 = 0xE400000000000000;
          }

          else
          {
            v109 = 0xE100000000000000;
          }

          MEMORY[0x1CCA57F60](v108, v109);

          v110 = v152;
          v111 = MEMORY[0x1E69E6158];
          *(v107 + 56) = MEMORY[0x1E69E6158];
          v112 = sub_1C6DF10E0();
          *(v107 + 64) = v112;
          *(v107 + 32) = v110;
          sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
          v113 = v134;
          v114 = v128;
          v115 = sub_1C6EE5460();
          *(v107 + 96) = v111;
          *(v107 + 104) = v112;
          *(v107 + 72) = v115;
          *(v107 + 80) = v116;
          sub_1C6EE4730();

          v147(v140, v114);
          sub_1C6E41F04(v148, &unk_1EC1F9AB0, &qword_1C6EE9250);
          result = (v151)(v142, v113, v114);
          goto LABEL_12;
        }

        v102 = [v89 defaultManager];
        v103 = sub_1C6EE4100();
        *&v152 = 0;
        v104 = [v102 removeItemAtURL:v103 error:&v152];

        v105 = v128;
        if (v104)
        {
          v106 = v152;
          goto LABEL_55;
        }

        v126 = v152;
        v121 = sub_1C6EE4050();

        swift_willThrow();
      }

      else
      {
        v123 = v152;
        v121 = sub_1C6EE4050();

        swift_willThrow();
        v105 = v128;
      }

      v94 = v147;
    }

    else
    {
      v120 = v152;
      v121 = sub_1C6EE4050();

      swift_willThrow();
      v105 = v128;
    }

    v94(v134, v105);
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1C6EE6590;
    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v125 = v152;
    *(v124 + 56) = MEMORY[0x1E69E6158];
    *(v124 + 64) = sub_1C6DF10E0();
    *(v124 + 32) = v125;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    sub_1C6E41F04(v148, &unk_1EC1F9AB0, &qword_1C6EE9250);
    result = (v151)(v142, v140, v105);
    goto LABEL_12;
  }

  v55 = 0;
  v144 = (v35 + 8);
  v145 = v35 + 16;
  v129 = v23;
  v128 = v11;
  while (1)
  {
    if (v55 >= *(v54 + 2))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    (*(v35 + 16))(v42, &v54[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v55], v11);
    v56 = sub_1C6EE41C0();
    if (v51)
    {
      (*v144)(v42, v11);

      (*(v141 + 8))(v151, v150);
      goto LABEL_11;
    }

    v58 = v56;
    v24 = v57;
    v59 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      break;
    }

    if (v59)
    {
      if (v56 >> 32 < v56)
      {
        goto LABEL_76;
      }

      if (sub_1C6EE3F90() && __OFSUB__(v58, sub_1C6EE3FC0()))
      {
        goto LABEL_80;
      }

      sub_1C6EE3FB0();
      sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688]);
      v23 = v151;
      sub_1C6EE4930();
      sub_1C6DF1134(v58, v24);
      sub_1C6DF1134(v58, v24);
      v11 = v128;
      goto LABEL_32;
    }

    *&v152 = v56;
    WORD4(v152) = v57;
    BYTE10(v152) = BYTE2(v57);
    BYTE11(v152) = BYTE3(v57);
    BYTE12(v152) = BYTE4(v57);
    BYTE13(v152) = BYTE5(v57);
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688]);
LABEL_16:
    v23 = v151;
    sub_1C6EE4930();
    sub_1C6DF1134(v58, v24);
    sub_1C6DF1134(v58, v24);
LABEL_17:
    ++v55;
    (*v144)(v42, v11);
    if (v147 == v55)
    {
      goto LABEL_33;
    }
  }

  if (v59 != 2)
  {
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688]);
    *&v152 = 0;
    *(&v152 + 6) = 0;
    goto LABEL_16;
  }

  v149 = 0;
  v60 = *(v56 + 16);
  v61 = *(v56 + 24);

  v23 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
  if (!sub_1C6EE3F90() || (v23 = (v24 & 0x3FFFFFFFFFFFFFFFLL), !__OFSUB__(v60, sub_1C6EE3FC0())))
  {
    if (__OFSUB__(v61, v60))
    {
      goto LABEL_77;
    }

    sub_1C6EE3FB0();
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688]);
    v23 = v151;
    sub_1C6EE4930();
    sub_1C6DF1134(v58, v24);
    sub_1C6DF1134(v58, v24);
    v51 = v149;
LABEL_32:
    v35 = v130;
    v54 = v129;
    goto LABEL_17;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  swift_once();
LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1C6EE6B40;
  *&v152 = 0;
  *(&v152 + 1) = 0xE000000000000000;
  if (v139 == 10)
  {
    v80 = 6648432;
  }

  else
  {
    v80 = 0;
  }

  if (v139 == 10)
  {
    v81 = 0xE300000000000000;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  MEMORY[0x1CCA57F60](v80, v81);

  v82 = v152;
  v83 = MEMORY[0x1E69E6158];
  *(v79 + 56) = MEMORY[0x1E69E6158];
  v84 = sub_1C6DF10E0();
  *(v79 + 64) = v84;
  *(v79 + 32) = v82;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
  v85 = v140;
  v86 = sub_1C6EE5460();
  *(v79 + 96) = v83;
  *(v79 + 104) = v84;
  *(v79 + 72) = v86;
  *(v79 + 80) = v87;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6E41F04(v148, &unk_1EC1F9AB0, &qword_1C6EE9250);
  result = (*(v130 + 32))(v142, v85, v42);
LABEL_12:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C6E40518(uint64_t a1, void *a2)
{
  v4 = sub_1C6EE41A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6E41BA8();
  (*(v5 + 16))(v8, a1, v4);
  v9 = a2;
  v10 = sub_1C6E41BF4(v8, v9);

  return v10;
}

uint64_t sub_1C6E4062C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory;
  v3 = sub_1C6EE41A0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_1C6E41F04(&v0[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory], &unk_1EC1F9AB0, &qword_1C6EE9250);
  v4 = *&v0[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs];

  v5 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_signposter;
  v6 = sub_1C6EE4790();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *&v0[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_loadedComputations];

  v8 = *&v0[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8];
  sub_1C6E41D54(*&v0[OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver]);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResourceReader()
{
  result = qword_1EDEF8628;
  if (!qword_1EDEF8628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6E407B8()
{
  v0 = sub_1C6EE41A0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C6DEFDAC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1C6EE4790();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1C6E408F8()
{
  v2 = sub_1C6EE4020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  v8 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v9 = v8;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6E41F84(inited + 32, type metadata accessor for URLResourceKey);
  sub_1C6EE40C0();

  if (!v1)
  {
    v0 = sub_1C6EE3FF0();
    (*(v3 + 8))(v6, v2);
  }

  return v0 & 1;
}

uint64_t sub_1C6E40A74(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v96[8] = *MEMORY[0x1E69E9840];
  v91 = sub_1C6EE4020();
  v83 = *(v91 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F18, &unk_1C6EE92C0);
  v82 = *(v80 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v78 - v6;
  v95 = sub_1C6EE41A0();
  v93 = *(v95 - 8);
  v7 = *(v93 + 64);
  v8 = MEMORY[0x1EEE9AC00](v95);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v78 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v87 = (&v78 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v78 - v16;
  if (qword_1EDEF8F80 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v17 = qword_1EDEF8F88;
    sub_1C6EE4EB0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v19 = swift_allocObject();
    v94 = xmmword_1C6EE6590;
    *(v19 + 16) = xmmword_1C6EE6590;
    v20 = sub_1C6EE4170();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v84 = sub_1C6DF10E0();
    *(v19 + 64) = v84;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v86 = v17;
    sub_1C6EE4730();

    v23 = objc_opt_self();
    v24 = [v23 defaultManager];
    v89 = a1;
    sub_1C6EE4170();
    v25 = sub_1C6EE4A60();

    v96[0] = 0;
    v26 = [v24 contentsOfDirectoryAtPath:v25 error:v96];

    v27 = v96[0];
    if (!v26)
    {
LABEL_23:
      v76 = v96[0];
      sub_1C6EE4050();

      result = swift_willThrow();
      goto LABEL_24;
    }

    v78 = v18;
    v79 = v10;
    v28 = sub_1C6EE4CA0();
    v29 = v27;

    strcpy(v96, "tabi_spec.pb");
    BYTE5(v96[1]) = 0;
    HIWORD(v96[1]) = -5120;
    MEMORY[0x1EEE9AC00](v30);
    *(&v78 - 2) = v96;
    v31 = v90;
    v32 = sub_1C6EE26E8(sub_1C6E41F64, (&v78 - 4), v28);
    v33 = v31;

    if (v32)
    {
      break;
    }

    v47 = [v23 defaultManager];
    v48 = sub_1C6EE4100();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
    v50 = swift_allocObject();
    *(v50 + 16) = v94;
    v51 = *MEMORY[0x1E695DB78];
    *(v50 + 32) = *MEMORY[0x1E695DB78];
    type metadata accessor for URLResourceKey(0);
    v84 = v51;
    v52 = sub_1C6EE4C90();

    v96[0] = 0;
    v53 = [v47 contentsOfDirectoryAtURL:v48 includingPropertiesForKeys:v52 options:0 error:v96];

    v54 = v96[0];
    if (!v53)
    {
      goto LABEL_23;
    }

    v10 = sub_1C6EE4CA0();
    v55 = v54;

    v90 = *(v10 + 2);
    if (!v90)
    {
LABEL_17:

      goto LABEL_24;
    }

    v56 = 0;
    v57 = v93;
    v89 = &v10[(*(v57 + 80) + 32) & ~*(v57 + 80)];
    v88 = (v93 + 16);
    v86 = (v83 + 8);
    v87 = (v93 + 8);
    a1 = v95;
    v58 = v84;
    while (v56 < *(v10 + 2))
    {
      (*(v57 + 16))(v13, &v89[*(v57 + 72) * v56], a1);
      inited = swift_initStackObject();
      *(inited + 16) = v94;
      *(inited + 32) = v58;
      v60 = v58;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6E41F84(inited + 32, type metadata accessor for URLResourceKey);
      v61 = v92;
      sub_1C6EE40C0();
      if (v33)
      {

        result = (*v87)(v13, v95);
        goto LABEL_24;
      }

      v62 = sub_1C6EE3FF0();
      (*v86)(v61, v91);
      if (v62 == 2 || (v62 & 1) == 0)
      {
        a1 = v95;
        (*v87)(v13, v95);
        v57 = v93;
      }

      else
      {
        v63 = v49;
        v64 = v13;
        v65 = v79;
        sub_1C6EE4120();
        sub_1C6E40A74(v65, v85);
        a1 = v95;
        v57 = v93;
        v83 = 0;
        v66 = *v87;
        (*v87)(v65, v95);
        v66(v64, a1);
        v33 = v83;
        v13 = v64;
        v49 = v63;
        v58 = v84;
      }

      if (v90 == ++v56)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v94;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
  v35 = v89;
  v36 = v95;
  v37 = sub_1C6EE5460();
  v38 = v84;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = v38;
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v40 = v93;
  v41 = v88;
  (*(v93 + 16))(v88, v35, v36);
  v42 = v87;
  sub_1C6EE4110();
  v43 = sub_1C6EE41C0();
  if (v31)
  {
    v45 = *(v40 + 8);
    v45(v42, v36);
    result = (v45)(v41, v36);
  }

  else
  {
    v67 = v43;
    v68 = v44;
    (*(v40 + 8))(v42, v36);
    v69 = v81;
    v70 = &v81[*(v80 + 48)];
    (*(v40 + 32))(v81, v41, v36);
    *v70 = v67;
    *(v70 + 1) = v68;
    v71 = v85;
    swift_beginAccess();
    v72 = *(v71 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 16) = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = sub_1C6ED97E8(0, v72[2] + 1, 1, v72);
      *(v85 + 16) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_1C6ED97E8(v74 > 1, v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    sub_1C6E41FE4(v69, v72 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v75, &qword_1EC1F7F18, &unk_1C6EE92C0);
    *(v85 + 16) = v72;
    result = swift_endAccess();
  }

LABEL_24:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6E41514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C6E415E0(v11, 0, 0, 1, a1, a2);
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
    sub_1C6E41ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C6E415E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C6E416EC(a5, a6);
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
    result = sub_1C6EE5240();
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

uint64_t sub_1C6E416EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C6E41738(a1, a2);
  sub_1C6E41868(&unk_1F468A2A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C6E41738(uint64_t a1, unint64_t a2)
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

  v6 = sub_1C6E41954(v5, 0);
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

  result = sub_1C6EE5240();
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
        v10 = sub_1C6EE4B90();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C6E41954(v10, 0);
        result = sub_1C6EE5190();
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

uint64_t sub_1C6E41868(uint64_t result)
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

  result = sub_1C6E419C8(result, v12, 1, v3);
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

void *sub_1C6E41954(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED8, &qword_1C6EE9258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C6E419C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED8, &qword_1C6EE9258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

uint64_t sub_1C6E41ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1C6E41B18()
{
  v1 = *(sub_1C6EE41A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1C6E40518(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1C6E41BA8()
{
  result = qword_1EDEF6760;
  if (!qword_1EDEF6760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6760);
  }

  return result;
}

id sub_1C6E41BF4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C6EE4100();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1C6EE41A0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1C6EE4050();

    swift_willThrow();
    v11 = sub_1C6EE41A0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1C6E41D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6E41D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E41DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E41E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E41EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E41F04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E41F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E41FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph14ResourceReaderC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C6E42068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E420B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E420F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_1C6E42130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v139 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  v146 = *(v139 - 8);
  v6 = *(v146 + 64);
  v7 = MEMORY[0x1EEE9AC00](v139);
  v121 = (&v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v120 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v120 - v12;
  v138 = sub_1C6EE4760();
  v13 = *(v138 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v155 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1C6EE4790();
  v16 = *(v137 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v157 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v141 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v120 - v23;
  v142 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v24 = *(v142 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v142);
  v140 = (&v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v144 = (&v120 - v28);
  v156 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v29 = *(v156 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v160 = (&v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a2[1];
  v136 = *a2;
  v135 = v32;
  v33 = MEMORY[0x1E69E7CC0];
  a3[2] = MEMORY[0x1E69E7CC0];
  v34 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0) + 24);
  v145 = a3;
  result = sub_1C6EE4420();
  v36 = *a1;
  v133 = *(*a1 + 16);
  if (v133)
  {
    result = objc_opt_self();
    v127 = result;
    v132 = v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v131 = 0x80000001C6EF9300;
    v130 = (v24 + 48);
    v126 = (v13 + 8);
    v37 = 0;
    v125 = (v16 + 8);
    v153 = xmmword_1C6EE6590;
    v129 = xmmword_1C6EE91C0;
    *(&v38 + 1) = 4;
    v134 = xmmword_1C6EE6B40;
    *&v38 = 136446210;
    v128 = v38;
    v159 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E6158];
    v40 = v143;
    v41 = v142;
    v42 = v144;
    v124 = v11;
    v123 = v36;
    v122 = v29;
    while (v37 < *(v36 + 16))
    {
      v46 = *(v29 + 72);
      v149 = v37;
      v47 = v160;
      sub_1C6E4A3EC(v132 + v46 * v37, v160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
      v48 = swift_allocObject();
      *(v48 + 16) = v153;
      v167 = 0;
      v168 = 0xE000000000000000;
      sub_1C6EE51B0();

      v167 = 0x1000000000000017;
      v168 = v131;
      v49 = v47[1];
      v147 = *v47;
      v148 = v49;
      MEMORY[0x1CCA57F60]();
      MEMORY[0x1CCA57F60](3026478, 0xE300000000000000);
      v50 = v167;
      v51 = v168;
      *(v48 + 56) = v39;
      *(v48 + 32) = v50;
      *(v48 + 40) = v51;
      sub_1C6EE5560();

      v52 = type metadata accessor for FatalFeaturesStore();
      v53 = swift_allocObject();
      v169 = v52;
      v170 = &off_1F468D870;
      v167 = v53;
      sub_1C6E4A29C(v47 + *(v156 + 28), v40, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v54 = *v130;
      if ((*v130)(v40, 1, v41) == 1)
      {
        *v42 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
        v55 = v42 + *(v41 + 20);
        sub_1C6EE4420();
        v56 = v54(v40, 1, v41);
        v57 = v141;
        if (v56 != 1)
        {
          sub_1C6E4A304(v40, &qword_1EC1F7D68, &unk_1C6EE89B0);
        }
      }

      else
      {
        sub_1C6E4A384(v40, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v57 = v141;
      }

      v158 = sub_1C6E29CBC(v42);
      sub_1C6E4A454(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E4A29C(v160 + *(v156 + 32), v57, &qword_1EC1F7D68, &unk_1C6EE89B0);
      if (v54(v57, 1, v41) == 1)
      {
        v58 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
        v59 = v140;
        *v140 = v58;
        v60 = v59 + *(v41 + 20);
        sub_1C6EE4420();
        v61 = v54(v57, 1, v41);
        v62 = v161;
        if (v61 != 1)
        {
          sub_1C6E4A304(v57, &qword_1EC1F7D68, &unk_1C6EE89B0);
        }
      }

      else
      {
        v59 = v140;
        sub_1C6E4A384(v57, v140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v62 = v161;
      }

      v63 = *v59;

      sub_1C6E4A454(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = sub_1C6E03038(*(v63 + 16), 0);
        v66 = sub_1C6E0D438(v165, v65 + 4, v64, v63);
        result = sub_1C6E4A14C();
        if (v66 != v64)
        {
          goto LABEL_46;
        }
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
      }

      memset(v165, 0, sizeof(v165));
      v166 = v129;
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v161 = v62;
      v67 = qword_1EDEF8F88;
      sub_1C6EE4770();
      if (qword_1EDEF8FA0 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v68 = swift_allocObject();
      *(v68 + 16) = v134;
      v151 = v65;
      v69 = MEMORY[0x1CCA580B0](v65, v39);
      v71 = v70;
      *(v68 + 56) = v39;
      v72 = sub_1C6DF10E0();
      *(v68 + 64) = v72;
      *(v68 + 32) = v69;
      *(v68 + 40) = v71;
      v73 = v158;
      v74 = sub_1C6EE49B0();
      *(v68 + 96) = v39;
      *(v68 + 104) = v72;
      *(v68 + 72) = v74;
      *(v68 + 80) = v75;
      sub_1C6EE4EE0();
      sub_1C6EE4730();

      sub_1C6EE4780();
      sub_1C6EE4740();
      v76 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v171 = v150;
      *v76 = v128;
      v162[0] = 0;
      v162[1] = 0xE000000000000000;
      sub_1C6EE51B0();

      v163 = 0x3D737475706E69;
      v164 = 0xE700000000000000;
      v77 = *(v73 + 16);
      if (v77)
      {
        v78 = sub_1C6E03038(*(v73 + 16), 0);
        v79 = sub_1C6E0D430(v162, v78 + 4, v77, v73);

        result = sub_1C6E4A14C();
        if (v79 != v77)
        {
          goto LABEL_47;
        }

        v39 = MEMORY[0x1E69E6158];
      }

      v80 = sub_1C6EE4C90();

      v81 = [v127 localizedStringByJoiningStrings_];

      v82 = sub_1C6EE4A90();
      v84 = v83;

      MEMORY[0x1CCA57F60](v82, v84);

      MEMORY[0x1CCA57F60](0x74757074756F202CLL, 0xEA00000000003D73);
      v85 = v151;
      v86 = MEMORY[0x1CCA580B0](v151, v39);
      MEMORY[0x1CCA57F60](v86);

      v87 = sub_1C6E41514(v163, v164, &v171);

      *(v76 + 4) = v87;
      v88 = sub_1C6EE4780();
      LOBYTE(v82) = sub_1C6EE4F80();
      v89 = v155;
      v90 = sub_1C6EE4750();
      _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v88, v82, v90, "SubGraphComputation.buildAndCall", "%{public}s", v76, 0xCu);
      v91 = v161;
      sub_1C6EDFEE4(v85, v136, v135, v158, &v167, v165, 0, sub_1C6E43508, v162, 0);
      v161 = v91;
      LOBYTE(v82) = sub_1C6EE4F70();
      v92 = sub_1C6EE4750();
      _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v88, v82, v92, "SubGraphComputation.buildAndCall", "%{public}s", v76, 0xCu);

      v93 = v150;
      __swift_destroy_boxed_opaque_existential_0(v150);
      MEMORY[0x1CCA59290](v93, -1, -1);
      MEMORY[0x1CCA59290](v76, -1, -1);

      (*v126)(v89, v138);
      (*v125)(v157, v137);
      sub_1C6E4A304(v165, &qword_1EC1F7F38, &unk_1C6EF7A00);
      v94 = sub_1C6E4A304(&v167, &qword_1EC1F7F40, &unk_1C6EE94D0);
      MEMORY[0x1EEE9AC00](v94);
      sub_1C6E4A1FC(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v95 = v161;
      sub_1C6EE4600();
      v42 = v144;
      if (v95)
      {

        sub_1C6E4A454(v160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
        v109 = swift_allocObject();
        *(v109 + 16) = v134;
        v110 = MEMORY[0x1E69E6158];
        *(v109 + 56) = MEMORY[0x1E69E6158];
        *(v109 + 32) = 0xD000000000000012;
        *(v109 + 40) = 0x80000001C6EF93A0;
        v167 = 0;
        v168 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v111 = v167;
        v112 = v168;
        *(v109 + 88) = v110;
        *(v109 + 64) = v111;
        *(v109 + 72) = v112;
        sub_1C6EE5560();

        v113 = v145;
        *v145 = 1;
        *(v113 + 8) = 1;
        v114 = swift_allocObject();
        *(v114 + 16) = v153;
        *(v114 + 56) = v110;
        *(v114 + 32) = 0x65637845208C9DE2;
        v115 = 0xAD00006E6F697470;
        goto LABEL_43;
      }

      v161 = 0;

      v96 = v159;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_1C6ED9858(0, v96[2] + 1, 1, v96);
      }

      v97 = v124;
      v40 = v143;
      v41 = v142;
      v36 = v123;
      v39 = MEMORY[0x1E69E6158];
      v99 = v159[2];
      v98 = v159[3];
      if (v99 >= v98 >> 1)
      {
        v159 = sub_1C6ED9858(v98 > 1, v99 + 1, 1, v159);
      }

      v100 = v159;
      v159[2] = v99 + 1;
      v101 = v100 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v99;
      sub_1C6E4A384(v154, v101, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v145[2] = v100;
      sub_1C6E4A3EC(v101, v97, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v102 = *v97;
      v103 = swift_allocObject();
      *(v103 + 16) = v153;
      if (v102 == 1)
      {
        v167 = 0x2220859CE2;
        v168 = 0xA500000000000000;
        MEMORY[0x1CCA57F60](v147, v148);
        v43 = 0x737361502022;
      }

      else
      {
        v167 = 0x22208C9DE2;
        v168 = 0xA500000000000000;
        MEMORY[0x1CCA57F60](v147, v148);
        v43 = 0x6C6961462022;
      }

      MEMORY[0x1CCA57F60](v43 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
      v44 = v167;
      v45 = v168;
      v29 = v122;
      v37 = v149 + 1;
      *(v103 + 56) = v39;
      *(v103 + 32) = v44;
      *(v103 + 40) = v45;
      sub_1C6EE5560();

      sub_1C6E4A454(v97, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      result = sub_1C6E4A454(v160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
      if (v133 == v37)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v159 = v33;
  v39 = MEMORY[0x1E69E6158];
LABEL_33:
  v104 = v159;
  v105 = v159[2];
  if (v105)
  {
    v106 = 0;
    while (v106 < v104[2])
    {
      v107 = v121;
      sub_1C6E4A3EC(v104 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v106, v121, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v108 = *v107;
      result = sub_1C6E4A454(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      if (v108 != 1)
      {
        v119 = v145;
        *v145 = 3;
        *(v119 + 8) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
        v117 = swift_allocObject();
        v114 = v117;
        *(v117 + 16) = xmmword_1C6EE6590;
        v115 = 0x80000001C6EF93C0;
        *(v117 + 56) = v39;
        v118 = 0x1000000000000018;
        goto LABEL_42;
      }

      if (v105 == ++v106)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

LABEL_40:
  v116 = v145;
  *v145 = 2;
  *(v116 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
  v117 = swift_allocObject();
  v114 = v117;
  *(v117 + 16) = xmmword_1C6EE6590;
  v115 = 0x80000001C6EF93E0;
  *(v117 + 56) = v39;
  v118 = 0x1000000000000014;
LABEL_42:
  *(v117 + 32) = v118;
LABEL_43:
  *(v114 + 40) = v115;
  sub_1C6EE5560();
}

uint64_t sub_1C6E43508()
{
  sub_1C6E49F48();
  swift_allocError();
  *v0 = xmmword_1C6EE91C0;
  *(v0 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_1C6E43564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C6E438A8(a2, a3);
  if (!v3)
  {
    v19 = result;
    v20 = v18;
    v32 = v10;
    v33 = v7;
    v34 = v6;
    v35 = 0;
    v21 = v17;
    sub_1C6E4A3EC(a2, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
    v22 = *(v31 + 28);
    v23 = v36;
    sub_1C6E4A304(v36 + v22, &qword_1EC1F7F50, &unk_1C6EED3E0);
    sub_1C6E4A384(v15, v23 + v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    (*(v12 + 56))(v23 + v22, 0, 1, v11);
    v24 = v35;
    v25 = sub_1C6E45130(a2, v19, v23, v21, v20 & 1);
    if (v24)
    {
    }

    else
    {
      *v23 = v25;
      *(v23 + 8) = v26 & 1;
      MEMORY[0x1EEE9AC00](v25);
      *(&v30 - 2) = v19;
      sub_1C6E4A1FC(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v27 = v32;
      v28 = v34;
      sub_1C6EE4600();

      v29 = *(v31 + 32);
      sub_1C6E4A304(v23 + v29, &qword_1EC1F7D68, &unk_1C6EE89B0);
      sub_1C6E4A384(v27, v23 + v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      return (*(v33 + 56))(v23 + v29, 0, 1, v28);
    }
  }

  return result;
}

uint64_t sub_1C6E438A8(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v117 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v113 = *(v117 - 8);
  v3 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v106 = (&v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v99 - v9;
  v121 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v118 = *(v121 - 8);
  v10 = *(v118 + 64);
  v11 = MEMORY[0x1EEE9AC00](v121);
  v107 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v110 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v116 = (&v99 - v20);
  v21 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v103 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v109 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v99 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v101 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v108 = &v99 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v114 = &v99 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v99 - v37;
  v39 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0) + 36);
  sub_1C6E4A29C(a1 + v39, v38, &qword_1EC1F7F70, &qword_1C6EE9500);
  v42 = *(v22 + 48);
  v40 = v22 + 48;
  v41 = v42;
  v43 = v42(v38, 1, v21);
  sub_1C6E4A304(v38, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v43 == 1)
  {
    goto LABEL_7;
  }

  v44 = v114;
  sub_1C6E4A29C(a1 + v39, v114, &qword_1EC1F7F70, &qword_1C6EE9500);
  v45 = v41(v44, 1, v21);
  v102 = v40;
  v100 = v41;
  v99 = v39;
  if (v45 == 1)
  {
    v46 = v115;
    sub_1C6EE4420();
    v47 = *(v21 + 20);
    v48 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v48 - 8) + 56))(&v46[v47], 1, 1, v48);
    v49 = v121;
    (*(v118 + 56))(&v46[*(v21 + 24)], 1, 1, v121);
    if (v41(v44, 1, v21) != 1)
    {
      sub_1C6E4A304(v44, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v46 = v115;
    sub_1C6E4A384(v44, v115, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v49 = v121;
  }

  v50 = v21;
  v51 = &v46[*(v21 + 24)];
  v52 = v116;
  sub_1C6E4A29C(v51, v116, &qword_1EC1F7F60, &qword_1C6EE94F0);
  sub_1C6E4A454(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  v53 = *(v118 + 48);
  v54 = (v53)(v52, 1, v49);
  sub_1C6E4A304(v52, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v55 = v100;
  if (v54 == 1)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1C6EE6590;
    v57 = 0x80000001C6EF9730;
    *(v56 + 56) = MEMORY[0x1E69E6158];
    v58 = 0x100000000000005BLL;
LABEL_8:
    *(v56 + 32) = v58;
    *(v56 + 40) = v57;
    sub_1C6EE5560();

    v59 = v119;

    return v59;
  }

  v61 = v108;
  sub_1C6E4A29C(a1 + v99, v108, &qword_1EC1F7F70, &qword_1C6EE9500);
  v62 = v55(v61, 1, v50);
  v115 = v53;
  if (v62 == 1)
  {
    v63 = v109;
    sub_1C6EE4420();
    v64 = *(v50 + 20);
    v65 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
    v66 = v121;
    (*(v118 + 56))(v63 + *(v50 + 24), 1, 1, v121);
    v67 = v63;
    v68 = v55(v61, 1, v50) == 1;
    v69 = v61;
    v70 = v117;
    v72 = v110;
    v71 = v111;
    if (!v68)
    {
      sub_1C6E4A304(v69, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v67 = v109;
    sub_1C6E4A384(v61, v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v70 = v117;
    v66 = v121;
    v72 = v110;
    v71 = v111;
  }

  sub_1C6E4A29C(v67 + *(v50 + 24), v72, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v73 = v115;
  if ((v115)(v72, 1, v66) == 1)
  {
    *v71 = 0;
    *(v71 + 8) = 1;
    v74 = v71 + *(v66 + 20);
    sub_1C6EE4420();
    sub_1C6E4A454(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    (*(v113 + 56))(v71 + *(v66 + 24), 1, 1, v70);
    if ((v73)(v72, 1, v66) != 1)
    {
      sub_1C6E4A304(v72, &qword_1EC1F7F60, &qword_1C6EE94F0);
    }
  }

  else
  {
    sub_1C6E4A454(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    sub_1C6E4A384(v72, v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  }

  v75 = v112;
  sub_1C6E4A29C(v71 + *(v66 + 24), v112, &qword_1EC1F7F78, &qword_1C6EE9508);
  sub_1C6E4A454(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  v116 = *(v113 + 48);
  v76 = (v116)(v75, 1, v117);
  sub_1C6E4A304(v75, &qword_1EC1F7F78, &qword_1C6EE9508);
  if (v76 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1C6EE6590;
    v57 = 0x80000001C6EF9790;
    *(v56 + 56) = MEMORY[0x1E69E6158];
    v58 = 0x1000000000000070;
    goto LABEL_8;
  }

  v77 = v101;
  sub_1C6E4A29C(a1 + v99, v101, &qword_1EC1F7F70, &qword_1C6EE9500);
  v78 = v100;
  if (v100(v77, 1, v50) == 1)
  {
    v79 = v103;
    sub_1C6EE4420();
    v80 = *(v50 + 20);
    v81 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
    (*(v118 + 56))(v79 + *(v50 + 24), 1, 1, v121);
    v82 = v78(v77, 1, v50);
    v83 = v117;
    if (v82 != 1)
    {
      sub_1C6E4A304(v77, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v79 = v103;
    sub_1C6E4A384(v77, v103, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v83 = v117;
  }

  v59 = v104;
  sub_1C6E4A29C(v79 + *(v50 + 24), v104, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v84 = v121;
  if ((v73)(v59, 1, v121) == 1)
  {
    v85 = v107;
    *v107 = 0;
    *(v85 + 8) = 1;
    v86 = v85 + *(v84 + 20);
    sub_1C6EE4420();
    sub_1C6E4A454(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    (*(v113 + 56))(v85 + *(v84 + 24), 1, 1, v83);
    v87 = (v73)(v59, 1, v84);
    v88 = v106;
    if (v87 != 1)
    {
      sub_1C6E4A304(v59, &qword_1EC1F7F60, &qword_1C6EE94F0);
    }
  }

  else
  {
    sub_1C6E4A454(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v85 = v107;
    sub_1C6E4A384(v59, v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    v88 = v106;
  }

  v89 = v105;
  sub_1C6E4A29C(v85 + *(v121 + 24), v105, &qword_1EC1F7F78, &qword_1C6EE9508);
  v90 = v116;
  if ((v116)(v89, 1, v83) == 1)
  {
    *v88 = sub_1C6E0C4F4(MEMORY[0x1E69E7CC0]);
    v91 = v88 + *(v83 + 20);
    sub_1C6EE4420();
    v92 = v90(v89, 1, v83);
    if (v92 != 1)
    {
      v92 = sub_1C6E4A304(v89, &qword_1EC1F7F78, &qword_1C6EE9508);
    }
  }

  else
  {
    v92 = sub_1C6E4A384(v89, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  MEMORY[0x1EEE9AC00](v92);
  *(&v99 - 2) = v88;
  v93 = v120;
  v94 = sub_1C6EDC5E4(sub_1C6E4A364, (&v99 - 4), v119);
  if (v93)
  {
    sub_1C6E4A454(v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    sub_1C6E4A454(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  else
  {
    if (*(v94 + 16))
    {
      v95 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
      v96 = sub_1C6EE5340();
      v94 = v95;
    }

    else
    {
      v96 = MEMORY[0x1E69E7CC8];
    }

    v122 = v96;
    sub_1C6E298C0(v94, 1, &v122);
    v59 = v122;
    v97 = *v107;
    v98 = *(v107 + 8);
    sub_1C6E4A454(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    sub_1C6E4A454(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  return v59;
}

uint64_t sub_1C6E44730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v24 - v12;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *a2;
  v19 = *(v18 + 16);

  result = sub_1C6E00CBC(v15, v16, v17);
  if (v19 && (result = sub_1C6DEC784(v13, v14), (v21 & 1) != 0))
  {
    sub_1C6E4A3EC(*(v18 + 56) + *(v26 + 72) * result, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v22 = v27;
    sub_1C6E4A384(v11, v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    *a4 = v13;
    *(a4 + 8) = v14;

    v23 = v28;
    sub_1C6E44948(v22, v15, v16, v17, v13, v14, a4 + 16);

    sub_1C6E00C60(v15, v16, v17);
    result = sub_1C6E4A454(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    if (v23)
    {

      *v25 = v23;
    }
  }

  else
  {
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 16) = v15;
    *(a4 + 24) = v16;
    *(a4 + 32) = v17;
  }

  return result;
}

uint64_t sub_1C6E44948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v21 = (a3 >> 60) & 3 | (4 * (a4 & 1));
    if (v21 > 2)
    {
      if (v21 > 4)
      {
        if (v21 != 5)
        {
          goto LABEL_76;
        }

        v30 = a3 >> 62;
        if ((a3 >> 62) > 1)
        {
          if (v30 == 2)
          {
            v36 = *(a2 + 16);
            v35 = *(a2 + 24);
            v20 = v35 - v36;
            if (__OFSUB__(v35, v36))
            {
              __break(1u);
              goto LABEL_44;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else if (v30)
        {
          v32 = (HIDWORD(a2) - a2);
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          v20 = v32;
        }

        else
        {
          v20 = BYTE6(a3);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v32 = 0xFFFFFFFEFFFFFFFFLL;
        if (v20 >= 0xFFFFFFFEFFFFFFFFLL)
        {
          v32 = 0xFFFFFFFFLL;
          if (v20 <= 0xFFFFFFFFLL)
          {
            *(result + 32) = v20 / 2;
            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v21 == 3)
      {
        v20 = *(a2 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v18 = v20 >> 31;
        if (v20 >> 31)
        {
          __break(1u);
          goto LABEL_7;
        }

        goto LABEL_36;
      }

LABEL_35:
      v20 = *(a2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      result = swift_allocObject();
      *(result + 16) = xmmword_1C6EE6590;
      v32 = v20 >> 31;
      if (!(v20 >> 31))
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v21)
    {
      if (v21 == 1)
      {
        v20 = *(a2 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v18 = v20 >> 31;
        if (v20 >> 31)
        {
          __break(1u);
          goto LABEL_13;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v20 = *(a2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      result = swift_allocObject();
      *(result + 16) = xmmword_1C6EE6590;
      if (!(v20 >> 31))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v20 = *(a2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C6EE6590;
    if (v20 >> 31)
    {
      __break(1u);
      goto LABEL_35;
    }

LABEL_36:
    *(result + 32) = v20;
LABEL_37:
    v34 = 0x1000000000000000;
    *a7 = result;
LABEL_38:
    *(a7 + 8) = v34;
LABEL_39:
    *(a7 + 16) = 0;
    return result;
  }

LABEL_7:
  if (*(*(a1 + 8) + 16))
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD000000000000062, 0x80000001C6EF9810);
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](39, 0xE100000000000000);
    v22 = v47;
    v23 = v48;
    sub_1C6E49F48();
    swift_allocError();
    *v24 = v22;
    *(v24 + 8) = v23;
    v25 = 2;
LABEL_15:
    *(v24 + 16) = v25;
    return swift_willThrow();
  }

LABEL_13:
  v26 = *(a1 + 16);
  v27 = *(v26 + 16);
  if (v27 > 1)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000003DLL, 0x80000001C6EF98C0);
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](0xD000000000000017, 0x80000001C6EF9900);
    v28 = v47;
    v29 = v48;
    sub_1C6E49F48();
    swift_allocError();
    *v24 = v28;
    *(v24 + 8) = v29;
    v25 = 3;
    goto LABEL_15;
  }

  if (!v27)
  {
    goto LABEL_45;
  }

  sub_1C6E4A3EC(v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
  if (*v20 != 1)
  {
LABEL_44:
    sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
LABEL_45:
    *a7 = a2;
    *(a7 + 8) = a3;
    *(a7 + 16) = a4 & 1;
    return sub_1C6E00CBC(a2, a3, a4 & 1);
  }

  v31 = (a3 >> 60) & 3 | (4 * (a4 & 1));
  if (v31 <= 2)
  {
    if (v31)
    {
      if (v31 != 1)
      {
        v17 = *(v20 + 4);
        v32 = *(v20 + 8);
        if (v32 >= v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            v42 = *(a2 + 16);
            if (v42 >= v32)
            {
              if (v42 == v32 - v17)
              {
                sub_1C6E00CBC(a2, a3, a4 & 1);
              }

              else
              {
                sub_1C6EC8B68(a2, a2 + 32, v17, (2 * v32) | 1);
                a2 = v45;
              }

              result = sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
              v34 = 0x2000000000000000;
              goto LABEL_74;
            }

            goto LABEL_91;
          }

          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v17 = *(v20 + 4);
      v32 = *(v20 + 8);
      if (v32 >= v17)
      {
        if ((v17 & 0x80000000) == 0)
        {
          v37 = *(a2 + 16);
          if (v37 >= v32)
          {
            if (v37 == v32 - v17)
            {
              sub_1C6E00CBC(a2, a3, a4 & 1);
            }

            else
            {
              sub_1C6EC8A98(a2, a2 + 32, v17, (2 * v32) | 1);
              a2 = v44;
            }

            result = sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            v34 = 0x1000000000000000;
            goto LABEL_74;
          }

          goto LABEL_90;
        }

        goto LABEL_86;
      }

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
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v17 = *(v20 + 4);
    v32 = *(v20 + 8);
    if (v32 >= v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        v41 = *(a2 + 16);
        if (v41 >= v32)
        {
          if (v41 == v32 - v17)
          {
            sub_1C6E00CBC(a2, a3, a4 & 1);
LABEL_67:
            result = sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            *a7 = a2;
            *(a7 + 8) = 0;
            goto LABEL_39;
          }

LABEL_93:
          sub_1C6EC8C38(a2, a2 + 32, v17, (2 * v32) | 1);
          a2 = v43;
          goto LABEL_67;
        }

        goto LABEL_89;
      }

      goto LABEL_85;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v31 <= 4)
  {
    if (v31 == 3)
    {
      v17 = *(v20 + 4);
      v32 = *(v20 + 8);
      if (v32 >= v17)
      {
        if ((v17 & 0x80000000) == 0)
        {
          v33 = *(a2 + 16);
          if (v33 >= v32)
          {
            if (v33 == v32 - v17)
            {
              sub_1C6E00CBC(a2, a3, a4 & 1);
            }

            else
            {
              sub_1C6EC8D08(a2, a2 + 32, v17, (2 * v32) | 1);
              a2 = v46;
            }

            result = sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            v34 = 0x3000000000000000;
LABEL_74:
            *a7 = a2;
            goto LABEL_38;
          }

          goto LABEL_92;
        }

        goto LABEL_88;
      }

      goto LABEL_84;
    }

    goto LABEL_61;
  }

  if (v31 == 5)
  {
LABEL_61:
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1C6EE51B0();

    v47 = 0xD00000000000001DLL;
    v48 = 0x80000001C6EF9880;
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](0xD000000000000010, 0x80000001C6EF98A0);
    v38 = v47;
    v39 = v48;
    sub_1C6E49F48();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 2;
    swift_willThrow();
    return sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
  }

  result = sub_1C6E4A454(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
LABEL_76:
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4 & 1;
  return result;
}

uint64_t sub_1C6E45130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v512 = a5;
  v525 = a4;
  v494 = a3;
  v511 = a2;
  v516 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  *&v526 = *(v516 - 8);
  v6 = *(v526 + 64);
  MEMORY[0x1EEE9AC00](v516);
  v483 = &v437 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  v8 = *(*(v493 - 8) + 64);
  MEMORY[0x1EEE9AC00](v493);
  v496 = &v437 - v9;
  v462 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v462 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v462);
  v442 = (&v437 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v451 = (&v437 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v460 = &v437 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v444 = (&v437 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v457 = (&v437 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v456 = (&v437 - v21);
  v459 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v22 = *(*(v459 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v459);
  v443 = (&v437 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v449 = (&v437 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v455 = (&v437 - v27);
  v489 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  *(&v522 + 1) = *(v489 - 8);
  v28 = *(*(&v522 + 1) + 64);
  MEMORY[0x1EEE9AC00](v489);
  v470 = &v437 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F58, &qword_1C6EE94E8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v466 = &v437 - v32;
  v465 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
  v503 = *(v465 - 8);
  v33 = *(v503 + 64);
  v34 = MEMORY[0x1EEE9AC00](v465);
  v490 = (&v437 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v471 = &v437 - v36;
  v484 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v37 = *(v484 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v484);
  v473 = (&v437 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v475 = &v437 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v478 = &v437 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v469 = &v437 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v486 = &v437 - v49;
  v497 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  *&v522 = *(v497 - 8);
  v50 = *(v522 + 64);
  v51 = MEMORY[0x1EEE9AC00](v497);
  v468 = &v437 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v472 = &v437 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v477 = &v437 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v485 = &v437 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v467 = &v437 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v474 = &v437 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v476 = &v437 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v480 = &v437 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v488 = &v437 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v509 = &v437 - v70;
  v71 = sub_1C6EE4AE0();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v523 = &v437 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v75 = *(*(v74 - 8) + 64);
  v76 = MEMORY[0x1EEE9AC00](v74 - 8);
  v492 = &v437 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v445 = &v437 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v450 = &v437 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v452 = &v437 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v447 = &v437 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v458 = &v437 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v454 = &v437 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v446 = &v437 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v448 = &v437 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v453 = &v437 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v501 = &v437 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v502 = &v437 - v98;
  v99 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v100 = *(*(v99 - 8) + 64);
  v101 = MEMORY[0x1EEE9AC00](v99 - 8);
  v524 = (&v437 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v101);
  v519 = (&v437 - v103);
  v491 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v508 = *(v491 - 8);
  v104 = *(v508 + 64);
  v105 = MEMORY[0x1EEE9AC00](v491);
  v504 = &v437 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v500 = &v437 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v111 = &v437 - v110;
  MEMORY[0x1EEE9AC00](v109);
  v507 = &v437 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  v114 = *(*(v113 - 8) + 64);
  v115 = MEMORY[0x1EEE9AC00](v113 - 8);
  v510 = (&v437 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v115);
  v520 = (&v437 - v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v119 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118 - 8);
  v121 = &v437 - v120;
  v122 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v123 = *(v122 - 8);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v126 = &v437 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v495 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v127 = *(v495 + 32);
  v499 = a1;
  sub_1C6E4A29C(a1 + v127, v121, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v128 = *(v123 + 48);
  if (v128(v121, 1, v122) == 1)
  {
    *v126 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
    v129 = v126 + *(v122 + 20);
    sub_1C6EE4420();
    if (v128(v121, 1, v122) != 1)
    {
      sub_1C6E4A304(v121, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }
  }

  else
  {
    sub_1C6E4A384(v121, v126, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  }

  v130 = *v126;

  sub_1C6E4A454(v126, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v131 = 0;
  v132 = v130 + 64;
  v133 = 1 << *(v130 + 32);
  v134 = -1;
  if (v133 < 64)
  {
    v134 = ~(-1 << v133);
  }

  v135 = v134 & *(v130 + 64);
  v136 = (v133 + 63) >> 6;
  v498 = (v522 + 48);
  v482 = (*(&v522 + 1) + 56);
  v481 = (v37 + 56);
  v487 = (*(&v522 + 1) + 48);
  v479 = (v37 + 48);
  v464 = (v503 + 56);
  v463 = (v503 + 48);
  v137 = &qword_1EC1F7D30;
  v517 = (v526 + 48);
  v461 = xmmword_1C6EE6B50;
  v513 = v111;
  v138 = v520;
  v506 = v130 + 64;
  v518 = v130;
  v505 = v136;
  if (!v135)
  {
LABEL_9:
    if (v136 <= (v131 + 1))
    {
      v141 = v131 + 1;
    }

    else
    {
      v141 = v136;
    }

    v142 = v141 - 1;
    while (1)
    {
      v140 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        break;
      }

      if (v140 >= v136)
      {
        v139 = v111;
        v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
        v186 = v510;
        (*(*(v185 - 8) + 56))(v510, 1, 1, v185);
        v515 = 0;
        v514 = v142;
        v151 = v186;
        goto LABEL_18;
      }

      v135 = *(v132 + 8 * v140);
      ++v131;
      if (v135)
      {
        v139 = v111;
        v514 = v140;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:

    *&v528 = 0;
    *(&v528 + 1) = 0xE000000000000000;
    sub_1C6EE51B0();
    v401 = v142;
    MEMORY[0x1CCA57F60](0xD00000000000001ELL, 0x80000001C6EF9550);
    MEMORY[0x1CCA57F60](v137, v130);

    MEMORY[0x1CCA57F60](0x646E692074612022, 0xEB00000000207865);
    *&v527 = v126 - 1;
    v402 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v402);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF94C0);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000002ALL, 0x80000001C6EF94E0);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000001DLL, 0x80000001C6EF9510);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000001CLL, 0x80000001C6EF9530);
    sub_1C6EE4DE0();

    sub_1C6E00C60(v522, *(&v522 + 1), v521);
    v406 = *(&v528 + 1);
    v405 = v528;
    sub_1C6E4A454(v401, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    goto LABEL_252;
  }

  while (1)
  {
    v139 = v111;
    v514 = v131;
    v140 = v131;
LABEL_17:
    v515 = (v135 - 1) & v135;
    v143 = __clz(__rbit64(v135)) | (v140 << 6);
    v144 = (*(v130 + 48) + 16 * v143);
    v145 = *v144;
    v146 = v144[1];
    v147 = v507;
    sub_1C6E4A3EC(*(v130 + 56) + *(v508 + 72) * v143, v507, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v149 = *(v148 + 48);
    v150 = v510;
    *v510 = v145;
    v150[1] = v146;
    v151 = v150;
    sub_1C6E4A384(v147, v150 + v149, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    (*(*(v148 - 8) + 56))(v151, 0, 1, v148);

    v138 = v520;
LABEL_18:
    sub_1C6E4A18C(v151, v138);
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v153 = (*(*(v152 - 8) + 48))(v138, 1, v152);
    v154 = v511;
    if (v153 == 1)
    {

      return 1;
    }

    v137 = *v138;
    v130 = v138[1];
    v111 = v139;
    sub_1C6E4A384(v138 + *(v152 + 48), v139, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    if (!*(v154 + 16) || (v155 = sub_1C6DEC784(v137, v130), (v156 & 1) == 0))
    {
      *&v528 = 0;
      *(&v528 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();

      *&v528 = 0xD000000000000027;
      *(&v528 + 1) = 0x80000001C6EF9400;
      MEMORY[0x1CCA57F60](v137, v130);

      MEMORY[0x1CCA57F60](34, 0xE100000000000000);

      goto LABEL_251;
    }

    v157 = *(v154 + 56) + 24 * v155;
    v158 = *(v157 + 8);
    *&v522 = *v157;
    *(&v522 + 1) = v158;
    v159 = *(v157 + 16);
    v160 = v509;
    if ((v512 & 1) == 0)
    {
      goto LABEL_222;
    }

    v161 = v516;
    v521 = *(v157 + 16);
    if (((1 << v525) & 0x18) != 0)
    {
      if (v159)
      {
        v162 = 4;
      }

      else
      {
        v162 = 0;
      }

      if (((*(&v522 + 1) >> 60) & 3 | v162) == 3)
      {
        v163 = v502;
        sub_1C6E4A29C(v111, v502, &qword_1EC1F7A98, &qword_1C6EE7840);
        v164 = *v517;
        if ((*v517)(v163, 1, v161) == 1)
        {
          v166 = v522;

          sub_1C6E4A304(v163, &qword_1EC1F7A98, &qword_1C6EE7840);
        }

        else
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v166 = v522;

          if (EnumCaseMultiPayload == 3)
          {

            sub_1C6E4A384(v163, v519, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            *&v528 = v166;
            *(&v528 + 1) = *(&v522 + 1);
            v529 = v521;
            v126 = v500;
            sub_1C6E0F330(v500);
            v167 = v501;
            sub_1C6E4A29C(v126, v501, &qword_1EC1F7A98, &qword_1C6EE7840);
            sub_1C6E4A454(v126, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            if (v164(v167, 1, v161) == 1)
            {
              sub_1C6E4A304(v167, &qword_1EC1F7A98, &qword_1C6EE7840);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v168 = sub_1C6E4A384(v167, v524, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                v142 = *v519;
                v169 = *(*v519 + 16);
                if (v169)
                {
                  v170 = 0;
                  v111 = v142 + 32;
                  do
                  {
                    if (v170 >= *(v142 + 16))
                    {
                      goto LABEL_265;
                    }

                    v173 = *(v111 + 16 * v170);
                    v126 = *v524;
                    v130 = *(&v173 + 1);
                    v174 = v173;
                    v526 = v173;
                    v137 = &v437;
                    if (v525 == 3)
                    {
                      v528 = v173;
                      MEMORY[0x1EEE9AC00](v168);
                      *(&v437 - 2) = &v528;
                      sub_1C6E00D18(v174, v130);
                      v175 = v530;
                      v176 = sub_1C6EE2794(sub_1C6E4A4B4, (&v437 - 4), v126);
                      v530 = v175;
                      if ((v176 & 1) == 0)
                      {
                        *&v528 = 0;
                        *(&v528 + 1) = 0xE000000000000000;
                        sub_1C6EE51B0();
                        MEMORY[0x1CCA57F60](0xD00000000000001FLL, 0x80000001C6EF9710);
                        sub_1C6EE4AD0();
                        v525 = v174;
                        *&v527 = sub_1C6EE4AB0();
                        *(&v527 + 1) = v371;
                        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
                        v372 = sub_1C6EE4AF0();
                        MEMORY[0x1CCA57F60](v372);

                        MEMORY[0x1CCA57F60](0xD000000000000012, 0x80000001C6EF96F0);
                        v142 = 0;
                        v373 = *(v126 + 16);
                        v374 = (v126 + 40);
                        *&v526 = MEMORY[0x1E69E7CC0];
                        v520 = (v126 + 40);
LABEL_235:
                        v375 = &v374[2 * v142];
                        while (v373 != v142)
                        {
                          if (v142 >= *(v126 + 16))
                          {
                            goto LABEL_267;
                          }

                          ++v142;
                          v137 = v375 + 2;
                          v377 = *(v375 - 1);
                          v376 = *v375;
                          sub_1C6E00D18(v377, *v375);
                          sub_1C6EE4AD0();
                          v378 = sub_1C6EE4AB0();
                          v111 = v379;
                          sub_1C6DF1134(v377, v376);
                          v375 = v137;
                          if (v111)
                          {
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              *&v526 = sub_1C6ED8FB0(0, *(v526 + 16) + 1, 1, v526);
                            }

                            v381 = *(v526 + 16);
                            v380 = *(v526 + 24);
                            if (v381 >= v380 >> 1)
                            {
                              *&v526 = sub_1C6ED8FB0((v380 > 1), v381 + 1, 1, v526);
                            }

                            v382 = v526;
                            *(v526 + 16) = v381 + 1;
                            v383 = v382 + 16 * v381;
                            *(v383 + 32) = v378;
                            *(v383 + 40) = v111;
                            v374 = v520;
                            goto LABEL_235;
                          }
                        }

LABEL_244:
                        v384 = MEMORY[0x1CCA580B0](v526, MEMORY[0x1E69E6158]);
                        v386 = v385;

                        MEMORY[0x1CCA57F60](v384, v386);

                        sub_1C6DF1134(v525, v130);
                        sub_1C6E00C60(v522, *(&v522 + 1), v521);
                        v387 = v528;
                        sub_1C6E4A454(v513, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
                        sub_1C6E4A454(v519, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                        sub_1C6E4A454(v524, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                        v388 = *(v494 + 24);
                        *(v494 + 16) = v387;
                        goto LABEL_257;
                      }
                    }

                    else
                    {
                      v528 = v173;
                      MEMORY[0x1EEE9AC00](v168);
                      *(&v437 - 2) = &v528;
                      sub_1C6E00D18(v174, v130);
                      v171 = v530;
                      v172 = sub_1C6EE2794(sub_1C6E4A244, (&v437 - 4), v126);
                      v530 = v171;
                      if (v172)
                      {
                        *&v528 = 0;
                        *(&v528 + 1) = 0xE000000000000000;
                        sub_1C6EE51B0();
                        MEMORY[0x1CCA57F60](0xD000000000000023, 0x80000001C6EF96C0);
                        sub_1C6EE4AD0();
                        v525 = v174;
                        *&v527 = sub_1C6EE4AB0();
                        *(&v527 + 1) = v358;
                        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
                        v359 = sub_1C6EE4AF0();
                        MEMORY[0x1CCA57F60](v359);

                        MEMORY[0x1CCA57F60](0xD000000000000012, 0x80000001C6EF96F0);
                        v142 = 0;
                        v360 = *(v126 + 16);
                        v361 = (v126 + 40);
                        *&v526 = MEMORY[0x1E69E7CC0];
                        v520 = (v126 + 40);
LABEL_226:
                        v362 = &v361[2 * v142];
                        while (v360 != v142)
                        {
                          if (v142 >= *(v126 + 16))
                          {
                            goto LABEL_266;
                          }

                          ++v142;
                          v137 = v362 + 2;
                          v364 = *(v362 - 1);
                          v363 = *v362;
                          sub_1C6E00D18(v364, *v362);
                          sub_1C6EE4AD0();
                          v365 = sub_1C6EE4AB0();
                          v111 = v366;
                          sub_1C6DF1134(v364, v363);
                          v362 = v137;
                          if (v111)
                          {
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              *&v526 = sub_1C6ED8FB0(0, *(v526 + 16) + 1, 1, v526);
                            }

                            v368 = *(v526 + 16);
                            v367 = *(v526 + 24);
                            if (v368 >= v367 >> 1)
                            {
                              *&v526 = sub_1C6ED8FB0((v367 > 1), v368 + 1, 1, v526);
                            }

                            v369 = v526;
                            *(v526 + 16) = v368 + 1;
                            v370 = v369 + 16 * v368;
                            *(v370 + 32) = v365;
                            *(v370 + 40) = v111;
                            v361 = v520;
                            goto LABEL_226;
                          }
                        }

                        goto LABEL_244;
                      }
                    }

                    ++v170;
                    v168 = sub_1C6DF1134(v526, v130);
                  }

                  while (v169 != v170);
                }

                sub_1C6E00C60(v522, *(&v522 + 1), v521);
                v111 = v513;
                sub_1C6E4A454(v513, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
                sub_1C6E4A454(v519, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                sub_1C6E4A454(v524, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                goto LABEL_64;
              }

              sub_1C6E4A454(v167, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
            }

            *&v528 = 0;
            *(&v528 + 1) = 0xE000000000000000;
            sub_1C6EE51B0();
            v527 = v528;
            MEMORY[0x1CCA57F60](0xD000000000000040, 0x80000001C6EF9670);
            v395 = v522;
            v528 = v522;
            v396 = v521;
            v529 = v521;
            sub_1C6EE52F0();
            MEMORY[0x1CCA57F60](0xD000000000000029, 0x80000001C6EF9640);

            sub_1C6E00C60(v395, *(&v395 + 1), v396);
            v406 = *(&v527 + 1);
            v405 = v527;
            sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            v393 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
            v394 = v519;
            goto LABEL_256;
          }

          sub_1C6E4A454(v163, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        *&v528 = 0;
        *(&v528 + 1) = 0xE000000000000000;
        sub_1C6EE51B0();
        MEMORY[0x1CCA57F60](0xD00000000000003BLL, 0x80000001C6EF9600);
        MEMORY[0x1CCA57F60](v137, v130);

        MEMORY[0x1CCA57F60](0xD000000000000029, 0x80000001C6EF9640);

        sub_1C6E00C60(v166, *(&v522 + 1), v521);
LABEL_251:
        v406 = *(&v528 + 1);
        v405 = v528;
LABEL_252:
        v393 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
        v394 = v111;
        goto LABEL_256;
      }

      v389 = v522;
      v390 = v159;
      v391 = *(&v522 + 1);
      sub_1C6E00CBC(v522, *(&v522 + 1), v390);

      sub_1C6E49F48();
      swift_allocError();
      *v392 = 0xD000000000000045;
      *(v392 + 8) = 0x80000001C6EF95B0;
      *(v392 + 16) = 2;
      swift_willThrow();

      v355 = v389;
      v356 = v391;
      v357 = v390;
LABEL_223:
      sub_1C6E00C60(v355, v356, v357);
      return sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    }

    if (v525 != 5)
    {
LABEL_222:
      v352 = v522;
      sub_1C6E00CBC(v522, *(&v522 + 1), v159);

      *&v528 = 0;
      *(&v528 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0x6F69747265737341, 0xEF2065707974206ELL);
      *&v527 = v525;
      BYTE8(v527) = v512 & 1;
      sub_1C6EE52F0();
      MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF9430);
      v353 = v528;
      sub_1C6E49F48();
      swift_allocError();
      *v354 = v353;
      *(v354 + 16) = 2;
      swift_willThrow();

      v356 = *(&v352 + 1);
      v355 = v352;
      v357 = v159;
      goto LABEL_223;
    }

    v441 = v137;
    *&v526 = v130;
    v177 = *(v495 + 36);
    v178 = v499;
    sub_1C6E4A29C(v499 + v177, v509, &qword_1EC1F7F70, &qword_1C6EE9500);
    v179 = *v498;
    v180 = v497;
    v181 = (*v498)(v160, 1, v497);
    v182 = v159;
    v183 = v160;
    v184 = v181;
    sub_1C6E00CBC(v522, *(&v522 + 1), v182);
    if (v184 == 1)
    {

      sub_1C6E4A304(v183, &qword_1EC1F7F70, &qword_1C6EE9500);
      v111 = v513;
      goto LABEL_58;
    }

    sub_1C6E4A304(v183, &qword_1EC1F7F70, &qword_1C6EE9500);
    v440 = v177;
    v187 = v488;
    sub_1C6E4A29C(v178 + v177, v488, &qword_1EC1F7F70, &qword_1C6EE9500);
    v188 = v179;
    if (v179(v187, 1, v180) == 1)
    {
      v189 = v513;
      v190 = v485;
      sub_1C6EE4420();
      v191 = v187;
      v192 = v489;
      (*v482)(v190 + *(v180 + 20), 1, 1, v489);
      (*v481)(v190 + *(v180 + 24), 1, 1, v484);
      if (v188(v191, 1, v180) != 1)
      {
        sub_1C6E4A304(v488, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v189 = v513;
      v190 = v485;
      sub_1C6E4A384(v187, v485, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v192 = v489;
    }

    v193 = v190 + *(v180 + 20);
    v194 = v190;
    v195 = v486;
    sub_1C6E4A29C(v193, v486, &qword_1EC1F7F68, &qword_1C6EE94F8);
    sub_1C6E4A454(v194, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v196 = *v487;
    v197 = (*v487)(v195, 1, v192);
    sub_1C6E4A304(v195, &qword_1EC1F7F68, &qword_1C6EE94F8);
    if (v197 == 1)
    {

      v111 = v189;
      goto LABEL_58;
    }

    v439 = v196;
    v198 = v188;
    v199 = v440;
    v200 = v499;
    v201 = v480;
    sub_1C6E4A29C(v499 + v440, v480, &qword_1EC1F7F70, &qword_1C6EE9500);
    if (v198(v201, 1, v180) == 1)
    {
      v111 = v189;

      sub_1C6E4A304(v201, &qword_1EC1F7F70, &qword_1C6EE9500);
      goto LABEL_58;
    }

    sub_1C6E4A304(v201, &qword_1EC1F7F70, &qword_1C6EE9500);
    v202 = v476;
    sub_1C6E4A29C(v200 + v199, v476, &qword_1EC1F7F70, &qword_1C6EE9500);
    v203 = v198(v202, 1, v180);
    v204 = v479;
    v205 = v198;
    if (v203 == 1)
    {
      v206 = v477;
      sub_1C6EE4420();
      (*v482)(v206 + *(v180 + 20), 1, 1, v489);
      v207 = v484;
      (*v481)(v206 + *(v180 + 24), 1, 1, v484);
      v208 = v180;
      if (v198(v202, 1, v180) != 1)
      {
        sub_1C6E4A304(v202, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v206 = v477;
      sub_1C6E4A384(v202, v477, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v207 = v484;
      v208 = v180;
    }

    v209 = v206 + *(v208 + 24);
    v210 = v206;
    v211 = v478;
    sub_1C6E4A29C(v209, v478, &qword_1EC1F7F60, &qword_1C6EE94F0);
    sub_1C6E4A454(v210, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v212 = *v204;
    v213 = (*v204)(v211, 1, v207);
    sub_1C6E4A304(v211, &qword_1EC1F7F60, &qword_1C6EE94F0);
    if (v213 == 1)
    {

      v111 = v513;
      goto LABEL_58;
    }

    v227 = v212;
    v228 = v474;
    sub_1C6E4A29C(v499 + v440, v474, &qword_1EC1F7F70, &qword_1C6EE9500);
    v229 = v205(v228, 1, v208);
    v111 = v513;
    if (v229 == 1)
    {
      v230 = v472;
      sub_1C6EE4420();
      v231 = v489;
      (*v482)(v230 + *(v208 + 20), 1, 1);
      (*v481)(v230 + *(v208 + 24), 1, 1, v484);
      if (v205(v228, 1, v208) != 1)
      {
        sub_1C6E4A304(v474, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v230 = v472;
      sub_1C6E4A384(v228, v472, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v231 = v489;
    }

    v232 = v475;
    sub_1C6E4A29C(v230 + *(v497 + 24), v475, &qword_1EC1F7F60, &qword_1C6EE94F0);
    v233 = v484;
    if (v227(v232, 1, v484) == 1)
    {
      v234 = v473;
      *v473 = 0;
      *(v234 + 8) = 1;
      v235 = v234 + *(v233 + 20);
      sub_1C6EE4420();
      sub_1C6E4A454(v230, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v236 = *(v233 + 24);
      v237 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
      (*(*(v237 - 8) + 56))(v234 + v236, 1, 1, v237);
      v238 = v233;
      v239 = v234;
      if (v227(v475, 1, v238) != 1)
      {
        sub_1C6E4A304(v475, &qword_1EC1F7F60, &qword_1C6EE94F0);
      }
    }

    else
    {
      sub_1C6E4A454(v230, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v239 = v473;
      sub_1C6E4A384(v232, v473, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    }

    v240 = *v239;
    sub_1C6E4A454(v239, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    if (v240 != 5)
    {

      goto LABEL_58;
    }

    v241 = v467;
    sub_1C6E4A29C(v499 + v440, v467, &qword_1EC1F7F70, &qword_1C6EE9500);
    v242 = v497;
    if (v205(v241, 1, v497) == 1)
    {
      v243 = v468;
      sub_1C6EE4420();
      (*v482)(v243 + *(v242 + 20), 1, 1, v231);
      (*v481)(v243 + *(v242 + 24), 1, 1, v484);
      v244 = v205(v241, 1, v242);
      v245 = v470;
      v246 = v469;
      if (v244 != 1)
      {
        sub_1C6E4A304(v241, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v243 = v468;
      sub_1C6E4A384(v241, v468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v245 = v470;
      v246 = v469;
    }

    sub_1C6E4A29C(v243 + *(v242 + 20), v246, &qword_1EC1F7F68, &qword_1C6EE94F8);
    v247 = v439;
    if (v439(v246, 1, v231) == 1)
    {
      *v245 = MEMORY[0x1E69E7CC0];
      v248 = v245 + *(v231 + 20);
      sub_1C6EE4420();
      sub_1C6E4A454(v243, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v249 = v247(v246, 1, v231);
      v250 = v441;
      if (v249 != 1)
      {
        sub_1C6E4A304(v246, &qword_1EC1F7F68, &qword_1C6EE94F8);
      }
    }

    else
    {
      sub_1C6E4A454(v243, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      sub_1C6E4A384(v246, v245, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
      v250 = v441;
    }

    v251 = *v245;

    sub_1C6E4A454(v245, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    v252 = *(v251 + 16);
    v253 = (*(&v522 + 1) >> 60) & 3;
    if (v252)
    {
      v254 = 0;
      v255 = v251 + ((*(v503 + 80) + 32) & ~*(v503 + 80));
      if (v521)
      {
        v256 = 4;
      }

      else
      {
        v256 = 0;
      }

      v111 = v253 | v256;
      while (v254 < *(v251 + 16))
      {
        v247 = v490;
        sub_1C6E4A3EC(v255 + *(v503 + 72) * v254, v490, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
        v257 = *v247;
        if (v111 > 2)
        {
          if ((v111 - 4) < 2)
          {
            if (v257 == 7)
            {
              goto LABEL_107;
            }
          }

          else if (v111 == 3)
          {
            if (v257 == 6)
            {
              goto LABEL_107;
            }
          }

          else if (!v257)
          {
LABEL_107:

            v258 = v466;
            sub_1C6E4A384(v490, v466, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
            v259 = 0;
            goto LABEL_109;
          }
        }

        else if (v111)
        {
          if (v111 == 1)
          {
            if (v257 == 2)
            {
              goto LABEL_107;
            }
          }

          else if (v257 == 3)
          {
            goto LABEL_107;
          }
        }

        else if (v257 == 4)
        {
          goto LABEL_107;
        }

        ++v254;
        sub_1C6E4A454(v490, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
        if (v252 == v254)
        {
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_273:
      *&v528 = 0;
      *(&v528 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0xD00000000000001ELL, 0x80000001C6EF9550);
      MEMORY[0x1CCA57F60](v250, v526);

      MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
      *&v527 = v227;
      v407 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v407);

      MEMORY[0x1CCA57F60](0xD000000000000033, 0x80000001C6EF9570);
      v408 = v446;
      sub_1C6E4A29C(v111, v446, &qword_1EC1F7A98, &qword_1C6EE7840);
      if (v247(v408, 1, v254) == 1)
      {
        sub_1C6E4A304(v408, &qword_1EC1F7A98, &qword_1C6EE7840);
      }

      else
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v413 = v443;
          sub_1C6E4A384(v446, v443, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          goto LABEL_285;
        }

        sub_1C6E4A454(v446, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      v413 = v443;
      *v443 = MEMORY[0x1E69E7CC0];
      v414 = v413 + *(v459 + 20);
      sub_1C6EE4420();
LABEL_285:
      v415 = *v413;

      sub_1C6E4A454(v413, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v416 = *(v415 + 16);

      *&v527 = v416;
      v417 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v417);

      v418 = 0x746E656D656C6520;
      v419 = 0xE900000000000073;
      goto LABEL_322;
    }

LABEL_108:

    v259 = 1;
    v258 = v466;
LABEL_109:
    v260 = v465;
    (*v464)(v258, v259, 1, v465);
    v261 = (*v463)(v258, 1, v260);
    v111 = v513;
    if (v261 != 1)
    {
      break;
    }

    sub_1C6E4A304(v258, &qword_1EC1F7F58, &qword_1C6EE94E8);
LABEL_58:
    v528 = v522;
    v529 = v521;
    v214 = v504;
    sub_1C6E0F330(v504);
    v215 = *(v493 + 48);
    v216 = v496;
    sub_1C6E4A29C(v214, v496, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6E4A29C(v111, v216 + v215, &qword_1EC1F7A98, &qword_1C6EE7840);
    v217 = *v517;
    v218 = v516;
    v219 = (*v517)(v216, 1, v516);
    v220 = v492;
    if (v219 == 1)
    {
      if (v217(v216 + v215, 1, v218) == 1)
      {
        sub_1C6E4A304(v216, &qword_1EC1F7A98, &qword_1C6EE7840);
        v111 = v513;
        goto LABEL_63;
      }

      sub_1C6E00C60(v522, *(&v522 + 1), v521);
      sub_1C6E4A454(v504, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v399 = v513;
      v400 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
LABEL_261:
      sub_1C6E4A454(v399, v400);
      sub_1C6E4A304(v496, &qword_1EC1F7D20, &qword_1C6EE94E0);
      return 2;
    }

    sub_1C6E4A29C(v216, v492, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v217(v216 + v215, 1, v218) == 1)
    {

      sub_1C6E00C60(v522, *(&v522 + 1), v521);
      sub_1C6E4A454(v504, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E4A454(v513, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v400 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind;
      v399 = v220;
      goto LABEL_261;
    }

    v221 = v216 + v215;
    v222 = v483;
    sub_1C6E4A384(v221, v483, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v223 = sub_1C6EAA0D8(v220, v222);
    sub_1C6E4A454(v222, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E4A454(v220, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E4A304(v216, &qword_1EC1F7A98, &qword_1C6EE7840);
    v111 = v513;
    if ((v223 & 1) == 0)
    {

      sub_1C6E00C60(v522, *(&v522 + 1), v521);
      sub_1C6E4A454(v504, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      return 2;
    }

LABEL_63:
    v224 = *(v491 + 20);
    sub_1C6EE4430();
    sub_1C6E4A1FC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v225 = v504;
    v226 = sub_1C6EE4A50();
    sub_1C6E00C60(v522, *(&v522 + 1), v521);
    v126 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
    sub_1C6E4A454(v225, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    if ((v226 & 1) == 0)
    {

      return 2;
    }

LABEL_64:
    v130 = v518;
    v138 = v520;
LABEL_65:
    v132 = v506;
    v136 = v505;
    v137 = &qword_1EC1F7D30;
    v135 = v515;
    v131 = v514;
    if (!v515)
    {
      goto LABEL_9;
    }
  }

  v262 = v258;
  v142 = v471;
  result = sub_1C6E4A384(v262, v471, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
  if (v521)
  {
    v264 = 4;
  }

  else
  {
    v264 = 0;
  }

  v265 = v253 | v264;
  v254 = v516;
  if (v265 <= 3)
  {
    if (v265 > 0)
    {

      sub_1C6E00C60(v522, *(&v522 + 1), v521);
      goto LABEL_271;
    }

    v227 = *(v522 + 16);
    v270 = v453;
    sub_1C6E4A29C(v111, v453, &qword_1EC1F7A98, &qword_1C6EE7840);
    v247 = *v517;
    if ((*v517)(v270, 1, v254) == 1)
    {
      sub_1C6E4A304(v270, &qword_1EC1F7A98, &qword_1C6EE7840);
      v271 = v455;
      v138 = v520;
    }

    else
    {
      v277 = swift_getEnumCaseMultiPayload();
      v278 = v270;
      v271 = v455;
      v138 = v520;
      if (!v277)
      {
        sub_1C6E4A384(v278, v455, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_128:
        v280 = *v271;

        sub_1C6E4A454(v271, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v281 = *(v280 + 16);

        if (v227 != v281)
        {
          goto LABEL_273;
        }

        v282 = v526;
        v283 = v448;
        sub_1C6E4A29C(v111, v448, &qword_1EC1F7A98, &qword_1C6EE7840);
        if (v247(v283, 1, v254) == 1)
        {
          sub_1C6E4A304(v283, &qword_1EC1F7A98, &qword_1C6EE7840);
          v142 = v471;
          v284 = v449;
        }

        else
        {
          v289 = swift_getEnumCaseMultiPayload();
          v142 = v471;
          v284 = v449;
          if (!v289)
          {
            sub_1C6E4A384(v283, v449, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v130 = v282;
LABEL_140:
            v137 = v441;
            v291 = *v284;

            result = sub_1C6E4A454(v284, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v126 = 0;
            while (*(v522 + 16) != v126)
            {
              v292 = *(v291 + 16);
              if (v126 == v292)
              {
                break;
              }

              if (v126 >= v292)
              {
                __break(1u);
LABEL_325:
                __break(1u);
LABEL_326:
                __break(1u);
                goto LABEL_327;
              }

              v293 = *(v291 + 4 * v126 + 32);
              v294 = vabds_f32(v293, *(v522 + 32 + 4 * v126++));
              if (v294 > (*(v142 + 16) + (fabsf(v293) * *(v142 + 12))))
              {
                goto LABEL_268;
              }
            }

            goto LABEL_219;
          }

          sub_1C6E4A454(v283, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        v130 = v282;
        *v284 = MEMORY[0x1E69E7CC0];
        v290 = v284 + *(v459 + 20);
        sub_1C6EE4420();
        goto LABEL_140;
      }

      sub_1C6E4A454(v278, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v271 = MEMORY[0x1E69E7CC0];
    v279 = v271 + *(v459 + 20);
    sub_1C6EE4420();
    goto LABEL_128;
  }

  v266 = v460;
  if (v265 != 4)
  {
    v138 = v520;
    if (v265 == 5)
    {
      v267 = v522;
      v268 = *(&v522 + 1) >> 62;
      v438 = *(&v522 + 1) >> 62;
      if ((*(&v522 + 1) >> 62) > 1)
      {
        if (v268 == 2)
        {
          v287 = *(v522 + 16);
          v286 = *(v522 + 24);
          _VF = __OFSUB__(v286, v287);
          v269 = v286 - v287;
          if (_VF)
          {
            goto LABEL_330;
          }

          goto LABEL_175;
        }

        v440 = 0;
      }

      else
      {
        if (v268)
        {
          LODWORD(v269) = DWORD1(v522) - v522;
          if (__OFSUB__(DWORD1(v522), v522))
          {
            goto LABEL_331;
          }

          v269 = v269;
        }

        else
        {
          v269 = BYTE14(v522);
        }

LABEL_175:
        v440 = v269;
      }

      v317 = v452;
      sub_1C6E4A29C(v111, v452, &qword_1EC1F7A98, &qword_1C6EE7840);
      v318 = *v517;
      if ((*v517)(v317, 1, v516) == 1)
      {
        sub_1C6E4A304(v317, &qword_1EC1F7A98, &qword_1C6EE7840);
        goto LABEL_182;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C6E4A384(v317, v266, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      else
      {
        sub_1C6E4A454(v317, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_182:
        *v266 = v461;
        v319 = v266 + *(v462 + 20);
        sub_1C6EE4420();
      }

      v320 = v266;
      v321 = *v266;
      v322 = *(v266 + 8);
      sub_1C6E00D18(v321, v322);
      sub_1C6E4A454(v320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v323 = v322 >> 62;
      v439 = v318;
      if ((v322 >> 62) <= 1)
      {
        if (!v323)
        {
          v324 = BYTE6(v322);
          v325 = v451;
          v326 = v450;
          v327 = v516;
LABEL_192:
          if (v440 != v324)
          {
            goto LABEL_277;
          }

LABEL_195:
          v330 = v530;
          v331 = sub_1C6E1FDB0(v267, *(&v522 + 1) & 0xCFFFFFFFFFFFFFFFLL);
          if (!v330)
          {
            v332 = v331;
            sub_1C6E4A29C(v111, v326, &qword_1EC1F7A98, &qword_1C6EE7840);
            if (v439(v326, 1, v327) == 1)
            {
              sub_1C6E4A304(v326, &qword_1EC1F7A98, &qword_1C6EE7840);
              v314 = v441;
              goto LABEL_211;
            }

            v333 = swift_getEnumCaseMultiPayload();
            v314 = v441;
            if (v333 == 4)
            {
              sub_1C6E4A384(v326, v325, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              v316 = v526;
            }

            else
            {
              sub_1C6E4A454(v326, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_211:
              v316 = v526;
              *v325 = v461;
              v344 = v325 + *(v462 + 20);
              sub_1C6EE4420();
            }

            v345 = *v325;
            v346 = v325[1];
            sub_1C6E00D18(*v325, v346);
            sub_1C6E4A454(v325, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v347 = sub_1C6E1FDB0(v345, v346);
            v530 = 0;
            v126 = v347;
            result = sub_1C6DF1134(v345, v346);
            v348 = -*(v332 + 16);
            v340 = 8;
            v142 = v471;
            while (v340 - *(v332 + 16) != 8)
            {
              v349 = *(v126 + 16);
              if (v340 - 8 == v349)
              {
                break;
              }

              if (v340 - 8 >= v349)
              {
                goto LABEL_326;
              }

              v350 = *(v126 + 4 * v340);
              v351 = vabds_f32(v350, *(v332 + 4 * v340++));
              if (v351 > (*(v471 + 16) + (fabsf(v350) * *(v471 + 12))))
              {
                goto LABEL_208;
              }
            }

LABEL_218:

LABEL_219:

            sub_1C6E00C60(v522, *(&v522 + 1), v521);
            sub_1C6E4A454(v142, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
            sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            v130 = v518;
            goto LABEL_65;
          }

          sub_1C6E00C60(v522, *(&v522 + 1), v521);
          sub_1C6E4A454(v471, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          return sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        }

        result = sub_1C6DF1134(v321, v322);
        LODWORD(v324) = HIDWORD(v321) - v321;
        v327 = v516;
        if (__OFSUB__(HIDWORD(v321), v321))
        {
          goto LABEL_333;
        }

        v324 = v324;
        v267 = v522;
LABEL_191:
        v325 = v451;
        v326 = v450;
        goto LABEL_192;
      }

      if (v323 == 2)
      {
        v329 = *(v321 + 16);
        v328 = *(v321 + 24);
        result = sub_1C6DF1134(v321, v322);
        v324 = v328 - v329;
        if (__OFSUB__(v328, v329))
        {
          goto LABEL_332;
        }

        v267 = v522;
        v327 = v516;
        goto LABEL_191;
      }

      v325 = v451;
      v326 = v450;
      v327 = v516;
      if (!v440)
      {
        goto LABEL_195;
      }

LABEL_277:
      v411 = 0xD000000000000011;
      *&v528 = 0;
      *(&v528 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
      MEMORY[0x1CCA57F60](v441, v526);

      result = MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
      if (v438 > 1)
      {
        v412 = 0;
        if (v438 == 2)
        {
          v422 = *(v522 + 16);
          v421 = *(v522 + 24);
          _VF = __OFSUB__(v421, v422);
          v412 = v421 - v422;
          if (_VF)
          {
            __break(1u);
            goto LABEL_292;
          }
        }
      }

      else
      {
        if (v438)
        {
          goto LABEL_303;
        }

        v412 = BYTE14(v522);
      }

LABEL_305:
      *&v527 = v412;
      v428 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v428);

      MEMORY[0x1CCA57F60](v411 + 33, 0x80000001C6EF9480);
      v429 = v445;
      sub_1C6E4A29C(v513, v445, &qword_1EC1F7A98, &qword_1C6EE7840);
      if (v439(v429, 1, v516) == 1)
      {
        sub_1C6E4A304(v429, &qword_1EC1F7A98, &qword_1C6EE7840);
        goto LABEL_310;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v430 = v442;
        sub_1C6E4A384(v445, v442, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      else
      {
        sub_1C6E4A454(v445, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_310:
        v430 = v442;
        *v442 = v461;
        v431 = v430 + *(v462 + 20);
        sub_1C6EE4420();
      }

      v432 = *v430;
      v425 = v430[1];
      sub_1C6E00D18(*v430, v425);
      sub_1C6E4A454(v430, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v433 = v425 >> 62;
      if ((v425 >> 62) <= 1)
      {
        if (v433)
        {
          result = sub_1C6DF1134(v432, v425);
          LODWORD(v426) = HIDWORD(v432) - v432;
          if (!__OFSUB__(HIDWORD(v432), v432))
          {
            goto LABEL_320;
          }

          goto LABEL_335;
        }

LABEL_313:
        v426 = BYTE6(v425);
        goto LABEL_321;
      }

      if (v433 == 2)
      {
        v435 = *(v432 + 16);
        v434 = *(v432 + 24);
        sub_1C6DF1134(v432, v425);
        v426 = v434 - v435;
        if (!__OFSUB__(v434, v435))
        {
LABEL_321:
          *&v527 = v426;
          v436 = sub_1C6EE5460();
          MEMORY[0x1CCA57F60](v436);

          v418 = 0x736574796220;
          v419 = 0xE600000000000000;
LABEL_322:
          MEMORY[0x1CCA57F60](v418, v419);

          sub_1C6E00C60(v522, *(&v522 + 1), v521);
          v406 = *(&v528 + 1);
          v405 = v528;
          sub_1C6E4A454(v471, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          v393 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
          v394 = v513;
LABEL_256:
          sub_1C6E4A454(v394, v393);
          v397 = v494;
          v398 = *(v494 + 24);
          *(v494 + 16) = v405;
          *(v397 + 24) = v406;
LABEL_257:

          return 2;
        }

        __break(1u);
      }

LABEL_318:
      v426 = 0;
      goto LABEL_321;
    }

LABEL_271:
    sub_1C6E4A454(v471, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return 2;
  }

  v272 = *(v522 + 16);
  v273 = v454;
  sub_1C6E4A29C(v111, v454, &qword_1EC1F7A98, &qword_1C6EE7840);
  v274 = *v517;
  v275 = (*v517)(v273, 1, v254);
  v138 = v520;
  if (v275 == 1)
  {
    sub_1C6E4A304(v273, &qword_1EC1F7A98, &qword_1C6EE7840);
    v276 = v456;
    goto LABEL_148;
  }

  v285 = swift_getEnumCaseMultiPayload();
  v276 = v456;
  if (v285 == 4)
  {
    sub_1C6E4A384(v273, v456, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    sub_1C6E4A454(v273, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_148:
    *v276 = v461;
    v295 = v276 + *(v462 + 20);
    sub_1C6EE4420();
  }

  v296 = *v276;
  v297 = v276[1];
  sub_1C6E00D18(*v276, v297);
  sub_1C6E4A454(v276, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v298 = v297 >> 62;
  if ((v297 >> 62) > 1)
  {
    if (v298 == 2)
    {
      v302 = *(v296 + 16);
      v301 = *(v296 + 24);
      result = sub_1C6DF1134(v296, v297);
      v300 = v301 - v302;
      if (__OFSUB__(v301, v302))
      {
        goto LABEL_328;
      }

      v142 = v471;
    }

    else
    {
      v300 = 0;
    }

    v303 = v457;
    v299 = v458;
  }

  else
  {
    v299 = v458;
    if (v298)
    {
      result = sub_1C6DF1134(v296, v297);
      LODWORD(v300) = HIDWORD(v296) - v296;
      if (__OFSUB__(HIDWORD(v296), v296))
      {
        goto LABEL_329;
      }

      v300 = v300;
      v142 = v471;
    }

    else
    {
      v300 = BYTE6(v297);
    }

    v303 = v457;
  }

  if (v272 == v300 / 2)
  {
    if (v272)
    {
      *&v528 = MEMORY[0x1E69E7CC0];
      result = sub_1C6E15AF0(0, v272 & ~(v272 >> 63), 0);
      if (v272 < 1)
      {
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
        goto LABEL_334;
      }

      v304 = v528;
      v305 = (v522 + 32);
      v306 = *(v528 + 16);
      do
      {
        _H8 = *v305;
        *&v528 = v304;
        v308 = *(v304 + 24);
        if (v306 >= v308 >> 1)
        {
          sub_1C6E15AF0((v308 > 1), v306 + 1, 1);
          v304 = v528;
        }

        __asm { FCVT            S0, H8 }

        *(v304 + 16) = v306 + 1;
        *(v304 + 4 * v306 + 32) = _S0;
        ++v305;
        ++v306;
        --v272;
      }

      while (v272);
      v142 = v471;
      v313 = v516;
      v303 = v457;
      v299 = v458;
    }

    else
    {
      v304 = MEMORY[0x1E69E7CC0];
      v313 = v516;
    }

    sub_1C6E4A29C(v111, v299, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v274(v299, 1, v313) == 1)
    {
      sub_1C6E4A304(v299, &qword_1EC1F7A98, &qword_1C6EE7840);
      v314 = v441;
      goto LABEL_201;
    }

    v315 = swift_getEnumCaseMultiPayload();
    v314 = v441;
    if (v315 == 4)
    {
      sub_1C6E4A384(v299, v303, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v316 = v526;
    }

    else
    {
      sub_1C6E4A454(v299, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_201:
      v316 = v526;
      *v303 = v461;
      v334 = v303 + *(v462 + 20);
      sub_1C6EE4420();
    }

    v335 = *v303;
    v336 = v303[1];
    sub_1C6E00D18(*v303, v336);
    sub_1C6E4A454(v303, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v337 = v530;
    v338 = sub_1C6E1FDB0(v335, v336);
    v530 = v337;
    if (!v337)
    {
      v126 = v338;
      result = sub_1C6DF1134(v335, v336);
      v339 = -*(v304 + 16);
      v340 = 8;
      while (v340 - *(v304 + 16) != 8)
      {
        v341 = *(v126 + 16);
        if (v340 - 8 == v341)
        {
          break;
        }

        if (v340 - 8 >= v341)
        {
          goto LABEL_325;
        }

        v342 = *(v126 + 4 * v340);
        v343 = vabds_f32(v342, *(v304 + 4 * v340++));
        if (v343 > (*(v142 + 16) + (fabsf(v342) * *(v142 + 12))))
        {
LABEL_208:

          *&v528 = 0;
          *(&v528 + 1) = 0xE000000000000000;
          sub_1C6EE51B0();
          v403 = v142;
          MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
          MEMORY[0x1CCA57F60](v314, v316);

          MEMORY[0x1CCA57F60](0x646E692074612022, 0xEB00000000207865);
          *&v527 = v340 - 9;
          v404 = sub_1C6EE5460();
          MEMORY[0x1CCA57F60](v404);

          MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF94C0);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000002ALL, 0x80000001C6EF94E0);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000001DLL, 0x80000001C6EF9510);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000001CLL, 0x80000001C6EF9530);
          sub_1C6EE4DE0();

          sub_1C6E00C60(v522, *(&v522 + 1), v521);
          v406 = *(&v528 + 1);
          v405 = v528;
          sub_1C6E4A454(v403, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          goto LABEL_252;
        }
      }

      goto LABEL_218;
    }

    sub_1C6DF1134(v335, v336);

    sub_1C6E00C60(v522, *(&v522 + 1), v521);
    sub_1C6E4A454(v142, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    return sub_1C6E4A454(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  }

  *&v528 = 0;
  *(&v528 + 1) = 0xE000000000000000;
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
  MEMORY[0x1CCA57F60](v250, v526);

  MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
  *&v527 = v272;
  v409 = sub_1C6EE5460();
  MEMORY[0x1CCA57F60](v409);

  MEMORY[0x1CCA57F60](0xD000000000000032, 0x80000001C6EF9480);
  v410 = v447;
  sub_1C6E4A29C(v111, v447, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v274(v410, 1, v516) == 1)
  {
    sub_1C6E4A304(v410, &qword_1EC1F7A98, &qword_1C6EE7840);
    goto LABEL_293;
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v420 = v444;
    sub_1C6E4A384(v447, v444, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_294;
  }

LABEL_292:
  sub_1C6E4A454(v447, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_293:
  v420 = v444;
  *v444 = v461;
  v423 = v420 + *(v462 + 20);
  sub_1C6EE4420();
LABEL_294:
  v424 = *v420;
  v425 = v420[1];
  sub_1C6E00D18(*v420, v425);
  sub_1C6E4A454(v420, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v426 = v425 >> 62;
  if ((v425 >> 62) > 1)
  {
    goto LABEL_299;
  }

  if (!v426)
  {
    goto LABEL_313;
  }

  sub_1C6DF1134(v424, v425);
  LODWORD(v426) = HIDWORD(v424) - v424;
  if (!__OFSUB__(HIDWORD(v424), v424))
  {
LABEL_320:
    v426 = v426;
    goto LABEL_321;
  }

  __break(1u);
LABEL_299:
  if (v426 != 2)
  {
    goto LABEL_318;
  }

  v427 = *(v424 + 16);
  v411 = *(v424 + 24);
  result = sub_1C6DF1134(v424, v425);
  v426 = v411 - v427;
  if (!__OFSUB__(v411, v427))
  {
    goto LABEL_321;
  }

  __break(1u);
LABEL_303:
  LODWORD(v412) = DWORD1(v522) - v522;
  if (!__OFSUB__(DWORD1(v522), v522))
  {
    v412 = v412;
    goto LABEL_305;
  }

LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
  return result;
}