JournalShared::MergeableWritingDirection_optional __swiftcall MergeableWritingDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for PhotoLibraryAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t SRGBColor.init(red:green:blue:alpha:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = a1 + *(type metadata accessor for SRGBColor(0) + 32);
  result = sub_25574FB20();
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_2556797C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_255679858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_25574FB30();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t MergeableEntryAssetsPlacement.init(fromLegacyOrderingFieldsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = sub_25574F860();
  v4 = *(v108 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v108);
  v111 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4A8, &unk_255756FF0);
  v100 = *(v7 - 8);
  v8 = *(v100 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v119 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = v97 - v11;
  v12 = sub_25574F0D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v97 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v110 = *(v117 - 8);
  v20 = *(v110 + 64);
  v21 = MEMORY[0x28223BE20](v117);
  v112 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v97 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v97 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v28 = *(*(v105 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v105);
  v103 = v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v97 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v109 = v97 - v35;
  MEMORY[0x28223BE20](v34);
  v120 = v13;
  v36 = *(v13 + 56);
  v116 = v97 - v37;
  v113 = v36;
  v114 = v13 + 56;
  v36();
  v102 = sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v38 = JournalEntryMO.assetsArrayUnsorted.getter();
  if (v38 >> 62)
  {
    v39 = sub_255750A30();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = v12;
  v107 = v4;
  v106 = a1;
  v115 = v27;
  v104 = v33;
  if (v39 < 1)
  {
    v99 = v25;

    v62 = [a1 assetOrdering];
    v63 = MEMORY[0x277D84F98];
    if (v62)
    {
      v64 = v62;
      v65 = sub_25574EF90();
      v67 = v66;

      v68 = sub_25567A554();
      v69 = v65;
      v12 = v121;
      sub_2556755A8(v69, v67);
      if (v68)
      {
        v63 = v68;
      }
    }

    v49 = *(v63 + 16);
    v70 = MEMORY[0x277D84F90];
    v101 = a2;
    if (v49)
    {
      v70 = sub_255742690(v49, 0);
      v98 = sub_255745938(v122, v70 + ((*(v100 + 80) + 32) & ~*(v100 + 80)), v49, v63);
      v97[2] = v122[3];
      v97[1] = v122[4];

      sub_25568B1C8();
      if (v98 != v49)
      {
        goto LABEL_42;
      }

      v12 = v121;
      a2 = v101;
    }

    v122[0] = v70;
    sub_255745BBC(v122);

    v71 = v122[0];
    v72 = v122[0][2];
    if (v72)
    {
      v122[0] = MEMORY[0x277D84F90];
      sub_2556A9D38(0, v72, 0);
      v73 = v122[0];
      v74 = *(v100 + 80);
      v121 = v71;
      v75 = v71 + ((v74 + 32) & ~v74);
      v76 = *(v100 + 72);
      v77 = (v120 + 32);
      do
      {
        v78 = v118;
        sub_255663294(v75, v118, &qword_27F7BE4A8, &unk_255756FF0);
        v79 = v78;
        v80 = v119;
        sub_255748E38(v79, v119);
        v81 = *v77;
        (*v77)(v17, v80, v12);
        v122[0] = v73;
        v83 = v73[2];
        v82 = v73[3];
        if (v83 >= v82 >> 1)
        {
          sub_2556A9D38(v82 > 1, v83 + 1, 1);
          v73 = v122[0];
        }

        v73[2] = v83 + 1;
        v81(v73 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v83, v17, v12);
        v75 += v76;
        --v72;
      }

      while (v72);

      a2 = v101;
      v27 = v115;
    }

    else
    {

      v73 = MEMORY[0x277D84F90];
    }

    v122[0] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB38, &qword_25575EA60);
    sub_255669798(&qword_27F7C0198, &qword_27F7BEB38, &qword_25575EA60);
    v84 = v99;
    sub_25574F740();
    v61 = v110;
    v60 = v117;
    (*(v110 + 8))(v27, v117);
    (*(v61 + 32))(v27, v84, v60);
    v85 = v12;
    v59 = a2;
    goto LABEL_40;
  }

  v40 = [a1 assetOrdering];
  v41 = MEMORY[0x277D84F98];
  if (v40)
  {
    v42 = v40;
    v43 = sub_25574EF90();
    v45 = v44;

    v46 = sub_25567A554();
    sub_2556755A8(v43, v45);
    if (v46)
    {
      v41 = v46;
    }
  }

  v122[0] = sub_255678FD8(v47);
  sub_25567A7F8(v122, v41);

  swift_bridgeObjectRelease_n();
  v48 = v122[0];
  if ((v122[0] & 0x8000000000000000) != 0 || (v122[0] & 0x4000000000000000) != 0)
  {
    v49 = sub_255750A30();
    if (v49)
    {
      goto LABEL_10;
    }

LABEL_38:

    v59 = a2;
    v60 = v117;
    v61 = v110;
LABEL_39:
    v85 = v121;
LABEL_40:
    v120 = *(v61 + 16);
    (v120)(v112, v27, v60);
    sub_255663294(v116, v109, &unk_27F7BED20, &unk_2557551D0);
    v86 = type metadata accessor for MergeableEntryAssetsPlacement(0);
    v87 = v59 + v86[6];
    sub_25574FD10();
    v88 = v59 + v86[7];
    sub_25574FD10();
    sub_25574F850();
    v89 = v86[5];
    v90 = v104;
    (v113)(v104, 1, 1, v85);
    v91 = v103;
    sub_255663294(v90, v103, &unk_27F7BED20, &unk_2557551D0);
    sub_255663D60();
    sub_25574F340();
    sub_255674B20(v90, &unk_27F7BED20, &unk_2557551D0);
    v121 = v86[8];
    sub_25574F850();
    v92 = v117;
    (v120)(v59, v112, v117);
    v93 = v109;
    sub_255663294(v109, v90, &unk_27F7BED20, &unk_2557551D0);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB0, &unk_255759240);
    (*(*(v94 - 8) + 8))(v59 + v89, v94);
    sub_255663294(v90, v91, &unk_27F7BED20, &unk_2557551D0);
    sub_25574F340();

    sub_255674B20(v90, &unk_27F7BED20, &unk_2557551D0);
    sub_255674B20(v93, &unk_27F7BED20, &unk_2557551D0);
    v95 = *(v110 + 8);
    v95(v112, v92);
    v95(v115, v92);
    sub_255674B20(v116, &unk_27F7BED20, &unk_2557551D0);
    return (*(v107 + 40))(v59 + v121, v111, v108);
  }

  v49 = v122[0][2];
  if (!v49)
  {
    goto LABEL_38;
  }

LABEL_10:
  if (v49 >= 1)
  {
    v101 = a2;
    v50 = 0;
    v51 = (v120 + 8);
    v52 = (v120 + 32);
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x259C3E830](v50, v48);
      }

      else
      {
        v53 = *(v48 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = [v53 id];
      if (v55)
      {
        v56 = v55;
        sub_25574F080();

        if ([v54 isSlim])
        {
          v57 = v116;
          sub_255674B20(v116, &unk_27F7BED20, &unk_2557551D0);

          v58 = v121;
          (*v52)(v57, v19, v121);
          (v113)(v57, 0, 1, v58);
        }

        else
        {
          sub_25574F6B0();

          (*v51)(v19, v121);
        }
      }

      else
      {
      }

      ++v50;
    }

    while (v49 != v50);

    v59 = v101;
    v60 = v117;
    v61 = v110;
    v27 = v115;
    goto LABEL_39;
  }

  __break(1u);
LABEL_42:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25567A554()
{
  v0 = sub_25574EB00();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_25574EAF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C03E0, &qword_25575F3C0);
  sub_25567A73C();
  sub_25574EAE0();

  return v4;
}

unint64_t sub_25567A73C()
{
  result = qword_27F7C0400;
  if (!qword_27F7C0400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7C03E0, &qword_25575F3C0);
    sub_255748FF8(&qword_27F7BE658, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7C0400);
  }

  return result;
}

