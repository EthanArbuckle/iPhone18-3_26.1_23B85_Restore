uint64_t StaticHome.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D538, &qword_1D1EA5BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF4D90();
  sub_1D1E6930C();
  LOBYTE(v24) = 0;
  sub_1D1E66A7C();
  sub_1D1CF8D7C(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticHome();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v24) = 1;
    sub_1D1E68ECC();
    v15 = v11[6];
    LOBYTE(v24) = 2;
    sub_1D1E669FC();
    sub_1D1CF8D7C(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v16 = v11[7];
    LOBYTE(v24) = 3;
    type metadata accessor for StaticRoom(0);
    sub_1D1CF8D7C(&qword_1EC6448A0, type metadata accessor for StaticRoom);
    sub_1D1E68F1C();
    v17 = v11[8];
    LOBYTE(v24) = 4;
    type metadata accessor for StaticUser();
    sub_1D1CF8D7C(&qword_1EC64CD70, type metadata accessor for StaticUser);
    sub_1D1E68F1C();
    v18 = *(v3 + v11[9]);
    LOBYTE(v24) = 5;
    sub_1D1E68EDC();
    LOBYTE(v24) = *(v3 + v11[10]);
    v25 = 6;
    sub_1D1CF4DE4();
    sub_1D1E68F1C();
    LOBYTE(v24) = *(v3 + v11[11]);
    v25 = 7;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v24 = *(v3 + v11[12]);
    v25 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1CF4E8C(&qword_1EC644D58, &qword_1EE07B258);
    sub_1D1E68F1C();
    v24 = *(v3 + v11[13]);
    v25 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D1CF4F28(&qword_1EC64D550);
    sub_1D1E68F1C();
    v24 = *(v3 + v11[14]);
    v25 = 10;
    sub_1D1E68F1C();
    v24 = *(v3 + v11[15]);
    v25 = 11;
    sub_1D1E68F1C();
    v24 = *(v3 + v11[16]);
    v25 = 12;
    sub_1D1E68F1C();
    v24 = *(v3 + v11[17]);
    v25 = 13;
    sub_1D1E68F1C();
    v24 = *(v3 + v11[18]);
    v25 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D558, &qword_1D1EA5BE8);
    sub_1D1CF4F94(&qword_1EC64D560, &qword_1EC64D568);
    sub_1D1E68F1C();
    v19 = *(v3 + v11[19]);
    LOBYTE(v24) = 15;
    sub_1D1E68EDC();
    v24 = *(v3 + v11[20]);
    v25 = 16;
    sub_1D1E68E5C();
    v20 = *(v3 + v11[21]);
    LOBYTE(v24) = 17;
    sub_1D1E68EDC();
    v21 = v11[22];
    LOBYTE(v24) = 18;
    type metadata accessor for StaticResident();
    sub_1D1CF8D7C(&qword_1EC64CDB8, type metadata accessor for StaticResident);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticHome.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticResident();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v104 - v9;
  v11 = sub_1D1E66A7C();
  v109 = *(v11 - 8);
  v12 = *(v109 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v117 = &v104 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v116 = &v104 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v115 = &v104 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v114 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v104 - v23;
  v25 = sub_1D1E669FC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v104 - v31;
  v112 = sub_1D1CF8D7C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v33 = type metadata accessor for StaticHome();
  v34 = &v2[*(v33 + 20)];
  v35 = *v34;
  v36 = *(v34 + 1);
  sub_1D1E678EC();
  v111 = v33;
  sub_1D1741C08(&v2[*(v33 + 24)], v32, &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = (*(v26 + 48))(v32, 1, v25);
  v106 = v10;
  if (v37 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v38 = v110;
    (*(v26 + 32))(v110, v32, v25);
    sub_1D1E6922C();
    sub_1D1CF8D7C(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v26 + 8))(v38, v25);
  }

  v39 = v111;
  v40 = &v2[v111[7]];
  StaticRoom.hash(into:)(a1);
  v41 = &v2[v39[8]];
  sub_1D1E676EC();
  v42 = type metadata accessor for StaticUser();
  v43 = &v41[v42[5]];
  v44 = *v43;
  v45 = *(v43 + 1);
  sub_1D1E678EC();
  v46 = &v41[v42[6]];
  sub_1D1E676EC();
  MEMORY[0x1D3892850](v41[v42[7]]);
  MEMORY[0x1D3892850](v41[v42[8]]);
  v47 = v2[v39[9]];
  sub_1D1E6922C();
  MEMORY[0x1D3892850](v2[v39[10]]);
  MEMORY[0x1D3892850](v2[v39[11]]);
  v48 = v39[12];
  v110 = v2;
  v49 = *&v2[v48];
  MEMORY[0x1D3892850](*(v49 + 16));
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = *(v109 + 16);
    v52 = v49 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v53 = *(v109 + 72);
    v54 = (v109 + 8);
    do
    {
      v51(v24, v52, v11);
      sub_1D1E676EC();
      (*v54)(v24, v11);
      v52 += v53;
      --v50;
    }

    while (v50);
  }

  v55 = *&v110[v111[13]];
  MEMORY[0x1D3892850](*(v55 + 16));
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = (v55 + 40);
    do
    {
      v58 = *(v57 - 1);
      v59 = *v57;

      sub_1D1E678EC();

      v57 += 2;
      --v56;
    }

    while (v56);
  }

  v60 = *&v110[v111[14]];
  MEMORY[0x1D3892850](*(v60 + 16));
  v61 = *(v60 + 16);
  v62 = v114;
  if (v61)
  {
    v63 = *(v109 + 16);
    v64 = v60 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v65 = *(v109 + 72);
    v66 = (v109 + 8);
    do
    {
      v63(v62, v64, v11);
      sub_1D1E676EC();
      v62 = v114;
      (*v66)(v114, v11);
      v64 += v65;
      --v61;
    }

    while (v61);
  }

  v67 = *&v110[v111[15]];
  MEMORY[0x1D3892850](*(v67 + 16));
  v68 = *(v67 + 16);
  v69 = v115;
  if (v68)
  {
    v70 = *(v109 + 16);
    v71 = v67 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v72 = *(v109 + 72);
    v73 = (v109 + 8);
    do
    {
      v70(v69, v71, v11);
      sub_1D1E676EC();
      v69 = v115;
      (*v73)(v115, v11);
      v71 += v72;
      --v68;
    }

    while (v68);
  }

  v74 = *&v110[v111[16]];
  MEMORY[0x1D3892850](*(v74 + 16));
  v75 = *(v74 + 16);
  v76 = v116;
  if (v75)
  {
    v77 = *(v109 + 16);
    v78 = v74 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v79 = *(v109 + 72);
    v80 = (v109 + 8);
    do
    {
      v77(v76, v78, v11);
      sub_1D1E676EC();
      v76 = v116;
      (*v80)(v116, v11);
      v78 += v79;
      --v75;
    }

    while (v75);
  }

  v81 = *&v110[v111[17]];
  MEMORY[0x1D3892850](*(v81 + 16));
  v82 = *(v81 + 16);
  v83 = v117;
  if (v82)
  {
    v84 = *(v109 + 16);
    v85 = v81 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v86 = *(v109 + 72);
    v87 = (v109 + 8);
    do
    {
      v84(v83, v85, v11);
      sub_1D1E676EC();
      v83 = v117;
      (*v87)(v117, v11);
      v85 += v86;
      --v82;
    }

    while (v82);
  }

  v89 = v110;
  v88 = v111;
  sub_1D1771168(a1, *&v110[v111[18]]);
  v90 = v89[v88[19]];
  sub_1D1E6922C();
  v91 = *&v89[v88[20]];
  if (v91)
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*(v91 + 16));
    v92 = *(v91 + 16);
    v93 = v113;
    if (v92)
    {
      v94 = *(v109 + 16);
      v95 = v91 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v96 = *(v109 + 72);
      v97 = (v109 + 8);
      do
      {
        v94(v93, v95, v11);
        sub_1D1E676EC();
        v93 = v113;
        (*v97)(v113, v11);
        v95 += v96;
        --v92;
      }

      while (v92);
    }
  }

  else
  {
    sub_1D1E6922C();
  }

  v99 = v110;
  v98 = v111;
  v100 = v110[v111[21]];
  sub_1D1E6922C();
  v101 = v106;
  sub_1D1741C08(&v99[v98[22]], v106, &qword_1EC64D530, &qword_1D1EA5BD8);
  if ((*(v107 + 48))(v101, 1, v108) == 1)
  {
    return sub_1D1E6922C();
  }

  v103 = v105;
  sub_1D1CF8DC4(v101, v105, type metadata accessor for StaticResident);
  sub_1D1E6922C();
  StaticResident.hash(into:)(a1);
  return sub_1D1CF5098(v103, type metadata accessor for StaticResident);
}

