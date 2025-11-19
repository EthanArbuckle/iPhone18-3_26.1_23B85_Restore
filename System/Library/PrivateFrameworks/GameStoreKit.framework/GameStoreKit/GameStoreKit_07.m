unint64_t sub_24E6A6818()
{
  result = qword_27F217430;
  if (!qword_27F217430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217430);
  }

  return result;
}

unint64_t sub_24E6A686C()
{
  result = qword_27F217438;
  if (!qword_27F217438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OverlayPlatterLockup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OverlayPlatterLockup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E6A6A80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217050);
  sub_24E6A44EC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E6A6AE8()
{
  result = qword_27F217440;
  if (!qword_27F217440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217440);
  }

  return result;
}

unint64_t sub_24E6A6B40()
{
  result = qword_27F217448;
  if (!qword_27F217448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217448);
  }

  return result;
}

unint64_t sub_24E6A6B98()
{
  result = qword_27F217450;
  if (!qword_27F217450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217450);
  }

  return result;
}

unint64_t sub_24E6A6BF0()
{
  result = qword_27F217458;
  if (!qword_27F217458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217458);
  }

  return result;
}

unint64_t sub_24E6A6C48()
{
  result = qword_27F217460;
  if (!qword_27F217460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217460);
  }

  return result;
}

unint64_t sub_24E6A6CA0()
{
  result = qword_27F217468;
  if (!qword_27F217468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217468);
  }

  return result;
}

unint64_t sub_24E6A6CF8()
{
  result = qword_27F217470;
  if (!qword_27F217470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217470);
  }

  return result;
}

unint64_t sub_24E6A6D50()
{
  result = qword_27F217478;
  if (!qword_27F217478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217478);
  }

  return result;
}

unint64_t sub_24E6A6DA8()
{
  result = qword_27F217480;
  if (!qword_27F217480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217480);
  }

  return result;
}

unint64_t sub_24E6A6E00()
{
  result = qword_27F217488;
  if (!qword_27F217488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217488);
  }

  return result;
}

unint64_t sub_24E6A6E58()
{
  result = qword_27F217490;
  if (!qword_27F217490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217490);
  }

  return result;
}

unint64_t sub_24E6A6EB0()
{
  result = qword_27F217498;
  if (!qword_27F217498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217498);
  }

  return result;
}

unint64_t sub_24E6A6F08()
{
  result = qword_27F2174A0;
  if (!qword_27F2174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174A0);
  }

  return result;
}

unint64_t sub_24E6A6F60()
{
  result = qword_27F2174A8;
  if (!qword_27F2174A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174A8);
  }

  return result;
}

unint64_t sub_24E6A6FB8()
{
  result = qword_27F2174B0;
  if (!qword_27F2174B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174B0);
  }

  return result;
}

unint64_t sub_24E6A7010()
{
  result = qword_27F2174B8;
  if (!qword_27F2174B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174B8);
  }

  return result;
}

unint64_t sub_24E6A7068()
{
  result = qword_27F2174C0;
  if (!qword_27F2174C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174C0);
  }

  return result;
}

unint64_t sub_24E6A70C0()
{
  result = qword_27F2174C8;
  if (!qword_27F2174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174C8);
  }

  return result;
}

unint64_t sub_24E6A7118()
{
  result = qword_27F2174D0;
  if (!qword_27F2174D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174D0);
  }

  return result;
}

unint64_t sub_24E6A7170()
{
  result = qword_27F2174D8;
  if (!qword_27F2174D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174D8);
  }

  return result;
}

unint64_t sub_24E6A71C8()
{
  result = qword_27F2174E0;
  if (!qword_27F2174E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174E0);
  }

  return result;
}

unint64_t sub_24E6A7220()
{
  result = qword_27F2174E8;
  if (!qword_27F2174E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174E8);
  }

  return result;
}

unint64_t sub_24E6A7278()
{
  result = qword_27F2174F0;
  if (!qword_27F2174F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174F0);
  }

  return result;
}

unint64_t sub_24E6A72D0()
{
  result = qword_27F2174F8;
  if (!qword_27F2174F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2174F8);
  }

  return result;
}

uint64_t sub_24E6A733C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GameActivityDraftGameInfo(0);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[13];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[15] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24E6A74C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for GameActivityDraftGameInfo(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[15] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[13];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E6A764C()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityDraftGameInfo(319);
    if (v1 <= 0x3F)
    {
      sub_24E6A7878(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6A7878(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6A7878(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E6A7878(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24E684120();
              if (v6 <= 0x3F)
              {
                sub_24E6A7878(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                if (v7 <= 0x3F)
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

void sub_24E6A7820()
{
  if (!qword_27F213FD0)
  {
    sub_24F9289E8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F213FD0);
    }
  }
}

void sub_24E6A7878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit24PlayTogetherReviewHeaderV12ActivityTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E6A78EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E6A7948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_24E6A79A4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_24E6A79FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217518);
  MEMORY[0x28223BE20](v116);
  v117 = &v101 - v3;
  v108 = sub_24F924848();
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  MEMORY[0x28223BE20](v119);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217520);
  MEMORY[0x28223BE20](v112);
  v9 = &v101 - v8;
  v10 = type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217528);
  MEMORY[0x28223BE20](v115);
  v14 = &v101 - v13;
  v15 = sub_24E6A83A0();
  v113 = v9;
  v114 = v14;
  if (v15)
  {
    sub_24E60169C(a1, v12 + *(v10 + 20), &qword_27F213FB0);
    v16 = type metadata accessor for PlayTogetherReviewHeader(0);
    sub_24E6AD480(a1 + v16[5], v12 + *(v10 + 24), type metadata accessor for GameActivityDraftGameInfo);
    v17 = (a1 + v16[6]);
    v18 = *v17;
    v109 = v10;
    v19 = v17[1];
    v20 = v16[9];
    v21 = (a1 + v16[8]);
    v22 = v21[1];
    v110 = *v21;
    v111 = v18;
    v106 = v22;
    v23 = *(a1 + v20);
    v24 = *(a1 + v20 + 8);
    v25 = v16[11];
    v26 = a1 + v16[10];
    v108 = *v26;
    LODWORD(v107) = *(v26 + 8);
    v27 = (a1 + v25);
    v29 = *(a1 + v25);
    v28 = *(a1 + v25 + 8);
    v104 = v28;
    v30 = v27[2];
    v105 = v27[3];
    v31 = v27[4];
    v103 = v27[5];
    v102 = objc_opt_self();

    sub_24E6AD46C(v23, v24);
    v32 = v28;
    v33 = v103;
    sub_24E68FE2C(v29, v32);
    v34 = [v102 mainScreen];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v126.origin.x = v36;
    v126.origin.y = v38;
    v126.size.width = v40;
    v126.size.height = v42;
    Height = CGRectGetHeight(v126);
    *v12 = sub_24F926C88();
    v44 = v109;
    v45 = (v12 + *(v109 + 28));
    v46 = v110;
    *v45 = v111;
    v45[1] = v19;
    v47 = (v12 + v44[8]);
    *v47 = v46;
    v47[1] = v106;
    v48 = (v12 + v44[9]);
    *v48 = v23;
    v48[1] = v24;
    v49 = v12 + v44[10];
    *v49 = v108;
    v49[8] = v107;
    v50 = (v12 + v44[11]);
    v51 = v104;
    *v50 = v29;
    v50[1] = v51;
    v52 = v113;
    v53 = v114;
    v54 = v105;
    v50[2] = v30;
    v50[3] = v54;
    v50[4] = v31;
    v50[5] = v33;
    *(v12 + v44[12]) = Height;
    sub_24E6AD480(v12, v52, type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_24E6AD4E8(&qword_27F217530, type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView);
    sub_24E6AD4E8(&qword_27F217538, type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView);
    sub_24F924E28();
    v55 = type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView;
    v56 = v12;
  }

  else
  {
    sub_24E60169C(a1, v7, &qword_27F213FB0);
    v57 = type metadata accessor for PlayTogetherReviewHeader(0);
    sub_24E6AD480(a1 + v57[5], &v7[*(v119 + 20)], type metadata accessor for GameActivityDraftGameInfo);
    v58 = v57[7];
    v59 = (a1 + v57[6]);
    v60 = v59[1];
    v107 = *v59;
    v61 = *(a1 + v58);
    v62 = *(a1 + v58 + 8);
    v63 = v57[9];
    v64 = (a1 + v57[8]);
    v65 = v64[1];
    v105 = *v64;
    v66 = a1 + v63;
    v67 = *(a1 + v63);
    v110 = *(v66 + 8);
    v111 = v67;
    v68 = a1 + v57[12];
    v69 = *v68;
    v70 = *(v68 + 8) == 1;
    v106 = v60;
    v104 = v65;
    if (v70)
    {

      sub_24E6AD46C(v111, v110);
      v73 = v69;
    }

    else
    {

      sub_24E6AD46C(v111, v110);
      sub_24E62AB1C(v69, 0);
      sub_24F92BDC8();
      v71 = sub_24F9257A8();
      v103 = v61;
      v72 = v71;
      sub_24F921FD8();

      v61 = v103;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v69, 0);
      (*(v109 + 8))(v5, v108);
      v73 = v123;
    }

    v74 = a1 + v57[10];
    v109 = *v74;
    v75 = *(v74 + 8);
    v76 = a1 + v57[15];
    v77 = *v76;
    v78 = *(v76 + 8);
    LOBYTE(v76) = *(v76 + 16);
    v123 = v77;
    v124 = v78;
    v125 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
    sub_24F927198();
    v79 = v120;
    v80 = v121;
    v81 = v122;
    v82 = (a1 + v57[11]);
    v83 = *v82;
    v84 = v82[1];
    v85 = v82[2];
    v86 = v82[3];
    v87 = v119;
    v88 = &v7[*(v119 + 24)];
    v89 = v106;
    *v88 = v107;
    *(v88 + 1) = v89;
    v90 = &v7[v87[7]];
    *v90 = v61;
    *(v90 + 1) = v62;
    v91 = &v7[v87[8]];
    v92 = v104;
    *v91 = v105;
    *(v91 + 1) = v92;
    v93 = &v7[v87[9]];
    v94 = v110;
    *v93 = v111;
    *(v93 + 1) = v94;
    *&v7[v87[10]] = v73;
    v96 = v82[4];
    v95 = v82[5];
    v97 = &v7[v87[11]];
    *v97 = v109;
    v97[8] = v75;
    v98 = &v7[v87[12]];
    *v98 = v79;
    *(v98 + 1) = v80;
    v98[16] = v81;
    v99 = &v7[v87[13]];
    *v99 = v83;
    v99[1] = v84;
    v99[2] = v85;
    v99[3] = v86;
    v99[4] = v96;
    v99[5] = v95;
    sub_24E6AD480(v7, v113, type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_24E68FE2C(v83, v84);
    sub_24E6AD4E8(&qword_27F217530, type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView);
    sub_24E6AD4E8(&qword_27F217538, type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView);
    v53 = v114;
    sub_24F924E28();
    v55 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView;
    v56 = v7;
  }

  sub_24E6AD63C(v56, v55);
  sub_24E60169C(v53, v117, &qword_27F217528);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PlayTogetherReviewHeader.RevisedHeaderView(0);
  sub_24E6AD4E8(&qword_27F217540, type metadata accessor for PlayTogetherReviewHeader.RevisedHeaderView);
  sub_24E6AD550();
  sub_24F924E28();
  return sub_24E601704(v53, &qword_27F217528);
}

uint64_t sub_24E6A83A0()
{
  v0 = sub_24F925218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  type metadata accessor for PlayTogetherReviewHeader(0);
  sub_24F769764(v15);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_24E60169C(v15, v6, &qword_27F215598);
  sub_24E60169C(v13, &v6[v16], &qword_27F215598);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_24E60169C(v6, v10, &qword_27F215598);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_24E6AD4E8(&qword_27F215650, MEMORY[0x277CE0570]);
      v18 = sub_24F92AFF8();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_24E601704(v13, &qword_27F215598);
      sub_24E601704(v15, &qword_27F215598);
      v21(v10, v0);
      sub_24E601704(v6, &qword_27F215598);
      return v18 & 1;
    }

    sub_24E601704(v13, &qword_27F215598);
    sub_24E601704(v15, &qword_27F215598);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_24E601704(v13, &qword_27F215598);
  sub_24E601704(v15, &qword_27F215598);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_24E601704(v6, &unk_27F254F20);
    v18 = 0;
    return v18 & 1;
  }

  sub_24E601704(v6, &qword_27F215598);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_24E6A87F8@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  MEMORY[0x28223BE20](v72);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217590);
  MEMORY[0x28223BE20](v68);
  v70 = &v64 - v4;
  v66 = type metadata accessor for AspectRatioMediaArtworkStyle();
  MEMORY[0x28223BE20](v66);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217598);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - v9;
  v11 = sub_24F9289E8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView(0);
  sub_24E60169C(v1 + v18[5], v10, &qword_27F213FB0);
  v19 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB0);
    sub_24E6AD480(v1 + v18[6], v3, type metadata accessor for GameActivityDraftGameInfo);
    v20 = (v1 + v18[7]);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v1 + v18[8]);
    v24 = *v23;
    v25 = v23[1];
    v26 = v18[10];
    v27 = (v1 + v18[9]);
    v29 = v27[1];
    v66 = *v27;
    v28 = v66;
    v67 = v22;
    v65 = v29;
    v30 = v1 + v26;
    v31 = *(v1 + v26);
    LOBYTE(v30) = *(v30 + 8);
    v32 = (v1 + v18[11]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v36 = v32[3];
    v38 = v32[4];
    v37 = v32[5];
    v39 = v72;
    v40 = &v3[*(v72 + 20)];
    *v40 = v21;
    *(v40 + 1) = v22;
    v41 = &v3[v39[6]];
    *v41 = 0;
    *(v41 + 1) = 0;
    v42 = &v3[v39[7]];
    *v42 = v24;
    *(v42 + 1) = v25;
    v43 = &v3[v39[8]];
    *v43 = v28;
    v43[1] = v29;
    v44 = &v3[v39[9]];
    *v44 = v31;
    v44[8] = v30;
    v45 = &v3[v39[10]];
    *v45 = v33;
    v45[1] = v34;
    v45[2] = v35;
    v45[3] = v36;
    v45[4] = v38;
    v45[5] = v37;
    v3[v39[11]] = 0;
    sub_24E6AD480(v3, v70, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    swift_storeEnumTagMultiPayload();

    sub_24E6AD46C(v66, v65);
    sub_24E68FE2C(v33, v34);
    sub_24E6AE920();
    sub_24E6AD4E8(&qword_27F2175F0, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    sub_24F924E28();
    return sub_24E6AD63C(v3, type metadata accessor for PlayTogetherReviewHeader.ContentView);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v65 = v1;
    sub_24F9289C8();
    sub_24F922318();
    v47 = sub_24F922348();
    (*(*(v47 - 8) + 56))(v6, 0, 1, v47);
    v6[*(v66 + 20)] = 1;
    sub_24E6AD4E8(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E6AD4E8(&qword_27F2175C8, type metadata accessor for AspectRatioMediaArtworkStyle);
    v48 = v67;
    sub_24F925ED8();
    sub_24E6AD63C(v6, type metadata accessor for AspectRatioMediaArtworkStyle);
    v49 = *(v12 + 8);
    v49(v15, v11);
    v50 = sub_24F927618();
    v52 = v51;
    v73 = 0;
    sub_24F926F28();
    v53 = v74;
    v54 = v75;
    v55 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2175C0) + 36);
    *v55 = v53;
    *(v55 + 8) = v54;
    *(v55 + 16) = xmmword_24F945E20;
    *(v55 + 32) = 0x3FC999999999999ALL;
    *(v55 + 40) = v50;
    *(v55 + 48) = v52;
    v56 = sub_24F9275C8();
    v58 = v57;
    v59 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2175B0) + 36);
    sub_24E6A8F88(v65, v59);
    v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2175E8) + 36));
    *v60 = v56;
    v60[1] = v58;
    LOBYTE(v56) = sub_24F925838();
    v61 = sub_24F924058();
    v62 = v70;
    v63 = v48 + *(v69 + 36);
    *v63 = v61;
    *(v63 + 8) = v56;
    sub_24E60169C(v48, v62, &qword_27F217598);
    swift_storeEnumTagMultiPayload();
    sub_24E6AE920();
    sub_24E6AD4E8(&qword_27F2175F0, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    sub_24F924E28();
    sub_24E601704(v48, &qword_27F217598);
    return (v49)(v17, v19);
  }
}