uint64_t sub_25567A7F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_255678FC4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_25567A8A4(v8, a2);

  sub_255750BC0();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25567A8A4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_255750E50();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for JournalEntryAssetMO();
        v8 = sub_2557503E0();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_255748284(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_25567AA00(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_25567AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_25567AAF8(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

BOOL sub_25567AAF8(void **a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = sub_25574F0D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = [v22 id];
  if (v24)
  {
    v42 = v23;
    v25 = v24;
    sub_25574F080();

    v26 = *(v13 + 32);
    v26(v11, v19, v12);
    v27 = *(v13 + 56);
    v27(v11, 0, 1, v12);
    v26(v21, v11, v12);
    v23 = v42;
  }

  else
  {
    v27 = *(v13 + 56);
    v27(v11, 1, 1, v12);
    sub_25574F0C0();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_255674B20(v11, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (*(a3 + 16) && (v28 = sub_25567AF04(v21), (v29 & 1) != 0))
  {
    v42 = *(*(a3 + 56) + 8 * v28);
  }

  else
  {
    v42 = 0;
  }

  v30 = *(v13 + 8);
  v30(v21, v12);
  v31 = [v23 id];
  if (v31)
  {
    v32 = v31;
    sub_25574F080();

    v33 = *(v13 + 32);
    v34 = v43;
    v33(v43, v19, v12);
    v27(v34, 0, 1, v12);
    v35 = v44;
    v33(v44, v34, v12);
  }

  else
  {
    v36 = v43;
    v27(v43, 1, 1, v12);
    v35 = v44;
    sub_25574F0C0();
    if ((*(v13 + 48))(v36, 1, v12) != 1)
    {
      sub_255674B20(v36, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  if (*(a3 + 16) && (v37 = sub_25567AF04(v35), (v38 & 1) != 0))
  {
    v39 = *(*(a3 + 56) + 8 * v37);
  }

  else
  {
    v39 = 0;
  }

  v30(v35, v12);
  return v42 < v39;
}

unint64_t sub_25567AF04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25574F0D0();
  sub_255748FF8(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v5 = sub_255750090();

  return sub_25567AFE4(a1, v5);
}

uint64_t sub_25567AF9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25567AFE4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_255748FF8(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v16 = sub_255750100();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_25567B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id WrappedMergeableEntryAttributes.init(_:)(uint64_t a1)
{
  sub_255678764(a1, v1 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WrappedMergeableEntryAttributes(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2556740EC(a1);
  return v3;
}

uint64_t WorkoutIconAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BEB70, &qword_255758B78);
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v80 - v13;
  v15 = type metadata accessor for WorkoutIconAssetMetadata(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v19 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_25567BC2C();
  v87 = v14;
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v21 = v10;
  v22 = v85;
  v23 = v86;
  v82 = v18;
  v83 = v15;
  LOBYTE(v90) = 0;
  v24 = sub_255750D00();
  v26 = v82;
  *v82 = v24;
  v26[1] = v27;
  LOBYTE(v90) = 1;
  v28 = sub_255750D20();
  v81 = 0;
  v26[2] = v28;
  *(v26 + 24) = v29 & 1;
  sub_25574F020();
  LOBYTE(v90) = 2;
  sub_255671808(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  v30 = v81;
  sub_255750D40();
  v81 = v30;
  if (v30)
  {
    (*(v22 + 8))(v87, v23);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_11;
  }

  sub_2556719B8(v21, v26 + v83[6]);
  LOBYTE(v90) = 3;
  v35 = v81;
  sub_255750D40();
  v81 = v35;
  if (v35)
  {
    (*(v22 + 8))(v87, v23);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 1;
    goto LABEL_11;
  }

  v36 = v83;
  sub_2556719B8(v8, v26 + v83[7]);
  LOBYTE(v90) = 4;
  v37 = v81;
  v38 = sub_255750D20();
  if (v37)
  {
    v81 = v37;
    (*(v22 + 8))(v87, v23);
    v33 = 0;
    v34 = 0;
    v31 = 1;
    v32 = 1;
    goto LABEL_11;
  }

  v40 = v26 + v36[8];
  *v40 = v38;
  v40[8] = v39 & 1;
  LOBYTE(v90) = 5;
  v41 = sub_255750D20();
  v42 = v26 + v36[9];
  *v42 = v41;
  v42[8] = v43 & 1;
  LOBYTE(v90) = 6;
  v44 = sub_255750D00();
  v49 = (v26 + v36[10]);
  *v49 = v44;
  v49[1] = v50;
  LOBYTE(v90) = 7;
  v51 = sub_255750D00();
  v52 = (v26 + v36[11]);
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v90) = 8;
  v54 = sub_255750D30();
  v81 = 0;
  v56 = v26 + v83[12];
  *v56 = v54;
  v56[8] = v55 & 1;
  LOBYTE(v90) = 9;
  v57 = v81;
  v58 = sub_255750D20();
  v81 = v57;
  if (v57)
  {
    goto LABEL_23;
  }

  v60 = v82 + v83[13];
  *v60 = v58;
  v60[8] = v59 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB60, &qword_255758B70);
  v89 = 10;
  sub_25567BFBC(&qword_27F7BEB80, &qword_27F7BDC38);
  v61 = v81;
  sub_255750D40();
  v81 = v61;
  if (v61)
  {
LABEL_23:
    (*(v22 + 8))(v87, v86);
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v26 = v82;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v88);
    v45 = v26[1];

    if (v31)
    {
      v46 = v83;
      result = sub_255674B20(v26 + v83[6], &qword_27F7BEB40, &unk_255754E40);
      if ((v32 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v46 = v83;
      if (!v32)
      {
LABEL_13:
        if (v33)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    result = sub_255674B20(v26 + v46[7], &qword_27F7BEB40, &unk_255754E40);
    if (v33)
    {
LABEL_14:
      v47 = *(v26 + v46[10] + 8);

      if ((v34 & 1) == 0)
      {
        return result;
      }

LABEL_19:
      v48 = *(v26 + v46[11] + 8);
    }

LABEL_18:
    if (!v34)
    {
      return result;
    }

    goto LABEL_19;
  }

  *(v82 + v83[14]) = v90;
  v89 = 11;
  v62 = v81;
  sub_255750D40();
  if (v62)
  {
    (*(v22 + 8))(v87, v86);
    __swift_destroy_boxed_opaque_existential_1(v88);
    v69 = v82;
    v70 = v82[1];

    v71 = v83;
    sub_255674B20(v69 + v83[6], &qword_27F7BEB40, &unk_255754E40);
    sub_255674B20(v69 + v71[7], &qword_27F7BEB40, &unk_255754E40);
    v72 = *(v69 + v71[10] + 8);

    v73 = *(v69 + v71[11] + 8);

    v74 = *(v69 + v71[14]);
  }

  else
  {
    *(v82 + v83[15]) = v90;
    LOBYTE(v90) = 12;
    v63 = sub_255750D20();
    v64 = v82 + v83[16];
    *v64 = v63;
    v64[8] = v65 & 1;
    LOBYTE(v90) = 13;
    v66 = sub_255750D20();
    v67 = v82 + v83[17];
    *v67 = v66;
    v67[8] = v68 & 1;
    LOBYTE(v90) = 14;
    v75 = sub_255750D00();
    v77 = v76;
    (*(v22 + 8))(v87, v86);
    v78 = v82;
    v79 = (v82 + v83[18]);
    *v79 = v75;
    v79[1] = v77;
    sub_25567C058(v78, v84, type metadata accessor for WorkoutIconAssetMetadata);
    __swift_destroy_boxed_opaque_existential_1(v88);
    return sub_25567C0C0(v78, type metadata accessor for WorkoutIconAssetMetadata);
  }
}

unint64_t sub_25567BB80()
{
  result = qword_27F7BEC58;
  if (!qword_27F7BEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC58);
  }

  return result;
}

unint64_t sub_25567BBD8()
{
  result = qword_27F7BEC60;
  if (!qword_27F7BEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEC60);
  }

  return result;
}

unint64_t sub_25567BC2C()
{
  result = qword_27F7BEB50;
  if (!qword_27F7BEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BEB50);
  }

  return result;
}

unint64_t sub_25567BC88(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x656D6954646E65;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 6:
      result = 0x736569726F6C6163;
      break;
    case 7:
      result = 0x65636E6174736964;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SettingsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25567BFBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEB60, &qword_255758B70);
    sub_255671808(a2, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25567C058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25567C0C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NSManagedObjectContext.didMergeChangesNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE240, &qword_2557565F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = [objc_opt_self() defaultCenter];
  sub_2556A3CB0();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

uint64_t NSManagedObjectContext.didSaveNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE260, &qword_255756608);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = [objc_opt_self() defaultCenter];
  sub_2556A53E4();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

void sub_25567C3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  if (qword_27F7BD680 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDD20;
  *(v0 + 32) = qword_27F7BDD20;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD690;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD30;
  *(v0 + 48) = qword_27F7BDD30;
  v8 = qword_27F7BD688;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F7BDD28;
  *(v0 + 56) = qword_27F7BDD28;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v11 = v10;
  v12 = sub_255750370();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  qword_27F7BDD38 = v13;
}

uint64_t sub_25567C588()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x8000000255752510;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0xD000000000000011;
  *(v0 + 80) = 0x8000000255752510;
  result = sub_255750750();
  qword_27F7BDD20 = result;
  return result;
}

uint64_t sub_25567C65C()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000002557524B0;
  result = sub_255750750();
  qword_27F7BDD30 = result;
  return result;
}

uint64_t sub_25567C724()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002557524D0;
  result = sub_255750750();
  qword_27F7BDD28 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutHeartRateFormatStyle()
{
  result = qword_27F7BEE20;
  if (!qword_27F7BEE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25567C834()
{
  result = sub_25574F100();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutIconAssetMetadata.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutIconAssetMetadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t sub_25567C914@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_2556700F4(v4, a2);
}

uint64_t WorkoutIconAssetMetadata.mindfulnessHeartRate.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_25567C9BC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_25567C9F0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 68));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutIconAssetMetadata.averageGroupHeartRateBPM.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutIconAssetMetadata.numberOfWorkouts.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t JournalEntryMO.mergeableAttributedText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableEntryAttributes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = [v2 mergeableAttributes];
  if (v13)
  {
    v14 = v13;
    sub_255678960(v13 + OBJC_IVAR___WrappedMergeableEntryAttributes_value, v12, type metadata accessor for MergeableEntryAttributes);

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    sub_255678960(v12, v8, type metadata accessor for MergeableEntryAttributes);
    sub_255674B20(v12, &qword_27F7BE7E8, &unk_255757F00);
    v17 = *(v4 + 20);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE798, &qword_255757E30);
    v19 = *(v18 - 8);
    (*(v19 + 16))(a1, &v8[v17], v18);
    sub_2556C0F6C(v8, type metadata accessor for MergeableEntryAttributes);
    return (*(v19 + 56))(a1, 0, 1, v18);
  }
}

uint64_t VisitAssetMetadata.typeOfPlace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t storeEnumTagSinglePayload for AssetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AudioAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE98, &unk_25575E0F0);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AudioAssetMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_25567D4A8();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v22 = v12;
  LOBYTE(v27) = 0;
  *v15 = sub_255750D20();
  v15[8] = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE68, &qword_25575E0E0);
  v26 = 1;
  sub_25567D698(&qword_27F7BFEA0, sub_25567D710);
  sub_255750D40();
  *(v15 + 2) = v27;
  sub_25574F020();
  LOBYTE(v27) = 2;
  sub_2556718E0(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  v19 = v22;
  sub_2556719B8(v7, &v15[*(v22 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE80, &qword_25575E0E8);
  v26 = 3;
  sub_25567D8D8(&qword_27F7BFEB0, &qword_27F7BFEB8);
  sub_255750D40();
  (*(v8 + 8))(v11, v24);
  *&v15[*(v19 + 28)] = v27;
  sub_25567D974(v15, v23, type metadata accessor for AudioAssetMetadata);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_25567DA24(v15, type metadata accessor for AudioAssetMetadata);
}

unint64_t sub_25567D3FC()
{
  result = qword_27F7BFF38;
  if (!qword_27F7BFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF38);
  }

  return result;
}

unint64_t sub_25567D454()
{
  result = qword_27F7BFF40;
  if (!qword_27F7BFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF40);
  }

  return result;
}

unint64_t sub_25567D4A8()
{
  result = qword_27F7BFE60;
  if (!qword_27F7BFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE60);
  }

  return result;
}

unint64_t sub_25567D4FC()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x6E6964726F636572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x7469736E65746E69;
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

uint64_t storeEnumTagSinglePayload for AppleAccountManager.AccountStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutIconAssetMetadata.calories.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutIconAssetMetadata(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_25567D698(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFE68, &qword_25575E0E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25567D710()
{
  result = qword_27F7BFEA8;
  if (!qword_27F7BFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFEA8);
  }

  return result;
}

uint64_t sub_25567D770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AppleAccountManager.AccountStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25567D8D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFE80, &qword_25575E0E8);
    sub_2556718E0(a2, type metadata accessor for TranscriptViewModelSegment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25567D974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25567DA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall WorkoutHeartRateFormatStyle.format(_:)(Swift::Double a1)
{
  v3 = sub_25574F100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255750170();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEDB8, &qword_255759250);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = sub_255750150();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  if (a1 <= 2.22044605e-16)
  {
    sub_255750110();
  }

  else
  {
    sub_255750140();
    sub_255750130();
    *&v20[2] = a1;
    sub_2556D4F04(v14);
    sub_2556D524C();
    sub_255663E98();
    sub_255750120();
    (*(v11 + 8))(v14, v10);
    sub_255750130();
    sub_255750160();
  }

  (*(v4 + 16))(v7, v1, v3);
  v17 = sub_2557501C0();
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t AudioAssetMetadata.duration.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_25567DDF4@<X0>(Swift::Double *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = WorkoutHeartRateFormatStyle.format(_:)(*a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t AudioAssetMetadata.transcriptSegments.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioAssetMetadata(0) + 28));
}

uint64_t type metadata accessor for StreakEvent()
{
  result = qword_27F7BE660;
  if (!qword_27F7BE660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25567DEA0()
{
  sub_25567DF24();
  if (v0 <= 0x3F)
  {
    sub_25574F020();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25567DF24()
{
  if (!qword_27F7BE670)
  {
    sub_25574F0D0();
    v0 = sub_255750950();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BE670);
    }
  }
}

uint64_t sub_25567DFA0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCB8 = result;
  return result;
}

uint64_t sub_25567E018(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_25567E064(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_25567E09C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25567E0BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25567E104@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2557501B0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25567E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25567E278(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25567E3BC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25567E3FC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_25567E4AC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  result = sub_25574F360();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25567E604(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_25567E7B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25567E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567EACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25567EC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567EDA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25567EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25567F074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25567F1F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + a3 - 16);
  v5 = *a1;
  return MergeableProvider.unwrappedMergeableAttributes.getter(*(a2 + a3 - 8), a4);
}

__n128 sub_25567F234(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25567F244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25567F28C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_25569CB28(&v4);
}

uint64_t sub_25567F2C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25567F304()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25567F3E0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  v9 = *(v2 + 8);
  v7 = v3;

  return v9();
}

uint64_t sub_25567F47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25567F500()
{
  swift_getWitnessTable();

  return sub_2557505F0();
}

uint64_t sub_25567F584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

id sub_25567F608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

uint64_t sub_25567F6E4(uint64_t *a1)
{
  v1 = *a1;
  _s14FetchedResultsVMa();

  return swift_getWitnessTable();
}

uint64_t sub_25567F760(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25567F81C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25567F8CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x69746375646F7250;
  v5 = 0xE400000000000000;
  v6 = 1953719636;
  v7 = 0xEB00000000746E65;
  v8 = 0x6D706F6C65766544;
  if (v2 != 3)
  {
    v8 = 0x676E6967617453;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 16721;
    v3 = 0xE200000000000000;
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

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25567F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25574F020();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25567FA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25574F020();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25567FC28()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25567FE58()
{
  v1 = sub_25574F0D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25567FF2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_25567FFB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2556C6D10(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25567FFF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AppStorageMO.defaultMapSize.getter(&v5);
  *a2 = v5;
  return result;
}

void sub_255680030(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  AppStorageMO.defaultMapSize.setter(&v3);
}

uint64_t sub_2556800B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_255680180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2556802A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BECD0, &qword_255759028);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_255680338()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_25574F020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  v9 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_2556804B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2556804F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F100();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255680564(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F100();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2556805D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_255680724(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEE50, &unk_2557594C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_2556808EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2556809A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255680B94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255680CD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25574FB30();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255680D7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_25574FB30();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255680E20@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_255680E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_255680F98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2556810DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255681124(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255681260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2556813CC(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF668, "X|");
  return sub_2557500B0();
}

uint64_t sub_255681488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556815EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_25568175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556818C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E0, &qword_25575B3C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255681A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255681B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F8, &qword_25575B3D8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255681D08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2556FCDA0(v2, v3);
}

uint64_t sub_255681D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255681DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255681E58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255681F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255682038(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_2556821E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_25574F860();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25568239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2556827D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SidebarPreferences(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_25574F860();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_255682D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SidebarPreferences(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_25574F860();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_255682F94(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25574EF10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_255683040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25574EF10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2556830E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25574F0D0();
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

uint64_t sub_2556831A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25574F0D0();
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

id sub_255683260@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 sortCategory];
  *a2 = result;
  return result;
}

id sub_2556832A8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sortOrder];
  *a2 = result;
  return result;
}

uint64_t sub_2556832F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = JournalMO.title.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_255683324(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return JournalMO.title.setter(v2, v3);
}

uint64_t sub_255683424(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_2556835DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0038, &qword_25575E620);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0040, &qword_25575E628);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0048, &unk_25575E630);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D0, &qword_25575B3B0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2556837A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_255683958(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0050, &qword_25575E640);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0058, &qword_25575E648);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF558, &qword_25575B4B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4E8, &qword_25575B3C8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_255683B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_255683CD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0060, &qword_25575E650);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0068, &qword_25575E658);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C0070, &unk_25575E660);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF500, &unk_25575B3E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_255683E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
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
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255683F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
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
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25568402C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2556840A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7C02C8, &qword_25575ECB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255684128@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27F7C03D0;
  return result;
}

uint64_t sub_255684174(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27F7C03D0 = v1;
  return result;
}

uint64_t sub_2556841BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2556841FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255684244@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_25568431C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_255684364@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  *a2 = result;
  return result;
}

id sub_255684434@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

id sub_25568447C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556844C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_25568454C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 needsProcessing];
  *a2 = result;
  return result;
}

id sub_2556845DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 asset];
  *a2 = result;
  return result;
}

id sub_2556847A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBeingEdited];
  *a2 = result;
  return result;
}

id sub_2556847E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFullyRemoved];
  *a2 = result;
  return result;
}

id sub_255684830@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isHidden];
  *a2 = result;
  return result;
}

id sub_255684878@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556848C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSlim];
  *a2 = result;
  return result;
}

id sub_255684908@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUndoablyDeleted];
  *a2 = result;
  return result;
}

id sub_255684950@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255684998@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_255684AAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 refreshAssetMetadata];
  *a2 = result;
  return result;
}

id sub_255684C28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dataAttachments];
  *a2 = result;
  return result;
}

id sub_255684C78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entry];
  *a2 = result;
  return result;
}

