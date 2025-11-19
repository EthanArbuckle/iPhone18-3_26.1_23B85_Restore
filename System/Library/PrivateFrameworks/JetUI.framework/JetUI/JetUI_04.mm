id sub_1BAD51CE8(void *a1)
{
  v3 = [v1 length];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while ([a1 characterIsMember_])
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  return [v1 deleteCharactersInRange_];
}

uint64_t sub_1BAD51DB4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1BAD9D6B8();
    v5 = v4;
    v6 = sub_1BAD9D728();
    v8 = v7;
    v9 = MEMORY[0x1BFB02D40](v3, v5, v6, v7);
    sub_1BAD53654(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1BAD53654(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1BAD9D698();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BAD52CF4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1BAD53654(v3, v5, v2 != 0);
  return v12;
}

uint64_t DSTriggerMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t PostCollectionAction.execute(_:)(uint64_t a1)
{
  if (*v1)
  {
    return (*v1)() & 1;
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_1BAD208EC();
  sub_1BAD10780();
  v6 = sub_1BAD9D338();

  v7 = sub_1BAD51DB4(v6);

  if (!v7)
  {
    return 0;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v9 = [v8 keyWindow]) == 0)
  {

    return 0;
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD68);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BAD9F5A0;
  v12 = sub_1BAD9C2C8();
  *(v11 + 56) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 32));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
  v14 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v15 = sub_1BAD9D168();

  v16 = [v14 initWithActivityItems:v15 applicationActivities:0];

  v17 = [v10 rootViewController];
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v16 animated:1 completion:0];
  }

  return 1;
}

uint64_t DSCore.register(infoProvider:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BAD53114(v4, v1, v2, v3);
}

Swift::Bool __swiftcall DSCore.trigger()()
{
  v2 = v0;
  v3 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = 0;
  v67 = sub_1BAD9C2C8();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - v7;
  v8 = v0[10];
  v9 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v8);
  (*(v9 + 24))(v8, v9);
  v10 = v0[10];
  v11 = v0[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v74 = (*(v11 + 16))(v10, v11);
  v12 = *(v74 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v74 + 40);
    while (v13 < v12)
    {
      v15 = v13 + 1;
      v17 = *(v14 - 1);
      v16 = *v14;
      v84[0] = 1;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1BAD14B3C(v17, v16);
      sub_1BAD9D7E8();

      v81 = 0x68736E6565726373;
      v82 = 0xEB000000005B746FLL;
      v77[0] = v13;
      v18 = sub_1BAD9DA48();
      MEMORY[0x1BFB026B0](v18);

      MEMORY[0x1BFB026B0](11869, 0xE200000000000000);
      v19 = v0[10];
      v20 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v19);
      v21 = (*(v20 + 8))(v19, v20);
      MEMORY[0x1BFB026B0](v21);

      v22 = v81;
      v1 = v82;
      v24 = v0[5];
      v23 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v24);
      (*(v23 + 16))(v17, v16, v84, v22, v1, v24, v23);
      sub_1BAD14AE8(v17, v16);

      v12 = *(v74 + 16);
      v14 += 2;
      v13 = v15;
      if (v15 == v12)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_18:
    v52 = sub_1BAD9CDF8();
    __swift_project_value_buffer(v52, qword_1EBC357E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
    sub_1BAD9C848();
    sub_1BAD9C838();
    swift_getErrorValue();
    v53 = v75;
    v54 = v76;
    *(&v83[0] + 1) = v76;
    v55 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v54 - 8) + 16))(v55, v53, v54);
    sub_1BAD9C808();
    sub_1BAD1A420(&v81, &qword_1EBC2A120);
    sub_1BAD9C838();
    sub_1BAD9C868();
    sub_1BAD9CCB8();

    v56 = 0;
    return v56 & 1;
  }

LABEL_5:

  v25 = v0[1];
  v28 = *(v25 + 64);
  v27 = v25 + 64;
  v26 = v28;
  v29 = 1 << *(v0[1] + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v32 = (v29 + 63) >> 6;
  v72 = v2[1];

  v33 = 0;
  v71 = v27;
  v70 = v32;
  if (v31)
  {
    while (1)
    {
      v34 = v33;
LABEL_12:
      v35 = __clz(__rbit64(v31)) | (v34 << 6);
      v36 = (*(v72 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      sub_1BAD14A3C(*(v72 + 56) + 40 * v35, v83);
      v74 = v37;
      v77[0] = v37;
      v77[1] = v38;
      sub_1BAD0B40C(v83, v78);
      v39 = v79;
      v40 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v41 = *(v40 + 16);

      v42 = v73;
      v43 = v41(v39, v40);
      v73 = v42;
      if (v42)
      {
        break;
      }

      v1 = v43;
      v45 = v44;
      v31 &= v31 - 1;
      v84[0] = 0;
      v46 = v2[5];
      v47 = v2[6];
      __swift_mutable_project_boxed_opaque_existential_1((v2 + 2), v46);
      (*(v47 + 16))(v1, v45, v84, v74, v38, v46, v47);
      sub_1BAD14AE8(v1, v45);
      sub_1BAD1A420(v77, &qword_1EBC2AD70);
      v33 = v34;
      v27 = v71;
      v32 = v70;
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    sub_1BAD1A420(v77, &qword_1EBC2AD70);
    v1 = v73;
LABEL_17:
    if (qword_1EBC29C50 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  while (1)
  {
LABEL_9:
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v27 + 8 * v34);
    ++v33;
    if (v31)
    {
      goto LABEL_12;
    }
  }

  v48 = v2[5];
  v49 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v48);
  v50 = v69;
  v51 = v73;
  (*(v49 + 24))(v48, v49);
  if (v51)
  {
    v1 = v51;
    goto LABEL_17;
  }

  v57 = v66;
  v58 = v65;
  v59 = v50;
  v60 = v67;
  (*(v66 + 32))(v65, v59, v67);
  v61 = v2[12];
  v62 = v2[13];
  v81 = v61;
  v82 = v62;
  sub_1BAD31584(v61);
  v56 = PostCollectionAction.execute(_:)(v58);
  sub_1BAD17DC0(v61);
  (*(v57 + 8))(v58, v60);
  return v56 & 1;
}

uint64_t static DSCore.deepshot(in:using:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a1)
  {
    v13 = *a2;
    return sub_1BAD52B40(&v13, a3);
  }

  else
  {
    *(a3 + 88) = &off_1F38E7C50;
    v6 = MEMORY[0x1E69E7CC0];
    *(a3 + 56) = MEMORY[0x1E69E7CC0];
    *(a3 + 64) = 6778480;
    *(a3 + 72) = 0xE300000000000000;
    *(a3 + 80) = &type metadata for DSScreenshotCapturer;
    v7 = sub_1BAD1F7B4(v6);
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    *(a3 + 40) = &type metadata for DSPNGPackager;
    *(a3 + 48) = &off_1F38E7AF0;
    v9 = swift_allocObject();
    v9[2] = 0x616B636150474E50;
    v9[3] = 0xEB00000000726567;
    v9[4] = v7;
    v9[5] = v8;
    *(a3 + 8) = MEMORY[0x1E69E7CC8];
    *(a3 + 16) = v9;
    *a3 = v4;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    sub_1BAD52EF4(0xD000000000000022, 0x80000001BADAAA90, a3);
    if (qword_1EBC29C18 != -1)
    {
      swift_once();
    }

    v10 = qword_1EBC2A868;
    v11 = unk_1EBC2A870;
    v12 = qword_1EBC2A878;

    return sub_1BAD53000(v10, v11, v12, a3);
  }
}

uint64_t sub_1BAD52B40@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 88) = &off_1F38E7C50;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = 6778480;
  *(a2 + 72) = 0xE300000000000000;
  *(a2 + 80) = &type metadata for DSScreenshotCapturer;
  v5 = type metadata accessor for DSZipPackager();
  *(a2 + 40) = v5;
  *(a2 + 48) = &off_1F38EBA98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 16));
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_1BAD9C298();
  v9 = v5[5];
  *(boxed_opaque_existential_0 + v9) = sub_1BAD1FD00(v4);
  v10 = v5[6];
  *(boxed_opaque_existential_0 + v10) = sub_1BAD1FD00(v4);
  v11 = boxed_opaque_existential_0 + v5[7];
  strcpy(v11, "DSZipPackager");
  *(v11 + 7) = -4864;
  *(a2 + 8) = MEMORY[0x1E69E7CC8];
  *a2 = v3;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  sub_1BAD52EF4(0xD000000000000022, 0x80000001BADAAA90, a2);
  if (qword_1EBC29C18 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBC2A868;
  v13 = unk_1EBC2A870;
  v14 = qword_1EBC2A878;

  return sub_1BAD53000(v12, v13, v14, a2);
}

void sub_1BAD52CF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1BFB02D70](a1, a2, v7);
      sub_1BAD208EC();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1BAD208EC();
    if (sub_1BAD9D6E8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1BAD9D6F8();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1BAD9D558();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1BAD9D568();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1BAD52EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = &type metadata for DSAccessibilityDiagnosticCollector;
  v13[4] = &protocol witness table for DSAccessibilityDiagnosticCollector;
  v13[0] = a1;
  v13[1] = a2;
  v5 = *(a3 + 8);
  v6 = *(v5 + 16);

  if (v6 && (v7 = sub_1BAD2D7C4(a1, a2), (v8 & 1) != 0))
  {
    sub_1BAD14A3C(*(v5 + 56) + 40 * v7, v11);
    sub_1BAD1A420(v11, &qword_1EBC2A448);
    v9 = 0;
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1BAD1A420(v11, &qword_1EBC2A448);
    sub_1BAD14A3C(v13, v11);

    sub_1BAD20D40(v11, a1, a2);
    v9 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_1BAD53000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for DSLocalizationDiagnosticsCollector;
  v14[4] = &protocol witness table for DSLocalizationDiagnosticsCollector;
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v6 = *(a4 + 8);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1BAD2D7C4(a2, a3), (v9 & 1) != 0))
  {
    sub_1BAD14A3C(*(v6 + 56) + 40 * v8, v12);
    sub_1BAD1A420(v12, &qword_1EBC2A448);
    v10 = 0;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1BAD1A420(v12, &qword_1EBC2A448);
    sub_1BAD14A3C(v14, v12);

    sub_1BAD20D40(v12, a2, a3);
    v10 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t sub_1BAD53114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v9 = *(a4 + 8);
  v10 = v9(a3, a4);
  v12 = *(a2 + 8);
  if (!*(v12 + 16))
  {

    goto LABEL_5;
  }

  v13 = sub_1BAD2D7C4(v10, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_5:
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1BAD1A420(v21, &qword_1EBC2A448);
    v17 = v9(a3, a4);
    v19 = v18;
    sub_1BAD14A3C(v23, v21);
    sub_1BAD20D40(v21, v17, v19);
    v16 = 1;
    goto LABEL_6;
  }

  sub_1BAD14A3C(*(v12 + 56) + 40 * v13, v21);
  sub_1BAD1A420(v21, &qword_1EBC2A448);
  v16 = 0;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v16;
}

unint64_t sub_1BAD532A4()
{
  result = qword_1EBC2AD78;
  if (!qword_1EBC2AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD78);
  }

  return result;
}

unint64_t sub_1BAD532FC()
{
  result = qword_1EBC2AD80;
  if (!qword_1EBC2AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD80);
  }

  return result;
}

unint64_t sub_1BAD53354()
{
  result = qword_1EBC2AD88;
  if (!qword_1EBC2AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AD88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI20PostCollectionActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BAD534BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD5350C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BAD53560(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BAD53590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BAD535D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD53654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ZStack.add(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Measurable.placeable.getter(v5, v6, v8);
  ZStack.add(_:with:)(v8, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ZStack.adding(_:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Measurable.placeable.getter(v9, v10, v12);
  sub_1BAD31594(v5, a4);
  ZStack.add(_:with:)(v12, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t ZStack.insert(_:at:with:)(void *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Measurable.placeable.getter(v7, v8, v10);
  ZStack.insert(_:at:with:)(v10, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ZStack.inserting(_:at:with:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  Measurable.placeable.getter(v11, v12, v14);
  sub_1BAD31594(v6, a5);
  ZStack.insert(_:at:with:)(v14, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

double ImageAppearance.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BADA5430;
  return result;
}

id ImageAppearance.symbolConfiguration.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id ImageAppearance.withSymbolConfiguration(_:)@<X0>(id a1@<X0>, id *a2@<X8>)
{
  v3 = *(v2 + 8);
  *a2 = a1;
  a2[1] = v3;
  return a1;
}

id ImageAppearance.withScaling(_:)@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  *a2 = *v2;
  a2[1] = v3;
  return v4;
}

BOOL _s5JetUI15ImageAppearanceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_1BAD53B24();
      v6 = v4;
      v7 = v2;
      v8 = sub_1BAD9D568();

      if (v8)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_1BAD53A58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BAD53AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1BAD53B24()
{
  result = qword_1EBC2AD90;
  if (!qword_1EBC2AD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC2AD90);
  }

  return result;
}

double AppStore.CenteredThreeLineTextLayout.init(primaryText:secondaryText:secondarySpace:numberOfLines:)@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1BAD0B40C(a1, v15);
  sub_1BAD0B40C(a2, v16 + 8);
  sub_1BAD0B40C(a3, v17);
  *(&v18 + 1) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD98);
  v9 = swift_allocObject();
  v10 = v17[0];
  v9[5] = v16[2];
  v9[6] = v10;
  v11 = v18;
  v9[7] = v17[1];
  v9[8] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  result = *v16;
  v14 = v16[1];
  v9[3] = v16[0];
  v9[4] = v14;
  *a5 = v9;
  return result;
}

uint64_t AppStore.CenteredThreeLineTextLayout.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t AppStore.CenteredThreeLineTextLayout.primaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD53D60(v3 + 16, v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_1BAD0B40C(a1, v11);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD53D98(v11, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD98);
    v6 = swift_allocObject();
    v7 = v11[5];
    v6[5] = v11[4];
    v6[6] = v7;
    v8 = v11[7];
    v6[7] = v11[6];
    v6[8] = v8;
    v9 = v11[1];
    v6[1] = v11[0];
    v6[2] = v9;
    v10 = v11[3];
    v6[3] = v11[2];
    v6[4] = v10;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.CenteredThreeLineTextLayout.primaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  return sub_1BAD53E64;
}

uint64_t AppStore.CenteredThreeLineTextLayout.secondaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 56, a1);
}

uint64_t AppStore.CenteredThreeLineTextLayout.secondaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD53D60(v3 + 16, v11);
  __swift_destroy_boxed_opaque_existential_1(v12 + 8);
  sub_1BAD0B40C(a1, v12 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD53D98(v11, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD98);
    v6 = swift_allocObject();
    v7 = v12[3];
    v6[5] = v12[2];
    v6[6] = v7;
    v8 = v12[5];
    v6[7] = v12[4];
    v6[8] = v8;
    v9 = v11[1];
    v6[1] = v11[0];
    v6[2] = v9;
    v10 = v12[1];
    v6[3] = v12[0];
    v6[4] = v10;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.CenteredThreeLineTextLayout.secondaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 56, v4);
  return sub_1BAD54054;
}

void sub_1BAD5406C(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1BAD14A3C(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t AppStore.CenteredThreeLineTextLayout.secondarySpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 96, a1);
}

uint64_t AppStore.CenteredThreeLineTextLayout.secondarySpace.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD53D60(v3 + 16, v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1BAD0B40C(a1, v12);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD53D98(v11, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD98);
    v6 = swift_allocObject();
    v7 = v12[0];
    v6[5] = v11[4];
    v6[6] = v7;
    v8 = v12[2];
    v6[7] = v12[1];
    v6[8] = v8;
    v9 = v11[1];
    v6[1] = v11[0];
    v6[2] = v9;
    v10 = v11[3];
    v6[3] = v11[2];
    v6[4] = v10;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.CenteredThreeLineTextLayout.secondarySpace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 96, v4);
  return sub_1BAD542C0;
}

uint64_t AppStore.CenteredThreeLineTextLayout.numberOfLines.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 136);
}

uint64_t AppStore.CenteredThreeLineTextLayout.numberOfLines.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD53D60(v3 + 16, v11);
  *(&v12 + 1) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1BAD53D98(v11, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AD98);
    v6 = swift_allocObject();
    v7 = v11[5];
    v6[5] = v11[4];
    v6[6] = v7;
    v8 = v12;
    v6[7] = v11[6];
    v6[8] = v8;
    v9 = v11[1];
    v6[1] = v11[0];
    v6[2] = v9;
    v10 = v11[3];
    v6[3] = v11[2];
    v6[4] = v10;

    *v1 = v6;
  }

  return result;
}

void (*AppStore.CenteredThreeLineTextLayout.numberOfLines.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 136);
  return sub_1BAD5448C;
}

void sub_1BAD5448C(uint64_t a1)
{
  v1 = *a1;
  AppStore.CenteredThreeLineTextLayout.numberOfLines.setter(*(*a1 + 24));

  free(v1);
}