double sub_24E6A8F88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView(0);
  sub_24E6AD480(a1 + v4[6], a2, type metadata accessor for GameActivityDraftGameInfo);
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (a1 + v4[8]);
  v50 = v8[1];
  v51 = *v8;
  v9 = v4[10];
  v10 = (a1 + v4[9]);
  v11 = v10[1];
  v45 = v6;
  v46 = *v10;
  v49 = *(a1 + v9);
  v48 = *(a1 + v9 + 8);
  v12 = (a1 + v4[11]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v47 = v12[2];
  v16 = v12[4];
  v17 = v12[5];
  v18 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  v19 = (a2 + v18[5]);
  *v19 = v45;
  v19[1] = v7;
  v20 = (a2 + v18[6]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v18[7]);
  *v21 = v51;
  v21[1] = v50;
  v22 = (a2 + v18[8]);
  *v22 = v46;
  v22[1] = v11;
  v23 = a2 + v18[9];
  *v23 = v49;
  *(v23 + 8) = v48;
  v24 = (a2 + v18[10]);
  *v24 = v13;
  v24[1] = v14;
  v24[2] = v47;
  v24[3] = v15;
  v24[4] = v16;
  v24[5] = v17;
  *(a2 + v18[11]) = 0;

  sub_24E6AD46C(v46, v11);
  sub_24E68FE2C(v13, v14);
  LOBYTE(v11) = sub_24F925828();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2175F8) + 36);
  *v33 = v11;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  LOBYTE(v11) = sub_24F925838();
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217600) + 36);
  *v42 = v11;
  *(v42 + 8) = v35;
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v41;
  *(v42 + 40) = 0;
  sub_24F927628();
  sub_24F9238C8();
  v43 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217608) + 36));
  *v43 = v52;
  v43[1] = v53;
  result = *&v54;
  v43[2] = v54;
  return result;
}

uint64_t sub_24E6A921C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v3 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217678);
  MEMORY[0x28223BE20](v90);
  v91 = &v80 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217680);
  MEMORY[0x28223BE20](v93);
  v8 = (&v80 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v80 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v2, v11, &qword_27F213FB0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F213FB0);
    v16 = type metadata accessor for PlayTogetherReviewHeader.RevisedHeaderView(0);
    sub_24E6AD480(v2 + v16[5], v5, type metadata accessor for GameActivityDraftGameInfo);
    v17 = (v2 + v16[6]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v2 + v16[7]);
    v21 = *v20;
    v22 = v20[1];
    v88 = v19;
    v89 = v22;
    v23 = (v2 + v16[8]);
    v24 = *v23;
    v25 = v23[1];
    v26 = (v2 + v16[9]);
    v27 = *v26;
    v86 = v26[1];
    v28 = v86;
    v87 = v27;
    v29 = v2 + v16[11];
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    v31 = (v2 + v16[12]);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    v35 = v31[3];
    v36 = v31[4];
    v37 = v31[5];
    v38 = &v5[v3[5]];
    *v38 = v18;
    *(v38 + 1) = v19;
    v39 = &v5[v3[6]];
    *v39 = v21;
    *(v39 + 1) = v22;
    v40 = &v5[v3[7]];
    *v40 = v24;
    *(v40 + 1) = v25;
    v41 = &v5[v3[8]];
    *v41 = v27;
    v41[1] = v28;
    v42 = &v5[v3[9]];
    *v42 = v30;
    v42[8] = v29;
    v43 = &v5[v3[10]];
    *v43 = v32;
    v43[1] = v33;
    v43[2] = v34;
    v43[3] = v35;
    v43[4] = v36;
    v43[5] = v37;
    v5[v3[11]] = 1;
    sub_24E6AD480(v5, v91, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    swift_storeEnumTagMultiPayload();

    sub_24E6AD46C(v87, v86);
    sub_24E68FE2C(v32, v33);
    sub_24E6AF09C();
    sub_24E6AD4E8(&qword_27F2175F0, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    sub_24F924E28();
    return sub_24E6AD63C(v5, type metadata accessor for PlayTogetherReviewHeader.ContentView);
  }

  else
  {
    v45 = *(v13 + 32);
    v89 = v15;
    v45(v15, v11, v12);
    v46 = type metadata accessor for ReviewHeaderBackgroundView(0);
    (*(v13 + 16))(v8 + *(v46 + 20), v15, v12);
    v47 = type metadata accessor for PlayTogetherReviewHeader.RevisedHeaderView(0);
    v48 = *(v2 + v47[10]);
    *v8 = sub_24F926C88();
    *(v8 + *(v46 + 24)) = v48;
    v49 = sub_24F9275C8();
    v87 = v50;
    v88 = v49;
    v51 = v8 + *(v93 + 36);
    sub_24E6AD480(v2 + v47[5], v51, type metadata accessor for GameActivityDraftGameInfo);
    v52 = (v2 + v47[6]);
    v53 = *v52;
    v54 = v52[1];
    v55 = (v2 + v47[7]);
    v56 = *v55;
    v57 = v55[1];
    v85 = v54;
    v86 = v57;
    v58 = (v2 + v47[8]);
    v59 = *v58;
    v60 = v58[1];
    v61 = (v2 + v47[9]);
    v62 = *v61;
    v83 = v61[1];
    v63 = v83;
    v84 = v62;
    v64 = v2 + v47[11];
    v65 = *v64;
    LOBYTE(v64) = *(v64 + 8);
    v66 = (v2 + v47[12]);
    v67 = *v66;
    v68 = v66[1];
    v69 = v66[2];
    v70 = v66[3];
    v72 = v66[4];
    v81 = v66[5];
    v71 = v81;
    v82 = v69;
    v73 = (v51 + v3[5]);
    *v73 = v53;
    v73[1] = v54;
    v74 = (v51 + v3[6]);
    *v74 = v56;
    v74[1] = v57;
    v75 = (v51 + v3[7]);
    *v75 = v59;
    v75[1] = v60;
    v76 = (v51 + v3[8]);
    *v76 = v62;
    v76[1] = v63;
    v77 = v51 + v3[9];
    *v77 = v65;
    *(v77 + 8) = v64;
    v78 = (v51 + v3[10]);
    *v78 = v67;
    v78[1] = v68;
    v78[2] = v69;
    v78[3] = v70;
    v78[4] = v72;
    v78[5] = v71;
    *(v51 + v3[11]) = 1;
    v79 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2176A0) + 36));
    *v79 = v88;
    v79[1] = v87;
    sub_24E60169C(v8, v91, &qword_27F217680);
    swift_storeEnumTagMultiPayload();

    sub_24E6AD46C(v84, v83);
    sub_24E68FE2C(v67, v68);
    sub_24E6AF09C();
    sub_24E6AD4E8(&qword_27F2175F0, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    sub_24F924E28();
    sub_24E601704(v8, &qword_27F217680);
    return (*(v13 + 8))(v89, v12);
  }
}

uint64_t sub_24E6A98D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v95 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  v3 = MEMORY[0x28223BE20](v95);
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v97 = &v83 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217610);
  MEMORY[0x28223BE20](v91);
  v90 = &v83 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217618);
  MEMORY[0x28223BE20](v89);
  v88 = &v83 - v7;
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217620);
  MEMORY[0x28223BE20](v86);
  v87 = &v83 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217628);
  MEMORY[0x28223BE20](v92);
  v93 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v83 - v15;
  v17 = sub_24F9289E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217630);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v94 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v99 = &v83 - v24;
  sub_24E60169C(v2, v16, &qword_27F213FB0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F213FB0);
    v25 = 1;
    v26 = v99;
  }

  else
  {
    v85 = v18;
    v27 = *(v18 + 32);
    v84 = v17;
    v27(v20, v16, v17);
    type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
    v83 = v20;
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    (*(v9 + 8))(v11, v8);
    v28 = v87;
    sub_24F9289C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24F945E30;
    sub_24F926C88();
    *(v29 + 32) = sub_24F9273C8();
    *(v29 + 40) = v30;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 48) = sub_24F9273C8();
    *(v29 + 56) = v31;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 64) = sub_24F9273C8();
    *(v29 + 72) = v32;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 80) = sub_24F9273C8();
    *(v29 + 88) = v33;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 96) = sub_24F9273C8();
    *(v29 + 104) = v34;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 112) = sub_24F9273C8();
    *(v29 + 120) = v35;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 128) = sub_24F9273C8();
    *(v29 + 136) = v36;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 144) = sub_24F9273C8();
    *(v29 + 152) = v37;
    sub_24F926C88();
    sub_24F926D08();

    *(v29 + 160) = sub_24F9273C8();
    *(v29 + 168) = v38;
    sub_24F926C98();
    *(v29 + 176) = sub_24F9273C8();
    *(v29 + 184) = v39;
    sub_24F9273D8();
    sub_24F927878();
    sub_24F927898();
    sub_24F923BD8();
    v40 = v28;
    v41 = v28 + *(v86 + 36);
    *v41 = v100[5];
    *(v41 + 8) = v101;
    *(v41 + 24) = v102;
    v100[3] = sub_24F924EC8();
    v100[4] = MEMORY[0x277CE0388];
    __swift_allocate_boxed_opaque_existential_1(v100);
    sub_24F925238();
    v42 = v88;
    sub_24E615E00(v100, &v88[*(v89 + 36)]);
    sub_24E60169C(v40, v42, &qword_27F217620);
    sub_24E60169C(v42, v90, &qword_27F217618);
    swift_storeEnumTagMultiPayload();
    sub_24E6AEBCC();
    sub_24E6AEC58();
    v43 = v93;
    sub_24F924E28();
    sub_24E601704(v42, &qword_27F217618);
    sub_24E601704(v40, &qword_27F217620);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v44 = sub_24F927558();
    MEMORY[0x28223BE20](v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217668);
    v45 = sub_24E6AED48();
    v100[0] = v92;
    v100[1] = v45;
    swift_getOpaqueTypeConformance2();
    v46 = v99;
    sub_24F926B08();
    sub_24E601704(v43, &qword_27F217628);
    (*(v85 + 8))(v83, v84);
    v25 = 0;
    v26 = v46;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217638);
  (*(*(v47 - 8) + 56))(v26, v25, 1, v47);
  v48 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  v49 = v97;
  sub_24E6AD480(v2 + v48[5], v97, type metadata accessor for GameActivityDraftGameInfo);
  v50 = (v2 + v48[6]);
  v51 = *v50;
  v52 = v50[1];
  v53 = (v2 + v48[7]);
  v54 = *v53;
  v55 = v53[1];
  v92 = v52;
  v93 = v55;
  v56 = (v2 + v48[8]);
  v57 = *v56;
  v58 = v56[1];
  v59 = (v2 + v48[9]);
  v60 = v59[1];
  v91 = *v59;
  v61 = v91;
  v90 = v60;
  v62 = v2 + v48[11];
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 8);
  v64 = (v2 + v48[13]);
  v66 = v64[1];
  v87 = *v64;
  v65 = v87;
  v68 = v64[2];
  v86 = v64[3];
  v67 = v86;
  v70 = v64[5];
  v89 = v64[4];
  v69 = v89;
  v88 = v70;
  v71 = v95;
  v72 = (v49 + *(v95 + 20));
  *v72 = v51;
  v72[1] = v52;
  v73 = (v49 + v71[6]);
  *v73 = v54;
  v73[1] = v55;
  v74 = (v49 + v71[7]);
  *v74 = v57;
  v74[1] = v58;
  v75 = (v49 + v71[8]);
  *v75 = v61;
  v75[1] = v60;
  v76 = v49 + v71[9];
  *v76 = v63;
  *(v76 + 8) = v62;
  v77 = (v49 + v71[10]);
  *v77 = v65;
  v77[1] = v66;
  v77[2] = v68;
  v77[3] = v67;
  v77[4] = v69;
  v77[5] = v70;
  *(v49 + v71[11]) = 1;
  v78 = v94;
  sub_24E60169C(v26, v94, &qword_27F217630);
  v79 = v98;
  sub_24E6AD480(v49, v98, type metadata accessor for PlayTogetherReviewHeader.ContentView);
  v80 = v96;
  sub_24E60169C(v78, v96, &qword_27F217630);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217640);
  sub_24E6AD480(v79, v80 + *(v81 + 48), type metadata accessor for PlayTogetherReviewHeader.ContentView);

  sub_24E6AD46C(v91, v90);
  sub_24E68FE2C(v87, v66);
  sub_24E6AD63C(v49, type metadata accessor for PlayTogetherReviewHeader.ContentView);
  sub_24E601704(v99, &qword_27F217630);
  sub_24E6AD63C(v79, type metadata accessor for PlayTogetherReviewHeader.ContentView);
  return sub_24E601704(v78, &qword_27F217630);
}

uint64_t sub_24E6AA500(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24E6AD480(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24E6AEFC8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217628);
  sub_24E6AED48();
  sub_24F9267B8();
}

uint64_t sub_24E6AA650()
{
  type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  return sub_24F927178();
}