id sub_255684CC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileAttachments];
  *a2 = result;
  return result;
}

id sub_255684FA8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 flagged];
  *a2 = result;
  return result;
}

id sub_255684FF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDraft];
  *a2 = result;
  return result;
}

id sub_255685040@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFullyRemoved];
  *a2 = result;
  return result;
}

id sub_255685088@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRemovedFromCloud];
  *a2 = result;
  return result;
}

id sub_2556850D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTip];
  *a2 = result;
  return result;
}

id sub_255685118@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_255685160@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_2556851B0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_2556851F8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersionMode];
  *a2 = result;
  return result;
}

id sub_255685288@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 recentlyDeleted];
  *a2 = result;
  return result;
}

id sub_25568541C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showPhotoMemoryBanner];
  *a2 = result;
  return result;
}

id sub_255685464@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showTitle];
  *a2 = result;
  return result;
}

id sub_2556854EC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 textLength];
  *a2 = result;
  return result;
}

id sub_2556855C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assets];
  *a2 = result;
  return result;
}

id sub_255685610@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 journals];
  *a2 = result;
  return result;
}

id sub_255685670@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isUploadedToCloud];
  *a2 = result;
  return result;
}

id sub_2556856B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mergeableAttributes];
  *a2 = result;
  return result;
}

id sub_255685728@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userDeleted];
  *a2 = result;
  return result;
}

id sub_255685770@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entries];
  *a2 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_255685A78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25574F2C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25574F2B0();
}

uint64_t sub_255685AF0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7C0528);
  __swift_project_value_buffer(v0, qword_27F7C0528);
  return sub_25574F2B0();
}

uint64_t sub_255685B70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_25574F1F0();
}

uint64_t sub_255685BDC(uint64_t a1, id *a2)
{
  result = sub_255750190();
  *a2 = 0;
  return result;
}

uint64_t sub_255685C54(uint64_t a1, id *a2)
{
  v3 = sub_2557501A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_255685CD4(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAD8, type metadata accessor for URLResourceKey);
  v3 = sub_25566CD50(&qword_27F7BDAE0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255685D90(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAB8, type metadata accessor for URLFileProtection);
  v3 = sub_25566CD50(&qword_27F7BDAC0, type metadata accessor for URLFileProtection);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255685E4C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB28, type metadata accessor for Dataclass);
  v3 = sub_25566CD50(&qword_27F7BDB30, type metadata accessor for Dataclass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255685FE0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25574F210();
}

uint64_t sub_25568602C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25574F200();
}

uint64_t sub_255686084()
{
  sub_255750F80();
  v1 = *v0;
  swift_getWitnessTable();
  sub_25574F200();
  return sub_255750FD0();
}

uint64_t sub_2556860EC(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAC8, type metadata accessor for FileProtectionType);
  v3 = sub_25566CD50(&qword_27F7BDAD0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556861A8(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB18, type metadata accessor for Key);
  v3 = sub_25566CD50(&qword_27F7BDB20, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25568633C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDB08, type metadata accessor for DocumentAttributeKey);
  v3 = sub_25566CD50(&qword_27F7BDB10, type metadata accessor for DocumentAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_255686488(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAF8, type metadata accessor for DocumentType);
  v3 = sub_25566CD50(&qword_27F7BDB00, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556865D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255750180();

  *a2 = v5;
  return result;
}

uint64_t sub_25568661C(uint64_t a1)
{
  v2 = sub_25566CD50(&qword_27F7BDAE8, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_25566CD50(&qword_27F7BDAF0, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2556866D8()
{
  v1 = *v0;
  v2 = sub_2557501B0();
  v3 = MEMORY[0x259C3DF50](v2);

  return v3;
}

uint64_t sub_255686714()
{
  v1 = *v0;
  sub_2557501B0();
  sub_2557501F0();
}

uint64_t LinkAssetMetadata.data.getter()
{
  v1 = *v0;
  sub_255674F54(*v0, *(v0 + 8));
  return v1;
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

uint64_t LinkAssetMetadata.init(data:date:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for LinkAssetMetadata();
  sub_255675060(a3, a5 + *(v8 + 20), &qword_27F7BEB40, &unk_255754E40);
  return sub_255675060(a4, a5 + *(v8 + 24), &qword_27F7BE270, &unk_25575A3F0);
}

uint64_t sub_255686D68()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_255686DB0()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_255686DF4()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_255686E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255687950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255686E78(uint64_t a1)
{
  v2 = sub_255687144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255686EB4(uint64_t a1)
{
  v2 = sub_255687144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDC00, &qword_255754E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255687144();
  sub_255750FF0();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_255674F54(v17, v11);
  sub_255687198();
  sub_255750E30();
  sub_2556755A8(v17, v18);
  if (!v2)
  {
    v12 = type metadata accessor for LinkAssetMetadata();
    v13 = *(v12 + 20);
    LOBYTE(v17) = 1;
    sub_25574F020();
    sub_255671730(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v14 = *(v12 + 24);
    LOBYTE(v17) = 2;
    sub_25574EF10();
    sub_255671730(&qword_27F7BDC20, MEMORY[0x277CC9260]);
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_255687144()
{
  result = qword_27F7BDC08;
  if (!qword_27F7BDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC08);
  }

  return result;
}

unint64_t sub_255687198()
{
  result = qword_27F7BDC10;
  if (!qword_27F7BDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC10);
  }

  return result;
}

uint64_t LinkAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDC28, &qword_255754E58);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = type metadata accessor for LinkAssetMetadata();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v21 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_255687144();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v22 = v11;
  v27 = v16;
  v23 = v29;
  v33 = 0;
  sub_255675208();
  v24 = v30;
  sub_255750D80();
  *v19 = v32;
  sub_25574F020();
  LOBYTE(v32) = 1;
  sub_255671730(&qword_27F7BDC38, MEMORY[0x277CC9578]);
  sub_255750D40();
  sub_255675060(v22, v19 + *(v27 + 20), &qword_27F7BEB40, &unk_255754E40);
  sub_25574EF10();
  LOBYTE(v32) = 2;
  sub_255671730(&qword_27F7BDC40, MEMORY[0x277CC9260]);
  v26 = 0;
  sub_255750D40();
  (*(v23 + 8))(v15, v24);
  sub_255675060(v7, v19 + *(v27 + 24), &qword_27F7BE270, &unk_25575A3F0);
  sub_25568769C(v19, v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_255687700(v19);
}

uint64_t sub_255687634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25568769C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAssetMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255687700(uint64_t a1)
{
  v2 = type metadata accessor for LinkAssetMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25568775C(uint64_t a1)
{
  *(a1 + 8) = sub_255671730(&qword_27F7BDC48, type metadata accessor for LinkAssetMetadata);
  result = sub_255671730(&qword_27F7BDC50, type metadata accessor for LinkAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25568784C()
{
  result = qword_27F7BDC78;
  if (!qword_27F7BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC78);
  }

  return result;
}

unint64_t sub_2556878A4()
{
  result = qword_27F7BDC80;
  if (!qword_27F7BDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC80);
  }

  return result;
}

unint64_t sub_2556878FC()
{
  result = qword_27F7BDC88;
  if (!qword_27F7BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDC88);
  }

  return result;
}

uint64_t sub_255687950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t sub_255687A68()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDC98 = result;
  return result;
}

uint64_t sub_255687AF0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  result = sub_255750750();
  qword_27F7BDCA0 = result;
  return result;
}

void sub_255687C3C(uint64_t a1, uint64_t *a2, void **a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255755050;
  if (qword_27F7BD5F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F7BDC90;
  *(v7 + 32) = qword_27F7BDC90;
  v9 = qword_27F7BD6A0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_27F7BDD40;
  *(v7 + 40) = qword_27F7BDD40;
  v12 = *a2;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = *a3;
  *(v7 + 48) = *a3;
  v15 = qword_27F7BD620;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_27F7BDCC0;
  *(v7 + 56) = qword_27F7BDCC0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v18 = v17;
  v19 = sub_255750370();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  *a4 = v20;
}

uint64_t sub_255687E18()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_255666F5C();
  *(v0 + 32) = 0x736C616E72756F6ALL;
  *(v0 + 40) = 0xE800000000000000;
  result = sub_255750750();
  qword_27F7BDD00 = result;
  return result;
}

id static NSPredicate.timelineEntriesFor(journalID:)()
{
  v0 = _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755070;
  if (qword_27F7BD650 != -1)
  {
    swift_once();
  }

  v2 = qword_27F7BDCF0;
  *(v1 + 32) = qword_27F7BDCF0;
  *(v1 + 40) = v0;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  v3 = v2;
  v4 = v0;
  v5 = sub_255750370();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

uint64_t sub_255688010()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755020;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v2 = sub_255666F5C();
  *(v0 + 32) = 0x6F7250736465656ELL;
  *(v0 + 40) = 0xEF676E6973736563;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x6F7250736465656ELL;
  *(v0 + 80) = 0xEF676E6973736563;
  result = sub_255750750();
  qword_27F7BDD10 = result;
  return result;
}

id _sSo11NSPredicateC13JournalSharedE09belongsToB02idAB10Foundation4UUIDV_tFZ_0()
{
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755060;
  v1 = sub_25574F050();
  *(v0 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v0 + 64) = sub_255688670(&qword_27F7BDD68, &unk_27F7BF1F0, 0x277CCAD78);
  *(v0 + 32) = v1;
  v2 = sub_255750750();
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v3 = sub_25574F0D0();
  __swift_project_value_buffer(v3, qword_27F7BFF68);
  if ((sub_25574F070() & 1) == 0)
  {
    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755070;
  *(v4 + 32) = v2;
  v5 = qword_27F7BD660;
  v6 = v2;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD00;
  *(v4 + 40) = qword_27F7BDD00;
  v8 = v7;
  v9 = sub_255750370();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v10;
}

id _sSo11NSPredicateC13JournalSharedE043recentlyDeletedEntriesToBeLocallyPermanenlyE0ABvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755040;
  if (qword_27F7BD648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BDCE8;
  *(v0 + 32) = qword_27F7BDCE8;
  v2 = qword_27F7BD5F0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BDC90;
  *(v0 + 40) = qword_27F7BDC90;
  v5 = qword_27F7BD6A8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7BDD48;
  *(v0 + 48) = qword_27F7BDD48;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755020;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_255666F5C();
  strcpy((v8 + 32), "deletedOnDate");
  *(v8 + 46) = -4864;
  v9 = objc_allocWithZone(MEMORY[0x277CBEAA8]);
  v10 = v7;
  v11 = [v9 initWithTimeIntervalSinceNow_];
  *(v8 + 96) = sub_255669A88(0, &qword_27F7BDD60, 0x277CBEAA8);
  *(v8 + 104) = sub_255688670(&qword_27F7BED40, &qword_27F7BDD60, 0x277CBEAA8);
  *(v8 + 72) = v11;
  *(v0 + 56) = sub_255750750();
  if (qword_27F7BD620 != -1)
  {
    swift_once();
  }

  v12 = qword_27F7BDCC0;
  *(v0 + 64) = qword_27F7BDCC0;
  v13 = v12;
  v14 = sub_255750370();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v15;
}

uint64_t sub_255688670(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_255669A88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556886C0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BDD70);
  v1 = __swift_project_value_buffer(v0, qword_27F7BDD70);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_255688798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_255688870;

  return static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_255688870()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    if (*(v2 + 16))
    {
      v7 = *(v2 + 24);
      swift_getObjectType();
      v8 = sub_255750490();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    return MEMORY[0x2822009F8](sub_25568B224, v8, v10);
  }
}

uint64_t static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v9 = sub_2557508A0();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = sub_255750490();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v7[10] = v12;
  v7[11] = v14;

  return MEMORY[0x2822009F8](sub_255688AD0, v12, v14);
}

uint64_t sub_255688AD0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = *(v0 + 32);
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);
  v9 = v6;
  v10 = v5;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_255688C0C;
  v12 = *(v0 + 72);
  v13 = *(v0 + 24);

  return MEMORY[0x28210EE50]();
}

uint64_t sub_255688C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_255688E2C;
  }

  else
  {
    v11 = sub_255688DC8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_255688DC8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255688E2C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t static ManagedObjectCloudKitSyncing.objectsToSave(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 56))(a2, a3);
  v4 = static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(v3);

  return v4;
}

uint64_t static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(uint64_t a1)
{
  v2 = v1;
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v4 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD88, &unk_2557550B0);
  sub_255750870();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
    v2 = sub_255750CC0();

    if (!v2)
    {
      v2 = sub_255750060();
    }
  }

  return v2;
}

uint64_t static ManagedObjectCloudKitSyncing.objectsToDelete(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 64))(a2, a3);
  v4 = static ManagedObjectCloudKitSyncing.objectsMatchingPredicate(_:context:)(v3);

  return v4;
}

uint64_t sub_2556890A0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  result = sub_2557508C0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static ManagedObjectCloudKitSyncing.recordForObjectWithID(_:context:includeUnsavedObjects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 56) = a8;
  *(v9 + 64) = v8;
  *(v9 + 136) = a6;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  v11 = sub_2557508A0();
  *(v9 + 72) = v11;
  v12 = *(v11 - 8);
  *(v9 + 80) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = sub_255750490();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v9 + 96) = v14;
  *(v9 + 104) = v16;

  return MEMORY[0x2822009F8](sub_25568920C, v14, v16);
}

uint64_t sub_25568920C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 136);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  *(v0 + 112) = v9;
  *(v9 + 16) = *(v0 + 48);
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v10 = *(MEMORY[0x277CBE118] + 4);

  v11 = v7;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD98, &qword_2557550C8);
  *v12 = v0;
  v12[1] = sub_255689374;
  v14 = *(v0 + 88);
  v15 = *(v0 + 40);

  return MEMORY[0x28210EE50](v0 + 16, v14, sub_25568AB00, v9, v13);
}