double AppStore.CenteredThreeLineTextLayout.placeChildren(relativeTo:in:)@<D0>(void *a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v146.size.height = a6;
  v146.size.width = a5;
  v146.origin.y = a4;
  v146.origin.x = a3;
  v9 = sub_1BAD9DA68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v6;
  swift_beginAccess();
  sub_1BAD14A3C(v13 + 16, &v148);
  d = v148.d;
  tx = v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  if ((*(*&tx + 88))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx)))
  {
    __swift_destroy_boxed_opaque_existential_1(&v148);
LABEL_4:
    sub_1BAD14A3C(v13 + 16, &v148);
    v19 = v148.d;
    v20 = v148.tx;
    __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
    (*(*&v20 + 24))(1, COERCE_CGFLOAT(*&v19), COERCE_CGFLOAT(*&v20));
    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_1BAD14A3C(v13 + 56, &v148);
    v21 = v148.d;
    v22 = v148.tx;
    __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
    (*(*&v22 + 24))(1, COERCE_CGFLOAT(*&v21), COERCE_CGFLOAT(*&v22));
    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_1BAD14A3C(v13 + 16, &v148);
    v23 = v148.d;
    v24 = v148.tx;
    __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
    width = v146.size.width;
    height = v146.size.height;
    v142 = (*(*(*(*&v24 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v23), v146.size.width, v146.size.height);
    v145 = v27;
    v139 = v28;
    v144 = v29;
    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_1BAD14A3C(v13 + 56, &v148);
    v30 = v148.d;
    v31 = v148.tx;
    __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
    v32.n128_f64[0] = width;
    v33.n128_f64[0] = height;
    v34 = (*(*(*(*&v31 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v30), v32, v33);
    goto LABEL_9;
  }

  sub_1BAD14A3C(v13 + 56, &v147);
  v16 = v147.d;
  v17 = v147.tx;
  __swift_project_boxed_opaque_existential_1(&v147, *&v147.d);
  v18 = (*(*&v17 + 88))(COERCE_CGFLOAT(*&v16), COERCE_CGFLOAT(*&v17));
  __swift_destroy_boxed_opaque_existential_1(&v147);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  if (v18)
  {
    goto LABEL_4;
  }

  sub_1BAD14A3C(v13 + 16, &v148);
  v38 = v148.d;
  v39 = v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  (*(*&v39 + 24))(*(v13 + 136), COERCE_CGFLOAT(*&v38), COERCE_CGFLOAT(*&v39));
  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_1BAD14A3C(v13 + 16, &v148);
  v40 = v148.d;
  v41 = v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  v42 = (*(*(*(*&v41 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v40), v146.size.width, v146.size.height);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_1BAD14A3C(v13 + 16, &v148);
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  v142 = v42;
  v152.var0 = v42;
  v145 = v44;
  v152.var1 = v44;
  v139 = v46;
  v152.var2 = v46;
  v144 = v48;
  v152.var3 = v48;
  v49 = LayoutTextView.estimatedNumberOfLines(from:)(v152);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_1BAD14A3C(v13 + 56, &v148);
  v50 = v148.d;
  v51 = v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  if (v49 <= 1)
  {
    v52 = *(v13 + 136);
  }

  else
  {
    v52 = 1;
  }

  (*(*&v51 + 24))(v52, COERCE_CGFLOAT(*&v50), COERCE_CGFLOAT(*&v51));
  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_1BAD14A3C(v13 + 56, &v148);
  v53 = v148.d;
  v54 = v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  v55.n128_u64[0] = *&v146.size.width;
  v56.n128_u64[0] = *&v146.size.height;
  v34 = (*(*(*(*&v54 + 8) + 8) + 8))(a1, COERCE_CGFLOAT(*&v53), v55, v56);
LABEL_9:
  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v37;
  __swift_destroy_boxed_opaque_existential_1(&v148);
  sub_1BAD14A3C(v13 + 96, &v148);
  v61 = *&v148.d;
  v62 = *&v148.tx;
  __swift_project_boxed_opaque_existential_1(&v148, *&v148.d);
  v143 = v57;
  v141 = v60;
  v63 = AnyDimension.topMargin(from:in:)(a1, v61, v62, v57, v58, v59);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  v137 = v63;
  v140 = v58;
  v64 = v58 + v145 - v144 + v63;
  x = v146.origin.x;
  y = v146.origin.y;
  v67 = v146.size.width;
  v68 = v146.size.height;
  v69 = (CGRectGetHeight(v146) - v64) * 0.5;
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = v67;
  v153.size.height = v68;
  MinY = CGRectGetMinY(v153);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7048], v9);
  v71 = [a1 traitCollection];
  [v71 displayScale];
  if (v72 <= 0.0)
  {
    v72 = ForJetUIOnly_MainScreenScale();
  }

  v73 = sub_1BAD794F8(v12, v72, v69);

  (*(v10 + 8))(v12, v9);
  v74 = MinY + v73;
  v75 = v146.origin.x;
  v76 = v146.origin.y;
  v77 = v146.size.width;
  v78 = v146.size.height;
  MinX = CGRectGetMinX(v146);
  v154.origin.x = v75;
  v154.origin.y = v76;
  v154.size.width = v77;
  v154.size.height = v78;
  v80 = CGRectGetWidth(v154);
  if (v80 >= v142)
  {
    v81 = v142;
  }

  else
  {
    v81 = v80;
  }

  sub_1BAD14A3C(v13 + 16, &v149);
  v82 = v150;
  v83 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v84 = [a1 traitCollection];
  v85 = [v84 layoutDirection];

  v142 = MinX;
  if (v85 == 1)
  {
    CGAffineTransformMakeScale(&v148, -1.0, 1.0);
    v89 = v148.tx;
    ty = v148.ty;
    v136 = *&v148.a;
    v135 = *&v148.c;
    v90 = v146.origin.x;
    v91 = v146.origin.y;
    v92 = v146.size.width;
    v93 = v146.size.height;
    v94 = v74;
    v95 = CGRectGetMinX(v146);
    v155.origin.x = v90;
    v155.origin.y = v91;
    v155.size.width = v92;
    v155.size.height = v93;
    v96 = v95 + CGRectGetMaxX(v155);
    v74 = v94;
    *&v148.c = v135;
    *&v148.a = v136;
    v148.tx = v89;
    MinX = v142;
    v148.ty = ty;
    CGAffineTransformTranslate(&v147, &v148, -v96, 0.0);
    v148 = v147;
    v156.origin.x = MinX;
    v156.origin.y = v94;
    v156.size.width = v81;
    v97 = v145;
    v156.size.height = v145;
    *v86.n128_u64 = CGRectApplyAffineTransform(v156, &v148);
    v145 = v98;
  }

  else
  {
    v97 = v145;
    v86.n128_f64[0] = MinX;
    v87.n128_f64[0] = v74;
    v88.n128_f64[0] = v81;
  }

  (*(*(v83 + 8) + 24))(v82, v86, v87, v88, v145);
  __swift_destroy_boxed_opaque_existential_1(&v149);
  v99 = v146.origin.x;
  v100 = v146.origin.y;
  v101 = v146.size.width;
  v102 = v146.size.height;
  v145 = CGRectGetMinX(v146);
  v157.origin.x = MinX;
  v157.origin.y = v74;
  ty = v81;
  v157.size.width = v81;
  v157.size.height = v97;
  MaxY = CGRectGetMaxY(v157);
  v158.origin.x = v99;
  v158.origin.y = v100;
  v158.size.width = v101;
  v158.size.height = v102;
  v104 = CGRectGetWidth(v158);
  if (v104 >= v143)
  {
    v104 = v143;
  }

  v143 = v104;
  v144 = v137 + MaxY - v144;
  sub_1BAD14A3C(v13 + 56, &v149);
  v105 = v150;
  v106 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v107 = [a1 traitCollection];
  v108 = [v107 layoutDirection];

  v113 = v97;
  if (v108 == 1)
  {
    CGAffineTransformMakeScale(&v148, -1.0, 1.0);
    v137 = v97;
    v114 = v148.tx;
    v115 = v148.ty;
    v136 = *&v148.a;
    v135 = *&v148.c;
    v116 = v146.origin.x;
    v117 = v146.origin.y;
    v118 = v146.size.width;
    v119 = v146.size.height;
    v120 = v74;
    v121 = CGRectGetMinX(v146);
    v159.origin.x = v116;
    v159.origin.y = v117;
    v159.size.width = v118;
    v159.size.height = v119;
    v122 = v121 + CGRectGetMaxX(v159);
    v74 = v120;
    *&v148.c = v135;
    *&v148.a = v136;
    v148.tx = v114;
    v148.ty = v115;
    v113 = v137;
    CGAffineTransformTranslate(&v147, &v148, -v122, 0.0);
    v148 = v147;
    v160.origin.x = v145;
    v160.origin.y = v144;
    v160.size.width = v143;
    v123 = v140;
    v160.size.height = v140;
    *v109.n128_u64 = CGRectApplyAffineTransform(v160, &v148);
  }

  else
  {
    v109.n128_f64[0] = v145;
    v110.n128_f64[0] = v144;
    v111.n128_f64[0] = v143;
    v123 = v140;
    v112.n128_f64[0] = v140;
  }

  (*(*(v106 + 8) + 24))(v105, v109, v110, v111, v112);
  __swift_destroy_boxed_opaque_existential_1(&v149);
  v161.origin.x = v142;
  v161.origin.y = v74;
  v161.size.width = ty;
  v161.size.height = v113;
  v124 = CGRectGetMinY(v161);
  v125 = v146.origin.x;
  v126 = v146.origin.y;
  v127 = v146.size.width;
  v128 = v146.size.height;
  v142 = v139 + v124 - CGRectGetMinY(v146);
  v162.origin.x = v125;
  v162.origin.y = v126;
  v162.size.width = v127;
  v162.size.height = v128;
  v129 = CGRectGetMinX(v162);
  v163.origin.x = v125;
  v163.origin.y = v126;
  v163.size.width = v127;
  v163.size.height = v128;
  v130 = CGRectGetMinY(v163);
  v164.origin.x = v125;
  v164.origin.y = v126;
  v164.size.width = v127;
  v164.size.height = v128;
  v131 = CGRectGetWidth(v164);
  v165.origin.x = v145;
  v165.origin.y = v144;
  v165.size.width = v143;
  v165.size.height = v123;
  v132 = CGRectGetMaxY(v165);
  v166.origin.x = v125;
  v166.origin.y = v126;
  v166.size.width = v127;
  v166.size.height = v128;
  v133 = CGRectGetMinY(v166);
  *a2 = v129;
  a2[1] = v130;
  a2[2] = v131;
  a2[3] = v132 - v133;
  result = v141;
  a2[4] = v142;
  a2[5] = result;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1BAD550FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD55144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FlankedVerticalLayout.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t FlankedVerticalLayout.init(sublayout:topView:topViewAlignment:topMargin:bottomView:bottomViewAlignment:bottomMargin:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a3;
  v14 = *a6;
  *(a8 + 64) = 0u;
  *(a8 + 48) = 0u;
  v15 = a8 + 48;
  *(a8 + 80) = 0;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0;
  *(a8 + 128) = 0u;
  v16 = a8 + 128;
  sub_1BAD0B40C(a1, a8 + 8);
  sub_1BAD55304(a2, v15);
  *a8 = v13;
  sub_1BAD0B40C(a4, a8 + 88);
  sub_1BAD55304(a5, v16);
  *(a8 + 1) = v14;

  return sub_1BAD0B40C(a7, a8 + 168);
}

uint64_t sub_1BAD55304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ADA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FlankedVerticalLayout.sublayout.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_1BAD0B40C(a1, v1 + 8);
}

uint64_t sub_1BAD55418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ADA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FlankedVerticalLayout.topMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_1BAD0B40C(a1, v1 + 88);
}

uint64_t FlankedVerticalLayout.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_1BAD0B40C(a1, v1 + 168);
}

void FlankedVerticalLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v14 = sub_1BAD9DA68();
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  *&v105 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v99 - v20;
  sub_1BAD55418((v6 + 48), &v109);
  if (*&v109.d)
  {
    v22 = v14;
    sub_1BAD0B40C(&v109, v110);
    v23 = v111;
    v24 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    if ((*(v24 + 40))(v23, v24))
    {
      __swift_destroy_boxed_opaque_existential_1(v110);
      v25 = a6;
      v106 = a4;
      v14 = v22;
    }

    else
    {
      v27 = v111;
      v26 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      v28 = (*(*(v26 + 8) + 8))(a1, v27, a5, a6);
      v104 = v29;
      v30 = a3;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      if (*v6)
      {
        if (*v6 == 1)
        {
          v34 = CGRectGetMidX(*&v30) + v28 * -0.5;
          (*(v107 + 104))(v21, *MEMORY[0x1E69E7048], v22);
          v35 = [a1 traitCollection];
          [v35 displayScale];
          if (v36 <= 0.0)
          {
            v36 = ForJetUIOnly_MainScreenScale();
          }

          MinX = sub_1BAD794F8(v21, v36, v34);

          (*(v107 + 8))(v21, v22);
        }

        else
        {
          MinX = CGRectGetWidth(*&v30) - v28;
        }
      }

      else
      {
        MinX = CGRectGetMinX(*&v30);
      }

      v113.origin.x = a3;
      v113.origin.y = a4;
      v113.size.width = a5;
      v113.size.height = a6;
      MinY = CGRectGetMinY(v113);
      v38 = v111;
      v39 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      v40 = [a1 traitCollection];
      v41 = [v40 layoutDirection];

      v102 = a3;
      if (v41 == 1)
      {
        CGAffineTransformMakeScale(&v109, -1.0, 1.0);
        v106 = v28;
        tx = v109.tx;
        ty = v109.ty;
        v101 = *&v109.a;
        v100 = *&v109.c;
        v114.origin.x = a3;
        v114.origin.y = a4;
        v114.size.width = a5;
        v114.size.height = a6;
        v47 = CGRectGetMinX(v114);
        v115.origin.x = a3;
        v115.origin.y = a4;
        v115.size.width = a5;
        v115.size.height = a6;
        v48 = -(v47 + CGRectGetMaxX(v115));
        *&v109.a = v101;
        *&v109.c = v100;
        v109.tx = tx;
        v109.ty = ty;
        v49 = v106;
        CGAffineTransformTranslate(&v108, &v109, v48, 0.0);
        v109 = v108;
        v116.origin.x = MinX;
        v116.origin.y = MinY;
        v28 = v49;
        v116.size.width = v49;
        v116.size.height = v104;
        *(&v42 - 8) = CGRectApplyAffineTransform(v116, &v109);
        v50 = MinX;
        MinX = v51;
      }

      else
      {
        v50 = MinX;
        v42.n128_f64[0] = MinY;
        v43.n128_f64[0] = v28;
        v44.n128_f64[0] = v104;
      }

      v14 = v22;
      v52 = a4;
      (*(v39 + 24))(v38, v39, MinX, v42, v43, v44);
      v53 = *(v7 + 14);
      v54 = *(v7 + 15);
      __swift_project_boxed_opaque_existential_1(v7 + 11, v53);
      sub_1BAD6EE7C(v18);
      AnyDimension.value(in:rounded:)(a1, v18, v53, v54);
      v56 = v55;
      (*(v107 + 8))(v18, v22);
      v117.origin.x = v50;
      v57 = MinY;
      v117.origin.y = MinY;
      v58 = v28;
      v117.size.width = v28;
      v59 = v104;
      v117.size.height = v104;
      v106 = v56 + CGRectGetHeight(v117) + v52;
      v118.origin.x = v50;
      v118.origin.y = v57;
      v118.size.width = v58;
      v118.size.height = v59;
      v25 = a6 - (v56 + CGRectGetHeight(v118));
      __swift_destroy_boxed_opaque_existential_1(v110);
      a4 = v52;
      a3 = v102;
    }
  }

  else
  {
    sub_1BAD55F6C(&v109);
    v25 = a6;
    v106 = a4;
  }

  sub_1BAD55418((v7 + 128), &v109);
  if (*&v109.d)
  {
    sub_1BAD0B40C(&v109, v110);
    v60 = v111;
    v61 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    if (((*(v61 + 40))(v60, v61) & 1) == 0)
    {
      v62 = v111;
      v63 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      v64 = (*(*(v63 + 8) + 8))(a1, v62, a5, a6);
      v66 = v65;
      v67 = v7[1];
      MinY = v64;
      if (v67)
      {
        v68 = v64;
        v69 = a3;
        v70 = a4;
        v71 = a5;
        v72 = a6;
        if (v67 == 1)
        {
          v73 = CGRectGetMidX(*&v69) + v68 * -0.5;
          v74 = *&v105;
          (*(v107 + 104))(COERCE_DOUBLE(*&v105), *MEMORY[0x1E69E7048], v14);
          v75 = [a1 traitCollection];
          [v75 displayScale];
          if (v76 <= 0.0)
          {
            v76 = ForJetUIOnly_MainScreenScale();
          }

          v77 = sub_1BAD794F8(v74, v76, v73);

          (*(v107 + 8))(v74, v14);
        }

        else
        {
          v77 = CGRectGetWidth(*&v69) - v68;
        }
      }

      else
      {
        v119.origin.x = a3;
        v119.origin.y = a4;
        v119.size.width = a5;
        v119.size.height = a6;
        v77 = CGRectGetMinX(v119);
      }

      v120.origin.x = a3;
      v120.origin.y = a4;
      v120.size.width = a5;
      v120.size.height = a6;
      v105 = CGRectGetMaxY(v120) - v66;
      v78 = v111;
      v79 = v112;
      __swift_project_boxed_opaque_existential_1(v110, v111);
      v80 = [a1 traitCollection];
      v81 = [v80 layoutDirection];

      v104 = v66;
      if (v81 == 1)
      {
        CGAffineTransformMakeScale(&v109, -1.0, 1.0);
        *&v101 = v25;
        v86 = v109.tx;
        v85 = v109.ty;
        v100 = *&v109.a;
        v99 = *&v109.c;
        v121.origin.x = a3;
        v121.origin.y = a4;
        v121.size.width = a5;
        v121.size.height = a6;
        v87 = CGRectGetMinX(v121);
        v122.origin.x = a3;
        v122.origin.y = a4;
        v122.size.width = a5;
        v122.size.height = a6;
        MaxX = CGRectGetMaxX(v122);
        *&v109.a = v100;
        *&v109.c = v99;
        v109.tx = v86;
        v109.ty = v85;
        v25 = *&v101;
        CGAffineTransformTranslate(&v108, &v109, -(v87 + MaxX), 0.0);
        v109 = v108;
        v123.origin.x = v77;
        v123.origin.y = v105;
        v89 = MinY;
        v123.size.width = MinY;
        v123.size.height = v104;
        *(&v82 - 8) = CGRectApplyAffineTransform(v123, &v109);
        v90 = v77;
        v77 = v91;
      }

      else
      {
        v90 = v77;
        v82.n128_f64[0] = v105;
        v89 = MinY;
        v83.n128_f64[0] = MinY;
        v84.n128_f64[0] = v104;
      }

      (*(v79 + 24))(v78, v79, v77, v82, v83, v84);
      v92 = *(v7 + 24);
      v93 = *(v7 + 25);
      __swift_project_boxed_opaque_existential_1(v7 + 21, v92);
      sub_1BAD6EE7C(v18);
      AnyDimension.value(in:rounded:)(a1, v18, v92, v93);
      v95 = v94;
      (*(v107 + 8))(v18, v14);
      v124.origin.x = v90;
      v124.origin.y = v105;
      v124.size.width = v89;
      v124.size.height = v104;
      v25 = v25 - (v95 + CGRectGetHeight(v124));
    }

    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    sub_1BAD55F6C(&v109);
  }

  v96 = *(v7 + 4);
  v97 = *(v7 + 5);
  __swift_project_boxed_opaque_existential_1(v7 + 1, v96);
  (*(v97 + 8))(&v109, a1, v96, v97, a3, v106, a5, v25);
  v125.origin.x = a3;
  v125.origin.y = a4;
  v125.size.width = a5;
  v125.size.height = a6;
  Height = CGRectGetHeight(v125);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = Height;
  *(a2 + 40) = 0;
}