uint64_t sub_24E6AA6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710);
  v185 = *(v3 - 8);
  v186 = v3;
  MEMORY[0x28223BE20](v3);
  v169 = &v166 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217718);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v188 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v196 = &v166 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217720);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v197 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v200 = (&v166 - v12);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217728);
  MEMORY[0x28223BE20](v182);
  v180 = &v166 - v13;
  v181 = sub_24F925DC8();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v178 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v172);
  v173 = &v166 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217730);
  v176 = *(v16 - 8);
  v177 = v16;
  MEMORY[0x28223BE20](v16);
  v175 = &v166 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217738);
  v183 = *(v18 - 8);
  v184 = v18;
  MEMORY[0x28223BE20](v18);
  v174 = &v166 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217740);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v195 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v199 = &v166 - v23;
  v24 = sub_24F929888();
  v191 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217748);
  MEMORY[0x28223BE20](v27);
  v171 = (&v166 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217750);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v170 = &v166 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217758);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v194 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v166 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217760);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v193 = &v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v166 - v40;
  *v41 = sub_24F9249A8();
  *(v41 + 1) = 0x4018000000000000;
  v41[16] = 0;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217768) + 44);
  v192 = v41;
  sub_24E6AB918(a1, &v41[v42]);
  v43 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  v44 = *(a1 + v43[5] + 8);
  v189 = a1;
  v190 = v24;
  v198 = v36;
  if (v44)
  {
    v167 = v30;

    sub_24F925888();
    v45 = v43;
    v46 = sub_24F925C98();
    v48 = v47;
    v166 = v27;
    v50 = v49;
    v168 = v29;
    v52 = v51;

    *&v206 = v46;
    *(&v206 + 1) = v48;
    v53 = v50 & 1;
    LOBYTE(v207) = v50 & 1;
    *(&v207 + 1) = v52;
    v54 = v171;
    sub_24F9268B8();
    v55 = v46;
    v30 = v167;
    v56 = v53;
    v43 = v45;
    sub_24E600B40(v55, v48, v56);

    v57 = sub_24F925818();
    sub_24F923318();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8) + 36);
    *v66 = v57;
    *(v66 + 8) = v59;
    *(v66 + 16) = v61;
    *(v66 + 24) = v63;
    *(v66 + 32) = v65;
    *(v66 + 40) = 0;
    v67 = sub_24F925828();
    sub_24F923318();
    v68 = v54 + *(v166 + 36);
    *v68 = v67;
    *(v68 + 8) = v69;
    *(v68 + 16) = v70;
    *(v68 + 24) = v71;
    *(v68 + 32) = v72;
    *(v68 + 40) = 0;
    v206 = 0u;
    v207 = 0u;
    v202 = 0u;
    v203 = 0u;
    sub_24F9297C8();
    sub_24E601704(&v202, &qword_27F2129B0);
    sub_24E601704(&v206, &qword_27F2129B0);
    sub_24E6AFA2C(&qword_27F2177B0, &qword_27F217748, &unk_24F946300, sub_24E6AFAB0);
    v73 = v170;
    sub_24F925EE8();
    (*(v191 + 8))(v26, v190);
    a1 = v189;
    v29 = v168;
    sub_24E601704(v54, &qword_27F217748);
    v74 = v198;
    (*(v30 + 32))(v198, v73, v29);
    v75 = 0;
    v76 = v74;
  }

  else
  {
    v75 = 1;
    v76 = v36;
  }

  (*(v30 + 56))(v76, v75, 1, v29);
  v77 = MEMORY[0x277CE13B8];
  if (*(a1 + v43[6] + 8))
  {

    sub_24F925A18();
    v78 = sub_24F925C98();
    v170 = v26;
    v80 = v79;
    v82 = v81;
    v168 = v83;

    v84 = sub_24F9251C8();
    v171 = v43;
    v85 = *(v172 + 36);
    v86 = *v77;
    v87 = sub_24F927748();
    v88 = v173;
    (*(*(v87 - 8) + 104))(&v173[v85], v86, v87);
    *v88 = v84;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v89 = sub_24F925C58();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    sub_24E600B40(v78, v80, v82 & 1);

    sub_24E601704(v88, &qword_27F213F10);
    LOBYTE(v88) = sub_24F925828();
    sub_24F923318();
    v201[56] = v93 & 1;
    v201[48] = 0;
    *&v202 = v89;
    *(&v202 + 1) = v91;
    LOBYTE(v203) = v93 & 1;
    *(&v203 + 1) = v95;
    LOBYTE(v204) = v88;
    *(&v204 + 1) = v96;
    *&v205[0] = v97;
    *(&v205[0] + 1) = v98;
    *&v205[1] = v99;
    BYTE8(v205[1]) = 0;
    v206 = 0u;
    v207 = 0u;
    memset(v201, 0, 32);
    v100 = v170;
    sub_24F9297C8();
    sub_24E601704(v201, &qword_27F2129B0);
    sub_24E601704(&v206, &qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790);
    sub_24E6AF8AC();
    v101 = v175;
    sub_24F925EE8();
    (*(v191 + 8))(v100, v190);
    v208 = v204;
    *v209 = v205[0];
    *&v209[9] = *(v205 + 9);
    v206 = v202;
    v207 = v203;
    a1 = v189;
    sub_24E601704(&v206, &qword_27F217790);
    v102 = v178;
    sub_24F925DB8();
    KeyPath = swift_getKeyPath();
    v105 = v176;
    v104 = v177;
    v106 = v180;
    (*(v176 + 16))(v180, v101, v177);
    v107 = v106 + *(v182 + 36);
    *v107 = KeyPath;
    *(v107 + 8) = 0;
    sub_24E6AF938();
    v108 = v174;
    sub_24F926718();
    sub_24E601704(v106, &qword_27F217728);
    (*(v179 + 8))(v102, v181);
    (*(v105 + 8))(v101, v104);
    v43 = v171;
    v110 = v183;
    v109 = v184;
    v111 = v199;
    (*(v183 + 32))(v199, v108, v184);
    (*(v110 + 56))(v111, 0, 1, v109);
  }

  else
  {
    (*(v183 + 56))(v199, 1, 1, v184);
  }

  v112 = v186;
  v113 = sub_24F9249A8();
  v114 = v200;
  *v200 = v113;
  v114[1] = 0;
  *(v114 + 16) = 0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217770);
  sub_24E6AC440(a1, v114 + *(v115 + 44));
  v116 = (a1 + v43[10]);
  v190 = v116[1];
  if (v190)
  {
    v117 = v116[5];
    v184 = v116[4];
    v118 = v116[3];
    v191 = v116[2];
    v182 = *v116;

    v183 = v118;

    v186 = v117;

    LOBYTE(v117) = sub_24F925818();
    sub_24F923318();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    LOBYTE(v206) = 0;
    v181 = v117;
  }

  else
  {
    v182 = 0;
    v183 = 0;
    v191 = 0;
    v184 = 0;
    v186 = 0;
    v181 = 0;
    v120 = 0;
    v122 = 0;
    v124 = 0;
    v126 = 0;
  }

  v127 = MEMORY[0x277CE13B8];
  if (*(a1 + v43[11]) == 1)
  {
    v128 = v169;
    sub_24F9271E8();
    v129 = sub_24F9251C8();
    *(v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)) = v129;
    v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598) + 36);
    v131 = *v127;
    v132 = sub_24F927748();
    (*(*(v132 - 8) + 104))(v128 + v130, v131, v132);
    LOBYTE(v131) = sub_24F925818();
    sub_24F923318();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v141 = v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788) + 36);
    *v141 = v131;
    *(v141 + 8) = v134;
    *(v141 + 16) = v136;
    *(v141 + 24) = v138;
    *(v141 + 32) = v140;
    *(v141 + 40) = 0;
    LOBYTE(v131) = sub_24F925828();
    sub_24F923318();
    v142 = v128 + *(v112 + 36);
    *v142 = v131;
    *(v142 + 8) = v143;
    *(v142 + 16) = v144;
    *(v142 + 24) = v145;
    *(v142 + 32) = v146;
    *(v142 + 40) = 0;
    v147 = v196;
    sub_24E6AF83C(v128, v196);
    v148 = 0;
  }

  else
  {
    v148 = 1;
    v147 = v196;
  }

  (*(v185 + 56))(v147, v148, 1, v112);
  v149 = v193;
  sub_24E60169C(v192, v193, &qword_27F217760);
  v150 = v194;
  sub_24E60169C(v198, v194, &qword_27F217758);
  v151 = v195;
  sub_24E60169C(v199, v195, &qword_27F217740);
  v152 = v197;
  sub_24E60169C(v200, v197, &qword_27F217720);
  v153 = v188;
  sub_24E60169C(v147, v188, &qword_27F217718);
  v154 = v187;
  sub_24E60169C(v149, v187, &qword_27F217760);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217778);
  sub_24E60169C(v150, v154 + v155[12], &qword_27F217758);
  sub_24E60169C(v151, v154 + v155[16], &qword_27F217740);
  sub_24E60169C(v152, v154 + v155[20], &qword_27F217720);
  v156 = (v154 + v155[24]);
  v157 = v182;
  v158 = v183;
  v159 = v190;
  *&v202 = v182;
  *(&v202 + 1) = v190;
  *&v203 = v191;
  *(&v203 + 1) = v183;
  v160 = v184;
  v161 = v186;
  *&v204 = v184;
  *(&v204 + 1) = v186;
  v162 = v181;
  *&v205[0] = v181;
  *(&v205[0] + 1) = v120;
  *&v205[1] = v122;
  *(&v205[1] + 1) = v124;
  *&v205[2] = v126;
  BYTE8(v205[2]) = 0;
  v163 = v205[0];
  v156[2] = v204;
  v156[3] = v163;
  v156[4] = v205[1];
  *(v156 + 73) = *(&v205[1] + 9);
  v164 = v203;
  *v156 = v202;
  v156[1] = v164;
  sub_24E60169C(v153, v154 + v155[28], &qword_27F217718);
  sub_24E60169C(&v202, &v206, &qword_27F217780);
  sub_24E601704(v196, &qword_27F217718);
  sub_24E601704(v200, &qword_27F217720);
  sub_24E601704(v199, &qword_27F217740);
  sub_24E601704(v198, &qword_27F217758);
  sub_24E601704(v192, &qword_27F217760);
  sub_24E601704(v153, &qword_27F217718);
  *&v206 = v157;
  *(&v206 + 1) = v159;
  *&v207 = v191;
  *(&v207 + 1) = v158;
  *&v208 = v160;
  *(&v208 + 1) = v161;
  *v209 = v162;
  *&v209[8] = v120;
  *&v209[16] = v122;
  *&v209[24] = v124;
  v210 = v126;
  v211 = 0;
  sub_24E601704(&v206, &qword_27F217780);
  sub_24E601704(v197, &qword_27F217720);
  sub_24E601704(v195, &qword_27F217740);
  sub_24E601704(v194, &qword_27F217758);
  return sub_24E601704(v193, &qword_27F217760);
}

uint64_t sub_24E6AB918@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v52 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217810);
  MEMORY[0x28223BE20](v48);
  v3 = &v43 - v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217818) - 8;
  v4 = MEMORY[0x28223BE20](v49);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - v6;
  v7 = sub_24F929888();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217310);
  v44 = *(v46 - 8);
  v14 = MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v19 = sub_24F9289E8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v13, v52 + v18, v19);
  (*(v20 + 56))(v13, 0, 1, v19);
  v21 = type metadata accessor for GameIcon(0);
  v22 = v21[8];
  *&v13[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v13[v21[5]] = 1;
  v13[v21[6]] = 1;
  v13[v21[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v23 = &v13[*(v11 + 36)];
  v24 = *(&v54[3] + 8);
  *v23 = *(&v54[2] + 8);
  *(v23 + 1) = v24;
  *(v23 + 2) = *(&v54[4] + 8);
  memset(v54, 0, 32);
  memset(v53, 0, sizeof(v53));
  sub_24F9297C8();
  sub_24E601704(v53, &qword_27F2129B0);
  sub_24E601704(v54, &qword_27F2129B0);
  sub_24E6801D4();
  v43 = v17;
  sub_24F925EE8();
  (*(v8 + 8))(v10, v7);
  sub_24E601704(v13, &qword_27F216760);
  *v3 = sub_24F9249A8();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217820);
  sub_24E6ABF7C(v52, &v3[*(v25 + 44)]);
  v26 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v28 = &v3[*(v48 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_24E6AFD34();
  v29 = v47;
  sub_24F9268B8();
  sub_24E601704(v3, &qword_27F217810);
  LODWORD(v26) = sub_24F9251C8();
  v30 = (v29 + *(v49 + 44));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v32 = *MEMORY[0x277CE13B8];
  v33 = sub_24F927748();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  *v30 = v26;
  v34 = v44;
  v35 = *(v44 + 16);
  v36 = v45;
  v37 = v46;
  v35(v45, v17, v46);
  v38 = v50;
  sub_24E60169C(v29, v50, &qword_27F217818);
  v39 = v51;
  v35(v51, v36, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217840);
  sub_24E60169C(v38, &v39[*(v40 + 48)], &qword_27F217818);
  sub_24E601704(v29, &qword_27F217818);
  v41 = *(v34 + 8);
  v41(v43, v37);
  sub_24E601704(v38, &qword_27F217818);
  return (v41)(v36, v37);
}

uint64_t sub_24E6ABF7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v37 = &v34 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v36 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v15;
  v16 = *(a1 + 40);
  v44._countAndFlagsBits = *(a1 + 32);
  v44._object = v16;
  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;

  sub_24F9297C8();
  sub_24E601704(&v40, &qword_27F2129B0);
  sub_24E601704(&v42, &qword_27F2129B0);
  sub_24F925EE8();
  v17 = *(v4 + 8);
  v17(v6, v3);

  v18 = *(a1 + *(type metadata accessor for PlayTogetherReviewHeader.ContentView(0) + 32) + 8);
  v19 = v18 == 1;
  if (v18 == 1)
  {
    v20 = "ivity.Type.Multiplayer";
  }

  else
  {
    v20 = "activityPlayerRange";
  }

  if (v19)
  {
    v21 = 0xD000000000000024;
  }

  else
  {
    v21 = 0xD000000000000026;
  }

  v22 = v20 | 0x8000000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v44 = localizedString(_:comment:)(*&v21, v23);
  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_24F9297C8();
  sub_24E601704(&v40, &qword_27F2129B0);
  sub_24E601704(&v42, &qword_27F2129B0);
  v24 = v36;
  sub_24F925EE8();
  v17(v6, v3);

  v25 = *(v8 + 16);
  v26 = v37;
  v27 = v35;
  v25(v37, v35, v7);
  v28 = v38;
  v25(v38, v24, v7);
  v29 = v39;
  v25(v39, v26, v7);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217848);
  v31 = &v29[*(v30 + 48)];
  *v31 = xmmword_24F945E40;
  v31[16] = 0;
  *(v31 + 3) = MEMORY[0x277D84F90];
  v25(&v29[*(v30 + 64)], v28, v7);
  sub_24E5FD138(10649826, 0xA300000000000000, 0);
  v32 = *(v8 + 8);

  v32(v24, v7);
  v32(v27, v7);
  v32(v28, v7);
  sub_24E600B40(10649826, 0xA300000000000000, 0);

  return (v32)(v26, v7);
}

uint64_t sub_24E6AC440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v101 = &v98 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v98 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177B8);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v103 = &v98 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v121 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v98 - v10;
  v111 = sub_24F9297D8();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F929888();
  v124 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177C8);
  MEMORY[0x28223BE20](v15);
  v17 = &v98 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177D0);
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v19 = &v98 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177D8);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v109 = &v98 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177E0);
  v21 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v108 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177E8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v117 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v98 - v26;
  v28 = type metadata accessor for PlayTogetherReviewHeader.ContentView(0);
  v115 = v28;
  v29 = *(a1 + *(v28 + 28) + 8);
  v30 = MEMORY[0x277CE13B8];
  v100 = v3;
  v125 = v12;
  v123 = v27;
  if (v29)
  {
    MEMORY[0x28223BE20](v28);
    *(&v98 - 2) = v32;
    *(&v98 - 1) = v31;
    sub_24F926EA8();
    v33 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v99 = a1;
    v35 = v14;
    v36 = KeyPath;
    v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8) + 36)];
    *v37 = v36;
    *(v37 + 1) = v33;
    LODWORD(v33) = sub_24F9251C8();
    v38 = &v17[*(v15 + 36)];
    v39 = *(v3 + 36);
    v40 = *v30;
    v41 = sub_24F927748();
    (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
    *v38 = v33;
    v42 = v110;
    v43 = v107;
    v44 = v111;
    (*(v110 + 104))(v107, *MEMORY[0x277D22070], v111);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    sub_24F929818();
    sub_24E601704(&v127, &qword_27F2129B0);
    sub_24E601704(&v129, &qword_27F2129B0);
    (*(v42 + 8))(v43, v44);
    v45 = sub_24E6AFB90();
    v46 = v19;
    sub_24F925EE8();
    v47 = *(v124 + 8);
    v47(v35, v125);
    sub_24E601704(v17, &qword_27F2177C8);
    *&v129 = v15;
    *(&v129 + 1) = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v109;
    v50 = v113;
    sub_24F9268B8();
    (*(v106 + 8))(v46, v50);
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    sub_24F9297C8();
    sub_24E601704(&v127, &qword_27F2129B0);
    v51 = v125;
    v14 = v35;
    a1 = v99;
    sub_24E601704(&v129, &qword_27F2129B0);
    *&v129 = v50;
    *(&v129 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v52 = v108;
    v53 = v114;
    sub_24F925EE8();
    v47(v14, v51);
    v27 = v123;
    (*(v112 + 8))(v49, v53);
    v54 = v116;
    (*(v21 + 32))(v27, v52, v116);
    (*(v21 + 56))(v27, 0, 1, v54);
  }

  else
  {
    (*(v21 + 56))(v27, 1, 1, v116);
  }

  v55 = (a1 + *(v115 + 32));
  v56 = v55[1];
  if (v56 >= 2)
  {
    *&v129 = *v55;
    *(&v129 + 1) = v56;
    sub_24E600AEC();

    v60 = sub_24F925E18();
    v62 = v61;
    v64 = v63;
    sub_24F925898();
    v116 = v14;
    v65 = sub_24F925C98();
    v67 = v66;
    v69 = v68;

    sub_24E600B40(v60, v62, v64 & 1);

    v70 = sub_24F9251C8();
    v71 = *(v100 + 36);
    v72 = *MEMORY[0x277CE13B8];
    v73 = sub_24F927748();
    v74 = v101;
    (*(*(v73 - 8) + 104))(&v101[v71], v72, v73);
    *v74 = v70;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v75 = sub_24F925C58();
    v77 = v76;
    LOBYTE(v70) = v78;
    v80 = v79;
    v81 = v67;
    v27 = v123;
    sub_24E600B40(v65, v81, v69 & 1);

    sub_24E601704(v74, &qword_27F213F10);
    *&v129 = v75;
    *(&v129 + 1) = v77;
    LOBYTE(v65) = v70 & 1;
    LOBYTE(v130) = v70 & 1;
    *(&v130 + 1) = v80;
    v127 = 0u;
    v128 = 0u;
    memset(v126, 0, sizeof(v126));
    v82 = v116;
    sub_24F9297C8();
    sub_24E601704(v126, &qword_27F2129B0);
    sub_24E601704(&v127, &qword_27F2129B0);
    v83 = v102;
    v84 = MEMORY[0x277CE0BD8];
    v85 = MEMORY[0x277CE0BC8];
    sub_24F925EE8();
    (*(v124 + 8))(v82, v125);
    sub_24E600B40(v75, v77, v65);

    *&v129 = v84;
    *(&v129 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v86 = v103;
    v87 = v105;
    sub_24F9268B8();
    (*(v104 + 8))(v83, v87);
    LOBYTE(v87) = sub_24F925838();
    sub_24F923318();
    v59 = v119;
    v88 = v86 + *(v119 + 36);
    *v88 = v87;
    *(v88 + 8) = v89;
    *(v88 + 16) = v90;
    *(v88 + 24) = v91;
    *(v88 + 32) = v92;
    *(v88 + 40) = 0;
    v58 = v120;
    sub_24E6009C8(v86, v120, &qword_27F2177B8);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v58 = v120;
    v59 = v119;
  }

  (*(v118 + 56))(v58, v57, 1, v59);
  v93 = v117;
  sub_24E60169C(v27, v117, &qword_27F2177E8);
  v94 = v121;
  sub_24E60169C(v58, v121, &qword_27F2177C0);
  v95 = v122;
  sub_24E60169C(v93, v122, &qword_27F2177E8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F0);
  sub_24E60169C(v94, v95 + *(v96 + 48), &qword_27F2177C0);
  sub_24E601704(v58, &qword_27F2177C0);
  sub_24E601704(v27, &qword_27F2177E8);
  sub_24E601704(v94, &qword_27F2177C0);
  return sub_24E601704(v93, &qword_27F2177E8);
}

uint64_t sub_24E6AD258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926E48();
  *a1 = result;
  return result;
}

__n128 sub_24E6AD2A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2176F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  *v8 = sub_24F924C98();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217700);
  sub_24E6AA6C8(v4, &v8[*(v9 + 44)]);
  v10 = sub_24F9257F8();
  v11 = *(v4 + *(a1 + 36) + 8);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((v11 & 1) == 0)
  {
    sub_24F923318();
    *(&v13 + 1) = v14;
    v12.n128_u64[1] = v15;
  }

  v18 = v13;
  v19 = v12;
  sub_24E6009C8(v8, a2, &qword_27F2176F8);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217708) + 36);
  *v16 = v10;
  result = v19;
  *(v16 + 24) = v18;
  *(v16 + 8) = result;
  *(v16 + 40) = v11;
  return result;
}

uint64_t sub_24E6AD3DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217510);
  return sub_24E6A79FC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24E6AD46C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24E6AD480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6AD4E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6AD550()
{
  result = qword_27F217548;
  if (!qword_27F217548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217528);
    sub_24E6AD4E8(&qword_27F217530, type metadata accessor for PlayTogetherReviewHeader.CompactHeaderView);
    sub_24E6AD4E8(&qword_27F217538, type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217548);
  }

  return result;
}

