uint64_t sub_258A66EDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ValenceSelectionPhaseContent() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_258A66F50()
{
  result = qword_27F96F380;
  if (!qword_27F96F380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96F380);
  }

  return result;
}

unint64_t sub_258A66F9C()
{
  result = qword_27F96FC00;
  if (!qword_27F96FC00)
  {
    sub_258A666B8(255, &qword_27F96F9E0, sub_258A64650, sub_258A65374, MEMORY[0x277CDFAB8]);
    sub_258A67090();
    sub_258A671CC(&qword_27F96FC18, sub_258A65374);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC00);
  }

  return result;
}

unint64_t sub_258A67090()
{
  result = qword_27F96FC08;
  if (!qword_27F96FC08)
  {
    sub_258A64650();
    sub_258A67108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC08);
  }

  return result;
}

unint64_t sub_258A67108()
{
  result = qword_27F96FC10;
  if (!qword_27F96FC10)
  {
    sub_258A666B8(255, &qword_27F96F9F0, sub_258A646EC, sub_258A64AE8, MEMORY[0x277CE0338]);
    sub_258A66414();
    sub_258A654E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC10);
  }

  return result;
}

uint64_t sub_258A671CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A67218()
{
  v1 = *v0;
  v2 = v0[1];
  sub_258B031B4();
  MEMORY[0x259C931B0](0xD000000000000051, 0x8000000258B37E90);
  MEMORY[0x259C931B0](v1, v2);
  return 0;
}

uint64_t sub_258A672FC(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_258B00384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    v11 = sub_258AD6068(MEMORY[0x277D84F90]);
    v90 = v11;
    v12 = sub_2589C6E40(v3[16]);
    v13 = MEMORY[0x277D837D0];
    v89 = MEMORY[0x277D837D0];
    *&v88 = v12;
    *(&v88 + 1) = v14;
    sub_258A2D784(&v88, v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v11;
    v16 = 0xE400000000000000;
    sub_258AC8BC0(v87, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v86;
    v18 = v3[17];
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = 1885956947;
      }

      else if (v18 == 4)
      {
        v16 = 0x8000000258B35BF0;
        v19 = 0xD000000000000014;
      }

      else
      {
        v16 = 0x8000000258B35C10;
        v19 = 0xD000000000000015;
      }
    }

    else if (v3[17])
    {
      if (v18 == 1)
      {
        v16 = 0xE600000000000000;
        v19 = 0x6C65636E6143;
      }

      else
      {
        v19 = 1801675074;
      }
    }

    else
    {
      v19 = 1954047310;
    }

    v89 = v13;
    *&v88 = v19;
    *(&v88 + 1) = v16;
    sub_258A2D784(&v88, v87);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v17;
    sub_258AC8BC0(v87, 0x6E6F69746361, 0xE600000000000000, v29);
    v30 = v86;
    v90 = v86;
    if (v3[18] == 13)
    {
      sub_258AC2CE4(0x696F507972746E65, 0xEA0000000000746ELL, &v88);
      sub_258A3F0C0(&v88);
    }

    else
    {
      LOBYTE(v87[0]) = v3[18];
      v31 = StateOfMindLoggingAnalyticsEntryPointType.rawValue.getter();
      v89 = v13;
      *&v88 = v31;
      *(&v88 + 1) = v32;
      sub_258A2D784(&v88, v87);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v30;
      sub_258AC8BC0(v87, 0x696F507972746E65, 0xEA0000000000746ELL, v33);
      v90 = v86;
    }

    v34 = v3[19];
    if (v34 > 3)
    {
      if (v3[19] > 5u)
      {
        if (v34 != 6)
        {
          sub_258AC2CE4(0x6E616E65766F7270, 0xEA00000000006563, &v88);
          sub_258A3F0C0(&v88);
          v39 = v90;
LABEL_34:
          v85 = v2;
          v40 = v3[20] == 0;
          v41 = 0x7261746E656D6F4DLL;
          if (v3[20])
          {
            v41 = 0x796C696144;
          }

          v42 = 0xE900000000000079;
          v89 = v13;
          if (!v40)
          {
            v42 = 0xE500000000000000;
          }

          *&v88 = v41;
          *(&v88 + 1) = v42;
          sub_258A2D784(&v88, v87);
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v39;
          sub_258AC8BC0(v87, 1701869940, 0xE400000000000000, v43);
          v44 = v86;
          v45 = v3[21];
          v46 = MEMORY[0x277D839B0];
          v89 = MEMORY[0x277D839B0];
          LOBYTE(v88) = v45;
          sub_258A2D784(&v88, v87);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v44;
          sub_258AC8BC0(v87, 0x6C6562614C736168, 0xE800000000000000, v47);
          v48 = v86;
          v49 = v3[22];
          v89 = v46;
          LOBYTE(v88) = v49;
          sub_258A2D784(&v88, v87);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v48;
          sub_258AC8BC0(v87, 0x636F737341736168, 0xEE006E6F69746169, v50);
          v51 = v86;
          v52 = v3[23];
          v89 = v46;
          LOBYTE(v88) = v52;
          sub_258A2D784(&v88, v87);
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v51;
          sub_258AC8BC0(v87, 0xD000000000000016, 0x8000000258B37DC0, v53);
          v54 = v86;
          v55 = v3[24];
          v89 = v46;
          LOBYTE(v88) = v55;
          sub_258A2D784(&v88, v87);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v54;
          sub_258AC8BC0(v87, 0xD000000000000010, 0x8000000258B37DE0, v56);
          v57 = v86;
          v90 = v86;
          v58 = *MEMORY[0x277CCB7B8];
          v59 = sub_258B02B14();
          v61 = v60;
          v62 = HKMHUIActivePairedWatchProductType();
          v63 = MEMORY[0x277CCB800];
          if (v62)
          {
            v64 = v62;
            v65 = v13;
            v66 = sub_258B02B14();
            v68 = v67;

            v89 = v65;
            if (v68)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v89 = v13;
          }

          v69 = *v63;
          v66 = sub_258B02B14();
          v68 = v70;
LABEL_43:
          *&v88 = v66;
          *(&v88 + 1) = v68;
          sub_258A2D784(&v88, v87);
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v86 = v57;
          sub_258AC8BC0(v87, v59, v61, v71);

          v72 = v86;
          v90 = v86;
          v73 = *MEMORY[0x277CCB7B0];
          v74 = sub_258B02B14();
          v76 = v75;
          v77 = HKMHUIActivePairedWatchBuildVersion();
          if (v77)
          {
            v78 = v77;
            v79 = sub_258B02B14();
            v81 = v80;

            v89 = MEMORY[0x277D837D0];
            if (v81)
            {
LABEL_48:
              *&v88 = v79;
              *(&v88 + 1) = v81;
              sub_258A2D784(&v88, v87);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              v86 = v72;
              sub_258AC8BC0(v87, v74, v76, v84);

              swift_unknownObjectRelease();
              return v86;
            }
          }

          else
          {
            v89 = MEMORY[0x277D837D0];
          }

          v82 = *v63;
          v79 = sub_258B02B14();
          v81 = v83;
          goto LABEL_48;
        }

        v35 = 0xE600000000000000;
        v36 = 0x746567646957;
      }

      else if (v34 == 4)
      {
        v35 = 0xEB00000000737365;
        v36 = 0x6E6C7566646E694DLL;
      }

      else
      {
        v35 = 0xE700000000000000;
        v36 = 0x7972616D6D7553;
      }
    }

    else if (v3[19] > 1u)
    {
      if (v34 == 2)
      {
        v35 = 0xE700000000000000;
        v36 = 0x6C616E72756F4ALL;
      }

      else
      {
        v35 = 0xEB000000006E6565;
        v36 = 0x726353206B636F4CLL;
      }
    }

    else if (v3[19])
    {
      v35 = 0xE700000000000000;
      v36 = 0x7373656E746946;
    }

    else
    {
      v35 = 0xEE006D6F6F522065;
      v36 = 0x7079542061746144;
    }

    v89 = v13;
    *&v88 = v36;
    *(&v88 + 1) = v35;
    sub_258A2D784(&v88, v87);
    v37 = v90;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v37;
    sub_258AC8BC0(v87, 0x6E616E65766F7270, 0xEA00000000006563, v38);
    v39 = v86;
    goto LABEL_34;
  }

  sub_258B00364();
  v20 = sub_258B00374();
  v21 = sub_258B02E94();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v88 = v23;
    *v22 = 136446210;
    v24 = sub_258B035A4();
    v26 = sub_2589F1F78(v24, v25, &v88);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2589A1000, v20, v21, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x259C945C0](v23, -1, -1);
    MEMORY[0x259C945C0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_258A68160();
  swift_allocError();
  *v27 = 0xD000000000000030;
  v27[1] = 0x8000000258B37E50;
  return swift_willThrow();
}

uint64_t sub_258A67BE0(void *a1)
{
  v3 = *v1;
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B00084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 healthDataSource];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for MentalHealthGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v15;
    v45 = sub_258AD6068(MEMORY[0x277D84F90]);
    v16 = *MEMORY[0x277CCB7C0];
    v17 = sub_258B02B14();
    v19 = v18;
    sub_258B00074();
    v20 = sub_258AB40EC();
    (*(v10 + 8))(v13, v9);
    if (v20)
    {
      v44 = sub_258A681B4();
      *&v43 = v20;
      sub_258A2D784(&v43, v42);
      v21 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v21;
      sub_258AC8BC0(v42, v17, v19, isUniquelyReferenced_nonNull_native);

      v45 = v41;
    }

    else
    {
      sub_258AC2CE4(v17, v19, &v43);

      sub_258A3F0C0(&v43);
    }

    v32 = *MEMORY[0x277CCB7D0];
    v33 = sub_258B02B14();
    v35 = v34;
    v36 = sub_258AB43D0();
    v44 = MEMORY[0x277D837D0];
    if (!v37)
    {
      v38 = *MEMORY[0x277CCB800];
      v36 = sub_258B02B14();
    }

    *&v43 = v36;
    *(&v43 + 1) = v37;
    sub_258A2D784(&v43, v42);
    v39 = v45;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v39;
    sub_258AC8BC0(v42, v33, v35, v40);

    swift_unknownObjectRelease();
    return v41;
  }

  else
  {
    sub_258B00364();
    v23 = sub_258B00374();
    v24 = sub_258B02E94();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v43 = v26;
      *v25 = 136446210;
      v27 = sub_258B035A4();
      v29 = sub_2589F1F78(v27, v28, &v43);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2589A1000, v23, v24, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259C945C0](v26, -1, -1);
      MEMORY[0x259C945C0](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_258A68160();
    swift_allocError();
    *v30 = 0xD000000000000030;
    v30[1] = 0x8000000258B37E50;
    return swift_willThrow();
  }
}

id sub_258A68034(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_258B029E4();

  return v7;
}

unint64_t sub_258A68160()
{
  result = qword_27F96FC80;
  if (!qword_27F96FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FC80);
  }

  return result;
}

unint64_t sub_258A681B4()
{
  result = qword_27F96F0B0;
  if (!qword_27F96F0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96F0B0);
  }

  return result;
}

uint64_t type metadata accessor for DomainsAndContextEntry()
{
  result = qword_27F96FC88;
  if (!qword_27F96FC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A68288()
{
  sub_258A68444(319, &qword_27F96E0A8, sub_258A0AFC8, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_258A68444(319, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258A684A8(319, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_258A68444(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A684A8(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A68444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A684A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A68514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v15 = a1;
  v3 = type metadata accessor for DomainsAndContextEntry();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v13 = v5;
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B011A4();
  LOBYTE(v16) = 0;
  sub_258A68914(v1, v31);
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v22 = v31[0];
  v23 = v31[1];
  v24 = v32;
  v25 = v33;
  v30[0] = v31[0];
  v30[1] = v31[1];
  v30[2] = v32;
  v30[3] = v33;
  v30[4] = v34;
  v30[5] = v35;
  v30[6] = v36;
  v30[7] = v37;
  sub_258A69878(&v22, &v17, sub_258A69060);
  sub_258A699A4(v30, sub_258A69060);
  *&v21[71] = v26;
  *&v21[87] = v27;
  *&v21[103] = v28;
  *&v21[119] = v29;
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  *&v21[55] = v25;
  v7 = v16;
  sub_258A69878(v2, v6, type metadata accessor for DomainsAndContextEntry);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_258A69224(v6, v9 + v8);
  *(&v18[5] + 1) = *&v21[80];
  *(&v18[6] + 1) = *&v21[96];
  *(&v18[7] + 1) = *&v21[112];
  *(&v18[1] + 1) = *&v21[16];
  *(&v18[2] + 1) = *&v21[32];
  *(&v18[3] + 1) = *&v21[48];
  *(&v18[4] + 1) = *&v21[64];
  v17 = v14;
  LOBYTE(v18[0]) = v7;
  *(v18 + 1) = *v21;
  *&v18[8] = *&v21[127];
  *(&v18[8] + 1) = sub_258A69288;
  v19 = v9;
  v20 = 0;
  *&v31[0] = *(v2 + 8);
  *(v31 + 8) = *(v2 + 16);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v16);
  v10 = *(v16 + 16);

  LOBYTE(v16) = v10 != 0;
  sub_258A69878(v2, v6, type metadata accessor for DomainsAndContextEntry);
  v11 = swift_allocObject();
  sub_258A69224(v6, v11 + v8);
  sub_258A69594(0, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  sub_258A69694();
  sub_258B01EF4();

  v38 = v18[7];
  v39 = v18[8];
  v40 = v19;
  v41 = v20;
  v34 = v18[3];
  v35 = v18[4];
  v36 = v18[5];
  v37 = v18[6];
  v31[0] = v17;
  v31[1] = v18[0];
  v32 = v18[1];
  v33 = v18[2];
  return sub_258A697C4(v31);
}

uint64_t sub_258A68914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00FD4();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v8;
  v9 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  *&v57[0] = a1[1];
  *(v57 + 8) = *(a1 + 1);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  v52 = v13;
  sub_258B003E4();
  sub_258B02334();
  v50 = v61;
  v51 = v60;
  v49 = v62;
  v48 = sub_258B01894();
  v14 = type metadata accessor for DomainsAndContextEntry();
  v15 = a1 + *(v14 + 40);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v57[0]) = *v15;
  *(&v57[0] + 1) = v17;
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v60 == 1)
  {
    v18 = a1 + *(v14 + 36);
    sub_258AC1B28(v12);
    sub_258A699A4(v12, type metadata accessor for AssociationSelectionPhaseSpecs);
  }

  sub_258B00654();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v71 = 0;
  if (*(a1 + 64) == 1 && (LOBYTE(v57[0]) = v16, *(&v57[0] + 1) = v17, sub_258B02124(), v60 == 1))
  {
    v27 = a1[6];
    v28 = a1[7];
    v57[0] = *(a1 + 2);
    *&v57[1] = v27;
    *(&v57[1] + 1) = v28;
    sub_258A684A8(0, &qword_27F96E0C0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    sub_258B02334();
    v29 = v61;
    v42 = v60;
    v30 = v63;
    v46 = a1[9];
    v47 = v62;
    v31 = v44;
    sub_258B00FC4();
    v32 = v45;
    (*(v45 + 16))(v43, v31, v4);
    sub_258A6977C(&qword_27F96FCF0, MEMORY[0x277CE0068]);
    v33 = sub_258B00874();
    (*(v32 + 8))(v31, v4);
    v34 = v42;

    sub_258B003E4();
  }

  else
  {
    v34 = 0;
    v29 = 0;
    v46 = 0;
    v47 = 0;
    v30 = 0;
    v33 = 0;
  }

  *&v53 = v52;
  *(&v53 + 1) = v51;
  *&v54 = v50;
  *(&v54 + 1) = v49;
  v35 = v48;
  LOBYTE(v55) = v48;
  *(&v55 + 1) = v72[0];
  DWORD1(v55) = *(v72 + 3);
  *(&v55 + 1) = v20;
  *&v56[0] = v22;
  *(&v56[0] + 1) = v24;
  *&v56[1] = v26;
  BYTE8(v56[1]) = 0;
  *(v59 + 9) = *(v56 + 9);
  v58 = v55;
  v59[0] = v56[0];
  v57[0] = v53;
  v57[1] = v54;
  sub_258A69878(&v53, &v60, sub_258A69134);
  v37 = v46;
  v36 = v47;
  sub_258A698E0(v34, v29);
  sub_258A69940(v34, v29);
  v38 = v59[0];
  *(a2 + 32) = v58;
  *(a2 + 48) = v38;
  *(a2 + 64) = v59[1];
  v39 = v57[1];
  *a2 = v57[0];
  *(a2 + 16) = v39;
  *(a2 + 80) = v34;
  *(a2 + 88) = v29;
  *(a2 + 96) = v36;
  *(a2 + 104) = v30;
  *(a2 + 112) = v37;
  *(a2 + 120) = v33;
  sub_258A69940(v34, v29);
  v60 = v52;
  v61 = v51;
  v62 = v50;
  v63 = v49;
  v64 = v35;
  *v65 = v72[0];
  *&v65[3] = *(v72 + 3);
  v66 = v20;
  v67 = v22;
  v68 = v24;
  v69 = v26;
  v70 = 0;
  return sub_258A699A4(&v60, sub_258A69134);
}

uint64_t sub_258A68E24(uint64_t a1)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_258A68444(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v7);
  v2 = *(v7 + 16);

  v3 = (a1 + *(type metadata accessor for DomainsAndContextEntry() + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v8) = v4;
  *&v9 = v5;
  LOBYTE(v7) = v2 != 0;
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A68F14(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    v3 = *a2;
    MEMORY[0x28223BE20](result);
    sub_258B02534();
    sub_258B009A4();
  }

  return result;
}

uint64_t sub_258A68FC0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DomainsAndContextEntry() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_258A684A8(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258A69094()
{
  if (!qword_27F96FCA0)
  {
    sub_258A69134();
    sub_258A68444(255, &qword_27F96FCB0, sub_258A6918C, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96FCA0);
    }
  }
}

void sub_258A69134()
{
  if (!qword_27F96FCA8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FCA8);
    }
  }
}

void sub_258A6918C()
{
  if (!qword_27F96FCB8)
  {
    sub_258A69594(255, &qword_27F96FCC0, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FCB8);
    }
  }
}

uint64_t sub_258A69224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsAndContextEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A69288()
{
  v1 = *(type metadata accessor for DomainsAndContextEntry() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A68E24(v2);
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for DomainsAndContextEntry();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = v3[1];

  v6 = v3[2];

  v7 = v3[3];

  v8 = v3[4];

  v9 = v3[5];

  v10 = v3[7];

  v11 = v3 + *(v1 + 36);
  sub_258A68444(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_258B01504();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v11, 1, v12))
    {
      (*(v13 + 8))(v11, v12);
    }

    v14 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v15 = sub_258B00AA4();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
  }

  else
  {
    v16 = *v11;
  }

  v17 = *(v3 + *(v1 + 40) + 8);

  return swift_deallocObject();
}

uint64_t sub_258A69514(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for DomainsAndContextEntry() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A68F14(a1, a2, v6);
}

void sub_258A69594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_258A69600()
{
  if (!qword_27F96FCD0)
  {
    sub_258A69060(255);
    sub_258A6977C(&qword_27F96FCD8, sub_258A69060);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FCD0);
    }
  }
}