uint64_t sub_1BAD55F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ADA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAD55FDC()
{
  result = qword_1EBC2ADA8;
  if (!qword_1EBC2ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI10LayoutView_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1BAD56084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD560CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BAD56160()
{
  v0 = sub_1BAD9C3B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  sub_1BAD9D4F8();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setAlignment_];
  sub_1BAD9C368();
  v5 = sub_1BAD9C388();

  v6 = 1;
  if (v5 != 2)
  {
    v6 = -1;
  }

  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v4 setBaseWritingDirection_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_1BAD562F4()
{
  v0 = sub_1BAD9C3B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  sub_1BAD9D4F8();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_1BAD5651C();
  v5 = sub_1BAD9D168();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_1BAD9C368();
  v6 = sub_1BAD9C388();

  v7 = 1;
  if (v6 != 2)
  {
    v7 = -1;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v4 setBaseWritingDirection_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_1BAD5651C()
{
  result = qword_1EBC2ADB0;
  if (!qword_1EBC2ADB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC2ADB0);
  }

  return result;
}

JUMeasurements __swiftcall UILabel.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  [v2 sizeThatFits_];
  v7 = constrainWidth(of:toFit:)(__PAIR128__(v6, v5), __PAIR128__(*&height, *&width));
  [v2 _firstBaselineOffsetFromTop];
  v9 = v8;
  [v2 _baselineOffsetFromBottom];
  v11 = v10;
  v12 = v7.width;
  v13 = v7.height;
  v14 = v9;
  result.var3 = v11;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

double sub_1BAD565F0(double a1, double a2)
{
  v5 = *v2;
  [*v2 sizeThatFits_];
  *&v8 = *&constrainWidth(of:toFit:)(__PAIR128__(v7, v6), __PAIR128__(*&a2, *&a1));
  [v5 _firstBaselineOffsetFromTop];
  [v5 _baselineOffsetFromBottom];
  return v8;
}

uint64_t VerticalSplitLayout.init(prioritySublayout:otherSublayout:priorityPosition:spacing:useLastBaseline:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  sub_1BAD566E8(a1, a6);
  sub_1BAD566E8(a2, (a6 + 48));
  *(a6 + 96) = v10;
  result = sub_1BAD0B40C(a4, a6 + 104);
  *(a6 + 144) = a5;
  return result;
}

_OWORD *sub_1BAD566E8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1BAD5670C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *VerticalSplitLayout.prioritySublayout.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD566E8(a1, v1);
}

_OWORD *VerticalSplitLayout.otherSublayout.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_1BAD566E8(a1, (v1 + 48));
}

JetUI::VerticalSplitLayout::Position_optional __swiftcall VerticalSplitLayout.Position.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1BAD56860@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t VerticalSplitLayout.spacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 104);

  return sub_1BAD0B40C(a1, v1 + 104);
}

void VerticalSplitLayout.placeChildren(relativeTo:in:)(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v14 = sub_1BAD9DA68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + 128);
  v19 = *(v7 + 136);
  __swift_project_boxed_opaque_existential_1((v7 + 104), v18);
  sub_1BAD6EE7C(v17);
  AnyDimension.value(in:rounded:)(a1, v17, v18, v19);
  v51 = v20;
  (*(v15 + 8))(v17, v14);
  v21 = *(v7 + 24);
  v22 = *(v7 + 40);
  __swift_project_boxed_opaque_existential_1(v7, v21);
  (*(v22 + 8))(a1, v21, v22, a5, a6);
  v24 = v23;
  v55.origin.x = a3;
  v55.origin.y = a4;
  v55.size.width = a5;
  v55.size.height = a6;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = a3;
  v56.origin.y = a4;
  v56.size.width = a5;
  v56.size.height = a6;
  Width = CGRectGetWidth(v56);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  if (*(v7 + 96))
  {
    MinY = CGRectGetMaxY(*&v26) - v24;
  }

  else
  {
    MinY = CGRectGetMinY(*&v26);
  }

  v52 = MinY;
  v31 = *(v7 + 24);
  v32 = *(v7 + 32);
  __swift_project_boxed_opaque_existential_1(v7, v31);
  v34 = v52;
  v33 = MinX;
  (*(v32 + 8))(v54, a1, v31, v32, MinX, v52, Width, v24);
  v48 = Width;
  v35 = *&v54[3];
  v47 = *&v54[5];
  v57.origin.x = a3;
  v57.origin.y = a4;
  v57.size.width = a5;
  v57.size.height = a6;
  v50 = CGRectGetMinX(v57);
  v58.origin.x = a3;
  v58.origin.y = a4;
  v58.size.width = a5;
  v58.size.height = a6;
  v49 = CGRectGetWidth(v58);
  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  Height = CGRectGetHeight(v59);
  v60.origin.x = v33;
  v60.origin.y = v34;
  v37 = v35;
  v38 = v48;
  v60.size.width = v48;
  v60.size.height = v37;
  v39 = Height - CGRectGetHeight(v60) - v51;
  if (*(v7 + 96))
  {
    v61.origin.x = a3;
    v61.origin.y = a4;
    v61.size.width = a5;
    v61.size.height = a6;
    v40 = CGRectGetMinY(v61);
  }

  else
  {
    v41 = v51;
    v62.origin.y = v52;
    v62.origin.x = MinX;
    v62.size.width = v38;
    v62.size.height = v37;
    v42 = v41 + CGRectGetMaxY(v62);
    if (*(v7 + 144))
    {
      v39 = v47 + v39;
      v40 = v42 - v47;
    }

    else
    {
      v40 = v42;
    }
  }

  v43 = *(v7 + 72);
  v44 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1((v7 + 48), v43);
  (*(v44 + 8))(v54, a1, v43, v44, v50, v40, v49, v39);
  v63.origin.x = a3;
  v63.origin.y = a4;
  v63.size.width = a5;
  v63.size.height = a6;
  v45 = CGRectGetHeight(v63);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v45;
  *(a2 + 40) = 0;
}

unint64_t sub_1BAD56CF4()
{
  result = qword_1EBC2ADB8;
  if (!qword_1EBC2ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADB8);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1BAD56D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD56DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Models.ProgrammedText.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a3;
  v47 = a2;
  v4 = sub_1BAD9C7C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  sub_1BAD9C7D8();
  v11 = sub_1BAD9C7B8();
  v13 = v12;
  v16 = *(v5 + 8);
  v14 = v5 + 8;
  v15 = v16;
  v16(v10, v4);
  if (v13)
  {
    v41 = a1;
    sub_1BAD9C7D8();
    v17 = sub_1BAD9C7B8();
    v19 = v18;
    v15(v7, v4);
    v20 = v4;
    if (v19)
    {
      v21 = v11 == 0x6E69616C70 && v13 == 0xE500000000000000;
      if (v21 || (sub_1BAD9DA98() & 1) != 0)
      {

        v22 = sub_1BAD9C8F8();
        (*(*(v22 - 8) + 8))(v47, v22);
        result = (v15)(v41, v4);
        v24 = 0;
LABEL_9:
        v25 = v42;
        *v42 = v17;
        v25[1] = v19;
        *(v25 + 16) = v24;
        return result;
      }

      v43 = v15;
      v44 = v14;
      v31 = v11 == 1751345522 && v13 == 0xE400000000000000;
      if (v31 || (sub_1BAD9DA98() & 1) != 0)
      {

        v32 = [objc_opt_self() systemFontOfSize_];
        v33 = sub_1BAD56160();
        v34 = sub_1BAD56568();
        v35 = sub_1BAD56568();

        v45[0] = 10;
        v45[1] = 0xE100000000000000;
        v45[2] = v32;
        v45[3] = v33;
        v45[4] = 161644770;
        v45[5] = 0xA400000000000000;
        v45[6] = v34;
        v45[7] = 606245;
        v45[8] = 0xE300000000000000;
        v45[9] = v35;
        v46 = 0;
        v36 = objc_allocWithZone(type metadata accessor for NQMLStringGenerator());
        v37 = sub_1BAD91DF8(v17, v19, v45);
        [*&v37[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] parse];
        v38 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator;
        v39 = [*&v37[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator] mutableString];
        if (qword_1EBC29C88 != -1)
        {
          swift_once();
        }

        sub_1BAD51BA4(qword_1EBC2B5A8);

        v17 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
        v40 = sub_1BAD9C8F8();
        (*(*(v40 - 8) + 8))(v47, v40);
        result = v43(v41, v20);
        v19 = 0;
        v24 = 1;
        goto LABEL_9;
      }

      v27 = v13;
      v26 = MEMORY[0x1E69AB680];
    }

    else
    {
      v43 = v15;
      v44 = v14;
      v26 = MEMORY[0x1E69AB690];
      v27 = 0xE400000000000000;
      v11 = 1954047348;
    }

    a1 = v41;
  }

  else
  {
    v43 = v15;
    v44 = v14;
    v20 = v4;
    v26 = MEMORY[0x1E69AB690];
    v27 = 0xE500000000000000;
    v11 = 0x646E696B24;
  }

  v28 = sub_1BAD9CE08();
  sub_1BAD25BD0();
  swift_allocError();
  *v29 = v11;
  v29[1] = v27;
  v29[2] = &type metadata for Models.ProgrammedText;
  (*(*(v28 - 8) + 104))(v29, *v26, v28);
  swift_willThrow();
  v30 = sub_1BAD9C8F8();
  (*(*(v30 - 8) + 8))(v47, v30);
  return v43(a1, v20);
}

uint64_t Models.ProgrammedText.text.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = [*v0 string];
    v1 = sub_1BAD9CF68();
  }

  else
  {
  }

  return v1;
}

uint64_t Models.ProgrammedText.MediaType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

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

uint64_t Models.ProgrammedText.MediaType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x616C702F74786574;
  }
}

uint64_t sub_1BAD574A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x616C702F74786574;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E69;
  }

  else
  {
    v4 = 0x80000001BADA9710;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x616C702F74786574;
  }

  if (*a2)
  {
    v6 = 0x80000001BADA9710;
  }

  else
  {
    v6 = 0xEA00000000006E69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BAD9DA98();
  }

  return v8 & 1;
}

uint64_t sub_1BAD57550()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD575DC()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD57654()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

void sub_1BAD576E8(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BADA9710;
  v3 = 0x616C702F74786574;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xEA00000000006E69;
  }

  *a1 = v3;
  a1[1] = v2;
}

id Models.ProgrammedText.attributedText.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {

    return v1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v4 = sub_1BAD9CF38();
    v5 = [v3 initWithString_];

    return v5;
  }
}

uint64_t sub_1BAD577E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BAD9DA98();
  }

  return v8 & 1;
}

uint64_t sub_1BAD5787C()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD578F4()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD57958()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD579D8@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

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

void sub_1BAD57A34(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BAD57A68()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_1BAD57A98@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

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

uint64_t sub_1BAD57B08(uint64_t a1)
{
  v2 = sub_1BAD58014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAD57B44(uint64_t a1)
{
  v2 = sub_1BAD58014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ProgrammedText.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ADC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD58014();
  sub_1BAD9DBB8();
  if (!v2)
  {
    v28 = a2;
    LOBYTE(v29) = 0;
    v9 = sub_1BAD9D998();
    v11 = v10;
    LOBYTE(v29) = 1;
    v12 = sub_1BAD9D998();
    v14 = v13;
    v15 = v9 == 0x6E69616C70 && v11 == 0xE500000000000000;
    if (v15 || (sub_1BAD9DA98() & 1) != 0)
    {
      (*(v6 + 8))(v8, v5);

      v16 = 0;
    }

    else
    {
      v19 = v9 == 1751345522 && v11 == 0xE400000000000000;
      if (!v19 && (sub_1BAD9DA98() & 1) == 0)
      {

        v40 = 0;
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1BAD9D7E8();

        v29 = v9;
        v30 = v11;
        MEMORY[0x1BFB026B0](0xD000000000000026, 0x80000001BADAAAC0);
        sub_1BAD9D838();
        swift_allocError();
        sub_1BAD58068();
        sub_1BAD9D828();

        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v20 = [objc_opt_self() systemFontOfSize_];
      v21 = sub_1BAD56160();
      v26 = sub_1BAD56568();
      v27 = sub_1BAD56568();

      v29 = 10;
      v30 = 0xE100000000000000;
      v31 = v20;
      v32 = v21;
      v33 = 161644770;
      v34 = 0xA400000000000000;
      v35 = v26;
      v36 = 606245;
      v37 = 0xE300000000000000;
      v38 = v27;
      v39 = 0;
      v22 = objc_allocWithZone(type metadata accessor for NQMLStringGenerator());
      v23 = sub_1BAD91DF8(v12, v14, &v29);
      [*&v23[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] parse];
      v24 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator;
      v25 = [*&v23[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator] mutableString];
      if (qword_1EBC29C88 != -1)
      {
        swift_once();
      }

      sub_1BAD51BA4(qword_1EBC2B5A8);

      v12 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
      (*(v6 + 8))(v8, v5);
      v14 = 0;
      v16 = 1;
    }

    v17 = v28;
    *v28 = v12;
    v17[1] = v14;
    *(v17 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BAD58014()
{
  result = qword_1EBC2ADC8;
  if (!qword_1EBC2ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADC8);
  }

  return result;
}

unint64_t sub_1BAD58068()
{
  result = qword_1EBC2ADD0;
  if (!qword_1EBC2ADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2ADC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADD0);
  }

  return result;
}

unint64_t sub_1BAD580D0()
{
  result = qword_1EBC2ADD8;
  if (!qword_1EBC2ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADD8);
  }

  return result;
}

unint64_t sub_1BAD58164()
{
  result = qword_1EBC2ADE0;
  if (!qword_1EBC2ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADE0);
  }

  return result;
}

unint64_t sub_1BAD581BC()
{
  result = qword_1EBC2ADE8;
  if (!qword_1EBC2ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADE8);
  }

  return result;
}

unint64_t sub_1BAD58214()
{
  result = qword_1EBC2ADF0;
  if (!qword_1EBC2ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2ADF0);
  }

  return result;
}

double static Baselines.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDBA5998 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDBA59A0;
  *a1 = xmmword_1EDBA59A0;
  return result;
}

Swift::Void __swiftcall CGSize.subtract(insets:)(UIEdgeInsets insets)
{
  v2 = v1[1] - (insets.top + insets.bottom);
  *v1 = *v1 - (insets.left + insets.right);
  v1[1] = v2;
}

Swift::Void __swiftcall CGSize.add(outsets:)(UIEdgeInsets outsets)
{
  v2 = outsets.top + outsets.bottom + v1[1];
  *v1 = outsets.left + outsets.right + *v1;
  v1[1] = v2;
}

CGSize __swiftcall CGSize.subtracting(insets:)(UIEdgeInsets insets)
{
  v3 = v1 - (insets.left + insets.right);
  v4 = v2 - (insets.top + insets.bottom);
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

CGSize __swiftcall CGSize.adding(outsets:)(UIEdgeInsets outsets)
{
  v3 = outsets.left + outsets.right + v1;
  v4 = outsets.top + outsets.bottom + v2;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

double UILabel.measurements(fitting:in:)(double a1, double a2)
{
  [v2 sizeThatFits_];
  *&v7 = *&constrainWidth(of:toFit:)(__PAIR128__(v6, v5), __PAIR128__(*&a2, *&a1));
  [v2 _firstBaselineOffsetFromTop];
  [v2 _baselineOffsetFromBottom];
  return v7;
}

double sub_1BAD584F8(void *a1, double a2, double a3)
{
  v5 = a1;
  [v5 sizeThatFits_];
  *&v8 = *&constrainWidth(of:toFit:)(__PAIR128__(v7, v6), __PAIR128__(*&a3, *&a2));
  [v5 _firstBaselineOffsetFromTop];
  [v5 _baselineOffsetFromBottom];

  return v8;
}

double sub_1BAD5859C(void *a1, double a2)
{
  swift_unknownObjectRetain();
  v4 = a1;
  v5 = _sSo8UIButtonC5JetUIE12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(a2);
  swift_unknownObjectRelease();

  return v5;
}

double _sSo8UIButtonC5JetUIE12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(double a1)
{
  [v1 sizeThatFits_];
  v3 = v2;
  v5 = v4;
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  v12 = v6 == 0.0;
  v13 = v7 == 0.0;
  v34 = v3;
  if (v12 && v13)
  {
    v14 = v3;
  }

  else
  {
    v14 = v6;
  }

  if (!v12 || !v13)
  {
    v5 = v7;
  }

  [v1 contentRectForBounds_];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v36.origin.x = v9;
  v36.origin.y = v11;
  v36.size.width = v14;
  v36.size.height = v5;
  Height = CGRectGetHeight(v36);
  v37.origin.x = v16;
  v37.origin.y = v18;
  v37.size.width = v20;
  v37.size.height = v22;
  CGRectGetMaxY(v37);
  v23 = [v1 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 _baselineOffsetFromBottom];
  }

  [v1 contentEdgeInsets];
  [v1 titleEdgeInsets];
  [v1 contentEdgeInsets];
  [v1 titleEdgeInsets];
  v25 = [v1 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 _firstBaselineOffsetFromTop];
  }

  v27 = v20;
  v28 = v22;
  if (v34 <= a1)
  {
    v29 = v34;
  }

  else
  {
    v29 = a1;
  }

  v31 = v18;
  v30 = v16;
  CGRectGetMinY(*(&v27 - 2));
  return v29;
}