uint64_t StaticHome.hashValue.getter()
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticHome.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = &v66 - v5;
  v72 = type metadata accessor for StaticUser();
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for StaticRoom(0);
  v8 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v66 - v12;
  v14 = sub_1D1E66A7C();
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D570, &qword_1D1EA5BF0);
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v21 = type metadata accessor for StaticHome();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF4D90();
  v79 = v20;
  v26 = v80;
  sub_1D1E692FC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v75;
  v67 = v21;
  v68 = a1;
  v80 = v24;
  LOBYTE(v81) = 0;
  sub_1D1CF8D7C(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v28 = v76;
  sub_1D1E68D7C();
  v30 = *(v74 + 32);
  v31 = v80;
  v66 = v14;
  v30(v80, v28, v14);
  LOBYTE(v81) = 1;
  v32 = sub_1D1E68D2C();
  v33 = v67;
  v34 = &v31[v67[5]];
  *v34 = v32;
  v34[1] = v35;
  sub_1D1E669FC();
  LOBYTE(v81) = 2;
  sub_1D1CF8D7C(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v13, &v31[v33[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v81) = 3;
  sub_1D1CF8D7C(&qword_1EC6448B8, type metadata accessor for StaticRoom);
  sub_1D1E68D7C();
  sub_1D1CF8DC4(v27, &v31[v33[7]], type metadata accessor for StaticRoom);
  LOBYTE(v81) = 4;
  sub_1D1CF8D7C(&qword_1EC64CE28, type metadata accessor for StaticUser);
  v36 = v71;
  sub_1D1E68D7C();
  sub_1D1CF8DC4(v36, &v31[v33[8]], type metadata accessor for StaticUser);
  LOBYTE(v81) = 5;
  v31[v33[9]] = sub_1D1E68D3C() & 1;
  v82 = 6;
  sub_1D1CF4E38();
  sub_1D1E68D7C();
  v31[v33[10]] = v81;
  v82 = 7;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  v73 = 0;
  v31[v33[11]] = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v82 = 8;
  sub_1D1CF4E8C(&qword_1EC644DA0, &qword_1EC644B20);
  sub_1D1E68D7C();
  v76 = 0;
  *&v80[v67[12]] = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  v82 = 9;
  sub_1D1CF4F28(&qword_1EC64D580);
  v49 = v76;
  sub_1D1E68D7C();
  v76 = v49;
  if (v49)
  {
    (*(v77 + 8))(v79, v78);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    LODWORD(v75) = 0;
    LODWORD(v77) = 0;
    LODWORD(v78) = 0;
    LODWORD(v79) = 0;
    v53 = v73;
  }

  else
  {
    *&v80[v67[13]] = v81;
    v82 = 10;
    v54 = v76;
    sub_1D1E68D7C();
    v76 = v54;
    if (v54)
    {
      (*(v77 + 8))(v79, v78);
      v51 = 0;
      v52 = 0;
      LODWORD(v75) = 0;
      LODWORD(v77) = 0;
      LODWORD(v78) = 0;
      LODWORD(v79) = 0;
      v50 = 1;
      v53 = v73;
    }

    else
    {
      *&v80[v67[14]] = v81;
      v82 = 11;
      v55 = v76;
      sub_1D1E68D7C();
      v76 = v55;
      if (v55)
      {
        (*(v77 + 8))(v79, v78);
        v52 = 0;
        LODWORD(v75) = 0;
        LODWORD(v77) = 0;
        LODWORD(v78) = 0;
        LODWORD(v79) = 0;
        v50 = 1;
        v51 = 1;
        v53 = v73;
      }

      else
      {
        *&v80[v67[15]] = v81;
        v82 = 12;
        v56 = v76;
        sub_1D1E68D7C();
        v76 = v56;
        if (v56)
        {
          (*(v77 + 8))(v79, v78);
          LODWORD(v75) = 0;
          LODWORD(v77) = 0;
          LODWORD(v78) = 0;
          LODWORD(v79) = 0;
          v50 = 1;
          v51 = 1;
          v52 = 1;
          v53 = v73;
        }

        else
        {
          *&v80[v67[16]] = v81;
          v82 = 13;
          v57 = v76;
          sub_1D1E68D7C();
          v76 = v57;
          if (v57)
          {
            (*(v77 + 8))(v79, v78);
            LODWORD(v77) = 0;
            LODWORD(v78) = 0;
            LODWORD(v79) = 0;
            v50 = 1;
            v51 = 1;
            v52 = 1;
            LODWORD(v75) = 1;
            v53 = v73;
          }

          else
          {
            *&v80[v67[17]] = v81;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D558, &qword_1D1EA5BE8);
            v82 = 14;
            sub_1D1CF4F94(&qword_1EC64D588, &qword_1EC64D590);
            v58 = v76;
            sub_1D1E68D7C();
            v76 = v58;
            if (v58)
            {
              (*(v77 + 8))(v79, v78);
              LODWORD(v78) = 0;
              LODWORD(v79) = 0;
              v50 = 1;
              v51 = 1;
              v52 = 1;
              LODWORD(v75) = 1;
              LODWORD(v77) = 1;
              v53 = v73;
            }

            else
            {
              *&v80[v67[18]] = v81;
              LOBYTE(v81) = 15;
              v59 = v76;
              v60 = sub_1D1E68D3C();
              v76 = v59;
              if (v59 || (v80[v67[19]] = v60 & 1, v82 = 16, v61 = v76, sub_1D1E68CBC(), (v76 = v61) != 0))
              {
                (*(v77 + 8))(v79, v78);
                LODWORD(v79) = 0;
                v50 = 1;
                v51 = 1;
                v52 = 1;
                LODWORD(v75) = 1;
                LODWORD(v77) = 1;
                LODWORD(v78) = 1;
                v53 = v73;
              }

              else
              {
                *&v80[v67[20]] = v81;
                LOBYTE(v81) = 17;
                v62 = v76;
                v63 = sub_1D1E68D3C();
                v76 = v62;
                if (!v62)
                {
                  v80[v67[21]] = v63 & 1;
                  type metadata accessor for StaticResident();
                  LOBYTE(v81) = 18;
                  sub_1D1CF8D7C(&qword_1EC64CE58, type metadata accessor for StaticResident);
                  v64 = v76;
                  sub_1D1E68CBC();
                  v76 = v64;
                  if (!v64)
                  {
                    (*(v77 + 8))(v79, v78);
                    v65 = v80;
                    sub_1D1741A90(v69, &v80[v67[22]], &qword_1EC64D530, &qword_1D1EA5BD8);
                    sub_1D1CF5030(v65, v70, type metadata accessor for StaticHome);
                    __swift_destroy_boxed_opaque_existential_1(v68);
                    return sub_1D1CF5098(v65, type metadata accessor for StaticHome);
                  }
                }

                (*(v77 + 8))(v79, v78);
                v50 = 1;
                v51 = 1;
                v52 = 1;
                LODWORD(v75) = 1;
                LODWORD(v77) = 1;
                LODWORD(v78) = 1;
                LODWORD(v79) = 1;
                v53 = v73;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  v37 = v80;
  (*(v74 + 8))(v80, v66);
  if (!v53)
  {
    v43 = *&v37[v67[5] + 8];
  }

  v38 = v67;
  v39 = v80;
  sub_1D1741A30(&v80[v67[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1CF5098(&v39[v38[7]], type metadata accessor for StaticRoom);
  sub_1D1CF5098(&v39[v38[8]], type metadata accessor for StaticUser);
  v44 = *&v39[v38[12]];

  if (v50)
  {
    v40 = *&v39[v38[13]];

    if (v51)
    {
      goto LABEL_17;
    }

LABEL_9:
    if (!v52)
    {
      goto LABEL_18;
    }

LABEL_10:
    v41 = *&v39[v38[15]];

    if (v75)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (!v77)
    {
      goto LABEL_20;
    }

LABEL_12:
    v42 = *&v39[v38[17]];

    if (v78)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v79)
    {
      goto LABEL_22;
    }

    return result;
  }

  if (!v51)
  {
    goto LABEL_9;
  }

LABEL_17:
  v45 = *&v39[v38[14]];

  if (v52)
  {
    goto LABEL_10;
  }

LABEL_18:
  if (!v75)
  {
    goto LABEL_11;
  }

LABEL_19:
  v46 = *&v39[v38[16]];

  if (v77)
  {
    goto LABEL_12;
  }

LABEL_20:
  if (!v78)
  {
    goto LABEL_13;
  }

LABEL_21:
  v47 = *&v39[v38[18]];

  if (v79)
  {
LABEL_22:
    v48 = *&v39[v38[20]];
  }

  return result;
}

uint64_t sub_1D1CEF114()
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CEF158()
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticHome.description.getter()
{
  sub_1D1E6884C();

  sub_1D1E66A7C();
  sub_1D1CF8D7C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v2 = type metadata accessor for StaticHome();
  MEMORY[0x1D3890F70](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  return 0x6F48636974617453;
}

uint64_t sub_1D1CEF2D4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v4 = sub_1D1E67C1C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = 1;
    goto LABEL_25;
  }

LABEL_23:
  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = 1;
  while (2)
  {
    while (1)
    {
      v8 = v6;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D3891EF0](v8, v4);
        }

        else
        {
          if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if ([v9 isEnabled])
        {
          break;
        }

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_25;
        }
      }

      if (v7 == 3)
      {
        break;
      }

      v11 = [v10 status];

      if (v11)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    v7 = 3;
    if (v6 != v5)
    {
      continue;
    }

    break;
  }

LABEL_25:

  *a2 = v7;
  return result;
}

uint64_t sub_1D1CEF46C(uint64_t a1)
{
  v2 = sub_1D1CF5260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF4A8(uint64_t a1)
{
  v2 = sub_1D1CF5260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF4E4(uint64_t a1)
{
  v2 = sub_1D1CF52B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF520(uint64_t a1)
{
  v2 = sub_1D1CF52B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF55C()
{
  v1 = 0x746553746F6ELL;
  v2 = 0x656C6261706163;
  if (*v0 != 2)
  {
    v2 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v1 = 0x6261706143746F6ELL;
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

uint64_t sub_1D1CEF5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CF8AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CEF604(uint64_t a1)
{
  v2 = sub_1D1CF520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF640(uint64_t a1)
{
  v2 = sub_1D1CF520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF67C(uint64_t a1)
{
  v2 = sub_1D1CF5308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF6B8(uint64_t a1)
{
  v2 = sub_1D1CF5308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF6F4(uint64_t a1)
{
  v2 = sub_1D1CF535C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF730(uint64_t a1)
{
  v2 = sub_1D1CF535C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHome.RemoteAccessState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D598, &qword_1D1EA5BF8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5A0, &qword_1D1EA5C00);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5A8, &qword_1D1EA5C08);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5B0, &qword_1D1EA5C10);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5B8, &qword_1D1EA5C18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF520C();
  sub_1D1E6930C();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D1CF52B4();
      v24 = v33;
      sub_1D1E68DFC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D1CF5260();
      v24 = v36;
      sub_1D1E68DFC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D1CF5308();
    v24 = v30;
    sub_1D1E68DFC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D1CF535C();
  sub_1D1E68DFC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t StaticHome.RemoteAccessState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5E8, &qword_1D1EA5C20);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5F0, &qword_1D1EA5C28);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5F8, &qword_1D1EA5C30);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D600, &qword_1D1EA5C38);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D608, &unk_1D1EA5C40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1CF520C();
  v21 = v53;
  sub_1D1E692FC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D18085BC();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D1E688EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v34 = &type metadata for StaticHome.RemoteAccessState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D1CF5308();
        v39 = v42;
        sub_1D1E68C4C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D1CF535C();
        v31 = v42;
        sub_1D1E68C4C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D1CF52B4();
      v38 = v42;
      sub_1D1E68C4C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D1CF5260();
      v40 = v42;
      sub_1D1E68C4C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D1CF0230(uint64_t a1, unsigned __int8 *a2)
{
  v43 = a1;
  v3 = sub_1D1E66BAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66BBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v46 = &type metadata for HomeAppFeatures;
  v47 = sub_1D19C6154();
  LOBYTE(v44) = 3;
  LOBYTE(a2) = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if ((a2 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EBAD70);
  }

  v44 = 0xD00000000000001ELL;
  v45 = 0x80000001D1EC8690;
  if (v17 != 2)
  {
    if (v17)
    {
      v18 = sub_1D1E6904C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    MEMORY[0x1D3890F70](0x6574746142776F4CLL, 0xEA00000000007972);
  }

LABEL_9:
  v41 = v8;
  sub_1D1E66B9C();
  v20 = sub_1D1E66AFC();
  v21 = *(v13 + 8);
  v21(v16, v12);
  if (v20)
  {
    MEMORY[0x1D3890F70](0x746E6572727543, 0xE700000000000000);
    v22 = static String.hfLocalized(_:)(v44, v45);
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642420 == -1)
    {
      goto LABEL_11;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  sub_1D1E66B9C();
  v29 = sub_1D1E66B3C();
  v21(v16, v12);
  if ((v29 & 1) == 0)
  {
    sub_1D1E66B9C();
    sub_1D1E669EC();
    (*(v4 + 104))(v7, *MEMORY[0x1E6969A68], v3);
    v31 = sub_1D1E66B8C();
    (*(v4 + 8))(v7, v3);
    (*(v42 + 8))(v11, v41);
    v21(v16, v12);
    if (v31)
    {
      MEMORY[0x1D3890F70](1953718608, 0xE400000000000000);
      v22 = static String.hfLocalized(_:)(v44, v45);
      v24 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D1E739C0;
      if (qword_1EC642418 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC6BE268;
      v27 = sub_1D1E6694C();
      v28 = [v33 stringFromDate_];
    }

    else
    {
      MEMORY[0x1D3890F70](0x7261655974736150, 0xE800000000000000);
      v22 = static String.hfLocalized(_:)(v44, v45);
      v24 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D1E739C0;
      if (qword_1EC642430 != -1)
      {
        swift_once();
      }

      v35 = qword_1EC6BE280;
      v27 = sub_1D1E6694C();
      v28 = [v35 stringFromDate_];
    }

    goto LABEL_22;
  }

  MEMORY[0x1D3890F70](0x6164726574736559, 0xE900000000000079);
  v22 = static String.hfLocalized(_:)(v44, v45);
  v24 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642420 != -1)
  {
    goto LABEL_23;
  }

LABEL_11:
  v26 = qword_1EC6BE270;
  v27 = sub_1D1E6694C();
  v28 = [v26 stringFromDate_];
LABEL_22:
  v36 = v28;

  v37 = sub_1D1E6781C();
  v39 = v38;

  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1D1757D20();
  *(v25 + 32) = v37;
  *(v25 + 40) = v39;
  static String.hfLocalized(_:)(v22, v24);

  v40 = sub_1D1E6784C();

  return v40;
}

uint64_t sub_1D1CF096C()
{
  v0 = sub_1D1E66BAC();
  v37 = *(v0 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E669FC();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66BBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6697C();
  if (v13 < -60.0)
  {
    v14 = v13;
    sub_1D1E66B9C();
    v15 = sub_1D1E66AFC();
    v16 = *(v9 + 8);
    v16(v12, v8);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D1E739C0;
      v18 = _s13HomeDataModel06StaticA0V25abbreviatedRelativeString4dateSS10Foundation4DateV_tFZ_0();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1D1757D20();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC8640);
      v21 = sub_1D1E6784C();
    }

    else
    {
      sub_1D1E66B9C();
      v23 = sub_1D1E66B3C();
      v16(v12, v8);
      if (v23)
      {
        return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC8610);
      }

      if (v14 >= -604800.0)
      {
        v25 = "etailsHeaderPast";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D1E739C0;
        if (qword_1EC642438 != -1)
        {
          swift_once();
        }

        v30 = qword_1EC6BE288;
        v28 = sub_1D1E6694C();
        v29 = [v30 stringFromDate_];
      }

      else
      {
        sub_1D1E66B9C();
        sub_1D1E669EC();
        (*(v37 + 104))(v3, *MEMORY[0x1E6969A68], v0);
        v24 = sub_1D1E66B8C();
        (*(v37 + 8))(v3, v0);
        (*(v36 + 8))(v7, v4);
        v16(v12, v8);
        v25 = "HFCameraSnapshotAgeNow";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D1E739C0;
        if (v24)
        {
          if (qword_1EC642428 != -1)
          {
            swift_once();
          }

          v27 = qword_1EC6BE278;
          v28 = sub_1D1E6694C();
          v29 = [v27 stringFromDate_];
        }

        else
        {
          if (qword_1EC642430 != -1)
          {
            swift_once();
          }

          v31 = qword_1EC6BE280;
          v28 = sub_1D1E6694C();
          v29 = [v31 stringFromDate_];
        }
      }

      v32 = v29;

      v33 = sub_1D1E6781C();
      v35 = v34;

      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1D1757D20();
      *(v26 + 32) = v33;
      *(v26 + 40) = v35;
      static String.hfLocalized(_:)(0xD000000000000020, v25 | 0x8000000000000000);
      v21 = sub_1D1E6784C();
    }

    return v21;
  }

  return static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC8660);
}

uint64_t sub_1D1CF0F68(uint64_t a1)
{
  v2 = sub_1D1CF5458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF0FA4(uint64_t a1)
{
  v2 = sub_1D1CF5458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF0FE0()
{
  v1 = 0x656C6261706163;
  if (*v0 != 1)
  {
    v1 = 0x6261706163746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F707365726F6ELL;
  }
}

uint64_t sub_1D1CF1040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CF8C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CF1068(uint64_t a1)
{
  v2 = sub_1D1CF53B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF10A4(uint64_t a1)
{
  v2 = sub_1D1CF53B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF10E0(uint64_t a1)
{
  v2 = sub_1D1CF54AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF111C(uint64_t a1)
{
  v2 = sub_1D1CF54AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF1158(uint64_t a1)
{
  v2 = sub_1D1CF5404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF1194(uint64_t a1)
{
  v2 = sub_1D1CF5404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHome.NonResponsiveType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D610, &qword_1D1EA5C50);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D618, &qword_1D1EA5C58);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D620, &qword_1D1EA5C60);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D628, &qword_1D1EA5C68);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF53B0();
  sub_1D1E6930C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D1CF5458();
      v12 = v26;
      sub_1D1E68DFC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D1CF5404();
      v12 = v29;
      sub_1D1E68DFC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D1CF54AC();
    sub_1D1E68DFC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t StaticHome.NonResponsiveType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D650, &qword_1D1EA5C70);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D658, &qword_1D1EA5C78);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D660, &qword_1D1EA5C80);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D668, &qword_1D1EA5C88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D1CF53B0();
  v20 = v43;
  sub_1D1E692FC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D1E68DDC();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D18085C8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D1E688EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v30 = &type metadata for StaticHome.NonResponsiveType;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D1CF5458();
          sub_1D1E68C4C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D1CF5404();
          v33 = v22;
          sub_1D1E68C4C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D1CF54AC();
        sub_1D1E68C4C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1D1CF1B0C()
{
  sub_1D1E67E1C();
  v0[8] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF1BA0, v2, v1);
}

uint64_t sub_1D1CF1BA0()
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 3)
  {
    if (qword_1EE07AC80 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[10];
    v3 = sub_1D1CF1D78;
LABEL_11:

    return MEMORY[0x1EEE6DFA0](v3, v1, v2);
  }

  v4 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[11] = v4;
  if (v4)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC64ABE8;
    v3 = sub_1D1CF1DDC;
    v2 = 0;
    goto LABEL_11;
  }

  v5 = v0[8];

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE07DC60;
  v7 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v11 = v0[1];
  v9 = v8;

  return v11(v8);
}

uint64_t sub_1D1CF1D78()
{
  v1 = *(v0 + 64);

  v2 = _s13HomeDataModel06WidgetbC0C11homeManagerSo06HMHomeF0CSgvg_0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D1CF1DDC()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[12] = v2;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF1E70, v3, v4);
}

uint64_t sub_1D1CF1E70()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  if (v1)
  {
    v4 = v0[12];
  }

  else
  {
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE07DC60;
    v6 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
    swift_beginAccess();
    v4 = *(v5 + v6);
    v7 = v4;
  }

  v8 = v0[1];

  return v8(v4);
}

uint64_t StaticHome.isEmptyStaticHome.getter()
{
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E66A7C();
  __swift_project_value_buffer(v0, qword_1EE081518);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t StaticHome.set(colorPickerFavorites:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1CF204C;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF204C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF214C, 0, 0);
}

uint64_t sub_1D1CF214C()
{
  v1 = v0[4];
  if (v1)
  {
    sub_1D18AE40C(v0[2]);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE07B5D8);
    v1 = sub_1D1E6707C();
    v3 = sub_1D1E6833C();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D16EC000, v1, v3, "While trying to set color picker favorites, couldn't find HMHome", v4, 2u);
      MEMORY[0x1D3893640](v4, -1, -1);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t StaticHome.turnOffManualSelectionMode()()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1D1CF2300;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF2300(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF2400, 0, 0);
}

uint64_t sub_1D1CF2400()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [*(v0 + 152) userSelectedPreferredResident];
    if (v2)
    {

      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v3 = sub_1D1E6709C();
      *(v0 + 160) = __swift_project_value_buffer(v3, qword_1EE07B5D8);
      v4 = v1;
      v5 = sub_1D1E6707C();
      v6 = sub_1D1E6835C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 152);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v4;
        *v9 = v7;
        v10 = v4;
        _os_log_impl(&dword_1D16EC000, v5, v6, "turning off selectPreferredResident on %@", v8, 0xCu);
        sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v9, -1, -1);
        MEMORY[0x1D3893640](v8, -1, -1);
      }

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1CF27FC;
      v11 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_53;
      *(v0 + 112) = v11;
      [v4 selectPreferredResident:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v17 = sub_1D1E6835C();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v17, "selectPreferredResident already nil", v18, 2u);
      MEMORY[0x1D3893640](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v14, "turning off selectPreferredResident failed due to missing home", v15, 2u);
      MEMORY[0x1D3893640](v15, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D1CF27FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1D1CF2970;
  }

  else
  {
    v3 = sub_1D1CF290C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1CF290C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1CF2970()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();
  v4 = v3;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1D16EC000, v5, v6, "turning off selectPreferredResident failed on %@", v8, 0xCu);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v11 = v0[21];
  v12 = v0[19];

  swift_willThrow();
  v13 = v0[1];
  v14 = v0[21];

  return v13();
}

uint64_t StaticHome.setAutomaticSoftwareUpdateEnabled(enabled:)(char a1)
{
  *(v1 + 216) = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v1 + 144) = updated;
  v3 = *(*(updated - 8) + 64) + 15;
  *(v1 + 152) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  *(v1 + 160) = v4;
  v5 = *(v4 - 8);
  *(v1 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v1 + 184) = v7;
  *v7 = v1;
  v7[1] = sub_1D1CF2BE8;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF2BE8(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF2CE8, 0, 0);
}

uint64_t sub_1D1CF2CE8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EE07B5D8);
    v3 = v1;
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 192);
      v7 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 67109378;
      *(v8 + 4) = v7;
      *(v8 + 8) = 2112;
      *(v8 + 10) = v3;
      *v9 = v6;
      v10 = v3;
      _os_log_impl(&dword_1D16EC000, v4, v5, "setAutomaticSoftwareUpdateEnabled to %{BOOL}d on %@", v8, 0x12u);
      sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v11 = *(v0 + 216);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D1CF3040;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_8;
    *(v0 + 112) = v12;
    [v3 updateAutomaticSoftwareUpdateEnabled:v11 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07B5D8);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D16EC000, v14, v15, "setAutomaticSoftwareUpdateEnabled failed due to missing home", v16, 2u);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    v17 = *(v0 + 176);
    v18 = *(v0 + 152);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1D1CF3040()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D1CF328C;
  }

  else
  {
    v3 = sub_1D1CF3150;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1CF3150()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v7, qword_1EE07DCE0);
  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  sub_1D1E67ECC();

  (*(v3 + 8))(v2, v5);
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1CF328C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  swift_willThrow();
  v4 = v3;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 192);
    v8 = *(v0 + 216);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2112;
    *(v9 + 10) = v7;
    *v10 = v7;
    v11 = v7;
    _os_log_impl(&dword_1D16EC000, v5, v6, "setAutomaticSoftwareUpdateEnabled to %{BOOL}d failed on %@", v9, 0x12u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);

  swift_willThrow();

  v16 = *(v0 + 8);
  v17 = *(v0 + 208);

  return v16();
}