uint64_t sub_24E6AD63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6AD69C@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217858);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24F9289E8();
  v11 = *(v48 - 8);
  v12 = MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  type metadata accessor for ReviewHeaderBackgroundView(0);
  sub_24F921BE8();
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  (*(v8 + 8))(v10, v7);
  v46 = v15;
  sub_24F9289C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v16 = swift_allocObject();
  v51 = xmmword_24F93A400;
  *(v16 + 16) = xmmword_24F93A400;
  *(v16 + 32) = sub_24F926D08();
  *(v16 + 40) = sub_24F926D08();
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v16);
  sub_24F923BD8();
  v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217868) + 36)];
  sub_24F927468();
  LOBYTE(v16) = sub_24F925808();
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v16;
  *(v6 + 4) = v54;
  v18 = v53;
  *v6 = v52;
  *(v6 + 1) = v18;
  v19 = sub_24F927618();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  sub_24F926C98();
  *(v22 + 32) = sub_24F9273C8();
  *(v22 + 40) = v23;

  *(v22 + 48) = sub_24F9273C8();
  *(v22 + 56) = v24;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v25 = v55;
  v26 = *(v2 + 44);
  v27 = v6;
  v45 = v6;
  v28 = &v6[v26];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v25;
  v29 = v57;
  *(v28 + 24) = v56;
  *(v28 + 40) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v51;
  sub_24F926C98();
  *(v30 + 32) = sub_24F9273C8();
  *(v30 + 40) = v31;

  *(v30 + 48) = sub_24F9273C8();
  *(v30 + 56) = v32;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v33 = *(v11 + 16);
  v34 = v47;
  v35 = v15;
  v36 = v48;
  v33(v47, v35, v48);
  v37 = v49;
  sub_24E60169C(v27, v49, &qword_27F217858);
  v38 = v58;
  v51 = v59;
  v44 = v60;
  v39 = v50;
  v33(v50, v34, v36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217878);
  sub_24E60169C(v37, &v39[*(v40 + 48)], &qword_27F217858);
  v41 = &v39[*(v40 + 64)];
  *v41 = v38;
  *(v41 + 24) = v44;
  *(v41 + 8) = v51;

  sub_24E601704(v45, &qword_27F217858);
  v42 = *(v11 + 8);
  v42(v46, v36);

  sub_24E601704(v37, &qword_27F217858);
  return (v42)(v34, v36);
}

uint64_t sub_24E6ADCA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F927618();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217850);
  return sub_24E6AD69C(a1 + *(v3 + 44));
}

uint64_t sub_24E6ADD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GameActivityDraftGameInfo(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24E6ADE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GameActivityDraftGameInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E6ADF48()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityDraftGameInfo(319);
    if (v1 <= 0x3F)
    {
      sub_24E6A7878(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6A7878(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6A7878(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_24E6A7878(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
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

uint64_t sub_24E6AE0E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
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
      v13 = type metadata accessor for GameActivityDraftGameInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E6AE228(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
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
      v13 = type metadata accessor for GameActivityDraftGameInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E6AE358()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityDraftGameInfo(319);
    if (v1 <= 0x3F)
    {
      sub_24E6A7878(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6A7878(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6A7878(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E6AE4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GameActivityDraftGameInfo(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_24E6AE604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GameActivityDraftGameInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E6AE71C()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityDraftGameInfo(319);
    if (v1 <= 0x3F)
    {
      sub_24E6A7878(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6A7878(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6A7878(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24E6AE920()
{
  result = qword_27F2175A0;
  if (!qword_27F2175A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217598);
    sub_24E6AE9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2175A0);
  }

  return result;
}

unint64_t sub_24E6AE9AC()
{
  result = qword_27F2175A8;
  if (!qword_27F2175A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2175B0);
    sub_24E6AEA64();
    sub_24E602068(&qword_27F2175E0, &qword_27F2175E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2175A8);
  }

  return result;
}

unint64_t sub_24E6AEA64()
{
  result = qword_27F2175B8;
  if (!qword_27F2175B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2175C0);
    sub_24F9289E8();
    type metadata accessor for AspectRatioMediaArtworkStyle();
    sub_24E6AD4E8(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E6AD4E8(&qword_27F2175C8, type metadata accessor for AspectRatioMediaArtworkStyle);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2175D0, &qword_27F2175D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2175B8);
  }

  return result;
}

unint64_t sub_24E6AEBCC()
{
  result = qword_27F217648;
  if (!qword_27F217648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217618);
    sub_24E6AEC58();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217648);
  }

  return result;
}

unint64_t sub_24E6AEC58()
{
  result = qword_27F217650;
  if (!qword_27F217650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217620);
    sub_24E6AD4E8(&qword_27F214C28, MEMORY[0x277D21C48]);
    sub_24E602068(&qword_27F217658, &qword_27F217660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217650);
  }

  return result;
}

unint64_t sub_24E6AED48()
{
  result = qword_27F217670;
  if (!qword_27F217670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217628);
    sub_24E6AEBCC();
    sub_24E6AEC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217670);
  }

  return result;
}

uint64_t sub_24E6AEDD4()
{
  v1 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v3 + v1[5];

  v7 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(v5 + 8))(v6 + *(v7 + 28), v4);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  if (*(v3 + v1[13] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E6AEFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6AF02C()
{
  type metadata accessor for PlayTogetherReviewHeader.LegacyHeaderView(0);

  return sub_24E6AA650();
}

unint64_t sub_24E6AF09C()
{
  result = qword_27F217688;
  if (!qword_27F217688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217680);
    sub_24E6AD4E8(&qword_27F217690, type metadata accessor for ReviewHeaderBackgroundView);
    sub_24E602068(&qword_27F217698, &qword_27F2176A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217688);
  }

  return result;
}

uint64_t sub_24E6AF1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameActivityDraftGameInfo(0);
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

uint64_t sub_24E6AF298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameActivityDraftGameInfo(0);
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

void sub_24E6AF354()
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v0 <= 0x3F)
  {
    sub_24E6A7878(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E6A7878(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E6A7878(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E6AF49C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9289E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E6AF55C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F9289E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E6AF600()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E6AF750(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E6AD4E8(&qword_27F2175F0, type metadata accessor for PlayTogetherReviewHeader.ContentView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6AF83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6AF8AC()
{
  result = qword_27F217798;
  if (!qword_27F217798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217798);
  }

  return result;
}

unint64_t sub_24E6AF938()
{
  result = qword_27F2177A0;
  if (!qword_27F2177A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217790);
    sub_24E6AF8AC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2177A0);
  }

  return result;
}

uint64_t sub_24E6AFA2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6AFAB0()
{
  result = qword_27F255290;
  if (!qword_27F255290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2177A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255290);
  }

  return result;
}

uint64_t sub_24E6AFB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

unint64_t sub_24E6AFB90()
{
  result = qword_27F217800;
  if (!qword_27F217800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2177C8);
    sub_24E6AFC48();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217800);
  }

  return result;
}

unint64_t sub_24E6AFC48()
{
  result = qword_27F217808;
  if (!qword_27F217808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2177F8);
    sub_24E602068(&qword_27F212910, &qword_27F211B58);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217808);
  }

  return result;
}

unint64_t sub_24E6AFD34()
{
  result = qword_27F217828;
  if (!qword_27F217828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217810);
    sub_24E602068(&qword_27F217830, &qword_27F217838);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217828);
  }

  return result;
}

unint64_t sub_24E6AFE5C()
{
  result = qword_27F217888;
  if (!qword_27F217888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2176F8);
    sub_24E602068(&qword_27F217890, &qword_27F217898);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217888);
  }

  return result;
}

unint64_t sub_24E6AFF94()
{
  result = qword_27F2178B0;
  if (!qword_27F2178B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2178B0);
  }

  return result;
}

unint64_t sub_24E6B004C()
{
  result = qword_27F2178B8;
  if (!qword_27F2178B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F2178C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2178B8);
  }

  return result;
}

uint64_t sub_24E6B00B4(double a1)
{
  if (a1 >= 0.0 && a1 < 320.0)
  {
    return 0;
  }

  if (a1 >= 320.0 && a1 < 375.0)
  {
    return 1;
  }

  if (a1 >= 375.0 && a1 < 501.0)
  {
    return 2;
  }

  if (a1 >= 501.0 && a1 < 727.0)
  {
    return 3;
  }

  if (a1 >= 727.0 && a1 < 982.0)
  {
    return 4;
  }

  if (a1 >= 982.0 && a1 < 1195.0)
  {
    return 5;
  }

  if (a1 >= 1195.0 && a1 < 1501.0)
  {
    return 6;
  }

  if (a1 >= 2501.0 || a1 < 1501.0)
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_24E6B024C()
{
  result = sub_24F92C4A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E6B02BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24E6B043C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t ChallengesHistoryData.FriendHistory.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E6B247C(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6B24C4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v6 = *(v2 + *(type metadata accessor for ChallengesHistoryData.FriendHistory(0) + 20));
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = sub_24E65901C();
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

uint64_t sub_24E6B0840()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24E6B0884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364)
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

uint64_t sub_24E6B0964(uint64_t a1)
{
  v2 = sub_24E6B2428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6B09A0(uint64_t a1)
{
  v2 = sub_24E6B2428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryData.FriendHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B2428();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24E6B247C(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesHistoryData.FriendHistory(0);
    v8[14] = 1;
    sub_24F92CD38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryData.FriendHistory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217958);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ChallengesHistoryData.FriendHistory(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B2428();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v19;
  v23 = 0;
  sub_24E6B247C(&qword_27F213E38, type metadata accessor for Player);
  v13 = v20;
  sub_24F92CC68();
  v14 = v11;
  sub_24E6B2600(v13, v11, type metadata accessor for Player);
  v22 = 1;
  v15 = v21;
  v16 = sub_24F92CC58();
  (*(v12 + 8))(v7, v15);
  *(v14 + *(v8 + 20)) = v16;
  sub_24E6B24C4(v14, v18, type metadata accessor for ChallengesHistoryData.FriendHistory);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E6B252C(v14, type metadata accessor for ChallengesHistoryData.FriendHistory);
}

unint64_t sub_24E6B0ED4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E6B247C(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6B24C4(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = sub_24E65901C();
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

unint64_t ChallengesHistoryData.GameHistory.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24E6B247C(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6B24C4(v2, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v6 = *(v2 + *(type metadata accessor for ChallengesHistoryData.GameHistory(0) + 20));
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = sub_24E65901C();
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

uint64_t sub_24E6B120C()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24E6B124C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364)
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

uint64_t sub_24E6B1330(uint64_t a1)
{
  v2 = sub_24E6B25AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6B136C(uint64_t a1)
{
  v2 = sub_24E6B25AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryData.GameHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217968);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B25AC();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game();
  sub_24E6B247C(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesHistoryData.GameHistory(0);
    v8[14] = 1;
    sub_24F92CD38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryData.GameHistory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217978);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ChallengesHistoryData.GameHistory(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B25AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v19;
  v23 = 0;
  sub_24E6B247C(&qword_27F214968, type metadata accessor for Game);
  v13 = v20;
  sub_24F92CC68();
  v14 = v11;
  sub_24E6B2600(v13, v11, type metadata accessor for Game);
  v22 = 1;
  v15 = v21;
  v16 = sub_24F92CC58();
  (*(v12 + 8))(v7, v15);
  *(v14 + *(v8 + 20)) = v16;
  sub_24E6B24C4(v14, v18, type metadata accessor for ChallengesHistoryData.GameHistory);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E6B252C(v14, type metadata accessor for ChallengesHistoryData.GameHistory);
}

unint64_t sub_24E6B18A0@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game();
  *(inited + 80) = sub_24E6B247C(&qword_27F217960, type metadata accessor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6B24C4(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "completedCount");
  *(inited + 103) = -18;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = MEMORY[0x277D83B88];
  *(inited + 136) = sub_24E65901C();
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

unint64_t ChallengesHistoryData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v6 = v1[3];
  v5 = v1[4];
  v14 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  strcpy((inited + 32), "completedCount");
  *(inited + 16) = xmmword_24F942000;
  *(inited + 47) = -18;
  v8 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v9 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v9;
  *(inited + 88) = 0x6E756F43656D6167;
  *(inited + 96) = 0xE900000000000074;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  v10 = sub_24E658F98();
  *(inited + 104) = v2;
  *(inited + 112) = v4;
  *(inited + 136) = v10;
  *(inited + 144) = 0x6F43646E65697266;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 152) = 0xEB00000000746E75;
  *(inited + 160) = v6;
  *(inited + 200) = 0x6948646E65697266;
  *(inited + 208) = 0xEF736569726F7473;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
  v11 = sub_24E6B2824(&qword_27F217988, &qword_27F217990);
  *(inited + 216) = v5;
  *(inited + 248) = v11;
  strcpy((inited + 256), "gameHistories");
  *(inited + 270) = -4864;
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
  *(inited + 304) = sub_24E6B2668();
  *(inited + 272) = v14;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24E6B1CB4()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0x6F43646E65697266;
  v4 = 0x6948646E65697266;
  if (v1 != 3)
  {
    v4 = 0x74736948656D6167;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E756F43656D6167;
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

uint64_t sub_24E6B1D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6B2F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6B1DA8(uint64_t a1)
{
  v2 = sub_24E6B271C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6B1DE4(uint64_t a1)
{
  v2 = sub_24E6B271C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2179B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v20 = *(v1 + 8);
  v19 = *(v1 + 16);
  v8 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v8;
  v9 = *(v1 + 40);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_24E6B271C();
  sub_24F92D128();
  LOBYTE(v22) = 0;
  sub_24F92CD38();
  if (!v2)
  {
    v14 = v17;
    LOBYTE(v22) = 1;
    sub_24F92CCE8();
    LOBYTE(v22) = 2;
    sub_24F92CD38();
    v22 = v14;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
    sub_24E6B2824(&qword_27F2179C0, &qword_27F2179C8);
    sub_24F92CD48();
    v22 = v9;
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
    sub_24E6B2770();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t ChallengesHistoryData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2179E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B271C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v9 = sub_24F92CC58();
  LOBYTE(v21) = 1;
  v10 = sub_24F92CC08();
  v19 = v11;
  v12 = v10;
  LOBYTE(v21) = 2;
  v18 = sub_24F92CC58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
  v20 = 3;
  sub_24E6B2824(&qword_27F2179E8, &qword_27F2179F0);
  sub_24F92CC68();
  v17 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
  v20 = 4;
  sub_24E6B28C0();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19 & 1;
  v14 = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v14;
  *(a2 + 40) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24E6B2428()
{
  result = qword_27F217950;
  if (!qword_27F217950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217950);
  }

  return result;
}

uint64_t sub_24E6B247C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6B24C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6B252C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E6B25AC()
{
  result = qword_27F217970;
  if (!qword_27F217970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217970);
  }

  return result;
}

uint64_t sub_24E6B2600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E6B2668()
{
  result = qword_27F2179A0;
  if (!qword_27F2179A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217998);
    sub_24E6B247C(&qword_27F2179A8, type metadata accessor for ChallengesHistoryData.GameHistory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2179A0);
  }

  return result;
}

unint64_t sub_24E6B271C()
{
  result = qword_27F2179B8;
  if (!qword_27F2179B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2179B8);
  }

  return result;
}

unint64_t sub_24E6B2770()
{
  result = qword_27F2179D0;
  if (!qword_27F2179D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217998);
    sub_24E6B247C(&qword_27F2179D8, type metadata accessor for ChallengesHistoryData.GameHistory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2179D0);
  }

  return result;
}

uint64_t sub_24E6B2824(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217980);
    sub_24E6B247C(a2, type metadata accessor for ChallengesHistoryData.FriendHistory);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E6B28C0()
{
  result = qword_27F2179F8;
  if (!qword_27F2179F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217998);
    sub_24E6B247C(&qword_27F217A00, type metadata accessor for ChallengesHistoryData.GameHistory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2179F8);
  }

  return result;
}

uint64_t sub_24E6B2974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24E6B29BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24E6B2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E6B2C88()
{
  result = qword_27F217A28;
  if (!qword_27F217A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A28);
  }

  return result;
}

unint64_t sub_24E6B2CE0()
{
  result = qword_27F217A30;
  if (!qword_27F217A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A30);
  }

  return result;
}

unint64_t sub_24E6B2D38()
{
  result = qword_27F217A38;
  if (!qword_27F217A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A38);
  }

  return result;
}

unint64_t sub_24E6B2D90()
{
  result = qword_27F217A40;
  if (!qword_27F217A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A40);
  }

  return result;
}

unint64_t sub_24E6B2DE8()
{
  result = qword_27F217A48;
  if (!qword_27F217A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A48);
  }

  return result;
}

unint64_t sub_24E6B2E40()
{
  result = qword_27F217A50;
  if (!qword_27F217A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A50);
  }

  return result;
}

unint64_t sub_24E6B2E98()
{
  result = qword_27F217A58;
  if (!qword_27F217A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A58);
  }

  return result;
}

unint64_t sub_24E6B2EF0()
{
  result = qword_27F217A60;
  if (!qword_27F217A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A60);
  }

  return result;
}

unint64_t sub_24E6B2F48()
{
  result = qword_27F217A68;
  if (!qword_27F217A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A68);
  }

  return result;
}