uint64_t sub_255689374()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 104);
  v10 = *(v2 + 96);
  if (v0)
  {
    v11 = sub_25568959C;
  }

  else
  {
    v11 = sub_255689530;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_255689530()
{
  v1 = v0[11];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_25568959C()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

void sub_255689600(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *(a6 + 8);
  v14 = *(v13 + 8);
  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(a1, a2, a3, a4, a5);
  if (!v7)
  {
    if (v15)
    {
      v16 = v15;
      v17 = (*(a6 + 24))(a5, a6);
      if (v17)
      {
        v18 = v17;

        *a7 = v18;
      }

      else
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v19 = sub_25574F2C0();
        __swift_project_value_buffer(v19, qword_27F7BDD70);

        v20 = v16;
        v21 = sub_25574F2A0();
        v22 = sub_255750780();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v34 = v33;
          *v23 = 136446978;
          v24 = (*(v13 + 16))(a5, v13);
          v26 = sub_2556E474C(v24, v25, &v34);

          *(v23 + 4) = v26;
          *(v23 + 12) = 2082;
          v27 = sub_255751020();
          v29 = sub_2556E474C(v27, v28, &v34);

          *(v23 + 14) = v29;
          *(v23 + 22) = 2080;
          *(v23 + 24) = sub_2556E474C(a1, a2, &v34);
          *(v23 + 32) = 2112;
          *(v23 + 34) = v20;
          *v32 = v16;
          v30 = v20;
          _os_log_impl(&dword_255661000, v21, v22, "Failed to create %{public}s record from %{public}s object with id %s: %@", v23, 0x2Au);
          sub_255674B20(v32, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v32, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v33, -1, -1);
          MEMORY[0x259C3F520](v23, -1, -1);
        }

        sub_25568B1D0();
        swift_allocError();
        *v31 = 4;
        swift_willThrow();
      }
    }

    else
    {
      *a7 = 0;
    }
  }
}

void static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = static Identifiable<>.fetch(id:context:)(a1, a2, a3, a5);
  if (!v5 && !v10 && (a4 & 1) != 0)
  {
    sub_255689AFC(a1, a2, a3);
  }
}

uint64_t static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = [a1 recordID];
  v8 = [v7 recordName];

  v9 = sub_2557501B0();
  v11 = v10;

  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(v9, v11, a2, a3, a4);
  v13 = v12;

  return v13;
}

uint64_t static Identifiable<>.fetchObjectForRecordID(_:context:includeUnsavedObjects:)(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = [a1 recordName];
  v8 = sub_2557501B0();
  v10 = v9;

  static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)(v8, v10, a2, a3, a4);
  v12 = v11;

  return v12;
}

void sub_255689AFC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_bridgeObjectRetain_n();
  v38 = a3;
  v5 = [a3 updatedObjects];
  sub_25568B124();
  sub_25568B170();
  v6 = sub_255750580();

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v7 = v41;
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v45;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
    v7 = v6;
  }

  v15 = (v9 + 64) >> 6;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = sub_255750A60();
  if (v16 && (v40 = v16, swift_dynamicCast(), v17 = v46, v18 = v10, v19 = v11, v46))
  {
    while ((sub_255689F80(v17, a1, a2) & 1) == 0)
    {

      v10 = v18;
      v11 = v19;
      if (v7 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = v10;
      v21 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_19;
          }

          v21 = *(v8 + 8 * v18);
          ++v20;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_15:
      v19 = (v21 - 1) & v21;
      v17 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    sub_25568B1C8();

    if (swift_dynamicCastUnknownClass())
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
LABEL_19:
    sub_25568B1C8();
  }

  v22 = [v38 insertedObjects];
  v23 = sub_255750580();

  if ((v23 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v25 = v46;
    v24 = v47;
    v26 = v48;
    v27 = v49;
    v28 = v50;
  }

  else
  {
    v29 = -1 << *(v23 + 32);
    v24 = v23 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v23 + 56);

    v27 = 0;
    v25 = v23;
  }

  v32 = (v26 + 64) >> 6;
  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (sub_255750A60() && (swift_dynamicCast(), v33 = v40, v34 = v27, v35 = v28, v40))
  {
    while (1)
    {
      if (sub_255689F80(v33, a1, a2))
      {

        sub_25568B1C8();

        if (!swift_dynamicCastUnknownClass())
        {
        }

        return;
      }

      v27 = v34;
      v28 = v35;
      if (v25 < 0)
      {
        goto LABEL_27;
      }

LABEL_30:
      v36 = v27;
      v37 = v28;
      v34 = v27;
      if (!v28)
      {
        break;
      }

LABEL_34:
      v35 = (v37 - 1) & v37;
      v33 = *(*(v25 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v37)))));
      if (!v33)
      {
        goto LABEL_38;
      }
    }

    while (1)
    {
      v34 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        goto LABEL_38;
      }

      v37 = *(v24 + 8 * v34);
      ++v36;
      if (v37)
      {
        goto LABEL_34;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_38:
    sub_25568B1C8();

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_255689F80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v10 = swift_dynamicCastUnknownClass();
  if (v10)
  {
    v20[1] = v10;
    v11 = a1;
    sub_255750B20();
    v12 = sub_25574F0D0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_255674B20(v9, &unk_27F7BED20, &unk_2557551D0);
      v14 = 0;
    }

    else
    {
      v15 = sub_25574F040();
      v17 = v16;
      (*(v13 + 8))(v9, v12);
      if (v15 == a2 && v17 == a3)
      {

        v14 = 1;
      }

      else
      {
        v14 = sub_255750EB0();
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t ManagedObjectCloudKitSyncing.update<A>(keyPath:with:key:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[2] = a2;
  v6 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v7 = sub_255750950();
  v24[0] = *(v7 - 8);
  v8 = *(v24[0] + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v19 = v25;
  result = CKRecord.encryptedValueForKey<A>(_:as:)(a3, a4, v6, v11);
  if (!v19)
  {
    v22 = v24[0];
    v21 = v24[1];
    v25 = 0;
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      return (*(v22 + 8))(v11, v7);
    }

    else
    {
      (*(v12 + 32))(v18, v11, v6);
      (*(v12 + 16))(v16, v18, v6);
      v26 = v21;
      v23 = v21;
      swift_setAtReferenceWritableKeyPath();

      return (*(v12 + 8))(v18, v6);
    }
  }

  return result;
}

uint64_t ManagedObjectCloudKitSyncing.update<A>(keyPath:with:key:)(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D84568];
  v65 = *a1;
  v6 = *(v65 + v5 + 8);
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = *(v6 + 16);
  v18 = v17;
  v20 = v19;
  result = CKRecord.encryptedValueForKey<A>(_:as:)(v17, v19, v16, &v57 - v14);
  if (!v2)
  {
    v59 = v18;
    v60 = v13;
    v63 = 0;
    v64 = a1;
    v22 = v20;
    v62 = v10;
    v23 = *(*(v16 - 8) + 48);
    v61 = v15;
    v24 = v6;
    if (v23(v15, 1, v16) == 1)
    {
      v69 = v67;
      v25 = v67;
      v26 = v60;
      swift_getAtKeyPath();

      LODWORD(v25) = v23(v26, 1, v16);
      (*(v66 + 8))(v26, v24);
      if (v25 != 1)
      {
        if (qword_27F7BD6B8 != -1)
        {
          swift_once();
        }

        v27 = sub_25574F2C0();
        __swift_project_value_buffer(v27, qword_27F7BDD70);
        v28 = a2;
        v29 = v64;

        v30 = v22;

        v31 = sub_25574F2A0();
        v32 = sub_255750760();

        v33 = os_log_type_enabled(v31, v32);
        v34 = v59;
        v35 = v65;
        v36 = MEMORY[0x277D84568];
        if (v33)
        {
          v37 = swift_slowAlloc();
          v58 = v28;
          v38 = v37;
          v60 = swift_slowAlloc();
          v69 = v60;
          *v38 = 136446978;
          v68 = v29;
          v39 = *(v35 + *v36);
          sub_255750E70();

          v40 = sub_2557501D0();
          v42 = sub_2556E474C(v40, v41, &v69);

          *(v38 + 4) = v42;
          LODWORD(v65) = v32;
          *(v38 + 12) = 2082;
          v43 = v58;
          v44 = sub_255750920();
          v46 = sub_2556E474C(v44, v45, &v69);

          *(v38 + 14) = v46;
          *(v38 + 22) = 2082;
          *(v38 + 24) = sub_2556E474C(v34, v30, &v69);
          *(v38 + 32) = 2080;
          v47 = [v43 recordID];
          v48 = [v47 recordName];

          v49 = sub_2557501B0();
          v51 = v50;

          v52 = sub_2556E474C(v49, v51, &v69);

          *(v38 + 34) = v52;
          _os_log_impl(&dword_255661000, v31, v65, "Intentionally setting an existing value to nil for keyPath %{public}s from %{public}s.%{public}s. ID: %s", v38, 0x2Au);
          v53 = v60;
          swift_arrayDestroy();
          MEMORY[0x259C3F520](v53, -1, -1);
          MEMORY[0x259C3F520](v38, -1, -1);
        }
      }
    }

    v54 = v66;
    v55 = v61;
    (*(v66 + 16))(v62, v61, v24);
    v69 = v67;
    v56 = v67;
    swift_setAtReferenceWritableKeyPath();

    return (*(v54 + 8))(v55, v24);
  }

  return result;
}

void sub_25568A898(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(a5 + 8) + 8);
  v11 = static Identifiable<>.fetchObjectForRecordID(_:context:includeUnsavedObjects:)(a2, a3, 1, a4);
  if (!v5)
  {
    if (v11)
    {
      v12 = v11;
      (*(a5 + 40))(v11, a3, a4, a5);
    }

    else
    {
      if (qword_27F7BD6B8 != -1)
      {
        swift_once();
      }

      v13 = sub_25574F2C0();
      __swift_project_value_buffer(v13, qword_27F7BDD70);
      v14 = a2;
      v15 = sub_25574F2A0();
      v16 = sub_255750760();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 136446466;
        v19 = sub_255751020();
        v21 = sub_2556E474C(v19, v20, &v27);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = [v14 recordName];
        v23 = sub_2557501B0();
        v25 = v24;

        v26 = sub_2556E474C(v23, v25, &v27);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_255661000, v15, v16, "Could not find %{public}s object to delete with ID %s.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v18, -1, -1);
        MEMORY[0x259C3F520](v17, -1, -1);
      }
    }
  }
}

uint64_t sub_25568AAE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2556890A0(a1);
}

uint64_t sub_25568AB28()
{
  if (qword_27F7BD6D8 != -1)
  {
    swift_once();
  }

  return NSManagedObjectModel.modelVersion.getter();
}

uint64_t sub_25568AB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_25568AC58;

  return static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25568AC58()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    if (*(v2 + 16))
    {
      v7 = *(v2 + 24);
      swift_getObjectType();
      v8 = sub_255750490();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    return MEMORY[0x2822009F8](sub_25568ADB4, v8, v10);
  }
}

uint64_t dispatch thunk of static ManagedObjectCloudKitSyncing.deleteObjectForRecordID(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25568AFA0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25568AFA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25568B0D0()
{
  result = qword_27F7BDDA0;
  if (!qword_27F7BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDA0);
  }

  return result;
}

unint64_t sub_25568B124()
{
  result = qword_27F7BDDA8;
  if (!qword_27F7BDDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BDDA8);
  }

  return result;
}

unint64_t sub_25568B170()
{
  result = qword_27F7BDDB0;
  if (!qword_27F7BDDB0)
  {
    sub_25568B124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDB0);
  }

  return result;
}

unint64_t sub_25568B1D0()
{
  result = qword_27F7BDDC0;
  if (!qword_27F7BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDDC0);
  }

  return result;
}

uint64_t MergeableJournalAttributes.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  sub_25574F360();
  return v1;
}

uint64_t sub_25568B264(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  return sub_25574F370();
}

uint64_t (*MergeableJournalAttributes.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  *(v3 + 32) = sub_25574F350();
  return sub_25569BAE0;
}

uint64_t MergeableJournalAttributes.$title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);

  return sub_25574F390();
}

uint64_t sub_25568B3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_25574F3A0();
  return (*(v3 + 8))(v9, v2);
}

uint64_t MergeableJournalAttributes.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  sub_25574F3A0();
  return (*(v3 + 8))(a1, v2);
}

void (*MergeableJournalAttributes.$title.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  sub_25574F390();
  return sub_25568B740;
}

void sub_25568B740(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_25574F3A0();
    v11 = *(v8 + 8);
    v11(v5, v10);
    v11(v6, v10);
  }

  else
  {
    v12 = v3[4];
    v13 = v3[1];
    sub_25574F3A0();
    (*(v8 + 8))(v6, v10);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t sub_25568B868(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25568C188(a1, &v10 - v7, type metadata accessor for MergeableColor);
  sub_25568C188(v8, v6, type metadata accessor for MergeableColor);
  LODWORD(a1) = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  return sub_25568C1F0(v8, type metadata accessor for MergeableColor);
}

uint64_t MergeableJournalAttributes.color.setter(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25568C188(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MergeableColor);
  v5 = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  return sub_25568C1F0(a1, type metadata accessor for MergeableColor);
}

uint64_t (*MergeableJournalAttributes.color.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  *(v3 + 32) = sub_25574F350();
  return sub_25569BAE0;
}

uint64_t sub_25568BB14(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  return a1(v3);
}

uint64_t sub_25568BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  return a4(v6);
}