unint64_t sub_258A69694()
{
  result = qword_27F96FCE0;
  if (!qword_27F96FCE0)
  {
    sub_258A69594(255, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
    sub_258A6977C(&qword_27F96FCE8, sub_258A69600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FCE0);
  }

  return result;
}

uint64_t sub_258A6977C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A697C4(uint64_t a1)
{
  sub_258A69594(0, &qword_27F96FCC8, sub_258A69600, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A69878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A698E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_258B003E4();
  }

  return result;
}

uint64_t sub_258A69940(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_258A699A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DomainsSelectionPhase_iOS()
{
  result = qword_27F96FCF8;
  if (!qword_27F96FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A69A78()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_258A6F410(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A6ED18(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A6ED18(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258A6F410(319, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
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

uint64_t sub_258A69C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34[7] = a1;
  v3 = type metadata accessor for DomainsSelectionPhase_iOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_258A6CE38(v1, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v4 + 80);
  v7 = swift_allocObject();
  v34[6] = v7;
  sub_258A6CE9C(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + ((v6 + 16) & ~v6));
  v45 = sub_258A6CF00;
  v46 = v7;
  v41 = xmmword_258B312F0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v35 = *(v2 + 16);
  v36 = v8;
  LOBYTE(v37) = v9;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v40);
  v10 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v11 = v35;
  sub_258A6CE38(v2, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_258A6CE9C(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v6 + 24) & ~v6));
  sub_258A6D00C();
  v34[5] = v13;
  sub_258A6DE18();
  v34[4] = v14;
  sub_258A6DF44();
  v34[3] = v15;
  v34[2] = sub_258A6D424(&qword_27F96FE90, sub_258A6D00C);
  v34[1] = sub_258A6EBE0();
  sub_258A6E118();
  v34[0] = v16;
  sub_258A6E67C();
  v18 = v17;
  sub_258A6E2C0();
  v20 = v19;
  sub_258A6E434();
  v22 = v21;
  sub_258A6E890();
  v24 = v23;
  sub_258A6E540();
  v26 = v25;
  v27 = sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
  v28 = sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v26;
  v37 = v18;
  v38 = v27;
  v39 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v22;
  v37 = v24;
  v38 = OpaqueTypeConformance2;
  v39 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v20;
  v37 = v18;
  v38 = v31;
  v39 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  v35 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v36 = v34[0];
  v37 = v18;
  v38 = v32;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  sub_258B01CC4();
}

uint64_t sub_258A6A0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a2 + 32);
  v11 = sub_258B024F4();
  v13 = v12;
  sub_258A6DE18();
  v15 = a4 + *(v14 + 36);
  v16 = *(a3 + 33);
  *v15 = a5;
  v17 = vextq_s8(*a2, *a2, 8uLL);
  *(v15 + 24) = *(a2 + 16);
  *(v15 + 8) = v17;
  *(v15 + 40) = v10;
  *(v15 + 48) = v16;
  v18 = type metadata accessor for ConfirmationView();
  v19 = *(v18 + 44);
  *(v15 + v19) = swift_getKeyPath();
  v20 = MEMORY[0x277CDF458];
  sub_258A6ED18(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = *(v18 + 48);
  *(v15 + v21) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v20);
  swift_storeEnumTagMultiPayload();
  sub_258A6DEB0();
  v23 = (v15 + *(v22 + 36));
  *v23 = v11;
  v23[1] = v13;
  sub_258A6ED18(0, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
  v25 = *(*(v24 - 8) + 16);

  return v25(a4, a1, v24);
}

uint64_t sub_258A6A278@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  sub_258A6DF44();
  v100 = v1;
  v101 = *(v1 - 8);
  v2 = *(v101 + 64);
  MEMORY[0x28223BE20](v1);
  v97 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E118();
  v96 = v4;
  v99 = *(v4 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E2C0();
  v93 = v7;
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v112 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E434();
  v111 = v10;
  v95 = *(v10 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v10);
  v110 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6E890();
  v14 = *(v13 - 8);
  v114 = v13;
  v115 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v83 - v18;
  sub_258A6E67C();
  v20 = v19;
  v116 = *(v19 - 8);
  v21 = *(v116 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v90 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v83 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v113 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v108 = &v83 - v28;
  sub_258A6E540();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v109 = &v83 - v36;
  swift_getKeyPath();
  v37 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v39 = v38;
  v40 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v37);
  v104 = v35;
  sub_258B00904();
  v87 = MEMORY[0x277CDF6F0];
  v88 = sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
  v105 = v30;
  MEMORY[0x259C911C0](v35, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v30, v88);
  v41 = *(v31 + 8);
  v91 = v31 + 8;
  v92 = v41;
  v41(v35, v30);
  swift_getKeyPath();
  sub_258A6E798();
  v86 = v42;
  v43 = MEMORY[0x277D839F8];
  v117 = MEMORY[0x277D839F8];
  v118 = v39;
  v119 = v39;
  v120 = v40;
  v121 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v113;
  sub_258B00904();
  v45 = sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
  MEMORY[0x259C911C0](v44, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v20, v45);
  v46 = *(v116 + 8);
  v116 += 8;
  v103 = v46;
  v46(v44, v20);
  KeyPath = swift_getKeyPath();
  sub_258A6EA24();
  v83 = v47;
  v48 = MEMORY[0x277CDF840];
  v49 = MEMORY[0x277CE14F8];
  sub_258A6EB8C(255, &qword_27F96FE68, v43, MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
  v51 = v50;
  v52 = MEMORY[0x277CDF8B8];
  sub_258A6EB8C(255, &qword_27F96FE70, v43, v49, MEMORY[0x277CDF8B8]);
  v54 = v53;
  v55 = sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v48);
  v56 = sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v52);
  v117 = MEMORY[0x277D839F8];
  v118 = v51;
  v119 = v54;
  v120 = v55;
  v121 = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v89;
  sub_258B00904();
  KeyPath = sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
  v58 = v114;
  MEMORY[0x259C911C0](v57, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v114, KeyPath);
  v59 = *(v115 + 8);
  v115 += 8;
  v87 = v59;
  v59(v57, v58);
  swift_getKeyPath();
  v60 = v106;
  sub_258B00904();
  MEMORY[0x259C911C0](v60, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v20, v45);
  v61 = v103;
  v103(v60, v20);
  swift_getKeyPath();
  v62 = v90;
  sub_258B00904();
  MEMORY[0x259C911C0](v62, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v20, v45);
  v61(v62, v20);
  v63 = v105;
  v64 = v88;
  MEMORY[0x259C911F0](v109, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v105, v88);
  sub_258B00BE4();
  v117 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v118 = v63;
  v119 = v20;
  v120 = v64;
  v121 = v45;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v111;
  v67 = v114;
  v68 = KeyPath;
  sub_258B00BE4();
  v117 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v118 = v66;
  v119 = v67;
  v120 = v65;
  v121 = v68;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v94;
  v71 = v93;
  sub_258B00BE4();
  v117 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v118 = v71;
  v119 = v20;
  v120 = v69;
  v121 = v45;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v97;
  v74 = v70;
  v75 = v106;
  v76 = v96;
  sub_258B00BE4();
  v117 = &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues;
  v118 = v76;
  v119 = v20;
  v120 = v72;
  v121 = v45;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v100;
  MEMORY[0x259C911D0](v73, &type metadata for DomainsSelectionPhase_iOS.ConfirmationAnimationValues, v100, v77);
  (*(v101 + 8))(v73, v78);
  (*(v99 + 8))(v74, v76);
  (*(v98 + 8))(v112, v71);
  (*(v95 + 8))(v110, v111);
  v79 = v105;
  v80 = v92;
  v92(v104, v105);
  v81 = v103;
  v103(v75, v20);
  v81(v113, v20);
  v87(v107, v114);
  v81(v108, v20);
  return v80(v109, v79);
}

uint64_t sub_258A6AEA4()
{
  v0 = MEMORY[0x277D839F8];
  v1 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v18 = 0x3FF0000000000000;
  v16 = 0;
  v17 = 1;
  v14[1] = 0;
  v15 = 1;
  sub_258B00884();
  v11 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v1);
  MEMORY[0x259C91C70](v8, v0, v3, v11);
  v12 = *(v4 + 8);
  v12(v8, v3);
  MEMORY[0x259C91C90](v10, v0, v3, v11);
  return (v12)(v10, v3);
}

uint64_t sub_258A6B0A4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_258B02294();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277CE14F8];
  v41 = MEMORY[0x277CDF8B8];
  sub_258A6EB8C(0, &qword_27F96FE70, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF8B8]);
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v11;
  v12 = sub_258B025A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = MEMORY[0x277CDF840];
  sub_258A6EB8C(0, &qword_27F96FE68, v3, v4, MEMORY[0x277CDF840]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37 = &v36 - v22;
  v45 = 0x3FE0000000000000;
  sub_258B02594();
  sub_258B00A04();
  v23 = sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v14);
  MEMORY[0x259C91C70](v21, v3, v16, v23);
  v24 = *(v17 + 8);
  v38 = v17 + 8;
  v39 = v24;
  v24(v21, v16);
  v47 = 0x3FF0000000000000;
  v45 = 0;
  v46 = 1;
  sub_258B02284();
  v25 = v10;
  sub_258B00A64();
  v26 = sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v41);
  v27 = v40;
  v28 = v10;
  v29 = v3;
  v30 = v42;
  MEMORY[0x259C91C70](v28, v3, v42, v26);
  v31 = *(v43 + 8);
  v31(v25, v30);
  v32 = v37;
  MEMORY[0x259C91C90](v37, v29, v16, v23);
  sub_258B01684();
  v33 = v21;
  v34 = v39;
  v39(v33, v16);
  v31(v27, v30);
  return v34(v32, v16);
}

uint64_t sub_258A6B50C@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v20 = a1;
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277CDF6B8];
  sub_258A6EB8C(0, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v25 = 0.0;
  v23 = 0;
  v24 = 1;
  v21 = 0;
  v22 = 1;
  sub_258B00884();
  v17 = sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v4);
  MEMORY[0x259C91C70](v14, v3, v6, v17);
  v18 = *(v7 + 8);
  v18(v14, v6);
  v25 = a2;
  v23 = 0;
  v24 = 1;
  v21 = 0;
  v22 = 1;
  sub_258B00884();
  MEMORY[0x259C91C70](v11, v3, v6, v17);
  v18(v11, v6);
  MEMORY[0x259C91C90](v16, v3, v6, v17);
  sub_258B01684();
  v18(v11, v6);
  v18(v14, v6);
  return (v18)(v16, v6);
}