uint64_t sub_24E6B2F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xEE00746E756F4364;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F43656D6167 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43646E65697266 && a2 == 0xEB00000000746E75 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6948646E65697266 && a2 == 0xEF736569726F7473 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736948656D6167 && a2 == 0xED0000736569726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E6B318C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (v0[1] <= 1u && !v0[1])
  {

    if (((v1 | v2) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 1;
    return v4 & 1;
  }

  v5 = sub_24F92CE08();

  if (v1 & 1 | ((v5 & 1) == 0) | v2 & 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v3)
  {
    v6 = sub_24F92CE08();

    v4 = v6 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

unint64_t ArcadeLibraryOptionProvider.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  strcpy((inited + 32), "showPreviews");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D22598];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = v10;
  *(inited + 48) = v3;
  *(inited + 88) = 0x6974704F74726F73;
  *(inited + 96) = 0xEA00000000006E6FLL;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = 0xE400000000000000;
      v12 = 1701667182;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x79726F6765746163;
    }
  }

  else if (v4)
  {
    v11 = 0xEB00000000646574;
    v12 = 0x616470557473616CLL;
  }

  else
  {
    v11 = 0xEB00000000657461;
    v12 = 0x44657361656C6572;
  }

  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v14;
  *(inited + 104) = v12;
  *(inited + 112) = v11;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA45B80;
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA45BA0;
  *(inited + 240) = v9;
  *(inited + 248) = v10;
  *(inited + 216) = v6;
  *(inited + 256) = 0x65746C6946656761;
  *(inited + 264) = 0xEF6E6F6974704F72;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v15 = 0xEA00000000007375;
      v16 = 0x6C5065766C657774;
      goto LABEL_16;
    }

    v15 = 0xE800000000000000;
    v17 = 1701734766;
    goto LABEL_14;
  }

  if (v7)
  {
    v15 = 0xE800000000000000;
    v17 = 1920298854;
LABEL_14:
    v16 = v17 | 0x73756C5000000000;
    goto LABEL_16;
  }

  v15 = 0xE300000000000000;
  v16 = 7105633;
LABEL_16:
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v16;
  *(inited + 280) = v15;
  v18 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t ArcadeSortOption.displayName.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      if (qword_27F2115D0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39EC68;
    }

    else
    {
      if (qword_27F2115D8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39EC78;
    }
  }

  else if (*v0)
  {
    if (qword_27F2115C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39EC58;
  }

  else
  {
    if (qword_27F2115C0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39EC48;
  }

  v2 = *v1;

  return v2;
}

uint64_t ArcadeSortOption.id.getter()
{
  v1 = 0x44657361656C6572;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 0x79726F6765746163;
  }

  if (*v0)
  {
    v1 = 0x616470557473616CLL;
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

GameStoreKit::ArcadeSortOption_optional __swiftcall ArcadeSortOption.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_24E6B3808()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E6B38D4()
{
  sub_24F92B218();
}

uint64_t sub_24E6B398C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E6B3A60(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657461;
  v3 = 0x44657361656C6572;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (*v1 != 2)
  {
    v5 = 0x79726F6765746163;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x616470557473616CLL;
    v2 = 0xEB00000000646574;
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

uint64_t ArcadeAgeFilterOption.displayName.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      if (qword_27F211608 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39ECD8;
    }

    else
    {
      if (qword_27F211610 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39ECE8;
    }
  }

  else if (*v0)
  {
    if (qword_27F211600 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ECC8;
  }

  else
  {
    if (qword_27F2115F8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F39ECB8;
  }

  v2 = *v1;

  return v2;
}

uint64_t ArcadeAgeFilterOption.id.getter()
{
  v1 = 7105633;
  v2 = 0x73756C50656E696ELL;
  if (*v0 != 2)
  {
    v2 = 0x6C5065766C657774;
  }

  if (*v0)
  {
    v1 = 0x73756C5072756F66;
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

GameStoreKit::ArcadeAgeFilterOption_optional __swiftcall ArcadeAgeFilterOption.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_24E6B3DC8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E6B3E88()
{
  sub_24F92B218();
}

uint64_t sub_24E6B3F34()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24E6B3FFC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7105633;
  v4 = 0xE800000000000000;
  v5 = 0x73756C50656E696ELL;
  if (*v1 != 2)
  {
    v5 = 0x6C5065766C657774;
    v4 = 0xEA00000000007375;
  }

  if (*v1)
  {
    v3 = 0x73756C5072756F66;
    v2 = 0xE800000000000000;
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

uint64_t _s12GameStoreKit27ArcadeLibraryOptionProviderV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[4];
  v4 = a2[4];
  v5 = a2[3];
  v6 = a2[2];
  v7 = a1[3];
  v8 = a1[2];
  if (sub_24F0CAAB8(a1[1], a2[1]) & 1) == 0 || ((v6 ^ v8) & 1) != 0 || ((v5 ^ v7))
  {
    return 0;
  }

  return sub_24F0CAC00(v3, v4);
}

unint64_t sub_24E6B41E0()
{
  result = qword_27F217A70;
  if (!qword_27F217A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A70);
  }

  return result;
}

unint64_t sub_24E6B4268()
{
  result = qword_27F217A88;
  if (!qword_27F217A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217A88);
  }

  return result;
}

uint64_t sub_24E6B42EC(unint64_t *a1, uint64_t *a2)
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

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ArcadeLibraryOptionProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ArcadeLibraryOptionProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24E6B4424()
{
  result = qword_27F217AA0;
  if (!qword_27F217AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AA0);
  }

  return result;
}

unint64_t sub_24E6B4478()
{
  result = qword_27F217AA8;
  if (!qword_27F217AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AA8);
  }

  return result;
}

uint64_t GameDataIntent.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GameDataIntent.adamID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall GameDataIntent.init(bundleID:adamID:shouldUseCache:)(GameStoreKit::GameDataIntent *__return_ptr retstr, Swift::String bundleID, Swift::String_optional adamID, Swift::Bool_optional shouldUseCache)
{
  retstr->bundleID = bundleID;
  retstr->adamID = adamID;
  retstr->shouldUseCache = shouldUseCache;
}

uint64_t sub_24E6B4580()
{
  v1 = 0x44496D616461;
  if (*v0 != 1)
  {
    v1 = 0x7355646C756F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_24E6B45E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6B4D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6B460C(uint64_t a1)
{
  v2 = sub_24E6B4844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6B4648(uint64_t a1)
{
  v2 = sub_24E6B4844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B4844();
  sub_24F92D128();
  v14 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CCA8();
  v12 = 2;
  sub_24F92CCB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E6B4844()
{
  result = qword_27F217AB8;
  if (!qword_27F217AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AB8);
  }

  return result;
}

uint64_t GameDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6B4844();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_24F92CBC8();
  v18 = v12;
  v20 = 2;
  v13 = sub_24F92CBD8();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E6B4B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24E6B4BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E6B4C18()
{
  result = qword_27F217AC8;
  if (!qword_27F217AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AC8);
  }

  return result;
}

unint64_t sub_24E6B4C70()
{
  result = qword_27F217AD0;
  if (!qword_27F217AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AD0);
  }

  return result;
}

unint64_t sub_24E6B4CC8()
{
  result = qword_27F217AD8;
  if (!qword_27F217AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217AD8);
  }

  return result;
}

uint64_t sub_24E6B4D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7355646C756F6873 && a2 == 0xEE00656863614365)
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

uint64_t sub_24E6B4E5C(uint64_t a1)
{
  v2 = sub_24F924C48();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24F924518();
}

uint64_t TransientToolbarItem.content(bagContract:)@<X0>(uint64_t a1@<X8>)
{
  v173 = a1;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AE0);
  MEMORY[0x28223BE20](v162);
  v144 = (&v132 - v1);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AE8);
  MEMORY[0x28223BE20](v160);
  v161 = (&v132 - v2);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AF0);
  MEMORY[0x28223BE20](v172);
  v163 = &v132 - v3;
  v159 = type metadata accessor for ShareLinkView(0);
  MEMORY[0x28223BE20](v159);
  v142 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24F91F4A8();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v157 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217AF8);
  MEMORY[0x28223BE20](v154);
  v7 = &v132 - v6;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B00);
  MEMORY[0x28223BE20](v168);
  v158 = &v132 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v155);
  v138 = &v132 - v9;
  v10 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v132 - v14;
  v136 = sub_24F923E98();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for LargeOfferButton(0);
  MEMORY[0x28223BE20](v152);
  v18 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B08);
  v140 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v139 = &v132 - v19;
  v20 = type metadata accessor for OfferButtonInfo();
  MEMORY[0x28223BE20](v20 - 8);
  v156 = (&v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B10);
  MEMORY[0x28223BE20](v169);
  v171 = &v132 - v22;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B18);
  MEMORY[0x28223BE20](v164);
  v166 = &v132 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B20);
  MEMORY[0x28223BE20](v149);
  v150 = &v132 - v24;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B28);
  MEMORY[0x28223BE20](v165);
  v151 = &v132 - v25;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B30);
  MEMORY[0x28223BE20](v170);
  v167 = &v132 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v133 = *(v27 - 8);
  v28 = *(v133 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v132 - v31;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  MEMORY[0x28223BE20](v148);
  v34 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v134 = &v132 - v36;
  v147 = sub_24F9289E8();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v38);
  v40 = (&v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E6B7298(v174, v40, type metadata accessor for TransientToolbarItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v42 = *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8) + 48));
        v43 = v156;
        sub_24E6B7360(v40, v156, type metadata accessor for OfferButtonInfo);
        v45 = *v43;
        v44 = v43[1];
        *v18 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8);
        swift_storeEnumTagMultiPayload();
        v46 = v152;
        v47 = *(v152 + 24);
        v48 = *(v152 + 28);
        v49 = swift_allocObject();
        v49[2] = v45;
        v49[3] = v44;
        v174 = v42;
        v49[4] = v42;
        v50 = v18 + *(v46 + 20);
        *v50 = sub_24E6B7F28;
        *(v50 + 1) = v49;
        v50[16] = 0;
        *(v18 + v47) = 2;
        *(v18 + v48) = 1;
        v51 = v135;
        v52 = v136;
        (*(v135 + 104))(v16, *MEMORY[0x277CDF9E8], v136);
        v53 = sub_24E6B7198(&qword_27F217B58, type metadata accessor for LargeOfferButton);

        v54 = v139;
        sub_24F9263E8();
        (*(v51 + 8))(v16, v52);
        sub_24E6B7300(v18, type metadata accessor for LargeOfferButton);
        v55 = v140;
        v56 = v153;
        (*(v140 + 16))(v150, v54, v153);
        swift_storeEnumTagMultiPayload();
        sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
        *&v178 = v46;
        *(&v178 + 1) = v53;
        swift_getOpaqueTypeConformance2();
        v57 = v151;
        sub_24F924E28();
        sub_24E60169C(v57, v166, &qword_27F217B28);
        swift_storeEnumTagMultiPayload();
        sub_24E6B6FBC();
        sub_24E6B70DC();
        v58 = v167;
        sub_24F924E28();
        sub_24E601704(v57, &qword_27F217B28);
        sub_24E60169C(v58, v171, &qword_27F217B30);
        swift_storeEnumTagMultiPayload();
        sub_24E6B6F30();
        sub_24E6B71E0();
        sub_24F924E28();

        sub_24E601704(v58, &qword_27F217B30);
        (*(v55 + 8))(v54, v56);
        return sub_24E6B7300(v156, type metadata accessor for OfferButtonInfo);
      }

      else
      {
        v97 = v137;
        sub_24E6B7360(v40, v137, type metadata accessor for PlayerAvatar);
        sub_24E6B7298(v97, v12, type metadata accessor for PlayerAvatar);
        LOBYTE(v178) = 7;
        v98 = v138;
        sub_24F8319B8(v12, &v178, v138);
        sub_24F927618();
        sub_24F9238C8();
        v99 = (v98 + *(v155 + 36));
        v100 = v179;
        *v99 = v178;
        v99[1] = v100;
        v99[2] = v180;
        sub_24E60169C(v98, v7, &qword_27F2233D0);
        swift_storeEnumTagMultiPayload();
        sub_24E680290();
        sub_24E6B7198(&qword_27F217B68, type metadata accessor for ShareLinkView);
        v101 = v158;
        sub_24F924E28();
        sub_24E60169C(v101, v166, &qword_27F217B00);
        swift_storeEnumTagMultiPayload();
        sub_24E6B6FBC();
        sub_24E6B70DC();
        v102 = v167;
        sub_24F924E28();
        sub_24E601704(v101, &qword_27F217B00);
        sub_24E60169C(v102, v171, &qword_27F217B30);
        swift_storeEnumTagMultiPayload();
        sub_24E6B6F30();
        sub_24E6B71E0();
        sub_24F924E28();
        sub_24E601704(v102, &qword_27F217B30);
        sub_24E601704(v98, &qword_27F2233D0);
        return sub_24E6B7300(v97, type metadata accessor for PlayerAvatar);
      }
    }

    v81 = v146;
    v82 = v145;
    v83 = v147;
    (*(v146 + 32))(v145, v40, v147);
    (*(v81 + 16))(v32, v82, v83);
    (*(v81 + 56))(v32, 0, 1, v83);
    if (qword_27F2118C0 != -1)
    {
      swift_once();
    }

    v178 = xmmword_27F2520B0;
    v179 = unk_27F2520C0;
    v180 = xmmword_27F2520D0;
    v181 = *&byte_27F2520E0;
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v177 = 0;
    sub_24E63D388(&v178, &v175);
    sub_24F926F28();
    v84 = v176;
    v34[16] = v175;
    *(v34 + 3) = v84;
    v88 = sub_24E6B7DD0(*(&v181 + 1), MEMORY[0x277D84F90], type metadata accessor for PlayerAvatar);
    if (v87)
    {
      v111 = v87;
      v112 = v86;
      v113 = v85;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v114 = swift_dynamicCastClass();
      if (!v114)
      {
        swift_unknownObjectRelease();
        v114 = MEMORY[0x277D84F90];
      }

      v115 = *(v114 + 16);

      if (__OFSUB__(v111 >> 1, v112))
      {
        __break(1u);
      }

      else if (v115 == (v111 >> 1) - v112)
      {
        v90 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v90)
        {
LABEL_23:
          *(v34 + 4) = v90;
          v116 = v148;
          sub_24E60169C(v32, &v34[*(v148 + 44)], &qword_27F213FB0);
          v117 = &v34[v116[13]];
          v118 = v179;
          *v117 = v178;
          v117[1] = v118;
          v119 = v181;
          v117[2] = v180;
          v117[3] = v119;
          *&v34[v116[12]] = 0;
          *&v34[v116[14]] = 0x3FF0000000000000;
          sub_24E6009C8(v32, v29, &qword_27F213FB0);
          v120 = (*(v133 + 80) + 16) & ~*(v133 + 80);
          v121 = (v28 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
          v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
          v123 = swift_allocObject();
          sub_24E6009C8(v29, v123 + v120, &qword_27F213FB0);
          *(v123 + v121) = 0;
          v124 = (v123 + v122);
          v125 = v181;
          v124[2] = v180;
          v124[3] = v125;
          v126 = v179;
          *v124 = v178;
          v124[1] = v126;
          *(v123 + ((v122 + 71) & 0xFFFFFFFFFFFFFFF8)) = 0x3FF0000000000000;
          v127 = &v34[v116[15]];
          *v127 = sub_24E63DE54;
          v127[1] = v123;
          v128 = v134;
          sub_24E6009C8(v34, v134, &qword_27F214A50);
          sub_24E60169C(v128, v150, &qword_27F214A50);
          swift_storeEnumTagMultiPayload();
          sub_24E63D388(&v178, &v175);
          sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
          v129 = sub_24E6B7198(&qword_27F217B58, type metadata accessor for LargeOfferButton);
          v175 = v152;
          v176 = v129;
          swift_getOpaqueTypeConformance2();
          v130 = v151;
          sub_24F924E28();
          sub_24E60169C(v130, v166, &qword_27F217B28);
          swift_storeEnumTagMultiPayload();
          sub_24E6B6FBC();
          sub_24E6B70DC();
          v131 = v167;
          sub_24F924E28();
          sub_24E601704(v130, &qword_27F217B28);
          sub_24E60169C(v131, v171, &qword_27F217B30);
          swift_storeEnumTagMultiPayload();
          sub_24E6B6F30();
          sub_24E6B71E0();
          sub_24F924E28();
          sub_24E601704(v131, &qword_27F217B30);
          sub_24E601704(v128, &qword_27F214A50);
          return (*(v146 + 8))(v145, v147);
        }

        v90 = MEMORY[0x277D84F90];
LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      v87 = v111;
      v86 = v112;
      v85 = v113;
    }

    sub_24E6B9130(v88, v85, v86, v87, &unk_27F22E010, &unk_24F93B380, type metadata accessor for PlayerAvatar);
    v90 = v89;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v91 = v141;
    v92 = v157;
    v93 = v143;
    (*(v141 + 32))(v157, v40, v143);
    v94 = v142;
    (*(v91 + 16))(v142, v92, v93);
    sub_24E6B7298(v94, v7, type metadata accessor for ShareLinkView);
    swift_storeEnumTagMultiPayload();
    sub_24E680290();
    sub_24E6B7198(&qword_27F217B68, type metadata accessor for ShareLinkView);
    v95 = v158;
    sub_24F924E28();
    sub_24E60169C(v95, v166, &qword_27F217B00);
    swift_storeEnumTagMultiPayload();
    sub_24E6B6FBC();
    sub_24E6B70DC();
    v96 = v167;
    sub_24F924E28();
    sub_24E601704(v95, &qword_27F217B00);
    sub_24E60169C(v96, v171, &qword_27F217B30);
    swift_storeEnumTagMultiPayload();
    sub_24E6B6F30();
    sub_24E6B71E0();
    sub_24F924E28();
    sub_24E601704(v96, &qword_27F217B30);
    sub_24E6B7300(v94, type metadata accessor for ShareLinkView);
    return (*(v91 + 8))(v157, v93);
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v60 = v40[1];
      *&v178 = *v40;
      *(&v178 + 1) = v60;
      sub_24E600AEC();
      v61 = sub_24F925E18();
      v63 = v62;
      v65 = v64;
      sub_24F9258D8();
      v66 = sub_24F925C98();
      v68 = v67;
      v70 = v69;

      sub_24E600B40(v61, v63, v65 & 1);

      v71 = sub_24F925C88();
      v73 = v72;
      LOBYTE(v61) = v74;
      v76 = v75;
      sub_24E600B40(v66, v68, v70 & 1);

      v77 = v161;
      *v161 = v71;
      v77[1] = v73;
      *(v77 + 16) = v61 & 1;
      v77[3] = v76;
      swift_storeEnumTagMultiPayload();
      sub_24E5FD138(v71, v73, v61 & 1);
      sub_24E602068(&qword_27F217B40, &qword_27F217AE0);

      v78 = v163;
      sub_24F924E28();
      sub_24E60169C(v78, v171, &qword_27F217AF0);
      swift_storeEnumTagMultiPayload();
      sub_24E6B6F30();
      sub_24E6B71E0();
      sub_24F924E28();
      sub_24E600B40(v71, v73, v61 & 1);

      v79 = v78;
      v80 = &qword_27F217AF0;
    }

    else
    {
      v103 = *v40;
      v104 = v40[1];
      v105 = v40[2];
      v106 = v40[3];
      v107 = sub_24F924C88();
      v108 = v144;
      *v144 = v107;
      *(v108 + 8) = 0;
      *(v108 + 16) = 0;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217B38);
      sub_24E6B6AC0(v103, v104, v105, v106, v108 + *(v109 + 44));

      sub_24E60169C(v108, v161, &qword_27F217AE0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F217B40, &qword_27F217AE0);
      v110 = v163;
      sub_24F924E28();
      sub_24E60169C(v110, v171, &qword_27F217AF0);
      swift_storeEnumTagMultiPayload();
      sub_24E6B6F30();
      sub_24E6B71E0();
      sub_24F924E28();
      sub_24E601704(v110, &qword_27F217AF0);
      v79 = v108;
      v80 = &qword_27F217AE0;
    }

    return sub_24E601704(v79, v80);
  }
}