uint64_t sub_25568BBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  sub_25574F3A0();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MergeableJournalAttributes.$color.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = v1 + *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  sub_25574F3A0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MergeableJournalAttributes.$color.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
  sub_25574F390();
  return sub_25569BAE4;
}

uint64_t sub_25568BF90(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25568C188(a1, &v10 - v7, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(v8, v6, type metadata accessor for MergeableJournalAttributes.Icon);
  LODWORD(a1) = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  return sub_25568C1F0(v8, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.icon.setter(uint64_t a1)
{
  v2 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25568C188(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MergeableJournalAttributes.Icon);
  v5 = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  return sub_25568C1F0(a1, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t sub_25568C188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25568C1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*MergeableJournalAttributes.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2EC;
}

void sub_25568C2F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static MergeableJournalAttributes.Icon.defaultIcon.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0x672E657261757173;
  a1[1] = 0xEF3378332E646972;
  type metadata accessor for MergeableJournalAttributes.Icon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25568C3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  return a1(v3);
}

uint64_t sub_25568C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  return a4(v6);
}

uint64_t sub_25568C478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  sub_25574F3A0();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MergeableJournalAttributes.$icon.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = v1 + *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  sub_25574F3A0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MergeableJournalAttributes.$icon.modify(void *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  sub_25574F390();
  return sub_25568C820;
}

void sub_25568C824(int **a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 2) + 16);
  v4(*(*a1 + 4), v3[5], v3[1]);
  v5 = *(v3 + 12);
  v6 = v3[4];
  v14 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = *v3;
  v10 = v3[1];
  if (a2)
  {
    v4(v3[3], v6, v3[1]);
    sub_25574F3A0();
    v11 = *(v8 + 1);
    v11(v6, v10);
    v12 = v14;
    v11(v14, v10);
  }

  else
  {
    v13 = v3[1];
    sub_25574F3A0();
    v12 = v14;
    (*(v8 + 1))(v14, v10);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_25568CFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

BOOL MergeableJournalAttributes.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v69 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v75 = *(v73 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v67 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - v29;
  v72 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  v31 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  sub_25568C188(v2, v33, type metadata accessor for MergeableJournalAttributes.Partial);
  v77 = a1;
  v35 = MergeableJournalAttributes.Partial.canMerge(delta:)(a1);
  sub_25568C1F0(v33, type metadata accessor for MergeableJournalAttributes.Partial);
  if (!v35)
  {
    return v35;
  }

  v65 = v35;
  v66 = v11;
  sub_255663294(v2, v30, &qword_27F7BDE00, &qword_255755238);
  v64 = v21;
  v36 = *(v21 + 48);
  v37 = v36(v30, 1, v20);
  sub_255674B20(v30, &qword_27F7BDE00, &qword_255755238);
  if (v37 == 1)
  {
    sub_25568DF1C(v77, v34, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    sub_255663294(v77, v28, &qword_27F7BDE00, &qword_255755238);
    if (v36(v28, 1, v20) != 1)
    {
      v40 = v64;
      v41 = v67;
      (*(v64 + 32))(v67, v28, v20);
      v38 = v34;
      v42 = v36(v34, 1, v20);
      v39 = v72;
      if (!v42)
      {
        sub_25574F450();
      }

      (*(v40 + 8))(v41, v20);
      goto LABEL_10;
    }

    sub_255674B20(v28, &qword_27F7BDE00, &qword_255755238);
  }

  v38 = v34;
  v39 = v72;
LABEL_10:
  v43 = *(v39 + 20);
  sub_255663294(v38 + v43, v19, &qword_27F7BDE08, &qword_255755240);
  v44 = *(v75 + 48);
  v45 = v73;
  v46 = v44(v19, 1, v73);
  sub_255674B20(v19, &qword_27F7BDE08, &qword_255755240);
  v47 = *(v39 + 20);
  v48 = v46 == 1;
  v49 = v76;
  if (v48)
  {
    sub_25568DF1C(v77 + v47, v38 + v43, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    v50 = v70;
    sub_255663294(v77 + v47, v70, &qword_27F7BDE08, &qword_255755240);
    v51 = v44(v50, 1, v45);
    if (v51 == 1)
    {
      sub_255674B20(v50, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      v52 = v75;
      v53 = v68;
      (*(v75 + 32))(v68, v50, v45);
      if (!v44((v38 + v43), 1, v45))
      {
        sub_25574F450();
      }

      (*(v52 + 8))(v53, v45);
    }
  }

  v54 = v74;
  v55 = *(v39 + 24);
  v56 = v66;
  sub_255663294(v38 + v55, v66, &qword_27F7BDE10, &qword_255755248);
  v57 = *(v49 + 48);
  v58 = v57(v56, 1, v54);
  sub_255674B20(v56, &qword_27F7BDE10, &qword_255755248);
  v59 = *(v39 + 24);
  if (v58 == 1)
  {
    sub_25568DF1C(v77 + v59, v38 + v55, &qword_27F7BDE10, &qword_255755248);
  }

  else
  {
    v60 = v71;
    sub_255663294(v77 + v59, v71, &qword_27F7BDE10, &qword_255755248);
    if (v57(v60, 1, v54) == 1)
    {
      sub_255674B20(v60, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      v61 = v76;
      v62 = v69;
      (*(v76 + 32))(v69, v60, v54);
      if (!v57(v38 + v55, 1, v54))
      {
        sub_25574F450();
      }

      (*(v61 + 8))(v62, v54);
    }
  }

  LOBYTE(v35) = v65;
  return v35;
}

BOOL MergeableJournalAttributes.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v57 = *(v54 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v51 - v28;
  sub_255663294(a1, v24, &qword_27F7BDE00, &qword_255755238);
  v30 = *(v26 + 48);
  if (v30(v24, 1, v25) == 1)
  {
    v22 = v24;
    v31 = v60;
LABEL_5:
    sub_255674B20(v22, &qword_27F7BDE00, &qword_255755238);
    v32 = v58;
    v33 = v59;
    goto LABEL_6;
  }

  (*(v26 + 32))(v29, v24, v25);
  v31 = v60;
  sub_255663294(v60, v22, &qword_27F7BDE00, &qword_255755238);
  if (v30(v22, 1, v25) == 1)
  {
    (*(v26 + 8))(v29, v25);
    goto LABEL_5;
  }

  v45 = sub_25574F480();
  v46 = *(v26 + 8);
  v46(v29, v25);
  v46(v22, v25);
  v32 = v58;
  v33 = v59;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v34 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  sub_255663294(a1 + *(v34 + 20), v14, &qword_27F7BDE08, &qword_255755240);
  v35 = *(v32 + 48);
  if (v35(v14, 1, v15) == 1)
  {
    v33 = v14;
    v37 = v56;
    v36 = v57;
    v38 = v55;
  }

  else
  {
    v39 = v31;
    v40 = v53;
    (*(v32 + 32))(v53, v14, v15);
    sub_255663294(v39 + *(v34 + 20), v33, &qword_27F7BDE08, &qword_255755240);
    v41 = v35(v33, 1, v15);
    v38 = v55;
    if (v41 != 1)
    {
      v47 = sub_25574F480();
      v48 = *(v32 + 8);
      v48(v40, v15);
      v48(v33, v15);
      v37 = v56;
      v36 = v57;
      v31 = v60;
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v32 + 8))(v40, v15);
    v37 = v56;
    v36 = v57;
    v31 = v60;
  }

  sub_255674B20(v33, &qword_27F7BDE08, &qword_255755240);
LABEL_11:
  sub_255663294(a1 + *(v34 + 24), v38, &qword_27F7BDE10, &qword_255755248);
  v42 = *(v36 + 48);
  v43 = v54;
  if (v42(v38, 1, v54) == 1)
  {
LABEL_14:
    sub_255674B20(v38, &qword_27F7BDE10, &qword_255755248);
    return 1;
  }

  (*(v36 + 32))(v37, v38, v43);
  v38 = v52;
  sub_255663294(v31 + *(v34 + 24), v52, &qword_27F7BDE10, &qword_255755248);
  if (v42(v38, 1, v43) == 1)
  {
    (*(v36 + 8))(v37, v43);
    goto LABEL_14;
  }

  v49 = sub_25574F480();
  v50 = *(v36 + 8);
  v50(v37, v43);
  v50(v38, v43);
  return (v49 & 1) != 0;
}

uint64_t sub_25568DF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t MergeableJournalAttributes.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  sub_255663294(v1, &v22 - v12, &qword_27F7BDE00, &qword_255755238);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(v13, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    sub_25574F3B0();
    (*(v15 + 8))(v13, v14);
  }

  v16 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  sub_255663294(v1 + *(v16 + 20), v9, &qword_27F7BDE08, &qword_255755240);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_255674B20(v9, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    sub_25574F3B0();
    (*(v18 + 8))(v9, v17);
  }

  sub_255663294(v1 + *(v16 + 24), v5, &qword_27F7BDE10, &qword_255755248);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BDE10, &qword_255755248);
  }

  sub_25574F3B0();
  return (*(v20 + 8))(v5, v19);
}

uint64_t MergeableJournalAttributes.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  v42 = *(v13 + 56);
  v43 = v12;
  v41 = v13 + 56;
  v42(a2, 1, 1);
  v14 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  v15 = *(v14 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v17 = *(*(v16 - 8) + 56);
  v40 = v15;
  v17(a2 + v15, 1, 1, v16);
  v18 = *(v14 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v49 = a2;
  v21(a2 + v18, 1, 1, v19);
  v23 = v48;
  sub_25574FE90();
  v48 = v23;
  if (v23)
  {

    v24 = v49;
    return sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Partial);
  }

  v36 = v17;
  v37 = v16;
  v34[1] = v22;
  v35 = v21;
  v38 = v19;
  v39 = v18;
  v25 = v46;
  if (sub_25574FED0())
  {
    v26 = v45;
    v27 = v48;
    sub_25574F420();
    v28 = v27;
    v24 = v49;
    if (v27)
    {
LABEL_9:

      return sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Partial);
    }

    (v42)(v26, 0, 1, v43);
    sub_25568CFC8(v26, v24, &qword_27F7BDE00, &qword_255755238);
  }

  else
  {
    v24 = v49;
    v28 = v48;
  }

  if (sub_25574FED0())
  {
    type metadata accessor for MergeableColor(0);
    sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor);
    sub_25574F420();
    if (v28)
    {
      goto LABEL_9;
    }

    v36(v25, 0, 1, v37);
    sub_25568CFC8(v25, v24 + v40, &qword_27F7BDE08, &qword_255755240);
  }

  v30 = sub_25574FED0();
  v31 = v44;
  v33 = v38;
  v32 = v39;
  if (v30)
  {
    type metadata accessor for MergeableJournalAttributes.Icon(0);
    sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon);
    sub_25574F420();

    if (v28)
    {
      return sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Partial);
    }

    v35(v31, 0, 1, v33);
    return sub_25568CFC8(v31, v24 + v32, &qword_27F7BDE10, &qword_255755248);
  }

  else
  {
  }
}

uint64_t MergeableJournalAttributes.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v36 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = v44;
  result = sub_25574FF10();
  if (!v23)
  {
    v37 = v5;
    v38 = v9;
    v44 = v13;
    v25 = v43;
    sub_255663294(v43, v17, &qword_27F7BDE00, &qword_255755238);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_255674B20(v17, &qword_27F7BDE00, &qword_255755238);
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      sub_255669798(&qword_27F7BDE30, &unk_27F7BFF90, &qword_2557551F0);
      sub_25574FF60();
      (*(v19 + 8))(v22, v18);
    }

    v26 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v27 = v38;
    sub_255663294(v25 + *(v26 + 20), v38, &qword_27F7BDE08, &qword_255755240);
    v28 = v42;
    v29 = (*(v42 + 48))(v27, 1, v10);
    v30 = v44;
    if (v29 == 1)
    {
      sub_255674B20(v27, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      (*(v28 + 32))(v44, v27, v10);
      sub_255669798(&qword_27F7BDE28, &qword_27F7BDDC8, &qword_2557551F8);
      sub_25574FF60();
      (*(v28 + 8))(v30, v10);
    }

    v31 = v40;
    sub_255663294(v25 + *(v26 + 24), v40, &qword_27F7BDE10, &qword_255755248);
    v32 = v41;
    v33 = v39;
    v34 = (*(v41 + 48))(v31, 1, v39);
    v35 = v37;
    if (v34 == 1)
    {

      return sub_255674B20(v31, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      (*(v32 + 32))(v37, v31, v33);
      sub_255669798(&qword_27F7BDE20, &unk_27F7BFFB0, &unk_255755200);
      sub_25574FF60();
      (*(v32 + 8))(v35, v33);
    }
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

uint64_t sub_25568EE90()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D79536673;
  }
}