uint64_t sub_258A6B7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a1;
  v147 = a3;
  v4 = sub_258B00B74();
  v145 = *(v4 - 8);
  v146 = v4;
  v5 = *(v145 + 64);
  MEMORY[0x28223BE20](v4);
  v142 = v6;
  v143 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DomainsSelectionPhase_iOS();
  v139 = *(v149 - 8);
  v7 = *(v139 + 64);
  MEMORY[0x28223BE20](v149);
  v140 = v8;
  v141 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B006A4();
  v135 = *(v9 - 8);
  v136 = v9;
  v10 = *(v135 + 64);
  MEMORY[0x28223BE20](v9);
  v134 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D54C(0, &qword_27F96FEB0, MEMORY[0x277CE0330]);
  v125 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v129 = &v116 - v14;
  sub_258A6D5BC(0);
  v148 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v119 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v120 = COERCE_DOUBLE(sub_258B016B4());
  v18 = *(v120 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v120);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DomainsSelectionPhaseContent();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D730();
  v27 = v26;
  v28 = *(*(*&v26 - 8) + 64);
  MEMORY[0x28223BE20](*&v26);
  v30 = (&v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A6D67C();
  v122 = *(v31 - 8);
  v123 = v31;
  v32 = *(v122 + 64);
  MEMORY[0x28223BE20](v31);
  v121 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D52C(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v124 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D4F0(0);
  v127 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v126 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D46C();
  v133 = v40;
  v131 = *(v40 - 8);
  v41 = *(v131 + 64);
  MEMORY[0x28223BE20](v40);
  v130 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D1F0();
  v128 = v43;
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v132 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D15C();
  v137 = v46;
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v138 = &v116 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = a2;
  v49 = *(a2 + 34);
  v50 = 0uLL;
  v51 = 0uLL;
  v52 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
  if ((v49 & 1) == 0)
  {
    sub_258A6C58C(v164);
    v50 = v164[0];
    v51 = v164[1];
    v52 = v164[2];
    v53 = v164[3];
    v54 = v164[4];
  }

  *v30 = v50;
  v30[1] = v51;
  v30[2] = v52;
  v30[3] = v53;
  v30[4] = v54;
  v55 = v30 + *(*&v27 + 36);
  v56 = v27;
  sub_258A6C8A8(v25);
  *v55 = sub_258B01834();
  sub_258A6ED7C();
  sub_2589FFDE8(v25, &v55[*(v57 + 44)]);
  sub_258A6EE18(v25);
  v58 = *(*&v27 + 40);
  *(v30 + v58) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258B016A4();
  v59 = sub_258A6D424(&qword_27F96FD98, sub_258A6D730);
  v60 = v121;
  sub_258B01DE4();
  (*(v18 + 8))(v21, v120);
  sub_258A6EE74(v30, sub_258A6D730);
  if (v49)
  {
    v117 = v59;
    v118 = v56;
    v61 = *(v150 + 33);
    *&v120 = COERCE_DOUBLE(sub_258B024F4());
    v63 = v62;
    sub_258A6F410(0, &qword_27F96CC10, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v64 = swift_allocObject();
    if (v61)
    {
      *(v64 + 16) = xmmword_258B2BE60;
      *(v64 + 32) = sub_258B01FF4();
      *(v64 + 40) = sub_258B02004();
    }

    else
    {
      *(v64 + 16) = xmmword_258B2C470;
      *(v64 + 32) = sub_258B01FF4();
    }

    MEMORY[0x259C92A80](v64);
    sub_258B009F4();
    v69 = sub_258B00B54();
    v67 = v60;
    if (v61)
    {
      v70 = sub_258B018B4();
    }

    else
    {
      v70 = sub_258B018D4();
    }

    v71 = v70;
    v72 = v165;
    v74 = v166;
    v73 = v167;
    v76 = v119;
    v75 = v120;
    *&v152 = v120;
    *(&v152 + 1) = v63;
    v153 = v165;
    v154 = v166;
    *&v155 = v167;
    *(&v155 + 1) = v69;
    v156 = v70;
    v65 = v122;
    v66 = v123;
    (*(v122 + 16))(v119, v67, v123);
    v77 = v76 + *(v148 + 36);
    v78 = v155;
    *(v77 + 32) = v154;
    *(v77 + 48) = v78;
    *(v77 + 64) = v156;
    v79 = v153;
    *v77 = v152;
    *(v77 + 16) = v79;
    v157 = *&v75;
    v158 = v63;
    v159 = v72;
    v160 = v74;
    v161 = v73;
    v162 = v69;
    v163 = v71;
    sub_258A6F2C0(&v152, v151);
    sub_258A6F340(&v157);
    sub_2589B1EB8(v76, v129);
    swift_storeEnumTagMultiPayload();
    sub_258A6DB88();
    *v151 = v118;
    v151[1] = v117;
    swift_getOpaqueTypeConformance2();
    v68 = v124;
    sub_258B012A4();
    sub_258A6EE74(v76, sub_258A6D5BC);
  }

  else
  {
    v65 = v122;
    v66 = v123;
    (*(v122 + 16))(v129, v60, v123);
    swift_storeEnumTagMultiPayload();
    sub_258A6DB88();
    v157 = v56;
    v158 = v59;
    swift_getOpaqueTypeConformance2();
    v67 = v60;
    v68 = v124;
    sub_258B012A4();
  }

  (*(v65 + 8))(v67, v66);
  v80 = v150;
  v81 = *(v150 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v82 = v157;
  v83 = v80 + *(v149 + 40);
  v84 = v134;
  sub_258AC14E8(v134);
  v85 = v126;
  sub_258A9B4A4(v84, v68, v126, v82);
  (*(v135 + 8))(v84, v136);
  sub_258A6EE74(v68, sub_258A6D52C);
  v86 = *(v80 + 24);
  v87 = *(v80 + 32);
  v157 = *(v80 + 16);
  v158 = v86;
  LOBYTE(v159) = v87;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v152);
  sub_258A6D9E8();
  v88 = v130;
  sub_258B01E14();
  sub_258A6EE74(v85, sub_258A6D4F0);
  v89 = v80;
  v90 = v128;
  v91 = v132;
  sub_258A97634(&v132[*(v128 + 52)]);
  v92 = v80;
  v93 = v141;
  sub_258A6CE38(v92, v141);
  v94 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v95 = swift_allocObject();
  sub_258A6CE9C(v93, v95 + v94);
  (*(v131 + 32))(v91, v88, v133);
  v96 = (v91 + *(v90 + 56));
  *v96 = sub_258A6F18C;
  v96[1] = v95;
  sub_258A6CE38(v89, v93);
  v97 = swift_allocObject();
  v98 = v97 + v94;
  v99 = v149;
  sub_258A6CE9C(v93, v98);
  v100 = v138;
  sub_2589B1DCC(v91, v138);
  v101 = (v100 + *(v137 + 36));
  *v101 = sub_258A6CC7C;
  v101[1] = 0;
  v101[2] = sub_258A6F1A4;
  v101[3] = v97;
  v102 = (v89 + *(v99 + 44));
  v103 = *v102;
  v104 = *(v102 + 1);
  v157 = v103;
  v158 = v104;
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v105.n128_u64[0] = v152;
  if (*&v152 <= 0.0)
  {
    v109 = 0;
  }

  else
  {
    v106 = (v89 + *(v99 + 48));
    v107 = *v106;
    v108 = *(v106 + 1);
    v157 = v107;
    v158 = v108;
    sub_258B02124();
    v105.n128_u64[0] = v152;
    v109 = *&v152 > 90.0;
  }

  LOBYTE(v157) = v109;
  v110 = v145;
  v111 = v143;
  v112 = v146;
  (*(v145 + 16))(v143, v144, v146, v105);
  v113 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v114 = swift_allocObject();
  (*(v110 + 32))(v114 + v113, v111, v112);
  sub_258A6DCE4();
  sub_258B01EF4();

  return sub_258A6EE74(v100, sub_258A6D15C);
}

uint64_t sub_258A6C58C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DomainsSelectionPhase_iOS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (v1 + *(MEMORY[0x28223BE20](v4) + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  v29 = v8;
  v30 = v9;
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v27 < 110.0 || (v10 = (v1 + *(v4 + 48)), v11 = *v10, v12 = *(v10 + 1), v29 = v11, v30 = v12, result = sub_258B02124(), v27 <= 90.0))
  {
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v14 = sub_258AFFD94();
    v15 = v23;
    v24 = *(v2 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v25 = v29;
    sub_258A6CE38(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    sub_258A6CE9C(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v26);
    v27 = v25;
    v28 = 0;
    sub_258A6F410(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    result = sub_258B02354();
    v16 = v29;
    v17 = v30;
    v18 = v31;
    LOBYTE(v27) = v32;
    v21 = v32;
    v22 = xmmword_258B31300;
    v19 = sub_258A6F3B8;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  return result;
}

uint64_t sub_258A6C8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DomainsSelectionPhase_iOS();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v6 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v21 = v23;
  v20 = sub_258A22394();
  v7 = *v1;
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A6D424(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v8 = v26;
  v19 = v27;
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  v18 = v23;
  v9 = v24;
  v10 = v25;
  LOBYTE(v7) = *(v1 + 33);
  v11 = *(v1 + 34);
  sub_258A6CE38(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v13 = swift_allocObject();
  sub_258A6CE9C(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *a1 = v6;
  v14 = v20;
  *(a1 + 8) = v21;
  *(a1 + 16) = v14;
  *(a1 + 24) = v8;
  v15 = v18;
  *(a1 + 32) = v19;
  *(a1 + 48) = v15;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v7;
  *(a1 + 81) = (v11 & 1) == 0;
  *(a1 + 88) = 60;
  *(a1 + 96) = sub_258A6F4C4;
  *(a1 + 104) = v13;
  v16 = *(type metadata accessor for DomainsSelectionPhaseContent() + 52);
  *(a1 + v16) = swift_getKeyPath();
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_258A6CBEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for DomainsSelectionPhase_iOS() + 44));
  v5 = *v3;
  v6 = v3[1];
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A6CC7C@<X0>(void *a1@<X8>)
{
  result = sub_258B008B4();
  *a1 = v3;
  return result;
}

uint64_t sub_258A6CCA8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for DomainsSelectionPhase_iOS() + 48));
  v5 = *v3;
  v6 = v3[1];
  sub_258A6F410(0, &qword_27F96F4A0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A6CD38(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return sub_258B00B64();
  }

  return result;
}

void *sub_258A6CDB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v2;
  v9 = v3;
  sub_258A6F410(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v6);
  if ((v6 & 1) == 0)
  {
    v5 = *(a1 + 48);
    return (*(a1 + 40))(result);
  }

  return result;
}

uint64_t sub_258A6CE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsSelectionPhase_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6CE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainsSelectionPhase_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6CF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DomainsSelectionPhase_iOS() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_258A6B7D0(a1, v6, a2);
}

uint64_t sub_258A6CF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DomainsSelectionPhase_iOS() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_258A6A0A4(a1, a2, v9, a3, v8);
}

void sub_258A6D00C()
{
  if (!qword_27F96FD08)
  {
    sub_258A6D0C4();
    sub_258A6D15C();
    sub_258A6DCE4();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD08);
    }
  }
}

void sub_258A6D0C4()
{
  if (!qword_27F96FD10)
  {
    sub_258A6D15C();
    sub_258A6DCE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD10);
    }
  }
}

void sub_258A6D15C()
{
  if (!qword_27F96FD18)
  {
    sub_258A6D1F0();
    sub_258A6EB8C(255, &qword_27F96FDC0, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE06A0]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD18);
    }
  }
}

void sub_258A6D1F0()
{
  if (!qword_27F96FD20)
  {
    sub_258A6D2E4();
    sub_258A6D46C();
    sub_258A6D424(&qword_27F96FDB8, sub_258A6D2E4);
    sub_258A6D4F0(255);
    sub_258A6D9E8();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00C54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD20);
    }
  }
}

void sub_258A6D2E4()
{
  if (!qword_27F96FD28)
  {
    sub_258A6D388();
    sub_258A6D424(&qword_27F96FD40, sub_258A6D388);
    v0 = sub_258B00484();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD28);
    }
  }
}

void sub_258A6D388()
{
  if (!qword_27F96FD30)
  {
    sub_258B02FC4();
    sub_258A6D424(&qword_27F96FD38, MEMORY[0x277CC9DB0]);
    v0 = sub_258B00464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD30);
    }
  }
}

uint64_t sub_258A6D424(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A6D46C()
{
  if (!qword_27F96FD48)
  {
    sub_258A6D4F0(255);
    sub_258A6D9E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD48);
    }
  }
}

void sub_258A6D54C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A6D5BC(255);
    v7 = v6;
    sub_258A6D67C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A6D5F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A6D950(255, a4, a5);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A6D67C()
{
  if (!qword_27F96FD68)
  {
    sub_258A6D730();
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FD68);
    }
  }
}

void sub_258A6D730()
{
  if (!qword_27F96FD70)
  {
    sub_258A6D7C4();
    sub_258A6D424(&qword_27F96FD90, sub_258A6D7C4);
    v0 = type metadata accessor for StateOfMindEntryPhase_iOS();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD70);
    }
  }
}

void sub_258A6D7C4()
{
  if (!qword_27F96FD78)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    sub_258A6D8C8();
    v0 = sub_258B00844();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FD78);
    }
  }
}

void sub_258A6D858()
{
  if (!qword_27F96DBA8)
  {
    type metadata accessor for DomainsSelectionPhaseContent();
    sub_258A0037C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96DBA8);
    }
  }
}

unint64_t sub_258A6D8C8()
{
  result = qword_27F96FD88;
  if (!qword_27F96FD88)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FD88);
  }

  return result;
}

void sub_258A6D950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_258A6EB8C(255, &qword_27F96DB50, MEMORY[0x277CDF838], MEMORY[0x277CE0888], MEMORY[0x277CDFAB8]);
    v7 = v6;
    v8 = sub_2589FF714();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_258A6D9E8()
{
  result = qword_27F96FDA0;
  if (!qword_27F96FDA0)
  {
    sub_258A6D4F0(255);
    sub_258A6DAA0();
    sub_258A6DCA0(qword_27F96DBD0, &qword_27F96DBC0, MEMORY[0x277CE0318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDA0);
  }

  return result;
}

unint64_t sub_258A6DAA0()
{
  result = qword_27F96FDA8;
  if (!qword_27F96FDA8)
  {
    sub_258A6D52C(255);
    sub_258A6DB88();
    sub_258A6D730();
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDA8);
  }

  return result;
}

unint64_t sub_258A6DB88()
{
  result = qword_27F96FDB0;
  if (!qword_27F96FDB0)
  {
    sub_258A6D5BC(255);
    sub_258A6D730();
    sub_258A6D424(&qword_27F96FD98, sub_258A6D730);
    swift_getOpaqueTypeConformance2();
    sub_258A6DCA0(&qword_27F96DB90, &qword_27F96DB48, MEMORY[0x277CE03E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDB0);
  }

  return result;
}

uint64_t sub_258A6DCA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A6D950(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A6DCE4()
{
  result = qword_27F96FDC8;
  if (!qword_27F96FDC8)
  {
    sub_258A6D15C();
    sub_258A6D424(&qword_27F96FDD0, sub_258A6D1F0);
    sub_258A6DD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDC8);
  }

  return result;
}

unint64_t sub_258A6DD94()
{
  result = qword_27F96FDD8;
  if (!qword_27F96FDD8)
  {
    sub_258A6EB8C(255, &qword_27F96FDC0, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE06A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FDD8);
  }

  return result;
}

void sub_258A6DE18()
{
  if (!qword_27F96FDE0)
  {
    sub_258A6ED18(255, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
    sub_258A6DEB0();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FDE0);
    }
  }
}

void sub_258A6DEB0()
{
  if (!qword_27F96FDF0)
  {
    type metadata accessor for ConfirmationView();
    sub_258A6D424(&qword_27F96FDF8, type metadata accessor for ConfirmationView);
    v0 = sub_258B00CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FDF0);
    }
  }
}

void sub_258A6DF44()
{
  if (!qword_27F96FE00)
  {
    sub_258A6E118();
    sub_258A6E67C();
    sub_258A6E2C0();
    sub_258A6E434();
    sub_258A6E890();
    sub_258A6E540();
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE00);
    }
  }
}

void sub_258A6E118()
{
  if (!qword_27F96FE08)
  {
    sub_258A6E2C0();
    sub_258A6E67C();
    sub_258A6E434();
    sub_258A6E890();
    sub_258A6E540();
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE08);
    }
  }
}

void sub_258A6E2C0()
{
  if (!qword_27F96FE10)
  {
    sub_258A6E434();
    sub_258A6E890();
    sub_258A6E540();
    sub_258A6E67C();
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
    swift_getOpaqueTypeConformance2();
    sub_258A6D424(&qword_27F96FE88, sub_258A6E890);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE10);
    }
  }
}

void sub_258A6E434()
{
  if (!qword_27F96FE18)
  {
    sub_258A6E540();
    sub_258A6E67C();
    sub_258A6D424(&qword_27F96FE48, sub_258A6E540);
    sub_258A6D424(&qword_27F96FE50, sub_258A6E67C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE18);
    }
  }
}

void sub_258A6E540()
{
  if (!qword_27F96FE20)
  {
    v0 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v0);
    v1 = sub_258B008F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FE20);
    }
  }
}

uint64_t sub_258A6E624(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A6EB8C(255, a2, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258A6E67C()
{
  if (!qword_27F96FE38)
  {
    sub_258A6E798();
    v0 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v0);
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B008F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FE38);
    }
  }
}

void sub_258A6E798()
{
  if (!qword_27F96FE40)
  {
    v0 = MEMORY[0x277CDF6B8];
    sub_258A6EB8C(255, &qword_27F96FE28, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF6B8]);
    sub_258A6E624(&qword_27F96FE30, &qword_27F96FE28, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE40);
    }
  }
}

void sub_258A6E890()
{
  if (!qword_27F96FE58)
  {
    sub_258A6EA24();
    v0 = MEMORY[0x277D839F8];
    v1 = MEMORY[0x277CE14F8];
    v2 = MEMORY[0x277CDF840];
    sub_258A6EB8C(255, &qword_27F96FE68, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
    v3 = MEMORY[0x277CDF8B8];
    sub_258A6EB8C(255, &qword_27F96FE70, v0, v1, MEMORY[0x277CDF8B8]);
    sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v2);
    sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v3);
    swift_getOpaqueTypeConformance2();
    v4 = sub_258B008F4();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96FE58);
    }
  }
}

void sub_258A6EA24()
{
  if (!qword_27F96FE60)
  {
    v0 = MEMORY[0x277D839F8];
    v1 = MEMORY[0x277CE14F8];
    v2 = MEMORY[0x277CDF840];
    sub_258A6EB8C(255, &qword_27F96FE68, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
    v3 = MEMORY[0x277CDF8B8];
    sub_258A6EB8C(255, &qword_27F96FE70, v0, v1, MEMORY[0x277CDF8B8]);
    sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v2);
    sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE60);
    }
  }
}

void sub_258A6EB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A6EBE0()
{
  result = qword_27F96FE98;
  if (!qword_27F96FE98)
  {
    sub_258A6DE18();
    sub_258A6EC90();
    sub_258A6D424(&qword_27F96FEA8, sub_258A6DEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FE98);
  }

  return result;
}

unint64_t sub_258A6EC90()
{
  result = qword_27F96FEA0;
  if (!qword_27F96FEA0)
  {
    sub_258A6ED18(255, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FEA0);
  }

  return result;
}

void sub_258A6ED18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A6ED7C()
{
  if (!qword_27F96FEB8)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    sub_2589FFCB4();
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FEB8);
    }
  }
}

uint64_t sub_258A6EE18(uint64_t a1)
{
  v2 = type metadata accessor for DomainsSelectionPhaseContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A6EE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for DomainsSelectionPhase_iOS();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 6);

  v8 = &v3[v1[9]];
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  v14 = v1[10];
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(&v3[v14], v15);
  }

  else
  {
    v16 = *&v3[v14];
  }

  v17 = *&v3[v1[11] + 8];

  v18 = *&v3[v1[12] + 8];

  return swift_deallocObject();
}

uint64_t sub_258A6F1BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DomainsSelectionPhase_iOS() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_258A6F240(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(sub_258B00B74() - 8) + 80);

  return sub_258A6CD38(a1, a2);
}