uint64_t sub_1D1CF340C()
{
  v0 = type metadata accessor for StaticRoom(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticHome();
  __swift_allocate_value_buffer(v13, qword_1EE081500);
  v14 = __swift_project_value_buffer(v13, qword_1EE081500);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1EE081518);
  (*(v9 + 16))(v12, v15, v8);
  sub_1D1E669EC();
  v16 = sub_1D1E669FC();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  if (qword_1EE07DC08 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_1EE07DC10);
  sub_1D1CF5030(v17, v3, type metadata accessor for StaticRoom);
  if (qword_1EE07DB90 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for StaticUser();
  v19 = __swift_project_value_buffer(v18, qword_1EE0814B0);
  sub_1D1CF5030(v19, v14 + v13[8], type metadata accessor for StaticUser);
  v20 = v13[22];
  v21 = type metadata accessor for StaticResident();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  (*(v9 + 32))(v14, v12, v8);
  v22 = (v14 + v13[5]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  sub_1D1741A90(v7, v14 + v13[6], &qword_1EC642570, &qword_1D1E6C6A0);
  result = sub_1D1CF8DC4(v3, v14 + v13[7], type metadata accessor for StaticRoom);
  *(v14 + v13[9]) = 0;
  *(v14 + v13[10]) = 0;
  *(v14 + v13[11]) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v14 + v13[12]) = MEMORY[0x1E69E7CC0];
  *(v14 + v13[13]) = v24;
  *(v14 + v13[14]) = v24;
  *(v14 + v13[15]) = v24;
  *(v14 + v13[16]) = v24;
  *(v14 + v13[17]) = v24;
  *(v14 + v13[20]) = 0;
  *(v14 + v13[18]) = v24;
  *(v14 + v13[19]) = 1;
  *(v14 + v13[21]) = 1;
  return result;
}

uint64_t sub_1D1CF3818()
{
  v0 = type metadata accessor for StaticRoom(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticHome();
  __swift_allocate_value_buffer(v13, qword_1EC64D518);
  v14 = __swift_project_value_buffer(v13, qword_1EC64D518);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1EC6BE208);
  (*(v9 + 16))(v12, v15, v8);
  sub_1D1E669EC();
  v16 = sub_1D1E669FC();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  if (qword_1EC6423E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_1EC64DA80);
  sub_1D1CF5030(v17, v3, type metadata accessor for StaticRoom);
  if (qword_1EE07DB90 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for StaticUser();
  v19 = __swift_project_value_buffer(v18, qword_1EE0814B0);
  sub_1D1CF5030(v19, v14 + v13[8], type metadata accessor for StaticUser);
  v20 = v13[22];
  v21 = type metadata accessor for StaticResident();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  (*(v9 + 32))(v14, v12, v8);
  v22 = (v14 + v13[5]);
  *v22 = 0x4820656C706D6153;
  v22[1] = 0xEB00000000656D6FLL;
  sub_1D1741A90(v7, v14 + v13[6], &qword_1EC642570, &qword_1D1E6C6A0);
  result = sub_1D1CF8DC4(v3, v14 + v13[7], type metadata accessor for StaticRoom);
  *(v14 + v13[9]) = 0;
  *(v14 + v13[10]) = 0;
  *(v14 + v13[11]) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v14 + v13[12]) = MEMORY[0x1E69E7CC0];
  *(v14 + v13[13]) = v24;
  *(v14 + v13[14]) = v24;
  *(v14 + v13[15]) = v24;
  *(v14 + v13[16]) = v24;
  *(v14 + v13[17]) = v24;
  *(v14 + v13[20]) = 0;
  *(v14 + v13[18]) = v24;
  *(v14 + v13[19]) = 1;
  *(v14 + v13[21]) = 1;
  return result;
}

uint64_t static StaticHome.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticHome();
  v3 = __swift_project_value_buffer(v2, qword_1EC64D518);
  return sub_1D1CF5030(v3, a1, type metadata accessor for StaticHome);
}

uint64_t sub_1D1CF3CBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EE081518);
  v5 = __swift_project_value_buffer(v4, qword_1EE081518);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CF3DEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC6BE208);
  v5 = __swift_project_value_buffer(v4, qword_1EC6BE208);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StaticHome()
{
  result = qword_1EE07DD58;
  if (!qword_1EE07DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1CF3F68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticHome();
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1CF5030(v40 + v39, v41, type metadata accessor for StaticHome);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1CF5030(v43, v60, type metadata accessor for StaticHome);
          v50 = sub_1D1D0D970(v48, v49, v63);
          if (v47)
          {
            sub_1D1CF5098(v49, type metadata accessor for StaticHome);
            sub_1D1CF5098(v48, type metadata accessor for StaticHome);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1CF5098(v49, type metadata accessor for StaticHome);
          sub_1D1CF5098(v48, type metadata accessor for StaticHome);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1CF5030(a2, v22, type metadata accessor for StaticHome);
        sub_1D1CF5030(a4, v18, type metadata accessor for StaticHome);
        v32 = sub_1D1D0D970(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1CF5098(v34, type metadata accessor for StaticHome);
        sub_1D1CF5098(v22, type metadata accessor for StaticHome);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CF5098(v18, type metadata accessor for StaticHome);
      sub_1D1CF5098(v22, type metadata accessor for StaticHome);
    }
  }

LABEL_62:
  sub_1D1DC715C(&v67, &v66, &v65);

  return 1;
}

BOOL _s13HomeDataModel06StaticA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident();
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D740, &unk_1D1EA6888);
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v13 = &v59 - v12;
  v14 = sub_1D1E669FC();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v62 = type metadata accessor for StaticHome();
  v63 = a1;
  v26 = v62[5];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v64 = a2;
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v60 = v4;
  v61 = v13;
  v59 = v7;
  v31 = v62;
  v30 = v63;
  v32 = v62[6];
  v33 = *(v22 + 48);
  sub_1D1741C08(v63 + v32, v25, &qword_1EC642570, &qword_1D1E6C6A0);
  v34 = v64 + v32;
  v35 = v64;
  sub_1D1741C08(v34, &v25[v33], &qword_1EC642570, &qword_1D1E6C6A0);
  v36 = *(v68 + 48);
  if (v36(v25, 1, v14) == 1)
  {
    if (v36(&v25[v33], 1, v14) == 1)
    {
      sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_13;
    }

LABEL_10:
    v37 = &qword_1EC642AC0;
    v38 = &qword_1D1E6E810;
    v39 = v25;
LABEL_11:
    sub_1D1741A30(v39, v37, v38);
    return 0;
  }

  sub_1D1741C08(v25, v21, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v36(&v25[v33], 1, v14) == 1)
  {
    (*(v68 + 8))(v21, v14);
    goto LABEL_10;
  }

  v40 = v68;
  (*(v68 + 32))(v17, &v25[v33], v14);
  sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530]);
  v41 = sub_1D1E6775C();
  v42 = *(v40 + 8);
  v42(v17, v14);
  v42(v21, v14);
  v35 = v64;
  sub_1D1741A30(v25, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if ((_s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(v30 + v31[7], v35 + v31[7]) & 1) == 0 || !_s13HomeDataModel10StaticUserV2eeoiySbAC_ACtFZ_0(v30 + v31[8], v35 + v31[8]) || *(v30 + v31[9]) != *(v35 + v31[9]) || *(v30 + v31[10]) != *(v35 + v31[10]) || *(v30 + v31[11]) != *(v35 + v31[11]) || (sub_1D17796E4(*(v30 + v31[12]), *(v35 + v31[12])) & 1) == 0 || (sub_1D177BC5C(*(v30 + v31[13]), *(v35 + v31[13])) & 1) == 0 || (sub_1D17796E4(*(v30 + v31[14]), *(v35 + v31[14])) & 1) == 0 || (sub_1D17796E4(*(v30 + v31[15]), *(v35 + v31[15])) & 1) == 0 || (sub_1D17796E4(*(v30 + v31[16]), *(v35 + v31[16])) & 1) == 0 || (sub_1D17796E4(*(v30 + v31[17]), *(v35 + v31[17])) & 1) == 0 || (sub_1D177BCEC(*(v30 + v31[18]), *(v35 + v31[18])) & 1) == 0 || *(v63 + v62[19]) != *(v64 + v62[19]))
  {
    return 0;
  }

  v44 = v62[20];
  v45 = *(v63 + v44);
  v46 = *(v64 + v44);
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    v47 = *(v64 + v44);

    v48 = sub_1D17796E4(v45, v46);

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  if (*(v63 + v62[21]) != *(v64 + v62[21]))
  {
    return 0;
  }

  v49 = v61;
  v50 = v62[22];
  v51 = *(v65 + 48);
  sub_1D1741C08(v63 + v50, v61, &qword_1EC64D530, &qword_1D1EA5BD8);
  sub_1D1741C08(v64 + v50, v49 + v51, &qword_1EC64D530, &qword_1D1EA5BD8);
  v52 = *(v66 + 48);
  if (v52(v49, 1, v60) == 1)
  {
    if (v52(&v61[v51], 1, v60) == 1)
    {
      sub_1D1741A30(v61, &qword_1EC64D530, &qword_1D1EA5BD8);
      return 1;
    }

    goto LABEL_39;
  }

  v53 = v61;
  sub_1D1741C08(v61, v67, &qword_1EC64D530, &qword_1D1EA5BD8);
  if (v52((v53 + v51), 1, v60) == 1)
  {
    sub_1D1CF5098(v67, type metadata accessor for StaticResident);
LABEL_39:
    v37 = &qword_1EC64D740;
    v38 = &unk_1D1EA6888;
    v39 = v61;
    goto LABEL_11;
  }

  v54 = v61;
  v55 = &v61[v51];
  v56 = v59;
  sub_1D1CF8DC4(v55, v59, type metadata accessor for StaticResident);
  v57 = v67;
  v58 = _s13HomeDataModel14StaticResidentV2eeoiySbAC_ACtFZ_0(v67, v56);
  sub_1D1CF5098(v56, type metadata accessor for StaticResident);
  sub_1D1CF5098(v57, type metadata accessor for StaticResident);
  sub_1D1741A30(v54, &qword_1EC64D530, &qword_1D1EA5BD8);
  return (v58 & 1) != 0;
}

unint64_t sub_1D1CF4D90()
{
  result = qword_1EC64D540;
  if (!qword_1EC64D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D540);
  }

  return result;
}

unint64_t sub_1D1CF4DE4()
{
  result = qword_1EC64D548;
  if (!qword_1EC64D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D548);
  }

  return result;
}

unint64_t sub_1D1CF4E38()
{
  result = qword_1EC64D578;
  if (!qword_1EC64D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D578);
  }

  return result;
}

uint64_t sub_1D1CF4E8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1CF8D7C(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF4F28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643CB0, &qword_1D1E73640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF4F94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D558, &qword_1D1EA5BE8);
    sub_1D1CF8D7C(a2, type metadata accessor for ColorPickerFavorite);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF5030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CF5098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeDataModel06StaticA0V25abbreviatedRelativeString4dateSS10Foundation4DateV_tFZ_0()
{
  sub_1D1E6697C();
  if (v0 <= -1.0)
  {
    if (qword_1EC642440 != -1)
    {
      swift_once();
    }

    v3 = [qword_1EC6BE290 stringFromTimeInterval_];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D1E6781C();

      return v5;
    }

    v2 = 0xD00000000000001ELL;
    v1 = 0x80000001D1EBAD70;
  }

  else
  {
    v1 = 0x80000001D1EC8590;
    v2 = 0xD000000000000016;
  }

  return static String.hfLocalized(_:)(v2, v1);
}

unint64_t sub_1D1CF520C()
{
  result = qword_1EC64D5C0;
  if (!qword_1EC64D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5C0);
  }

  return result;
}

unint64_t sub_1D1CF5260()
{
  result = qword_1EC64D5C8;
  if (!qword_1EC64D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5C8);
  }

  return result;
}

unint64_t sub_1D1CF52B4()
{
  result = qword_1EC64D5D0;
  if (!qword_1EC64D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5D0);
  }

  return result;
}

unint64_t sub_1D1CF5308()
{
  result = qword_1EC64D5D8;
  if (!qword_1EC64D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5D8);
  }

  return result;
}

unint64_t sub_1D1CF535C()
{
  result = qword_1EC64D5E0;
  if (!qword_1EC64D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5E0);
  }

  return result;
}

unint64_t sub_1D1CF53B0()
{
  result = qword_1EC64D630;
  if (!qword_1EC64D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D630);
  }

  return result;
}

unint64_t sub_1D1CF5404()
{
  result = qword_1EC64D638;
  if (!qword_1EC64D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D638);
  }

  return result;
}

unint64_t sub_1D1CF5458()
{
  result = qword_1EC64D640;
  if (!qword_1EC64D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D640);
  }

  return result;
}

unint64_t sub_1D1CF54AC()
{
  result = qword_1EC64D648;
  if (!qword_1EC64D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D648);
  }

  return result;
}

unint64_t sub_1D1CF55C0()
{
  result = qword_1EC64D678;
  if (!qword_1EC64D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D678);
  }

  return result;
}

unint64_t sub_1D1CF5618()
{
  result = qword_1EC64D680;
  if (!qword_1EC64D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D680);
  }

  return result;
}

void sub_1D1CF5694()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1CF5974(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StaticRoom(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for StaticUser();
        if (v3 <= 0x3F)
        {
          sub_1D1CF5974(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1D1CF58C0();
            if (v5 <= 0x3F)
            {
              sub_1D1CF5974(319, &qword_1EE07B728, type metadata accessor for ColorPickerFavorite, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1D1CF5910();
                if (v7 <= 0x3F)
                {
                  sub_1D1CF5974(319, &qword_1EE07D8A0, type metadata accessor for StaticResident, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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
}

void sub_1D1CF58C0()
{
  if (!qword_1EE07B708)
  {
    v0 = sub_1D1E67D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B708);
    }
  }
}

void sub_1D1CF5910()
{
  if (!qword_1EE07B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B748);
    }
  }
}

void sub_1D1CF5974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1CF5A9C()
{
  result = qword_1EC64D688;
  if (!qword_1EC64D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D688);
  }

  return result;
}

unint64_t sub_1D1CF5AF4()
{
  result = qword_1EC64D690;
  if (!qword_1EC64D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D690);
  }

  return result;
}

unint64_t sub_1D1CF5B4C()
{
  result = qword_1EC64D698;
  if (!qword_1EC64D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D698);
  }

  return result;
}

unint64_t sub_1D1CF5BA4()
{
  result = qword_1EC64D6A0;
  if (!qword_1EC64D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6A0);
  }

  return result;
}