uint64_t sub_25568EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25569A954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25568EF10(uint64_t a1)
{
  v2 = sub_25569A318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568EF4C(uint64_t a1)
{
  v2 = sub_25569A318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568EF9C(uint64_t a1)
{
  v2 = sub_25569A3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568EFD8(uint64_t a1)
{
  v2 = sub_25569A3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568F014()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

uint64_t sub_25568F058()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

uint64_t sub_25568F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25568F118(uint64_t a1)
{
  v2 = sub_25569A414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568F154(uint64_t a1)
{
  v2 = sub_25569A414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25568F1A8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_25568F1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_255750EB0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255750EB0();

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

uint64_t sub_25568F29C(uint64_t a1)
{
  v2 = sub_25569A36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25568F2D8(uint64_t a1)
{
  v2 = sub_25569A36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MergeableJournalAttributes.Icon.hash(into:)()
{
  v1 = sub_25574F320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v0, v9, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (!EnumCaseMultiPayload)
  {
    v14 = *(v9 + 1);
    v13 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v9 + 1);
    v13 = 1;
LABEL_5:
    MEMORY[0x259C3EC60](v13);
    sub_2557501F0();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v2 + 32))(v5, &v9[*(v16 + 48)], v1);
  MEMORY[0x259C3EC60](2);
  MEMORY[0x259C3EC60](v11);
  sub_255668318(&qword_27F7BDE38, MEMORY[0x277CFB4B0]);
  sub_2557500A0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t MergeableJournalAttributes.Icon.hashValue.getter()
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)();
  return sub_255750FD0();
}

uint64_t sub_25568F570()
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)();
  return sub_255750FD0();
}

uint64_t sub_25568F5B4()
{
  sub_255750F80();
  MergeableJournalAttributes.Icon.hash(into:)();
  return sub_255750FD0();
}

uint64_t MergeableJournalAttributes.Icon.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE40, &qword_255755258);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v42 - v4;
  v5 = sub_25574F320();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE48, &qword_255755260);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE50, &qword_255755268);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE58, &qword_255755270);
  v54 = *(v20 - 8);
  v55 = v20;
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25569A318();
  sub_255750FF0();
  sub_25568C188(v52, v19, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v19;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v19[1];
      v57 = 1;
      sub_25569A3C0();
      v28 = v55;
      sub_255750DA0();
      v29 = v45;
      sub_255750E00();

      (*(v44 + 8))(v11, v29);
      return (*(v54 + 8))(v23, v28);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      v34 = v48;
      v35 = v19 + *(v33 + 48);
      v36 = v46;
      v37 = v49;
      (*(v48 + 32))(v46, v35, v49);
      v60 = 2;
      sub_25569A36C();
      v38 = v47;
      v39 = v55;
      sub_255750DA0();
      v59 = 0;
      v40 = v51;
      v41 = v53;
      sub_255750E20();
      if (!v41)
      {
        v58 = 1;
        sub_255668318(&qword_27F7BDE70, MEMORY[0x277CFB4B0]);
        sub_255750E30();
      }

      (*(v50 + 8))(v38, v40);
      (*(v34 + 8))(v36, v37);
      return (*(v54 + 8))(v23, v39);
    }
  }

  else
  {
    v31 = v19[1];
    v56 = 0;
    sub_25569A414();
    v32 = v55;
    sub_255750DA0();
    sub_255750E00();

    (*(v43 + 8))(v15, v12);
    return (*(v54 + 8))(v23, v32);
  }
}

uint64_t MergeableJournalAttributes.Icon.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE88, &qword_255755278);
  v79 = *(v77 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v83 = &v69 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE90, &qword_255755280);
  v78 = *(v75 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  v82 = &v69 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE98, &qword_255755288);
  v76 = *(v81 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA0, &unk_255755290);
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v69 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_25569A318();
  v28 = v87;
  sub_255750FE0();
  if (!v28)
  {
    v70 = v23;
    v71 = v20;
    v30 = v80;
    v29 = v81;
    v32 = v82;
    v31 = v83;
    v72 = v17;
    v73 = v25;
    v74 = 0;
    v87 = v13;
    v33 = v84;
    v34 = v86;
    v35 = sub_255750D90();
    v36 = *(v35 + 16);
    if (!v36 || ((v37 = *(v35 + 32), v36 == 1) ? (v38 = v37 == 3) : (v38 = 1), v38))
    {
      v39 = sub_255750B90();
      swift_allocError();
      v41 = v40;
      v42 = v12;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0) + 48);
      *v41 = v87;
      sub_255750CF0();
      sub_255750B80();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v85 + 8))(v42, v34);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v88);
    }

    if (*(v35 + 32))
    {
      v81 = v35;
      if (v37 == 1)
      {
        v90 = 1;
        sub_25569A3C0();
        v45 = v32;
        v46 = v74;
        sub_255750CE0();
        v47 = v85;
        if (v46)
        {
          goto LABEL_18;
        }

        v51 = v75;
        v52 = sub_255750D50();
        v53 = v45;
        v60 = v52;
        v62 = v61;
        (*(v78 + 8))(v53, v51);
        (*(v47 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v63 = v71;
        *v71 = v60;
        *(v63 + 8) = v62;
        swift_storeEnumTagMultiPayload();
        v64 = v33;
      }

      else
      {
        v93 = 2;
        sub_25569A36C();
        v49 = v74;
        sub_255750CE0();
        v50 = v85;
        if (v49)
        {
LABEL_18:
          (*(v85 + 8))(v12, v34);
          goto LABEL_9;
        }

        v64 = v33;
        v92 = 0;
        v56 = v31;
        v57 = v77;
        v58 = sub_255750D70();
        v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
        v63 = v72;
        *v72 = v58;
        sub_25574F320();
        v91 = 1;
        sub_255668318(&qword_27F7BDEB0, MEMORY[0x277CFB4B0]);
        sub_255750D80();
        (*(v79 + 8))(v56, v57);
        (*(v50 + 8))(v12, v86);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v89 = 0;
      sub_25569A414();
      v48 = v74;
      sub_255750CE0();
      if (v48)
      {
        goto LABEL_18;
      }

      v54 = v12;
      v55 = v34;
      v65 = sub_255750D50();
      v67 = v66;
      (*(v76 + 8))(v30, v29);
      (*(v85 + 8))(v54, v55);
      swift_unknownObjectRelease();
      v63 = v70;
      *v70 = v65;
      *(v63 + 8) = v67;
      swift_storeEnumTagMultiPayload();
      v64 = v33;
    }

    v68 = v73;
    sub_25569A468(v63, v73, type metadata accessor for MergeableJournalAttributes.Icon);
    sub_25569A468(v68, v64, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_25569051C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255690550()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MergeableJournalAttributes.merge(_:)(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableJournalAttributes.merge(_:)(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t MergeableJournalAttributes.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v64 = *(v62 - 8);
  v3 = *(v64 + 64);
  v4 = MEMORY[0x28223BE20](v62);
  v63 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v60 = &v54 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v59 = *(v57 - 8);
  v9 = *(v59 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = sub_25574F500();
  v27 = *(v26 - 8);
  v68 = v26;
  v69 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  sub_25574F390();
  sub_25574F390();
  sub_25574F460();
  v31 = *(v16 + 8);
  v31(v25, v15);
  (*(v16 + 16))(v20, v23, v15);
  sub_25574F3A0();
  v31(v23, v15);
  sub_25574F4E0();
  v54 = *(v69 + 8);
  v69 += 8;
  v54(v30, v68);
  v32 = type metadata accessor for MergeableJournalAttributes(0);
  v33 = *(v32 + 20);
  v34 = v32;
  v65 = v32;
  v35 = v55;
  v36 = v57;
  sub_25574F390();
  v37 = *(v34 + 20);
  v38 = v2;
  v39 = v56;
  sub_25574F390();
  sub_25574F460();
  v40 = v59;
  v41 = *(v59 + 8);
  v41(v35, v36);
  (*(v40 + 16))(v58, v39, v36);
  sub_25574F3A0();
  v41(v39, v36);
  sub_25574F4E0();
  v42 = v54;
  v54(v30, v68);
  v43 = v65;
  v44 = v66 + *(v65 + 24);
  v45 = v60;
  v46 = v62;
  sub_25574F390();
  v47 = *(v43 + 24);
  v48 = v61;
  sub_25574F390();
  sub_25574F460();
  v49 = v64;
  v50 = *(v64 + 8);
  v50(v45, v46);
  (*(v49 + 16))(v63, v48, v46);
  sub_25574F3A0();
  v50(v48, v46);
  sub_25574F4E0();
  v51 = v68;
  v42(v30, v68);
  v52 = v38 + *(v65 + 28);
  sub_25574F810();
  sub_25574F4E0();
  return (v42)(v30, v51);
}

uint64_t MergeableJournalAttributes.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF8, &qword_255755230);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDF0, &qword_255755228);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v59 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE8, &qword_255755220);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v58 - v33;
  sub_25574F390();
  sub_25574F390();
  sub_25574F3F0();
  v35 = *(v24 + 8);
  v36 = v28;
  v37 = v59;
  v35(v36, v23);
  v35(v30, v23);
  v38 = type metadata accessor for MergeableJournalAttributes(0);
  v39 = v3 + *(v38 + 20);
  sub_25574F390();
  v40 = a1 + *(v38 + 20);
  v41 = v60;
  sub_25574F390();
  sub_25574F3F0();
  v42 = *(v61 + 8);
  v42(v41, v14);
  v43 = v19;
  v44 = v62;
  v42(v43, v14);
  v45 = v3 + *(v38 + 24);
  v46 = v63;
  v47 = v65;
  sub_25574F390();
  v48 = a1 + *(v38 + 24);
  v49 = v64;
  sub_25574F390();
  sub_25574F3F0();
  v50 = *(v66 + 8);
  v50(v49, v47);
  v50(v46, v47);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEB8, &qword_2557552A0);
  if ((*(*(v51 - 8) + 48))(v34, 1, v51) == 1 && (v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEC0, &qword_2557552A8), (*(*(v52 - 8) + 48))(v37, 1, v52) == 1) && (v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEC8, &qword_2557552B0), (*(*(v53 - 8) + 48))(v44, 1, v53) == 1))
  {
    sub_255674B20(v34, &qword_27F7BDDE8, &qword_255755220);
    v54 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
    (*(*(v54 - 8) + 56))(v67, 1, 1, v54);
  }

  else
  {
    v55 = v67;
    sub_255663294(v34, v67, &qword_27F7BDDE8, &qword_255755220);
    v56 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
    sub_255663294(v37, v55 + *(v56 + 20), &qword_27F7BDDF0, &qword_255755228);
    sub_255663294(v44, v55 + *(v56 + 24), &qword_27F7BDDF8, &qword_255755230);
    sub_255674B20(v34, &qword_27F7BDDE8, &qword_255755220);
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  }

  sub_255674B20(v44, &qword_27F7BDDF8, &qword_255755230);
  return sub_255674B20(v37, &qword_27F7BDDF0, &qword_255755228);
}

uint64_t MergeableJournalAttributes.apply(_:)(uint64_t a1)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDED0, &qword_2557552B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v40 - v21;
  v23 = type metadata accessor for MergeableJournalAttributes.MutatingAction(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(v48, v22, &qword_27F7BDED0, &qword_2557552B8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_255674B20(v22, &qword_27F7BDED0, &qword_2557552B8);
  }

  sub_25569A468(v22, v27, type metadata accessor for MergeableJournalAttributes.MutatingAction);
  sub_25574F390();
  sub_25574F430();
  (*(v12 + 16))(v16, v18, v11);
  sub_25574F3A0();
  (*(v12 + 8))(v18, v11);
  v29 = *(v23 + 20);
  v30 = type metadata accessor for MergeableJournalAttributes(0);
  v31 = *(v30 + 20);
  v32 = v40;
  v33 = v43;
  sub_25574F390();
  sub_25574F430();
  v34 = v42;
  (*(v42 + 16))(v41, v32, v33);
  sub_25574F3A0();
  (*(v34 + 8))(v32, v33);
  v35 = *(v23 + 24);
  v36 = *(v30 + 24);
  v37 = v44;
  v38 = v47;
  sub_25574F390();
  sub_25574F430();
  v39 = v46;
  (*(v46 + 16))(v45, v37, v38);
  sub_25574F3A0();
  (*(v39 + 8))(v37, v38);
  return sub_25568C1F0(v27, type metadata accessor for MergeableJournalAttributes.MutatingAction);
}

uint64_t MergeableJournalAttributes.hasDelta(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = v1;
  sub_25574F390();
  v48 = a1;
  sub_25574F390();
  v24 = sub_25574F490();
  v25 = *(v16 + 8);
  v25(v20, v15);
  v25(v22, v15);
  if (v24)
  {
    goto LABEL_4;
  }

  v26 = type metadata accessor for MergeableJournalAttributes(0);
  v27 = v23;
  v28 = v23 + v26[5];
  sub_25574F390();
  v29 = v48;
  v30 = v48 + v26[5];
  sub_25574F390();
  v31 = sub_25574F490();
  v32 = *(v47 + 8);
  v32(v12, v8);
  v32(v14, v8);
  if (v31)
  {
    goto LABEL_4;
  }

  v33 = v23 + v26[6];
  v34 = v43;
  v35 = v46;
  sub_25574F390();
  v36 = v29 + v26[6];
  v37 = v44;
  sub_25574F390();
  v38 = sub_25574F490();
  v39 = *(v45 + 8);
  v39(v37, v35);
  v39(v34, v35);
  if (v38)
  {
LABEL_4:
    v40 = 1;
  }

  else
  {
    v42 = v27 + v26[7];
    v40 = sub_25574F840();
  }

  return v40 & 1;
}

uint64_t MergeableJournalAttributes.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v4 = sub_25574F860();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v47 - v25;
  v48 = v2;
  sub_25568C188(v2, a2, type metadata accessor for MergeableJournalAttributes);
  sub_25574F390();
  sub_25574F410();
  v27 = *(v20 + 8);
  v27(v24, v19);
  (*(v20 + 16))(v24, v26, v19);
  sub_25574F3A0();
  v27(v26, v19);
  v28 = type metadata accessor for MergeableJournalAttributes(0);
  v29 = v48;
  v30 = v48 + v28[5];
  sub_25574F390();
  v31 = v50;
  sub_25574F410();
  v32 = v51;
  v33 = *(v51 + 8);
  v33(v17, v13);
  (*(v32 + 16))(v17, v31, v13);
  v34 = v28[5];
  v47 = a2;
  sub_25574F3A0();
  v33(v31, v13);
  v35 = v29 + v28[6];
  v36 = v29;
  v38 = v53;
  v37 = v54;
  sub_25574F390();
  v39 = v52;
  sub_25574F410();
  v40 = v55;
  v41 = *(v55 + 8);
  v41(v38, v37);
  (*(v40 + 16))(v38, v39, v37);
  v42 = v47;
  v43 = v47 + v28[6];
  sub_25574F3A0();
  v41(v39, v37);
  v44 = v36 + v28[7];
  v45 = v56;
  sub_25574F800();
  return (*(v57 + 40))(v42 + v28[7], v45, v58);
}