uint64_t sub_1BAD58820()
{
  sub_1BAD58950(v0 + 16, v0 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_metricsContext);
  sub_1BAD14A3C(v0 + 16, v5);
  v1 = swift_allocObject();
  sub_1BAD0B40C(v5, v1 + 16);
  sub_1BAD14A3C(v0 + 16, v5);
  v2 = swift_allocObject();
  sub_1BAD0B40C(v5, v2 + 16);
  v4[3] = sub_1BAD9CB48();
  v4[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_1BAD9CB38();
  sub_1BAD9CD98();

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1BAD58950(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A698);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1BAD9CBD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAD9CAE8();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v25 = v2;
  sub_1BAD9CAA8();
  v13 = sub_1BAD9CAC8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  sub_1BAD2B768(v23, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BAD1A420(v6, qword_1EBC2A698);
    v17 = MEMORY[0x1E69AB128];
  }

  else
  {
    v23 = a1;
    v18 = *(v8 + 32);
    v19 = v22;
    v18(v22, v6, v7);
    v18(v16, v19, v7);
    v17 = MEMORY[0x1E69AB120];
  }

  (*(v14 + 104))(v16, *v17, v13);
  v20 = sub_1BAD9CAD8();
  (*(v14 + 8))(v16, v13);
  (*(v24 + 8))(v12, v10);
  return v20;
}

uint64_t sub_1BAD58CA0(uint64_t a1, void *a2)
{
  v3 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BAD9C9B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB008], v4);
  v8 = sub_1BAD9C9A8();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_1BAD9CDB8();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = xmmword_1BADA1240;
    sub_1BAD9C848();
    sub_1BAD9C838();
    v10 = a2[3];
    v11 = __swift_project_boxed_opaque_existential_1(a2, v10);
    v14[3] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v11, v10);
    sub_1BAD9C828();
    sub_1BAD1A420(v14, &qword_1EBC2A120);
    sub_1BAD9C838();
    sub_1BAD9C868();
    sub_1BAD9C7E8();
    sub_1BAD9CCB8();

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_1BAD58FB0(uint64_t a1, void *a2)
{
  v3 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BAD9CDB8();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
  sub_1BAD9C898();
  *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
  sub_1BAD9C848();
  sub_1BAD9C838();
  v4 = a2[3];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v11 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  sub_1BAD9C828();
  sub_1BAD1A420(v10, &qword_1EBC2A120);
  sub_1BAD9C838();
  swift_getErrorValue();
  v11 = v9;
  v7 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v9 - 8) + 16))(v7);
  sub_1BAD9C808();
  sub_1BAD1A420(v10, &qword_1EBC2A120);
  sub_1BAD9C838();
  sub_1BAD9C868();
  sub_1BAD9CCB8();

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1BAD59288()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1BAD1A420(v0 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_metricsContext, qword_1EBC2A698);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JUActionPerformer()
{
  result = qword_1EBC2AE08;
  if (!qword_1EBC2AE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAD59368()
{
  sub_1BAD59410();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BAD59410()
{
  if (!qword_1EBC2AE18)
  {
    sub_1BAD9CBD8();
    v0 = sub_1BAD9D598();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2AE18);
    }
  }
}

uint64_t static DiffableData.makeSnapshot<A, B>(fromSections:withItemsAt:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v76 = a2;
  v77 = a3;
  v7 = *a2;
  v8 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v7 + *MEMORY[0x1E69E77B0]);
  v11 = *v10;
  v12 = sub_1BAD9C978();
  v64 = sub_1BAD9D598();
  v82 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - v13;
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v51 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v23 = v10[1];
  v61 = *(v23 + 16);
  v24 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v66 = a5;
  v68 = v12;
  v60 = v24;
  v59 = WitnessTable;
  v58 = v26;
  sub_1BAD9C548();
  v83 = a1;
  result = sub_1BAD9D208();
  if (!result)
  {
    return result;
  }

  v28 = 0;
  v80 = (v78 + 16);
  v73 = (v78 + 32);
  v74 = 0;
  v57 = v68 - 8;
  v56 = (v82 + 8);
  v72 = (v78 + 8);
  v55 = "n supports its configuration";
  v52 = xmmword_1BADA1240;
  v79 = v23;
  v75 = v22;
  while (1)
  {
    v43 = sub_1BAD9D1E8();
    sub_1BAD9D198();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = *(v78 + 16);
    result = (v44)(v22, v83 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v28, v11);
    v45 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    (*v73)(v18, v22, v11);
    swift_getAtKeyPath();
    v46 = v84[0];
    v47 = swift_getWitnessTable();
    v48 = sub_1BAD9D428();
    v81 = v45;
    v82 = v28;
    if (v48)
    {
      v31 = v18;
      v35 = v11;

      if (qword_1EBC29C50 != -1)
      {
        swift_once();
      }

      v49 = sub_1BAD9CDF8();
      v71 = __swift_project_value_buffer(v49, qword_1EBC357E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
      sub_1BAD9C898();
      *(swift_allocObject() + 16) = v52;
      sub_1BAD9C848();
      sub_1BAD9C838();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0(v84);
      sub_1BAD9D7F8();
      sub_1BAD9C7F8();
      sub_1BAD05470(v84);
      sub_1BAD9C838();
      sub_1BAD9C868();
      sub_1BAD9C7E8();
      sub_1BAD9CCC8();
    }

    else
    {
      v29 = v68;
      sub_1BAD9DA58();
      v71 = *(v29 - 8);
      swift_allocObject();
      v30 = sub_1BAD9D188();
      v31 = v18;
      v44(v62, v18, v11);
      v32 = v77;
      sub_1BAD9C968();
      v84[0] = v30;
      v33 = sub_1BAD9D278();
      nullsub_1(v33);
      v70 = v47;
      v34 = v60;
      v84[0] = v29;
      v84[1] = v60;
      v84[2] = v59;
      AssociatedTypeWitness = v58;
      sub_1BAD9C558();
      v35 = v11;
      sub_1BAD9C4E8();

      v69 = &v50;
      v84[0] = v46;
      MEMORY[0x1EEE9AC00](v36);
      v37 = v61;
      *(&v50 - 4) = v11;
      *(&v50 - 3) = v37;
      v38 = v67;
      *(&v50 - 2) = v32;
      *(&v50 - 1) = v38;
      v39 = v34;
      v40 = v74;
      sub_1BAD59E5C(sub_1BAD5B1CC, (&v50 - 6), v79, v39, MEMORY[0x1E69E73E0], v70, MEMORY[0x1E69E7410], v41);
      v74 = v40;

      v42 = v63;
      (*(v71 + 56))(v63, 1, 1, v29);
      sub_1BAD9C4C8();

      (*v56)(v42, v64);
    }

    (*v72)(v31, v35);
    result = sub_1BAD9D208();
    v28 = v82 + 1;
    v11 = v35;
    v18 = v31;
    v22 = v75;
    if (v81 == result)
    {
      return result;
    }
  }

  result = sub_1BAD9D808();
  if (v51 != 8)
  {
    goto LABEL_17;
  }

  v84[0] = result;
  v44 = *v80;
  (*v80)(v22, v84, v11);
  result = swift_unknownObjectRelease();
  v45 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BAD59D80(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1BAD9C968();
}

uint64_t sub_1BAD59E5C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BAD9D3F8();
  if (!v19)
  {
    return sub_1BAD9D1C8();
  }

  v41 = v19;
  v45 = sub_1BAD9D888();
  v32 = sub_1BAD9D898();
  sub_1BAD9D868();
  result = sub_1BAD9D3E8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BAD9D448();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BAD9D878();
      result = sub_1BAD9D408();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static DiffableData.makeSnapshot<A>(fromShelves:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v68 = a1;
  v6 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = sub_1BAD9C978();
  v59 = sub_1BAD9D598();
  v13 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v46 - v14;
  v67 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v47 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1BAD5B1F0();
  v71 = a4;
  v72 = v12;
  v66 = v8;
  v26 = v68;
  v56 = WitnessTable;
  v55 = v25;
  sub_1BAD9C548();
  result = sub_1BAD9D208();
  if (!result)
  {
    return result;
  }

  v28 = 0;
  v73 = (v67 + 16);
  v63 = (v67 + 32);
  v54 = v72 - 8;
  v53 = (v13 + 8);
  v62 = (v67 + 8);
  v51 = "port sections with no items.";
  v48 = xmmword_1BADA1240;
  v61 = a2;
  v75 = v19;
  v64 = v23;
  while (1)
  {
    v30 = sub_1BAD9D1E8();
    sub_1BAD9D198();
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = *(v67 + 16);
    result = (v31)(v23, v26 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v28, a2);
    v32 = __OFADD__(v28, 1);
    v33 = v28 + 1;
    if (v32)
    {
      goto LABEL_23;
    }

LABEL_7:
    (*v63)(v19, v23, a2);
    v34 = *(sub_1BAD9C8A8() + 16);

    v74 = v33;
    if (v34)
    {
      v35 = v72;
      sub_1BAD9DA58();
      v70 = *(v35 - 8);
      swift_allocObject();
      v36 = sub_1BAD9D188();
      v31(v57, v75, a2);
      sub_1BAD9C968();
      v77[0] = v36;
      v37 = sub_1BAD9D278();
      nullsub_1(v37);
      v77[0] = v35;
      v19 = v75;
      v77[1] = v66;
      v77[2] = v56;
      AssociatedTypeWitness = v55;
      v69 = sub_1BAD9C558();
      sub_1BAD9C4E8();

      v38 = sub_1BAD9C8A8();
      v39 = *(v38 + 16);
      if (v39)
      {
        v79 = MEMORY[0x1E69E7CC0];
        sub_1BAD5B254(0, v39, 0);
        v40 = v79;
        v41 = v38 + 32;
        v42 = v66;
        do
        {
          sub_1BAD14A3C(v41, v77);
          sub_1BAD14A3C(v77, v76);
          sub_1BAD9C958();
          __swift_destroy_boxed_opaque_existential_1(v77);
          v79 = v40;
          v44 = *(v40 + 16);
          v43 = *(v40 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_1BAD5B254(v43 > 1, v44 + 1, 1);
            v42 = v66;
            v40 = v79;
          }

          *(v40 + 16) = v44 + 1;
          (*(v9 + 32))(v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v44, v11, v42);
          v41 += 40;
          --v39;
        }

        while (v39);

        a2 = v61;
        v26 = v68;
        v19 = v75;
      }

      else
      {

        v26 = v68;
      }

      v29 = v58;
      (*(v70 + 56))(v58, 1, 1, v72);
      sub_1BAD9C4C8();

      (*v53)(v29, v59);
    }

    else
    {
      if (qword_1EBC29C50 != -1)
      {
        swift_once();
      }

      v60 = sub_1BAD9CDF8();
      v70 = __swift_project_value_buffer(v60, qword_1EBC357E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
      v69 = *(*(sub_1BAD9C898() - 8) + 72);
      *(swift_allocObject() + 16) = v48;
      sub_1BAD9C848();
      sub_1BAD9C838();
      a2 = v61;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_0(v77);
      v45 = v75;
      sub_1BAD9D7F8();
      sub_1BAD9C7F8();
      sub_1BAD05470(v77);
      sub_1BAD9C838();
      v19 = v45;
      sub_1BAD9C868();
      sub_1BAD9C7E8();
      sub_1BAD9CCC8();

      v26 = v68;
    }

    (*v62)(v19, a2);
    result = sub_1BAD9D208();
    v28 = v74;
    v23 = v64;
    if (v74 == result)
    {
      return result;
    }
  }

  result = sub_1BAD9D808();
  if (v47 != 8)
  {
    goto LABEL_24;
  }

  v77[0] = result;
  v31 = *v73;
  (*v73)(v23, v77, a2);
  result = swift_unknownObjectRelease();
  v32 = __OFADD__(v28, 1);
  v33 = v28 + 1;
  if (!v32)
  {
    goto LABEL_7;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static DiffableData.joinSnapshots<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAD9C978();
  v17 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v8 = sub_1BAD9C558();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v16 = a2;
  (*(v11 + 16))(&v13[-v10], a1, v8, v9);
  v14 = a3;
  v15 = a4;
  sub_1BAD9D278();
  swift_getWitnessTable();
  return sub_1BAD9D128();
}

uint64_t sub_1BAD5ADB8(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_1BAD9C978();
  v33 = sub_1BAD9D598();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v28 - v5;
  v6 = *(v3 - 8);
  v28[0] = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  v10 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v38[0] = v3;
  v38[1] = v10;
  v38[2] = WitnessTable;
  v38[3] = v12;
  v31 = sub_1BAD9C558();
  v35 = a2;
  v13 = sub_1BAD9C538();
  if (!sub_1BAD9D208())
  {
  }

  v14 = 0;
  v39 = (v6 + 16);
  v29 = (v4 + 8);
  v30 = v6 + 56;
  v28[2] = v6 + 8;
  while (1)
  {
    v15 = sub_1BAD9D1E8();
    sub_1BAD9D198();
    if (v15)
    {
      v16 = *(v6 + 16);
      v16(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v3);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BAD9D808();
    if (v28[0] != 8)
    {
      break;
    }

    v38[0] = result;
    v16 = *v39;
    (*v39)(v9, v38, v3);
    swift_unknownObjectRelease();
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    v36 = v17;
    sub_1BAD9DA58();
    swift_allocObject();
    v18 = sub_1BAD9D188();
    v16(v19, v9, v3);
    v38[0] = v18;
    v20 = sub_1BAD9D278();
    nullsub_1(v20);
    sub_1BAD9C4E8();

    sub_1BAD9C518();
    v21 = *(v6 + 56);
    v37 = v14;
    v22 = v13;
    v23 = v9;
    v24 = v32;
    v21(v32, 1, 1, v3);
    sub_1BAD9C4C8();

    v25 = v24;
    v9 = v23;
    v13 = v22;
    v26 = v37;
    (*v29)(v25, v33);
    (*(v6 + 8))(v9, v3);
    v14 = v26 + 1;
    if (v36 == sub_1BAD9D208())
    {
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAD5B1F0()
{
  result = qword_1EDBA5DA8;
  if (!qword_1EDBA5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5DA8);
  }

  return result;
}

size_t sub_1BAD5B254(size_t a1, int64_t a2, char a3)
{
  result = sub_1BAD5B2A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BAD5B2A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678) - 8);
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

id JULoadingViewController.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v6 = a1;
  *(v6 + 1) = a2;
  if (qword_1EBC29B68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  v8 = __swift_project_value_buffer(v7, qword_1EBC2AE28);
  sub_1BAD05B04(v8, &v5[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v5[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id JULoadingViewController.init(label:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v6 = a1;
  *(v6 + 1) = a2;
  if (qword_1EBC29B68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  v8 = __swift_project_value_buffer(v7, qword_1EBC2AE28);
  sub_1BAD05B04(v8, &v2[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v2[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id JULoadingViewController.__allocating_init(label:presentationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_1BAD05B04(a3, &v7[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v7[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(a3);
  return v9;
}

id JULoadingViewController.init(label:presentationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_1BAD05B04(a3, &v3[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v3[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(a3);
  return v9;
}

id JULoadingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id JULoadingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BAD9CF38();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id JULoadingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ObjCFunctions.makeLoadingViewController(withLabel:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JULoadingViewController.PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA5E60 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDBA5C38);
  sub_1BAD05B04(v8, v7);
  v9 = type metadata accessor for JULoadingViewController(0);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC5JetUI23JULoadingViewController_label];
  *v11 = a1;
  *(v11 + 1) = a2;
  sub_1BAD05B04(v7, &v10[OBJC_IVAR____TtC5JetUI23JULoadingViewController_presentationContext]);
  *&v10[OBJC_IVAR____TtC5JetUI23JULoadingViewController_pageRenderMetrics] = 0;
  v15.receiver = v10;
  v15.super_class = v9;

  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  sub_1BAD05D10(v7);
  return v12;
}

uint64_t Resize.init(_:width:height:firstBaseline:lastBaseline:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a1[3];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  Measurable.placeable.getter(v12, v13, v36);
  sub_1BAD47F34(a2, &v34);
  sub_1BAD47F34(a3, &v32);
  sub_1BAD47F34(a4, &v30);
  sub_1BAD47F34(a5, &v28);
  sub_1BAD47F34(&v34, v27);
  sub_1BAD47F34(&v32, &v27[48]);
  sub_1BAD47F34(&v30, &v27[96]);
  sub_1BAD47F34(&v28, &v27[144]);
  if (v27[40] == 2 && ((v14 = vorrq_s8(*&v27[8], *&v27[24]), !(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v27)) ? (v15 = v27[88] == 2) : (v15 = 0), v15 && (v24 = vorrq_s8(*&v27[56], *&v27[72]), !(*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *&v27[48])) && v27[136] == 2 && (v25 = vorrq_s8(*&v27[104], *&v27[120]), !(*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *&v27[96])) && v27[184] == 2 && (v26 = vorrq_s8(*&v27[152], *&v27[168]), !(*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | *&v27[144]))))
  {
    sub_1BAD9CB88();
    sub_1BAD5C0F0(&v27[96]);
    sub_1BAD5C0F0(&v27[48]);
    sub_1BAD5C0F0(v27);
  }

  else
  {
    sub_1BAD5C088(v27);
  }

  sub_1BAD1A480(v36, v27);
  *&v27[40] = v34;
  *&v27[56] = v35[0];
  *&v27[65] = *(v35 + 9);
  *&v27[88] = v32;
  *&v27[104] = v33[0];
  *&v27[113] = *(v33 + 9);
  *&v27[161] = *(v31 + 9);
  *&v27[152] = v31[0];
  *&v27[136] = v30;
  *&v27[209] = *(v29 + 9);
  *&v27[200] = v29[0];
  *&v27[184] = v28;
  v16 = *&v27[16];
  *a6 = *v27;
  *(a6 + 16) = v16;
  v17 = *&v27[80];
  *(a6 + 64) = *&v27[64];
  *(a6 + 80) = v17;
  v18 = *&v27[48];
  *(a6 + 32) = *&v27[32];
  *(a6 + 48) = v18;
  v19 = *&v27[144];
  *(a6 + 128) = *&v27[128];
  *(a6 + 144) = v19;
  v20 = *&v27[112];
  *(a6 + 96) = *&v27[96];
  *(a6 + 112) = v20;
  *(a6 + 224) = v27[224];
  v21 = *&v27[208];
  *(a6 + 192) = *&v27[192];
  *(a6 + 208) = v21;
  v22 = *&v27[176];
  *(a6 + 160) = *&v27[160];
  *(a6 + 176) = v22;
  sub_1BAD5C0F0(a5);
  sub_1BAD5C0F0(a4);
  sub_1BAD5C0F0(a3);
  sub_1BAD5C0F0(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAD5C088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JUPlaceable.placeable.getter@<X0>(void *a1@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    sub_1BAD1A480(&v5, a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    type metadata accessor for _PlaceableAsJUPlaceable();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      return sub_1BAD14A3C(v4 + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base, a1);
    }

    else
    {
      a1[3] = &type metadata for _JUPlaceableAsPlacable;
      a1[4] = &protocol witness table for _JUPlaceableAsPlacable;
      *a1 = v1;
      return swift_unknownObjectRetain();
    }
  }
}

JUMeasurements __swiftcall _JUPlaceableAsPlacable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [*v2 measureToFit:with.super.isa withTraitCollection:{toFit.width, toFit.height}];
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

uint64_t _JUPlaceableAsPlacable.description.getter()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B220);
  return sub_1BAD9CFB8();
}

uint64_t sub_1BAD5C2C8()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B220);
  return sub_1BAD9CFB8();
}

double *StaticMeasurable.init(_:)@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE88);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  *a1 = result;
  return result;
}

double StaticMeasurable.measurements.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

double StaticMeasurable.measurements(fitting:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

double sub_1BAD5C414()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1BAD5C468(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BAD9D0A8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB026D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1BAD5C4E4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BAD5C468(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BAD5C558(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BAD9D848();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1BAD5C67C()
{
  result = qword_1EBC299B0;
  if (!qword_1EBC299B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC299B0);
  }

  return result;
}

uint64_t DiffableDataStatePresenter.lens(for:)(uint64_t a1)
{
  return sub_1BAD5C708(a1, &associated type descriptor for DiffableDataPresenter.Item, MEMORY[0x1E69AB6C8]);
}

{
  return sub_1BAD5C708(a1, &associated type descriptor for DiffableDataPresenter.Section, MEMORY[0x1E69AB6C8]);
}

uint64_t DiffableDataStatePresenter.writableLens(for:)(uint64_t a1)
{
  return sub_1BAD5C708(a1, &associated type descriptor for DiffableDataPresenter.Item, MEMORY[0x1E69AB220]);
}

{
  return sub_1BAD5C708(a1, &associated type descriptor for DiffableDataPresenter.Section, MEMORY[0x1E69AB220]);
}

uint64_t sub_1BAD5C708(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, void, uint64_t, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  sub_1BAD5DA4C();
  (*(v6 + 16))(v8, v3 + *(*v3 + 120), v5);
  v12 = sub_1BAD60048(&qword_1EDBA5DA0, qword_1EBC2A730);
  return a3(v11, v8, MEMORY[0x1E69E73E0], v5, v12);
}

uint64_t DiffableDataStatePresenter.__allocating_init<A>(dataPresenter:stateStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BAD5F374(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t DiffableDataStatePresenter.init<A>(dataPresenter:stateStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BAD5F374(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1BAD5C9D0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  v3 = sub_1BAD9C978();
  v29 = v2;
  v30 = v1;
  swift_getAssociatedTypeWitness();
  v39 = v3;
  v40 = sub_1BAD9C978();
  v35 = v40;
  WitnessTable = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v4 = sub_1BAD9C558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - v6;
  v8 = sub_1BAD9C6D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 2);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1BAD9C6E8();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {

    v33 = sub_1BAD601DC(v16);
    v34 = v3;
    v17 = v33;

    v18 = v5;
    v19 = v4;
    v20 = *(*v0 + 104);
    swift_beginAccess();
    v21 = v0;
    v36 = *(v18 + 16);
    v36(v7, &v0[v20], v19);
    v22 = sub_1BAD9C538();
    v37 = *(v18 + 8);
    v23 = v37(v7, v19);
    v31 = v27;
    v38 = v22;
    MEMORY[0x1EEE9AC00](v23);
    v27[-2] = v17;
    v27[-1] = v0;
    sub_1BAD9D278();
    v32 = MEMORY[0x1E69E6350];
    swift_getWitnessTable();
    v34 = sub_1BAD9D858();
    v27[1] = v18 + 16;
    v28 = v20;
    v36(v7, &v0[v20], v19);
    v24 = sub_1BAD9C528();
    v31 = (v18 + 8);
    v25 = v37(v7, v19);
    v38 = v24;
    MEMORY[0x1EEE9AC00](v25);
    v27[-2] = v33;
    v27[-1] = v21;
    sub_1BAD9D278();
    swift_getWitnessTable();
    v26 = sub_1BAD9D858();

    v38 = v34;
    swift_getWitnessTable();
    LOBYTE(v22) = sub_1BAD9D428();

    if (v22 & 1) != 0 && (v38 = v26, swift_getWitnessTable(), (sub_1BAD9D428()))
    {
    }

    else
    {
      v36(v7, &v21[v28], v19);
      sub_1BAD9C4D8();

      (*(v30 + 32))(v29);
      sub_1BAD9C6F8();

      return v37(v7, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD5CF58(uint64_t a1)
{
  v84 = a1;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v4 = sub_1BAD9C978();
  v5 = sub_1BAD9D948();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v59 - v8;
  v81 = v3;
  v82 = v2;
  swift_getAssociatedTypeWitness();
  v9 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v87 = v9;
  v88 = v4;
  v77 = v4;
  v71 = WitnessTable;
  v89 = WitnessTable;
  v90 = v11;
  v12 = sub_1BAD9C558();
  v83 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v59 - v13;
  v74 = v9;
  v73 = sub_1BAD9D948();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v59 - v17;
  v18 = sub_1BAD9C6D8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v1;
  v24 = *(v1 + 2);
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v25 = v24;
  v26 = sub_1BAD9C6E8();
  result = (*(v19 + 8))(v22, v18);
  if (v26)
  {
    v28 = v15;
    v29 = v12;
    v85 = sub_1BAD9C538();
    v30 = *v1;
    v68 = v11;
    v80 = *(v30 + 104);
    v31 = v80;
    swift_beginAccess();
    v32 = v83;
    v33 = *(v83 + 16);
    v65 = v83 + 16;
    v66 = v33;
    v34 = v69;
    v33(v69, &v23[v31], v29);
    v60 = v29;
    v35 = sub_1BAD9C538();
    v36 = *(v32 + 8);
    v63 = v32 + 8;
    v64 = v36;
    v36(v34, v29);
    v86 = v35;
    v37 = sub_1BAD9D278();
    v62 = MEMORY[0x1E69E6310];
    swift_getWitnessTable();
    v61 = MEMORY[0x1E69AAFA0];
    swift_getWitnessTable();
    v67 = v37;
    sub_1BAD9CF08();

    v38 = v70;
    v39 = v73;
    sub_1BAD9D958();
    v40 = *(v72 + 8);
    v41 = v40(v28, v39);
    MEMORY[0x1EEE9AC00](v41);
    v42 = v82;
    *(&v59 - 2) = v81;
    *(&v59 - 1) = v42;
    v71 = MEMORY[0x1E69E6EF8];
    swift_getWitnessTable();
    v72 = sub_1BAD9D108();
    v40(v38, v39);
    v43 = v60;
    v85 = sub_1BAD9C528();
    v74 = v23;
    v66(v34, &v23[v80], v43);
    v44 = sub_1BAD9C528();
    v64(v34, v43);
    v86 = v44;
    sub_1BAD9D278();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v45 = v75;
    sub_1BAD9CF08();

    v46 = v76;
    v47 = v79;
    v48 = v45;
    sub_1BAD9D958();
    v49 = *(v78 + 8);
    v50 = v49(v48, v47);
    MEMORY[0x1EEE9AC00](v50);
    v51 = v82;
    *(&v59 - 2) = v81;
    *(&v59 - 1) = v51;
    swift_getWitnessTable();
    v52 = sub_1BAD9D108();
    v53 = v46;
    v54 = v72;
    v49(v53, v47);
    v85 = v54;
    swift_getWitnessTable();
    v55 = sub_1BAD9D428();
    v56 = v43;
    if (v55 & 1) != 0 && (v85 = v52, swift_getWitnessTable(), v55 = sub_1BAD9D428(), (v55))
    {

      v57 = v74;
    }

    else
    {
      v57 = v74;
      MEMORY[0x1EEE9AC00](v55);
      *(&v59 - 4) = v54;
      *(&v59 - 3) = v57;
      *(&v59 - 2) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
      sub_1BAD9C9D8();
    }

    v58 = v80;
    swift_beginAccess();
    (*(v83 + 24))(v57 + v58, v84, v56);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DiffableDataStatePresenter.stateStore.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BAD5D940(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1BAD5DA4C();
  v7 = sub_1BAD36320(v6, a2);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_1BAD5DA4C()
{
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  sub_1BAD9C938();
  return sub_1BAD9CE18();
}

uint64_t sub_1BAD5DAEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  v4 = sub_1BAD9D938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  (*(v5 + 16))(v7, a1, v4, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v7, v4);
LABEL_6:
    v16 = 1;
    return (*(v9 + 56))(a2, v16, 1, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A550);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = v7[*(TupleTypeMetadata3 + 64) + 8];
  v15 = *(v9 + 32);
  v15(v12, &v7[*(TupleTypeMetadata3 + 48)], v8);
  if ((v14 & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  v15(a2, v12, v8);
  v16 = 0;
  return (*(v9 + 56))(a2, v16, 1, v8);
}

uint64_t sub_1BAD5DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v30 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v27 - v5;
  v39 = a2;
  swift_getAssociatedTypeWitness();
  v7 = sub_1BAD9C978();
  v35 = *(v7 - 8);
  v28 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v27 - v8;
  swift_getAssociatedTypeWitness();
  v9 = sub_1BAD9C978();
  v10 = *(v9 - 8);
  v29 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  if (!sub_1BAD9D208())
  {
    goto LABEL_11;
  }

  v13 = 0;
  v33 = *(*v39 + 120);
  v34 = (v10 + 16);
  v31 = (v10 + 8);
  v32 = (v30 + 8);
  while (1)
  {
    v14 = sub_1BAD9D1E8();
    sub_1BAD9D198();
    if (v14)
    {
      (*(v10 + 16))(v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v9);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BAD9D808();
    if (v29 != 8)
    {
      break;
    }

    v40 = result;
    (*v34)(v12, &v40, v9);
    swift_unknownObjectRelease();
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v17 = v36;
      result = sub_1BAD9D208();
      if (!result)
      {
        return result;
      }

      v18 = 0;
      v34 = *(*v39 + 120);
      v19 = (v35 + 16);
      v20 = (v30 + 8);
      v21 = (v35 + 8);
      v22 = v37;
      while (1)
      {
        v23 = sub_1BAD9D1E8();
        sub_1BAD9D198();
        if (v23)
        {
          result = (*(v35 + 16))(v37, v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v18, v7);
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = sub_1BAD9D808();
          if (v28 != 8)
          {
            goto LABEL_24;
          }

          v40 = result;
          (*v19)(v37, &v40, v7);
          result = swift_unknownObjectRelease();
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_21:
            __break(1u);
            return result;
          }
        }

        sub_1BAD5DA4C();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
        sub_1BAD9C9C8();
        (*v20)(v6, v38);
        (*v21)(v22, v7);
        v25 = v36;
        result = sub_1BAD9D208();
        ++v18;
        v26 = v24 == result;
        v17 = v25;
        if (v26)
        {
          return result;
        }
      }
    }

LABEL_5:
    sub_1BAD5DA4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
    sub_1BAD9C9C8();
    (*v32)(v6, v38);
    (*v31)(v12, v9);
    ++v13;
    if (v15 == sub_1BAD9D208())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id *DiffableDataStatePresenter.deinit()
{
  v1 = *(*v0 + 13);
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = sub_1BAD9C558();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 15);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DiffableDataStatePresenter.__deallocating_deinit()
{
  DiffableDataStatePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD5E558(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = *v2;
  sub_1BAD3695C(&qword_1EBC2A850);
  v32 = a2;
  v11 = sub_1BAD9CED8();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = *(v7 + 72);
    v18 = (v7 + 8);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v9, *(v31 + 48) + v17 * v14, v6);
      sub_1BAD3695C(&qword_1EBC2A858);
      v20 = sub_1BAD9CF28();
      v21 = *v18;
      (*v18)(v9, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v17 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v9, v32, v6);
    v33 = *v3;
    sub_1BAD5EB84(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_1BAD5E82C()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - v3;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEA8);
  result = sub_1BAD9D788();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1BAD3695C(&qword_1EBC2A850);
      result = sub_1BAD9CED8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1BAD5EB84(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BAD5E82C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BAD5EE1C();
      goto LABEL_12;
    }

    sub_1BAD5F05C();
  }

  v13 = *v3;
  sub_1BAD3695C(&qword_1EBC2A850);
  v14 = sub_1BAD9CED8();
  v15 = v13 + 56;
  v30 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = v7 + 16;
    v19 = *(v7 + 16);
    v20 = *(v18 + 56);
    do
    {
      v19(v10, *(v30 + 48) + v20 * a2, v6);
      sub_1BAD3695C(&qword_1EBC2A858);
      v21 = sub_1BAD9CF28();
      (*(v18 - 8))(v10, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6, v8);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BAD9DAD8();
  __break(1u);
  return result;
}

void *sub_1BAD5EE1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEA8);
  v6 = *v0;
  v7 = sub_1BAD9D778();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1BAD5F05C()
{
  v1 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - v3;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEA8);
  v6 = sub_1BAD9D788();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BAD3695C(&qword_1EBC2A850);
      result = sub_1BAD9CED8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BAD5F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a1;
  v70 = a4;
  v68 = *v4;
  v8 = *(v68 + 88);
  v9 = *(v68 + 80);
  swift_getAssociatedTypeWitness();
  v10 = sub_1BAD9C978();
  swift_getAssociatedTypeWitness();
  v56 = sub_1BAD9C978();
  v57 = v10;
  v71[0] = v10;
  v71[1] = v56;
  WitnessTable = swift_getWitnessTable();
  v71[2] = WitnessTable;
  v72 = swift_getWitnessTable();
  v54 = v72;
  v11 = sub_1BAD9C558();
  v12 = sub_1BAD9CAF8();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE90);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v43 - v15;
  v52 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A730);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v43 - v18;
  v67 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v43 - v20;
  v46 = sub_1BAD9D4C8();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BAD9D4B8();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1BAD9C6C8();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v61 = a2;
  v65 = a3;
  result = sub_1BAD9C8B8();
  if (result)
  {
    v66 = sub_1BAD5FED4();
    v44 = v8;
    sub_1BAD9C6B8();
    v71[0] = MEMORY[0x1E69E7CC0];
    sub_1BAD5FF20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE98);
    v43 = v9;
    sub_1BAD60048(&qword_1EDBA60A0, &qword_1EBC2AE98);
    sub_1BAD9D688();
    (*(v45 + 104))(v22, *MEMORY[0x1E69E8090], v46);
    v26 = v66;
    *(v5 + 2) = sub_1BAD9D518();
    v27 = v47;
    sub_1BAD9C548();
    (*(v48 + 32))(&v5[*(*v5 + 104)], v27, v67);
    *&v5[*(*v5 + 112)] = v69;
    v28 = v65;
    (*(v52 + 16))(v51, v61, v65);
    swift_unknownObjectRetain();
    v29 = v49;
    v30 = v70;
    sub_1BAD9C9F8();
    (*(v50 + 32))(&v5[*(*v5 + 120)], v29, v53);
    sub_1BAD9C8C8();
    v31 = *(v5 + 2);
    v72 = v26;
    v73 = MEMORY[0x1E69AB720];
    v71[0] = v31;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    *(v32 + 24) = v30;
    v33 = swift_allocObject();
    v33[2] = v28;
    v33[3] = v30;
    v33[4] = sub_1BAD5FF78;
    v33[5] = v32;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEA0);
    sub_1BAD60048(qword_1EDBA5DB0, &qword_1EBC2AEA0);
    v35 = v58;
    sub_1BAD9C998();

    (*(v59 + 8))(v35, v60);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v36 = v44;
    v37 = v43;
    (*(v44 + 32))(v43, v44);
    v38 = *(v5 + 2);
    v72 = v66;
    v73 = MEMORY[0x1E69AB720];
    v71[0] = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = v28;
    *(v39 + 24) = v30;
    v40 = swift_allocObject();
    v40[2] = v28;
    v40[3] = v30;
    v40[4] = sub_1BAD60090;
    v40[5] = v39;
    sub_1BAD9C718();
    v41 = v38;
    swift_getWitnessTable();
    v42 = v62;
    sub_1BAD9C998();

    (*(v63 + 8))(v42, v64);
    __swift_destroy_boxed_opaque_existential_1(v71);
    (*(v36 + 40))(v37, v36);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAD5FD00()
{
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  swift_getAssociatedTypeWitness();
  sub_1BAD9C978();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BAD9C558();
  if (v0 <= 0x3F)
  {
    sub_1BAD2E610();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

unint64_t sub_1BAD5FED4()
{
  result = qword_1EDBA6090;
  if (!qword_1EDBA6090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA6090);
  }

  return result;
}

unint64_t sub_1BAD5FF20()
{
  result = qword_1EDBA6098;
  if (!qword_1EDBA6098)
  {
    sub_1BAD9D4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA6098);
  }

  return result;
}

uint64_t (*sub_1BAD5FF78(uint64_t a1))()
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return sub_1BAD601B8;
}

uint64_t (*sub_1BAD5FFE8())(void *a1)
{
  v1 = (*(v0 + 32))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1BAD6018C;
}

uint64_t sub_1BAD60048(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_1BAD60090(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return sub_1BAD60100;
}

uint64_t sub_1BAD601DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A848);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BAD3695C(&qword_1EBC2A850);
  result = MEMORY[0x1BFB029B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1BAD5E558(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t AnyDimension.value(in:rounded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BAD9DA68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = (*(a4 + 8))(a1, a3, a4);
  (*(v9 + 16))(v11, a2, v8);
  result = (*(v9 + 88))(v11, v8);
  if (result != *MEMORY[0x1E69E7038] && result != *MEMORY[0x1E69E7030] && result != *MEMORY[0x1E69E7040] && result != *MEMORY[0x1E69E7048] && result != *MEMORY[0x1E69E7020] && result != *MEMORY[0x1E69E7028])
  {
    sub_1BAD9D318();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1BAD605D8()
{
  v0 = sub_1BAD9DA68();
  __swift_allocate_value_buffer(v0, qword_1EDBA61A0);
  v1 = __swift_project_value_buffer(v0, qword_1EDBA61A0);
  v2 = *MEMORY[0x1E69E7038];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Dimensions.defaultRoundingRule.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA6238 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAD9DA68();
  v3 = __swift_project_value_buffer(v2, qword_1EDBA61A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double static Dimensions.cumulativeLanguageAwareOutsets(of:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = v8[3];
      v10 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v3 = v3 + (*(v10 + 16))(a2, v9, v10);
      v2 = v2 + v11;
      v5 = v5 + v12;
      v4 = v4 + v13;
      v8 += 5;
      --v6;
    }

    while (v6);
  }

  return v3;
}

void _sSo8UIButtonC5JetUIE7measure5toFit4withSo14JUMeasurementsVSo6CGSizeV_So17UITraitCollectionCtF_0(double a1, double a2)
{
  [v2 sizeThatFits_];
  v6 = v5;
  v8 = v7;
  v9 = [v2 titleLabel];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v2 subtitleLabel];
  if (v11)
  {
    v12 = v11;

LABEL_4:
    constrainWidth(of:toFit:)(__PAIR128__(*&v8, *&v6), __PAIR128__(*&a2, *&a1));
    return;
  }

  [v10 sizeThatFits_];
  [v10 _firstBaselineOffsetFromTop];
  [v10 _baselineOffsetFromBottom];
  constrainWidth(of:toFit:)(__PAIR128__(*&v8, *&v6), __PAIR128__(*&a2, *&a1));
}

__n128 LabelPlaceholder.init(_:with:where:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = v5;
  result = *(a3 + 1);
  v7 = *(a3 + 3);
  *(a5 + 32) = result;
  *(a5 + 48) = v7;
  *(a5 + 96) = 0;
  *(a5 + 104) = a4;
  return result;
}

void LabelPlaceholder.init(_:with:where:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  if (a1)
  {
    v11 = *(a2 + 3);
    v12 = *(a2 + 1);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

    v8 = v11;
    v7 = v12;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  *(a4 + 48) = v8;
  *(a4 + 96) = 0;
  *(a4 + 104) = a3;
}

uint64_t LabelPlaceholder.isTextEmpty.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    return !v1 || [v1 length] == 0;
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v5 = v4 == 0;
    return !v3 || v5;
  }
}

Swift::Bool __swiftcall LabelPlaceholder.willTextTruncate(fitting:with:)(CGSize fitting, UITraitCollection with)
{
  height = fitting.height;
  if (fitting.width == 0.0 && fitting.height == 0.0)
  {
    __break(1u);
    return with.super.isa;
  }

  v5 = *v2;
  if (*(v2 + 16))
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    isa = with.super.isa;
    width = fitting.width;
    v8 = [*v2 length];
    fitting.width = width;
    v5 = v8;
    with.super.isa = isa;
    if (!v5)
    {
      goto LABEL_17;
    }

LABEL_13:
    LOBYTE(v5) = 1;
    if (fitting.width > 0.0 && height > 0.0)
    {
      v11 = LabelPlaceholder.measure(toFit:with:)(__PAIR128__(0x7FEFFFFFFFFFFFFFLL, *&fitting.width), with);
      LOBYTE(v5) = ceil(height) < ceil(v11.var1);
    }

    goto LABEL_17;
  }

  v9 = *(v2 + 8);
  if (v9)
  {
    v5 &= 0xFFFFFFFFFFFFuLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v9) & 0xF;
    }

    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  LOBYTE(v5) = 0;
LABEL_17:
  LOBYTE(with.super.isa) = v5;
  return with.super.isa;
}

JUMeasurements __swiftcall LabelPlaceholder.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v3 = v2;
  height = toFit.height;
  width = toFit.width;
  v7 = sub_1BAD9C6D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BAD5FED4();
  *v10 = sub_1BAD9D4D8();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = sub_1BAD9C6E8();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_1EDBA5A90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = qword_1EDBA5A98;
  v13 = [qword_1EDBA5A98 _defaultAttributes];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v15 = sub_1BAD9CE98();
  }

  else
  {
    v15 = 0;
  }

  sub_1BAD3C9B4(v3 + 24, &v57);
  if (v62)
  {
    v54 = v59;
    v55 = v60;
    v56 = v61;
    v53 = v58;
    v52 = v57;
    v16 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
    v17 = *(&v53 + 1);
    v18 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    v19 = (*(v18 + 8))(with.super.isa, v17, v18);

    v20 = *(&v54 + 1);
    v21 = v55;
    v22 = v56;
    [v12 setFont_];
    [v12 setTextAlignment_];
    [v12 setLineBreakMode_];
    [v12 setNumberOfLines_];
    [v12 setLineSpacing_];

    sub_1BAD31F30(&v52);
  }

  else
  {
    v23 = *(&v57 + 1);
    v24 = v58;
    v25 = v59;
    v26 = v57;
    [v12 setFont_];
    [v12 setTextAlignment_];
    [v12 setLineBreakMode_];
    [v12 setNumberOfLines_];
    [v12 setLineSpacing_];
  }

  v27 = *v3;
  v28 = *(v3 + 8);
  v29 = *(v3 + 16);
  if (v29)
  {
    [v12 setAttributedText_];
  }

  else
  {
    if (v28)
    {

      v30 = sub_1BAD9CF38();
      sub_1BAD39BCC(v27, v28, 0);
    }

    else
    {
      v30 = 0;
    }

    [v12 setText_];

    v31 = [v12 font];
    [v12 set:v31 fontForShortcutBaselineCalculation:?];
  }

  [v12 sizeThatFits_];
  v33 = v32;
  v35 = v34;
  [v12 _firstBaselineOffsetFromTop];
  v37 = v36;
  [v12 _baselineOffsetFromBottom];
  v39 = v38;
  if (*(v3 + 104))
  {
    v40 = [v12 font];
    sub_1BAD61184(v40, v27, v28, v29);
    v42 = v41;
    v44 = v43;

    v35 = v44 + v35 + v42;
    v37 = v37 + v42;
    v39 = v39 + v44;
  }

  *&v45 = *&constrainWidth(of:toFit:)(__PAIR128__(*&v35, v33), __PAIR128__(*&height, *&width));
  v46 = constrainHeight(of:toFit:)(__PAIR128__(*&v35, v33), __PAIR128__(*&height, *&width));
  [v12 setText_];
  if (v15)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v47 = sub_1BAD9CE88();
  }

  else
  {
    v47 = 0;
  }

  [v12 _setDefaultAttributes_];

  [v12 set:0 fontForShortcutBaselineCalculation:?];

  v48 = v45;
  v49 = v46.height;
  v50 = v37;
  v51 = v39;
  result.var3 = v51;
  result.var2 = v50;
  result.var1 = v49;
  result.var0 = v48;
  return result;
}

void sub_1BAD61184(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if (a4)
    {
      if (a2)
      {
        v6 = a1;
        sub_1BAD39BA4(a2, a3, 1);
        v7 = [a2 string];
        v8 = sub_1BAD9CF68();
        v10 = v9;

        aBlock = v8;
        v32 = v10;
        if (qword_1EDBA61E8 != -1)
        {
          swift_once();
        }

        v11 = sub_1BAD9C248();
        __swift_project_value_buffer(v11, qword_1EDBA61F0);
        sub_1BAD13DE8();
        sub_1BAD9D5F8();
        v13 = v12;

        if (v13)
        {

          sub_1BAD39BCC(a2, a3, 1);
        }

        else
        {
          v18 = *(MEMORY[0x1E69DDCE0] + 16);
          v38 = *MEMORY[0x1E69DDCE0];
          v39 = v18;
          v37 = 0;
          v19 = [a2 length];
          v20 = *MEMORY[0x1E69DB648];
          v21 = swift_allocObject();
          *(v21 + 16) = &v38;
          *(v21 + 24) = &v37;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_1BAD13E3C;
          *(v22 + 24) = v21;
          v35 = sub_1BAD25198;
          v36 = v22;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1BAD1268C;
          v34 = &block_descriptor_5;
          v23 = _Block_copy(&aBlock);

          [a2 enumerateAttribute:v20 inRange:0 options:v19 usingBlock:{0x100000, v23}];
          _Block_release(v23);
          LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

          if (v19)
          {
            __break(1u);
          }

          else
          {
            if (v37)
            {

              sub_1BAD39BCC(a2, a3, 1);
            }

            else
            {
              v24 = UIFont.languageAwareOutsets.getter();
              v26 = v25;
              v28 = v27;
              v30 = v29;

              sub_1BAD39BCC(a2, a3, 1);
              *&v38 = v24;
              *(&v38 + 1) = v26;
              *&v39 = v28;
              *(&v39 + 1) = v30;
            }
          }
        }
      }
    }

    else if (a3)
    {
      aBlock = a2;
      v32 = a3;
      v14 = qword_1EDBA61E8;
      v15 = a1;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_1BAD9C248();
      __swift_project_value_buffer(v16, qword_1EDBA61F0);
      sub_1BAD13DE8();
      sub_1BAD9D5F8();
      if ((v17 & 1) == 0)
      {
        UIFont.languageAwareOutsets.getter();
      }
    }
  }
}

uint64_t LabelPlaceholder.Options.description.getter(char a1)
{
  if (a1)
  {
    v1 = sub_1BAD17E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1BAD17E00((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    strcpy(v4 + 32, ".languageAware");
    v4[47] = -18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEB0);
  sub_1BAD61D20();
  v5 = sub_1BAD9CF18();
  v7 = v6;

  MEMORY[0x1BFB026B0](v5, v7);

  MEMORY[0x1BFB026B0](93, 0xE100000000000000);
  return 91;
}

id sub_1BAD616E8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  qword_1EDBA5A98 = result;
  return result;
}

__n128 LabelPlaceholder.init(_:with:where:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *(a5 + 40) = a3[1];
  result = a3[2];
  v7 = a3[3];
  *(a5 + 56) = result;
  *(a5 + 72) = v7;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 88) = *(a3 + 8);
  *(a5 + 24) = v5;
  *(a5 + 96) = 1;
  *(a5 + 104) = a4;
  return result;
}

__n128 LabelPlaceholder.init(_:with:where:)@<Q0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  *(a4 + 40) = a2[1];
  result = a2[2];
  v11 = a2[3];
  *(a4 + 56) = result;
  *(a4 + 72) = v11;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 88) = *(a2 + 8);
  *(a4 + 24) = v9;
  *(a4 + 96) = 1;
  *(a4 + 104) = a3;
  return result;
}

uint64_t LabelPlaceholder.description.getter()
{
  v1 = v0;
  v3 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (v3)
    {
      v4 = v3;
      sub_1BAD9D7E8();

      *v39 = 0xD000000000000010;
      *&v39[8] = 0x80000001BADAAF50;
      v5 = [v4 description];
      v6 = sub_1BAD9CF68();
      v8 = v7;

      MEMORY[0x1BFB026B0](v6, v8);

      v9 = 0x80000001BADAAF50;
      v10 = 0xD000000000000010;
      v11 = sub_1BAD17E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1BAD17E00((v12 > 1), v13 + 1, 1, v11);
      }

      sub_1BAD39BCC(v3, v2, 1);
    }

    else
    {
      v11 = sub_1BAD17E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v15 = *(v11 + 3);
      v14 = v13 + 1;
      if (v13 >= v15 >> 1)
      {
        v11 = sub_1BAD17E00((v15 > 1), v13 + 1, 1, v11);
      }

      v9 = 0x80000001BADAAED0;
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    if (v2)
    {
      *v39 = 0x203A74786574;
      *&v39[8] = 0xE600000000000000;
      sub_1BAD39BA4(v3, v2, 0);
      MEMORY[0x1BFB026B0](v3, v2);
      sub_1BAD39BCC(v3, v2, 0);
      v9 = 0xE600000000000000;
      v10 = 0x203A74786574;
    }

    else
    {
      v9 = 0xE90000000000006CLL;
      v10 = 0x696E203A74786574;
    }

    v11 = sub_1BAD17E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v16 = *(v11 + 3);
    v14 = v13 + 1;
    if (v13 >= v16 >> 1)
    {
      v11 = sub_1BAD17E00((v16 > 1), v13 + 1, 1, v11);
    }
  }

  *(v11 + 2) = v14;
  v17 = &v11[16 * v13];
  *(v17 + 4) = v10;
  *(v17 + 5) = v9;
  sub_1BAD3C9B4(v1 + 24, v39);
  if (v42)
  {
    *&v36[32] = *&v39[32];
    v37 = v40;
    v38 = v41;
    *v36 = *v39;
    *&v36[16] = *&v39[16];
    sub_1BAD9D7E8();
    MEMORY[0x1BFB026B0](0xD000000000000017, 0x80000001BADAAEF0);
    sub_1BAD9D8A8();
    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_1BAD17E00((v18 > 1), v19 + 1, 1, v11);
    }

    sub_1BAD31F30(v36);
    *(v11 + 2) = v19 + 1;
    v20 = &v11[16 * v19];
    *(v20 + 4) = 0;
    *(v20 + 5) = 0xE000000000000000;
    v21 = *(v1 + 104);
    if (!v21)
    {
      goto LABEL_25;
    }

LABEL_22:
    strcpy(v39, "options: ");
    *&v39[10] = 0;
    *&v39[12] = -385875968;
    v25 = LabelPlaceholder.Options.description.getter(v21);
    MEMORY[0x1BFB026B0](v25);

    v26 = *v39;
    v28 = *(v11 + 2);
    v27 = *(v11 + 3);
    if (v28 >= v27 >> 1)
    {
      v11 = sub_1BAD17E00((v27 > 1), v28 + 1, 1, v11);
    }

    *(v11 + 2) = v28 + 1;
    *&v11[16 * v28 + 32] = v26;
    goto LABEL_25;
  }

  v22 = *v39;
  *v36 = 0;
  *&v36[8] = 0xE000000000000000;
  v33 = *&v39[24];
  v34 = *&v39[8];
  sub_1BAD9D7E8();
  v35 = *v36;
  MEMORY[0x1BFB026B0](0xD000000000000010, 0x80000001BADAAF30);
  *v36 = v22;
  *&v36[24] = v33;
  *&v36[8] = v34;
  sub_1BAD9D8A8();
  v24 = *(v11 + 2);
  v23 = *(v11 + 3);
  if (v24 >= v23 >> 1)
  {
    v11 = sub_1BAD17E00((v23 > 1), v24 + 1, 1, v11);
  }

  *(v11 + 2) = v24 + 1;
  *&v11[16 * v24 + 32] = v35;
  v21 = *(v1 + 104);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_25:
  *v39 = 0xD000000000000011;
  *&v39[8] = 0x80000001BADAAF10;
  *v36 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AEB0);
  sub_1BAD61D20();
  v29 = sub_1BAD9CF18();
  v31 = v30;

  MEMORY[0x1BFB026B0](v29, v31);

  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return *v39;
}

unint64_t sub_1BAD61D20()
{
  result = qword_1EBC2AEB8;
  if (!qword_1EBC2AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AEB8);
  }

  return result;
}

unint64_t sub_1BAD61D88()
{
  result = qword_1EBC2AEC0;
  if (!qword_1EBC2AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AEC0);
  }

  return result;
}

unint64_t sub_1BAD61DE0()
{
  result = qword_1EBC2AEC8;
  if (!qword_1EBC2AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AEC8);
  }

  return result;
}

unint64_t sub_1BAD61E38()
{
  result = qword_1EBC2AED0;
  if (!qword_1EBC2AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AED0);
  }

  return result;
}

unint64_t sub_1BAD61E90()
{
  result = qword_1EBC2AED8[0];
  if (!qword_1EBC2AED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC2AED8);
  }

  return result;
}

uint64_t sub_1BAD61EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BAD61F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BAD61FF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD62034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BAD62084(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double MeasurementRange.constrain(_:)(uint64_t a1, int a2, uint64_t a3, char a4, double result)
{
  v5 = *&a1;
  v6 = (*&a1 > result) & ~a2;
  if (!v6)
  {
    v5 = result;
  }

  if (*&a3 < result)
  {
    result = *&a3;
  }

  if (a4)
  {
    result = v5;
  }

  if (v6)
  {
    return v5;
  }

  return result;
}

uint64_t MeasurementRange.minimum.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MeasurementRange.maximum.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MeasurementRange.contains(_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  if ((a2 & 1) != 0 || *&a1 <= a5)
  {
    return a4 & 1 | (*&a3 >= a5);
  }

  else
  {
    return 0;
  }
}

uint64_t MeasurementRange.description.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 0x6574696E69666E69;
    }

    v6 = 3026478;
    goto LABEL_8;
  }

  if ((a4 & 1) == 0)
  {
    v6 = sub_1BAD9D308();
    MEMORY[0x1BFB026B0](3026478, 0xE300000000000000);
LABEL_8:
    v5 = sub_1BAD9D308();
    MEMORY[0x1BFB026B0](v5);

    return v6;
  }

  v6 = sub_1BAD9D308();
  MEMORY[0x1BFB026B0](3026478, 0xE300000000000000);
  return v6;
}

uint64_t static MeasurementRange.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a6 & 1) != 0 || *&a1 != *&a5)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || *&a3 != *&a7)
    {
      return 0;
    }

    return 1;
  }

  if (a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1BAD6230C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BAD62410(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD62430(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

void UILabel.textAppearance.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v6 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  [v1 setFont_];
  [v1 setTextAlignment_];
  [v1 setLineBreakMode_];
  [v1 setNumberOfLines_];
  [v1 setLineSpacing_];
}

id UILabel.init(with:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v6 setFont_];
  [v6 setTextAlignment_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setLineSpacing_];

  return v6;
}

id UILabel.textAppearance.getter@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  result = [v1 font];
  if (result)
  {
    v5 = result;

    v6 = [v1 textAlignment];
    v7 = [v1 lineBreakMode];
    v8 = [v1 numberOfLines];
    result = [v1 lineSpacing];
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v8;
    a1[4] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BAD626EC(void *a1, id *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  [*a2 setFont_];
  [v6 setTextAlignment_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];

  return [v6 setLineSpacing_];
}

void (*UILabel.textAppearance.modify(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  result = [v1 font];
  if (result)
  {
    v7 = result;

    v8 = [v1 textAlignment];
    v9 = [v1 lineBreakMode];
    v10 = [v1 numberOfLines];
    v11 = [v1 lineSpacing];
    *v4 = v7;
    v4[1] = v8;
    v4[2] = v9;
    v4[3] = v10;
    v4[4] = v11;
    return sub_1BAD628C8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAD628C8(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  if (a2)
  {
    v9 = v3;
    [v8 setFont_];
    [v8 setTextAlignment_];
    [v8 setLineBreakMode_];
    [v8 setNumberOfLines_];
    [v8 setLineSpacing_];

    v3 = *v2;
  }

  else
  {
    [(*a1)[5] setFont_];
    [v8 setTextAlignment_];
    [v8 setLineBreakMode_];
    [v8 setNumberOfLines_];
    [v8 setLineSpacing_];
  }

  free(v2);
}

uint64_t sub_1BAD62A18()
{
  v0 = sub_1BAD9CDC8();
  __swift_allocate_value_buffer(v0, qword_1EBC357D0);
  __swift_project_value_buffer(v0, qword_1EBC357D0);
  return sub_1BAD9CDD8();
}

uint64_t sub_1BAD62A88()
{
  v0 = sub_1BAD9CDC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAD9CDF8();
  __swift_allocate_value_buffer(v4, qword_1EBC357E8);
  __swift_project_value_buffer(v4, qword_1EBC357E8);
  if (qword_1EBC29C48 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EBC357D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1BAD9CDE8();
}

void CustomTextStyle.scalingValues(compatibleWith:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_1BAD9CF68();
  v9 = v8;
  if (v7 == sub_1BAD9CF68() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1BAD9DA98();

    if ((v12 & 1) == 0)
    {
      if (qword_1EDBA5BD0 != -1)
      {
        swift_once();
      }

      v13 = *(a3 + 8);
      v14 = qword_1EDBA5BD8;
      v15 = v13();

      [v15 lineHeight];
      [v15 leading];
      v16 = (v13)(a1, a2, a3);
      [v16 lineHeight];
      [v16 leading];
    }
  }
}

uint64_t sub_1BAD62DA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_1BAD62DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v2);
  return (*(v3 + 16))(v2, v3) - *(v1 + 64);
}

uint64_t sub_1BAD62E50(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  return (*(v11 + 24))(v10, v11, *(v9 + 64) + a1, *(v9 + 56) + a2, a3 - (*(v9 + 64) + *(v9 + 80)), a4 - (*(v9 + 56) + *(v9 + 72)));
}

void (*sub_1BAD62EE8(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = *(v5 + 56);
  v4[5] = v9;
  v10 = *(v5 + 64);
  v4[6] = v10;
  v11 = *(v5 + 72);
  v4[7] = v11;
  v12 = *(v5 + 80);
  v4[8] = v12;
  *v4 = v8 - v10;
  v4[1] = v13 - v9;
  v4[2] = v14 + v10 + v12;
  v4[3] = v15 + v9 + v11;
  return sub_1BAD62FD4;
}

void sub_1BAD62FD4(double **a1)
{
  v1 = *a1;
  v3 = (*a1)[5];
  v2 = (*a1)[6];
  v4 = *(*a1 + 4);
  v5 = (*a1)[7] + v3;
  v6 = (*a1)[8] + v2;
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v11 = v4[5];
  v12 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v11);
  (*(v12 + 24))(v11, v12, v2 + v7, v3 + v8, v9 - v6, v10 - v5);

  free(v1);
}

uint64_t sub_1BAD6308C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 40))(v1, v2) & 1;
}

uint64_t sub_1BAD630E8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t (*sub_1BAD63148(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  *(a1 + 8) = (*(v5 + 40))(v4, v5) & 1;
  return sub_1BAD631CC;
}

uint64_t sub_1BAD631CC(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  __swift_project_boxed_opaque_existential_1((*a1 + 16), v2);
  return (*(v3 + 48))(v1, v2, v3);
}

uint64_t sub_1BAD6322C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 64))(v1, v2) & 1;
}

double sub_1BAD63288()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v2);
  return (*(v3 + 72))(v2, v3) - *(v1 + 64);
}