uint64_t sub_24E6B6AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v63 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v55 - v15;
  v65 = a1;
  v66 = a2;
  v55 = sub_24E600AEC();

  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  sub_24F925A08();
  v21 = sub_24F925C98();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;

  sub_24E600B40(v16, v18, v20 & 1);

  v65 = v21;
  v66 = v23;
  LOBYTE(a1) = a1 & 1;
  v67 = a1;
  v68 = v26;
  v27 = v64;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, a1);

  LODWORD(v23) = sub_24F9251C8();
  v28 = (v27 + *(v12 + 44));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v23;
  v65 = v56;
  v66 = v57;

  v32 = sub_24F925E18();
  v34 = v33;
  LOBYTE(v28) = v35;
  sub_24F925A18();
  v36 = sub_24F925C98();
  v38 = v37;
  LOBYTE(v21) = v39;
  v41 = v40;

  sub_24E600B40(v32, v34, v28 & 1);

  v65 = v36;
  v66 = v38;
  v67 = v21 & 1;
  v68 = v41;
  v42 = v59;
  sub_24F9268B8();
  sub_24E600B40(v36, v38, v21 & 1);

  v43 = v27;
  v44 = v58;
  sub_24E60169C(v43, v58, &qword_27F2146B0);
  v46 = v60;
  v45 = v61;
  v47 = *(v61 + 16);
  v48 = v42;
  v49 = v42;
  v50 = v62;
  v47(v60, v48, v62);
  v51 = v63;
  sub_24E60169C(v44, v63, &qword_27F2146B0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C00);
  v47((v51 + *(v52 + 48)), v46, v50);
  v53 = *(v45 + 8);
  v53(v49, v50);
  sub_24E601704(v64, &qword_27F2146B0);
  v53(v46, v50);
  return sub_24E601704(v44, &qword_27F2146B0);
}

unint64_t sub_24E6B6F30()
{
  result = qword_27F217B48;
  if (!qword_27F217B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217B30);
    sub_24E6B6FBC();
    sub_24E6B70DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217B48);
  }

  return result;
}

unint64_t sub_24E6B6FBC()
{
  result = qword_27F217B50;
  if (!qword_27F217B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217B28);
    sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
    type metadata accessor for LargeOfferButton(255);
    sub_24E6B7198(&qword_27F217B58, type metadata accessor for LargeOfferButton);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217B50);
  }

  return result;
}

unint64_t sub_24E6B70DC()
{
  result = qword_27F217B60;
  if (!qword_27F217B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217B00);
    sub_24E680290();
    sub_24E6B7198(&qword_27F217B68, type metadata accessor for ShareLinkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217B60);
  }

  return result;
}

uint64_t sub_24E6B7198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6B71E0()
{
  result = qword_27F217B70;
  if (!qword_27F217B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217AF0);
    sub_24E602068(&qword_27F217B40, &qword_27F217AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217B70);
  }

  return result;
}

uint64_t sub_24E6B7298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6B7300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6B7360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6B73F0()
{
  v1 = type metadata accessor for TransientToolbarItem(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E6B7298(v0, v3, type metadata accessor for TransientToolbarItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v6 = sub_24F91F4A8();
      (*(*(v6 - 8) + 8))(v3, v6);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8);

      v5 = type metadata accessor for OfferButtonInfo;
    }

    else
    {
      v5 = type metadata accessor for PlayerAvatar;
    }

    goto LABEL_9;
  }

  v5 = type metadata accessor for TransientToolbarItem;
LABEL_9:
  sub_24E6B7300(v3, v5);
  return 1;
}

uint64_t sub_24E6B7558@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_24F929888();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9248C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255010);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v12 = &v17 - v11;
  v13 = sub_24F926DF8();
  sub_24F9248B8();
  *&v24[0] = v13;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v4 + 8))(v6, v3);

  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  sub_24F9297C8();
  sub_24E601704(v23, &qword_27F2129B0);
  sub_24E601704(v24, &qword_27F2129B0);
  *&v24[0] = MEMORY[0x277CE1088];
  *(&v24[0] + 1) = MEMORY[0x277CE1078];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F925EE8();
  (*(v19 + 8))(v2, v21);
  (*(v8 + 8))(v10, v7);
  if (qword_27F211510 != -1)
  {
    swift_once();
  }

  v24[0] = xmmword_27F39EAE8;
  *&v23[0] = v7;
  *(&v23[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v15 = v20;
  sub_24F926538();
  return (*(v18 + 8))(v12, v15);
}

uint64_t sub_24E6B79A0()
{
  v1 = v0;
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-v8 - 8];
  (*(v3 + 16))(v5, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BC8);
  sub_24E6B8594();
  sub_24F9277C8();
  v13 = MEMORY[0x277CE1120];
  v14 = sub_24E63E454();
  sub_24E602068(&qword_27F217BE0, &qword_27F217BC0);
  sub_24E6B86BC();
  sub_24F926178();
  (*(v7 + 8))(v9, v6);
  return sub_24E6B8710(v12);
}

uint64_t sub_24E6B7BF4@<X0>(void *a1@<X8>)
{
  result = sub_24F9244E8();
  *a1 = v3;
  return result;
}

uint64_t sub_24E6B7CB8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    return a2;
  }

  return result;
}

uint64_t sub_24E6B7D68(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6B7DD0(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_24E6B7E68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v2 = sub_24F92C738();
  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_24F92C738();
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v2)
      {
        return v2;
      }
    }

LABEL_7:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6B7EE0()
{

  return swift_deallocObject();
}

uint64_t sub_24E6B7F34@<X0>(void *a1@<X8>)
{
  result = sub_24F9244E8();
  *a1 = v3;
  return result;
}

uint64_t sub_24E6B7F88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v3 = sub_24F92C738();
  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_24F92C738();
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v3)
      {
        if (v3)
        {
          v4 = sub_24EAEACA0(v3, 0);

          v5 = sub_24EAE78A8(&v6, v4 + 32, v3, a1);

          if (v5 == v3)
          {
            return v4;
          }

          __break(1u);
        }

        return MEMORY[0x277D84F90];
      }
    }

LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6B808C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void sub_24E6B81D4()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24E6B82C4();
    if (v1 <= 0x3F)
    {
      sub_24E6B8338(319, &qword_27F217B90, type metadata accessor for PlayerAvatar);
      if (v2 <= 0x3F)
      {
        sub_24E6B8338(319, &qword_27F214FB0, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_24E6B8384();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E6B82C4()
{
  if (!qword_27F217B88)
  {
    type metadata accessor for OfferButtonInfo();
    sub_24F928FD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F217B88);
    }
  }
}

void sub_24E6B8338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E6B8384()
{
  if (!qword_27F217B98)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F217B98);
    }
  }
}

unint64_t sub_24E6B83E8()
{
  result = qword_27F217BA0;
  if (!qword_27F217BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BA8);
    sub_24E6B6F30();
    sub_24E6B71E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217BA0);
  }

  return result;
}

uint64_t sub_24E6B8488(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E6B8508(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24E6B8594()
{
  result = qword_27F217BD0;
  if (!qword_27F217BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E6B7198(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217BD0);
  }

  return result;
}

unint64_t sub_24E6B86BC()
{
  result = qword_27F217BE8;
  if (!qword_27F217BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217BE8);
  }

  return result;
}

void sub_24E6B87F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_24E6B8918(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C970);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_24E6B8A14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 120);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_24E6B8BBC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24EAEACA0(v2, 0);

    MEMORY[0x253052240](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_24F92C738();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_24E6B8C70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_24E6B8D5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_24E6B8E34(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_24F92C738();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24EAEACA0(v2, 0);

    v1 = sub_24EAE8F58(&v5, (v3 + 32), v2, v1);
    sub_24E6586B4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_24E6B8F08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(a7);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_24E6B9130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_24E6B92D4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24F92B258();

    return sub_24F92B3D8();
  }

  return result;
}

uint64_t sub_24E6B9370()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BC0);
  sub_24E602068(&qword_27F217BE0, &qword_27F217BC0);
  sub_24E6B86BC();
  return swift_getOpaqueTypeConformance2();
}

void sub_24E6B941C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v90 = a1;
  v2 = *(a1 + 24);
  v88 = *(a1 + 32);
  v89 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v125 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_24F927108();
  v104 = sub_24F924038();
  v120 = AssociatedTypeWitness;
  v121 = AssociatedTypeWitness;
  v122 = AssociatedTypeWitness;
  v123 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  v105 = sub_24F924038();
  v106 = MEMORY[0x277CE1180];
  v107 = sub_24F924038();
  swift_getTupleTypeMetadata();
  v84 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_24F927018();
  v87 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = v54 - v5;
  v71 = v4;
  v6 = sub_24F924038();
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v82 = v54 - v7;
  type metadata accessor for CardHeightViewModifier(255);
  v73 = v6;
  v8 = sub_24F924038();
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  v77 = sub_24F927808();
  v78 = swift_getWitnessTable();
  sub_24F924E08();
  v75 = v8;
  v10 = sub_24F924038();
  v80 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v76 = v54 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v12 = sub_24F924038();
  v70 = swift_getWitnessTable();
  v118 = v70;
  v119 = MEMORY[0x277CDFC60];
  v13 = swift_getWitnessTable();
  v72 = v13;
  v14 = sub_24E6BC170();
  v116 = v13;
  v117 = v14;
  v15 = swift_getWitnessTable();
  v74 = v15;
  v16 = swift_getWitnessTable();
  v114 = v15;
  v115 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24E6A4C1C();
  v19 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v112 = v17;
  v113 = v19;
  v20 = v17;
  v21 = swift_getWitnessTable();
  v22 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v110 = v21;
  v111 = v22;
  v23 = swift_getWitnessTable();
  v104 = v10;
  v105 = &type metadata for GameOverlayViewPredicate;
  v59 = v20;
  v60 = v10;
  v106 = v12;
  v107 = v20;
  v24 = v20;
  v108 = v18;
  v109 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  v67 = OpaqueTypeMetadata2;
  v68 = v26;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v66 = v54 - v27;
  v28 = sub_24F924038();
  v69 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v62 = v54 - v29;
  v104 = v10;
  v105 = &type metadata for GameOverlayViewPredicate;
  v106 = v12;
  v107 = v24;
  v108 = v18;
  v109 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = OpaqueTypeConformance2;
  v31 = sub_24E6BC1C8();
  v102 = OpaqueTypeConformance2;
  v103 = v31;
  v54[1] = v28;
  v61 = swift_getWitnessTable();
  v104 = v28;
  v105 = v61;
  v63 = MEMORY[0x277CDEF60];
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  v64 = v32;
  v65 = v33;
  v34 = MEMORY[0x28223BE20](v32);
  v56 = v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v57 = v54 - v36;
  v37 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v91;
  v41 = *(v90 + 48);
  v55 = *(v90 + 44);
  v42 = v90;
  v43 = v88;
  v44 = v89;
  (*(v88 + 56))(v91 + v55, 0, v91 + v41, v89, v88);
  v45 = *(v42 + 16);
  v97 = v45;
  v98 = v44;
  v99 = v43;
  v100 = v40;
  v101 = v39;
  sub_24F9249A8();
  v46 = v81;
  sub_24F927008();
  sub_24F927618();
  v47 = v71;
  v48 = v82;
  sub_24F926948();
  (*(v87 + 8))(v46, v47);
  v49 = v79;
  v50 = v73;
  sub_24F4E8DBC(v39, v73, v72, v79);
  (*(v85 + 8))(v48, v50);
  v93 = v45;
  v94 = v44;
  v95 = v43;
  v96 = v40;
  sub_24F927618();
  v51 = v75;
  v52 = v76;
  sub_24F926088();
  (*(v86 + 8))(v49, v51);
  v53 = v60;
  sub_24E739274();
  (*(v80 + 8))(v52, v53);
  sub_24E739404();
}

uint64_t sub_24E6B9E70()
{
  (*(v0[15] + 8))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = v0[3];
  v9 = v4 + v0[2];
  v10 = v0[1];
  v11 = v0[8];
  sub_24E739418(v9, v10, v5, v11, AssociatedConformanceWitness);
  (*(v0[16] + 8))(v6, v10);
  v0[55] = v10;
  v0[56] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v0[4];
  v14 = v0[11];
  sub_24E7896B8(v8, v14, OpaqueTypeConformance2);
  v15 = *(v0[12] + 8);
  v15(v8, v14);
  sub_24E7896B8(v13, v14, OpaqueTypeConformance2);
  v15(v13, v14);
  return sub_24E6BC238(v3);
}

uint64_t sub_24E6B9F94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a3;
  v84 = a6;
  v85 = a2;
  v98 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v79 = &v65 - v10;
  v11 = sub_24F924038();
  v12 = *(v11 - 8);
  v81 = v11;
  v82 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v65 - v15;
  v124 = AssociatedTypeWitness;
  v125 = AssociatedTypeWitness;
  v126 = AssociatedTypeWitness;
  v127 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  v74 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v71 = sub_24F927108();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v65 - v16;
  v72 = sub_24F924038();
  v76 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v65 - v17;
  v92 = sub_24F924038();
  v94 = *(v92 - 8);
  v18 = MEMORY[0x28223BE20](v92);
  v96 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v65 - v20;
  v78 = AssociatedTypeWitness;
  sub_24F924038();
  v90 = a5;
  v21 = a4;
  v86 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = AssociatedConformanceWitness;
  v123 = MEMORY[0x277CDF678];
  v65 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v22 = sub_24F927108();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v89 = sub_24F924038();
  v91 = *(v89 - 8);
  v26 = MEMORY[0x28223BE20](v89);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v97 = &v65 - v29;
  v103 = a3;
  v104 = v21;
  v105 = a5;
  v106 = v98;
  sub_24F924C88();
  sub_24F9270F8();
  v85 += *(type metadata accessor for CardLayoutMetrics(0) + 56);
  sub_24F927618();
  v64 = swift_getWitnessTable();
  sub_24F926948();
  (*(v23 + 8))(v25, v22);
  v120 = v64;
  v121 = MEMORY[0x277CDFC60];
  v30 = v89;
  v66 = swift_getWitnessTable();
  v88 = v28;
  sub_24E7896B8(v28, v30, v66);
  v31 = *(v91 + 8);
  v67 = v91 + 8;
  v68 = v31;
  v31(v28, v30);
  sub_24F924C98();
  v99 = v87;
  v100 = v86;
  v101 = v90;
  v102 = v98;
  v32 = v70;
  sub_24F9270F8();
  sub_24F925818();
  v33 = v71;
  v34 = swift_getWitnessTable();
  v35 = v69;
  sub_24F926A48();
  (*(v75 + 8))(v32, v33);
  sub_24F925828();
  v36 = MEMORY[0x277CDF918];
  v118 = v34;
  v119 = MEMORY[0x277CDF918];
  v37 = v72;
  v38 = swift_getWitnessTable();
  v39 = v96;
  sub_24F926A48();
  v76[1](v35, v37);
  v116 = v38;
  v117 = v36;
  v40 = v36;
  v41 = v92;
  v74 = swift_getWitnessTable();
  sub_24E7896B8(v39, v41, v74);
  v42 = *(v94 + 8);
  v75 = v94 + 8;
  v76 = v42;
  (v42)(v39, v41);
  v43 = v86;
  v44 = v90;
  v45 = type metadata accessor for CardSmallView();
  v46 = v79;
  (*(v44 + 72))(13, &v98[*(v45 + 44)], 0, &v98[*(v45 + 48)], v43, v44);
  sub_24F925858();
  v47 = v95;
  v49 = AssociatedConformanceWitness;
  v48 = v78;
  sub_24F926A48();
  (*(v83 + 8))(v46, v48);
  v114 = v49;
  v115 = v40;
  v50 = v81;
  v90 = swift_getWitnessTable();
  v51 = v80;
  v52 = v47;
  sub_24E7896B8(v47, v50, v90);
  v53 = v82;
  v98 = *(v82 + 8);
  (v98)(v47, v50);
  v54 = v88;
  v55 = v89;
  (*(v91 + 16))(v88, v97, v89);
  v124 = v54;
  v56 = v93;
  v57 = v96;
  v58 = v92;
  (*(v94 + 16))(v96, v93, v92);
  v112 = 0x4024000000000000;
  v113 = 0;
  v125 = v57;
  v126 = &v112;
  (*(v53 + 16))(v52, v51, v50);
  v127 = v52;
  v111[0] = v55;
  v111[1] = v58;
  v59 = v58;
  v111[2] = MEMORY[0x277CE1180];
  v111[3] = v50;
  v107 = v66;
  v108 = v74;
  v109 = MEMORY[0x277CE1170];
  v110 = v90;
  sub_24F57BA64(&v124, 4uLL, v111);
  v60 = v98;
  (v98)(v51, v50);
  v61 = v76;
  (v76)(v56, v58);
  v62 = v68;
  v68(v97, v55);
  v60(v95, v50);
  (v61)(v96, v59);
  return v62(v88, v55);
}