unint64_t sub_1D1CF5BFC()
{
  result = qword_1EC64D6A8;
  if (!qword_1EC64D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6A8);
  }

  return result;
}

unint64_t sub_1D1CF5C54()
{
  result = qword_1EC64D6B0;
  if (!qword_1EC64D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6B0);
  }

  return result;
}

unint64_t sub_1D1CF5CAC()
{
  result = qword_1EC64D6B8;
  if (!qword_1EC64D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6B8);
  }

  return result;
}

unint64_t sub_1D1CF5D04()
{
  result = qword_1EC64D6C0;
  if (!qword_1EC64D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6C0);
  }

  return result;
}

unint64_t sub_1D1CF5D5C()
{
  result = qword_1EC64D6C8;
  if (!qword_1EC64D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6C8);
  }

  return result;
}

unint64_t sub_1D1CF5DB4()
{
  result = qword_1EC64D6D0;
  if (!qword_1EC64D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6D0);
  }

  return result;
}

unint64_t sub_1D1CF5E0C()
{
  result = qword_1EC64D6D8;
  if (!qword_1EC64D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6D8);
  }

  return result;
}

unint64_t sub_1D1CF5E64()
{
  result = qword_1EC64D6E0;
  if (!qword_1EC64D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6E0);
  }

  return result;
}

unint64_t sub_1D1CF5EBC()
{
  result = qword_1EC64D6E8;
  if (!qword_1EC64D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6E8);
  }

  return result;
}

unint64_t sub_1D1CF5F14()
{
  result = qword_1EC64D6F0;
  if (!qword_1EC64D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6F0);
  }

  return result;
}

unint64_t sub_1D1CF5F6C()
{
  result = qword_1EC64D6F8;
  if (!qword_1EC64D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6F8);
  }

  return result;
}

unint64_t sub_1D1CF5FC4()
{
  result = qword_1EC64D700;
  if (!qword_1EC64D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D700);
  }

  return result;
}

unint64_t sub_1D1CF601C()
{
  result = qword_1EC64D708;
  if (!qword_1EC64D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D708);
  }

  return result;
}

unint64_t sub_1D1CF6074()
{
  result = qword_1EC64D710;
  if (!qword_1EC64D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D710);
  }

  return result;
}

unint64_t sub_1D1CF60CC()
{
  result = qword_1EC64D718;
  if (!qword_1EC64D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D718);
  }

  return result;
}

unint64_t sub_1D1CF6124()
{
  result = qword_1EC64D720;
  if (!qword_1EC64D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D720);
  }

  return result;
}

unint64_t sub_1D1CF617C()
{
  result = qword_1EC64D728;
  if (!qword_1EC64D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D728);
  }

  return result;
}

unint64_t sub_1D1CF61D4()
{
  result = qword_1EC64D730;
  if (!qword_1EC64D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D730);
  }

  return result;
}

unint64_t sub_1D1CF622C()
{
  result = qword_1EC64D738;
  if (!qword_1EC64D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D738);
  }

  return result;
}