double sub_1BAD63300(uint64_t a1, double a2, double a3)
{
  v5 = *(*v3 + 64) + *(*v3 + 80);
  v6 = a2 - v5;
  v7 = a3 - (*(*v3 + 56) + *(*v3 + 72));
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v8);
  return v5 + (*(*(v9 + 8) + 8))(a1, v8, v6, v7);
}

double *LayoutView.withLayoutMargins(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double **a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InsetLayoutView();
  (*(v15 + 16))(v17, v7, a1);
  result = sub_1BAD634F4(v17, a4, a5, a6, a7, v18, a1, a2);
  a3[3] = v18;
  a3[4] = &off_1F38EB658;
  *a3 = result;
  return result;
}

double *sub_1BAD634F4(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a7;
  v19 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a1, a7);
  v15 = swift_allocObject();
  sub_1BAD1A480(&v17, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  return v15;
}

id UIImageView.init(with:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v3 setContentMode_];
  [v3 setPreferredSymbolConfiguration_];

  return v3;
}

void UIImageView.imageAppearance.setter(uint64_t a1)
{
  v2 = *a1;
  [v1 setContentMode_];
  [v1 setPreferredSymbolConfiguration_];
}

id UIImageView.imageAppearance.getter@<X0>(void *a1@<X8>)
{
  a1[1] = 4;
  a1[1] = [v1 contentMode];
  result = [v1 preferredSymbolConfiguration];
  *a1 = result;
  return result;
}