uint64_t sub_24E6BA9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v22 - v8;
  v10 = sub_24F924038();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = type metadata accessor for CardSmallView();
  (*(a3 + 72))(3, a1 + *(v17 + 44), 0, a1 + *(v17 + 48), a2, a3);
  sub_24F927618();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926938();
  (*(v22[0] + 8))(v9, AssociatedTypeWitness);
  v22[2] = AssociatedConformanceWitness;
  v22[3] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v14, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_24E7896B8(v16, v10, WitnessTable);
  return (v20)(v16, v10);
}

uint64_t sub_24E6BACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v54 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v46 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v46 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v46 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v52 = &v46 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v46 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v51 = &v46 - v23;
  v24 = type metadata accessor for CardSmallView();
  v25 = *(v24 + 44);
  v26 = *(v24 + 48);
  v27 = *(a3 + 72);
  v57 = a3 + 72;
  v46 = v26;
  v27(0, a1 + v25, 0, a1 + v26, a2, a3);
  v56 = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v22, AssociatedTypeWitness, AssociatedConformanceWitness);
  v28 = *(v59 + 8);
  v50 = v22;
  v28(v22, AssociatedTypeWitness);
  v48 = v25;
  v29 = a1 + v26;
  v30 = v58;
  v49 = a2;
  v47 = a3;
  v27(4, a1 + v25, 0, v29, a2, a3);
  v31 = AssociatedConformanceWitness;
  sub_24E7896B8(v30, AssociatedTypeWitness, AssociatedConformanceWitness);
  v28(v30, AssociatedTypeWitness);
  v32 = a1 + v25;
  v33 = v46;
  v34 = v52;
  v56(7, v32, 0, a1 + v46, a2, a3);
  v35 = v31;
  sub_24E7896B8(v34, AssociatedTypeWitness, v31);
  v36 = v34;
  v28(v34, AssociatedTypeWitness);
  v37 = v60;
  v56(8, a1 + v48, 0, a1 + v33, v49, v47);
  sub_24E7896B8(v37, AssociatedTypeWitness, v35);
  v28(v37, AssociatedTypeWitness);
  v38 = *(v59 + 16);
  v39 = v51;
  v38(v37, v51, AssociatedTypeWitness);
  v68[0] = v37;
  v40 = v61;
  v41 = v50;
  v38(v61, v50, AssociatedTypeWitness);
  v68[1] = v40;
  v42 = v62;
  v43 = v58;
  v38(v62, v58, AssociatedTypeWitness);
  v68[2] = v42;
  v44 = v53;
  v38(v53, v36, AssociatedTypeWitness);
  v68[3] = v44;
  v67[0] = AssociatedTypeWitness;
  v67[1] = AssociatedTypeWitness;
  v67[2] = AssociatedTypeWitness;
  v67[3] = AssociatedTypeWitness;
  v63 = AssociatedConformanceWitness;
  v64 = AssociatedConformanceWitness;
  v65 = AssociatedConformanceWitness;
  v66 = AssociatedConformanceWitness;
  sub_24F57BA64(v68, 4uLL, v67);
  v28(v36, AssociatedTypeWitness);
  v28(v43, AssociatedTypeWitness);
  v28(v41, AssociatedTypeWitness);
  v28(v39, AssociatedTypeWitness);
  v28(v44, AssociatedTypeWitness);
  v28(v62, AssociatedTypeWitness);
  v28(v61, AssociatedTypeWitness);
  return (v28)(v60, AssociatedTypeWitness);
}

uint64_t sub_24E6BB208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v40 = a2;
  v48 = a5;
  v49 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v11);
  v12 = sub_24F927598();
  v44 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v38 = (&v36 - v16);
  v17 = sub_24E6A4C1C();
  sub_24F924B68();
  v50 = a2;
  v18 = v43;
  v51 = v43;
  v52 = a4;
  v53 = v49;
  v57 = &type metadata for GameOverlayViewPredicate;
  v58 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F927578();
  v56[2] = OpaqueTypeConformance2;
  v56[3] = AssociatedConformanceWitness;
  v21 = AssociatedConformanceWitness;
  v56[4] = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  v36 = v15;
  v37 = v12;
  sub_24E7896B8(v15, v12, WitnessTable);
  v22 = v44;
  v41 = *(v44 + 8);
  v42 = v44 + 8;
  v41(v15, v12);
  v23 = type metadata accessor for CardSmallView();
  v24 = v45;
  (*(a4 + 72))(2, v49 + *(v23 + 44), 0, v49 + *(v23 + 48), v18, a4);
  v25 = v46;
  v26 = AssociatedTypeWitness;
  v27 = v21;
  sub_24E7896B8(v24, AssociatedTypeWitness, v21);
  v28 = v47;
  v29 = *(v47 + 8);
  v29(v24, AssociatedTypeWitness);
  v30 = *(v22 + 16);
  v31 = v36;
  v32 = v38;
  v33 = v37;
  v30(v36, v38, v37);
  v57 = v31;
  (*(v28 + 16))(v24, v25, v26);
  v58 = v24;
  v56[0] = v33;
  v56[1] = v26;
  v54 = WitnessTable;
  v55 = v27;
  sub_24F57BA64(&v57, 2uLL, v56);
  v29(v25, v26);
  v34 = v41;
  v41(v32, v33);
  v29(v24, v26);
  return v34(v31, v33);
}

uint64_t sub_24E6BB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardSmallView();
  (*(a4 + 72))(12, a1 + *(v14 + 44), 0, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v11, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24E6BB8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for CardSmallView();
  (*(*(a4 - 8) + 32))(a6 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a3, v12);
}

uint64_t sub_24E6BB9E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_24F923E98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24E6BBA84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v32 = *(a3 + 16);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_24E6BBD90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 24);
  v7 = *(v38 - 8);
  v36 = *(a4 + 16);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_24F923E98() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

unint64_t sub_24E6BC170()
{
  result = qword_27F217CC0;
  if (!qword_27F217CC0)
  {
    type metadata accessor for CardHeightViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217CC0);
  }

  return result;
}

unint64_t sub_24E6BC1C8()
{
  result = qword_27F217CC8;
  if (!qword_27F217CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217CC8);
  }

  return result;
}

uint64_t sub_24E6BC238(uint64_t a1)
{
  v2 = type metadata accessor for CardLayoutMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6BC2B8()
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  sub_24F924038();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6BC170();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E6BC1C8();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E6BC798(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
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
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E6BC8D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
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
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for InviteChallengeViaMessagesAction()
{
  result = qword_27F217CD0;
  if (!qword_27F217CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6BCA40()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24E6BCB54();
      if (v2 <= 0x3F)
      {
        sub_24F928AD8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E6BCB04()
{
  if (!qword_27F254DE0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F254DE0);
    }
  }
}

void sub_24E6BCB54()
{
  if (!qword_27F217CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F217CE0);
    }
  }
}

uint64_t sub_24E6BCBB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217CF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6BD628();
  sub_24F92D128();
  v15 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for InviteChallengeViaMessagesAction();
    v14 = 1;
    type metadata accessor for Player(0);
    sub_24E6BD740(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v13 = 2;
    sub_24F92CCA8();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    sub_24F92CCF8();
    v11[14] = 4;
    sub_24F928AD8();
    sub_24E6BD740(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E6BCE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24F928AD8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217CE8);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = type metadata accessor for InviteChallengeViaMessagesAction();
  MEMORY[0x28223BE20](v10);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6BD628();
  v33 = v9;
  v13 = v34;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = a1;
  v40 = 0;
  v14 = v31;
  v15 = v32;
  v16 = v12;
  *v12 = sub_24F92CC28();
  v12[1] = v17;
  v26[2] = v17;
  v39 = 1;
  sub_24E6BD740(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v6, v12 + v10[5]);
  v38 = 2;
  v26[1] = 0;
  v18 = sub_24F92CBC8();
  v19 = v34;
  v20 = v16;
  v21 = (v16 + v10[6]);
  *v21 = v18;
  v21[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v37 = 3;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC18();
  *(v16 + v10[7]) = v35;
  v36 = 4;
  sub_24E6BD740(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v23 = v29;
  v24 = v30;
  sub_24F92CC68();
  (*(v14 + 8))(v33, v15);
  (*(v27 + 32))(v20 + v10[8], v24, v23);
  sub_24E6BD67C(v20, v28);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24E6BD6E0(v20, type metadata accessor for InviteChallengeViaMessagesAction);
}

uint64_t sub_24E6BD430()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x656D614E656D6167;
  v4 = 0x6E65697069636572;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72657469766E69;
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

uint64_t sub_24E6BD4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6BD8A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6BD50C(uint64_t a1)
{
  v2 = sub_24E6BD628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6BD548(uint64_t a1)
{
  v2 = sub_24E6BD628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6BD584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24E6BD628()
{
  result = qword_27F217CF0;
  if (!qword_27F217CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217CF0);
  }

  return result;
}

uint64_t sub_24E6BD67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteChallengeViaMessagesAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6BD6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6BD740(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6BD79C()
{
  result = qword_27F217D00;
  if (!qword_27F217D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217D00);
  }

  return result;
}

unint64_t sub_24E6BD7F4()
{
  result = qword_27F217D08;
  if (!qword_27F217D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217D08);
  }

  return result;
}

unint64_t sub_24E6BD84C()
{
  result = qword_27F217D10;
  if (!qword_27F217D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217D10);
  }

  return result;
}

uint64_t sub_24E6BD8A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E6BDA64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24E6BDAAC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_24E6BDB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AchievementBadgeModel();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 32);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24E6BDC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AchievementBadgeModel();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AchievementBadge()
{
  result = qword_27F217D90;
  if (!qword_27F217D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6BDDB4()
{
  sub_24E6BDE40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AchievementBadgeModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E6BDE40()
{
  if (!qword_27F216A98)
  {
    sub_24F924218();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F216A98);
    }
  }
}

double sub_24E6BDEB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  v1 = sub_24F926D08();

  *(v0 + 32) = v1;
  sub_24F926C88();
  v2 = sub_24F926D08();

  *(v0 + 40) = v2;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v0);
  sub_24F923BD8();
  result = *&v4;
  xmmword_27F217D18 = v4;
  unk_27F217D28 = v5;
  qword_27F217D38 = v6;
  return result;
}

double sub_24E6BDFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v1 = sub_24F926D08();

  *(v0 + 32) = v1;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  *(v0 + 40) = v2;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v0);
  sub_24F923BD8();
  result = *&v4;
  xmmword_27F217D40 = v4;
  *algn_27F217D50 = v5;
  qword_27F217D60 = v6;
  return result;
}

double sub_24E6BE0BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v1 = sub_24F926D08();

  *(v0 + 32) = v1;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  *(v0 + 40) = v2;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v0);
  sub_24F923BD8();
  result = *&v4;
  xmmword_27F217D68 = v4;
  unk_27F217D78 = v5;
  qword_27F217D88 = v6;
  return result;
}

uint64_t sub_24E6BE1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DA8);
  v161 = *(v3 - 8);
  v162 = v3;
  MEMORY[0x28223BE20](v3);
  v148 = (&v139 - v4);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DB0);
  v5 = MEMORY[0x28223BE20](v145);
  v147 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v146 = &v139 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DB8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v164 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v163 = &v139 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0);
  MEMORY[0x28223BE20](v141);
  v142 = (&v139 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC8);
  v157 = *(v13 - 8);
  v158 = v13;
  MEMORY[0x28223BE20](v13);
  v140 = &v139 - v14;
  v155 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v155);
  v156 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v160 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v171 = &v139 - v19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DD8);
  MEMORY[0x28223BE20](v168);
  v167 = &v139 - v20;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DE0);
  v21 = MEMORY[0x28223BE20](v154);
  v159 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v174 = (&v139 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DE8);
  MEMORY[0x28223BE20](v24);
  v26 = &v139 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DF0);
  v28 = MEMORY[0x28223BE20](v27);
  v170 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v139 - v31;
  MEMORY[0x28223BE20](v30);
  v173 = &v139 - v33;
  sub_24E6BF2D4(a1, v26);
  v152 = type metadata accessor for AchievementBadge();
  v34 = *(v152 + 24);
  *&v169 = a1;
  *&v172 = a1 + v34;
  v35 = *(a1 + v34);
  sub_24F927618();
  v153 = v35;
  sub_24F9238C8();
  v36 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DF8) + 36)];
  v37 = v179;
  *v36 = v178;
  *(v36 + 1) = v37;
  *(v36 + 2) = v180;
  if (qword_27F20FDA0 != -1)
  {
    swift_once();
  }

  v38 = xmmword_27F217D18;

  v166 = *(&xmmword_27F217D18 + 8);
  v151 = unk_27F217D30;
  v39 = sub_24F925808();
  v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E00) + 36)];
  *v40 = v38;
  *(v40 + 24) = v151;
  *(v40 + 8) = v166;
  v40[40] = v39;
  *&v26[*(v24 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v42 = sub_24F925818();
  *(inited + 32) = v42;
  v43 = sub_24F925828();
  *(inited + 33) = v43;
  v44 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v42)
  {
    v44 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v43)
  {
    v44 = sub_24F925848();
  }

  sub_24F923318();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_24E6009C8(v26, v32, &qword_27F217DE8);
  v53 = &v32[*(v27 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_24E6009C8(v32, v173, &qword_27F217DF0);
  if (qword_27F20FDA8 != -1)
  {
    swift_once();
  }

  v54 = xmmword_27F217D40;
  v55 = *(v168 + 36);
  v56 = *MEMORY[0x277CE13B8];
  v57 = sub_24F927748();
  v58 = *(v57 - 8);
  v59 = *(v58 + 104);
  v149 = *&algn_27F217D50[8];
  v150 = *(&xmmword_27F217D40 + 8);
  v60 = v167;
  *&v151 = v59;
  *&v166 = v58 + 104;
  v59(&v167[v55], v56, v57);
  *v60 = v54;
  v61 = v150;
  *(v60 + 24) = v149;
  *(v60 + 8) = v61;

  sub_24F923658();
  v62 = v181;
  v63 = v183;
  v64 = v184;
  v65 = v185;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E10);
  v67 = v174;
  sub_24E60169C(v60, v174 + *(v66 + 52), &qword_27F217DD8);
  v68 = v182;
  *v67 = v62;
  v67[1] = v68;
  v67[2] = v63;
  v67[3] = v64;
  v67[4] = v65;
  *(v67 + *(v66 + 56)) = 256;
  v69 = sub_24F927618();
  v71 = v70;
  sub_24E601704(v60, &qword_27F217DD8);
  v72 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E18) + 36));
  *v72 = v69;
  v72[1] = v71;
  v73 = sub_24F926C88();
  v74 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E20) + 36);
  *v74 = v73;
  *(v74 + 8) = xmmword_24F9475C0;
  *(v74 + 3) = 0x4000000000000000;
  sub_24F927618();
  sub_24F9238C8();
  v75 = (v67 + *(v154 + 36));
  v76 = v187;
  *v75 = v186;
  v75[1] = v76;
  v75[2] = v188;
  v77 = v169 + *(v152 + 20);
  v78 = type metadata accessor for AchievementBadgeModel();
  v79 = v156;
  sub_24E6C059C(v77 + *(v78 + 20), v156);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = v56;
  v143 = v57;
  if (EnumCaseMultiPayload == 1)
  {
    v81 = *v79;
    sub_24F9278A8();
    v83 = v82;
    v85 = v84;
    v86 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v87 = v142;
    v88 = v57;
    v89 = v151;
    (v151)(v142 + *(v141 + 36), v56, v88);
    *v87 = v86;
    sub_24F923658();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E48);
    v91 = v140;
    sub_24E60169C(v87, &v140[*(v90 + 52)], &qword_27F217DC0);
    *v91 = 0x4012D97C7F3321D2;
    *(v91 + 8) = v83;
    *(v91 + 16) = v85;
    *(v91 + 24) = 0;
    *(v91 + 32) = v81 / 100.0;
    v92 = v192;
    *(v91 + 56) = v193;
    *(v91 + 72) = v194;
    *(v91 + 40) = v92;
    *(v91 + *(v90 + 56)) = 256;
    v93 = sub_24F927618();
    v95 = v94;
    sub_24E601704(v87, &qword_27F217DC0);
    v96 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E50) + 36));
    *v96 = v93;
    v96[1] = v95;
    sub_24F927618();
    sub_24F9238C8();
    v97 = v158;
    v98 = (v91 + *(v158 + 36));
    v99 = v190;
    *v98 = v189;
    v98[1] = v99;
    v98[2] = v191;
    v100 = v171;
    sub_24E6009C8(v91, v171, &qword_27F217DC8);
    (*(v157 + 56))(v100, 0, 1, v97);
    v101 = v89;
  }

  else
  {
    sub_24E6C0600(v79);
    (*(v157 + 56))(v171, 1, 1, v158);
    v101 = v151;
  }

  if (*(v77 + *(v78 + 28) + 8))
  {
    *&v166 = sub_24F92B1A8();
    v103 = v102;
    v104 = v172;
    v105 = v35 * 0.5 + *(v172 + 40);
    v106 = sub_24F9258E8();
    v107 = *(v104 + 24);
    v108 = *(v104 + 56) + sub_24E6C03A8() / (v107 * 3.14159265) * 0.5;
    sub_24F9278A8();
    v110 = v109;
    v112 = v111;
    if (qword_27F20FDB0 != -1)
    {
      swift_once();
    }

    v113 = xmmword_27F217D68;
    v114 = v167;
    v115 = *(v168 + 36);
    v172 = *(&xmmword_27F217D68 + 8);
    v169 = unk_27F217D80;
    v101(&v167[v115], v144, v143);
    *v114 = v113;
    *(v114 + 24) = v169;
    *(v114 + 8) = v172;

    sub_24F923658();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E30);
    v117 = v146;
    sub_24E60169C(v114, &v146[*(v116 + 52)], &qword_27F217DD8);
    *v117 = v108;
    *(v117 + 8) = 1.0 - v108;
    *(v117 + 16) = 0x4012D97C7F3321D2;
    *(v117 + 24) = v110;
    *(v117 + 32) = v112;
    v118 = v175;
    *(v117 + 56) = v176;
    *(v117 + 72) = v177;
    *(v117 + 40) = v118;
    *(v117 + *(v116 + 56)) = 256;
    v119 = sub_24F927618();
    v121 = v120;
    sub_24E601704(v114, &qword_27F217DD8);
    v122 = (v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E38) + 36));
    *v122 = v119;
    v122[1] = v121;
    sub_24F927618();
    sub_24F9238C8();
    v123 = (v117 + *(v145 + 36));
    v124 = v193;
    *v123 = v192;
    v123[1] = v124;
    v123[2] = v194;
    v125 = v147;
    sub_24E60169C(v117, v147, &qword_27F217DB0);
    v126 = v148;
    *v148 = v166;
    *(v126 + 8) = v103;
    *(v126 + 16) = v105;
    *(v126 + 24) = v106;
    *(v126 + 32) = 0x4039000000000000;
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E40);
    sub_24E60169C(v125, v126 + *(v127 + 48), &qword_27F217DB0);

    sub_24E601704(v117, &qword_27F217DB0);
    sub_24E601704(v125, &qword_27F217DB0);

    v128 = v163;
    sub_24E6009C8(v126, v163, &qword_27F217DA8);
    (*(v161 + 56))(v128, 0, 1, v162);
  }

  else
  {
    v128 = v163;
    (*(v161 + 56))(v163, 1, 1, v162);
  }

  v129 = v170;
  sub_24E60169C(v173, v170, &qword_27F217DF0);
  v130 = v159;
  sub_24E60169C(v174, v159, &qword_27F217DE0);
  v131 = v171;
  v132 = v160;
  sub_24E60169C(v171, v160, &qword_27F217DD0);
  v133 = v164;
  sub_24E60169C(v128, v164, &qword_27F217DB8);
  v134 = v129;
  v135 = v128;
  v136 = v165;
  sub_24E60169C(v134, v165, &qword_27F217DF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E28);
  sub_24E60169C(v130, v136 + v137[12], &qword_27F217DE0);
  sub_24E60169C(v132, v136 + v137[16], &qword_27F217DD0);
  sub_24E60169C(v133, v136 + v137[20], &qword_27F217DB8);
  sub_24E601704(v135, &qword_27F217DB8);
  sub_24E601704(v131, &qword_27F217DD0);
  sub_24E601704(v174, &qword_27F217DE0);
  sub_24E601704(v173, &qword_27F217DF0);
  sub_24E601704(v133, &qword_27F217DB8);
  sub_24E601704(v132, &qword_27F217DD0);
  sub_24E601704(v130, &qword_27F217DE0);
  return sub_24E601704(v170, &qword_27F217DF0);
}