uint64_t sub_1D1CF6280(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v228 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v241 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v240 = &v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v225 = &v222 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v222 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v246 = &v222 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v230 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v222 - v28;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = *(*(v254 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v254);
  v251 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v222 - v33;
  v261 = type metadata accessor for StaticHome();
  v243 = *(v261 - 8);
  v35 = *(v243 + 64);
  v36 = MEMORY[0x1EEE9AC00](v261);
  v235 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v259 = &v222 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v222 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v262 = &v222 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v250 = &v222 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v249 = &v222 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v49);
  v244 = a3;
  v52 = a3[1];
  v256 = a5;
  if (v52 < 1)
  {
    swift_bridgeObjectRetain_n();
    v231 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v262 = *v228;
    if (!v262)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v231;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v267 = v10;
      v212 = *(v10 + 16);
      if (v212 >= 2)
      {
        do
        {
          v213 = *v244;
          if (!*v244)
          {
            goto LABEL_185;
          }

          v214 = *(v10 + 16 * v212);
          v215 = *(v10 + 16 * (v212 - 1) + 40);
          v216 = *(v243 + 72);
          v217 = v213 + v216 * v214;
          v218 = v213 + v216 * *(v10 + 16 * (v212 - 1) + 32);
          v219 = v213 + v216 * v215;
          v220 = v256;

          sub_1D1CF3F68(v217, v218, v219, v262, v220);
          if (v6)
          {
            break;
          }

          if (v215 < v214)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v212 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v221 = (v10 + 16 * v212);
          *v221 = v214;
          v221[1] = v215;
          v267 = v10;
          sub_1D1E0BDB8(v212 - 1);
          v10 = v267;
          v212 = *(v267 + 16);
        }

        while (v212 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v222 = &v222 - v50;
  v223 = v51;
  v252 = (v11 + 48);
  v242 = (v11 + 32);
  v248 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v231 = MEMORY[0x1E69E7CC0];
  v227 = a4;
  v253 = v10;
  v229 = v29;
  v53 = v251;
  v233 = v34;
  v255 = v42;
  v54 = 0;
LABEL_4:
  if (v54 + 1 >= v52)
  {
    v65 = v54 + 1;
    goto LABEL_49;
  }

  v247 = v52;
  v55 = *v244;
  v56 = *(v243 + 72);
  v57 = *v244 + v56 * (v54 + 1);
  v58 = v54;
  v59 = v222;
  sub_1D1CF5030(v57, v222, type metadata accessor for StaticHome);
  v257 = v55;
  v60 = v55 + v56 * v58;
  v61 = v223;
  sub_1D1CF5030(v60, v223, type metadata accessor for StaticHome);
  LODWORD(v260) = sub_1D1D0D970(v59, v61, v256);
  if (v6)
  {
    sub_1D1CF5098(v61, type metadata accessor for StaticHome);
    sub_1D1CF5098(v59, type metadata accessor for StaticHome);
    swift_bridgeObjectRelease_n();
  }

  v232 = 0;
  sub_1D1CF5098(v61, type metadata accessor for StaticHome);
  sub_1D1CF5098(v59, type metadata accessor for StaticHome);
  v226 = v58;
  v62 = v58 + 2;
  v258 = v56;
  v10 = v256;
  v63 = v257 + v56 * v62;
  while (1)
  {
    v65 = v247;
    if (v247 == v62)
    {
      break;
    }

    v66 = v249;
    sub_1D1CF5030(v63, v249, type metadata accessor for StaticHome);
    v67 = v250;
    sub_1D1CF5030(v57, v250, type metadata accessor for StaticHome);
    v68 = sub_1D18E4158(v66, v10);
    LOBYTE(v66) = v69;
    v70 = sub_1D18E4158(v67, v10);
    if (v66)
    {
      if ((v71 & 1) == 0)
      {
        v64 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v71)
      {
        v64 = 1;
        goto LABEL_8;
      }

      if (v68 != v70)
      {
        v64 = v68 < v70;
        goto LABEL_8;
      }
    }

    v72 = *(v261 + 24);
    v73 = *(v254 + 48);
    v74 = v233;
    sub_1D1741C08(v249 + v72, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v257 = v73;
    sub_1D1741C08(v250 + v72, v74 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
    v75 = v253;
    v76 = *v252;
    if ((*v252)(v74, 1, v253) == 1)
    {
      if (v76(v74 + v257, 1, v75) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v64 = 0;
      v53 = v251;
    }

    else
    {
      v77 = v229;
      sub_1D1741C08(v74, v229, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v76(v74 + v257, 1, v75) == 1)
      {
        (*v248)(v77, v75);
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v64 = 1;
        v53 = v251;
        v10 = v256;
      }

      else
      {
        sub_1D1741C08(v74 + v257, v230, &qword_1EC642570, &qword_1D1E6C6A0);
        v78 = *v242;
        v79 = v224;
        (*v242)(v224, v77, v75);
        v80 = v225;
        v78(v225, v230, v75);
        sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        if (sub_1D1E6775C())
        {
          v81 = *v248;
          (*v248)(v80, v75);
          v81(v79, v75);
LABEL_23:
          sub_1D1741A30(v74, &qword_1EC642AC0, &qword_1D1E6E810);
          v82 = *(v261 + 20);
          v83 = (v249 + v82);
          v85 = *(v249 + v82);
          v84 = *(v249 + v82 + 8);
          v86 = (v250 + v82);
          v88 = *v86;
          v87 = v86[1];
          if (*v83 == *v86 && v84 == v87 || (v89 = *v83, v90 = v83[1], v91 = *v86, v92 = v86[1], (sub_1D1E6904C() & 1) != 0))
          {
            v93 = sub_1D1E66A1C();
            v95 = v94;
            v96 = sub_1D1E66A1C();
            v53 = v251;
            if (v93 == v96 && v95 == v97)
            {

              v64 = 0;
            }

            else
            {
              v64 = sub_1D1E6904C();
            }

            v10 = v256;
          }

          else
          {
            v265 = v85;
            v266 = v84;
            v263 = v88;
            v264 = v87;
            sub_1D17D8EF0();
            v64 = sub_1D1E685FC() == -1;
            v10 = v256;
            v53 = v251;
          }

          goto LABEL_8;
        }

        v64 = sub_1D1E6696C();
        v98 = v80;
        v99 = v79;
        v100 = *v248;
        (*v248)(v98, v75);
        v100(v99, v75);
        v10 = v256;
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v53 = v251;
      }
    }

LABEL_8:
    sub_1D1CF5098(v250, type metadata accessor for StaticHome);
    sub_1D1CF5098(v249, type metadata accessor for StaticHome);
    ++v62;
    v63 += v258;
    v57 += v258;
    if ((v260 ^ v64))
    {
      v65 = v62 - 1;
      break;
    }
  }

  v6 = v232;
  a4 = v227;
  v54 = v226;
  if ((v260 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v65 < v226)
  {
    goto LABEL_180;
  }

  if (v226 < v65)
  {
    v101 = v65;
    v10 = v258;
    v102 = v258 * (v65 - 1);
    v103 = v65 * v258;
    v247 = v65;
    v104 = v226;
    v105 = v226 * v258;
    do
    {
      if (v104 != --v101)
      {
        v106 = *v244;
        if (!*v244)
        {
          goto LABEL_184;
        }

        sub_1D1CF8DC4(v106 + v105, v235, type metadata accessor for StaticHome);
        if (v105 < v102 || v106 + v105 >= (v106 + v103))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1CF8DC4(v235, v106 + v102, type metadata accessor for StaticHome);
        v6 = v232;
      }

      ++v104;
      v102 -= v10;
      v103 -= v10;
      v105 += v10;
    }

    while (v104 < v101);
    a4 = v227;
    v65 = v247;
    v54 = v226;
  }

LABEL_49:
  v107 = v244[1];
  if (v65 >= v107)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v65, v54))
  {
    goto LABEL_177;
  }

  if (v65 - v54 >= a4)
  {
LABEL_58:
    v109 = v65;
    goto LABEL_59;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_178;
  }

  if (v54 + a4 >= v107)
  {
    v108 = v244[1];
  }

  else
  {
    v108 = v54 + a4;
  }

  if (v108 < v54)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v65 == v108)
  {
    goto LABEL_58;
  }

  v232 = v6;
  v165 = *v244;
  v166 = *(v243 + 72);
  v167 = *v244 + v166 * (v65 - 1);
  v257 = -v166;
  v226 = v54;
  v168 = v54 - v65;
  v258 = v165;
  v234 = v166;
  v169 = v165 + v65 * v166;
  v170 = v255;
  v10 = v256;
  v236 = v108;
  while (2)
  {
    v247 = v65;
    v237 = v169;
    v238 = v168;
    v171 = v168;
    v239 = v167;
    v172 = v167;
LABEL_113:
    v173 = v262;
    sub_1D1CF5030(v169, v262, type metadata accessor for StaticHome);
    sub_1D1CF5030(v172, v170, type metadata accessor for StaticHome);
    v174 = sub_1D18E4158(v173, v10);
    LOBYTE(v173) = v175;
    v176 = sub_1D18E4158(v170, v10);
    if ((v173 & 1) == 0)
    {
      if (v177)
      {
        goto LABEL_123;
      }

      if (v174 == v176)
      {
        goto LABEL_118;
      }

      v205 = v174 < v176;
      goto LABEL_138;
    }

    if ((v177 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v260 = v171;
    v178 = *(v261 + 24);
    v179 = *(v254 + 48);
    sub_1D1741C08(v262 + v178, v53, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v170 + v178, v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
    v180 = v253;
    v181 = *v252;
    if ((*v252)(v53, 1, v253) == 1)
    {
      if (v181(v53 + v179, 1, v180) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1CF5098(v170, type metadata accessor for StaticHome);
      sub_1D1CF5098(v262, type metadata accessor for StaticHome);
LABEL_111:
      v65 = v247 + 1;
      v167 = v239 + v234;
      v168 = v238 - 1;
      v169 = v237 + v234;
      v109 = v236;
      if (v247 + 1 != v236)
      {
        continue;
      }

      v6 = v232;
      v54 = v226;
LABEL_59:
      v110 = v231;
      if (v109 < v54)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v236 = v109;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_1D177D070(0, *(v110 + 2) + 1, 1, v110);
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      v114 = v113 + 1;
      v10 = v256;
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1D177D070((v112 > 1), v113 + 1, 1, v110);
      }

      *(v110 + 2) = v114;
      v115 = &v110[16 * v113];
      v116 = v236;
      *(v115 + 4) = v54;
      *(v115 + 5) = v116;
      v260 = *v228;
      if (!v260)
      {
        goto LABEL_186;
      }

      if (v113)
      {
        while (2)
        {
          v117 = v114 - 1;
          if (v114 >= 4)
          {
            v122 = &v110[16 * v114 + 32];
            v123 = *(v122 - 64);
            v124 = *(v122 - 56);
            v128 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            if (v128)
            {
              goto LABEL_163;
            }

            v127 = *(v122 - 48);
            v126 = *(v122 - 40);
            v128 = __OFSUB__(v126, v127);
            v120 = v126 - v127;
            v121 = v128;
            if (v128)
            {
              goto LABEL_164;
            }

            v129 = &v110[16 * v114];
            v131 = *v129;
            v130 = *(v129 + 1);
            v128 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v128)
            {
              goto LABEL_166;
            }

            v128 = __OFADD__(v120, v132);
            v133 = v120 + v132;
            if (v128)
            {
              goto LABEL_169;
            }

            if (v133 >= v125)
            {
              v151 = &v110[16 * v117 + 32];
              v153 = *v151;
              v152 = *(v151 + 1);
              v128 = __OFSUB__(v152, v153);
              v154 = v152 - v153;
              if (v128)
              {
                goto LABEL_173;
              }

              if (v120 < v154)
              {
                v117 = v114 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v121)
              {
                goto LABEL_165;
              }

              v134 = &v110[16 * v114];
              v136 = *v134;
              v135 = *(v134 + 1);
              v137 = __OFSUB__(v135, v136);
              v138 = v135 - v136;
              v139 = v137;
              if (v137)
              {
                goto LABEL_168;
              }

              v140 = &v110[16 * v117 + 32];
              v142 = *v140;
              v141 = *(v140 + 1);
              v128 = __OFSUB__(v141, v142);
              v143 = v141 - v142;
              if (v128)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v138, v143))
              {
                goto LABEL_172;
              }

              if (v138 + v143 < v120)
              {
                goto LABEL_93;
              }

              if (v120 < v143)
              {
                v117 = v114 - 2;
              }
            }
          }

          else
          {
            if (v114 == 3)
            {
              v118 = *(v110 + 4);
              v119 = *(v110 + 5);
              v128 = __OFSUB__(v119, v118);
              v120 = v119 - v118;
              v121 = v128;
              goto LABEL_79;
            }

            v144 = &v110[16 * v114];
            v146 = *v144;
            v145 = *(v144 + 1);
            v128 = __OFSUB__(v145, v146);
            v138 = v145 - v146;
            v139 = v128;
LABEL_93:
            if (v139)
            {
              goto LABEL_167;
            }

            v147 = &v110[16 * v117];
            v149 = *(v147 + 4);
            v148 = *(v147 + 5);
            v128 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v128)
            {
              goto LABEL_170;
            }

            if (v150 < v138)
            {
              break;
            }
          }

          v155 = v117 - 1;
          if (v117 - 1 >= v114)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v156 = *v244;
          if (!*v244)
          {
            goto LABEL_183;
          }

          v10 = v110;
          v157 = *&v110[16 * v155 + 32];
          v158 = *&v110[16 * v117 + 40];
          v159 = *(v243 + 72);
          v160 = v156 + v159 * v157;
          v161 = v156 + v159 * *&v110[16 * v117 + 32];
          v162 = v156 + v159 * v158;
          v163 = v256;

          sub_1D1CF3F68(v160, v161, v162, v260, v163);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v158 < v157)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v155 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v164 = v10 + 16 * v155;
          *(v164 + 32) = v157;
          *(v164 + 40) = v158;
          v267 = v10;
          sub_1D1E0BDB8(v117);
          v110 = v267;
          v114 = *(v267 + 16);
          v53 = v251;
          if (v114 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v231 = v110;
      v52 = v244[1];
      v54 = v236;
      a4 = v227;
      if (v236 >= v52)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v182 = v10;
  v183 = v246;
  sub_1D1741C08(v53, v246, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v181(v53 + v179, 1, v180) != 1)
  {
    sub_1D1741C08(v53 + v179, v245, &qword_1EC642570, &qword_1D1E6C6A0);
    v184 = *v242;
    v185 = v240;
    (*v242)(v240, v183, v180);
    v186 = v241;
    v184(v241, v245, v180);
    sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v187 = *v248;
      (*v248)(v186, v180);
      v187(v185, v180);
      v170 = v255;
LABEL_126:
      sub_1D1741A30(v53, &qword_1EC642AC0, &qword_1D1E6E810);
      v188 = *(v261 + 20);
      v189 = (v262 + v188);
      v190 = *(v262 + v188);
      v191 = *(v262 + v188 + 8);
      v192 = (v170 + v188);
      v193 = *v192;
      v194 = v192[1];
      v195 = *v189 == *v192 && v191 == v194;
      if (v195 || (v196 = *v189, v197 = v189[1], v198 = *v192, v199 = v192[1], (sub_1D1E6904C() & 1) != 0))
      {
        v200 = sub_1D1E66A1C();
        v202 = v201;
        v170 = v255;
        v203 = sub_1D1E66A1C();
        v171 = v260;
        if (v200 == v203 && v202 == v204)
        {

          v10 = v256;
          v53 = v251;
          goto LABEL_110;
        }

        v205 = sub_1D1E6904C();

        v10 = v256;
        v53 = v251;
        goto LABEL_138;
      }

      v265 = v190;
      v266 = v191;
      v263 = v193;
      v264 = v194;
      sub_1D17D8EF0();
      v205 = sub_1D1E685FC() == -1;
      v170 = v255;
      v10 = v256;
      v53 = v251;
    }

    else
    {
      v205 = sub_1D1E6696C();
      v206 = v186;
      v207 = v185;
      v208 = *v248;
      (*v248)(v206, v180);
      v208(v207, v180);
      v10 = v256;
      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
      v170 = v255;
    }

    v171 = v260;
LABEL_138:
    sub_1D1CF5098(v170, type metadata accessor for StaticHome);
    sub_1D1CF5098(v262, type metadata accessor for StaticHome);
    if ((v205 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v248)(v183, v180);
  sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v182;
  v170 = v255;
  v171 = v260;
LABEL_123:
  sub_1D1CF5098(v170, type metadata accessor for StaticHome);
  sub_1D1CF5098(v262, type metadata accessor for StaticHome);
LABEL_139:
  if (v258)
  {
    v209 = v259;
    sub_1D1CF8DC4(v169, v259, type metadata accessor for StaticHome);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1CF8DC4(v209, v172, type metadata accessor for StaticHome);
    v172 += v257;
    v169 += v257;
    if (__CFADD__(v171++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1CF7A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v93 = a1;
  v97 = sub_1D1E669FC();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v97 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v76 - v19;
  v98 = type metadata accessor for StaticHome();
  v21 = *(*(v98 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  v78 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v32 = (v8 + 48);
    v79 = (v8 + 32);
    v87 = (v8 + 8);
    v33 = v30 + v31 * (a3 - 1);
    v92 = -v31;
    v34 = v93 - a3;
    v93 = v30;
    v77 = v31;
    v35 = v30 + v31 * a3;
    v89 = v20;
    v90 = &v76 - v28;
    v95 = v32;
LABEL_6:
    v85 = v33;
    v86 = a3;
    v83 = v35;
    v84 = v34;
    while (1)
    {
      sub_1D1CF5030(v35, v29, type metadata accessor for StaticHome);
      v36 = v103;
      sub_1D1CF5030(v33, v103, type metadata accessor for StaticHome);
      v37 = v96;
      v38 = sub_1D18E4158(v29, v96);
      v40 = v39;
      v41 = sub_1D18E4158(v36, v37);
      if (v40)
      {
        v43 = v95;
        if ((v42 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v43 = v95;
        if (v42)
        {
          goto LABEL_17;
        }

        if (v38 != v41)
        {
          v71 = v38 < v41;
          goto LABEL_31;
        }
      }

      v44 = *(v98 + 24);
      v45 = *(v91 + 48);
      sub_1D1741C08(&v29[v44], v20, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v103 + v44, &v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v43;
      v47 = v97;
      if ((*v43)(v20, 1, v97) == 1)
      {
        if (v46(&v20[v45], 1, v47) != 1)
        {
          sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
          v29 = v90;
LABEL_4:
          sub_1D1CF5098(v103, type metadata accessor for StaticHome);
          result = sub_1D1CF5098(v29, type metadata accessor for StaticHome);
LABEL_5:
          a3 = v86 + 1;
          v33 = v85 + v77;
          v34 = v84 - 1;
          v35 = v83 + v77;
          if (v86 + 1 == v78)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v48 = v88;
      sub_1D1741C08(v20, v88, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v46(&v20[v45], 1, v47) == 1)
      {
        (*v87)(v48, v47);
        sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
        v29 = v90;
LABEL_17:
        sub_1D1CF5098(v103, type metadata accessor for StaticHome);
        result = sub_1D1CF5098(v29, type metadata accessor for StaticHome);
        goto LABEL_32;
      }

      v49 = v80;
      sub_1D1741C08(&v20[v45], v80, &qword_1EC642570, &qword_1D1E6C6A0);
      v50 = *v79;
      v51 = v81;
      (*v79)(v81, v48, v97);
      v52 = v51;
      v53 = v97;
      v54 = v82;
      v55 = v49;
      v56 = v52;
      v50(v82, v55, v97);
      sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if (sub_1D1E6775C())
      {
        v57 = *v87;
        (*v87)(v54, v53);
        v57(v56, v53);
        v20 = v89;
LABEL_20:
        sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
        v58 = *(v98 + 20);
        v29 = v90;
        v59 = *&v90[v58];
        v60 = *&v90[v58 + 8];
        v61 = (v103 + v58);
        v63 = *v61;
        v62 = v61[1];
        v64 = v59 == *v61 && v60 == v62;
        if (v64 || (v65 = *v61, v66 = v61[1], (sub_1D1E6904C() & 1) != 0))
        {
          v67 = sub_1D1E66A1C();
          v69 = v68;
          if (v67 == sub_1D1E66A1C() && v69 == v70)
          {

            v20 = v89;
            goto LABEL_4;
          }

          v71 = sub_1D1E6904C();

          v20 = v89;
        }

        else
        {
          v101 = v59;
          v102 = v60;
          v99 = v63;
          v100 = v62;
          sub_1D17D8EF0();
          v71 = sub_1D1E685FC() == -1;
          v20 = v89;
        }

        goto LABEL_31;
      }

      v71 = sub_1D1E6696C();
      v72 = *v87;
      (*v87)(v54, v97);
      v72(v56, v97);
      v73 = v89;
      sub_1D1741A30(&v89[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v73, &qword_1EC642570, &qword_1D1E6C6A0);
      v20 = v73;
      v29 = v90;
LABEL_31:
      sub_1D1CF5098(v103, type metadata accessor for StaticHome);
      result = sub_1D1CF5098(v29, type metadata accessor for StaticHome);
      if ((v71 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v93)
      {
        __break(1u);
        return result;
      }

      v74 = v94;
      sub_1D1CF8DC4(v35, v94, type metadata accessor for StaticHome);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1CF8DC4(v74, v33, type metadata accessor for StaticHome);
      v33 += v92;
      v35 += v92;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1CF82A0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticHome();
        v8 = sub_1D1E67C8C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for StaticHome() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1D1CF6280(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
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

    sub_1D1CF7A04(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CF8424(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticHome() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0C01C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1CF82A0(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1CF850C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEB000000006D6F6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8390 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7441726573557369 && a2 == 0xEC000000656D6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC83B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC83D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC83F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8410 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC8470 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC8490 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBBB10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC84B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC84D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC84F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC8510 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D1CF8AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746553746F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261706143746F6ELL && a2 == 0xEA0000000000656CLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6261706163 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1CF8C54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F707365726F6ELL && a2 == 0xEA00000000006573 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6261706163 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6261706163746F6ELL && a2 == 0xEA0000000000656CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1CF8D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1CF8DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CF8E54()
{
  v1 = 0xD000000000000027;
  v2 = *v0;
  v3 = "StateDescriptionPaused";
  v4 = "StateDescriptionInterrupted";
  v5 = "StateDescriptionLoading";
  v6 = 0xD00000000000002BLL;
  if (v2 != 4)
  {
    v5 = "ionSpeaker_NotPlaying";
    v6 = 0xD000000000000027;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000027;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  if (v2 != 1)
  {
    v3 = "StateDescriptionStopped";
    v1 = 0xD000000000000026;
  }

  if (*v0)
  {
    v8 = v1;
  }

  else
  {
    v3 = "CapitalizedPlural";
    v8 = 0xD000000000000025;
  }

  if (*v0 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (*v0 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  return static String.hfLocalized(_:)(v10, v9 | 0x8000000000000000);
}

void StaticMediaSystemComponent.PlaybackState.init(from:specialMediaCategory:)(id a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 255)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v5 == 1)
    {
      goto LABEL_11;
    }

    if (v5 != 3)
    {
LABEL_15:

      sub_1D18EB2D8(v5, v6);
      LOBYTE(v10) = 6;
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      goto LABEL_11;
    }

    if (v6 != 2)
    {
      goto LABEL_15;
    }
  }

  if (([a1 capability] & 1) == 0)
  {
LABEL_14:

    LOBYTE(v10) = 6;
    goto LABEL_17;
  }

LABEL_11:
  v7 = [a1 mediaSession];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 playbackState];

  if (v9 >= 7)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = 0x5000403020100uLL >> (8 * v9);
  }

LABEL_17:
  *a3 = v10;
}

void StaticMediaSystemComponent.PlaybackState.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 mediaSession];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 playbackState];

    if (v6 >= 7)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = 0x5000403020100uLL >> (8 * v6);
    }
  }

  else
  {

    LOBYTE(v7) = 6;
  }

  *a2 = v7;
}

uint64_t StaticMediaSystemComponent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMediaSystemComponent.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystemComponent() + 28));
}

uint64_t StaticMediaSystemComponent.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaSystemComponent() + 32);

  return sub_1D17783E0(v3, a1);
}

unint64_t sub_1D1CF91F4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701605234;
  v4 = 0x7364496D6F6F72;
  if (v1 != 3)
  {
    v4 = 0x726F737365636361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1D1CF9288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CFCDE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CF92B0(uint64_t a1)
{
  v2 = sub_1D1CFC178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF92EC(uint64_t a1)
{
  v2 = sub_1D1CFC178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystemComponent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D748, &unk_1D1EA6898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC178();
  sub_1D1E6930C();
  LOBYTE(v17) = 0;
  sub_1D1E66A7C();
  sub_1D1CFD190(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v15 = type metadata accessor for StaticMediaSystemComponent();
    v11 = *(v15 + 20);
    LOBYTE(v17) = 1;
    type metadata accessor for StaticMediaProfile();
    sub_1D1CFD190(&qword_1EC64C050, type metadata accessor for StaticMediaProfile);
    sub_1D1E68F1C();
    v12 = v15;
    v17 = *(v3 + *(v15 + 24));
    v16 = 2;
    type metadata accessor for HMMediaSystemRoleType(0);
    sub_1D1CFD190(&qword_1EC64D758, type metadata accessor for HMMediaSystemRoleType);
    sub_1D1E68F1C();
    v17 = *(v3 + *(v12 + 28));
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1CFC1CC(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v13 = *(v12 + 32);
    LOBYTE(v17) = 4;
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticMediaSystemComponent.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v13 = type metadata accessor for StaticMediaSystemComponent();
  v14 = v1 + v13[5];
  StaticMediaProfile.hash(into:)(a1);
  MEMORY[0x1D3892850](*(v2 + v13[6]));
  sub_1D176D4E8(a1, *(v2 + v13[7]));
  sub_1D17783E0(v2 + v13[8], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1D1E6922C();
  sub_1D1E676EC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticMediaSystemComponent.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  sub_1D1E6920C();
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for StaticMediaSystemComponent();
  v12 = v0 + v11[5];
  StaticMediaProfile.hash(into:)(v15);
  MEMORY[0x1D3892850](*(v1 + v11[6]));
  sub_1D176D4E8(v15, *(v1 + v11[7]));
  sub_1D17783E0(v1 + v11[8], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D1E6926C();
}

uint64_t StaticMediaSystemComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v29 - v5;
  v32 = type metadata accessor for StaticMediaProfile();
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v35 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D760, &qword_1D1EA68A8);
  v34 = *(v37 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v14 = v29 - v13;
  v15 = type metadata accessor for StaticMediaSystemComponent();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC178();
  v36 = v14;
  v20 = v38;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v18;
  v22 = v33;
  LOBYTE(v40) = 0;
  v23 = sub_1D1CFD190(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v29[1] = v23;
  v24 = *(v22 + 32);
  v38 = v9;
  v24(v21, v35);
  LOBYTE(v40) = 1;
  sub_1D1CFD190(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile);
  sub_1D1E68D7C();
  sub_1D1CFD2A0(v8, &v21[v15[5]], type metadata accessor for StaticMediaProfile);
  type metadata accessor for HMMediaSystemRoleType(0);
  v39 = 2;
  sub_1D1CFD190(&qword_1EC64D768, type metadata accessor for HMMediaSystemRoleType);
  sub_1D1E68D7C();
  v25 = v21;
  *&v21[v15[6]] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v39 = 3;
  sub_1D1CFC1CC(&qword_1EC646B78, &qword_1EC644B20);
  sub_1D1E68D7C();
  v26 = v34;
  v35 = 0;
  *(v25 + v15[7]) = v40;
  LOBYTE(v40) = 4;
  v27 = v31;
  sub_1D1E68CBC();
  (*(v26 + 8))(v36, v37);
  sub_1D1778308(v27, v25 + v15[8]);
  sub_1D1CFD1D8(v25, v30, type metadata accessor for StaticMediaSystemComponent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1CFD240(v25, type metadata accessor for StaticMediaSystemComponent);
}

uint64_t sub_1D1CFA130(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  sub_1D1E6920C();
  sub_1D1CFD190(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = v2 + a2[5];
  StaticMediaProfile.hash(into:)(v17);
  MEMORY[0x1D3892850](*(v4 + a2[6]));
  sub_1D176D4E8(v17, *(v4 + a2[7]));
  sub_1D17783E0(v4 + a2[8], v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1CFA394@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a7;
  v67 = a5;
  v62 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - v13;
  v15 = type metadata accessor for StaticMediaProfile();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for StaticMediaSystemComponent();
  v64 = *(v66 - 8);
  v19 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v22 = *(*(updated - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](updated - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - v26;
  v28 = *a1;
  sub_1D1CFD1D8(a2, &v60 - v26, type metadata accessor for StateSnapshot.UpdateType);
  v29 = [v28 mediaProfile];
  if (!v29)
  {
    sub_1D1CFD240(v27, type metadata accessor for StateSnapshot.UpdateType);
    goto LABEL_5;
  }

  v30 = v29;
  sub_1D1CFD1D8(v27, v25, type metadata accessor for StateSnapshot.UpdateType);
  v68 = v67;
  v31 = v30;
  v32 = v62;

  sub_1D1BFF3D4(v31, v25, a3, v32, &v68, a6, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v36 = v61;
    sub_1D1CFD2A0(v14, v61, type metadata accessor for StaticMediaProfile);
    v37 = [v28 uniqueIdentifier];
    v38 = v31;
    v39 = v63;
    sub_1D1E66A5C();

    v35 = v66;
    sub_1D1CFD1D8(v36, v39 + *(v66 + 20), type metadata accessor for StaticMediaProfile);
    v40 = [v28 role];
    v41 = [v40 type];

    *(v39 + v35[6]) = v41;
    v42 = [v38 accessory];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 room];
      if (v44)
      {
        v45 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
        v46 = sub_1D1E66A7C();
        v47 = *(v46 - 8);
        v48 = *(v47 + 72);
        v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1D1E739C0;
        v51 = [v45 uniqueIdentifier];
        sub_1D1E66A5C();

        v52 = sub_1D179BE14(v50);
        swift_setDeallocating();
        v53 = v50 + v49;
        v35 = v66;
        (*(v47 + 8))(v53, v46);
        swift_deallocClassInstance();
        *&v63[v35[7]] = v52;
        v54 = v35[8];
        v55 = [v43 uniqueIdentifier];
        sub_1D1E66A5C();

        v39 = v63;
        sub_1D1CFD240(v61, type metadata accessor for StaticMediaProfile);
        sub_1D1CFD240(v27, type metadata accessor for StateSnapshot.UpdateType);
        (*(v47 + 56))(v39 + v54, 0, 1, v46);
LABEL_12:
        v58 = v65;
        sub_1D1CFD2A0(v39, v65, type metadata accessor for StaticMediaSystemComponent);
        v34 = v58;
        v33 = 0;
        return (*(v64 + 56))(v34, v33, 1, v35);
      }
    }

    else
    {
      v43 = v38;
    }

    sub_1D1CFD240(v36, type metadata accessor for StaticMediaProfile);
    sub_1D1CFD240(v27, type metadata accessor for StateSnapshot.UpdateType);
    *(v39 + v35[7]) = MEMORY[0x1E69E7CD0];
    v56 = v35[8];
    v57 = sub_1D1E66A7C();
    (*(*(v57 - 8) + 56))(v39 + v56, 1, 1, v57);
    goto LABEL_12;
  }

  sub_1D1CFD240(v27, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741A30(v14, &qword_1EC643758, &qword_1D1E71EB0);
LABEL_5:
  v33 = 1;
  v34 = v65;
  v35 = v66;
  return (*(v64 + 56))(v34, v33, 1, v35);
}

uint64_t sub_1D1CFAB6C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646570706F7473;
  v4 = 0x7075727265746E69;
  if (v1 != 4)
  {
    v4 = 0x676E6964616F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E6979616C70;
  if (v1 != 1)
  {
    v5 = 0x646573756170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CFAC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1CFCF94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CFAC54(uint64_t a1)
{
  v2 = sub_1D1CFC268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAC90(uint64_t a1)
{
  v2 = sub_1D1CFC268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFACCC(uint64_t a1)
{
  v2 = sub_1D1CFC310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAD08(uint64_t a1)
{
  v2 = sub_1D1CFC310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAD44(uint64_t a1)
{
  v2 = sub_1D1CFC2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAD80(uint64_t a1)
{
  v2 = sub_1D1CFC2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFADBC(uint64_t a1)
{
  v2 = sub_1D1CFC3B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFADF8(uint64_t a1)
{
  v2 = sub_1D1CFC3B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAE34(uint64_t a1)
{
  v2 = sub_1D1CFC40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAE70(uint64_t a1)
{
  v2 = sub_1D1CFC40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAEAC(uint64_t a1)
{
  v2 = sub_1D1CFC364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAEE8(uint64_t a1)
{
  v2 = sub_1D1CFC364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFAF24(uint64_t a1)
{
  v2 = sub_1D1CFC460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFAF60(uint64_t a1)
{
  v2 = sub_1D1CFC460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystemComponent.PlaybackState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D770, &qword_1D1EA68B0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D778, &qword_1D1EA68B8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D780, &qword_1D1EA68C0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D788, &qword_1D1EA68C8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D790, &qword_1D1EA68D0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D798, &qword_1D1EA68D8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7A0, &qword_1D1EA68E0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CFC268();
  sub_1D1E6930C();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1D1CFC364();
      v29 = v41;
      v30 = v50;
      sub_1D1E68DFC();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1D1CFC310();
      v29 = v44;
      v30 = v50;
      sub_1D1E68DFC();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1D1CFC2BC();
      v29 = v47;
      v30 = v50;
      sub_1D1E68DFC();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1D1CFC40C();
      v29 = v35;
      v30 = v50;
      sub_1D1E68DFC();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1D1CFC3B8();
      v29 = v38;
      v30 = v50;
      sub_1D1E68DFC();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1D1CFC460();
  v30 = v50;
  sub_1D1E68DFC();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

uint64_t StaticMediaSystemComponent.PlaybackState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaSystemComponent.PlaybackState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7E0, &qword_1D1EA68E8);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7E8, &qword_1D1EA68F0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7F0, &qword_1D1EA68F8);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D7F8, &qword_1D1EA6900);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D800, &qword_1D1EA6908);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D808, &qword_1D1EA6910);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D810, &unk_1D1EA6918);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D1CFC268();
  v30 = v65;
  sub_1D1E692FC();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_1D1E68DDC();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_1D18085D8();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_1D1E688EC();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v44 = &type metadata for StaticMediaSystemComponent.PlaybackState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_1D1CFC364();
          sub_1D1E68C4C();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_1D1CFC310();
          sub_1D1E68C4C();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_1D1CFC2BC();
          sub_1D1E68C4C();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_1D1CFC40C();
            v39 = v65;
            sub_1D1E68C4C();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_1D1CFC3B8();
            v39 = v60;
            sub_1D1E68C4C();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_1D1CFC460();
          sub_1D1E68C4C();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t type metadata accessor for StaticMediaSystemComponent()
{
  result = qword_1EE07BD70;
  if (!qword_1EE07BD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s13HomeDataModel26StaticMediaSystemComponentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for StaticMediaSystemComponent();
  if ((static StaticMediaProfile.== infix(_:_:)(a1 + v17[5], a2 + v17[5]) & 1) == 0 || *(a1 + v17[6]) != *(a2 + v17[6]) || (sub_1D17A6E98(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    return 0;
  }

  v18 = v17[8];
  v19 = *(v13 + 48);
  sub_1D17783E0(a1 + v18, v16);
  sub_1D17783E0(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1D17783E0(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v19], v4);
  sub_1D1CFD190(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = sub_1D1E6775C();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  return (v22 & 1) != 0;
}

unint64_t sub_1D1CFC178()
{
  result = qword_1EC64D750;
  if (!qword_1EC64D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D750);
  }

  return result;
}

uint64_t sub_1D1CFC1CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1CFD190(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1CFC268()
{
  result = qword_1EC64D7A8;
  if (!qword_1EC64D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7A8);
  }

  return result;
}

unint64_t sub_1D1CFC2BC()
{
  result = qword_1EC64D7B0;
  if (!qword_1EC64D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7B0);
  }

  return result;
}

unint64_t sub_1D1CFC310()
{
  result = qword_1EC64D7B8;
  if (!qword_1EC64D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7B8);
  }

  return result;
}

unint64_t sub_1D1CFC364()
{
  result = qword_1EC64D7C0;
  if (!qword_1EC64D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7C0);
  }

  return result;
}

unint64_t sub_1D1CFC3B8()
{
  result = qword_1EC64D7C8;
  if (!qword_1EC64D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7C8);
  }

  return result;
}

unint64_t sub_1D1CFC40C()
{
  result = qword_1EC64D7D0;
  if (!qword_1EC64D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7D0);
  }

  return result;
}

unint64_t sub_1D1CFC460()
{
  result = qword_1EC64D7D8;
  if (!qword_1EC64D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D7D8);
  }

  return result;
}

unint64_t sub_1D1CFC5D8()
{
  result = qword_1EC64D830;
  if (!qword_1EC64D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D830);
  }

  return result;
}

void sub_1D1CFC654()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StaticMediaProfile();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HMMediaSystemRoleType(319);
      if (v2 <= 0x3F)
      {
        sub_1D1791340();
        if (v3 <= 0x3F)
        {
          sub_1D177868C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D1CFC7B4()
{
  result = qword_1EC64D838;
  if (!qword_1EC64D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D838);
  }

  return result;
}

unint64_t sub_1D1CFC80C()
{
  result = qword_1EC64D840;
  if (!qword_1EC64D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D840);
  }

  return result;
}

unint64_t sub_1D1CFC864()
{
  result = qword_1EC64D848;
  if (!qword_1EC64D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D848);
  }

  return result;
}

unint64_t sub_1D1CFC8BC()
{
  result = qword_1EC64D850;
  if (!qword_1EC64D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D850);
  }

  return result;
}

unint64_t sub_1D1CFC914()
{
  result = qword_1EC64D858;
  if (!qword_1EC64D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D858);
  }

  return result;
}

unint64_t sub_1D1CFC96C()
{
  result = qword_1EC64D860;
  if (!qword_1EC64D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D860);
  }

  return result;
}

unint64_t sub_1D1CFC9C4()
{
  result = qword_1EC64D868;
  if (!qword_1EC64D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D868);
  }

  return result;
}

unint64_t sub_1D1CFCA1C()
{
  result = qword_1EC64D870;
  if (!qword_1EC64D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D870);
  }

  return result;
}

unint64_t sub_1D1CFCA74()
{
  result = qword_1EC64D878;
  if (!qword_1EC64D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D878);
  }

  return result;
}

unint64_t sub_1D1CFCACC()
{
  result = qword_1EC64D880;
  if (!qword_1EC64D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D880);
  }

  return result;
}

unint64_t sub_1D1CFCB24()
{
  result = qword_1EC64D888;
  if (!qword_1EC64D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D888);
  }

  return result;
}

unint64_t sub_1D1CFCB7C()
{
  result = qword_1EC64D890;
  if (!qword_1EC64D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D890);
  }

  return result;
}

unint64_t sub_1D1CFCBD4()
{
  result = qword_1EC64D898;
  if (!qword_1EC64D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D898);
  }

  return result;
}

unint64_t sub_1D1CFCC2C()
{
  result = qword_1EC64D8A0;
  if (!qword_1EC64D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8A0);
  }

  return result;
}

unint64_t sub_1D1CFCC84()
{
  result = qword_1EC64D8A8;
  if (!qword_1EC64D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8A8);
  }

  return result;
}

unint64_t sub_1D1CFCCDC()
{
  result = qword_1EC64D8B0;
  if (!qword_1EC64D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8B0);
  }

  return result;
}

unint64_t sub_1D1CFCD34()
{
  result = qword_1EC64D8B8;
  if (!qword_1EC64D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8B8);
  }

  return result;
}

unint64_t sub_1D1CFCD8C()
{
  result = qword_1EC64D8C0;
  if (!qword_1EC64D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8C0);
  }

  return result;
}

uint64_t sub_1D1CFCDE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC86B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1CFCF94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D1CFD190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1CFD1D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CFD240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CFD2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StaticResident.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticResident() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for StaticResident()
{
  result = qword_1EE07D8A8;
  if (!qword_1EE07D8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1CFD39C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  v62 = type metadata accessor for StaticResident();
  v60 = *(v62 - 8);
  v16 = *(v60 + 64);
  v17 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v56 - v19;
  v20 = [a1 supportsResidentSelection];
  v59 = v2;
  v61 = a1;
  if (!v20)
  {
    v29 = [a1 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v15 = sub_1D1E67C1C();

    if (v15 >> 62)
    {
      goto LABEL_59;
    }

    v30 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

  v21 = [a1 autoSelectedPreferredResidents];
  if (v21)
  {
    v22 = v21;
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v13 = sub_1D1E67C1C();

    if (!(v13 >> 62))
    {
LABEL_4:
      a1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  a1 = sub_1D1E6873C();
LABEL_5:
  v6 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
LABEL_37:

    v38 = *(v6 + 2);
    if (v38)
    {
      v64 = MEMORY[0x1E69E7CC0];
      sub_1D178D398(0, v38, 0);
      v39 = v64;
      v40 = v59;
      v41 = &v6[(*(v60 + 80) + 32) & ~*(v60 + 80)];
      v42 = *(v60 + 72);
      do
      {
        v43 = *(v40 + 48);
        sub_1D1D0381C(v41, &v8[v43]);
        v44 = sub_1D1E66A7C();
        (*(*(v44 - 8) + 16))(v8, &v8[v43], v44);
        v64 = v39;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D178D398(v45 > 1, v46 + 1, 1);
          v39 = v64;
        }

        *(v39 + 16) = v46 + 1;
        sub_1D1D0494C(v8, v39 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v46);
        v41 += v42;
        --v38;
      }

      while (v38);
      goto LABEL_48;
    }

LABEL_52:

    v39 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_49;
    }

LABEL_53:
    v54 = MEMORY[0x1E69E7CC8];
    goto LABEL_54;
  }

  v23 = 0;
  v56 = v13;
  v57 = v13 & 0xC000000000000001;
  v2 = v13 & 0xFFFFFFFFFFFFFF8;
  v24 = (v60 + 48);
  while (1)
  {
    if (v57)
    {
      v25 = MEMORY[0x1D3891EF0](v23, v13);
    }

    else
    {
      if (v23 >= *(v2 + 16))
      {
        goto LABEL_57;
      }

      v25 = *(v13 + 8 * v23 + 32);
    }

    v26 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      break;
    }

    StaticResident.init(with:home:)(v25, v61, v15);
    if ((*v24)(v15, 1, v62) == 1)
    {
      sub_1D1741A30(v15, &qword_1EC64D530, &qword_1D1EA5BD8);
    }

    else
    {
      sub_1D1D0332C(v15, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D177D894(0, *(v6 + 2) + 1, 1, v6);
      }

      v28 = *(v6 + 2);
      v27 = *(v6 + 3);
      if (v28 >= v27 >> 1)
      {
        v6 = sub_1D177D894(v27 > 1, v28 + 1, 1, v6);
      }

      *(v6 + 2) = v28 + 1;
      sub_1D1D0332C(v58, &v6[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v28]);
      v13 = v56;
    }

    ++v23;
    if (v26 == a1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v30 = sub_1D1E6873C();
LABEL_22:
    v31 = MEMORY[0x1E69E7CC0];
    if (!v30)
    {
      break;
    }

    v32 = 0;
    v58 = v15 & 0xC000000000000001;
    v56 = v15 & 0xFFFFFFFFFFFFFF8;
    v33 = (v60 + 48);
    while (1)
    {
      if (v58)
      {
        v35 = MEMORY[0x1D3891EF0](v32, v15);
      }

      else
      {
        if (v32 >= *(v56 + 16))
        {
          goto LABEL_58;
        }

        v35 = *(v15 + 8 * v32 + 32);
      }

      v2 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      StaticResident.init(with:home:)(v35, a1, v13);
      if ((*v33)(v13, 1, v62) == 1)
      {
        sub_1D1741A30(v13, &qword_1EC64D530, &qword_1D1EA5BD8);
      }

      else
      {
        sub_1D1D0332C(v13, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1D177D894(0, v31[2] + 1, 1, v31);
        }

        v37 = v31[2];
        v36 = v31[3];
        if (v37 >= v36 >> 1)
        {
          v31 = sub_1D177D894(v36 > 1, v37 + 1, 1, v31);
        }

        v31[2] = v37 + 1;
        sub_1D1D0332C(v57, v31 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v37);
        a1 = v61;
      }

      ++v32;
      v34 = v2 == v30;
      v2 = v59;
      if (v34)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_43:

  v47 = v31[2];
  if (!v47)
  {
    goto LABEL_52;
  }

  v64 = MEMORY[0x1E69E7CC0];
  sub_1D178D398(0, v47, 0);
  v39 = v64;
  v48 = v31 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v49 = *(v60 + 72);
  do
  {
    v50 = *(v2 + 48);
    sub_1D1D0381C(v48, &v6[v50]);
    v51 = sub_1D1E66A7C();
    (*(*(v51 - 8) + 16))(v6, &v6[v50], v51);
    v64 = v39;
    v53 = *(v39 + 16);
    v52 = *(v39 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1D178D398(v52 > 1, v53 + 1, 1);
      v39 = v64;
    }

    *(v39 + 16) = v53 + 1;
    sub_1D1D0494C(v6, v39 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53);
    v48 += v49;
    --v47;
  }

  while (v47);
LABEL_48:

  if (!*(v39 + 16))
  {
    goto LABEL_53;
  }

LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B10, &unk_1D1E7E7C0);
  v54 = sub_1D1E68BCC();
LABEL_54:
  v64 = v54;
  sub_1D1D038DC(v39, 1, &v64);

  return v64;
}

uint64_t StaticResident.init(with:home:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticResident();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v12 = sub_1D1E67C1C();

  v42 = v6;
  v43 = a3;
  v40 = a2;
  v41 = v7;
  if (v12 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3891EF0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v45 = v15;
      if (sub_1D1D006F8(&v45, a1))
      {

        goto LABEL_17;
      }

      ++v14;
      if (v17 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v16 = 0;
LABEL_17:
  sub_1D1D00C00(v16, &v45);
  v18 = v45;
  v19 = v46;
  v20 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v22 = v41;
  v21 = v42;
  if (v16 && (v23 = [v16 room]) != 0)
  {
    v24 = v23;
    v25 = [v23 name];

    v26 = sub_1D1E6781C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = &v10[v21[6]];
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_1D1D00DD8(v16, a1);
  v31 = &v10[v21[5]];
  *v31 = v30;
  v31[1] = v32;
  v33 = &v10[v21[9]];
  *v33 = v18;
  v33[8] = v19;
  v34 = [a1 status];
  v45 = MEMORY[0x1E69E7CD0];
  if (v34)
  {
    sub_1D176457C(&v44, 1);
  }

  v35 = v43;
  v36 = v40;
  if ((v34 & 2) != 0)
  {
    sub_1D176457C(&v44, 0);
  }

  *&v10[v21[7]] = v45;
  *&v10[v21[8]] = sub_1D1D032B0(a1);
  v37 = [v36 uniqueIdentifier];
  v38 = &v10[v21[10]];
  sub_1D1E66A5C();

  sub_1D1D0332C(v10, v35);
  return (*(v22 + 56))(v35, 0, 1, v21);
}

uint64_t sub_1D1CFDFA0()
{
  if (*v0)
  {
    result = 0x6C62616863616572;
  }

  else
  {
    result = 0x7972616D697270;
  }

  *v0;
  return result;
}

uint64_t sub_1D1CFDFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1CFE0C4(uint64_t a1)
{
  v2 = sub_1D1D03390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE100(uint64_t a1)
{
  v2 = sub_1D1D03390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFE13C(uint64_t a1)
{
  v2 = sub_1D1D03438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE178(uint64_t a1)
{
  v2 = sub_1D1D03438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFE1B4(uint64_t a1)
{
  v2 = sub_1D1D033E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFE1F0(uint64_t a1)
{
  v2 = sub_1D1D033E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8D0, &qword_1D1EA72E0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8D8, &qword_1D1EA72E8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D8E0, &qword_1D1EA72F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03390();
  sub_1D1E6930C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D1D033E4();
    v18 = v22;
    sub_1D1E68DFC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D1D03438();
    sub_1D1E68DFC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t StaticResident.Status.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D900, &qword_1D1EA72F8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D908, &qword_1D1EA7300);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D910, &unk_1D1EA7308);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03390();
  v16 = v36;
  sub_1D1E692FC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D18085D0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v26 = &type metadata for StaticResident.Status;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D1D033E4();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D1D03438();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1D1CFE9E0()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_1D1CFEA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001D1EC86D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC86F0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D1CFEB00(uint64_t a1)
{
  v2 = sub_1D1D0348C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEB3C(uint64_t a1)
{
  v2 = sub_1D1D0348C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFEB78(uint64_t a1)
{
  v2 = sub_1D1D03534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEBB4(uint64_t a1)
{
  v2 = sub_1D1D03534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CFEBF0(uint64_t a1)
{
  v2 = sub_1D1D034E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFEC2C(uint64_t a1)
{
  v2 = sub_1D1D034E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.Capability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D918, &qword_1D1EA7318);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D920, &qword_1D1EA7320);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D928, &qword_1D1EA7328);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D0348C();
  sub_1D1E6930C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D1D034E0();
    v18 = v22;
    sub_1D1E68DFC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D1D03534();
    sub_1D1E68DFC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t StaticResident.Capability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D948, &qword_1D1EA7330);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D950, &qword_1D1EA7338);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D958, &qword_1D1EA7340);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D0348C();
  v16 = v36;
  sub_1D1E692FC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D18085D0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D1E688EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v26 = &type metadata for StaticResident.Capability;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D1D034E0();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D1D03534();
        sub_1D1E68C4C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t StaticResident.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticResident.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticResident() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticResident.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticResident() + 28));
}

uint64_t StaticResident.capabilities.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticResident() + 32));
}

uint64_t StaticResident.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticResident() + 36);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D1771B4C(v4, v5);
}

uint64_t StaticResident.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticResident() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticResident.init(id:name:roomName:status:capabilities:specialMediaCategory:homeId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a8;
  v18 = *(a8 + 8);
  v19 = sub_1D1E66A7C();
  v27 = *(*(v19 - 8) + 32);
  (v27)((v19 - 8), a9, a1, v19);
  v20 = type metadata accessor for StaticResident();
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  *(a9 + v20[7]) = a6;
  *(a9 + v20[8]) = a7;
  v23 = a9 + v20[9];
  *v23 = v17;
  *(v23 + 8) = v18;
  v24 = a9 + v20[10];

  return v27(v24, a10, v19);
}

unint64_t sub_1D1CFF73C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x6449656D6F68;
  }

  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0x696C696261706163;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x656D614E6D6F6F72;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1CFF804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D04708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1CFF82C(uint64_t a1)
{
  v2 = sub_1D1D03588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CFF868(uint64_t a1)
{
  v2 = sub_1D1D03588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResident.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D960, &qword_1D1EA7348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03588();
  sub_1D1E6930C();
  LOBYTE(v22) = 0;
  sub_1D1E66A7C();
  sub_1D1D03DC8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticResident();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v22) = 1;
    sub_1D1E68ECC();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v22) = 2;
    sub_1D1E68E0C();
    v22 = *(v3 + v11[7]);
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D970, &qword_1D1EA7350);
    sub_1D1D036FC(&qword_1EC64D978, sub_1D1D035DC);
    sub_1D1E68F1C();
    v22 = *(v3 + v11[8]);
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D988, &qword_1D1EA7358);
    sub_1D1D03630(&qword_1EC64D990, sub_1D1D036A8);
    sub_1D1E68F1C();
    v18 = v3 + v11[9];
    v19 = *(v18 + 8);
    v22 = *v18;
    v23 = v19;
    v24 = 5;
    sub_1D1771B4C(v22, v19);
    sub_1D18F1630();
    sub_1D1E68F1C();
    sub_1D1771B5C(v22, v23);
    v20 = v11[10];
    LOBYTE(v22) = 6;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticResident.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1D03DC8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticResident();
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = (v1 + v3[6]);
  if (v7[1])
  {
    v8 = *v7;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1771CBC(a1, *(v1 + v3[7]));
  sub_1D1771CBC(a1, *(v1 + v3[8]));
  v9 = v1 + v3[9];
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      sub_1D1E6922C();
      goto LABEL_18;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = 6;
      }
    }

    else
    {
      v12 = v10 != 0;
    }

LABEL_17:
    MEMORY[0x1D3892850](v12);
    goto LABEL_18;
  }

  if (v11)
  {
    MEMORY[0x1D3892850](4);
    v12 = v10;
    goto LABEL_17;
  }

  MEMORY[0x1D3892850](3);
  sub_1D1E6922C();
  if (v10)
  {
    sub_1D176D4E8(a1, v10);
  }

LABEL_18:
  v13 = v1 + v3[10];
  return sub_1D1E676EC();
}

uint64_t StaticResident.hashValue.getter()
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticResident.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1D1E66A7C();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v38 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D9A0, &unk_1D1EA7360);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v38 - v10;
  v12 = type metadata accessor for StaticResident();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D03588();
  v47 = v11;
  v17 = v49;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v7;
  v18 = v45;
  v49 = v15;
  LOBYTE(v50) = 0;
  v19 = sub_1D1D03DC8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v20 = v3;
  v40 = v19;
  v21 = *(v44 + 32);
  v22 = v49;
  v21(v49, v46, v20);
  LOBYTE(v50) = 1;
  v23 = sub_1D1E68D2C();
  v41 = v20;
  v39 = v21;
  v24 = v12;
  v25 = *(v12 + 20);
  v26 = v22;
  v27 = (v22 + v25);
  *v27 = v23;
  v27[1] = v28;
  LOBYTE(v50) = 2;
  v46 = 0;
  v29 = sub_1D1E68C6C();
  v30 = v18;
  v31 = (v26 + v24[6]);
  *v31 = v29;
  v31[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D970, &qword_1D1EA7350);
  v52 = 3;
  sub_1D1D036FC(&qword_1EC64D9A8, sub_1D1D03774);
  sub_1D1E68D7C();
  v33 = a1;
  *(v26 + v24[7]) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D988, &qword_1D1EA7358);
  v52 = 4;
  sub_1D1D03630(&qword_1EC64D9B8, sub_1D1D037C8);
  sub_1D1E68D7C();
  *(v26 + v24[8]) = v50;
  v52 = 5;
  sub_1D18F18D0();
  sub_1D1E68D7C();
  v34 = v51;
  v35 = v26 + v24[9];
  *v35 = v50;
  *(v35 + 8) = v34;
  LOBYTE(v50) = 6;
  v36 = v42;
  sub_1D1E68D7C();
  (*(v30 + 8))(v47, v48);
  v39(v26 + v24[10], v36, v20);
  sub_1D1D0381C(v26, v43);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D1D03880(v26);
}

uint64_t sub_1D1D00554()
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D00598()
{
  sub_1D1E6920C();
  StaticResident.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticResident.iconSymbol.getter()
{
  v1 = 0x6E6F697473657571;
  v2 = v0 + *(type metadata accessor for StaticResident() + 36);
  v3 = *(v2 + 8);
  if (v3 == 3)
  {
    if (*v2 == 1)
    {
      v4 = 1;
      goto LABEL_6;
    }
  }

  else if (v3 == 1)
  {
    v4 = *v2;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v4;
    v6 = inited + 32;
    *(inited + 40) = v3;
    v1 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
    swift_setDeallocating();
    sub_1D1771B4C(v4, v3);
    sub_1D18EB158(v6);
  }

  return v1;
}

uint64_t sub_1D1D006F8(id *a1, void *a2)
{
  v38 = sub_1D1E66A7C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v7 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = [*a1 device];
  if (v19)
  {
    v20 = v19;
    v21 = a2;
    v22 = [v19 uniqueIdentifier];

    sub_1D1E66A5C();
    a2 = v21;
    v23 = *(v4 + 56);
    v23(v18, 0, 1, v38);
  }

  else
  {
    v23 = *(v4 + 56);
    v23(v18, 1, 1, v38);
  }

  v24 = [a2 device];
  v25 = [v24 uniqueIdentifier];

  sub_1D1E66A5C();
  v26 = v38;
  v23(v16, 0, 1, v38);
  v27 = *(v36 + 48);
  sub_1D1741C08(v18, v9, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v16, &v9[v27], &qword_1EC642590, qword_1D1E71260);
  v28 = *(v4 + 48);
  if (v28(v9, 1, v26) != 1)
  {
    sub_1D1741C08(v9, v37, &qword_1EC642590, qword_1D1E71260);
    if (v28(&v9[v27], 1, v26) != 1)
    {
      v30 = v4;
      v31 = v35;
      (*(v4 + 32))(v35, &v9[v27], v26);
      sub_1D1D03DC8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v32 = v37;
      v29 = sub_1D1E6775C();
      v33 = *(v30 + 8);
      v33(v31, v26);
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
      v33(v32, v26);
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      return v29 & 1;
    }

    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    (*(v4 + 8))(v37, v26);
    goto LABEL_9;
  }

  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
  if (v28(&v9[v27], 1, v26) != 1)
  {
LABEL_9:
    sub_1D1741A30(v9, &qword_1EC642980, &unk_1D1E6E6E0);
    v29 = 0;
    return v29 & 1;
  }

  sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
  v29 = 1;
  return v29 & 1;
}

void sub_1D1D00C00(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v3 = a1;
  v4 = [v3 category];
  v5 = [v4 categoryType];

  v6 = sub_1D1E6781C();
  v8 = v7;

  v9 = *MEMORY[0x1E696C970];
  if (sub_1D1E6781C() == v6 && v10 == v8)
  {

    v13 = 1;
    goto LABEL_16;
  }

  v12 = sub_1D1E6904C();

  if (v12)
  {

    v13 = 1;
LABEL_16:
    *a2 = v13;
    v18 = 3;
LABEL_17:
    *(a2 + 8) = v18;
    return;
  }

  v14 = *MEMORY[0x1E696C9B0];
  if (sub_1D1E6781C() == v6 && v15 == v8)
  {
  }

  else
  {
    v17 = sub_1D1E6904C();

    if ((v17 & 1) == 0)
    {

LABEL_15:
      v13 = 2;
      goto LABEL_16;
    }
  }

  v19 = [v3 homePodVariant];

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      if (v19 != 3)
      {
        goto LABEL_25;
      }

      v20 = 3;
    }

    *a2 = v20;
    v18 = 1;
    goto LABEL_17;
  }

  if (!v19)
  {
    *a2 = 0;
    v18 = 1;
    goto LABEL_17;
  }

LABEL_25:
  *a2 = 1;
  *(a2 + 8) = 1;
}

uint64_t sub_1D1D00DD8(void *a1, id a2)
{
  if (!a1)
  {
    v3 = [a2 name];
    goto LABEL_7;
  }

  v3 = [a1 configuredName];
  if (v3)
  {
LABEL_7:
    v4 = v3;
    v7 = sub_1D1E6781C();
    goto LABEL_8;
  }

  v4 = a1;
  HMAccessory.specialMediaCategory.getter(&v12);
  v5 = v13;
  if (v13 == 255 || (v6 = v12, v7 = sub_1D1C06E10(&v12), v9 = v8, sub_1D18EB2D8(v6, v5), !v9))
  {
    v11 = [v4 name];
    v7 = sub_1D1E6781C();

    return v7;
  }

LABEL_8:

  return v7;
}

uint64_t sub_1D1D00EF8()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D00FC4, 0, 0);
}

uint64_t sub_1D1D00FC4()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D010B4;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D01520;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D010B4()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 residentDevices];
    sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1D01520()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D015B8, 0, 0);
}

uint64_t sub_1D1D015B8()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01644, v3, v2);
}