uint64_t sub_258A6F2C0(uint64_t a1, uint64_t a2)
{
  sub_258A6D950(0, &qword_27F96DB48, MEMORY[0x277CE03E0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6F340(uint64_t a1)
{
  sub_258A6D950(0, &qword_27F96DB48, MEMORY[0x277CE03E0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A6F410(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A6F460(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258A6F480(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

id static NSBundle.mentalHealthUI.getter()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id sub_258A6F548()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F97AB90 = result;
  qword_27F97AB98 = 0xD00000000000001ALL;
  qword_27F97ABA0 = 0x8000000258B37F70;
  return result;
}

id sub_258A6F5FC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray3Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

double sub_258A6F668@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v17 = sub_258A6F5FC;
  *(&v17 + 1) = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v16 = sub_258A52B54;
  *(&v16 + 1) = &block_descriptor_9;
  v3 = _Block_copy(&aBlock);
  [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v4 = sub_258B01F94();
  sub_258B00754();
  v5 = sub_258B024F4();
  v7 = v6;
  sub_258B024F4();
  sub_258B00854();
  *a1 = v10 * 0.5;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v4;
  *(a1 + 56) = 256;
  *(a1 + 64) = v5;
  *(a1 + 72) = v7;
  v8 = v16;
  *(a1 + 80) = aBlock;
  *(a1 + 96) = v8;
  result = *&v17;
  *(a1 + 112) = v17;
  return result;
}

double sub_258A6F7F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_258B01194();
  v19 = 1;
  sub_258A6F668(&v10);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v28[0] = v10;
  v28[1] = v11;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[6] = v16;
  v28[7] = v17;
  sub_2589B21A0(&v20, &v9);
  sub_2589B2204(v28);
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[119] = v27;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  v3 = *&v18[64];
  *(a1 + 97) = *&v18[80];
  v4 = *&v18[112];
  *(a1 + 113) = *&v18[96];
  *(a1 + 129) = v4;
  v5 = *v18;
  *(a1 + 33) = *&v18[16];
  result = *&v18[32];
  v7 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 144) = *&v18[127];
  *(a1 + 17) = v5;
  return result;
}

void sub_258A6F8FC()
{
  if (!qword_27F96FEC0)
  {
    sub_258A6F95C();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FEC0);
    }
  }
}

void sub_258A6F95C()
{
  if (!qword_27F96FEC8)
  {
    sub_258A6F9EC();
    v0 = sub_258B013F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FEC8);
    }
  }
}

unint64_t sub_258A6F9EC()
{
  result = qword_27F96FED0;
  if (!qword_27F96FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FED0);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A6FA58()
{
  if (!qword_27F96FEE0)
  {
    sub_258A6F8FC();
    sub_258A6FABC();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FEE0);
    }
  }
}

unint64_t sub_258A6FABC()
{
  result = qword_27F96FEE8;
  if (!qword_27F96FEE8)
  {
    sub_258A6F8FC();
    sub_258A6FB6C(&qword_27F96FEF0, sub_258A6F95C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FEE8);
  }

  return result;
}

uint64_t sub_258A6FB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ValenceSelectionSummary()
{
  result = qword_27F96FEF8;
  if (!qword_27F96FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A6FC28()
{
  sub_258A71E14(319, &qword_27F96E0A0, type metadata accessor for Label, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_258A71E14(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258A71E14(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A6FD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A71E14(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ValenceSelectionSummary();
  sub_2589DC538(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258A6FF9C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v230 = a1;
  v221 = a2;
  sub_258A71A6C(0, &qword_27F96FF58, sub_258A718E4);
  v218 = v3;
  v219 = *(v3 - 8);
  v4 = *(v219 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v196 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v195 = &v192 - v7;
  sub_258A719F8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v220 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v217 = &v192 - v12;
  v226 = sub_258B006A4();
  v229 = *(v226 - 8);
  v13 = *(v229 + 64);
  v14 = MEMORY[0x28223BE20](v226);
  v224 = &v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v223 = &v192 - v16;
  v211 = sub_258B019F4();
  v210 = *(v211 - 8);
  v17 = *(v210 + 8);
  v18 = MEMORY[0x28223BE20](v211);
  v208 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v209 = &v192 - v20;
  v214 = type metadata accessor for LoggingFlowBlendMode;
  sub_258A71994(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
  v222 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v193 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v212 = &v192 - v25;
  sub_258A718E4();
  v225 = v26;
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v194 = &v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v213 = &v192 - v30;
  sub_258A7187C();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v216 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v228 = &v192 - v35;
  v36 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v37 = *(v36 - 8);
  v205 = (v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36 - 8);
  v192 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v204 = &v192 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v203 = &v192 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v199 = &v192 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v192 - v47;
  v202 = MEMORY[0x277CDE470];
  sub_258A71994(0, &qword_27F96DDD8, MEMORY[0x277CDE470]);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v192 - v51;
  sub_258A717F8();
  v54 = v53 - 8;
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v198 = &v192 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_258A717F8;
  sub_258A71A6C(0, &qword_27F96FF28, sub_258A717F8);
  v200 = v57;
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v192 - v59;
  sub_258A71774();
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v215 = &v192 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v227 = &v192 - v65;
  v66 = *a1;
  LOBYTE(v231) = 6;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v231, v233, v66);
  v231 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D56B8);
  sub_258A71C30(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v207 = v67;
  v206 = sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D56D8);
  sub_2589DC7D8();
  sub_258B01DD4();

  v68 = *(type metadata accessor for ValenceSelectionSummary() + 28);
  v69 = v230;
  sub_258AC1B28(v48);
  sub_258A7218C(v48, type metadata accessor for AssociationSelectionPhaseSpecs);
  LODWORD(v69) = *(v69 + 16);
  v70 = v199;
  sub_258AC1B28(v199);
  v197 = type metadata accessor for AssociationSelectionPhaseSpecs;
  sub_258A7218C(v70, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v71 = v52;
  v72 = v198;
  sub_258A71E78(v71, v198, &qword_27F96DDD8, v202);
  v73 = (v72 + *(v54 + 44));
  v74 = v233[1];
  *v73 = v233[0];
  v73[1] = v74;
  v73[2] = v233[2];
  LOBYTE(v69) = sub_258B01894();
  v75 = v203;
  sub_258AC1B28(v203);
  sub_258A7218C(v75, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_258A7203C(v72, v60, v201);
  v84 = &v60[*(v200 + 36)];
  *v84 = v69;
  *(v84 + 1) = v77;
  *(v84 + 2) = v79;
  *(v84 + 3) = v81;
  *(v84 + 4) = v83;
  v84[40] = 0;
  sub_258A71C80();
  sub_258B01D64();
  sub_258A71D9C(v60);
  sub_258B03084();
  v85 = HKUILocalizedStringForValenceClassification();
  v86 = sub_258B02B14();
  v88 = v87;

  v231 = v86;
  v232 = v88;
  v202 = sub_2589BFF58();
  v89 = sub_258B01B44();
  v91 = v90;
  v93 = v92;
  v203 = v68;
  v94 = v204;
  sub_258AC1B28(v204);
  sub_258B019C4();
  v95 = v94 + *(v205 + 7);
  v96 = sub_258B00A84();
  v97 = v210;
  v98 = MEMORY[0x277CE0A10];
  if ((v96 & 1) == 0)
  {
    v98 = MEMORY[0x277CE0A18];
  }

  v99 = v208;
  v100 = v211;
  (*(v210 + 13))(v208, *v98, v211);
  v101 = v97;
  v102 = *(v97 + 4);
  v103 = v209;
  v102(v209, v99, v100);
  sub_258B01A14();

  (*(v101 + 1))(v103, v100);
  sub_258A7218C(v94, v197);
  v104 = sub_258B01AE4();
  v106 = v105;
  v108 = v107;
  sub_2589BFFAC(v89, v91, v93 & 1);

  v109 = sub_258B01AD4();
  v111 = v110;
  v113 = v112;
  v211 = v114;
  sub_2589BFFAC(v104, v106, v108 & 1);

  v115 = sub_258B014A4();
  v116 = v223;
  sub_258A6FD88(v223);
  v117 = v229;
  v118 = *(v229 + 104);
  v119 = v224;
  LODWORD(v208) = *MEMORY[0x277CDF3C0];
  v120 = v226;
  v209 = (v229 + 104);
  v205 = v118;
  v118(v224);
  LOBYTE(v103) = sub_258B00694();
  v121 = *(v117 + 8);
  v121(v119, v120);
  v229 = v117 + 8;
  v210 = v121;
  v121(v116, v120);
  v122 = 0.8;
  if (v103)
  {
    v122 = 0.6;
  }

  v231 = __PAIR64__(LODWORD(v122), v115);
  sub_258A35700();
  v204 = sub_258A71BE8(&qword_27F96ED38, sub_258A35700);
  v123 = sub_258B01AB4();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  sub_2589BFFAC(v109, v111, v113 & 1);

  v130 = *(v222 + 36);
  KeyPath = swift_getKeyPath();
  v132 = v212;
  *&v212[v130] = KeyPath;
  sub_258A71E14(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v134 = v133;
  swift_storeEnumTagMultiPayload();
  *v132 = v123;
  *(v132 + 8) = v125;
  *(v132 + 16) = v127 & 1;
  *(v132 + 24) = v129;
  v135 = swift_getKeyPath();
  v136 = v213;
  sub_258A71E78(v132, v213, &qword_27F96FF48, v214);
  v137 = v136 + *(v225 + 36);
  *v137 = v135;
  *(v137 + 8) = 1;
  v231 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D56E8);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5708);
  sub_258A71EE8();
  sub_258B01DD4();

  sub_258A7218C(v136, sub_258A718E4);
  if (*(*(v230 + 1) + 16))
  {
    v231 = sub_258A712C0();
    v232 = v138;
    v139 = sub_258B01B44();
    v214 = v134;
    v141 = v140;
    v143 = v142;
    v213 = v144;
    v145 = sub_258B014A4();
    v146 = v223;
    sub_258A6FD88(v223);
    v147 = v224;
    v148 = v226;
    (v205)(v224, v208, v226);
    v149 = sub_258B00694();
    v150 = v147;
    v151 = v210;
    v210(v150, v148);
    v151(v146, v148);
    v152 = 0.8;
    if (v149)
    {
      v152 = 0.6;
    }

    v231 = __PAIR64__(LODWORD(v152), v145);
    v153 = sub_258B01AB4();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    sub_2589BFFAC(v139, v141, v143 & 1);

    v160 = *(v222 + 36);
    v161 = swift_getKeyPath();
    v162 = v193;
    *&v193[v160] = v161;
    swift_storeEnumTagMultiPayload();
    *v162 = v153;
    *(v162 + 8) = v155;
    *(v162 + 16) = v157 & 1;
    *(v162 + 24) = v159;
    v163 = swift_getKeyPath();
    v164 = v194;
    sub_258A71E78(v162, v194, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
    v165 = v164 + *(v225 + 36);
    *v165 = v163;
    *(v165 + 8) = 1;
    LOBYTE(v163) = sub_258B01884();
    v166 = v192;
    sub_258AC1B28(v192);
    sub_258A7218C(v166, type metadata accessor for AssociationSelectionPhaseSpecs);
    sub_258B00654();
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v175 = v164;
    v176 = v196;
    sub_258A7203C(v175, v196, sub_258A718E4);
    v177 = v218;
    v178 = v176 + *(v218 + 36);
    *v178 = v163;
    *(v178 + 8) = v168;
    *(v178 + 16) = v170;
    *(v178 + 24) = v172;
    *(v178 + 32) = v174;
    *(v178 + 40) = 0;
    v179 = v195;
    sub_258A720A4(v176, v195);
    v180 = v217;
    sub_258A720A4(v179, v217);
    v181 = 0;
    v182 = v177;
  }

  else
  {
    v180 = v217;
    v182 = v218;
    v181 = 1;
  }

  (*(v219 + 56))(v180, v181, 1, v182);
  v183 = v227;
  v184 = v215;
  sub_258A72124(v227, v215, sub_258A71774);
  v185 = v228;
  v186 = v216;
  sub_258A72124(v228, v216, sub_258A7187C);
  v187 = v220;
  sub_258A72124(v180, v220, sub_258A719F8);
  v188 = v221;
  sub_258A72124(v184, v221, sub_258A71774);
  sub_258A716EC();
  v190 = v189;
  sub_258A72124(v186, v188 + *(v189 + 48), sub_258A7187C);
  sub_258A72124(v187, v188 + *(v190 + 64), sub_258A719F8);
  sub_258A7218C(v180, sub_258A719F8);
  sub_258A7218C(v185, sub_258A7187C);
  sub_258A7218C(v183, sub_258A71774);
  sub_258A7218C(v187, sub_258A719F8);
  sub_258A7218C(v186, sub_258A7187C);
  return sub_258A7218C(v184, sub_258A71774);
}

uint64_t sub_258A712C0()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v2, 0);
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      v5 = HKUILocalizedStringForStateOfMindLabel();
      v6 = sub_258B02B14();
      v8 = v7;

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_258AA91EC((v9 > 1), v10 + 1, 1);
      }

      ++v3;
      *(v14 + 16) = v10 + 1;
      v11 = v14 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_258A71C30(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  v12 = sub_258B02A34();

  return v12;
}

uint64_t sub_258A714A8()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A71658();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_258B01194();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_258A71B50();
  sub_258A6FF9C(v0, &v9[*(v10 + 44)]);
  sub_258B01614();
  sub_258A71BE8(&qword_27F96FF70, sub_258A71658);
  sub_258B01D84();
  (*(v2 + 8))(v5, v1);
  return sub_258A7218C(v9, sub_258A71658);
}

void sub_258A71658()
{
  if (!qword_27F96FF08)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    sub_258A71AC8();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF08);
    }
  }
}

void sub_258A716EC()
{
  if (!qword_27F96FF18)
  {
    sub_258A71774();
    sub_258A7187C();
    sub_258A719F8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96FF18);
    }
  }
}

void sub_258A71774()
{
  if (!qword_27F96FF20)
  {
    sub_258A71A6C(255, &qword_27F96FF28, sub_258A717F8);
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF20);
    }
  }
}

void sub_258A717F8()
{
  if (!qword_27F96FF30)
  {
    sub_258A71994(255, &qword_27F96DDD8, MEMORY[0x277CDE470]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF30);
    }
  }
}

void sub_258A7187C()
{
  if (!qword_27F96FF38)
  {
    sub_258A718E4();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF38);
    }
  }
}

void sub_258A718E4()
{
  if (!qword_27F96FF40)
  {
    sub_258A71994(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
    sub_258A71C30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF40);
    }
  }
}

void sub_258A71994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A719F8()
{
  if (!qword_27F96FF50)
  {
    sub_258A71A6C(255, &qword_27F96FF58, sub_258A718E4);
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF50);
    }
  }
}

void sub_258A71A6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A71AC8()
{
  result = qword_27F96FF60;
  if (!qword_27F96FF60)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF60);
  }

  return result;
}

void sub_258A71B50()
{
  if (!qword_27F96FF68)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FF68);
    }
  }
}

uint64_t sub_258A71BE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A71C30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A71C80()
{
  result = qword_27F96FF78;
  if (!qword_27F96FF78)
  {
    sub_258A71A6C(255, &qword_27F96FF28, sub_258A717F8);
    sub_258A71D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF78);
  }

  return result;
}

unint64_t sub_258A71D1C()
{
  result = qword_27F96FF80;
  if (!qword_27F96FF80)
  {
    sub_258A717F8();
    sub_258A65E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF80);
  }

  return result;
}