uint64_t MergeableJournalAttributes.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v37 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v48 = *(v43 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v43);
  v49 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v50 = &v37 - v12;
  v13 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v37 - v18);
  v20 = type metadata accessor for MergeableColor(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_25574F340();
  v27 = type metadata accessor for MergeableJournalAttributes(0);
  v28 = v27[5];
  static MergeableColor.random.getter(v26);
  sub_25568C188(v26, v24, type metadata accessor for MergeableColor);
  sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor);
  v42 = v28;
  v45 = v20;
  sub_25574F340();
  sub_25568C1F0(v26, type metadata accessor for MergeableColor);
  v29 = v27[6];
  *v19 = 0x672E657261757173;
  v19[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  sub_25568C188(v19, v17, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25574F340();
  sub_25568C1F0(v19, type metadata accessor for MergeableJournalAttributes.Icon);
  v30 = v27[7];
  sub_25574F850();
  v31 = v50;
  v32 = v53;
  sub_25574F330();
  if (v32)
  {
    return sub_25568C1F0(a1, type metadata accessor for MergeableJournalAttributes);
  }

  v53 = v13;
  v33 = v48;
  (*(v46 + 40))(a1, v31, v47);
  sub_25574F330();
  (*(v33 + 40))(a1 + v42, v49, v43);
  v34 = v44;
  sub_25574F330();
  (*(v39 + 40))(a1 + v29, v34, v40);
  v35 = v41;
  sub_25574F780();
  return (*(v37 + 40))(a1 + v30, v35, v38);
}

uint64_t MergeableJournalAttributes.isDefaultState.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for MergeableJournalAttributes(0);
  v17 = v0 + v16[7];
  if (sub_25574F790() & 1) != 0 && (sub_25574F390(), v18 = sub_25574F380(), (*(v12 + 8))(v15, v11), (v18) && (v19 = v1 + v16[5], sub_25574F390(), LOBYTE(v19) = sub_25574F380(), (*(v7 + 8))(v10, v6), (v19))
  {
    v20 = v1 + v16[6];
    v21 = v25;
    sub_25574F390();
    v22 = sub_25574F380();
    (*(v24 + 8))(v5, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t MergeableJournalAttributes.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_25574F390();
  sub_25574F3B0();
  (*(v13 + 8))(v16, v12);
  v17 = type metadata accessor for MergeableJournalAttributes(0);
  v18 = v0 + v17[5];
  sub_25574F390();
  sub_25574F3B0();
  (*(v8 + 8))(v11, v7);
  v19 = v1 + v17[6];
  v20 = v23;
  sub_25574F390();
  sub_25574F3B0();
  (*(v24 + 8))(v6, v20);
  v21 = v1 + v17[7];
  return sub_25574F7A0();
}

uint64_t MergeableJournalAttributes.newRefs(from:)(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v49 = MEMORY[0x277D84FA0];
  sub_25574F390();
  sub_25574F390();
  v24 = sub_25574F470();
  v25 = *(v17 + 8);
  v25(v21, v16);
  v25(v23, v16);
  sub_255692FAC(v24);
  v26 = type metadata accessor for MergeableJournalAttributes(0);
  v27 = v2 + v26[5];
  sub_25574F390();
  v28 = v43;
  v29 = v43 + v26[5];
  sub_25574F390();
  v30 = sub_25574F470();
  v31 = *(v44 + 8);
  v31(v13, v9);
  v31(v15, v9);
  sub_255692FAC(v30);
  v32 = v2 + v26[6];
  v33 = v45;
  v34 = v47;
  sub_25574F390();
  v35 = v28 + v26[6];
  v36 = v46;
  sub_25574F390();
  v37 = sub_25574F470();
  v38 = *(v48 + 8);
  v38(v36, v34);
  v38(v33, v34);
  sub_255692FAC(v37);
  v39 = v2 + v26[7];
  v40 = sub_25574F830();
  sub_255692FAC(v40);
  return v49;
}

uint64_t sub_255692FAC(uint64_t a1)
{
  v2 = sub_25574FF90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_2556FEE80(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall MergeableJournalAttributes.needToFinalizeTimestamps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_25574F390();
  v16 = sub_25574F400();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    goto LABEL_4;
  }

  v17 = type metadata accessor for MergeableJournalAttributes(0);
  v18 = v1 + v17[5];
  sub_25574F390();
  LOBYTE(v18) = sub_25574F400();
  (*(v7 + 8))(v10, v6);
  if (v18 & 1) != 0 || (v19 = v1 + v17[6], sub_25574F390(), LOBYTE(v19) = sub_25574F400(), (*(v24 + 8))(v5, v2), (v19))
  {
LABEL_4:
    v20 = 1;
  }

  else
  {
    v22 = v1 + v17[7];
    v20 = sub_25574F7D0();
  }

  return v20 & 1;
}

uint64_t MergeableJournalAttributes.finalizeTimestamps(_:)(uint64_t a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v35 = *(v32 - 8);
  v2 = *(v35 + 64);
  v3 = MEMORY[0x28223BE20](v32);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_25574F390();
  sub_25574F3C0();
  (*(v14 + 16))(v18, v20, v13);
  sub_25574F3A0();
  (*(v14 + 8))(v20, v13);
  v21 = type metadata accessor for MergeableJournalAttributes(0);
  v22 = v21[5];
  sub_25574F390();
  v23 = a1;
  sub_25574F3C0();
  (*(v7 + 16))(v31, v12, v6);
  sub_25574F3A0();
  (*(v7 + 8))(v12, v6);
  v24 = v21[6];
  v25 = v32;
  v26 = v33;
  sub_25574F390();
  sub_25574F3C0();
  v27 = v35;
  (*(v35 + 16))(v34, v26, v25);
  sub_25574F3A0();
  (*(v27 + 8))(v26, v25);
  v28 = v21[7];
  return MEMORY[0x259C3D480](v23);
}

uint64_t MergeableJournalAttributes.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v63 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v73 = *(v8 - 8);
  v9 = *(v73 + 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - v10;
  v12 = sub_25574F770();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v61 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v67 = &v61 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v72 = &v61 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v61 - v29;
  v71 = type metadata accessor for MergeableJournalAttributes(0);
  v31 = v71[7];
  v77 = v1;
  sub_25574F7C0();
  v32 = *(v13 + 104);
  v75 = *MEMORY[0x277CFB5F0];
  v76 = v13 + 104;
  v74 = v32;
  v32(v28);
  v33 = sub_25574F760();
  v34 = *(v13 + 8);
  v34(v28, v12);
  if (v33)
  {
    return (*(v13 + 32))(v78, v30, v12);
  }

  sub_25574F390();
  sub_25574F3D0();
  (*(v73 + 1))(v11, v8);
  v61 = sub_255668318(&qword_27F7BDED8, MEMORY[0x277CFB600]);
  v36 = sub_2557500E0();
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = v30;
  }

  else
  {
    v38 = v23;
  }

  if (v37)
  {
    v23 = v30;
  }

  v34(v38, v12);
  v39 = *(v13 + 32);
  v40 = v72;
  v39(v72, v23, v12);
  v39(v30, v40, v12);
  v74(v28, v75, v12);
  v41 = sub_25574F760();
  v34(v28, v12);
  if (v41)
  {
    return (v39)(v78, v30, v12);
  }

  v42 = v70;
  v43 = v71[5];
  v73 = v39;
  v44 = v68;
  sub_25574F390();
  v45 = v66;
  sub_25574F3D0();
  (*(v69 + 8))(v44, v42);
  v46 = sub_2557500E0();
  v47 = (v46 & 1) == 0;
  v48 = (v46 & 1) != 0 ? v30 : v45;
  v49 = v47 ? v30 : v45;
  v34(v48, v12);
  v50 = v67;
  v73(v67, v49, v12);
  v51 = v50;
  v39 = v73;
  v73(v30, v51, v12);
  v74(v28, v75, v12);
  v52 = sub_25574F760();
  v34(v28, v12);
  if (v52)
  {
    return (v39)(v78, v30, v12);
  }

  v53 = v77 + v71[6];
  v54 = v63;
  v55 = v65;
  sub_25574F390();
  v56 = v62;
  sub_25574F3D0();
  (*(v64 + 8))(v54, v55);
  v57 = sub_2557500E0();
  v58 = v78;
  if (v57)
  {
    v34(v30, v12);
    v59 = v58;
    v60 = v56;
  }

  else
  {
    v34(v56, v12);
    v59 = v58;
    v60 = v30;
  }

  return (v73)(v59, v60, v12);
}

uint64_t MergeableJournalAttributes.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a2;
  v59 = a1;
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDE0, &qword_255755218);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD8, &qword_255755210);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v60 = &v58 - v33;
  sub_25574F390();
  sub_25574F390();
  sub_25574F3E0();
  v34 = *(v24 + 8);
  v34(v28, v23);
  v34(v30, v23);
  v35 = type metadata accessor for MergeableJournalAttributes(0);
  v36 = v4 + *(v35 + 20);
  v37 = v61;
  sub_25574F390();
  v38 = v59;
  v39 = v59 + *(v35 + 20);
  v40 = v62;
  sub_25574F390();
  v71 = v22;
  sub_25574F3E0();
  v41 = *(v63 + 8);
  v42 = v40;
  v43 = v64;
  v41(v42, v14);
  v41(v37, v14);
  v44 = v4 + *(v35 + 24);
  v45 = v66;
  v46 = v68;
  sub_25574F390();
  v47 = v38 + *(v35 + 24);
  v48 = v67;
  sub_25574F390();
  v49 = v60;
  sub_25574F3E0();
  v50 = *(v69 + 8);
  v50(v48, v46);
  v50(v45, v46);
  v51 = sub_25574FB50();
  if ((*(*(v51 - 8) + 48))(v49, 1, v51) == 1 && (v52 = type metadata accessor for MergeableColor.ObservableDifference(0), (*(*(v52 - 8) + 48))(v71, 1, v52) == 1) && (v53 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0), (*(*(v53 - 8) + 48))(v43, 1, v53) == 1))
  {
    sub_255674B20(v49, &qword_27F7BDDD0, &qword_25575D7A0);
    v54 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
    (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
  }

  else
  {
    v55 = v70;
    sub_255663294(v49, v70, &qword_27F7BDDD0, &qword_25575D7A0);
    v56 = type metadata accessor for MergeableJournalAttributes.ObservableDifference(0);
    sub_255663294(v71, v55 + *(v56 + 20), &qword_27F7BDDD8, &qword_255755210);
    sub_255663294(v43, v55 + *(v56 + 24), &qword_27F7BDDE0, &qword_255755218);
    sub_255674B20(v49, &qword_27F7BDDD0, &qword_25575D7A0);
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  }

  sub_255674B20(v43, &qword_27F7BDDE0, &qword_255755218);
  return sub_255674B20(v71, &qword_27F7BDDD8, &qword_255755210);
}