uint64_t sub_1D1D01644()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D016B8, 0, 0);
}

uint64_t sub_1D1D016B8()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01750, v4, v3);
}

uint64_t sub_1D1D01750()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 residentFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_1D1D0180C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v0 + 48) = v1;
  if (v1)
  {
    *(v0 + 112) = *(type metadata accessor for StaticResident() + 40);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D0190C;
    v4 = 0;
  }

  else
  {
    *(v0 + 64) = sub_1D1E67E1C();
    *(v0 + 72) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D01AF8;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D0190C()
{
  v10 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v4);
    sub_1D1747DDC(&v9);

    v5 = v9;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 40) + *(v0 + 112);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v0 + 56) = sub_1D174A6C4(sub_1D1749C64, v7, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1D01A94, 0, 0);
}

uint64_t sub_1D1D01A94()
{
  v1 = v0[6];

  v2 = v0[7];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D1D01AF8()
{
  v1 = *(v0 + 72);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D01B90, 0, 0);
}

uint64_t sub_1D1D01B90()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01C1C, v3, v2);
}

uint64_t sub_1D1D01C1C()
{
  v1 = *(v0 + 80);

  *(v0 + 88) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D01C90, 0, 0);
}

uint64_t sub_1D1D01C90()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v2 + *(type metadata accessor for StaticResident() + 40);
  v0[12] = sub_1D1E66A2C();
  v0[13] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D01D38, v5, v4);
}