void (*UIImageView.imageAppearance.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[1] = [v1 contentMode];
  *a1 = [v1 preferredSymbolConfiguration];
  return sub_1BAD63764;
}

void sub_1BAD63764(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *a1;
    [v3 setContentMode_];
    [v3 setPreferredSymbolConfiguration_];
  }

  else
  {
    v4 = *a1;
    [*(a1 + 16) setContentMode_];
    [v3 setPreferredSymbolConfiguration_];
  }
}

uint64_t HorizontalSpaceMeasurable.init(_:multiplier:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
  v6 = swift_allocObject();
  result = sub_1BAD0B40C(a1, v6 + 16);
  *a2 = v6;
  *(a2 + 8) = a3;
  return result;
}

uint64_t HorizontalSpaceMeasurable.horizontalSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

double HorizontalSpaceMeasurable.measurements(fitting:in:)(uint64_t a1)
{
  v3 = sub_1BAD9DA68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = *v1;
  v11 = v1[1];
  swift_beginAccess();
  sub_1BAD14A3C(*&v10 + 16, v25);
  v12 = v26;
  v13 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v14 = (*(v13 + 8))(a1, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v15 = v11 * v14;
  if (qword_1EDBA6238 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_1EDBA61A0);
  v17 = *(v4 + 16);
  v17(v9, v16, v3);
  *v25 = v15;
  v17(v6, v9, v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x1E69E7038])
  {
    v19 = round(v15);
LABEL_13:
    (*(v4 + 8))(v9, v3);
    return v19;
  }

  if (v18 == *MEMORY[0x1E69E7030])
  {
    v19 = rint(v15);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7040])
  {
    v19 = ceil(v15);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7048])
  {
    v19 = floor(v15);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7020])
  {
    v19 = trunc(v15);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7028])
  {
    (*(v4 + 8))(v9, v3);
    v21 = ceil(v15);
    v22 = floor(v15);
    if (v15 < 0.0)
    {
      return v22;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    sub_1BAD9D318();
    v23 = *(v4 + 8);
    v23(v9, v3);
    v23(v6, v3);
    return *v25;
  }
}