uint64_t sub_24E6BF2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E60);
  MEMORY[0x28223BE20](v111);
  v112 = v98 - v3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E68);
  MEMORY[0x28223BE20](v126);
  v114 = v98 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00);
  MEMORY[0x28223BE20](v110);
  v113 = (v98 - v5);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v119);
  v103 = v98 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E70);
  MEMORY[0x28223BE20](v122);
  v125 = v98 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E78);
  MEMORY[0x28223BE20](v116);
  v117 = (v98 - v8);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E80);
  MEMORY[0x28223BE20](v124);
  v118 = v98 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E88);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v102 = v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = v98 - v12;
  v106 = sub_24F9289E8();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v101 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E90);
  MEMORY[0x28223BE20](v115);
  v108 = v98 - v14;
  v120 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v120);
  v16 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E98);
  MEMORY[0x28223BE20](v17);
  v123 = v98 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217EA0);
  MEMORY[0x28223BE20](v19);
  v21 = (v98 - v20);
  v22 = sub_24F924218();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v98 - v27;
  v121 = a1;
  sub_24F7699D8(v98 - v27);
  sub_24F924208();
  sub_24E6C06A8(&qword_27F216C88, MEMORY[0x277CDFB98]);
  LOBYTE(a1) = sub_24F92C678();
  v29 = *(v23 + 8);
  v29(v26, v22);
  v29(v28, v22);
  if (a1)
  {
    *v21 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24E6C09EC();
    return sub_24F924E28();
  }

  else
  {
    v98[1] = v19;
    v99 = v21;
    v100 = v17;
    v31 = type metadata accessor for AchievementBadge();
    v32 = v121;
    v33 = v121 + *(v31 + 20);
    v34 = type metadata accessor for AchievementBadgeModel();
    sub_24E6C059C(v33 + *(v34 + 20), v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v44 = sub_24F926DF8();
      v45 = sub_24F9258F8();
      KeyPath = swift_getKeyPath();
      v47 = sub_24F9251C8();
      v48 = v113;
      v49 = v113 + *(v110 + 36);
      v50 = *(v119 + 36);
      v51 = *MEMORY[0x277CE13B8];
      v52 = sub_24F927748();
      (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
      *v49 = v47;
      *v48 = v44;
      v48[1] = KeyPath;
      v48[2] = v45;
      sub_24E60169C(v48, v112, &qword_27F216C00);
      swift_storeEnumTagMultiPayload();
      sub_24E6C06F8();
      v77 = v114;
      sub_24F924E28();
      sub_24E60169C(v77, v125, &qword_27F217E68);
      swift_storeEnumTagMultiPayload();
      sub_24E6C07B0();
      sub_24E6C0968();
      v78 = v123;
      sub_24F924E28();
      sub_24E601704(v77, &qword_27F217E68);
      sub_24E601704(v48, &qword_27F216C00);
      v40 = v99;
    }

    else if (EnumCaseMultiPayload)
    {
      v53 = (v33 + *(v34 + 24));
      v54 = v53[1];
      if (v54)
      {
        v128 = *v53;
        v129 = v54;
        sub_24E600AEC();

        v55 = sub_24F925E18();
        v57 = v56;
        v59 = v58;
        v60 = sub_24F925C98();
        v62 = v61;
        v64 = v63;
        sub_24E600B40(v55, v57, v59 & 1);

        LODWORD(v55) = sub_24F9251C8();
        v65 = *(v119 + 36);
        v66 = *MEMORY[0x277CE13B8];
        v67 = sub_24F927748();
        v68 = v103;
        (*(*(v67 - 8) + 104))(&v103[v65], v66, v67);
        *v68 = v55;
        sub_24E602068(&qword_27F214428, &qword_27F213F10);
        v54 = sub_24F925C58();
        v70 = v69;
        v72 = v71;
        v74 = v73;
        sub_24E600B40(v60, v62, v64 & 1);

        sub_24E601704(v68, &qword_27F213F10);
        v75 = v72 & 1;
        v76 = v70;
        sub_24E5FD138(v54, v70, v72 & 1);
      }

      else
      {
        v76 = 0;
        v75 = 0;
        v74 = 0;
      }

      v40 = v99;
      v121 = v74;
      v94 = v117;
      *v117 = v54;
      v94[1] = v76;
      v94[2] = v75;
      v94[3] = v74;
      swift_storeEnumTagMultiPayload();
      sub_24E65D2B4(v54, v76, v75, v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
      sub_24E6C083C();
      sub_24E6C08EC();
      v95 = v54;
      v96 = v118;
      sub_24F924E28();
      sub_24E60169C(v96, v125, &qword_27F217E80);
      swift_storeEnumTagMultiPayload();
      sub_24E6C07B0();
      sub_24E6C0968();
      v78 = v123;
      sub_24F924E28();
      v97 = v121;
      sub_24E65D2F8(v95, v76, v75, v121);
      sub_24E65D2F8(v95, v76, v75, v97);
      sub_24E601704(v96, &qword_27F217E80);
    }

    else
    {
      v120 = v16;
      v36 = v104;
      sub_24E60169C(v33, v104, &qword_27F213FB0);
      v37 = v105;
      v38 = v106;
      v39 = (*(v105 + 48))(v36, 1, v106);
      v40 = v99;
      if (v39 == 1)
      {
        sub_24E601704(v36, &qword_27F213FB0);
        v41 = 1;
        v42 = v109;
        v43 = v108;
      }

      else
      {
        v79 = v101;
        (*(v37 + 32))(v101, v36, v38);
        v80 = *(v32 + *(v31 + 24) + 64);
        v81 = v102;
        sub_24F9289C8();
        sub_24F9278A8();
        v83 = v82;
        v85 = v84;
        v86 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217EE8) + 36);
        *v86 = 1.0 / v80;
        *(v86 + 8) = 1.0 / v80;
        *(v86 + 16) = v83;
        *(v86 + 24) = v85;
        v87 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217EF0) + 36);
        *v87 = 0;
        *(v87 + 8) = 1;
        v128 = 0;
        v129 = 0xE000000000000000;
        sub_24F92C888();

        v128 = 0xD000000000000015;
        v129 = 0x800000024FA45BF0;
        v88 = sub_24F92BA38();
        MEMORY[0x253050C20](v88);

        v89 = v128;
        v90 = v129;
        (*(v37 + 8))(v79, v38);
        v42 = v109;
        v91 = (v81 + *(v109 + 52));
        *v91 = v89;
        v91[1] = v90;
        v43 = v108;
        sub_24E6009C8(v81, v108, &qword_27F217E88);
        v41 = 0;
      }

      (*(v107 + 56))(v43, v41, 1, v42);
      sub_24E60169C(v43, v117, &qword_27F217E90);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
      sub_24E6C083C();
      sub_24E6C08EC();
      v92 = v118;
      sub_24F924E28();
      sub_24E60169C(v92, v125, &qword_27F217E80);
      swift_storeEnumTagMultiPayload();
      sub_24E6C07B0();
      sub_24E6C0968();
      v78 = v123;
      sub_24F924E28();
      sub_24E601704(v92, &qword_27F217E80);
      sub_24E601704(v43, &qword_27F217E90);
      v93 = sub_24F91F648();
      (*(*(v93 - 8) + 8))(v120, v93);
    }

    sub_24E60169C(v78, v40, &qword_27F217E98);
    swift_storeEnumTagMultiPayload();
    sub_24E6C09EC();
    sub_24F924E28();
    return sub_24E601704(v78, &qword_27F217E98);
  }
}

double sub_24E6C03A8()
{
  v0 = [objc_opt_self() systemFontOfSize:8.0 weight:*MEMORY[0x277D743F8]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_24E6C065C();
  *(inited + 40) = v0;
  v3 = v2;
  v4 = v0;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F221890);
  v5 = sub_24F92B098();
  type metadata accessor for Key(0);
  sub_24E6C06A8(&qword_27F212318, type metadata accessor for Key);
  v6 = sub_24F92AE28();

  [v5 sizeWithAttributes_];
  v8 = v7;

  return v8;
}

uint64_t sub_24E6C0550@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F927618();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DA0);
  return sub_24E6BE1C8(v1, a1 + *(v4 + 44));
}

uint64_t sub_24E6C059C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementProgressStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6C0600(uint64_t a1)
{
  v2 = type metadata accessor for AchievementProgressStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6C065C()
{
  result = qword_27F217E58;
  if (!qword_27F217E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F217E58);
  }

  return result;
}

uint64_t sub_24E6C06A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6C06F8()
{
  result = qword_27F217EA8;
  if (!qword_27F217EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216C00);
    sub_24E60156C();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217EA8);
  }

  return result;
}

unint64_t sub_24E6C07B0()
{
  result = qword_27F217EB0;
  if (!qword_27F217EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217E80);
    sub_24E6C083C();
    sub_24E6C08EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217EB0);
  }

  return result;
}

unint64_t sub_24E6C083C()
{
  result = qword_27F217EB8;
  if (!qword_27F217EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217E90);
    sub_24E602068(&qword_27F217EC0, &qword_27F217E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217EB8);
  }

  return result;
}

unint64_t sub_24E6C08EC()
{
  result = qword_27F217EC8;
  if (!qword_27F217EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217EC8);
  }

  return result;
}

unint64_t sub_24E6C0968()
{
  result = qword_27F217ED8;
  if (!qword_27F217ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217E68);
    sub_24E6C06F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217ED8);
  }

  return result;
}

unint64_t sub_24E6C09EC()
{
  result = qword_27F217EE0;
  if (!qword_27F217EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217E98);
    sub_24E6C07B0();
    sub_24E6C0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217EE0);
  }

  return result;
}

uint64_t sub_24E6C0ABC()
{
  swift_getKeyPath();
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24E6C0B44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_24E6C0BAC()
{
  swift_getKeyPath();
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24E6C0C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_24E6C0CC4(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4478(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E6C19DC();
    sub_24F91FD78();
  }
}

uint64_t sub_24E6C0DDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_24E6C0E44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LeaderboardEntry();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = v1;
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_beginAccess();
  v9 = *(v1 + 24);
  v10 = (a1 + *(v5 + 28));
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_24F4D36F8(v11, v12, v9);

  if ((v13 & 1) == 0)
  {
    v20 = v6;
    swift_getKeyPath();
    v21 = v2;

    sub_24F91FD88();

    v21 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24ED7C5F0(&v22, v11, v12);
    swift_endAccess();

    v21 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    sub_24E6C2DEC(a1, v8);
    swift_getKeyPath();
    v21 = v2;
    sub_24F91FD88();

    v21 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    v15 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24E6168F0(0, v15[2] + 1, 1, v15);
      *(v2 + 16) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    v19 = v20;
    if (v18 >= v17 >> 1)
    {
      v15 = sub_24E6168F0(v17 > 1, v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    sub_24E6C2F10(v8, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18);
    *(v2 + 16) = v15;
    swift_endAccess();
    v21 = v2;
    swift_getKeyPath();
    sub_24F91FD98();

    swift_getKeyPath();
    v21 = v2;
    sub_24F91FD88();

    v21 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E6C1260((v2 + 16));
    swift_endAccess();
    v21 = v2;
    swift_getKeyPath();
    sub_24F91FD98();
  }

  return result;
}

void sub_24E6C1260(void **a1)
{
  v2 = *(type metadata accessor for LeaderboardEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24ECDE1B0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24E6C1A64(v5);
  *a1 = v3;
}

uint64_t sub_24E6C130C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v14 = v1;
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = (a1 + *(type metadata accessor for LeaderboardEntry() + 20));
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_24F4D36F8(v6, v7, v4);

  if (v8)
  {
    swift_getKeyPath();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24F7A57A0(v6, v7);
    swift_endAccess();

    swift_getKeyPath();
    sub_24F91FD98();

    MEMORY[0x28223BE20](v10);
    v12[2] = a1;
    swift_getKeyPath();
    sub_24F91FD88();

    v13 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    result = sub_24E6C2B1C(sub_24E6C2AFC, v12);
    v11 = *(*(v2 + 16) + 16);
    if (v11 < result)
    {
      __break(1u);
    }

    else
    {
      sub_24F14A1B4(result, v11);
      swift_endAccess();
      v13 = v2;
      swift_getKeyPath();
      sub_24F91FD98();
    }
  }

  return result;
}

uint64_t sub_24E6C15C8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LeaderboardEntry() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08() & 1;
  }
}

uint64_t sub_24E6C1638()
{
  swift_getKeyPath();
  sub_24E6C19DC();
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_24F91FD98();

  swift_getKeyPath();
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84FA0];

  swift_getKeyPath();
  sub_24F91FD98();
}