uint64_t sub_258A71D9C(uint64_t a1)
{
  sub_258A71A6C(0, &qword_27F96FF28, sub_258A717F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A71E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A71E78(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258A71994(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_258A71EE8()
{
  result = qword_27F96FF88;
  if (!qword_27F96FF88)
  {
    sub_258A718E4();
    sub_258A71F68();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF88);
  }

  return result;
}

unint64_t sub_258A71F68()
{
  result = qword_27F96FF90;
  if (!qword_27F96FF90)
  {
    sub_258A71994(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode);
    sub_258A71BE8(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF90);
  }

  return result;
}

uint64_t sub_258A7203C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A720A4(uint64_t a1, uint64_t a2)
{
  sub_258A71A6C(0, &qword_27F96FF58, sub_258A718E4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A72124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A7218C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 StateOfMindTimeline.TimelineView.init(model:chartFactory:onChartDisplay:onFirstTimeLoggingCompletion:presentSheet:presentModalCard:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __n128 a9, uint64_t a10)
{
  *(a8 + 16) = swift_getKeyPath();
  *(a8 + 24) = 0;
  type metadata accessor for StateOfMindTimeline.Model();
  sub_258A73FB0(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model);
  *a8 = sub_258B00A24();
  *(a8 + 8) = v17;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  result = a9;
  *(a8 + 88) = a9;
  *(a8 + 104) = a10;
  return result;
}

uint64_t StateOfMindTimeline.TimelineView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v61 = *MEMORY[0x277D85DE8];
  v2 = _s9ViewModelOMa();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B01634();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A73E40(0);
  v11 = v10;
  v12 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A74354();
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[5];
  v58 = v1[4];
  v59 = v20;
  v60 = v1[6];
  v21 = v1[1];
  v54 = *v1;
  v55 = v21;
  v22 = v1[3];
  v56 = v1[2];
  v57 = v22;
  v52 = &v54;
  sub_258B01854();
  _s16TimelineDataViewVMa();
  sub_258A73FB0(&qword_27F96FFB0, _s16TimelineDataViewVMa);
  sub_258B00674();
  v23 = swift_allocObject();
  v24 = v59;
  v23[5] = v58;
  v23[6] = v24;
  v23[7] = v60;
  v25 = v55;
  v23[1] = v54;
  v23[2] = v25;
  v26 = v57;
  v23[3] = v56;
  v23[4] = v26;
  sub_258A74578(&v54, v53);
  v27 = sub_258B024F4();
  v29 = v28;
  sub_258A73E74(0);
  v31 = &v14[*(v30 + 36)];
  *v31 = sub_258A74570;
  *(v31 + 1) = v23;
  *(v31 + 2) = v27;
  *(v31 + 3) = v29;
  v32 = swift_allocObject();
  v33 = v59;
  *(v32 + 5) = v58;
  *(v32 + 6) = v33;
  *(v32 + 7) = v60;
  v34 = v55;
  *(v32 + 1) = v54;
  *(v32 + 2) = v34;
  v35 = v57;
  *(v32 + 3) = v56;
  *(v32 + 4) = v35;
  v36 = &v14[v11[9]];
  *v36 = sub_258A745B0;
  v36[1] = v32;
  sub_258A74578(&v54, v53);
  sub_258B01624();
  v37 = sub_258A743D8();
  sub_258B01D84();
  (*(v6 + 8))(v9, v5);
  sub_258A745B8(v14, sub_258A73E40);
  v38 = MEMORY[0x277D837D0];
  sub_258A76584(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v53[0] = v54;
  swift_getKeyPath();
  swift_getKeyPath();

  v40 = v46;
  sub_258B00564();

  sub_258A745B8(v53, sub_258A54DE4);
  sub_258A745B8(v40, _s9ViewModelOMa);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v41 = sub_258A74828(1, 2, 1, inited);
  *(v41 + 2) = 2;
  *(v41 + 6) = 0x656E696C656D6954;
  *(v41 + 7) = 0xE800000000000000;
  v50 = &unk_2869D4670;
  v42 = sub_258B003E4();
  sub_2589FC8C8(v42);
  sub_258A76584(0, &qword_280DF8948, v38, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  v50 = v11;
  v51 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v47;
  sub_258B01DD4();

  result = (*(v48 + 8))(v19, v43);
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_258A728C4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  type metadata accessor for StateOfMindTimeline.Model();
  sub_258A73FB0(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model);
  sub_258B00A34();
  swift_getKeyPath();
  v6 = _s16TimelineDataViewVMa();
  v7 = a2 + v6[7];
  sub_258B00A44();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v8 = v35[0];
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 5) = *(a1 + 64);
  *(v9 + 6) = v10;
  *(v9 + 7) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v9 + 1) = *a1;
  *(v9 + 2) = v11;
  v12 = *(a1 + 48);
  *(v9 + 3) = *(a1 + 32);
  *(v9 + 4) = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 80);
  *(v13 + 5) = *(a1 + 64);
  *(v13 + 6) = v14;
  *(v13 + 7) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 1) = *a1;
  *(v13 + 2) = v15;
  v16 = *(a1 + 48);
  *(v13 + 3) = *(a1 + 32);
  *(v13 + 4) = v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 80);
  *(v17 + 5) = *(a1 + 64);
  *(v17 + 6) = v18;
  *(v17 + 7) = *(a1 + 96);
  v19 = *(a1 + 16);
  *(v17 + 1) = *a1;
  *(v17 + 2) = v19;
  v20 = *(a1 + 48);
  *(v17 + 3) = *(a1 + 32);
  *(v17 + 4) = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 80);
  *(v21 + 5) = *(a1 + 64);
  *(v21 + 6) = v22;
  *(v21 + 7) = *(a1 + 96);
  v23 = *(a1 + 16);
  *(v21 + 1) = *a1;
  *(v21 + 2) = v23;
  v24 = *(a1 + 48);
  *(v21 + 3) = *(a1 + 32);
  *(v21 + 4) = v24;
  *a2 = swift_getKeyPath();
  v25 = MEMORY[0x277CDF458];
  sub_258A75A10(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v26 = v6[5];
  *(a2 + v26) = swift_getKeyPath();
  sub_258A75A10(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v25);
  swift_storeEnumTagMultiPayload();
  v27 = v6[6];
  *(a2 + v27) = swift_getKeyPath();
  sub_258A75A10(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v25);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[8]) = v8;
  v28 = (a2 + v6[9]);
  *v28 = sub_258A75C40;
  v28[1] = v9;
  v29 = (a2 + v6[10]);
  *v29 = sub_258A75C60;
  v29[1] = v13;
  v30 = (a2 + v6[11]);
  *v30 = sub_258A75C68;
  v30[1] = v17;
  v31 = (a2 + v6[12]);
  *v31 = sub_258A75C88;
  v31[1] = v21;
  v32 = (a2 + v6[13]);
  v35[14] = 0;
  sub_258A74578(a1, v35);
  sub_258A74578(a1, v35);
  sub_258A74578(a1, v35);
  sub_258A74578(a1, v35);
  sub_258B02114();
  result = *v35;
  v34 = v35[1];
  *v32 = v35[0];
  v32[1] = v34;
  return result;
}

uint64_t sub_258A72CB0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A72D2C(uint64_t a1, uint64_t *a2)
{
  v4 = _s9ViewModelOMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_258A76310(a1, &v13 - v9, _s9ViewModelOMa);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A76310(v10, v8, _s9ViewModelOMa);

  sub_258B00574();
  return sub_258A745B8(v10, _s9ViewModelOMa);
}

uint64_t sub_258A72E58(void *a1)
{
  sub_258A76284(0, &qword_27F9700F8, MEMORY[0x277CE0330]);
  v25 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - v4;
  sub_258A75F78(0, &qword_27F970100, MEMORY[0x277CE0330]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A76284(0, &qword_27F9700C0, MEMORY[0x277CE0338]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = a1[10];
  v23[1] = a1[11];
  v24 = v20;
  v21 = a1[1];

  StateOfMindTimeline.EntryFullView.init(model:)(v17);
  sub_258A76310(v17, v9, type metadata accessor for StateOfMindTimeline.EntryFullView);
  swift_storeEnumTagMultiPayload();
  sub_258A54B54();
  sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView);
  sub_258B012A4();
  sub_258A76378(v13, v5);
  swift_storeEnumTagMultiPayload();
  sub_258A75FE0();
  sub_258A76108();
  sub_258A761D4();
  sub_258B012A4();
  sub_258A763F8(v13);
  sub_258A745B8(v17, type metadata accessor for StateOfMindTimeline.EntryFullView);
  sub_258A7606C();
  sub_258B022F4();
  v24();
}

uint64_t sub_258A731C0(uint64_t a1, char a2)
{
  sub_258A76284(0, &qword_27F9700C0, MEMORY[0x277CE0338]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  v8 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v8;
  v13[6] = *(a1 + 96);
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v9;
  v10 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v10;
  sub_258A735B0(a2, v13 - v11);
  sub_258A7606C();
  sub_258B022F4();
  v7();
}

uint64_t sub_258A732C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[12];
  v3 = v0[13];
  v11 = sub_258B024F4();
  v12 = v5;
  LOBYTE(v10) = 1;
  LOBYTE(v9) = 0;
  sub_258B00C94();
  v6 = objc_opt_self();

  v7 = [v6 secondarySystemBackgroundColor];
  sub_258B01F94();
  sub_258B01874();
  sub_258A75CE4();
  sub_258A75DF8();
  sub_258B022F4();
  v4();
}

uint64_t sub_258A733CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);
  v9 = *(a1 + 16);
  v15 = v9;
  v10 = v16;

  if ((v10 & 1) == 0)
  {
    sub_258B02E94();
    v11 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258A75BC0(&v15);
    (*(v5 + 8))(v8, v4);
    v9 = v14[1];
  }

  result = sub_258B008C4();
  *a2 = v9;
  a2[1] = v13;
  return result;
}

uint64_t sub_258A73534(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A735B0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v47[2] = a2;
  sub_258A75FE0();
  v48 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StateOfMindTimeline.EntryFullView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A76284(0, &qword_27F9700F8, MEMORY[0x277CE0330]);
  v47[1] = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v47 - v14;
  sub_258A75F78(0, &qword_27F970100, MEMORY[0x277CE0330]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v47 - v18;
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v47 - v22;
  v24 = v2[5];
  v54 = v2[4];
  v55 = v24;
  v56 = v2[6];
  v25 = v2[1];
  v50 = *v2;
  v51 = v25;
  v26 = v2[3];
  v52 = v2[2];
  v53 = v26;
  if (a1)
  {
    if (a1 == 1)
    {

      StateOfMindTimeline.EntryFullView.init(model:)(v11);
      sub_258A76310(v11, v19, type metadata accessor for StateOfMindTimeline.EntryFullView);
      swift_storeEnumTagMultiPayload();
      sub_258A54B54();
      sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView);
      sub_258B012A4();
      sub_258A76378(v23, v15);
      swift_storeEnumTagMultiPayload();
      sub_258A76108();
      sub_258A761D4();
      sub_258B012A4();
      sub_258A763F8(v23);
      v27 = type metadata accessor for StateOfMindTimeline.EntryFullView;
      v28 = v11;
    }

    else
    {
      v35 = swift_allocObject();
      v36 = v2[5];
      v35[5] = v2[4];
      v35[6] = v36;
      v35[7] = v2[6];
      v37 = v2[1];
      v35[1] = *v2;
      v35[2] = v37;
      v38 = v2[3];
      v35[3] = v2[2];
      v35[4] = v38;
      *v7 = swift_getKeyPath();
      v39 = MEMORY[0x277CDF458];
      sub_258A75A10(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v41 = _s15EntryNoDataViewVMa();
      *(v7 + v41[6]) = KeyPath;
      sub_258A75A10(0, &qword_27F96C968, MEMORY[0x277CDD848], v39);
      swift_storeEnumTagMultiPayload();
      v42 = v41[5];
      *(v7 + v42) = swift_getKeyPath();
      sub_258A75A10(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v39);
      swift_storeEnumTagMultiPayload();
      v43 = (v7 + v41[7]);
      *v43 = sub_258A765D4;
      v43[1] = v35;
      v44 = (v7 + v41[8]);
      *v44 = nullsub_1;
      v44[1] = 0;
      *(v7 + v41[9]) = MEMORY[0x277D84F90];
      v45 = swift_getKeyPath();
      v46 = v7 + *(v48 + 36);
      *v46 = v45;
      v46[8] = 1;
      sub_258A74578(&v50, v49);
      sub_258A76310(v7, v15, sub_258A75FE0);
      swift_storeEnumTagMultiPayload();
      sub_258A76108();
      sub_258A761D4();
      sub_258B012A4();
      v27 = sub_258A75FE0;
      v28 = v7;
    }

    return sub_258A745B8(v28, v27);
  }

  else
  {
    v57 = *v2;

    v29 = sub_258A79B58();
    sub_258A745B8(&v57, sub_258A54DE4);
    v30 = swift_allocObject();
    v31 = v55;
    v30[5] = v54;
    v30[6] = v31;
    v30[7] = v56;
    v32 = v51;
    v30[1] = v50;
    v30[2] = v32;
    v33 = v53;
    v30[3] = v52;
    v30[4] = v33;
    *v19 = sub_258A559D8;
    *(v19 + 1) = v29;
    v19[16] = 0;
    *(v19 + 3) = sub_258A764D8;
    *(v19 + 4) = v30;
    v19[40] = 0;
    swift_storeEnumTagMultiPayload();
    sub_258A74578(&v50, v49);
    sub_258A7650C();
    sub_258A54B54();
    sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView);

    sub_258B012A4();
    sub_258A76378(v23, v15);
    swift_storeEnumTagMultiPayload();
    sub_258A76108();
    sub_258A761D4();
    sub_258B012A4();
    sub_258A76514();

    return sub_258A763F8(v23);
  }
}

void *sub_258A73CF0(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v4);
  if (v4 != 0.0 && *a1 == 0.0)
  {
    *a1 = v4;
  }

  return result;
}

double sub_258A73D44@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_258A73DC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void sub_258A73EA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A73F1C()
{
  if (!qword_27F96FFA8)
  {
    _s16TimelineDataViewVMa();
    sub_258A73FB0(&qword_27F96FFB0, _s16TimelineDataViewVMa);
    v0 = sub_258B00664();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FFA8);
    }
  }
}

uint64_t sub_258A73FB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A73FF8()
{
  if (!qword_27F96FFB8)
  {
    sub_258A7408C();
    sub_258A73FB0(&qword_27F96FFF0, sub_258A7408C);
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FFB8);
    }
  }
}

void sub_258A7408C()
{
  if (!qword_27F96FFC0)
  {
    sub_258A740F0();
    sub_258A741DC();
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FFC0);
    }
  }
}

void sub_258A740F0()
{
  if (!qword_27F96FFC8)
  {
    sub_258A75B04(255, &qword_27F96FFD0, sub_258A74188, &_s18WidthPreferenceKeyVN, MEMORY[0x277CE07F8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FFC8);
    }
  }
}

unint64_t sub_258A74188()
{
  result = qword_27F96FFD8;
  if (!qword_27F96FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFD8);
  }

  return result;
}

unint64_t sub_258A741DC()
{
  result = qword_27F96FFE0;
  if (!qword_27F96FFE0)
  {
    sub_258A740F0();
    sub_258A7425C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFE0);
  }

  return result;
}

unint64_t sub_258A7425C()
{
  result = qword_27F96FFE8;
  if (!qword_27F96FFE8)
  {
    sub_258A75B04(255, &qword_27F96FFD0, sub_258A74188, &_s18WidthPreferenceKeyVN, MEMORY[0x277CE07F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFE8);
  }

  return result;
}

void sub_258A742EC()
{
  if (!qword_27F96FFF8)
  {
    sub_258A74188();
    sub_2589D2E7C();
    v0 = sub_258B01604();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96FFF8);
    }
  }
}

void sub_258A74354()
{
  if (!qword_27F970000)
  {
    sub_258A73E40(255);
    sub_258A743D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970000);
    }
  }
}

unint64_t sub_258A743D8()
{
  result = qword_27F970008;
  if (!qword_27F970008)
  {
    sub_258A73E40(255);
    sub_258A74488();
    sub_258A73FB0(&qword_27F970028, sub_258A742EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970008);
  }

  return result;
}

unint64_t sub_258A74488()
{
  result = qword_27F970010;
  if (!qword_27F970010)
  {
    sub_258A73E74(255);
    sub_258A73FB0(&qword_27F970018, sub_258A73F1C);
    sub_258A73FB0(&qword_27F970020, sub_258A73FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970010);
  }

  return result;
}

uint64_t sub_258A745B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A7463C(uint64_t a1)
{
  v2 = sub_258B00AC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00DD4();
}