uint64_t sub_1BAD63C24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAD63C78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  return sub_1BAD9CFB8();
}

uint64_t sub_1BAD63D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0x7463657269646E49;
  v13 = 0xE900000000000028;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v8, a2);
  v9 = sub_1BAD9CFB8();
  MEMORY[0x1BFB026B0](v9);

  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_1BAD63F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v13 = *(*v12 + 88);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, a1 + v13, a3);
  v15 = *(*a2 + 88);
  swift_beginAccess();
  v14(v8, a2 + v15, a3);
  v16 = sub_1BAD9CF28();
  v17 = *(v6 + 8);
  v17(v8, a3);
  v17(v11, a3);
  return v16 & 1;
}

uint64_t sub_1BAD640D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v8 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, a2 + v9, a3);
  sub_1BAD9CEE8();
  return (*(v5 + 8))(v7, a3);
}

uint64_t sub_1BAD64200(uint64_t a1, uint64_t a2)
{
  sub_1BAD9DB48();
  sub_1BAD640D4(v5, a1, a2);
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD64288(uint64_t a1, uint64_t a2)
{
  sub_1BAD9DB48();
  sub_1BAD640D4(v5, *v2, *(a2 + 16));
  return sub_1BAD9DB88();
}

uint64_t AnyPlacementSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for _ConcretePlacementSequenceBox();
  a3[4] = &off_1F38EB838;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_1BAD64398(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v3 + 16))(v5, v1, v2, v7);
  sub_1BAD9D0F8();
  swift_getAssociatedConformanceWitness();
  return sub_1BAD9D768();
}

uint64_t AnyPlacementSequence.base.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AnyPlacementSequence.union.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t AnyPlacementSequence.makeIterator()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyPlacementSequence.description.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  return sub_1BAD9CFB8();
}

uint64_t sub_1BAD64698()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1BAD646F4(uint64_t a1)
{
  result = sub_1BAD6471C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD6471C()
{
  result = qword_1EBC2AF60;
  if (!qword_1EBC2AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF60);
  }

  return result;
}

uint64_t sub_1BAD64770()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  return sub_1BAD9CFB8();
}

unint64_t sub_1BAD647E8()
{
  result = qword_1EBC2AF68;
  if (!qword_1EBC2AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2AF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF68);
  }

  return result;
}

uint64_t sub_1BAD6484C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  result = sub_1BAD48260(v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1BAD648C0()
{
  v1 = sub_1BAD83668(v0);
  sub_1BAD48260(v0);
  return v1;
}

uint64_t TallLocaleMeasurable.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2A180);
  v4 = swift_allocObject();
  result = sub_1BAD0B40C(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t TallLocaleMeasurable.dimension.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BAD14A3C(v3 + 16, a1);
}

uint64_t _s5JetUI20TallLocaleMeasurableV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(void *a1)
{
  v3 = sub_1BAD9C3B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *v1;
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  sub_1BAD9D4F8();
  v8 = Locale.hasExtraTallWritingSystem.getter();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    swift_beginAccess();
    sub_1BAD14A3C(v7 + 16, v13);
    v10 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v11 = [a1 traitCollection];
    (*(v10 + 16))();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t sub_1BAD64C08()
{
  v0 = sub_1BAD9C248();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDBA61F0);
  v5 = __swift_project_value_buffer(v0, qword_1EDBA61F0);
  v6 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (!v6)
  {
    return sub_1BAD9C238();
  }

  v7 = v6;
  sub_1BAD9C218();

  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t static CharacterSet.excessiveLineHeight.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA61E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAD9C248();
  v3 = __swift_project_value_buffer(v2, qword_1EDBA61F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int __swiftcall LayoutTextView.estimatedNumberOfLines(from:)(JUMeasurements from)
{
  var3 = from.var3;
  var2 = from.var2;
  var1 = from.var1;
  result = (*(v1 + 64))(*&from.var0);
  if (!result)
  {
    goto LABEL_11;
  }

  v6 = result;
  v7 = var1 - var3 - var2;
  [result lineHeight];
  v9 = v8;

  v10 = round(v7 / v9);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10 & ~(v10 >> 63);
  result = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

id static UITraitCollection.withSystemPreferredContentSizeCategory.getter()
{
  v0 = [objc_opt_self() system];
  v1 = [v0 preferredContentSizeCategory];

  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  return v2;
}

id static ObjCFunctions.traitCollection(for:)(void *a1)
{
  v1 = [a1 traitCollection];

  return v1;
}

uint64_t UITraitCollection.prefersAccessibilityLayouts.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = sub_1BAD9D528();

  return v2 & 1;
}

JUMeasurements __swiftcall Measurable.measurements(fitting:with:)(CGSize fitting, UITraitCollection with)
{
  v4 = v3;
  v5 = v2;
  height = fitting.height;
  width = fitting.width;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BAD9F590;
  *(v9 + 32) = with;
  sub_1BAD1B4EC();
  v10 = with.super.isa;
  v11 = sub_1BAD9D168();

  v12 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v13 = type metadata accessor for TraitEnvironmentPlaceholder();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v12;
  v27.receiver = v14;
  v27.super_class = v13;
  v15 = objc_msgSendSuper2(&v27, sel_init);
  v16 = (*(v4 + 8))(v15, v5, v4, width, height);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.var3 = v26;
  result.var2 = v25;
  result.var1 = v24;
  result.var0 = v23;
  return result;
}

CGSize __swiftcall Measurable.measuredSize(fitting:with:)(CGSize fitting, UITraitCollection with)
{
  v4 = v3;
  v5 = v2;
  height = fitting.height;
  width = fitting.width;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BAD9F590;
  *(v9 + 32) = with;
  sub_1BAD1B4EC();
  v10 = with.super.isa;
  v11 = sub_1BAD9D168();

  v12 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v13 = type metadata accessor for TraitEnvironmentPlaceholder();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v12;
  v22.receiver = v14;
  v22.super_class = v13;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  v16 = (*(v4 + 8))(v15, v5, v4, width, height);
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

__n128 AspectFitMeasurable.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 AspectFitMeasurable.aspectRatio.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AspectFitMeasurable.aspectRatio.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double AspectFitMeasurable.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v7 = sub_1BAD9DA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *v3;
  v15 = v3[1];
  if (*v3 == v15)
  {
    if (a3 < a2)
    {
      return a3;
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69E7040];
    v17 = *(v8 + 104);
    if (v15 >= v14)
    {
      v24 = v14 / v15;
      if (v15 == 0.0)
      {
        v24 = 0.0;
      }

      v25 = v24 * a3;
      v17(v10, v16, v7);
      v26 = [a1 traitCollection];
      [v26 displayScale];
      if (v27 <= 0.0)
      {
        v27 = ForJetUIOnly_MainScreenScale();
      }

      a2 = sub_1BAD794F8(v10, v27, v25);

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v18 = v15 / v14;
      v19 = v14 == 0.0;
      v20 = 0.0;
      if (!v19)
      {
        v20 = v18;
      }

      v21 = v20 * a2;
      v17(&v29 - v12, v16, v7);
      v22 = [a1 traitCollection];
      [v22 displayScale];
      if (v23 <= 0.0)
      {
        v23 = ForJetUIOnly_MainScreenScale();
      }

      sub_1BAD794F8(v13, v23, v21);

      (*(v8 + 8))(v13, v7);
    }
  }

  return a2;
}

uint64_t Models.VideoControls.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_1BAD9C7C8();
  v38 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  sub_1BAD9C7D8();
  v18 = sub_1BAD9C778();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v20 = v18 & 1;
  sub_1BAD9C7D8();
  v21 = sub_1BAD9C778();
  v22 = v14;
  v23 = v38;
  v19(v22, v38);
  v24 = v20 | 2;
  v25 = v23;
  if ((v21 & 1) == 0)
  {
    v24 = v20;
  }

  if (v21 != 2)
  {
    v20 = v24;
  }

  sub_1BAD9C7D8();
  v26 = sub_1BAD9C778();
  v19(v11, v25);
  v27 = v20 | 4;
  if ((v26 & 1) == 0)
  {
    v27 = v20;
  }

  if (v26 != 2)
  {
    v20 = v27;
  }

  v28 = v39;
  sub_1BAD9C7D8();
  v29 = sub_1BAD9C778();
  v19(v28, v25);
  v30 = v20 | 8;
  if ((v29 & 1) == 0)
  {
    v30 = v20;
  }

  if (v29 == 2)
  {
    v31 = v20;
  }

  else
  {
    v31 = v30;
  }

  v32 = v40;
  sub_1BAD9C7D8();
  v33 = sub_1BAD9C778();
  v19(v32, v25);
  if (v33 == 2 || (v33 & 1) == 0)
  {
    v36 = sub_1BAD9C8F8();
    (*(*(v36 - 8) + 8))(v41, v36);
    result = (v19)(a1, v25);
  }

  else
  {
    v34 = sub_1BAD9C8F8();
    (*(*(v34 - 8) + 8))(v41, v34);
    result = (v19)(a1, v25);
    v31 |= 0x10uLL;
  }

  *v42 = v31;
  return result;
}

uint64_t Models.VideoControls.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1BAD9C8F8();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = sub_1BAD9C7C8();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1BAD14A3C(a1, v29);
  sub_1BAD9C788();
  if (v2)
  {
    v23 = a1;
  }

  else
  {
    v25 = a2;
    v17 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v18 = v5;
    sub_1BAD9DBA8();
    sub_1BAD9C8E8();
    v20 = v27;
    v19 = v28;
    (*(v27 + 16))(v13, v16, v28);
    v21 = v30;
    (*(v30 + 16))(v7, v10, v18);
    Models.VideoControls.init(deserializing:using:)(v13, v7, v29);
    (*(v21 + 8))(v10, v18);
    (*(v20 + 8))(v16, v19);
    v23 = v26;
    *v25 = v29[0];
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t Models.VideoControls.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD9DBC8();
  sub_1BAD1FC04(MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAD14278(1, 0x6E656E696D6F7270, 0xED000079616C5074, isUniquelyReferenced_nonNull_native);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BAD14278(1, 0xD000000000000010, 0x80000001BADAAFC0, v6);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAD14278(1, 0x756D6E556574756DLL, 0xEA00000000006574, v8);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BAD14278(1, 0x6C50656E696C6E69, 0xEF65737561507961, v7);
  if ((v2 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v2 & 0x10) != 0)
  {
LABEL_6:
    v3 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BAD14278(1, 0x7265626275726373, 0xE800000000000000, v3);
  }

LABEL_7:
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2ABA8);
  sub_1BAD4D600();
  sub_1BAD9DAB8();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

unint64_t sub_1BAD6606C()
{
  result = qword_1EBC2AF78;
  if (!qword_1EBC2AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF78);
  }

  return result;
}

unint64_t sub_1BAD660C4()
{
  result = qword_1EBC2AF80;
  if (!qword_1EBC2AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF80);
  }

  return result;
}

unint64_t sub_1BAD6611C()
{
  result = qword_1EBC2AF88;
  if (!qword_1EBC2AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF88);
  }

  return result;
}

unint64_t sub_1BAD66174()
{
  result = qword_1EBC2AF90;
  if (!qword_1EBC2AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2AF90);
  }

  return result;
}

uint64_t type metadata accessor for DSZipPackager()
{
  result = qword_1EBC2AF98;
  if (!qword_1EBC2AF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAD6624C()
{
  sub_1BAD9C2C8();
  if (v0 <= 0x3F)
  {
    sub_1BAD662E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BAD662E0()
{
  if (!qword_1EBC2AFA8)
  {
    v0 = sub_1BAD9CEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC2AFA8);
    }
  }
}

uint64_t sub_1BAD66340(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = type metadata accessor for DSZipPackager();
  if (v11)
  {
    v13 = *(v12 + 20);
  }

  else
  {
    v13 = *(v12 + 24);
  }

  if (*(*(v6 + v13) + 16))
  {
    sub_1BAD2D7C4(a4, a5);
    if (v14)
    {
      return 0;
    }
  }

  sub_1BAD14B3C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v6 + v13);
  sub_1BAD14538(a1, a2, a4, a5, isUniquelyReferenced_nonNull_native);

  *(v6 + v13) = v17;
  return 1;
}

void sub_1BAD66424(uint64_t a1@<X8>)
{
  v87 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v99 = sub_1BAD9C2C8();
  v92 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v89 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v86 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v86 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v86 - v12;
  sub_1BAD9C288();
  v93 = v1;
  sub_1BAD9C288();
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1BAD9C2A8();
  v15 = sub_1BAD9CF38();

  v16 = [v14 fileExistsAtPath_];

  v100 = v9;
  v91 = v14;
  if (v16)
  {
    sub_1BAD9C2A8();
    v17 = sub_1BAD9CF38();

    aBlock = 0;
    v18 = [v14 removeItemAtPath:v17 error:&aBlock];

    if (v18)
    {
      v19 = aBlock;
    }

    else
    {
      v20 = aBlock;
      v21 = sub_1BAD9C258();

      swift_willThrow();
    }
  }

  v22 = v92;
  v23 = [v13 defaultManager];
  sub_1BAD9C2A8();
  v24 = sub_1BAD9CF38();

  v25 = [v23 fileExistsAtPath_];

  if (v25)
  {
    sub_1BAD9C2A8();
    v26 = sub_1BAD9CF38();

    aBlock = 0;
    v27 = v91;
    v28 = [v91 &selRef_contentView + 2];

    if (v28)
    {
      v29 = aBlock;
    }

    else
    {
      v30 = aBlock;
      v31 = sub_1BAD9C258();

      swift_willThrow();
    }
  }

  else
  {
    v27 = v91;
  }

  v32 = sub_1BAD9C278();
  aBlock = 0;
  v33 = [v27 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v33)
  {
    v34 = aBlock;
  }

  else
  {
    v35 = aBlock;
    v36 = sub_1BAD9C258();

    swift_willThrow();
  }

  v90 = type metadata accessor for DSZipPackager();
  v37 = *(v93 + *(v90 + 20));
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  v97 = *(v93 + *(v90 + 20));
  v98 = (v22 + 8);

  v43 = 0;
  if (v41)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v44);
    ++v43;
    if (v41)
    {
      while (1)
      {
        v45 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v46 = (v44 << 10) | (16 * v45);
        v47 = (*(v97 + 48) + v46);
        v49 = *v47;
        v48 = v47[1];
        v50 = (*(v97 + 56) + v46);
        v51 = *v50;
        v52 = v50[1];
        aBlock = 0x5F73676F6CLL;
        v102 = 0xE500000000000000;

        sub_1BAD14B3C(v51, v52);
        MEMORY[0x1BFB026B0](v49, v48);

        v53 = v96;
        sub_1BAD9C288();

        sub_1BAD9C308();
        (*v98)(v53, v99);
        sub_1BAD14AE8(v51, v52);
        v43 = v44;
        if (!v41)
        {
          break;
        }

LABEL_23:
        v44 = v43;
      }
    }
  }

  v54 = *(v93 + *(v90 + 24));
  v57 = *(v54 + 64);
  v56 = v54 + 64;
  v55 = v57;
  v58 = 1 << *(*(v93 + *(v90 + 24)) + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & v55;
  v61 = (v58 + 63) >> 6;
  v97 = *(v93 + *(v90 + 24));

  v62 = 0;
  if (v60)
  {
    while (1)
    {
      v63 = v62;
LABEL_32:
      v64 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v65 = (v63 << 10) | (16 * v64);
      v66 = (*(v97 + 48) + v65);
      v67 = *v66;
      v68 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = *v69;
      v71 = v69[1];
      aBlock = 0x7365727574706163;
      v102 = 0xE800000000000000;

      sub_1BAD14B3C(v70, v71);
      MEMORY[0x1BFB026B0](v67, v68);

      v72 = v95;
      sub_1BAD9C288();

      sub_1BAD9C308();
      (*v98)(v72, v99);
      sub_1BAD14AE8(v70, v71);
      v62 = v63;
      if (!v60)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_37;
    }

    if (v63 >= v61)
    {
      break;
    }

    v60 = *(v56 + 8 * v63);
    ++v62;
    if (v60)
    {
      goto LABEL_32;
    }
  }

  v73 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v74 = v100;
  v75 = sub_1BAD9C278();
  v76 = v92;
  v77 = v89;
  v78 = v99;
  (*(v92 + 16))(v89, v94, v99);
  v79 = (*(v76 + 80) + 24) & ~*(v76 + 80);
  v80 = swift_allocObject();
  v81 = v91;
  *(v80 + 16) = v91;
  v97 = *(v76 + 32);
  (v97)(v80 + v79, v77, v78);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1BAD67120;
  *(v82 + 24) = v80;
  v105 = sub_1BAD67194;
  v106 = v82;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_1BAD66E98;
  v104 = &block_descriptor_6;
  v83 = _Block_copy(&aBlock);
  v84 = v81;

  aBlock = 0;
  [v73 coordinateReadingItemAtURL:v75 options:8 error:&aBlock byAccessor:v83];
  _Block_release(v83);

  (*(v76 + 8))(v74, v78);
  v85 = aBlock;
  LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

  if (v73)
  {
LABEL_38:
    __break(1u);
  }

  (v97)(v87, v94, v78);
}