uint64_t MergeableJournalAttributes.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  result = sub_25574FF10();
  if (!v0)
  {
    v21 = v4;
    v22 = v8;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE30, &unk_27F7BFF90, &qword_2557551F0);
    sub_25574FF60();
    (*(v10 + 8))(v13, v9);
    v15 = type metadata accessor for MergeableJournalAttributes(0);
    v16 = v25 + v15[5];
    v17 = v22;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE28, &qword_27F7BDDC8, &qword_2557551F8);
    sub_25574FF60();
    (*(v24 + 8))(v17, v5);
    v18 = v25 + v15[6];
    v19 = v21;
    sub_25574F390();
    sub_255669798(&qword_27F7BDE20, &unk_27F7BFFB0, &unk_255755200);
    sub_25574FF60();
    (*(v23 + 8))(v19, v1);
    v20 = v25 + v15[7];
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableJournalAttributes.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v3 = sub_25574F860();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = (v80 - v8);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v87 = *(v93 - 8);
  v9 = *(v87 + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v83 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = v80 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v95 = *(v100 - 1);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v100);
  v94 = v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v96 = v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = *(v90 + 64);
  MEMORY[0x28223BE20](v18);
  v99 = (v80 - v20);
  v21 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (v80 - v26);
  v28 = type metadata accessor for MergeableColor(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v80 - v33;
  v104 = 0;
  v105 = 0xE000000000000000;
  sub_25574F340();
  v35 = type metadata accessor for MergeableJournalAttributes(0);
  v36 = v35[5];
  static MergeableColor.random.getter(v34);
  sub_25568C188(v34, v32, type metadata accessor for MergeableColor);
  sub_255668318(&unk_27F7BFFA0, type metadata accessor for MergeableColor);
  v97 = v28;
  v98 = v36;
  sub_25574F340();
  sub_25568C1F0(v34, type metadata accessor for MergeableColor);
  v37 = v35[6];
  *v27 = 0x672E657261757173;
  v27[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  sub_25568C188(v27, v25, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_255668318(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon);
  v38 = a2;
  sub_25574F340();
  sub_25568C1F0(v27, type metadata accessor for MergeableJournalAttributes.Icon);
  v39 = v35[7];
  v102 = v38;
  sub_25574F850();
  v40 = v101;
  v41 = sub_25574FE90();
  if (v40)
  {

    return sub_25568C1F0(v102, type metadata accessor for MergeableJournalAttributes);
  }

  else
  {
    v80[1] = v21;
    v42 = v98;
    v81 = v37;
    v43 = v99;
    v80[0] = v39;
    v44 = v100;
    v101 = v41;
    if (sub_25574FED0())
    {
      sub_25574F420();
      (*(v90 + 40))(v102, v43, v91);
    }

    v45 = sub_25574FED0();
    v46 = v81;
    if (v45)
    {
      v47 = v96;
      sub_25574F420();
      (*(v88 + 40))(v102 + v42, v47, v89);
    }

    v48 = sub_25574FED0();
    v50 = v94;
    v49 = v95;
    if (v48)
    {
      sub_25574F420();
      (*(v49 + 40))(v102 + v46, v50, v44);
    }

    v52 = sub_25574FEC0();
    v53 = sub_2556771A4(v52);

    v104 = v53;
    sub_2556775F8(0x656C746974, 0xE500000000000000);

    sub_2556775F8(0x726F6C6F63, 0xE500000000000000);

    sub_2556775F8(1852793705, 0xE400000000000000);

    v54 = v104 + 56;
    v55 = 1 << *(v104 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v104 + 56);
    v58 = (v55 + 63) >> 6;
    v100 = (v87 + 56);
    v59 = v104;

    v60 = 0;
    v99 = MEMORY[0x277D84F90];
    while (1)
    {
      v61 = v60;
      if (!v57)
      {
        break;
      }

LABEL_17:
      v62 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v63 = (*(v59 + 48) + ((v60 << 10) | (16 * v62)));
      v65 = *v63;
      v64 = v63[1];

      if (sub_25574FED0())
      {
        v67 = v92;
        v98 = *(v93 + 48);
        *v92 = v65;
        *(v67 + 8) = v64;

        sub_25574FDA0();

        (*v100)(v67, 0, 1, v93);
        v68 = v82;
        sub_25569AA68(v67, v82);
        sub_25569AA68(v68, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_255698770(0, v99[2] + 1, 1, v99, &qword_27F7BE120, &qword_255755C88, &qword_27F7BDEE8, &unk_25575B4D0);
        }

        v69 = v87;
        v71 = v99[2];
        v70 = v99[3];
        v72 = v83;
        if (v71 >= v70 >> 1)
        {
          v74 = sub_255698770(v70 > 1, v71 + 1, 1, v99, &qword_27F7BE120, &qword_255755C88, &qword_27F7BDEE8, &unk_25575B4D0);
          v69 = v87;
          v99 = v74;
          v72 = v83;
        }

        v73 = v99;
        v99[2] = v71 + 1;
        sub_25569AA68(v72, v73 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v71);
      }

      else
      {

        v66 = v92;
        (*v100)(v92, 1, 1, v93);
        sub_255674B20(v66, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v60 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        return sub_25568C1F0(v102, type metadata accessor for MergeableJournalAttributes);
      }

      if (v60 >= v58)
      {
        break;
      }

      v57 = *(v54 + 8 * v60);
      ++v61;
      if (v57)
      {
        goto LABEL_17;
      }
    }

    v75 = v99;
    if (v99[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v76 = sub_255750C90();
    }

    else
    {
      v76 = MEMORY[0x277D84F98];
    }

    v78 = v85;
    v77 = v86;
    v79 = v84;
    v106 = v76;
    sub_255699548(v75, 1, &v106);
    sub_25574F870();

    return (*(v78 + 40))(v102 + v80[0], v79, v77);
  }
}

uint64_t sub_255695518()
{
  v0 = sub_25574F0D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C0, &qword_255755C58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0C8, &qword_255755C60);
  sub_255669798(&qword_27F7BE0D0, &qword_27F7BE0C8, &qword_255755C60);
  v15 = sub_2557502A0();
  v16 = sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v30 = MEMORY[0x259C3E270](v15, v0, v16);
  v32 = v30;
  v17 = v14;
  sub_255750290();
  sub_255669798(&qword_27F7BE0D8, &qword_27F7BE0C0, &qword_255755C58);
  sub_255750960();
  v18 = v1;
  v21 = *(v1 + 48);
  v19 = v1 + 48;
  v20 = v21;
  if (v21(v9, 1, v0) != 1)
  {
    v26 = v11;
    v29 = *(v18 + 32);
    v30 = v19;
    v31 = v14;
    v22 = v27;
    v23 = v28;
    do
    {
      v29(v22, v9, v0);
      sub_2556FF184(v23, v22);
      (*(v18 + 8))(v23, v0);
      sub_255750960();
    }

    while (v20(v9, 1, v0) != 1);
    v17 = v31;
    v30 = v32;
    v11 = v26;
  }

  (*(v11 + 8))(v17, v10);
  return v30;
}

uint64_t MergeableJournalAttributes.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v80 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v78 = *(v82 - 8);
  v5 = *(v78 + 64);
  v6 = MEMORY[0x28223BE20](v82);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v81 = v15;
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v68 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v83 = &v67 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v73 = *(v25 - 8);
  v26 = v73;
  v27 = *(v73 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v67 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v72 = &v67 - v37;
  v70 = v3;
  sub_25574F390();
  v71 = a2;
  sub_25574F390();
  sub_25574F440();
  v38 = *(v26 + 8);
  v38(v30, v25);
  v38(v32, v25);
  v39 = v14;
  v40 = type metadata accessor for MergeableJournalAttributes(0);
  v41 = v3 + *(v40 + 20);
  v42 = v75;
  sub_25574F390();
  v43 = a2 + *(v40 + 20);
  v44 = v76;
  sub_25574F390();
  v45 = v83;
  v46 = v44;
  sub_25574F440();
  v47 = *(v85 + 8);
  v47(v46, v15);
  v48 = v78;
  v47(v42, v15);
  v49 = v82;
  v50 = v70 + *(v40 + 24);
  v51 = v77;
  sub_25574F390();
  v52 = v71 + *(v40 + 24);
  v53 = v79;
  sub_25574F390();
  v84 = v39;
  v54 = v72;
  sub_25574F440();
  v55 = *(v48 + 8);
  v56 = v73;
  v55(v53, v49);
  v55(v51, v49);
  if ((*(v56 + 48))(v54, 1, v25) == 1 && (*(v85 + 48))(v45, 1, v81) == 1 && (*(v48 + 48))(v84, 1, v49) == 1)
  {
    sub_255674B20(v54, &qword_27F7BDE00, &qword_255755238);
    v57 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
  }

  else
  {
    v58 = v67;
    sub_255663294(v54, v67, &qword_27F7BDE00, &qword_255755238);
    v59 = v68;
    sub_255663294(v45, v68, &qword_27F7BDE08, &qword_255755240);
    v60 = v69;
    sub_255663294(v84, v69, &qword_27F7BDE10, &qword_255755248);
    v61 = v80;
    (*(v56 + 56))(v80, 1, 1, v25);
    v62 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v63 = *(v62 + 20);
    (*(v85 + 56))(v61 + v63, 1, 1, v81);
    v64 = *(v62 + 24);
    (*(v48 + 56))(v61 + v64, 1, 1, v82);
    sub_25568CFC8(v58, v61, &qword_27F7BDE00, &qword_255755238);
    sub_25568CFC8(v59, v61 + v63, &qword_27F7BDE08, &qword_255755240);
    v65 = v61 + v64;
    v45 = v83;
    sub_25568CFC8(v60, v65, &qword_27F7BDE10, &qword_255755248);
    sub_255674B20(v54, &qword_27F7BDE00, &qword_255755238);
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  }

  sub_255674B20(v84, &qword_27F7BDE10, &qword_255755248);
  return sub_255674B20(v45, &qword_27F7BDE08, &qword_255755240);
}

BOOL MergeableJournalAttributes.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  sub_255663294(a1, v22, &qword_27F7BDE00, &qword_255755238);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_255674B20(v22, &qword_27F7BDE00, &qword_255755238);
    v31 = v60;
  }

  else
  {
    (*(v24 + 32))(v30, v22, v23);
    v32 = v60;
    sub_25574F390();
    v33 = sub_25574F480();
    v34 = *(v24 + 8);
    v34(v28, v23);
    v34(v30, v23);
    v31 = v32;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = type metadata accessor for MergeableJournalAttributes.Partial(0);
  v36 = a1;
  sub_255663294(a1 + *(v35 + 20), v13, &qword_27F7BDE08, &qword_255755240);
  v37 = v59;
  if ((*(v59 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(v13, &qword_27F7BDE08, &qword_255755240);
  }

  else
  {
    v38 = v54;
    (*(v37 + 32))(v54, v13, v14);
    v39 = v31 + *(type metadata accessor for MergeableJournalAttributes(0) + 20);
    v40 = v55;
    sub_25574F390();
    LOBYTE(v39) = sub_25574F480();
    v41 = *(v37 + 8);
    v41(v40, v14);
    v41(v38, v14);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v42 = v56;
  sub_255663294(v36 + *(v35 + 24), v56, &qword_27F7BDE10, &qword_255755248);
  v44 = v57;
  v43 = v58;
  if ((*(v57 + 48))(v42, 1, v58) == 1)
  {
    sub_255674B20(v42, &qword_27F7BDE10, &qword_255755248);
    return 1;
  }

  v45 = v52;
  (*(v44 + 32))(v52, v42, v43);
  v46 = v31 + *(type metadata accessor for MergeableJournalAttributes(0) + 24);
  v47 = v53;
  sub_25574F390();
  v48 = sub_25574F480();
  v49 = *(v44 + 8);
  v49(v47, v43);
  v49(v45, v43);
  return (v48 & 1) != 0;
}

BOOL MergeableJournalAttributes.merge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE10, &qword_255755248);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v7 = *(v6 - 8);
  v73 = v6;
  v74 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v69 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = v62 - v12;
  MEMORY[0x28223BE20](v11);
  v67 = v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE08, &qword_255755240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v71 = *(v17 - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v65 = v62 - v22;
  MEMORY[0x28223BE20](v21);
  v64 = v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDE00, &qword_255755238);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v62 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v62 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v62 - v37;
  v39 = a1;
  v40 = a1;
  v41 = v1;
  v42 = MergeableJournalAttributes.canMerge(delta:)(v40);
  if (v42)
  {
    v63 = v42;
    sub_255663294(v39, v27, &qword_27F7BDE00, &qword_255755238);
    v43 = (*(v29 + 48))(v27, 1, v28);
    v44 = v39;
    v62[1] = v41;
    if (v43 == 1)
    {
      sub_255674B20(v27, &qword_27F7BDE00, &qword_255755238);
    }

    else
    {
      (*(v29 + 32))(v38, v27, v28);
      sub_25574F390();
      sub_25574F450();
      (*(v29 + 16))(v33, v36, v28);
      sub_25574F3A0();
      v45 = *(v29 + 8);
      v45(v36, v28);
      v45(v38, v28);
      v44 = v39;
    }

    v46 = v73;
    v47 = v74;
    v48 = type metadata accessor for MergeableJournalAttributes.Partial(0);
    v49 = v70;
    sub_255663294(v44 + *(v48 + 20), v70, &qword_27F7BDE08, &qword_255755240);
    v50 = v71;
    if ((*(v71 + 48))(v49, 1, v17) == 1)
    {
      sub_255674B20(v49, &qword_27F7BDE08, &qword_255755240);
    }

    else
    {
      v51 = v64;
      (*(v50 + 32))(v64, v49, v17);
      v52 = *(type metadata accessor for MergeableJournalAttributes(0) + 20);
      v73 = v44;
      v53 = v65;
      sub_25574F390();
      sub_25574F450();
      (*(v50 + 16))(v66, v53, v17);
      sub_25574F3A0();
      v54 = *(v50 + 8);
      v55 = v53;
      v44 = v73;
      v47 = v74;
      v54(v55, v17);
      v54(v51, v17);
    }

    v56 = v72;
    sub_255663294(v44 + *(v48 + 24), v72, &qword_27F7BDE10, &qword_255755248);
    if ((*(v47 + 48))(v56, 1, v46) == 1)
    {
      sub_255674B20(v56, &qword_27F7BDE10, &qword_255755248);
    }

    else
    {
      v57 = v67;
      (*(v47 + 32))(v67, v56, v46);
      v58 = *(type metadata accessor for MergeableJournalAttributes(0) + 24);
      v59 = v68;
      sub_25574F390();
      sub_25574F450();
      (*(v47 + 16))(v69, v59, v46);
      sub_25574F3A0();
      v60 = *(v47 + 8);
      v60(v59, v46);
      v60(v57, v46);
    }

    LOBYTE(v42) = v63;
  }

  return v42;
}

uint64_t sub_255696DC4(uint64_t a1)
{
  v2 = sub_255668318(&qword_27F7BDF18, type metadata accessor for MergeableJournalAttributes);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255696E54(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_25574F390();
  sub_25574F3B0();
  (*(v15 + 8))(v18, v14);
  v19 = v26;
  v20 = v2 + *(v26 + 20);
  sub_25574F390();
  sub_25574F3B0();
  (*(v10 + 8))(v13, v9);
  v21 = v3 + *(v19 + 24);
  v22 = v27;
  sub_25574F390();
  sub_25574F3B0();
  (*(v28 + 8))(v8, v22);
  v23 = v3 + *(v19 + 28);
  return sub_25574F7A0();
}

uint64_t sub_2556970F4(uint64_t a1)
{
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MergeableJournalAttributes.merge(_:)(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t MergeableJournalAttributes.Icon.sfSymbol.getter()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25568C188(v0, v4, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_25568C1F0(v4, type metadata accessor for MergeableJournalAttributes.Icon);
    return 0;
  }

  else
  {
    result = *v4;
    v6 = v4[1];
  }

  return result;
}