char *sub_258A74704(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970108, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258A74828(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_258A74998(uint64_t a1, int a2)
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

uint64_t sub_258A749E0(uint64_t result, int a2, int a3)
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

unint64_t sub_258A74A4C()
{
  result = qword_27F970030;
  if (!qword_27F970030)
  {
    sub_258A73EA8(255, &qword_27F970038, sub_258A74354, MEMORY[0x277CDE470]);
    sub_258A73E40(255);
    sub_258A743D8();
    swift_getOpaqueTypeConformance2();
    sub_258A73FB0(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970030);
  }

  return result;
}

char *sub_258A74B6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970040, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_258A74C78(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A74D70();
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

void sub_258A74D70()
{
  if (!qword_27F970048)
  {
    sub_258A75DA4(255, &qword_27F970050, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970048);
    }
  }
}

char *sub_258A74DF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F96E118, MEMORY[0x277D85048], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258A74F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, qword_27F96EE90, MEMORY[0x277D84CC0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_258A7502C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970070, type metadata accessor for HKCVVertex, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_258A75154(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A74();
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

char *sub_258A7524C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970068, type metadata accessor for HKCVLight, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_258A7538C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970060, MEMORY[0x277D839B0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_258A75498(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_258A755D0(size_t result, int64_t a2, char a3, void *a4)
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

  sub_258A75A10(0, &qword_27F970090, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v10 = *(sub_258AFFC34() - 8);
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
  v15 = *(sub_258AFFC34() - 8);
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

char *sub_258A757CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258A758E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970118, type metadata accessor for Label, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_258A75A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A75A74()
{
  if (!qword_27F970078)
  {
    sub_258A75B04(255, &qword_27F970080, sub_258A75B6C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970078);
    }
  }
}

void sub_258A75B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_258A75B6C()
{
  result = qword_27F970088;
  if (!qword_27F970088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970088);
  }

  return result;
}

uint64_t sub_258A75BC0(uint64_t a1)
{
  sub_258A76584(0, &qword_27F96F748, MEMORY[0x277CE0F78], MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A75C88()
{
  v1 = v0;
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v2 = sub_258A732C0();
  v3 = *(v0 + 72);
  return (*(v1 + 64))(v2);
}

void sub_258A75CE4()
{
  if (!qword_27F970098)
  {
    sub_258A75DA4(255, &qword_27F9700A0, &_s31StateOfMindTimelineChartWrapperVN, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_258A75DA4(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970098);
    }
  }
}

void sub_258A75DA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A75DF8()
{
  result = qword_27F9700A8;
  if (!qword_27F9700A8)
  {
    sub_258A75CE4();
    sub_258A75E78();
    sub_258A07E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700A8);
  }

  return result;
}

unint64_t sub_258A75E78()
{
  result = qword_27F9700B0;
  if (!qword_27F9700B0)
  {
    sub_258A75DA4(255, &qword_27F9700A0, &_s31StateOfMindTimelineChartWrapperVN, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_258A75F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700B0);
  }

  return result;
}

unint64_t sub_258A75F24()
{
  result = qword_27F9700B8;
  if (!qword_27F9700B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700B8);
  }

  return result;
}

void sub_258A75F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindTimeline.EntryFullView();
    v7 = a3(a1, &type metadata for StateOfMindEntryView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258A75FE0()
{
  if (!qword_27F9700D0)
  {
    _s15EntryNoDataViewVMa();
    sub_258A76584(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9700D0);
    }
  }
}

unint64_t sub_258A7606C()
{
  result = qword_27F9700D8;
  if (!qword_27F9700D8)
  {
    sub_258A76284(255, &qword_27F9700C0, MEMORY[0x277CE0338]);
    sub_258A76108();
    sub_258A761D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700D8);
  }

  return result;
}

unint64_t sub_258A76108()
{
  result = qword_27F9700E0;
  if (!qword_27F9700E0)
  {
    sub_258A75F78(255, &qword_27F9700C8, MEMORY[0x277CE0338]);
    sub_258A54B54();
    sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700E0);
  }

  return result;
}

unint64_t sub_258A761D4()
{
  result = qword_27F9700E8;
  if (!qword_27F9700E8)
  {
    sub_258A75FE0();
    sub_258A73FB0(&qword_27F9700F0, _s15EntryNoDataViewVMa);
    sub_258A54108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700E8);
  }

  return result;
}

void sub_258A76284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A75F78(255, &qword_27F9700C8, MEMORY[0x277CE0338]);
    v7 = v6;
    sub_258A75FE0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258A76310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A76378(uint64_t a1, uint64_t a2)
{
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A763F8(uint64_t a1)
{
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_18()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_258A764D8(char a1)
{
  if (a1)
  {
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v2();
  }

  return 0;
}

unint64_t sub_258A76530()
{
  result = qword_27F970110;
  if (!qword_27F970110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970110);
  }

  return result;
}

void sub_258A76584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for StateOfMindCalendarDay()
{
  result = qword_27F970120;
  if (!qword_27F970120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A7664C()
{
  sub_258A76790(319, &qword_27F970130, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_258A76790(319, &qword_27F96D8A8, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_258B029C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_258A76744()
{
  result = qword_27F96D8A0;
  if (!qword_27F96D8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96D8A0);
  }

  return result;
}

void sub_258A76790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_258A76744();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_258A767F0()
{
  v46 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_258A74828(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_258A74828((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x796C696164;
    *(v5 + 5) = 0xE500000000000000;
    v47 = v2;
    [v1 valence];
    sub_258B02D64();
    v6 = sub_258A74828(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_258A74828((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0;
    *(v9 + 5) = 0xE000000000000000;
    v46 = v6;
  }

  v10 = *(v41 + 8);
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      v40 = *(v41 + 8);
    }

    v12 = sub_258B032B4();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_258AA91EC(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v15 = 0;
    v13 = v42;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C937C0](v15, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v15 + 32);
      }

      v18 = *(v42 + 16);
      v17 = *(v42 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_258AA91EC((v17 > 1), v18 + 1, 1);
      }

      ++v15;
      *(v42 + 16) = v18 + 1;
      v19 = v42 + 16 * v18;
      *(v19 + 32) = 0x7261746E656D6F6DLL;
      *(v19 + 40) = 0xE900000000000079;
    }

    while (v12 != v15);
    v11 = v10 >> 62;
  }

  sub_2589FC8C8(v13);
  if (v11)
  {
    v20 = sub_258B032B4();
  }

  else
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_258AA91EC(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v45;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x259C937C0](v22, v10);
        }

        else
        {
          v23 = *(v10 + 8 * v22 + 32);
        }

        v24 = v23;
        [v23 valence];
        sub_258B02D64();

        v26 = *(v45 + 16);
        v25 = *(v45 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_258AA91EC((v25 > 1), v26 + 1, 1);
        }

        ++v22;
        *(v45 + 16) = v26 + 1;
        v27 = v45 + 16 * v26;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0xE000000000000000;
      }

      while (v20 != v22);
      goto LABEL_31;
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_31:
  sub_2589FC8C8(v21);
  if (*(v47 + 2) && *(v46 + 2))
  {
    sub_2589FCE08();
    sub_2589C6824();
    v28 = sub_258B02A34();
    v30 = v29;

    sub_258B003E4();
    v31 = sub_258B02A34();
    v33 = v32;

    sub_258B031B4();

    MEMORY[0x259C931B0](v28, v30);

    MEMORY[0x259C931B0](0x636E656C61767C5DLL, 0xEC0000005B3A7365);
    MEMORY[0x259C931B0](v31, v33);

    MEMORY[0x259C931B0](93, 0xE100000000000000);
    v35 = 0xD000000000000016;
    v34 = 0x8000000258B37FB0;
  }

  else
  {

    v35 = 0;
    v34 = 0xE000000000000000;
  }

  v36 = type metadata accessor for StateOfMindCalendarDay();
  v37 = (v41 + *(v36 + 40));
  v43 = *v37;
  v44 = v37[1];
  sub_258B003E4();
  MEMORY[0x259C931B0](v35, v34);

  v38 = (v41 + *(v36 + 44));
  v39 = v38[1];

  *v38 = v43;
  v38[1] = v44;
}

uint64_t UIColor.init(valence:variant:colorScheme:)(unsigned __int8 *a1, uint64_t a2, double a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  Color.init(valence:variant:colorScheme:)(&v14, v10, a3);
  v11 = sub_258B030A4();
  (*(v7 + 8))(a2, v6);
  return v11;
}

uint64_t UIColor.init(valenceClassification:variant:colorScheme:)(CGColor *a1, char *a2, uint64_t a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  (*(v7 + 16))(v10, a3, v6);
  Color.init(valenceClassification:variant:colorScheme:)(a1, &v14, v10);
  v11 = sub_258B030A4();
  (*(v7 + 8))(a3, v6);
  return v11;
}

uint64_t sub_258A76F34@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for NotificationsSetupPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t type metadata accessor for NotificationsSetupPhaseSpecs()
{
  result = qword_27F970138;
  if (!qword_27F970138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A76FE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258A77028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A77094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a5;
  v37 = a1;
  v38 = a2;
  sub_258A778C4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - v10;
  v12 = type metadata accessor for ExpandableInfoSectionHeader();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v39 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v36 - v16);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v18 = sub_258AFFD94();
  v20 = v19;
  v21 = sub_258AFFD94();
  *v17 = v18;
  v17[1] = v20;
  v17[2] = v21;
  v17[3] = v22;
  v23 = *(v12 + 24);
  *(v17 + v23) = swift_getKeyPath();
  sub_258A77D04(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v24 = v17 + *(v12 + 28);
  v43 = 0;
  sub_258B02114();
  v25 = v45;
  *v24 = v44;
  *(v24 + 1) = v25;
  *v11 = sub_258B011A4();
  *(v11 + 1) = 0x4038000000000000;
  v11[16] = 0;
  sub_258A77BCC(0, &qword_27F9701A8, sub_258A77928);
  v36[2] = *(v26 + 44);
  v27 = v37;
  v44 = sub_258AACFBC(v37);
  v36[1] = swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = v38;
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = a3;
  v28[5] = v40;
  sub_258A779F0(0);
  v36[0] = v30;
  sub_258A77A90();
  sub_258A77E4C(&qword_27F970190, sub_258A779F0);
  sub_258A77E4C(&qword_27F9701A0, sub_258A77A90);
  sub_258B003E4();

  sub_258B003E4();
  sub_258B023B4();
  v31 = v39;
  sub_258A77C3C(v17, v39, type metadata accessor for ExpandableInfoSectionHeader);
  v32 = v42;
  sub_258A77C3C(v11, v42, sub_258A778C4);
  v33 = v41;
  sub_258A77C3C(v31, v41, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258A77854();
  sub_258A77C3C(v32, v33 + *(v34 + 48), sub_258A778C4);
  sub_258A77CA4(v11, sub_258A778C4);
  sub_258A77CA4(v17, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258A77CA4(v32, sub_258A778C4);
  return sub_258A77CA4(v31, type metadata accessor for ExpandableInfoSectionHeader);
}

double sub_258A7756C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_258A77D04(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  sub_258B003E4();
  sub_258B02334();
  KeyPath = swift_getKeyPath();
  sub_258A77A90();
  *(a2 + *(v5 + 60)) = KeyPath;
  sub_258A77D04(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = 1;
  result = 6.0;
  *(a2 + 40) = xmmword_258B31B60;
  *(a2 + 56) = sub_258A776C0;
  *(a2 + 64) = 0;
  *(a2 + 72) = sub_258A77710;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_258A776C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = HKUILocalizedStringForStateOfMindDomain();
  v3 = sub_258B02B14();

  return v3;
}

uint64_t sub_258A77710(uint64_t *a1)
{
  v1 = *a1;
  sub_258A77D68();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_258B2BE60;
  *(v2 + 32) = 0x6E69616D6F44;
  *(v2 + 40) = 0xE600000000000000;
  v3 = NSStringFromHKStateOfMindDomain();
  v4 = sub_258B02B14();
  v6 = v5;

  *(v2 + 48) = v4;
  *(v2 + 56) = v6;
  return v2;
}

uint64_t sub_258A7779C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_258B011A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A77BCC(0, &qword_27F970148, sub_258A77820);
  return sub_258A77094(v3, v4, v6, v5, a1 + *(v7 + 44));
}

void sub_258A77854()
{
  if (!qword_27F970158)
  {
    type metadata accessor for ExpandableInfoSectionHeader();
    sub_258A778C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970158);
    }
  }
}

void sub_258A778C4()
{
  if (!qword_27F970160)
  {
    sub_258A77928();
    sub_258A77B24();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970160);
    }
  }
}

void sub_258A77928()
{
  if (!qword_27F970168)
  {
    sub_258A779F0(255);
    sub_258A77A90();
    sub_258A77E4C(&qword_27F970190, sub_258A779F0);
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970168);
    }
  }
}

void sub_258A77A24()
{
  if (!qword_27F970178)
  {
    sub_258A0AFC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970178);
    }
  }
}

void sub_258A77A90()
{
  if (!qword_27F970180)
  {
    type metadata accessor for __HKStateOfMindDomain(255);
    sub_258A77E4C(&qword_27F970188, type metadata accessor for __HKStateOfMindDomain);
    v0 = type metadata accessor for TagPicker();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970180);
    }
  }
}

unint64_t sub_258A77B24()
{
  result = qword_27F970198;
  if (!qword_27F970198)
  {
    sub_258A77928();
    sub_258A77E4C(&qword_27F9701A0, sub_258A77A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970198);
  }

  return result;
}

void sub_258A77BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_258A77C30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_258A7756C(a1, a2);
}

uint64_t sub_258A77C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A77CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A77D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A77D68()
{
  if (!qword_280DF88F0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF88F0);
    }
  }
}

void sub_258A77DB8()
{
  if (!qword_27F9701B8)
  {
    sub_258A77820(255);
    sub_258A77E4C(&qword_27F9701C0, sub_258A77820);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9701B8);
    }
  }
}

uint64_t sub_258A77E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A77E94(uint64_t a1)
{
  v2 = v1;
  v59[1] = *MEMORY[0x277D85DE8];
  v53 = *v2;
  v4 = sub_258B00384();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A78570(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v57 = &v51 - v15;
  v16 = sub_258B00084();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = *MEMORY[0x277CCB830];
  v52 = a1;
  sub_258B00004();
  v25 = v2[2];
  v26 = *MEMORY[0x277D621B8];
  v27 = sub_258B00014();
  v59[0] = 0;
  v28 = [v25 nextEventWithIdentifier:v26 dueAfterDate:v27 error:v59];

  v29 = v59[0];
  if (v28)
  {
    sub_258B00034();
    v30 = v29;

    (*(v17 + 56))(v14, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v14, 1, 1, v16);
    v31 = v29;
  }

  v32 = v16;
  v33 = v57;
  sub_258A784F0(v14, v57);
  if (v29)
  {
    v34 = v54;
    sub_258B00364();
    v35 = sub_258B00374();
    v36 = sub_258B02E84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59[0] = v52;
      *v37 = 136446466;
      v38 = sub_258B035A4();
      v53 = v32;
      v40 = sub_2589F1F78(v38, v39, v59);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v58 = v29;
      sub_258A78570(0, &qword_27F9701C8, sub_258A785C4);
      v41 = v29;
      v42 = sub_258B02B44();
      v44 = sub_2589F1F78(v42, v43, v59);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_2589A1000, v35, v36, "[%{public}s] Error seeking next bedtime event: %{public}s", v37, 0x16u);
      v45 = v52;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v45, -1, -1);
      MEMORY[0x259C945C0](v37, -1, -1);

      (*(v55 + 8))(v34, v56);
      sub_258A2A66C(v57);
      (*(v17 + 8))(v23, v53);
    }

    else
    {

      (*(v55 + 8))(v34, v56);
      sub_258A2A66C(v33);
      (*(v17 + 8))(v23, v32);
    }

    goto LABEL_10;
  }

  sub_258A312AC(v33, v11);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_258A2A66C(v33);
    (*(v17 + 8))(v23, v16);
    sub_258A2A66C(v11);