uint64_t sub_1D1D01D38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = [v3 homeFor_];

  v5 = v0[1];

  return v5(v4);
}

uint64_t StaticResident.setAsPreferredResident(requireAutoUpdate:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 264) = a1;
  v3 = sub_1D1E66A7C();
  *(v2 + 152) = v3;
  v4 = *(v3 - 8);
  *(v2 + 160) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  *(v2 + 176) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v2 + 216) = v9;
  *v9 = v2;
  v9[1] = sub_1D1D01F40;

  return sub_1D1D00EF8();
}

uint64_t sub_1D1D01F40(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D02040, 0, 0);
}

uint64_t sub_1D1D02040()
{
  if (v0[28])
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_1D1D021FC;
    v2 = v0[18];

    return sub_1D1D017EC();
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07B5D8);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6833C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D16EC000, v5, v6, "calling setAsPreferredResident failed due to missing resident", v7, 2u);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    v9 = v0[25];
    v8 = v0[26];
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[21];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1D021FC(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D022FC, 0, 0);
}

uint64_t sub_1D1D022FC()
{
  v1 = *(v0 + 240);
  if (!v1)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE07B5D8);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6833C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 224);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D16EC000, v8, v9, "calling setAsPreferredResident failed due to missing home", v12, 2u);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      v8 = v11;
    }

    goto LABEL_29;
  }

  v70 = *(v0 + 240);
  v2 = [v1 userSelectedPreferredResident];
  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = v2;
    v5 = [v2 uniqueIdentifier];

    sub_1D1E66A5C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v13 = *(v0 + 224);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v18 + 56);
  v20(v14, v6, 1, v19);
  v21 = [v13 uniqueIdentifier];
  sub_1D1E66A5C();

  v20(v15, 0, 1, v19);
  v22 = *(v17 + 48);
  sub_1D1741C08(v14, v16, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v15, v16 + v22, &qword_1EC642590, qword_1D1E71260);
  v23 = *(v18 + 48);
  if (v23(v16, 1, v19) == 1)
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 152);
    sub_1D1741A30(*(v0 + 200), &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    if (v23(v16 + v22, 1, v25) == 1)
    {
      sub_1D1741A30(*(v0 + 184), &qword_1EC642590, qword_1D1E71260);
LABEL_24:
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 224);
      v54 = sub_1D1E6709C();
      __swift_project_value_buffer(v54, qword_1EE07B5D8);
      v55 = v53;
      v8 = sub_1D1E6707C();
      v56 = sub_1D1E6835C();

      v57 = os_log_type_enabled(v8, v56);
      v58 = *(v0 + 224);
      if (v57)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v58;
        *v60 = v58;
        v61 = v58;
        _os_log_impl(&dword_1D16EC000, v8, v56, "selectPreferredResident already set to %@", v59, 0xCu);
        sub_1D1741A30(v60, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v60, -1, -1);
        MEMORY[0x1D3893640](v59, -1, -1);
      }

      else
      {

        v8 = v58;
      }