void sub_1BAD66D84(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BAD9C278();
  v4 = sub_1BAD9C278();
  v10[0] = 0;
  v5 = [a2 moveItemAtURL:v3 toURL:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {

    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    v9 = sub_1BAD9C258();

    swift_willThrow();
  }
}

uint64_t sub_1BAD66E98(uint64_t a1)
{
  v2 = sub_1BAD9C2C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1BAD9C298();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAD66F7C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1BAD66FE0(uint64_t a1)
{
  v3 = sub_1BAD9C2C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_1BAD9C298();
  (*(v4 + 40))(v1, v6, v3);
  v9 = sub_1BAD1FD00(MEMORY[0x1E69E7CC0]);
  v10 = *(a1 + 20);

  *(v1 + v10) = v9;
  return result;
}

void sub_1BAD67120(uint64_t a1)
{
  sub_1BAD9C2C8();
  v3 = *(v1 + 16);

  sub_1BAD66D84(a1, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD67204(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1BAD9D7E8();
  v5 = 0;
  v6 = 0xE000000000000000;
  MEMORY[0x1BFB026B0](0xD00000000000001FLL, 0x80000001BADAAFF0);
  swift_beginAccess();
  sub_1BAD14A3C(a1 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  sub_1BAD9D8A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x1BFB026B0](0xD000000000000018, 0x80000001BADAB010);
  v2 = sub_1BAD9D308();
  MEMORY[0x1BFB026B0](v2);

  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  MEMORY[0x1BFB026B0](v5, v6);
}

uint64_t sub_1BAD67344(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1BAD9D7E8();
  v5 = 0;
  v6 = 0xE000000000000000;
  MEMORY[0x1BFB026B0](0xD00000000000001ELL, 0x80000001BADAB080);
  v2 = sub_1BAD9D308();
  MEMORY[0x1BFB026B0](v2);

  MEMORY[0x1BFB026B0](0x745374786574202CLL, 0xED0000203A656C79);
  swift_beginAccess();
  sub_1BAD14A3C(a1 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  sub_1BAD9D8A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  MEMORY[0x1BFB026B0](v5, v6);
}

uint64_t LineHeightDimension.init(with:multipliedBy:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB0);
  v6 = swift_allocObject();
  result = sub_1BAD0B40C(a1, v6 + 16);
  *a2 = v6;
  *(a2 + 8) = a3;
  return result;
}

uint64_t LineHeightDimension.init(multiplier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v13 = &type metadata for FontSource;
  v14 = &protocol witness table for FontSource;
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v9;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB0);
  v10 = swift_allocObject();
  result = sub_1BAD0B40C(&v12, v10 + 16);
  *a2 = v10;
  *(a2 + 8) = a3;
  return result;
}

uint64_t LineHeightDimension.description.getter()
{
  v1 = *v0;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1BAD9D7E8();
  v5 = 0;
  v6 = 0xE000000000000000;
  MEMORY[0x1BFB026B0](0xD00000000000001FLL, 0x80000001BADAAFF0);
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  sub_1BAD9D8A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x1BFB026B0](0xD000000000000018, 0x80000001BADAB010);
  v2 = sub_1BAD9D308();
  MEMORY[0x1BFB026B0](v2);

  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return v5;
}

double LineHeightDimension.rawValue(in:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  swift_beginAccess();
  sub_1BAD14A3C(*&v3 + 16, v11);
  v5 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v6 = [a1 traitCollection];
  v7 = (*(v5 + 8))();

  __swift_destroy_boxed_opaque_existential_1(v11);
  [v7 lineHeight];
  v9 = v8;

  return v4 * v9;
}

UIEdgeInsets __swiftcall LineHeightDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v18);
  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v6 = (*(v5 + 8))(compatibleWith.super.isa, v4, v5);
  v7 = UIFont.languageAwareOutsets.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  __swift_destroy_boxed_opaque_existential_1(v18);
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

double sub_1BAD67868(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v6 = (*(v5 + 8))(a1, v4, v5);
  v7 = UIFont.languageAwareOutsets.getter();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t LineHeightDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  result = swift_dynamicCast();
  if (result)
  {
    *a1 = v5;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
  }

  else
  {
    sub_1BAD9D7E8();
    sub_1BAD67204(v3);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t _s5JetUI19LineHeightDimensionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  sub_1BAD14A3C(v2 + 16, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    sub_1BAD14A3C(v3 + 16, v12);
    if (swift_dynamicCast())
    {
      v4 = _s5JetUI10FontSourceO2eeoiySbAC_ACtFZ_0(&v13, &v6);
      sub_1BAD32580(v6, v7, v8, v9, v10, v11);
      sub_1BAD32580(v13, v14, v15, v16, v17, v18);
      return v4 & 1;
    }

    v6 = 0;
    v7 = 0xE000000000000000;
    sub_1BAD9D7E8();
    sub_1BAD67204(v3);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BAD9D7E8();
    sub_1BAD67204(v2);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
  }

  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

uint64_t sub_1BAD67CB8()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  swift_checkMetadataState();
  sub_1BAD9D7F8();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1BAD9CF28();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_1BAD67E2C()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  swift_checkMetadataState();
  sub_1BAD9D7F8();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1BAD9CF28();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_1BAD67FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(a2 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v20 != 2)
    {
      return sub_1BAD9D208();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v17, AssociatedTypeWitness);
      v28 = a1;
      v25 = sub_1BAD9D278();
      WitnessTable = swift_getWitnessTable();
      v31 = v25;
      v32 = WitnessTable;
      v33 = v6;
      v34 = v10;
      result = sub_1BAD9CEF8();
      if (v30 == 1)
      {
        goto LABEL_10;
      }

      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      if (v27 >= sub_1BAD9D208())
      {
LABEL_10:
        v27 = sub_1BAD9D208();
      }

      (*(v8 + 8))(v10, AssociatedTypeWitness);
    }

    else
    {
      (*(v8 + 32))(v13, v17, AssociatedTypeWitness);
      v28 = a1;
      v21 = sub_1BAD9D278();
      v22 = swift_getWitnessTable();
      v31 = v21;
      v32 = v22;
      v33 = v6;
      v34 = v13;
      sub_1BAD9D418();
      v23 = (v8 + 8);
      if (v30)
      {
        (*v23)(v13, AssociatedTypeWitness);
        return 0;
      }

      v27 = v29;
      (*v23)(v13, AssociatedTypeWitness);
    }

    return v27;
  }

  return result;
}

uint64_t ShelvesPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  ShelvesPresenter.init()();
  return v0;
}

void *ShelvesPresenter.init()()
{
  v1 = v0;
  v13[1] = *v0;
  v2 = sub_1BAD9D4B8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1BAD9C6C8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BAD9D4C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_1BAD5FED4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1BAD9C6B8();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1BAD6D104(&qword_1EDBA6098, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE98);
  sub_1BAD60048(&qword_1EDBA60A0, &qword_1EBC2AE98);
  sub_1BAD9D688();
  v0[2] = sub_1BAD9D518();
  v0[3] = sub_1BAD9D1C8();
  v8 = sub_1BAD9C978();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v14 = v8;
  v15 = v9;
  v16 = WitnessTable;
  v17 = v11;
  sub_1BAD9C558();
  sub_1BAD9C718();
  v1[4] = sub_1BAD9C708();
  return v1;
}

uint64_t ShelvesPresenter.onApplySnapshot.getter()
{
  sub_1BAD6D0E0();
}

uint64_t sub_1BAD686AC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  return sub_1BAD68714();
}

uint64_t sub_1BAD68714()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v17[0] = sub_1BAD9C978();
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
  v17[2] = swift_getWitnessTable();
  v17[3] = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v3 = sub_1BAD9C558();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = sub_1BAD9C6D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v0[2];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1BAD9C6E8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    swift_beginAccess();
    v15 = *(v1 + 88);

    static DiffableData.makeSnapshot<A>(fromShelves:)(v16, v2, v15, v6);

    sub_1BAD9C6F8();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD689BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall ShelvesPresenter.reapplySnapshot()()
{
  v1 = sub_1BAD9C6A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAD9C6C8();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_1BAD6D0E8;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAD689BC;
  aBlock[3] = &block_descriptor_7;
  v8 = _Block_copy(aBlock);

  sub_1BAD9C6B8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1BAD6D104(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD60048(&qword_1EDBA60A8, qword_1EBC2AFC0);
  sub_1BAD9D688();
  MEMORY[0x1BFB02B70](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1BAD68CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9D278();
  sub_1BAD9D268();
  (*(v6 + 16))(v8, a2, a4);
  return sub_1BAD9D218();
}

uint64_t ShelvesPresenter.insert<A>(contentsOf:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v23 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = v4;
  v24 = *(v9 + 80);
  v25 = *(v9 + 88);
  v10 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v22 - v14;
  (*(v11 + 16))(&v22 - v14, v23, v10, v13);
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 2) = v24;
  *(v18 + 3) = a3;
  v20 = v27;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  (*(v11 + 32))(&v18[v16], v15, v10);
  (*(v7 + 32))(&v18[v17], &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_1BAD6BC94(sub_1BAD6D17C, v18, &unk_1F38EC0B8, sub_1BAD6ED24, &block_descriptor_64);
}

uint64_t sub_1BAD69054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  v13 = sub_1BAD67FA4(v11, v12);
  (*(v7 + 16))(v9, a3, a5);
  v15[1] = v13;
  sub_1BAD9D278();
  swift_getWitnessTable();
  return sub_1BAD9D468();
}

uint64_t ShelvesPresenter.replace<A>(_:handlingProblemsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a5;
  v27 = a2;
  v28 = a3;
  v9 = *v5;
  v31 = sub_1BAD9C6A8();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BAD9C6C8();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v29 = v6[2];
  (*(v14 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v17);
  v18 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = *(v9 + 80);
  *(v19 + 3) = a4;
  *(v19 + 4) = *(v9 + 88);
  *(v19 + 5) = v26;
  *(v19 + 6) = v6;
  (*(v14 + 32))(&v19[v18], &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v20 = &v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  aBlock[4] = sub_1BAD6D270;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAD689BC;
  aBlock[3] = &block_descriptor_9;
  v22 = _Block_copy(aBlock);

  sub_1BAD9C6B8();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1BAD6D104(&qword_1EDBA60B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2AFC0);
  sub_1BAD60048(&qword_1EDBA60A8, qword_1EBC2AFC0);
  v23 = v31;
  sub_1BAD9D688();
  MEMORY[0x1BFB02B70](0, v13, v11, v22);
  _Block_release(v22);
  (*(v33 + 8))(v11, v23);
  (*(v30 + 8))(v13, v32);
}

uint64_t sub_1BAD695A8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a4;
  v101 = a3;
  v116 = a2;
  v8 = a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v110 = type metadata accessor for ShelvesPresenter.InsertionPoint();
  v92 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v94 = &v84 - v11;
  v12 = sub_1BAD9C978();
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v84 - v15;
  v16 = type metadata accessor for ShelvesPresenter.ReplaceSolution();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v109 = &v84 - v17;
  v89 = v10;
  v121 = *(v10 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = &v84 - v18;
  v105 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v84 - v22;
  v23 = sub_1BAD9D598();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v118 = &v84 - v24;
  v25 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a6;
  v90 = a5;
  v120 = swift_getAssociatedTypeWitness();
  v84 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC2A678);
  WitnessTable = swift_getWitnessTable();
  v31 = sub_1BAD60048(&qword_1EDBA5DA8, &qword_1EBC2A678);
  v126 = v12;
  v127 = v29;
  v106 = WitnessTable;
  v128 = WitnessTable;
  v129 = v31;
  v87 = sub_1BAD9C558();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v91 = &v84 - v34;
  v35 = sub_1BAD9D1C8();
  v36 = sub_1BAD9D208();
  v104 = v12;
  if (v36)
  {
    v37 = sub_1BAD6E900(v35, v12, v106);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  v125 = v37;
  swift_beginAccess();

  static DiffableData.makeSnapshot<A>(fromShelves:)(v38, v9, v89, v91);

  (*(v25 + 16))(v115, v116, v90);
  sub_1BAD9D0F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v118;
  v116 = AssociatedConformanceWitness;
  sub_1BAD9D5E8();
  v41 = *(v105 + 48);
  v115 = (v105 + 48);
  v114 = v41;
  v42 = v41(v40, 1, v9);
  v43 = v121;
  v44 = v95;
  v45 = v103;
  if (v42 != 1)
  {
    v112 = *(v105 + 32);
    v55 = v111 + 1;
    v98 = v105 + 24;
    v107 = (v105 + 16);
    v97 = (v113 + 8);
    v113 = v105 + 32;
    v111 = (v105 + 8);
    v96 = (v92 + 6);
    v93 = (v92 + 4);
    ++v92;
    v112(v103, v40, v9);
    while (1)
    {
      v65 = v8;
      v122 = *(v8 + 24);

      sub_1BAD9D7F8();
      v66 = sub_1BAD9D278();
      v67 = swift_getWitnessTable();
      v128 = v66;
      v129 = v67;
      v130 = v43;
      v131 = v44;
      sub_1BAD9D418();
      v68 = *v55;
      v69 = AssociatedTypeWitness;
      (*v55)(v44, AssociatedTypeWitness);

      if (v124 == 1)
      {
        sub_1BAD9D7F8();
        v70 = v109;
        v101(v44);
        v68(v44, v69);
        v71 = (*v96)(v70, 1, v110);
        v8 = v65;
        if (v71 != 1)
        {
          v72 = v94;
          v73 = v110;
          (*v93)(v94, v109, v110);

          sub_1BAD67FA4(v74, v73);

          (*v107)(v108, v103, v9);
          swift_beginAccess();
          v8 = v65;
          sub_1BAD9D238();
          swift_endAccess();
          v75 = v72;
          v44 = v95;
          v45 = v103;
          (*v92)(v75, v73);
        }
      }

      else
      {
        v56 = v123;
        swift_beginAccess();
        sub_1BAD9D1B8();
        v57 = *(v8 + 24);
        sub_1BAD6D08C(v56, v57);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v59 = v57 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v59 = v57;
        }

        v60 = v105;
        (*(v105 + 24))(v59 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v56, v45, v9);
        swift_endAccess();
        (*(v60 + 16))(v108, v45, v9);
        sub_1BAD9C968();
        v61 = v104;
        sub_1BAD9D3A8();
        v62 = v99;
        sub_1BAD9D368();
        (*v97)(v62, v61);
      }

      (*v111)(v45, v9);
      v63 = v118;
      sub_1BAD9D5E8();
      v64 = v114(v63, 1, v9);
      v43 = v121;
      if (v64 == 1)
      {
        break;
      }

      v112(v45, v63, v9);
    }
  }

  (*(v84 + 8))(v119, v120);

  v47 = v85;
  v48 = v89;
  static DiffableData.makeSnapshot<A>(fromShelves:)(v46, v9, v89, v85);

  MEMORY[0x1EEE9AC00](v49);
  v50 = v90;
  *(&v84 - 6) = v9;
  *(&v84 - 5) = v50;
  v51 = v88;
  *(&v84 - 4) = v48;
  *(&v84 - 3) = v51;
  *(&v84 - 2) = v91;
  *(&v84 - 1) = v47;
  v52 = sub_1BAD9D358();

  v53 = sub_1BAD9D378();

  if ((v53 & 1) == 0)
  {
    v76 = [objc_opt_self() mainBundle];
    v77 = [v76 bundleIdentifier];

    if (v77)
    {
      v78 = sub_1BAD9CF68();
      v80 = v79;

      if (v78 == 0x6C7070612E6D6F63 && v80 == 0xEF636973754D2E65)
      {

LABEL_21:
        sub_1BAD9C6F8();
        goto LABEL_22;
      }

      v81 = sub_1BAD9DA98();

      if (v81)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v126 = v52;
    sub_1BAD9D3A8();
    swift_getWitnessTable();
    sub_1BAD9D288();
    v54 = v87;
    sub_1BAD9C508();
    goto LABEL_23;
  }

  v54 = v87;
LABEL_23:

  sub_1BAD9C6F8();
  v82 = *(v86 + 8);
  v82(v47, v54);
  return (v82)(v91, v54);
}