LABEL_10:
    result = 1;
    goto LABEL_11;
  }

  (*(v17 + 32))(v21, v11, v16);
  sub_258AFFFF4();
  v49 = fabs(v48);
  v50 = *(v17 + 8);
  v50(v21, v16);
  sub_258A2A66C(v33);
  v50(v23, v16);
  if (v49 > v24 * 4.0)
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258A78494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258A784F0(uint64_t a1, uint64_t a2)
{
  sub_258A78570(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A78570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A785C4()
{
  result = qword_27F9701D0;
  if (!qword_27F9701D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9701D0);
  }

  return result;
}

uint64_t _s21EntryMomentsEmptyViewVMa()
{
  result = qword_27F9701D8;
  if (!qword_27F9701D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A78684()
{
  sub_258A7937C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A7937C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2589FCE08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A7879C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A7937C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2589DC538(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_258A789A8@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = sub_258B02554();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B006A4();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = v71 - v9;
  v10 = sub_258B019F4();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A7937C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v71 - v15;
  v17 = sub_258B01A54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144();
  v82 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v74 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v91 = sub_258AFFD94();
  v92 = v29;
  sub_2589BFF58();
  v73 = sub_258B01B44();
  v72 = v30;
  v32 = v31;
  v71[1] = v33;
  v79 = _s21EntryMomentsEmptyViewVMa();
  v34 = *(v79 + 20);
  v76 = v1;
  v77 = v34;
  sub_258AC1060(v25);
  v75 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A7931C(v25, type metadata accessor for StateOfMindTimeline.Styles);
  (*(v18 + 104))(v21, *MEMORY[0x277CE0A68], v17);
  v35 = *MEMORY[0x277CE0990];
  v36 = sub_258B01954();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v16, v35, v36);
  (*(v37 + 56))(v16, 0, 1, v36);
  sub_258B01994();
  sub_258B019B4();
  sub_258A79290(v16);
  (*(v18 + 8))(v21, v17);
  v39 = v80;
  v38 = v81;
  v40 = v78;
  (*(v80 + 104))(v78, *MEMORY[0x277CE0A10], v81);
  sub_258B01A14();

  (*(v39 + 8))(v40, v38);
  v41 = v73;
  v42 = v72;
  v43 = sub_258B01AE4();
  v45 = v44;
  LOBYTE(v37) = v46;
  sub_2589BFFAC(v41, v42, v32 & 1);

  v47 = v76;
  sub_258AC1060(v25);
  sub_258A7931C(v25, v75);
  v48 = [objc_opt_self() quaternaryLabelColor];
  v91 = sub_258B01F94();
  v49 = sub_258B01AB4();
  v80 = v50;
  v81 = v51;
  v53 = v52;
  sub_2589BFFAC(v43, v45, v37 & 1);

  v54 = v83;
  sub_258A7879C(v83);
  v56 = v84;
  v55 = v85;
  v57 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x277CDF3D0], v86);
  LOBYTE(v35) = sub_258B00694();
  v58 = *(v55 + 8);
  v58(v56, v57);
  v58(v54, v57);
  v60 = v87;
  v59 = v88;
  v61 = MEMORY[0x277CE13B0];
  if ((v35 & 1) == 0)
  {
    v61 = MEMORY[0x277CE13B8];
  }

  v62 = v89;
  (*(v88 + 104))(v87, *v61, v89);
  v63 = v74;
  (*(v59 + 32))(&v74[*(v82 + 36)], v60, v62);
  v64 = v80;
  *v63 = v49;
  *(v63 + 8) = v64;
  *(v63 + 16) = v53 & 1;
  *(v63 + 24) = v81;
  v65 = *(v47 + *(v79 + 24));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_258A74828(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_258A74828((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[16 * v67];
  *(v68 + 4) = 0x62614C7974706D45;
  *(v68 + 5) = 0xEA00000000006C65;
  v91 = &unk_2869D4670;
  v69 = sub_258B003E4();
  sub_2589FC8C8(v69);
  sub_2589FCE08();
  sub_258A10704(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  return sub_258A7931C(v63, sub_2589C5144);
}

uint64_t sub_258A79290(uint64_t a1)
{
  sub_258A7937C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A7931C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A7937C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A793E0()
{
  result = qword_27F9701E8;
  if (!qword_27F9701E8)
  {
    sub_2589D1970(255);
    sub_2589C6AE0();
    sub_258A10704(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9701E8);
  }

  return result;
}

uint64_t sub_258A79490@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs()
{
  result = qword_27F9701F0;
  if (!qword_27F9701F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_258A79554(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258B032B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C937C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_258A7966C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A796E4@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00084();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9ViewModelOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B029C4();
  v38 = v13;
  v41 = *(v13 - 8);
  v14 = v41;
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258AB3820(v20);
  sub_258A812F8(v12, _s9ViewModelOMa);
  v21 = *(v14 + 16);
  v21(v18, v20, v13);
  sub_258B029B4();
  v22 = sub_258A7B8D4(v8);
  v39 = v23;
  v40 = v22;
  (*(v42 + 8))(v8, v43);
  v24 = v2[9];
  v43 = v24;
  v25 = _s5EntryVMa();
  v26 = *(*(v25 - 8) + 56);
  v26(v45 + v24, 1, 1, v25);
  v27 = v44;
  v28 = v38;
  v21(&v44[v2[7]], v18, v38);
  v26(v27 + v2[9], 1, 1, v25);
  sub_258A82704(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v46 = sub_258B02984();
  *(inited + 32) = sub_258B03414();
  *(inited + 40) = v30;
  v46 = &unk_2869D5368;
  sub_2589FC8C8(inited);
  v31 = *(v41 + 8);
  v31(v18, v28);
  v31(v20, v28);
  v33 = v45;
  v32 = v46;
  *v27 = 0;
  v34 = (v27 + v2[8]);
  v35 = v39;
  *v34 = v40;
  v34[1] = v35;
  *(v27 + v2[10]) = MEMORY[0x277D84F90];
  *(v27 + v2[11]) = v32;
  sub_258A829F8(v33 + v43, &qword_27F96D908, _s5EntryVMa);
  return sub_258A825B0(v27, v33, type metadata accessor for StateOfMindTimeline.DaySummary);
}

void *sub_258A79B58()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_258A81294(0, &qword_280DF8F88, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = v85 - v5;
  v93 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  v6 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v95 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A81294(0, &qword_27F96EBF0, MEMORY[0x277CC9578], v2);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = v85 - v10;
  v11 = sub_258AFFD44();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v11);
  v96 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9ViewModelOMa();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = (v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_258B00224();
  v17 = *(v88 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v88);
  v20 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_258B029C4();
  v90 = *(v101 - 8);
  v21 = *(v90 + 64);
  v22 = MEMORY[0x28223BE20](v101);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v85 - v25;
  v27 = sub_258B00084();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v92 = v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v85 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v85 - v36;
  v38 = *(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now + 8);
  (*(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now))(v35);
  v99 = v28;
  v100 = v37;
  v39 = v37;
  v40 = *(v28 + 16);
  v91 = v27;
  v40(v34, v39, v27);
  v41 = *(v17 + 16);
  v85[1] = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar;
  v41(v20, v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v88);
  sub_258B02964();
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v89;
  sub_258B00564();

  sub_258AB3820(v24);
  sub_258A812F8(v42, _s9ViewModelOMa);
  sub_258A827E8(&qword_27F9702C0, MEMORY[0x277CCB6A8]);
  v43 = sub_258B02AA4();
  v97 = v24;
  if (v43)
  {
    v44 = *(v1 + 16);
    v45 = v93;
    v46 = v95;
    v47 = v91;
    v40(&v95[*(v93 + 20)], v100, v91);
    v48 = sub_258B000C4();
    v49 = *(*(v48 - 8) + 56);
    v50 = v94;
    v49(v94, 1, 1, v48);
    v51 = v45[6];
    v49((v46 + v51), 1, 1, v48);
    v52 = (v46 + v45[7]);
    *(v46 + v45[8]) = 13;
    *(v46 + v45[9]) = 7;
    *v46 = 0;
    *(v46 + 8) = 2;
    v53 = v44;
    sub_258A1DF88(v50, v46 + v51);
    v54 = type metadata accessor for StateOfMindEntryModel(0);
    *v52 = 0;
    v52[1] = 0;
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v57 = sub_258A20C0C(v53, v46, nullsub_1, 0);

    v58 = *(v90 + 8);
    v59 = v101;
    v58(v97, v101);
    v58(v26, v59);
    (*(v99 + 8))(v100, v47);
  }

  else
  {
    v88 = v26;
    v89 = v40;
    v61 = v94;
    v60 = v95;
    v62 = v93;
    v63 = v90;
    sub_258B02954();
    sub_258AFFCF4();
    sub_258AFFD14();
    sub_258AFFD24();
    v64 = v98;
    sub_258B001B4();
    v65 = v99;
    v66 = *(v99 + 48);
    v67 = v64;
    v68 = v91;
    if (v66(v67, 1, v91) == 1)
    {
      v69 = v92;
      v89(v92, v100, v68);
      if (v66(v98, 1, v68) != 1)
      {
        sub_258A829F8(v98, &qword_27F96EBF0, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v70 = *(v65 + 32);
      v69 = v92;
      v70(v92, v98, v68);
    }

    v71 = *(v1 + 16);
    v89((v60 + v62[5]), v69, v68);
    v72 = sub_258B000C4();
    v73 = v68;
    v74 = *(*(v72 - 8) + 56);
    v74(v61, 1, 1, v72);
    v75 = v62[6];
    v74(v60 + v75, 1, 1, v72);
    v76 = (v60 + v62[7]);
    *(v60 + v62[8]) = 13;
    *(v60 + v62[9]) = 7;
    *v60 = 2;
    *(v60 + 8) = 0;
    v77 = v71;
    sub_258A1DF88(v61, v60 + v75);
    v78 = type metadata accessor for StateOfMindEntryModel(0);
    *v76 = 0;
    v76[1] = 0;
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v57 = sub_258A20C0C(v77, v60, nullsub_1, 0);

    v81 = *(v99 + 8);
    v81(v92, v73);
    (*(v86 + 8))(v96, v87);
    v82 = *(v63 + 8);
    v83 = v101;
    v82(v97, v101);
    v82(v88, v83);
    v81(v100, v73);
  }

  return v57;
}

double sub_258A7A4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

MentalHealthUI::StateOfMindTimeline::Model::TimeRange_optional __swiftcall StateOfMindTimeline.Model.TimeRange.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StateOfMindTimeline.Model.TimeRange.rawValue.getter()
{
  if (*v0)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_258A7A554()
{
  v1 = *v0;
  sub_258B03514();
  if (v1)
  {
    v2 = 7;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C93B20](v2);
  return sub_258B03554();
}

uint64_t sub_258A7A5A4()
{
  if (*v0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x259C93B20](v1);
}

uint64_t sub_258A7A5DC()
{
  v1 = *v0;
  sub_258B03514();
  if (v1)
  {
    v2 = 7;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C93B20](v2);
  return sub_258B03554();
}

void *sub_258A7A628@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_258A7A648(uint64_t *a1@<X8>)
{
  v2 = 7;
  if (!*v1)
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_258A7A664@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  sub_258A82830();
  v37 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v39 = sub_258B00224();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B00084();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_258B029C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v36 - v22;
  v24 = *(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v25 = *(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate + 8);
  v24(v21);
  (*(v9 + 16))(v12, v2 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v39);
  sub_258B02964();
  *(v2 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange);
  sub_258B02994();
  sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8]);
  result = sub_258B02A74();
  if (result)
  {
    v27 = *(v16 + 32);
    v27(v8, v20, v15);
    v28 = v16;
    v30 = v36;
    v29 = v37;
    v27(&v8[*(v37 + 48)], v23, v15);
    sub_258A811C4(v8, v30, sub_258A82830);
    v31 = *(v29 + 48);
    v32 = v38;
    v27(v38, v30, v15);
    v33 = *(v28 + 8);
    v33(v30 + v31, v15);
    sub_258A825B0(v8, v30, sub_258A82830);
    v34 = *(v29 + 48);
    sub_258A810D8();
    v27(&v32[*(v35 + 36)], (v30 + v34), v15);
    return (v33)(v30, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateOfMindTimeline.Model.__allocating_init(healthStore:)(void *a1)
{
  v2 = v1;
  v43 = _s9ViewModelOMa();
  v4 = *(*(v43 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v45 = sub_258B00084();
  v47 = *(v45 - 8);
  v9 = *(v47 + 64);
  v10 = MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  v40 = sub_258B00224();
  v46 = *(v40 - 8);
  v20 = *(v46 + 64);
  v21 = MEMORY[0x28223BE20](v40);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  v26 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_258B001A4();

  v27 = *(v2 + 48);
  v28 = *(v2 + 52);
  v29 = swift_allocObject();
  *(v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v30 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v48 = 0;
  sub_258B00524();
  (*(v16 + 32))(v29 + v30, v19, v15);
  *(v29 + 16) = a1;
  v41 = a1;
  sub_258B00074();
  sub_2589D3788();
  v32 = &v8[*(v31 + 48)];
  (*(v47 + 16))(v42, v13, v45);
  v33 = *(v46 + 16);
  v34 = v40;
  v33(v23, v25, v40);
  sub_258B02964();
  *v32 = sub_258A7B8D4(v13);
  v32[1] = v35;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v8, v44, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v8, _s9ViewModelOMa);
  swift_endAccess();
  v33((v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v25, v34);
  *(v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = 1;
  v36 = (v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  *v36 = sub_258A7A660;
  v36[1] = 0;
  v37 = (v29 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v37 = sub_258A7A660;
  v37[1] = 0;
  sub_258A7BF9C();
  sub_258A7C150();

  (*(v47 + 8))(v13, v45);
  (*(v46 + 8))(v25, v34);
  return v29;
}

uint64_t StateOfMindTimeline.Model.__allocating_init(healthStore:gregorianCalendar:timeRange:endDate:now:)(void *a1, uint64_t a2, unsigned __int8 *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v56 = a6;
  v57 = a7;
  v47 = a5;
  v58 = a4;
  v55 = a2;
  v50 = a1;
  v53 = sub_258B00224();
  v60 = *(v53 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = _s9ViewModelOMa();
  v12 = *(*(v52 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v59 = sub_258B00084();
  v49 = *(v59 - 8);
  v17 = v49;
  v18 = *(v49 + 64);
  v19 = MEMORY[0x28223BE20](v59);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v46 - v28;
  v30 = *(v8 + 48);
  v31 = *(v8 + 52);
  v32 = swift_allocObject();
  v48 = *a3;
  *(v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v33 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v61 = 0;
  sub_258B00524();
  (*(v26 + 32))(v32 + v33, v29, v25);
  v34 = v50;
  *(v32 + 16) = v50;
  v50 = v34;
  v58();
  sub_2589D3788();
  v36 = &v16[*(v35 + 48)];
  (*(v17 + 16))(v21, v23, v59);
  v37 = *(v60 + 16);
  v38 = v55;
  v39 = v53;
  v37(v51, v55, v53);
  sub_258B02964();
  *v36 = sub_258A7B8D4(v23);
  v36[1] = v40;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v16, v54, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v16, _s9ViewModelOMa);
  swift_endAccess();
  v37((v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v38, v39);
  *(v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = v48;
  v41 = (v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v42 = v57;
  v43 = v47;
  *v41 = v58;
  v41[1] = v43;
  v44 = (v32 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v44 = v56;
  v44[1] = v42;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v60 + 8))(v38, v39);
  (*(v49 + 8))(v23, v59);
  return v32;
}

uint64_t StateOfMindTimeline.Model.init(healthStore:gregorianCalendar:timeRange:endDate:now:)(void *a1, uint64_t a2, unsigned __int8 *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v52 = a6;
  v53 = a7;
  v54 = a5;
  v56 = a4;
  v51 = a2;
  v46 = a1;
  v49 = sub_258B00224();
  v57 = *(v49 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = _s9ViewModelOMa();
  v12 = *(*(v48 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v48);
  v50 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v43[-v15];
  v55 = sub_258B00084();
  v45 = *(v55 - 8);
  v17 = v45;
  v18 = *(v45 + 64);
  v19 = MEMORY[0x28223BE20](v55);
  v21 = &v43[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v43[-v22];
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v43[-v28];
  v44 = *a3;
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v30 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v58 = 0;
  sub_258B00524();
  (*(v26 + 32))(v8 + v30, v29, v25);
  v31 = v46;
  *(v8 + 16) = v46;
  v46 = v31;
  v56();
  sub_2589D3788();
  v33 = &v16[*(v32 + 48)];
  (*(v17 + 16))(v21, v23, v55);
  v34 = *(v57 + 16);
  v35 = v51;
  v36 = v49;
  v34(v47, v51, v49);
  sub_258B02964();
  *v33 = sub_258A7B8D4(v23);
  v33[1] = v37;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v16, v50, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v16, _s9ViewModelOMa);
  swift_endAccess();
  v34((v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v35, v36);
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = v44;
  v38 = (v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v39 = v53;
  v40 = v54;
  *v38 = v56;
  v38[1] = v40;
  v41 = (v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v41 = v52;
  v41[1] = v39;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v57 + 8))(v35, v36);
  (*(v45 + 8))(v23, v55);
  return v8;
}

uint64_t sub_258A7B8D4(uint64_t a1)
{
  v2 = sub_258AFFFA4();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_258AFFEF4();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_258AFFF54();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258AFFFD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v41 - v22;
  MEMORY[0x28223BE20](v21);
  v48 = &v41 - v24;
  sub_258A81294(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v41 - v27;
  v50 = a1;
  if (sub_258B00124())
  {
    v29 = sub_258B000E4();
    v30 = *(*(v29 - 8) + 56);
    v45 = v28;
    v30(v28, 1, 1, v29);
    sub_258A828E0();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_258B2C470;
    MEMORY[0x259C90120]();
    sub_258AFFF44();
    sub_258AFFED4();
    (*(v8 + 8))(v11, v46);
    v32 = *(v13 + 8);
    v32(v20, v12);
    sub_258AFFEE4();
    v33 = v48;
    sub_258AFFEB4();
    (*(v47 + 8))(v7, v49);
    v32(v23, v12);
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_258A829A4();
    sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428]);
    sub_258B00064();
    v32(v33, v12);
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v34 = sub_258AFFD94();
    if (*(v31 + 16))
    {
      v35 = v45;
      v36 = sub_258B02B24();
    }

    else
    {
      v36 = v34;

      v35 = v45;
    }

    sub_258A829F8(v35, &qword_27F9702D0, MEMORY[0x277CC9788]);
    return v36;
  }

  else
  {
    MEMORY[0x259C90120]();
    sub_258AFFF44();
    sub_258AFFED4();
    (*(v8 + 8))(v11, v46);
    v37 = *(v13 + 8);
    v37(v17, v12);
    sub_258AFFEE4();
    sub_258AFFEB4();
    (*(v47 + 8))(v7, v49);
    v37(v20, v12);
    v38 = v42;
    sub_258AFFF64();
    v39 = v48;
    sub_258AFFFC4();
    (*(v43 + 8))(v38, v44);
    v37(v23, v12);
    sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428]);
    sub_258B00064();
    v37(v39, v12);
    return v51;
  }
}

void sub_258A7BF9C()
{
  v1 = *v0;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  v2 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v9[4] = sub_258A82898;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_258A7F298;
  v9[3] = &block_descriptor_56;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithSampleType:v2 predicate:0 updateHandler:v6];

  _Block_release(v6);

  [v0[2] executeQuery_];
  v8 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery);
  *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = v7;
}

uint64_t sub_258A7C150()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D766F0];
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_258A810B8;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_258A7D3C8;
  v9[3] = &block_descriptor_10;
  v5 = _Block_copy(v9);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  v7 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver);
  *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = v6;
  return swift_unknownObjectRelease();
}

uint64_t StateOfMindTimeline.Model.deinit()
{
  sub_258A7C474();
  v1 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery;
  if (*(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery))
  {
    [*(v0 + 16) stopQuery_];
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar;
  v4 = sub_258B00224();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate + 8);

  v6 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now + 8);

  v7 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver);
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__viewModel;
  sub_258A81294(0, &qword_27F970248, _s9ViewModelOMa, MEMORY[0x277CBCED0]);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_258A7C474()
{
  v1 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver;
  v2 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();

    v5 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

uint64_t StateOfMindTimeline.Model.__deallocating_deinit()
{
  StateOfMindTimeline.Model.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258A7C570(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_258B00384();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258B02624();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258B02654();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v21 = a4;
    sub_258B00364();
    v22 = a4;
    v23 = sub_258B00374();
    v24 = sub_258B02E84();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446466;
      v27 = sub_258B035A4();
      v29 = sub_2589F1F78(v27, v28, aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v40 = a4;
      v30 = a4;
      sub_258A82948(0, &qword_27F96D800);
      v31 = sub_258B02B44();
      v33 = sub_2589F1F78(v31, v32, aBlock);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_2589A1000, v23, v24, "[%{public}s] HKStateOfMind observer query failed: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v26, -1, -1);
      MEMORY[0x259C945C0](v25, -1, -1);
    }

    else
    {
    }

    return (*(v38 + 8))(v10, v39);
  }

  else
  {
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v39 = sub_258B02F54();
    aBlock[4] = sub_258A828B0;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_62;
    v34 = _Block_copy(aBlock);

    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198]);
    sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    sub_258B03114();
    v35 = v39;
    MEMORY[0x259C93560](0, v20, v15, v34);
    _Block_release(v34);

    (*(v12 + 8))(v15, v11);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_258A7CA44()
{
  v1 = v0;
  v75 = *v0;
  v2 = sub_258B02624();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B02654();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_258B02634();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A810D8();
  v12 = v11 - 8;
  v67 = *(v11 - 8);
  v13 = *(v67 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v69 = v15;
  v70 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v59 - v16;
  v18 = dispatch_group_create();
  sub_258A7A664(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  dispatch_group_enter(v18);
  v20 = sub_258B02984();
  v21 = *(v12 + 44);
  result = sub_258B029A4();
  v23 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) == 0;
    v63 = v3;
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = 7;
    }

    v26 = swift_allocObject();
    v64 = v6;
    v27 = v26;
    v26[2] = v19;
    v26[3] = v18;
    v74 = v19;
    v26[4] = v75;
    v28 = objc_allocWithZone(MEMORY[0x277D28078]);
    v62 = v2;
    v29 = v28;

    v30 = v18;
    v31 = sub_258B00194();
    v81 = sub_258A8116C;
    v82 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v59[1] = &v79;
    v79 = sub_258A98BAC;
    v80 = &block_descriptor_20;
    v32 = _Block_copy(&aBlock);
    v33 = [v29 initWithDayIndexRange:v20 gregorianCalendar:v23 ascending:v31 limit:1 resultsHandler:{v25, v32}];
    v61 = v33;
    _Block_release(v32);

    v34 = v1[2];
    [v34 executeQuery_];
    v35 = swift_allocObject();
    *(v35 + 16) = 2;
    dispatch_group_enter(v30);
    sub_258A82704(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_258B2E600;
    sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
    v37 = [swift_getObjCClassFromMetadata() stateOfMindType];
    v38 = [objc_opt_self() queryDescriptorWithSampleType_];

    *(v36 + 32) = v38;
    v39 = swift_allocObject();
    v39[2] = v35;
    v39[3] = v30;
    v39[4] = v75;
    v40 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_2589F4488(0, &qword_27F970278, 0x277CCD848);
    v75 = v30;

    v41 = sub_258B02C64();

    v81 = sub_258A811B8;
    v82 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_258A7F36C;
    v80 = &block_descriptor_29;
    v42 = _Block_copy(&aBlock);
    v43 = [v40 initWithQueryDescriptors:v41 limit:1 resultsHandler:v42];
    v60 = v43;

    _Block_release(v42);

    [v34 executeQuery_];
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v45 = v65;
    v44 = v66;
    v46 = v68;
    (*(v66 + 104))(v65, *MEMORY[0x277D851C8], v68);
    v47 = sub_258B02F74();
    (*(v44 + 8))(v45, v46);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v70;
    sub_258A811C4(v17, v70, sub_258A810D8);
    v50 = (*(v67 + 80) + 40) & ~*(v67 + 80);
    v51 = swift_allocObject();
    v52 = v74;
    v51[2] = v48;
    v51[3] = v52;
    v51[4] = v35;
    sub_258A825B0(v49, v51 + v50, sub_258A810D8);
    v81 = sub_258A8122C;
    v82 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_2589E92FC;
    v80 = &block_descriptor_36;
    v53 = _Block_copy(&aBlock);

    v54 = v71;
    sub_258B02644();
    v76 = MEMORY[0x277D84F90];
    sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198]);
    sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    v55 = v73;
    v56 = v17;
    v57 = v62;
    sub_258B03114();
    v58 = v75;
    sub_258B02F24();
    _Block_release(v53);

    (*(v63 + 8))(v55, v57);
    (*(v72 + 8))(v54, v64);
    sub_258A812F8(v56, sub_258A810D8);
  }

  return result;
}

uint64_t sub_258A7D370()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_258A7CA44();
  }

  return result;
}

uint64_t sub_258A7D3C8(uint64_t a1)
{
  v2 = sub_258AFFBF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_258AFFBD4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_258A7D4BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_258B00384();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a3;
    sub_258B00364();
    v15 = a3;
    v16 = sub_258B00374();
    v17 = sub_258B02E84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a5;
      v19 = v18;
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v19 = 136446466;
      v20 = sub_258B035A4();
      v22 = sub_2589F1F78(v20, v21, v36);
      v33 = v9;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v35 = a3;
      v24 = a3;
      sub_258A82948(0, &qword_27F96D800);
      v25 = sub_258B02B44();
      v27 = sub_2589F1F78(v25, v26, v36);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] HKMHDaySummaryQuery query failed: %s", v19, 0x16u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v19;
      a5 = v34;
      MEMORY[0x259C945C0](v29, -1, -1);

      (*(v10 + 8))(v13, v33);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }

  swift_beginAccess();
  v30 = *(a4 + 16);
  *(a4 + 16) = a2;
  sub_258B003E4();

  dispatch_group_leave(a5);
}

void sub_258A7D75C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_258B00384();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a3;
    sub_258B00364();
    v15 = a3;
    v16 = sub_258B00374();
    v17 = sub_258B02E84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a4;
      v19 = v18;
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v19 = 136446466;
      v20 = sub_258B035A4();
      v22 = sub_2589F1F78(v20, v21, v37);
      v35 = a5;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v36 = a3;
      v24 = a3;
      sub_258A82948(0, &qword_27F96D800);
      v25 = sub_258B02B44();
      v27 = sub_2589F1F78(v25, v26, v37);
      a5 = v35;

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] HKMHDaySummaryQuery query failed: %s", v19, 0x16u);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v19;
      a4 = v34;
      MEMORY[0x259C945C0](v29, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v13, v9);
  }

  if (a2)
  {
    if (a2 >> 62)
    {
      v30 = sub_258B032B4();
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v30 != 0;
  }

  else
  {
    v31 = 2;
  }

  swift_beginAccess();
  *(a4 + 16) = v31;
  dispatch_group_leave(a5);
}

uint64_t sub_258A7DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    sub_258B003E4();
    sub_258A7DAE4(v9, v10 & 1, a4);
  }

  return result;
}

uint64_t sub_258A7DAE4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_258A81358(0, &qword_27F970280, &qword_27F970288, MEMORY[0x277D83658], MEMORY[0x277D843E8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_258B02624();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258B02654();
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = sub_258A811C4(a3, v11, sub_258A810D8);
    MEMORY[0x28223BE20](v22);
    *(&v31 - 2) = v4;
    *(&v31 - 1) = a1;
    v23 = sub_258A81468(v11, sub_258A81460, (&v31 - 4));
    sub_258A82338(v11, &qword_27F970280, &qword_27F970288, MEMORY[0x277D83658], MEMORY[0x277D843E8]);
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v24 = sub_258B02F54();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v23;
    v38 = sub_258A82394;
    v39 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v27 = &block_descriptor_47;
  }

  else
  {
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v24 = sub_258B02F54();
    v28 = swift_allocObject();
    swift_weakInit();
    v38 = sub_258A81430;
    v39 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v27 = &block_descriptor_40;
  }

  v36 = sub_2589E92FC;
  v37 = v27;
  v29 = _Block_copy(&aBlock);

  sub_258B02644();
  aBlock = MEMORY[0x277D84F90];
  sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198]);
  sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_258A31190();
  sub_258B03114();
  MEMORY[0x259C93560](0, v21, v16, v29);
  _Block_release(v29);

  (*(v13 + 8))(v16, v12);
  return (*(v33 + 8))(v21, v32);
}

uint64_t sub_258A7DFC4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_258A7E024()
{
  v1 = v0;
  v28 = sub_258B00224();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _s9ViewModelOMa();
  v6 = *(*(v27 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v27);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_258B00084();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  v20 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v21 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate + 8);
  v20(v17);
  sub_2589D3788();
  v23 = &v10[*(v22 + 48)];
  (*(v12 + 16))(v16, v19, v11);
  (*(v2 + 16))(v5, v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v28);
  sub_258B02964();
  *v23 = sub_258A7B8D4(v19);
  v23[1] = v24;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A811C4(v10, v29, _s9ViewModelOMa);

  sub_258B00574();
  sub_258A812F8(v10, _s9ViewModelOMa);
  return (*(v12 + 8))(v19, v11);
}

uint64_t sub_258A7E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v148 = a3;
  v114 = a1;
  v117 = a4;
  v137 = sub_258AFFF74();
  v146 = *(v137 - 8);
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_258AFFF24();
  v145 = *(v135 - 8);
  v7 = *(v145 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_258AFFF34();
  v144 = *(v133 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_258AFFFD4();
  v143 = *(v131 - 8);
  v11 = *(v143 + 64);
  v12 = MEMORY[0x28223BE20](v131);
  v130 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v129 = &v105 - v15;
  MEMORY[0x28223BE20](v14);
  v128 = &v105 - v16;
  v141 = _s5EntryVMa();
  v140 = *(v141 - 8);
  v17 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v138 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A81294(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v115 = &v105 - v21;
  v116 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v22 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v113 = (&v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_258B00084();
  v24 = *(v139 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v139);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_258B029C4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v105 - v34;
  v111 = v29;
  v147 = *(v29 + 16);
  v147(&v105 - v34, a2, v28);
  sub_258B029B4();
  v108 = sub_258A7B8D4(v27);
  v107 = v36;
  v37 = *(v24 + 8);
  v126 = v27;
  v127 = v24 + 8;
  v125 = v37;
  v37(v27, v139);
  v150 = a2;
  v38 = sub_258A79554(sub_258A826B4, v149, v148);
  v39 = v141;
  v40 = *(v140 + 56);
  v106 = *(v116 + 28);
  v40(v117 + v106, 1, 1, v141);
  v110 = v33;
  v109 = v35;
  v112 = v28;
  v147(v33, v35, v28);
  if (!v38)
  {
    v45 = v115;
    v40(v115, 1, 1, v39);
    v46 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v41 = [v38 dailyStateOfMind];
  if (v41)
  {
    v42 = v115;
    sub_258AB9F98(v41, v115);
    v43 = v42;
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v115;
  }

  v40(v43, v44, 1, v39);
  v47 = [v38 momentaryStatesOfMind];
  sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
  sub_258B02C74();

  v48 = sub_258B003E4();
  v151[0] = sub_2589F3C64(v48);
  sub_258A7F424(v151);

  v49 = v151[0];
  if (v151[0] < 0 || (v151[0] & 0x4000000000000000) != 0)
  {
    v92 = v151[0];
    v50 = sub_258B032B4();
    v49 = v92;
    if (v50)
    {
      goto LABEL_9;
    }

LABEL_25:

    v46 = MEMORY[0x277D84F90];
    v45 = v115;
LABEL_26:
    sub_258A82704(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v94 = v109;
    v151[0] = sub_258B02984();
    *(inited + 32) = sub_258B03414();
    *(inited + 40) = v95;
    v151[0] = &unk_2869D5718;
    sub_2589FC8C8(inited);

    v96 = v111;
    v97 = v112;
    (*(v111 + 8))(v94, v112);
    v98 = v151[0];
    v99 = v113;
    *v113 = v114;
    v100 = v116;
    (*(v96 + 32))(v99 + *(v116 + 20), v110, v97);
    v101 = (v99 + v100[6]);
    v102 = v107;
    *v101 = v108;
    v101[1] = v102;
    sub_258A82754(v45, v99 + v100[7]);
    *(v99 + v100[8]) = v46;
    *(v99 + v100[9]) = v98;
    v103 = v117;
    sub_258A829F8(v117 + v106, &qword_27F96D908, _s5EntryVMa);
    return sub_258A825B0(v99, v103, type metadata accessor for StateOfMindTimeline.DaySummary);
  }

  v50 = *(v151[0] + 16);
  if (!v50)
  {
    goto LABEL_25;
  }

LABEL_9:
  v51 = v49;
  v152 = MEMORY[0x277D84F90];
  sub_258AA926C(0, v50 & ~(v50 >> 63), 0);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v105 = v38;
    v52 = 0;
    v53 = v51;
    v122 = v51 & 0xC000000000000001;
    v46 = v152;
    v121 = (v145 + 8);
    v120 = (v144 + 8);
    v119 = v143 + 8;
    v118 = (v146 + 8);
    v124 = v51;
    v123 = v50;
    v54 = (v143 + 8);
    v55 = v128;
    while (1)
    {
      if (v122)
      {
        v56 = MEMORY[0x259C937C0](v52, v53);
      }

      else
      {
        v56 = *(v53 + 8 * v52 + 32);
      }

      v57 = v56;
      v58 = [v56 UUID];
      sub_258B000B4();

      v59 = [v57 reflectiveInterval];
      v148 = v46;
      if (v59 == 2)
      {
        [v57 valenceClassification];
        [v57 reflectiveInterval];
        v60 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
      }

      else
      {
        if (v59 != 1)
        {
          v146 = 0xE000000000000000;
          v147 = 0;
          goto LABEL_20;
        }

        [v57 valenceClassification];
        v60 = HKUILocalizedStringForValenceClassification();
      }

      v61 = v60;
      v62 = sub_258B02B14();
      v146 = v63;
      v147 = v62;

LABEL_20:
      v64 = sub_258ABA3E0();
      v144 = v65;
      v145 = v64;
      v143 = sub_258ABA5F4();
      v142 = v66;
      v67 = [v57 startDate];
      v68 = v126;
      sub_258B00034();

      v69 = v130;
      MEMORY[0x259C90120]();
      v70 = v134;
      sub_258AFFF14();
      v71 = v132;
      sub_258AFFF04();
      (*v121)(v70, v135);
      v72 = v129;
      sub_258AFFEC4();
      (*v120)(v71, v133);
      v73 = *v54;
      v74 = v69;
      v75 = v131;
      (*v54)(v74, v131);
      v76 = v136;
      sub_258AFFF64();
      sub_258AFFFB4();
      (*v118)(v76, v137);
      v73(v72, v75);
      sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428]);
      sub_258B00064();
      v73(v55, v75);
      v125(v68, v139);
      v77 = v151[0];
      v78 = v151[1];
      [v57 valence];
      v80 = v79;

      v81 = v141;
      v82 = v138;
      v83 = &v138[*(v141 + 20)];
      v84 = v146;
      *v83 = v147;
      *(v83 + 1) = v84;
      v85 = (v82 + v81[6]);
      v86 = v144;
      *v85 = v145;
      v85[1] = v86;
      v87 = (v82 + v81[7]);
      v88 = v142;
      *v87 = v143;
      v87[1] = v88;
      v89 = (v82 + v81[8]);
      *v89 = v77;
      v89[1] = v78;
      *(v82 + v81[9]) = v80;
      v46 = v148;
      v152 = v148;
      v91 = *(v148 + 16);
      v90 = *(v148 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_258AA926C(v90 > 1, v91 + 1, 1);
        v46 = v152;
      }

      ++v52;
      *(v46 + 16) = v91 + 1;
      sub_258A825B0(v82, v46 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v91, _s5EntryVMa);
      v53 = v124;
      if (v123 == v52)
      {

        v45 = v115;
        v38 = v105;
        goto LABEL_26;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_258A7F100(uint64_t a1, uint64_t a2)
{
  v3 = _s9ViewModelOMa();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v11 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    sub_258B003E4();
    sub_258AB3AE0(v7, a2, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A811C4(v9, v7, _s9ViewModelOMa);
    sub_258B00574();
    return sub_258A812F8(v9, _s9ViewModelOMa);
  }

  return result;
}

void sub_258A7F298(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a4;
  v7(v11, sub_258A828A0, v9, a4);
}

uint64_t sub_258A7F36C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
    v5 = sub_258B02C74();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_258A7F424(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_258A7F4A0(v6);
  return sub_258B03234();
}

void sub_258A7F4A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_258A7F7D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_258A7F5B4(0, v2, 1, a1);
  }
}

void sub_258A7F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_258B00084();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 startDate];
      sub_258B00034();

      v23 = [v21 startDate];
      v24 = v35;
      sub_258B00034();

      LOBYTE(v23) = sub_258B00024();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_258A7F7D4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_258B00084();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_258AE8CC8(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_258A80044((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_258AE8CC8(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_258AE8C3C(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      v25 = v124;
      sub_258B00034();

      v26 = [v23 startDate];
      v27 = v125;
      sub_258B00034();

      LODWORD(v122) = sub_258B00024();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 startDate];
        v35 = v124;
        sub_258B00034();

        v36 = [v33 startDate];
        v37 = v125;
        sub_258B00034();

        LODWORD(v36) = sub_258B00024() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_258A74C78(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_258A74C78((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_258A80044((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_258AE8CC8(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_258AE8C3C(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 startDate];
    v54 = v124;
    sub_258B00034();

    v55 = [v52 startDate];
    v56 = v125;
    sub_258B00034();

    LOBYTE(v55) = sub_258B00024();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}