LABEL_29:

      v63 = *(v0 + 200);
      v62 = *(v0 + 208);
      v65 = *(v0 + 184);
      v64 = *(v0 + 192);
      v66 = *(v0 + 168);

      v67 = *(v0 + 8);

      return v67();
    }

    goto LABEL_14;
  }

  v26 = *(v0 + 152);
  sub_1D1741C08(*(v0 + 184), *(v0 + 192), &qword_1EC642590, qword_1D1E71260);
  v27 = v23(v16 + v22, 1, v26);
  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v30 = *(v0 + 192);
  if (v27 == 1)
  {
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    sub_1D1741A30(*(v0 + 200), &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    (*(v31 + 8))(v30, v32);
LABEL_14:
    sub_1D1741A30(*(v0 + 184), &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_15;
  }

  v69 = *(v0 + 184);
  v48 = *(v0 + 160);
  v49 = *(v0 + 168);
  v50 = *(v0 + 152);
  (*(v48 + 32))(v49, v16 + v22, v50);
  sub_1D1D03DC8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v51 = sub_1D1E6775C();
  v52 = *(v48 + 8);
  v52(v49, v50);
  sub_1D1741A30(v29, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
  v52(v30, v50);
  sub_1D1741A30(v69, &qword_1EC642590, qword_1D1E71260);
  if (v51)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 224);
  v34 = sub_1D1E6709C();
  *(v0 + 248) = __swift_project_value_buffer(v34, qword_1EE07B5D8);
  v35 = v33;
  v36 = v70;
  v37 = sub_1D1E6707C();
  v38 = sub_1D1E6835C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 240);
    v40 = *(v0 + 224);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412546;
    *(v41 + 4) = v40;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v36;
    *v42 = v40;
    v42[1] = v39;
    v43 = v40;
    v44 = v36;
    _os_log_impl(&dword_1D16EC000, v37, v38, "calling selectPreferredResident for %@ on %@", v41, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v41, -1, -1);
  }

  v45 = *(v0 + 224);
  v46 = *(v0 + 264);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1D02B30;
  v47 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_54;
  *(v0 + 112) = v47;
  [v36 selectPreferredResident:v45 requireAutoUpdate:v46 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1D02B30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_1D1D02CE8;
  }

  else
  {
    v3 = sub_1D1D02C40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D02C40()
{
  v1 = *(v0 + 224);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1D02CE8()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[28];
  swift_willThrow();

  v5 = v4;
  v6 = v3;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v10 = v0[28];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v10;
    v12[1] = v9;
    v13 = v10;
    v14 = v9;
    _os_log_impl(&dword_1D16EC000, v7, v8, "selectPreferredResident failed for %@ on %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v15 = v0[32];
  v16 = v0[30];
  v17 = v0[28];
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[21];

  swift_willThrow();

  v23 = v0[1];
  v24 = v0[32];

  return v23();
}

uint64_t _s13HomeDataModel14StaticResidentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticResident();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((sub_1D17B30EC(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D17B30EC(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[9];
  v17 = *(a1 + v16 + 8);
  v25 = *(a1 + v16);
  v26 = v17;
  v18 = a2 + v16;
  v19 = *(v18 + 8);
  v23 = *v18;
  v24 = v19;
  sub_1D1771B4C(v25, v17);
  sub_1D1771B4C(v23, v19);
  v20 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v25, &v23);
  sub_1D1771B5C(v23, v24);
  sub_1D1771B5C(v25, v26);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = v4[10];

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

size_t sub_1D1D03040(void *a1)
{
  v16 = sub_1D1E66A7C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 supportsResidentSelection])
  {
    return 0;
  }

  v6 = [a1 autoSelectedPreferredResidents];
  if (!v6)
  {
    return v6;
  }

  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v7 = sub_1D1E67C1C();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v8 = sub_1D1E6873C();
  if (!v8)
  {
LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v6 = v17;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D3891EF0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      v17 = v6;
      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        sub_1D178CEFC(v14 > 1, v15 + 1, 1);
        v6 = v17;
      }

      ++v10;
      v6[2] = v15 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v16);
    }

    while (v8 != v10);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D032B0(void *a1)
{
  v5 = MEMORY[0x1E69E7CD0];
  if ([a1 supportsResidentSelection])
  {
    sub_1D1764594(&v3, 0);
  }

  if (([a1 capabilities] & 0x10000) != 0)
  {
    sub_1D1764594(&v4, 1);
  }

  return v5;
}

uint64_t sub_1D1D0332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1D03390()
{
  result = qword_1EC64D8E8;
  if (!qword_1EC64D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8E8);
  }

  return result;
}

unint64_t sub_1D1D033E4()
{
  result = qword_1EC64D8F0;
  if (!qword_1EC64D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8F0);
  }

  return result;
}

unint64_t sub_1D1D03438()
{
  result = qword_1EC64D8F8;
  if (!qword_1EC64D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D8F8);
  }

  return result;
}

unint64_t sub_1D1D0348C()
{
  result = qword_1EC64D930;
  if (!qword_1EC64D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D930);
  }

  return result;
}

unint64_t sub_1D1D034E0()
{
  result = qword_1EC64D938;
  if (!qword_1EC64D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D938);
  }

  return result;
}

unint64_t sub_1D1D03534()
{
  result = qword_1EC64D940;
  if (!qword_1EC64D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D940);
  }

  return result;
}

unint64_t sub_1D1D03588()
{
  result = qword_1EC64D968;
  if (!qword_1EC64D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D968);
  }

  return result;
}

unint64_t sub_1D1D035DC()
{
  result = qword_1EC64D980;
  if (!qword_1EC64D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D980);
  }

  return result;
}

uint64_t sub_1D1D03630(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D988, &qword_1D1EA7358);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D036A8()
{
  result = qword_1EC64D998;
  if (!qword_1EC64D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D998);
  }

  return result;
}

uint64_t sub_1D1D036FC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D970, &qword_1D1EA7350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D03774()
{
  result = qword_1EC64D9B0;
  if (!qword_1EC64D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9B0);
  }

  return result;
}

unint64_t sub_1D1D037C8()
{
  result = qword_1EC64D9C0;
  if (!qword_1EC64D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9C0);
  }

  return result;
}

uint64_t sub_1D1D0381C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D03880(uint64_t a1)
{
  v2 = type metadata accessor for StaticResident();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D038DC(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v5 = type metadata accessor for StaticResident();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = *(result + 48);
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v48 = (v43 + 32);
    v42 = (v43 + 8);
    while (1)
    {
      v49 = v17;
      v20 = v47;
      sub_1D1741C08(v18, v47, &qword_1EC643730, &unk_1D1EA7CA0);
      v21 = *v48;
      v22 = v50;
      v23 = v9;
      (*v48)(v50, v20, v9);
      v24 = v8;
      sub_1D1D0332C(v20 + v45, v8);
      v25 = *v51;
      v27 = sub_1D1742188(v22);
      v28 = *(v25 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v25 + 24) >= v30)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17372A8();
        }
      }

      else
      {
        v32 = v51;
        sub_1D17256A8(v30, a2 & 1);
        v33 = *v32;
        v34 = sub_1D1742188(v50);
        if ((v31 & 1) != (v35 & 1))
        {
          goto LABEL_17;
        }

        v27 = v34;
      }

      v36 = *v51;
      if (v31)
      {
        v9 = v23;
        (*v42)(v50, v23);
        v19 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D049BC(v24, v19);
      }

      else
      {
        v36[(v27 >> 6) + 8] |= 1 << v27;
        v9 = v23;
        v21((v36[6] + *(v43 + 72) * v27), v50, v23);
        v37 = v36[7] + *(v46 + 72) * v27;
        v8 = v24;
        result = sub_1D1D0332C(v24, v37);
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v36[2] = v40;
      }

      v18 += v44;
      a2 = 1;
      v17 = v49 - 1;
      if (v49 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1D03CD4()
{
  result = qword_1EE07CB00;
  if (!qword_1EE07CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB00);
  }

  return result;
}

unint64_t sub_1D1D03D2C()
{
  result = qword_1EE07CB10;
  if (!qword_1EE07CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB10);
  }

  return result;
}

uint64_t sub_1D1D03DC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1D03E80()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17786E4();
    if (v1 <= 0x3F)
    {
      sub_1D1D03FEC(319, &qword_1EE07B6C8, sub_1D1D03F98);
      if (v2 <= 0x3F)
      {
        sub_1D1D03FEC(319, &qword_1EE07B6D0, sub_1D1D0404C);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D1D03F98()
{
  result = qword_1EE07CB08;
  if (!qword_1EE07CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CB08);
  }

  return result;
}

void sub_1D1D03FEC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D1E681FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D1D0404C()
{
  result = qword_1EE07CB18[0];
  if (!qword_1EE07CB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07CB18);
  }

  return result;
}

unint64_t sub_1D1D04134()
{
  result = qword_1EC64D9D0;
  if (!qword_1EC64D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9D0);
  }

  return result;
}

unint64_t sub_1D1D0418C()
{
  result = qword_1EC64D9D8;
  if (!qword_1EC64D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9D8);
  }

  return result;
}

unint64_t sub_1D1D041E4()
{
  result = qword_1EC64D9E0;
  if (!qword_1EC64D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9E0);
  }

  return result;
}

unint64_t sub_1D1D0423C()
{
  result = qword_1EC64D9E8;
  if (!qword_1EC64D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9E8);
  }

  return result;
}

unint64_t sub_1D1D04294()
{
  result = qword_1EC64D9F0;
  if (!qword_1EC64D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9F0);
  }

  return result;
}

unint64_t sub_1D1D042EC()
{
  result = qword_1EC64D9F8;
  if (!qword_1EC64D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D9F8);
  }

  return result;
}

unint64_t sub_1D1D04344()
{
  result = qword_1EC64DA00;
  if (!qword_1EC64DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA00);
  }

  return result;
}

unint64_t sub_1D1D0439C()
{
  result = qword_1EC64DA08;
  if (!qword_1EC64DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA08);
  }

  return result;
}

unint64_t sub_1D1D043F4()
{
  result = qword_1EC64DA10;
  if (!qword_1EC64DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA10);
  }

  return result;
}

unint64_t sub_1D1D0444C()
{
  result = qword_1EC64DA18;
  if (!qword_1EC64DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA18);
  }

  return result;
}

unint64_t sub_1D1D044A4()
{
  result = qword_1EC64DA20;
  if (!qword_1EC64DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA20);
  }

  return result;
}

unint64_t sub_1D1D044FC()
{
  result = qword_1EC64DA28;
  if (!qword_1EC64DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA28);
  }

  return result;
}

unint64_t sub_1D1D04554()
{
  result = qword_1EC64DA30;
  if (!qword_1EC64DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA30);
  }

  return result;
}

unint64_t sub_1D1D045AC()
{
  result = qword_1EC64DA38;
  if (!qword_1EC64DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA38);
  }

  return result;
}

unint64_t sub_1D1D04604()
{
  result = qword_1EC64DA40;
  if (!qword_1EC64DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA40);
  }

  return result;
}

unint64_t sub_1D1D0465C()
{
  result = qword_1EC64DA48;
  if (!qword_1EC64DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA48);
  }

  return result;
}

unint64_t sub_1D1D046B4()
{
  result = qword_1EC64DA50;
  if (!qword_1EC64DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA50);
  }

  return result;
}

uint64_t sub_1D1D04708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1D0494C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D049BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D04A50(uint64_t a1)
{
  v2 = sub_1D1D04BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D04A8C(uint64_t a1)
{
  v2 = sub_1D1D04BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticResidentConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DA58, &qword_1D1EA7CB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D04BDC();
  sub_1D1E6930C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D1D04BDC()
{
  result = qword_1EC64DA60;
  if (!qword_1EC64DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA60);
  }

  return result;
}

uint64_t sub_1D1D04CBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DA58, &qword_1D1EA7CB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D04BDC();
  sub_1D1E6930C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D1D04DD8()
{
  result = qword_1EC64DA68;
  if (!qword_1EC64DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DA68);
  }

  return result;
}