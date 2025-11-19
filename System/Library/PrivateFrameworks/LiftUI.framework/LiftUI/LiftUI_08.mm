uint64_t _s6LiftUI0A9UIFactoryC14viewController3url8delegate10dataSource15contentRegistrySo06UIViewE0C10Foundation3URLV_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v111 = a3;
  v112 = a5;
  v110 = a4;
  v113 = a2;
  v114 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  v5 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = (&v100 - v6);
  v7 = sub_255E385D8();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  v10 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v12 = (&v100 - v11);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v13 = *(v103 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v103);
  v16 = &v100 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  v22 = type metadata accessor for RemoteContent(0);
  v107 = *(v22 - 8);
  v23 = *(v107 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v100 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v29 = *(v28 + 48);
  v30 = *(v28 + 64);
  v31 = sub_255E38588();
  (*(*(v31 - 8) + 16))(v27, v114, v31);
  v27[v29] = 8;
  *&v27[v30] = xmmword_255E3B900;
  v114 = v27;
  v108 = v22;
  swift_storeEnumTagMultiPayload();
  v32 = type metadata accessor for RemoteStateStore(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = qword_27F7E8600;
  v37 = MEMORY[0x277D84F90];
  *(v35 + v36) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v35 + qword_27F7E85F8) = 0;
  v38 = *(*v35 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v18 + 32))(v35 + v38, v21, v17);
  v39 = *(*v35 + 112);
  *(v35 + v39) = sub_255DC513C(v37);
  *(v35 + *(*v35 + 128)) = 0;
  *(v35 + *(*v35 + 120)) = 0;
  *(v35 + *(*v35 + 128)) = 0;
  v40 = type metadata accessor for LocalStateStore(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = qword_27F7E8608;
  *(v43 + v44) = sub_255DC5124(v37);
  *(v43 + qword_27F7E8610) = 0;
  v45 = *(*v43 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v13 + 32))(v43 + v45, v16, v103);
  v46 = *(*v43 + 112);
  *(v43 + v46) = sub_255DC513C(v37);
  *(v43 + *(*v43 + 128)) = 0;
  *(v43 + *(*v43 + 120)) = 0;
  *(v43 + *(*v43 + 128)) = 0;
  if (v113)
  {
    v47 = v113;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    v103 = swift_allocObject();
    *(v103 + 16) = v47;
    v48 = v109;
    sub_255DD6D20(v114, v109);
    swift_unknownObjectRetain_n();
    v49 = v104;
    sub_255E385C8();
    v50 = sub_255E385B8();
    v52 = v51;
    (*(v105 + 8))(v49, v106);
    v53 = type metadata accessor for RemoteContentView(0);
    v54 = v12 + v53[9];
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    v55 = v12 + v53[10];
    *v55 = swift_getKeyPath();
    *(v55 + 1) = 0;
    v55[16] = 0;
    v56 = v12 + v53[11];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    *v12 = v50;
    v12[1] = v52;
    v57 = v53[5];
    sub_255DD6D20(v48, v12 + v57);
    (*(v107 + 56))(v12 + v57, 0, 1, v108);
    v58 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v58 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v48);
    v59 = v117;
    v60 = (v12 + v53[8]);
    *v60 = v116;
    v60[1] = v59;
    v61 = v12 + v53[6];
    *v61 = sub_255DDAB28;
    *(v61 + 1) = v35;
    v61[16] = 0;
    v62 = v12 + v53[7];
    *v62 = sub_255DDAB28;
    *(v62 + 1) = v43;
    v62[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v64 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v65 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v65 = KeyPath;
    v65[1] = v64;
    v65[2] = &off_2867E51D8;
    v66 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v67 + 24) = v110;
    swift_unknownObjectWeakAssign();
    v68 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v68 = v66;
    v68[1] = v67;
    v68[2] = &off_2867E3ED8;
    v69 = swift_getKeyPath();
    v70 = (v12 + *(v102 + 36));
    v71 = v112;
    *v70 = v69;
    v70[1] = v71;
    v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v73 = v71;
    v74 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = v109;
    sub_255DD6D20(v114, v109);
    v76 = v104;
    sub_255E385C8();
    v77 = sub_255E385B8();
    v79 = v78;
    (*(v105 + 8))(v76, v106);
    v80 = type metadata accessor for RemoteContentView(0);
    v81 = v101;
    v82 = v101 + v80[9];
    *v82 = swift_getKeyPath();
    *(v82 + 1) = 0;
    v82[16] = 0;
    v83 = v81 + v80[10];
    *v83 = swift_getKeyPath();
    *(v83 + 1) = 0;
    v83[16] = 0;
    v84 = v81 + v80[11];
    *v84 = swift_getKeyPath();
    v84[8] = 0;
    *v81 = v77;
    v81[1] = v79;
    v85 = v80[5];
    sub_255DD6D20(v75, v81 + v85);
    (*(v107 + 56))(v81 + v85, 0, 1, v108);
    v86 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v86 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v75);
    v87 = v117;
    v88 = (v81 + v80[8]);
    *v88 = v116;
    v88[1] = v87;
    v89 = v81 + v80[6];
    *v89 = sub_255D94D70;
    *(v89 + 1) = v35;
    v89[16] = 0;
    v90 = v81 + v80[7];
    *v90 = sub_255D94D70;
    *(v90 + 1) = v43;
    v90[16] = 0;
    v91 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v92 = swift_allocObject();
    *(v92 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v92 + 24) = v110;
    swift_unknownObjectWeakAssign();
    v93 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v93 = v91;
    v93[1] = v92;
    v93[2] = &off_2867E3ED8;
    v94 = swift_getKeyPath();
    v95 = (v81 + *(v100 + 36));
    v96 = v112;
    *v95 = v94;
    v95[1] = v96;
    v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v98 = v96;
    v74 = sub_255E39178();
  }

  sub_255DDAA54(v114);
  return v74;
}

unint64_t sub_255DDAA00()
{
  result = qword_27F7E8378;
  if (!qword_27F7E8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8378);
  }

  return result;
}

uint64_t sub_255DDAA54(uint64_t a1)
{
  v2 = type metadata accessor for RemoteContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DDAAD0()
{
  result = qword_27F7E83B8;
  if (!qword_27F7E83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E83B8);
  }

  return result;
}

unint64_t sub_255DDAB2C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_255D3CA20(result, a2), (v6 & 1) != 0))
  {
    *a4 = *(*(a3 + 56) + 8 * result);
  }

  else
  {
    *a4 = 0xF000000000000007;
  }

  return result;
}

uint64_t StringResolvable.resolved(with:)(unint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83C0, &qword_255E552A0);
  v425 = *(v4 - 8);
  v5 = *(v425 + 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v408 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83C8, &qword_255E552A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v408 - v12;
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  if (!(v17 >> 6))
  {
    return sub_255DDEDA0(a1, v14, v15, v16, v17 & 1);
  }

  v424 = a1;
  if (v17 >> 6 == 1)
  {
    v18 = *(v14 + 16);
    v19 = MEMORY[0x277D84F90];
    v426 = v2;
    if (!v18)
    {
LABEL_176:
      v433 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
      sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60);
      v220 = sub_255E3A498();

      return v220;
    }

    v438 = MEMORY[0x277D84F90];
    v20 = v18;
    v423 = v14;
    sub_255DE5D20(0, v18, 0);
    v21 = v20;
    v22 = v423;
    v23 = 0;
    v19 = v438;
    v421 = qword_27F7E85F8;
    v419 = qword_27F7E8600;
    v24 = (v423 + 56);
    v422 = v20;
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
LABEL_333:
        __break(1u);
        goto LABEL_334;
      }

      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      if ((*v24 & 1) == 0)
      {
        v55 = *(v24 - 3);
        v56 = *(v24 - 2);

        goto LABEL_77;
      }

      v27 = *(v24 - 1);
      v425 = *(v24 - 3);
      v28 = a1;
      if ((~v27 & 0xF000000000000007) != 0)
      {
        v57 = *(v421 + a1);
        if (!v57)
        {
          sub_255D3E5D8(v25, v26, v27, 1);
          sub_255D34858(v27);
          goto LABEL_39;
        }

        v58 = v419;
        swift_beginAccess();
        v59 = *(v28 + v58);
        v60 = *(v59 + 16);
        sub_255D3E5D8(v25, v26, v27, 1);
        sub_255D34858(v27);

        if (!v60 || (v61 = sub_255D3CA20(v25, v26), (v62 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_39;
        }

        v418 = v57;
        v63 = *(v59 + 56) + 32 * v61;
        v64 = *v63;
        v65 = *(v63 + 8);
        v66 = *(v63 + 16);
        v67 = *(v63 + 24);
        swift_endAccess();
        if ((v67 & 1) == 0)
        {
          sub_255D5C258(v64, v65, v66, 0);

          a1 = v424;
          v21 = v422;
          v115 = v64;
          goto LABEL_72;
        }

        *&v416 = v65;
        v417 = v64;
        v415 = v66;
        if ((~v66 & 0xF000000000000007) == 0)
        {
          v68 = v418;
          if (*(v418 + qword_27F7E85F8))
          {
            v414 = *(v418 + qword_27F7E85F8);
            v69 = v66;
            v70 = qword_27F7E8600;
            swift_beginAccess();
            v71 = *(v68 + v70);
            v413 = *(v71 + 16);
            v72 = v417;
            v73 = v69;
            v74 = v414;
            sub_255D5C258(v417, v416, v73, 1);

            if (v413)
            {
              v75 = sub_255D3CA20(v72, v416);
              if (v76)
              {
                v77 = *(v71 + 56) + 32 * v75;
                v78 = *v77;
                v413 = *(v77 + 8);
                v79 = *(v77 + 16);
                LODWORD(v412) = *(v77 + 24);
                swift_endAccess();
                sub_255D5C258(v78, v413, v79, v412);
                v410 = v78;
                v80 = v78;
                v81 = v413;
                v411 = v79;
                v82 = v79;
                v83 = v412;
                v84 = v426;
                sub_255DDEBF8(v74, v80, v413, v82, v412, &v433);
                if (v84)
                {

                  sub_255D4DE84(v410, v81, v411, v83);
                  v426 = 0;
                  goto LABEL_97;
                }

                v426 = 0;

                sub_255D4DE84(v410, v81, v411, v83);
                v115 = v433;
                v431 = v433;
                v21 = v422;
                v150 = v416;
LABEL_145:
                if ((~v115 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v115);
                  sub_255D5C33C();
                  v186 = swift_allocError();
                  v187 = v417;
                  *v188 = v417;
                  *(v188 + 8) = v150;
                  *(v188 + 16) = &type metadata for DecodableState;
                  *(v188 + 32) = 0;
                  swift_willThrow();

                  v426 = 0;
                  v189 = v415;
                  goto LABEL_154;
                }

                sub_255D5C30C(v115);
                sub_255D5C324(v115);

                sub_255D4DE84(v417, v150, v415, 1);
                a1 = v424;
LABEL_72:
                if ((~v115 & 0xF000000000000007) == 0)
                {
                  sub_255D5C33C();
                  swift_allocError();
                  v398 = v425;
                  *v399 = v425;
                  *(v399 + 8) = v26;
                  *(v399 + 16) = MEMORY[0x277D837D0];
                  *(v399 + 32) = 0;
                  swift_willThrow();

                  sub_255D2F870(v27);
                  v397 = v398;
                  v400 = v26;
                  v401 = v27;
LABEL_322:
                  sub_255D38090(v397, v400, v401, 1);
                }

                v105 = v21;
                v116 = v426;
                v117 = sub_255DE0DFC(v115, a1, v27);
                v119 = v115;
                v426 = v116;
                if (v116)
                {
                  sub_255D5C324(v115);
                  sub_255D2F870(v27);
                  sub_255D38090(v425, v26, v27, 1);
                }

                v108 = v117;
                v110 = v118;
                sub_255D5C324(v119);
                sub_255D2F870(v27);
                v111 = v425;
                v112 = v26;
                v113 = v27;
                goto LABEL_75;
              }
            }

            swift_endAccess();

LABEL_97:
            v150 = v416;
          }

          else
          {
            v150 = v416;

            sub_255D34858(v66);
          }

          v433 = v417;
          v434 = v150;
          v159 = *(*v68 + 112);
          swift_beginAccess();
          v160 = *(v68 + v159);
          if (*(v160 + 16))
          {
            v161 = *(v68 + v159);

            v162 = sub_255D3CA20(v417, v150);
            if (v163)
            {
              v164 = *(*(v160 + 56) + 8 * v162);

              MEMORY[0x28223BE20](v165);
              *(&v408 - 4) = MEMORY[0x277D837D0];
              *(&v408 - 3) = &type metadata for DecodableState;
              *(&v408 - 2) = MEMORY[0x277D837E0];
              KeyPath = swift_getKeyPath();
              v414 = &v408;
              MEMORY[0x28223BE20](KeyPath);
              *(&v408 - 4) = MEMORY[0x277D837D0];
              *(&v408 - 3) = &type metadata for DecodableState;
              *(&v408 - 2) = MEMORY[0x277D837E0];
              swift_getKeyPath();
              sub_255E38728();

              if ((v164 & 0x8000000000000000) != 0)
              {
                goto LABEL_348;
              }

              v21 = v422;
              if (v164 >= *(v430 + 16))
              {
                goto LABEL_350;
              }

              v431 = *(v430 + 8 * v164 + 32);

              v150 = v416;
              goto LABEL_144;
            }
          }

          v182 = *(v68 + *(*v68 + 120));
          if (v182)
          {
            (*(*v182 + 248))(&v431, &v433);
          }

          else
          {
            v431 = 0xF000000000000007;
          }

          v21 = v422;
LABEL_144:
          v115 = v431;
          goto LABEL_145;
        }

        v135 = v418;
        v136 = *(v418 + qword_27F7E85F8);
        if (v136)
        {
          v137 = qword_27F7E8600;
          swift_beginAccess();
          v412 = *(v135 + v137);
          v413 = *(v412 + 16);
          v138 = v417;
          v139 = v416;
          sub_255D5C258(v417, v416, v66, 1);
          sub_255D34858(v66);
          v414 = v136;

          if (v413)
          {
            v140 = sub_255D3CA20(v138, v139);
            if (v141)
            {
              v142 = *(v412 + 56) + 32 * v140;
              v144 = *v142;
              v143 = *(v142 + 8);
              v145 = *(v142 + 16);
              v146 = *(v142 + 24);
              swift_endAccess();
              sub_255D5C258(v144, v143, v145, v146);
              v411 = v144;
              v413 = v145;
              LODWORD(v412) = v146;
              v147 = v426;
              sub_255DDEBF8(v414, v144, v143, v145, v146, &v433);
              v148 = v418;
              if (v147)
              {

                sub_255D4DE84(v411, v143, v413, v412);
                v426 = 0;
                v138 = v417;
                v149 = v416;
                goto LABEL_120;
              }

              v426 = 0;

              sub_255D4DE84(v411, v143, v413, v412);
              v190 = v433;
              v150 = v416;
LABEL_150:
              if ((~v190 & 0xF000000000000007) != 0)
              {
                v189 = v415;
                v193 = v426;
                sub_255DE08EC(v190, v148, v415, &v432);
                if (!v193)
                {
                  v426 = 0;
                  sub_255D5C324(v190);
                  sub_255D2F870(v189);

                  sub_255D4DE84(v417, v416, v189, 1);
                  v115 = v432;
                  a1 = v424;
                  v21 = v422;
                  goto LABEL_72;
                }

                sub_255D5C324(v190);
                sub_255D2F870(v189);

                v426 = 0;
                v187 = v417;
                v150 = v416;
              }

              else
              {
                sub_255D5C33C();
                v191 = swift_allocError();
                v187 = v417;
                *v192 = v417;
                *(v192 + 8) = v150;
                *(v192 + 16) = &type metadata for DecodableState;
                *(v192 + 32) = 0;
                swift_willThrow();

                v189 = v415;
                sub_255D2F870(v415);

                v426 = 0;
              }

LABEL_154:

              sub_255D4DE84(v187, v150, v189, 1);
              v25 = v425;
LABEL_39:
              v433 = v25;
              v434 = v26;
              a1 = v424;
              v92 = *(*v424 + 112);
              swift_beginAccess();
              v93 = *(a1 + v92);
              if (*(v93 + 16))
              {
                v94 = *(a1 + v92);

                v95 = sub_255D3CA20(v25, v26);
                if (v96)
                {
                  v97 = *(*(v93 + 56) + 8 * v95);

                  MEMORY[0x28223BE20](v98);
                  *(&v408 - 4) = MEMORY[0x277D837D0];
                  *(&v408 - 3) = &type metadata for DecodableState;
                  *(&v408 - 2) = MEMORY[0x277D837E0];
                  v20 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v20);
                  *(&v408 - 4) = MEMORY[0x277D837D0];
                  *(&v408 - 3) = &type metadata for DecodableState;
                  *(&v408 - 2) = MEMORY[0x277D837E0];
                  v21 = swift_getKeyPath();
                  a1 = v424;
                  sub_255E38728();

                  if ((v97 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_337;
                  }

                  v21 = v422;
                  if (v97 >= *(v432 + 16))
                  {
                    goto LABEL_339;
                  }

                  v432 = *(v432 + 8 * v97 + 32);

                  goto LABEL_71;
                }
              }

              v100 = *(a1 + *(*a1 + 120));
              if (v100)
              {
                (*(*v100 + 248))(&v432, &v433);
              }

              else
              {
                v432 = 0xF000000000000007;
              }

              v21 = v422;
LABEL_71:
              v115 = v432;
              goto LABEL_72;
            }
          }

          swift_endAccess();

          v148 = v418;
          v149 = v139;
        }

        else
        {
          v138 = v417;
          v172 = v416;
          sub_255D5C258(v417, v416, v66, 1);
          sub_255D34858(v66);
          v149 = v172;
          v148 = v135;
        }

LABEL_120:
        v433 = v138;
        v434 = v149;
        v173 = *(*v148 + 112);
        v150 = v149;
        swift_beginAccess();
        v174 = *(v148 + v173);
        if (*(v174 + 16))
        {
          v175 = *(v148 + v173);

          v176 = sub_255D3CA20(v417, v150);
          if (v177)
          {
            v178 = *(*(v174 + 56) + 8 * v176);

            MEMORY[0x28223BE20](v179);
            *(&v408 - 4) = MEMORY[0x277D837D0];
            *(&v408 - 3) = &type metadata for DecodableState;
            *(&v408 - 2) = MEMORY[0x277D837E0];
            v180 = swift_getKeyPath();
            v414 = &v408;
            MEMORY[0x28223BE20](v180);
            *(&v408 - 4) = MEMORY[0x277D837D0];
            *(&v408 - 3) = &type metadata for DecodableState;
            *(&v408 - 2) = MEMORY[0x277D837E0];
            swift_getKeyPath();
            sub_255E38728();

            if ((v178 & 0x8000000000000000) != 0)
            {
              goto LABEL_347;
            }

            if (v178 >= *(v431 + 16))
            {
              goto LABEL_349;
            }

            v431 = *(v431 + 8 * v178 + 32);

            v150 = v416;
            goto LABEL_149;
          }
        }

        v183 = *(v148 + *(*v148 + 120));
        if (v183)
        {
          (*(*v183 + 248))(&v431, &v433);
        }

        else
        {
          v431 = 0xF000000000000007;
        }

LABEL_149:
        v190 = v431;
        goto LABEL_150;
      }

      v29 = *(v421 + a1);
      v420 = v27;
      if (!v29)
      {

        sub_255D34858(v27);
        goto LABEL_33;
      }

      v30 = v419;
      swift_beginAccess();
      v31 = *(v28 + v30);
      v32 = *(v31 + 16);
      sub_255D3E5D8(v25, v26, v27, 1);

      if (!v32 || (v33 = sub_255D3CA20(v25, v26), (v34 & 1) == 0))
      {
        swift_endAccess();

        goto LABEL_33;
      }

      v35 = *(v31 + 56) + 32 * v33;
      v37 = *v35;
      v36 = *(v35 + 8);
      v38 = *(v35 + 16);
      v39 = *(v35 + 24);
      swift_endAccess();
      if ((v39 & 1) == 0)
      {
        sub_255D5C258(v37, v36, v38, 0);

LABEL_82:
        v432 = v37;
        a1 = v424;
        v21 = v422;
        goto LABEL_53;
      }

      v418 = v36;
      if ((~v38 & 0xF000000000000007) == 0)
      {
        v40 = v38;
        v41 = *(v29 + qword_27F7E85F8);
        v417 = v40;
        if (v41)
        {
          v42 = qword_27F7E8600;
          swift_beginAccess();
          v43 = *(v29 + v42);
          *&v416 = *(v43 + 16);
          v44 = v40;
          v45 = v418;
          sub_255D5C258(v37, v418, v44, 1);

          if (v416)
          {
            v46 = sub_255D3CA20(v37, v45);
            if (v47)
            {
              v48 = *(v43 + 56) + 32 * v46;
              *&v416 = v41;
              v50 = *v48;
              v49 = *(v48 + 8);
              v51 = *(v48 + 16);
              LODWORD(v415) = *(v48 + 24);
              swift_endAccess();
              sub_255D5C258(v50, v49, v51, v415);
              v412 = v50;
              v413 = v49;
              v414 = v51;
              v52 = v51;
              v53 = v415;
              v54 = v426;
              sub_255DDEBF8(v416, v50, v49, v52, v415, &v433);
              if (v54)
              {

                sub_255D4DE84(v412, v413, v414, v53);
                v426 = 0;
                v36 = v418;
                goto LABEL_95;
              }

              v426 = 0;

              sub_255D4DE84(v412, v413, v414, v53);
              v184 = v433;
              v430 = v433;
              v21 = v422;
              v38 = v417;
LABEL_137:
              if ((~v184 & 0xF000000000000007) != 0)
              {
                sub_255D5C30C(v184);
                sub_255D5C324(v184);

                sub_255D4DE84(v37, v418, v38, 1);
                v432 = v184;
                v37 = v184;
                a1 = v424;
                goto LABEL_53;
              }

              sub_255D5C324(v184);
              sub_255D5C33C();
              v168 = swift_allocError();
              v169 = v418;
              *v185 = v37;
              *(v185 + 8) = v169;
              *(v185 + 16) = &type metadata for DecodableState;
              *(v185 + 32) = 0;
              swift_willThrow();

              goto LABEL_139;
            }
          }

          swift_endAccess();

          v36 = v45;
LABEL_95:
          v38 = v417;
        }

        else
        {

          v38 = v40;
          sub_255D34858(v40);
        }

        v433 = v37;
        v434 = v36;
        v151 = *(*v29 + 112);
        swift_beginAccess();
        v152 = *(v29 + v151);
        if (*(v152 + 16))
        {
          v153 = *(v29 + v151);

          v154 = sub_255D3CA20(v37, v418);
          if (v155)
          {
            v156 = *(*(v152 + 56) + 8 * v154);

            MEMORY[0x28223BE20](v157);
            *(&v408 - 4) = MEMORY[0x277D837D0];
            *(&v408 - 3) = &type metadata for DecodableState;
            *(&v408 - 2) = MEMORY[0x277D837E0];
            v158 = swift_getKeyPath();
            *&v416 = &v408;
            MEMORY[0x28223BE20](v158);
            *(&v408 - 4) = MEMORY[0x277D837D0];
            *(&v408 - 3) = &type metadata for DecodableState;
            *(&v408 - 2) = MEMORY[0x277D837E0];
            swift_getKeyPath();
            sub_255E38728();

            if ((v156 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
              return result;
            }

            v21 = v422;
            v38 = v417;
            if (v156 >= *(v429 + 16))
            {
              goto LABEL_351;
            }

            v430 = *(v429 + 8 * v156 + 32);

            goto LABEL_136;
          }
        }

        v181 = *(v29 + *(*v29 + 120));
        if (v181)
        {
          (*(*v181 + 248))(&v430, &v433);
        }

        else
        {
          v430 = 0xF000000000000007;
        }

        v21 = v422;
LABEL_136:
        v184 = v430;
        goto LABEL_137;
      }

      if (*(v29 + qword_27F7E85F8))
      {
        v123 = v36;
        v124 = qword_27F7E8600;
        *&v416 = *(v29 + qword_27F7E85F8);
        swift_beginAccess();
        v125 = *(v29 + v124);
        v415 = *(v125 + 16);
        sub_255D5C258(v37, v123, v38, 1);
        v417 = v38;
        sub_255D34858(v38);

        if (v415 && (v126 = sub_255D3CA20(v37, v123), (v127 & 1) != 0))
        {
          v128 = *(v125 + 56) + 32 * v126;
          v130 = *v128;
          v129 = *(v128 + 8);
          v131 = *(v128 + 16);
          LODWORD(v415) = *(v128 + 24);
          swift_endAccess();
          sub_255D5C258(v130, v129, v131, v415);
          v412 = v130;
          v413 = v129;
          v414 = v131;
          v132 = v131;
          v133 = v415;
          v134 = v426;
          sub_255DDEBF8(v416, v130, v129, v132, v415, &v433);
          if (!v134)
          {
            v426 = 0;

            sub_255D4DE84(v412, v413, v414, v133);
            v167 = v433;
            v38 = v417;
            goto LABEL_115;
          }

          sub_255D4DE84(v412, v413, v414, v133);
          v426 = 0;
          v36 = v418;
        }

        else
        {
          swift_endAccess();

          v36 = v123;
        }

        v38 = v417;
      }

      else
      {
        sub_255D5C258(v37, v36, v38, 1);
        sub_255D34858(v38);
      }

      sub_255DE3530(v37, v36, &v433);
      v167 = v433;
LABEL_115:
      if ((~v167 & 0xF000000000000007) != 0)
      {
        v171 = v426;
        sub_255DE08EC(v167, v29, v38, &v431);
        if (!v171)
        {
          v426 = 0;
          sub_255D5C324(v167);
          sub_255D2F870(v38);

          sub_255D4DE84(v37, v418, v38, 1);
          v37 = v431;
          goto LABEL_82;
        }

        sub_255D5C324(v167);
        sub_255D2F870(v38);

        v426 = 0;
        v169 = v418;
        goto LABEL_140;
      }

      sub_255D5C33C();
      v168 = swift_allocError();
      v169 = v418;
      *v170 = v37;
      *(v170 + 8) = v169;
      *(v170 + 16) = &type metadata for DecodableState;
      *(v170 + 32) = 0;
      swift_willThrow();

      sub_255D2F870(v38);
LABEL_139:

      v426 = 0;
LABEL_140:

      sub_255D4DE84(v37, v169, v38, 1);
      v25 = v425;
LABEL_33:
      v433 = v25;
      v434 = v26;
      a1 = v424;
      v85 = *(*v424 + 112);
      swift_beginAccess();
      v86 = *(a1 + v85);
      if (*(v86 + 16))
      {
        v87 = *(a1 + v85);

        v88 = sub_255D3CA20(v25, v26);
        if (v89)
        {
          v90 = *(*(v86 + 56) + 8 * v88);

          MEMORY[0x28223BE20](v91);
          *(&v408 - 4) = MEMORY[0x277D837D0];
          *(&v408 - 3) = &type metadata for DecodableState;
          *(&v408 - 2) = MEMORY[0x277D837E0];
          v20 = swift_getKeyPath();
          MEMORY[0x28223BE20](v20);
          *(&v408 - 4) = MEMORY[0x277D837D0];
          *(&v408 - 3) = &type metadata for DecodableState;
          *(&v408 - 2) = MEMORY[0x277D837E0];
          v21 = swift_getKeyPath();
          a1 = v424;
          sub_255E38728();

          if ((v90 & 0x8000000000000000) != 0)
          {
            goto LABEL_336;
          }

          v21 = v422;
          if (v90 >= *(v431 + 16))
          {
            goto LABEL_338;
          }

          v432 = *(v431 + 8 * v90 + 32);

          goto LABEL_52;
        }
      }

      v99 = *(a1 + *(*a1 + 120));
      if (v99)
      {
        (*(*v99 + 248))(&v432, &v433);
      }

      else
      {
        v432 = 0xF000000000000007;
      }

      v21 = v422;
LABEL_52:
      v37 = v432;
LABEL_53:
      if ((~v37 & 0xF000000000000007) == 0)
      {
        sub_255D5C324(v37);
        sub_255D5C33C();
        swift_allocError();
        v395 = v425;
        *v396 = v425;
        *(v396 + 8) = v26;
        *(v396 + 16) = MEMORY[0x277D837D0];
        *(v396 + 32) = 0;
        swift_willThrow();

        v397 = v395;
LABEL_321:
        v400 = v26;
        v401 = v420;
        goto LABEL_322;
      }

      sub_255D5C324(v37);
      v101 = v37 >> 61;
      if ((v37 >> 61) <= 1)
      {
        v105 = v21;
        if (!v101)
        {
          v107 = *(v37 + 16);
          v106 = *(v37 + 24);

          sub_255D5C324(v37);
          sub_255D38090(v425, v26, v420, 1);
          v55 = v107;
          v26 = v106;
LABEL_76:
          v22 = v423;
          v21 = v105;
          goto LABEL_77;
        }

        v433 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v108 = sub_255E3AC28();
        v110 = v109;
        sub_255D5C324(v37);
        v111 = v425;
        v112 = v26;
        v113 = v420;
LABEL_75:
        sub_255D38090(v111, v112, v113, 1);
        v55 = v108;
        v26 = v110;
        goto LABEL_76;
      }

      if (v101 == 2)
      {
        v114 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v433 = 0;
        v434 = 0xE000000000000000;
        sub_255E3A7A8();
      }

      else
      {
        if (v101 != 3)
        {
          sub_255D7B470();
          swift_allocError();
          *v402 = v37;
          v402[1] = MEMORY[0x277D837D0];
          swift_willThrow();
          v397 = v425;
          goto LABEL_321;
        }

        v102 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v433 = 0;
        v434 = 0xE000000000000000;
        if (v102)
        {
          v103 = 1702195828;
        }

        else
        {
          v103 = 0x65736C6166;
        }

        if (v102)
        {
          v104 = 0xE400000000000000;
        }

        else
        {
          v104 = 0xE500000000000000;
        }

        MEMORY[0x259C4E8F0](v103, v104);
      }

      sub_255D5C324(v37);
      sub_255D38090(v425, v26, v420, 1);
      v55 = v433;
      v26 = v434;
      v22 = v423;
LABEL_77:
      v438 = v19;
      v121 = *(v19 + 16);
      v120 = *(v19 + 24);
      v20 = v121 + 1;
      if (v121 >= v120 >> 1)
      {
        sub_255DE5D20((v120 > 1), v121 + 1, 1);
        v22 = v423;
        v19 = v438;
      }

      v23 = (v23 + 1);
      *(v19 + 16) = v20;
      v122 = v19 + 16 * v121;
      *(v122 + 32) = v55;
      *(v122 + 40) = v26;
      v24 += 32;
      if (v21 == v23)
      {
        goto LABEL_176;
      }
    }
  }

  v417 = v13;
  v418 = v11;
  result = sub_255DDEDA0(a1, v14, v15, v16, v17 & 1);
  if (v2)
  {
    return result;
  }

  v196 = result;
  v197 = v195;
  v414 = v9;
  v426 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83D0, &qword_255E552B0);
  a1 = v417;
  sub_255E38648();
  *&v435 = v196;
  *(&v435 + 1) = v197;
  sub_255DE373C();
  sub_255D38950(&qword_27F7E83E0, &qword_27F7E83C8, &qword_255E552A8);
  v21 = &v435;
  v198 = sub_255E3A488();
  v23 = MEMORY[0x277D84F90];
  v423 = *(v198 + 16);
  if (v423)
  {
    a1 = 0;
    v422 = (v425 + 16);
    v420 = (v425 + 8);
    v20 = 15;
    v421 = v197;
    v419 = v196;
    while (a1 < *(v198 + 16))
    {
      v199 = v198;
      (*(v425 + 2))(v7, v198 + ((v425[80] + 32) & ~v425[80]) + *(v425 + 9) * a1, v4);
      v21 = v7;
      if (sub_255E38668() >> 14 < v20 >> 14)
      {
        goto LABEL_335;
      }

      v200 = sub_255E3A618();
      v201 = MEMORY[0x259C4E8B0](v200);
      v203 = v202;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_255DE5480(0, v23[2] + 1, 1, v23);
      }

      v205 = v23[2];
      v204 = v23[3];
      if (v205 >= v204 >> 1)
      {
        v23 = sub_255DE5480((v204 > 1), v205 + 1, 1, v23);
      }

      v23[2] = v205 + 1;
      v206 = &v23[4 * v205];
      v206[4] = v201;
      v206[5] = v203;
      v206[6] = 0;
      *(v206 + 56) = 0;
      swift_getKeyPath();
      sub_255E38658();

      v207 = MEMORY[0x259C4E8B0](v435, *(&v435 + 1), v436, v437);
      v209 = v208;

      v210 = v426;
      sub_255DE46E4(&v435, 0xFuLL, v207, v209, &unk_2867F0990, sub_255DEDD6C, sub_255D77678);
      v426 = v210;
      if (v210)
      {

        (*v420)(v7, v4);
        (v414[1])(v417, v418);
      }

      v211 = v435;
      v212 = v436;
      v213 = v437;
      v215 = v23[2];
      v214 = v23[3];
      v216 = v23;
      if (v215 >= v214 >> 1)
      {
        v416 = v435;
        v219 = sub_255DE5480((v214 > 1), v215 + 1, 1, v23);
        v211 = v416;
        v216 = v219;
      }

      v216[2] = v215 + 1;
      v23 = v216;
      v217 = &v216[4 * v215];
      *(v217 + 2) = v211;
      ++a1;
      v217[6] = v212;
      *(v217 + 56) = v213;
      v21 = v7;
      sub_255E38668();
      v20 = v218;
      (*v420)(v7, v4);
      v197 = v421;
      v196 = v419;
      v198 = v199;
      if (v423 == a1)
      {
        goto LABEL_179;
      }
    }

LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v20 = 15;
LABEL_179:

  v221 = HIBYTE(v197) & 0xF;
  if ((v197 & 0x2000000000000000) == 0)
  {
    v221 = v196 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v221 < v20 >> 14)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v222 = sub_255E3A618();
  v224 = v223;
  v226 = v225;
  v228 = v227;

  v20 = MEMORY[0x259C4E8B0](v222, v224, v226, v228);
  v21 = v229;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1 = v424;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_345:
    v23 = sub_255DE5480(0, v23[2] + 1, 1, v23);
  }

  v231 = v23;
  v232 = v23[2];
  v233 = v231[3];
  v423 = v232 + 1;
  if (v232 >= v233 >> 1)
  {
    v231 = sub_255DE5480((v233 > 1), v423, 1, v231);
  }

  v420 = v231;
  v234 = v423;
  v231[2] = v423;
  v235 = &v231[4 * v232];
  v235[4] = v20;
  v235[5] = v21;
  v235[6] = 0;
  *(v235 + 56) = 0;
  v428[0] = MEMORY[0x277D84F90];
  v21 = v428;
  sub_255DE5D20(0, v234, 0);
  v236 = v420;
  v23 = 0;
  v425 = v428[0];
  v419 = qword_27F7E85F8;
  *&v416 = qword_27F7E8600;
  for (i = v420 + 7; ; i += 32)
  {
    if (v23 >= v236[2])
    {
      goto LABEL_333;
    }

    v238 = *(i - 3);
    v239 = *(i - 2);
    if (*i)
    {
      break;
    }

    v270 = *(i - 3);
    v271 = *(i - 2);

LABEL_256:
    v428[0] = v425;
    v333 = *(v425 + 2);
    v332 = *(v425 + 3);
    v20 = v333 + 1;
    if (v333 >= v332 >> 1)
    {
      v21 = v428;
      sub_255DE5D20((v332 > 1), v333 + 1, 1);
      v236 = v420;
      v425 = v428[0];
    }

    v23 = (v23 + 1);
    v334 = v425;
    *(v425 + 2) = v20;
    v335 = v334 + 16 * v333;
    *(v335 + 32) = v270;
    *(v335 + 40) = v239;
    if (v423 == v23)
    {

      v433 = v425;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
      sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60);
      v220 = sub_255E3A498();

      (v414[1])(v417, v418);
      return v220;
    }
  }

  v240 = *(i - 1);
  v422 = *(i - 3);
  if ((~v240 & 0xF000000000000007) == 0)
  {
    v241 = *(a1 + v419);
    if (!v241)
    {

      sub_255D34858(v240);
      goto LABEL_214;
    }

    v242 = v416;
    swift_beginAccess();
    v243 = *(a1 + v242);
    v244 = v240;
    v245 = *(v243 + 16);
    v246 = v244;
    sub_255D3E5D8(v238, v239, v244, 1);

    if (!v245 || (v247 = sub_255D3CA20(v238, v239), (v248 & 1) == 0))
    {
      swift_endAccess();

      v240 = v246;
      goto LABEL_214;
    }

    v421 = v241;
    v249 = *(v243 + 56) + 32 * v247;
    v250 = *v249;
    v251 = *(v249 + 8);
    v252 = *(v249 + 16);
    v21 = *(v249 + 24);
    swift_endAccess();
    if ((v21 & 1) == 0)
    {
      sub_255D5C258(v250, v251, v252, 0);

      v427[0] = v250;
      v240 = v246;
      goto LABEL_233;
    }

    v415 = v251;
    v413 = v252;
    v253 = (~v252 & 0xF000000000000007) == 0;
    v240 = v246;
    if (!v253)
    {
      v336 = v421;
      v337 = *(v421 + qword_27F7E85F8);
      v338 = v415;
      if (v337)
      {
        v339 = qword_27F7E8600;
        swift_beginAccess();
        v340 = *(v336 + v339);
        v341 = *(v340 + 16);
        v342 = v338;
        v343 = v413;
        sub_255D5C258(v250, v342, v413, 1);
        v344 = v343;
        v345 = v415;
        sub_255D34858(v344);
        v412 = v337;

        if (v341 && (v346 = sub_255D3CA20(v250, v345), (v347 & 1) != 0))
        {
          v348 = *(v340 + 56) + 32 * v346;
          v349 = *v348;
          v411 = *(v348 + 8);
          v350 = *(v348 + 16);
          v351 = *(v348 + 24);
          swift_endAccess();
          sub_255D5C258(v349, v411, v350, v351);
          v409 = v349;
          v352 = v349;
          v353 = v411;
          v410 = v350;
          v354 = v426;
          sub_255DDEBF8(v412, v352, v411, v350, v351, &v433);
          if (!v354)
          {
            v426 = 0;

            sub_255D4DE84(v409, v353, v410, v351);
            v382 = v433;
            a1 = v424;
            v336 = v421;
LABEL_290:
            if ((~v382 & 0xF000000000000007) != 0)
            {
              v21 = v413;
              v385 = v426;
              sub_255DE08EC(v382, v336, v413, &v438);
              if (!v385)
              {
                v426 = 0;
                sub_255D5C324(v382);
                sub_255D2F870(v21);

                sub_255D4DE84(v250, v415, v21, 1);
                v250 = v438;
                v427[0] = v438;
                goto LABEL_233;
              }

              sub_255D5C324(v382);
              sub_255D2F870(v21);

              v426 = 0;
              v261 = v415;
            }

            else
            {
              sub_255D5C33C();
              v383 = swift_allocError();
              v261 = v415;
              *v384 = v250;
              *(v384 + 8) = v261;
              *(v384 + 16) = &type metadata for DecodableState;
              *(v384 + 32) = 0;
              swift_willThrow();

              v21 = v413;
              sub_255D2F870(v413);

              v426 = 0;
            }

LABEL_294:

            sub_255D4DE84(v250, v261, v21, 1);
            v238 = v422;
LABEL_214:
            v433 = v238;
            v434 = v239;
            v304 = *(*a1 + 112);
            swift_beginAccess();
            v305 = *(a1 + v304);
            if (*(v305 + 16))
            {
              v306 = *(a1 + v304);

              v307 = sub_255D3CA20(v238, v239);
              if (v308)
              {
                v309 = *(*(v305 + 56) + 8 * v307);

                MEMORY[0x28223BE20](v310);
                v311 = MEMORY[0x277D837D0];
                *(&v408 - 4) = MEMORY[0x277D837D0];
                *(&v408 - 3) = &type metadata for DecodableState;
                *(&v408 - 2) = MEMORY[0x277D837E0];
                v20 = swift_getKeyPath();
                MEMORY[0x28223BE20](v20);
                *(&v408 - 4) = v311;
                *(&v408 - 3) = &type metadata for DecodableState;
                *(&v408 - 2) = MEMORY[0x277D837E0];
                v21 = swift_getKeyPath();
                a1 = v424;
                sub_255E38728();

                if ((v309 & 0x8000000000000000) != 0)
                {
                  goto LABEL_340;
                }

                if (v309 >= *(v438 + 16))
                {
                  goto LABEL_342;
                }

                v427[0] = *(v438 + 8 * v309 + 32);

                goto LABEL_232;
              }
            }

            v21 = *(a1 + *(*a1 + 120));
            if (v21)
            {
              (*(*v21 + 248))(v427, &v433);
            }

            else
            {
              v427[0] = 0xF000000000000007;
            }

LABEL_232:
            v250 = v427[0];
LABEL_233:
            if ((~v250 & 0xF000000000000007) != 0)
            {

              sub_255D5C324(v250);
              v321 = v250 >> 61;
              if ((v250 >> 61) > 1)
              {
                if (v321 == 2)
                {
                  v328 = *((v250 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v433 = 0;
                  v434 = 0xE000000000000000;
                  sub_255E3A7A8();
LABEL_248:
                  sub_255D5C324(v250);
                  sub_255D38090(v422, v239, v240, 1);
                  v270 = v433;
                  v239 = v434;
                  goto LABEL_255;
                }

                if (v321 == 3)
                {
                  v322 = *((v250 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v433 = 0;
                  v434 = 0xE000000000000000;
                  if (v322)
                  {
                    v323 = 1702195828;
                  }

                  else
                  {
                    v323 = 0x65736C6166;
                  }

                  if (v322)
                  {
                    v324 = 0xE400000000000000;
                  }

                  else
                  {
                    v324 = 0xE500000000000000;
                  }

                  v21 = &v433;
                  MEMORY[0x259C4E8F0](v323, v324);

                  goto LABEL_248;
                }

                sub_255D7B470();
                swift_allocError();
                *v407 = v250;
                v407[1] = MEMORY[0x277D837D0];
                swift_willThrow();
                v406 = v422;
LABEL_326:
                sub_255D38090(v406, v239, v240, 1);

                goto LABEL_328;
              }

              if (!v321)
              {
                v21 = *(v250 + 16);
                v325 = *(v250 + 24);

                sub_255D5C324(v250);
                sub_255D38090(v422, v239, v240, 1);
                v270 = v21;
                v239 = v325;
LABEL_255:
                v236 = v420;
                goto LABEL_256;
              }

              v433 = *((v250 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v326 = sub_255E3AC28();
              v21 = v327;
              sub_255D5C324(v250);
LABEL_254:
              sub_255D38090(v422, v239, v240, 1);
              v270 = v326;
              v239 = v21;
              goto LABEL_255;
            }

            sub_255D5C324(v250);
            sub_255D5C33C();
            swift_allocError();
            v403 = v422;
            *v404 = v422;
            *(v404 + 8) = v239;
            *(v404 + 16) = MEMORY[0x277D837D0];
            *(v404 + 32) = 0;
            swift_willThrow();

LABEL_325:
            v406 = v403;
            goto LABEL_326;
          }

          sub_255D4DE84(v409, v353, v410, v351);
          v426 = 0;
        }

        else
        {
          swift_endAccess();
        }

        a1 = v424;
        v336 = v421;
      }

      else
      {
        v380 = v413;
        sub_255D5C258(v250, v415, v413, 1);
        v381 = v380;
        v345 = v415;
        sub_255D34858(v381);
      }

      sub_255DE3530(v250, v345, &v433);
      v382 = v433;
      goto LABEL_290;
    }

    v254 = v421;
    v255 = *(v421 + qword_27F7E85F8);
    v256 = v415;
    if (v255)
    {
      v257 = v415;
      v258 = qword_27F7E8600;
      swift_beginAccess();
      v259 = *(v254 + v258);
      v260 = *(v259 + 16);
      sub_255D5C258(v250, v257, v413, 1);
      v412 = v255;

      v261 = v257;
      if (v260 && (v262 = sub_255D3CA20(v250, v257), (v263 & 1) != 0))
      {
        v264 = *(v259 + 56) + 32 * v262;
        v266 = *v264;
        v265 = *(v264 + 8);
        v267 = *(v264 + 16);
        v268 = *(v264 + 24);
        swift_endAccess();
        sub_255D5C258(v266, v265, v267, v268);
        v410 = v266;
        v411 = v267;
        v269 = v426;
        sub_255DDEBF8(v412, v266, v265, v267, v268, &v433);
        if (!v269)
        {
          v426 = 0;

          sub_255D4DE84(v410, v265, v411, v268);
          v21 = v433;
          a1 = v424;
          v261 = v415;
          goto LABEL_279;
        }

        sub_255D4DE84(v410, v265, v411, v268);
        v426 = 0;
        a1 = v424;
        v261 = v415;
      }

      else
      {
        swift_endAccess();

        a1 = v424;
      }
    }

    else
    {

      sub_255D34858(v413);
      v261 = v256;
    }

    sub_255DE3530(v250, v261, &v432);
    v21 = v432;
LABEL_279:
    if ((~v21 & 0xF000000000000007) != 0)
    {
      sub_255D5C30C(v21);
      sub_255D5C324(v21);

      sub_255D4DE84(v250, v261, v413, 1);
      v427[0] = v21;
      v250 = v21;
      goto LABEL_233;
    }

    sub_255D5C324(v21);
    sub_255D5C33C();
    v371 = swift_allocError();
    *v372 = v250;
    *(v372 + 8) = v261;
    *(v372 + 16) = &type metadata for DecodableState;
    *(v372 + 32) = 0;
    swift_willThrow();

    v426 = 0;
    v21 = v413;
    goto LABEL_294;
  }

  v421 = v240;
  v272 = *(a1 + v419);
  if (!v272)
  {
    v240 = v421;
    sub_255D3E5D8(v238, v239, v421, 1);
    sub_255D34858(v240);
    goto LABEL_220;
  }

  v273 = v416;
  swift_beginAccess();
  v274 = *(a1 + v273);
  v275 = *(v274 + 16);
  v276 = v239;
  v277 = v239;
  v278 = v421;
  sub_255D3E5D8(v238, v276, v421, 1);
  v279 = v278;
  v239 = v277;
  sub_255D34858(v279);
  v415 = v272;

  if (!v275 || (v280 = sub_255D3CA20(v238, v277), (v281 & 1) == 0))
  {
    swift_endAccess();

    v240 = v421;
LABEL_220:
    v433 = v238;
    v434 = v239;
    v312 = *(*a1 + 112);
    swift_beginAccess();
    v313 = *(a1 + v312);
    if (*(v313 + 16))
    {
      v314 = *(a1 + v312);

      v315 = sub_255D3CA20(v238, v239);
      if (v316)
      {
        v317 = *(*(v313 + 56) + 8 * v315);

        MEMORY[0x28223BE20](v318);
        v319 = MEMORY[0x277D837D0];
        *(&v408 - 4) = MEMORY[0x277D837D0];
        *(&v408 - 3) = &type metadata for DecodableState;
        *(&v408 - 2) = MEMORY[0x277D837E0];
        v20 = swift_getKeyPath();
        MEMORY[0x28223BE20](v20);
        *(&v408 - 4) = v319;
        *(&v408 - 3) = &type metadata for DecodableState;
        *(&v408 - 2) = MEMORY[0x277D837E0];
        v21 = swift_getKeyPath();
        a1 = v424;
        sub_255E38728();

        if ((v317 & 0x8000000000000000) != 0)
        {
          goto LABEL_341;
        }

        if (v317 >= *(v427[0] + 16))
        {
          goto LABEL_343;
        }

        v427[0] = *(v427[0] + 8 * v317 + 32);

        goto LABEL_250;
      }
    }

    v320 = *(a1 + *(*a1 + 120));
    if (v320)
    {
      (*(*v320 + 248))(v427, &v433);
    }

    else
    {
      v427[0] = 0xF000000000000007;
    }

LABEL_250:
    v284 = v427[0];
    goto LABEL_251;
  }

  v282 = *(v274 + 56) + 32 * v280;
  v284 = *v282;
  v283 = *(v282 + 8);
  v285 = *(v282 + 16);
  v286 = *(v282 + 24);
  swift_endAccess();
  if ((v286 & 1) == 0)
  {
    sub_255D5C258(v284, v283, v285, 0);

    v240 = v421;
    goto LABEL_251;
  }

  v413 = v283;
  v287 = v415;
  v240 = v421;
  if ((~v285 & 0xF000000000000007) != 0)
  {
    v355 = *(v415 + qword_27F7E85F8);
    if (v355)
    {
      v356 = v415;
      v357 = qword_27F7E8600;
      swift_beginAccess();
      v358 = *(v356 + v357);
      v359 = *(v358 + 16);
      v360 = v413;
      sub_255D5C258(v284, v413, v285, 1);
      sub_255D34858(v285);

      if (v359 && (v361 = sub_255D3CA20(v284, v360), (v362 & 1) != 0))
      {
        v363 = *(v358 + 56) + 32 * v361;
        v364 = *v363;
        v412 = *(v363 + 8);
        v365 = *(v363 + 16);
        v366 = *(v363 + 24);
        swift_endAccess();
        sub_255D5C258(v364, v412, v365, v366);
        v409 = v364;
        v367 = v364;
        v368 = v412;
        v411 = v365;
        LODWORD(v410) = v366;
        v369 = v426;
        sub_255DDEBF8(v355, v367, v412, v365, v366, &v433);
        v240 = v421;
        if (!v369)
        {
          v426 = 0;

          sub_255D4DE84(v409, v368, v411, v410);
          v386 = v433;
          a1 = v424;
LABEL_297:
          if ((~v386 & 0xF000000000000007) != 0)
          {
            v391 = v426;
            sub_255DE08EC(v386, v415, v285, v427);
            if (!v391)
            {
              v426 = 0;
              sub_255D5C324(v386);
              sub_255D2F870(v285);

              sub_255D4DE84(v284, v413, v285, 1);
              goto LABEL_250;
            }

            sub_255D5C324(v386);
            sub_255D2F870(v285);

            v426 = 0;
            v388 = v285;
            v389 = v413;
          }

          else
          {
            sub_255D5C33C();
            v387 = swift_allocError();
            v388 = v285;
            v389 = v413;
            *v390 = v284;
            *(v390 + 8) = v389;
            *(v390 + 16) = &type metadata for DecodableState;
            *(v390 + 32) = 0;
            swift_willThrow();

            sub_255D2F870(v388);

            v426 = 0;
          }

          goto LABEL_308;
        }

        sub_255D4DE84(v409, v368, v411, v410);
        v426 = 0;
        a1 = v424;
        v370 = v413;
      }

      else
      {
        swift_endAccess();

        a1 = v424;
        v370 = v360;
        v240 = v421;
      }
    }

    else
    {
      v370 = v413;
      sub_255D5C258(v284, v413, v285, 1);
      sub_255D34858(v285);
    }

    sub_255DE3530(v284, v370, &v433);
    v386 = v433;
    goto LABEL_297;
  }

  v288 = *(v415 + qword_27F7E85F8);
  if (v288)
  {
    v289 = v415;
    v290 = qword_27F7E8600;
    swift_beginAccess();
    v291 = *(v289 + v290);
    v292 = *(v291 + 16);
    v293 = v413;
    sub_255D5C258(v284, v413, v285, 1);

    if (v292 && (v294 = sub_255D3CA20(v284, v293), (v295 & 1) != 0))
    {
      v296 = *(v291 + 56) + 32 * v294;
      v297 = *v296;
      v412 = *(v296 + 8);
      v298 = *(v296 + 16);
      v299 = *(v296 + 24);
      swift_endAccess();
      sub_255D5C258(v297, v412, v298, v299);
      v409 = v297;
      v300 = v297;
      v301 = v412;
      v411 = v298;
      LODWORD(v410) = v299;
      v302 = v426;
      sub_255DDEBF8(v288, v300, v412, v298, v299, &v433);
      v240 = v421;
      if (!v302)
      {
        v426 = 0;

        sub_255D4DE84(v409, v301, v411, v410);
        v393 = v433;
        v438 = v433;
        a1 = v424;
        goto LABEL_306;
      }

      sub_255D4DE84(v409, v301, v411, v410);
      v426 = 0;
      a1 = v424;
      v287 = v415;
      v303 = v413;
    }

    else
    {
      swift_endAccess();

      a1 = v424;
      v287 = v415;
      v303 = v293;
      v240 = v421;
    }
  }

  else
  {
    v303 = v413;

    sub_255D34858(v285);
  }

  v433 = v284;
  v434 = v303;
  v373 = *(*v287 + 112);
  swift_beginAccess();
  v374 = *(v287 + v373);
  if (*(v374 + 16))
  {

    v375 = sub_255D3CA20(v284, v413);
    if (v376)
    {
      v377 = *(*(v374 + 56) + 8 * v375);

      MEMORY[0x28223BE20](v378);
      *(&v408 - 4) = MEMORY[0x277D837D0];
      *(&v408 - 3) = &type metadata for DecodableState;
      *(&v408 - 2) = MEMORY[0x277D837E0];
      v379 = swift_getKeyPath();
      v421 = &v408;
      MEMORY[0x28223BE20](v379);
      *(&v408 - 4) = MEMORY[0x277D837D0];
      *(&v408 - 3) = &type metadata for DecodableState;
      *(&v408 - 2) = MEMORY[0x277D837E0];
      swift_getKeyPath();
      sub_255E38728();

      if ((v377 & 0x8000000000000000) != 0)
      {
        goto LABEL_352;
      }

      if (v377 >= *(v432 + 16))
      {
        goto LABEL_353;
      }

      v438 = *(v432 + 8 * v377 + 32);

      a1 = v424;
      goto LABEL_305;
    }
  }

  v392 = *(v415 + *(*v415 + 120));
  if (v392)
  {
    (*(*v392 + 248))(&v438, &v433);
  }

  else
  {
    v438 = 0xF000000000000007;
  }

LABEL_305:
  v393 = v438;
LABEL_306:
  if ((~v393 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v393);
    sub_255D5C33C();
    v426 = swift_allocError();
    v388 = v285;
    v389 = v413;
    *v394 = v284;
    *(v394 + 8) = v389;
    *(v394 + 16) = &type metadata for DecodableState;
    *(v394 + 32) = 0;
    swift_willThrow();

    v426 = 0;
LABEL_308:

    sub_255D4DE84(v284, v389, v388, 1);
    v238 = v422;
    goto LABEL_220;
  }

  sub_255D5C30C(v393);
  sub_255D5C324(v393);

  sub_255D4DE84(v284, v413, v285, 1);
  v284 = v393;
LABEL_251:
  if ((~v284 & 0xF000000000000007) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v403 = v422;
    *v405 = v422;
    *(v405 + 8) = v239;
    *(v405 + 16) = MEMORY[0x277D837D0];
    *(v405 + 32) = 0;
    swift_willThrow();

    sub_255D2F870(v240);
    goto LABEL_325;
  }

  v329 = v426;
  v330 = sub_255DE0DFC(v284, a1, v240);
  v426 = v329;
  if (!v329)
  {
    v326 = v330;
    v21 = v331;
    sub_255D5C324(v284);
    sub_255D2F870(v240);
    goto LABEL_254;
  }

  sub_255D5C324(v284);
  sub_255D2F870(v240);
  sub_255D38090(v422, v239, v240, 1);

LABEL_328:
  (v414[1])(v417, v418);
}

uint64_t sub_255DDE830@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = result;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v14 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        sub_255DDFE4C(v18, v9, a4, a6);
        sub_255D5C324(v14);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v15 = a2;
        *(v15 + 8) = a3;
        *(v15 + 16) = &type metadata for NumericValue;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v17);
      v11 = v17;
      if ((~v17 & 0xF000000000000007) == 0)
      {
        sub_255D5C324(v17);
LABEL_5:
        sub_255D5C33C();
        swift_allocError();
        *v12 = a2;
        *(v12 + 8) = a3;
        *(v12 + 16) = &type metadata for NumericValue;
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D5C324(v11);
      sub_255DDFAA0(v11, &v18);
      result = sub_255D5C324(v11);
      if (!v6)
      {
        v16 = v19;
        if (v19 == 255)
        {
          goto LABEL_5;
        }

        *a6 = v18;
        *(a6 + 8) = v16 & 1;
      }
    }
  }

  else
  {
    *a6 = a2;
    *(a6 + 8) = a3 & 1;
  }

  return result;
}

uint64_t sub_255DDEA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v16);
      v11 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE0374(v16, a1, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = v5;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D83B88];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v8 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 1)
        {
          v5 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          v5 = swift_allocError();
          v13 = MEMORY[0x277D83B88];
          *v14 = v8;
          v14[1] = v13;
          swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v9 = v5;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D83B88];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return v5;
}

uint64_t sub_255DDEBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v14 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        sub_255DE08EC(v16, a1, a4, a6);
        sub_255D5C324(v14);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v15 = a2;
        *(v15 + 8) = a3;
        *(v15 + 16) = &type metadata for DecodableState;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v10 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        sub_255D5C30C(v16);
        result = sub_255D5C324(v10);
        *a6 = v10;
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v11 = a2;
        *(v11 + 8) = a3;
        *(v11 + 16) = &type metadata for DecodableState;
        *(v11 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
    *a6 = a2;
  }

  return result;
}

uint64_t sub_255DDEDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v7, a3, &v17);
      v12 = v17;
      if ((~v17 & 0xF000000000000007) != 0)
      {
        v15 = sub_255DE0DFC(v17, a1, a4);
        if (!v5)
        {
          v7 = v15;
        }

        sub_255D5C324(v12);
        sub_255D2F870(a4);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v13 = v7;
        *(v13 + 8) = a3;
        *(v13 + 16) = MEMORY[0x277D837D0];
        *(v13 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(a4);
      }
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v17);
      v10 = v17;
      if ((~v17 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v10);
        v14 = sub_255D7C9F8();
        if (!v5)
        {
          v7 = v14;
        }

        sub_255D5C324(v10);
      }

      else
      {
        sub_255D5C324(v17);
        sub_255D5C33C();
        swift_allocError();
        *v11 = v7;
        *(v11 + 8) = a3;
        *(v11 + 16) = MEMORY[0x277D837D0];
        *(v11 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v7;
}

uint64_t sub_255DDEF98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v7 = result;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v11 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        sub_255DE1388(v16, v7, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = a2;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D839F8];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v8 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 1 || v8 >> 61 == 2)
        {
          v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          return sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          swift_allocError();
          v14 = MEMORY[0x277D839F8];
          *v15 = v8;
          v15[1] = v14;
          return swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v9 = a2;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D839F8];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_255DDF1BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v16);
      v11 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        LOBYTE(v5) = sub_255DE1978(v16, a1, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = v5;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D839B0];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v8 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 3)
        {
          LOBYTE(v5) = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          LOBYTE(v5) = swift_allocError();
          v13 = MEMORY[0x277D839B0];
          *v14 = v8;
          v14[1] = v13;
          swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v9 = v5;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D839B0];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return v5 & 1;
}

unint64_t sub_255DDF3A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v18);
      v13 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE1EF4(v18, a1, a4);
        sub_255D5C324(v13);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
        *v15 = v5;
        *(v15 + 8) = a3;
        *(v15 + 16) = v16;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v8 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        v5 = sub_255DDFB40(v8);
        sub_255D5C324(v8);
      }

      else
      {
        sub_255D5C324(v18);
        sub_255D5C33C();
        swift_allocError();
        v10 = v9;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
        *v10 = v5;
        *(v10 + 8) = a3;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_255DDF580(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if ((a5 & 1) == 0)
  {

    return v5;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {

    RemoteStateStore.subscript.getter(v5, a3, &v38);
    v13 = v38;
    if ((~v38 & 0xF000000000000007) != 0)
    {
      v5 = sub_255DE1F48(v38, a1, a4);
      sub_255D5C324(v13);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      v15 = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      *v15 = v5;
      *(v15 + 8) = a3;
      *(v15 + 16) = v16;
      *(v15 + 32) = 0;
      swift_willThrow();
    }

    sub_255D2F870(a4);
    return v5;
  }

  RemoteStateStore.subscript.getter(a2, a3, &v38);
  v8 = v38;
  if ((~v38 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v38);
    sub_255D5C33C();
    swift_allocError();
    v10 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    *v10 = v5;
    *(v10 + 8) = a3;
    *(v10 + 16) = v11;
    *(v10 + 32) = 0;
    swift_willThrow();

    return v5;
  }

  sub_255D5C324(v8);
  if (v8 >> 61 != 5)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v37 = v8;
    v37[1] = v5;
    swift_willThrow();
    return v5;
  }

  v17 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v5 = result;
  v19 = 0;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = result + 64;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_19:
      v28 = v25 | (v19 << 6);
      v29 = (*(v17 + 48) + 16 * v28);
      v30 = *(*(v17 + 56) + 8 * v28);
      v31 = *v29;
      v32 = v29[1];
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v5[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v32;
      *(v5[7] + 8 * v28) = v30;
      v34 = v5[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v5[2] = v36;

      if (!v22)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v23)
      {
        sub_255D5C324(v8);
        return v5;
      }

      v27 = *(v17 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DDF8C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v18);
      v13 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE2728(v18, a1, a4);
        sub_255D5C324(v13);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8468, &qword_255E55870);
        *v15 = v5;
        *(v15 + 8) = a3;
        *(v15 + 16) = v16;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v8 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        v5 = sub_255DDFC94(v8);
        sub_255D5C324(v8);
      }

      else
      {
        sub_255D5C324(v18);
        sub_255D5C33C();
        swift_allocError();
        v10 = v9;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8468, &qword_255E55870);
        *v10 = v5;
        *(v10 + 8) = a3;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v5;
}

unint64_t sub_255DDFAA0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 == 2)
  {
    *a2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 1;
  }

  else if (result >> 61 == 1)
  {
    *a2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 0;
  }

  else
  {
    v2 = result;
    sub_255D7B470();
    swift_allocError();
    v3 = MEMORY[0x277D839F8];
    *v4 = v2;
    v4[1] = v3;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_255DDFB40(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 61 == 4)
  {
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *(v2 + 16);
    v1 = MEMORY[0x277D84F90];
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];

      sub_255DE5D00(0, v3, 0);
      v1 = v11;
      v4 = *(v11 + 16);
      v5 = 32;
      do
      {
        v6 = *(v2 + v5);
        v7 = *(v11 + 24);

        if (v4 >= v7 >> 1)
        {
          sub_255DE5D00((v7 > 1), v4 + 1, 1);
        }

        *(v11 + 16) = v4 + 1;
        *(v11 + 8 * v4 + 32) = v6;
        v5 += 8;
        ++v4;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v9 = v1;
    v9[1] = v8;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_255DDFC94(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 61 != 4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v11 = v1;
    v11[1] = v10;
    swift_willThrow();

    return v1;
  }

  v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *(v2 + 16);
  v1 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v1;
  }

  v14 = MEMORY[0x277D84F90];

  result = sub_255DE60B0(0, v3, 0);
  v5 = 0;
  v1 = v14;
  while (v5 < *(v2 + 16))
  {
    v6 = *(v2 + 8 * v5 + 32);
    result = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 >> 61 != 1)
    {

      sub_255D7B470();
      swift_allocError();
      v12 = MEMORY[0x277D83B88];
      *v13 = v6;
      v13[1] = v12;
      swift_willThrow();

      return v1;
    }

    v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *(v14 + 16);
    v8 = *(v14 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_255DE60B0((v8 > 1), v9 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v9 + 1;
    *(v14 + 8 * v9 + 32) = v7;
    if (v3 == v5)
    {

      return v1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255DDFE4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(a3 + 48);
    v56 = *(a3 + 16);
    v58 = *(a3 + 32);
    v60 = *(a3 + 40);
    result = StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return result;
    }

    if (a1 >> 61 == 5)
    {
      v55 = result;
      v62 = v10;
      v53 = v8;
      v54 = a4;
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v12 = sub_255E3AB08();
      v13 = v12;
      v14 = 0;
      v15 = 1 << *(v11 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v11 + 64);
      v18 = (v15 + 63) >> 6;
      v19 = v12 + 64;
      if (v17)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
LABEL_13:
          v23 = v20 | (v14 << 6);
          v24 = (*(v11 + 48) + 16 * v23);
          v25 = *(*(v11 + 56) + 8 * v23);
          v26 = *v24;
          v27 = v24[1];
          *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
          v28 = (v13[6] + 16 * v23);
          *v28 = v26;
          v28[1] = v27;
          *(v13[7] + 8 * v23) = v25;
          v29 = v13[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            break;
          }

          v13[2] = v31;

          if (!v17)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v21 = v14;
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v18)
          {
            if (v13[2])
            {
              v46 = sub_255D3CA20(v55, v62);
              v48 = v47;

              if (v48)
              {
                v49 = *(v13[7] + 8 * v46);

                if ((~v53 & 0xF000000000000007) == 0)
                {
                  v42 = v54;
                  v43 = v49;
                  goto LABEL_31;
                }

                sub_255DDFE4C(v49, a2, v53);

                v52 = v53;
                return sub_255D2F870(v52);
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v51 = a1;
            *(v51 + 32) = 1;
            swift_willThrow();
          }

          v22 = *(v11 + 64 + 8 * v14);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v17 = (v22 - 1) & v22;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_43;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v45 = a1;
    v45[1] = v44;
    swift_willThrow();
  }

  v32 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v57 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v59 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v61 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v33 = sub_255D8F9E4(a2);
  if (v34)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v35 = sub_255E386A8();
      __swift_project_value_buffer(v35, qword_27F8152D8);
      v36 = sub_255E38688();
      v37 = sub_255E3A848();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_255D2E000, v36, v37, "SubReference to find value, unable to resolve index", v38, 2u);
        MEMORY[0x259C4F9E0](v38, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v39 = 2;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 5;
      return swift_willThrow();
    }

LABEL_43:
    swift_once();
    goto LABEL_18;
  }

  v40 = v33;
  result = sub_255DDFB40(a1);
  if (v4)
  {
    return result;
  }

  if (v40 < 0 || v40 >= *(result + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v50 = a1;
    *(v50 + 32) = 1;
    swift_willThrow();
  }

  v41 = *(result + 8 * v40 + 32);

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_255DDFE4C(v41, a2, v32);

    v52 = v32;
    return sub_255D2F870(v52);
  }

  v42 = a4;
  v43 = v41;
LABEL_31:
  sub_255DDFAA0(v43, v42);
}

unint64_t sub_255DE0374(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v52 = *(a3 + 16);
    v54 = *(a3 + 32);
    v56 = *(a3 + 40);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v50 = v6;
      v51 = v7;
      v58 = v8;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v42 = sub_255D3CA20(v51, v58);
              v44 = v43;

              if (v44)
              {
                a1 = *(v11[7] + 8 * v42);

                v30 = v50;
                if ((~v50 & 0xF000000000000007) == 0)
                {
                  if (a1 >> 61 != 1)
                  {
                    goto LABEL_40;
                  }

LABEL_26:
                  a1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                  return a1;
                }

                a1 = sub_255DE0374(a1, a2, v50);
LABEL_42:

                sub_255D2F870(v30);
                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v46 = a1;
            *(v46 + 32) = 1;
            swift_willThrow();
            goto LABEL_37;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_45;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v41 = a1;
    v41[1] = v40;
    swift_willThrow();
LABEL_37:

    return a1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v53 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v55 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v57 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      v34 = sub_255E38688();
      v35 = sub_255E3A848();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
        MEMORY[0x259C4F9E0](v36, -1, -1);
      }

      sub_255D5C33C();
      a1 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 5;
      swift_willThrow();
      return a1;
    }

LABEL_45:
    swift_once();
    goto LABEL_18;
  }

  v38 = v31;
  v39 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1;
  }

  if (v38 < 0 || v38 >= *(v39 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v45 = a1;
    *(v45 + 32) = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  a1 = *(v39 + 8 * v38 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE0374(a1, a2, v30);
    goto LABEL_42;
  }

  if (a1 >> 61 == 1)
  {
    goto LABEL_26;
  }

LABEL_40:
  sub_255D7B470();
  swift_allocError();
  v48 = MEMORY[0x277D83B88];
  *v49 = a1;
  v49[1] = v48;
  swift_willThrow();
  return a1;
}

uint64_t sub_255DE08EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(a3 + 48);
    v54 = *(a3 + 16);
    v56 = *(a3 + 32);
    v58 = *(a3 + 40);
    result = StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return result;
    }

    if (a1 >> 61 == 5)
    {
      v53 = result;
      v60 = v10;
      v51 = v8;
      v52 = a4;
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v12 = sub_255E3AB08();
      v13 = v12;
      v14 = 0;
      v15 = 1 << *(v11 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v11 + 64);
      v18 = (v15 + 63) >> 6;
      v19 = v12 + 64;
      if (v17)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
LABEL_13:
          v23 = v20 | (v14 << 6);
          v24 = (*(v11 + 48) + 16 * v23);
          v25 = *(*(v11 + 56) + 8 * v23);
          v26 = *v24;
          v27 = v24[1];
          *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
          v28 = (v13[6] + 16 * v23);
          *v28 = v26;
          v28[1] = v27;
          *(v13[7] + 8 * v23) = v25;
          v29 = v13[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            break;
          }

          v13[2] = v31;

          if (!v17)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v21 = v14;
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v18)
          {
            if (v13[2])
            {
              v44 = sub_255D3CA20(v53, v60);
              v46 = v45;

              if (v46)
              {
                v47 = *(v13[7] + 8 * v44);

                if ((~v51 & 0xF000000000000007) == 0)
                {
                  *v52 = v47;
                  return result;
                }

                sub_255DE08EC(v47, a2, v51);

                v50 = v51;
                return sub_255D2F870(v50);
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v49 = a1;
            *(v49 + 32) = 1;
            swift_willThrow();
          }

          v22 = *(v11 + 64 + 8 * v14);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v17 = (v22 - 1) & v22;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_42;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v43 = a1;
    v43[1] = v42;
    swift_willThrow();
  }

  v32 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v55 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v57 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v59 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v33 = sub_255D8F9E4(a2);
  if (v34)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v35 = sub_255E386A8();
      __swift_project_value_buffer(v35, qword_27F8152D8);
      v36 = sub_255E38688();
      v37 = sub_255E3A848();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_255D2E000, v36, v37, "SubReference to find value, unable to resolve index", v38, 2u);
        MEMORY[0x259C4F9E0](v38, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v39 = 2;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 5;
      return swift_willThrow();
    }

LABEL_42:
    swift_once();
    goto LABEL_18;
  }

  v40 = v33;
  result = sub_255DDFB40(a1);
  if (v4)
  {
    return result;
  }

  if (v40 < 0 || v40 >= *(result + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v48 = a1;
    *(v48 + 32) = 1;
    swift_willThrow();
  }

  v41 = *(result + 8 * v40 + 32);

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_255DE08EC(v41, a2, v32);

    v50 = v32;
    return sub_255D2F870(v50);
  }

  *a4 = v41;
  return result;
}

unint64_t sub_255DE0DFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v52 = *(a3 + 16);
    v54 = *(a3 + 32);
    v56 = *(a3 + 40);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v51 = v7;
      v58 = v8;
      v50 = v6;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v43 = sub_255D3CA20(v51, v58);
              v45 = v44;

              if (v45)
              {
                v46 = *(v11[7] + 8 * v43);

                if ((~v50 & 0xF000000000000007) == 0)
                {
                  goto LABEL_30;
                }

                a1 = sub_255DE0DFC(v46, a2, v50);

                sub_255D2F870(v50);
                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v48 = a1;
            *(v48 + 32) = 1;
            swift_willThrow();
            goto LABEL_35;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v42 = a1;
    v42[1] = v41;
    swift_willThrow();
LABEL_35:

    return a1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v53 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v55 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v57 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      v34 = sub_255E38688();
      v35 = sub_255E3A848();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
        MEMORY[0x259C4F9E0](v36, -1, -1);
      }

      sub_255D5C33C();
      a1 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 5;
      swift_willThrow();
      return a1;
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  v38 = v31;
  v39 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1;
  }

  if (v38 < 0 || v38 >= *(v39 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v47 = a1;
    *(v47 + 32) = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  v40 = *(v39 + 8 * v38 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE0DFC(v40, a2, v30);

    sub_255D2F870(v30);
  }

  else
  {
LABEL_30:
    a1 = sub_255D7C9F8();
  }

  return a1;
}

double sub_255DE1388(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v31 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v62 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v64 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v66 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v32 = sub_255D8F9E4(a2);
    if (v33)
    {
      if (qword_27F7E5E80 == -1)
      {
LABEL_18:
        v34 = sub_255E386A8();
        __swift_project_value_buffer(v34, qword_27F8152D8);
        v35 = sub_255E38688();
        v36 = sub_255E3A848();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_255D2E000, v35, v36, "SubReference to find value, unable to resolve index", v37, 2u);
          MEMORY[0x259C4F9E0](v37, -1, -1);
        }

        sub_255D5C33C();
        swift_allocError();
        *v38 = 2;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 32) = 5;
LABEL_21:
        swift_willThrow();
        return v4;
      }

LABEL_51:
      swift_once();
      goto LABEL_18;
    }

    v39 = v32;
    v40 = sub_255DDFB40(a1);
    if (v3)
    {
      return v4;
    }

    if ((v39 & 0x8000000000000000) == 0 && v39 < *(v40 + 16))
    {
      v41 = *(v40 + 8 * v39 + 32);

      if ((~v31 & 0xF000000000000007) == 0)
      {
        if (v41 >> 61 == 1)
        {
          v55 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          return v55;
        }

        if (v41 >> 61 == 2)
        {
          v4 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          return v4;
        }

        sub_255D7B470();
        swift_allocError();
        v56 = MEMORY[0x277D839F8];
        *v57 = v41;
        v57[1] = v56;
        goto LABEL_21;
      }

      v4 = sub_255DE1388(v41, a2, v31);

      v51 = v31;
LABEL_44:
      sub_255D2F870(v51);
      return v4;
    }

    sub_255D5C33C();
    swift_allocError();
    *v48 = a1;
    *(v48 + 32) = 1;
    swift_willThrow();
LABEL_40:

    return v4;
  }

  v7 = *(a3 + 48);
  v61 = *(a3 + 16);
  v63 = *(a3 + 32);
  v65 = *(a3 + 40);
  v8 = StringResolvable.resolved(with:)(a2);
  if (v3)
  {
    return v4;
  }

  if (a1 >> 61 != 5)
  {

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v43 = a1;
    v43[1] = v42;
    swift_willThrow();
    goto LABEL_40;
  }

  v58 = v7;
  v59 = v8;
  v60 = v9;
  v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v11 = sub_255E3AB08();
  v12 = v11;
  v13 = 0;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v11 + 64;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = (*(v10 + 48) + 16 * v22);
    v24 = *(*(v10 + 56) + 8 * v22);
    v25 = *v23;
    v26 = v23[1];
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v12[6] + 16 * v22);
    *v27 = v25;
    v27[1] = v26;
    *(v12[7] + 8 * v22) = v24;
    v28 = v12[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_50;
    }

    v12[2] = v30;
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v13 >= v17)
    {
      break;
    }

    v21 = *(v10 + 64 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  if (!v12[2])
  {

LABEL_39:
    sub_255D5C33C();
    swift_allocError();
    *v49 = a1;
    *(v49 + 32) = 1;
    swift_willThrow();
    goto LABEL_40;
  }

  v44 = sub_255D3CA20(v59, v60);
  v46 = v45;

  if ((v46 & 1) == 0)
  {

    goto LABEL_39;
  }

  v47 = *(v12[7] + 8 * v44);

  if ((~v58 & 0xF000000000000007) != 0)
  {

    v4 = sub_255DE1388(v47, a2, v58);

    v51 = v58;
    goto LABEL_44;
  }

  if (v47 >> 61 == 1)
  {
    v52 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    return v52;
  }

  else if (v47 >> 61 == 2)
  {
    v4 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v53 = MEMORY[0x277D839F8];
    *v54 = v47;
    v54[1] = v53;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_255DE1978(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v51 = *(a3 + 16);
    v53 = *(a3 + 32);
    v55 = *(a3 + 40);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1 & 1;
    }

    if (a1 >> 61 == 5)
    {
      v49 = v6;
      v50 = v7;
      v57 = v8;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v41 = sub_255D3CA20(v50, v57);
              v43 = v42;

              if (v43)
              {
                a1 = *(v11[7] + 8 * v41);

                v30 = v49;
                if ((~v49 & 0xF000000000000007) == 0)
                {
                  if (a1 >> 61 != 3)
                  {
                    goto LABEL_40;
                  }

LABEL_26:
                  LOBYTE(a1) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                  return a1 & 1;
                }

                LOBYTE(a1) = sub_255DE1978(a1, a2, v49);
LABEL_42:

                sub_255D2F870(v30);
                return a1 & 1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v45 = a1;
            *(v45 + 32) = 1;
            swift_willThrow();
            goto LABEL_37;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_45;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v40 = a1;
    v40[1] = v39;
    swift_willThrow();
LABEL_37:

    return a1 & 1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v52 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v54 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v56 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      a1 = sub_255E38688();
      v34 = sub_255E3A848();
      if (os_log_type_enabled(a1, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_255D2E000, a1, v34, "SubReference to find value, unable to resolve index", v35, 2u);
        MEMORY[0x259C4F9E0](v35, -1, -1);
      }

      sub_255D5C33C();
      LOBYTE(a1) = swift_allocError();
      *v36 = 2;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 5;
      swift_willThrow();
      return a1 & 1;
    }

LABEL_45:
    swift_once();
    goto LABEL_18;
  }

  v37 = v31;
  v38 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1 & 1;
  }

  if (v37 < 0 || v37 >= *(v38 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v44 = a1;
    *(v44 + 32) = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  a1 = *(v38 + 8 * v37 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    LOBYTE(a1) = sub_255DE1978(a1, a2, v30);
    goto LABEL_42;
  }

  if (a1 >> 61 == 3)
  {
    goto LABEL_26;
  }

LABEL_40:
  sub_255D7B470();
  swift_allocError();
  v47 = MEMORY[0x277D839B0];
  *v48 = a1;
  v48[1] = v47;
  swift_willThrow();
  return a1 & 1;
}

uint64_t sub_255DE1F48(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v89 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v91 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v93 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v31 = sub_255D8F9E4(a2);
    if (v32)
    {
      if (qword_27F7E5E80 == -1)
      {
LABEL_18:
        v33 = sub_255E386A8();
        __swift_project_value_buffer(v33, qword_27F8152D8);
        v34 = sub_255E38688();
        v35 = sub_255E3A848();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
          MEMORY[0x259C4F9E0](v36, -1, -1);
        }

        sub_255D5C33C();
        a1 = swift_allocError();
        *v37 = 2;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        *(v37 + 32) = 5;
        swift_willThrow();
        return a1;
      }

LABEL_68:
      swift_once();
      goto LABEL_18;
    }

    v38 = v31;
    v39 = sub_255DDFB40(a1);
    if (!v3)
    {
      if (v38 < 0 || v38 >= *(v39 + 16))
      {

        sub_255D5C33C();
        swift_allocError();
        *v82 = a1;
        *(v82 + 32) = 1;
        swift_willThrow();
        goto LABEL_59;
      }

      a1 = *(v39 + 8 * v38 + 32);

      if ((~v30 & 0xF000000000000007) != 0)
      {

        a1 = sub_255DE1F48(a1, a2, v30);
        sub_255D2F870(v30);
        goto LABEL_64;
      }

      if (a1 >> 61 == 5)
      {
        v40 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        result = sub_255E3AB08();
        a1 = result;
        v42 = 0;
        v43 = 1 << *(v40 + 32);
        v44 = -1;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        v45 = v44 & *(v40 + 64);
        v46 = (v43 + 63) >> 6;
        v47 = result + 64;
        if (!v45)
        {
          goto LABEL_30;
        }

        while (1)
        {
          v48 = __clz(__rbit64(v45));
          for (v45 &= v45 - 1; ; v45 = (v50 - 1) & v50)
          {
            v51 = v48 | (v42 << 6);
            v52 = (*(v40 + 48) + 16 * v51);
            v53 = *(*(v40 + 56) + 8 * v51);
            v54 = *v52;
            v55 = v52[1];
            *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
            v56 = (*(a1 + 48) + 16 * v51);
            *v56 = v54;
            v56[1] = v55;
            *(*(a1 + 56) + 8 * v51) = v53;
            v57 = *(a1 + 16);
            v28 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v28)
            {
              goto LABEL_71;
            }

            *(a1 + 16) = v58;

            if (v45)
            {
              break;
            }

LABEL_30:
            v49 = v42;
            do
            {
              v42 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                __break(1u);
                goto LABEL_70;
              }

              if (v42 >= v46)
              {
                goto LABEL_64;
              }

              v50 = *(v40 + 64 + 8 * v42);
              ++v49;
            }

            while (!v50);
            v48 = __clz(__rbit64(v50));
          }
        }
      }

LABEL_62:
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      sub_255D7B470();
      swift_allocError();
      *v85 = a1;
      v85[1] = v84;
      swift_willThrow();
    }

    return a1;
  }

  v6 = *(a3 + 48);
  v88 = *(a3 + 16);
  v90 = *(a3 + 32);
  v92 = *(a3 + 40);
  v7 = StringResolvable.resolved(with:)(a2);
  if (v3)
  {
    return a1;
  }

  if (a1 >> 61 != 5)
  {

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v60 = a1;
    v60[1] = v59;
    swift_willThrow();
LABEL_59:

    return a1;
  }

  v87 = v7;
  v94 = v8;
  v86 = v6;
  v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v10 = sub_255E3AB08();
  v11 = v10;
  v12 = 0;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 64;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_13:
    v21 = v18 | (v12 << 6);
    v22 = (*(v9 + 48) + 16 * v21);
    v23 = *(*(v9 + 56) + 8 * v21);
    v24 = *v22;
    v25 = v22[1];
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (v11[6] + 16 * v21);
    *v26 = v24;
    v26[1] = v25;
    *(v11[7] + 8 * v21) = v23;
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_66;
    }

    v11[2] = v29;
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v12 >= v16)
    {
      break;
    }

    v20 = *(v9 + 64 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  if (!v11[2])
  {

LABEL_58:
    sub_255D5C33C();
    swift_allocError();
    *v83 = a1;
    *(v83 + 32) = 1;
    swift_willThrow();
    goto LABEL_59;
  }

  v61 = sub_255D3CA20(v87, v94);
  v63 = v62;

  if ((v63 & 1) == 0)
  {

    goto LABEL_58;
  }

  a1 = *(v11[7] + 8 * v61);

  if ((~v86 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE1F48(a1, a2, v86);
    sub_255D2F870(v86);
LABEL_64:

    return a1;
  }

  if (a1 >> 61 != 5)
  {
    goto LABEL_62;
  }

  v64 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  result = sub_255E3AB08();
  a1 = result;
  v65 = 0;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v64 + 64);
  v69 = (v66 + 63) >> 6;
  v70 = result + 64;
  if (!v68)
  {
LABEL_47:
    v72 = v65;
    while (1)
    {
      v65 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_67;
      }

      if (v65 >= v69)
      {
        goto LABEL_64;
      }

      v73 = *(v64 + 64 + 8 * v65);
      ++v72;
      if (v73)
      {
        v71 = __clz(__rbit64(v73));
        v68 = (v73 - 1) & v73;
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v71 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
LABEL_52:
    v74 = v71 | (v65 << 6);
    v75 = (*(v64 + 48) + 16 * v74);
    v76 = *(*(v64 + 56) + 8 * v74);
    v77 = *v75;
    v78 = v75[1];
    *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
    v79 = (*(a1 + 48) + 16 * v74);
    *v79 = v77;
    v79[1] = v78;
    *(*(a1 + 56) + 8 * v74) = v76;
    v80 = *(a1 + 16);
    v28 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v28)
    {
      break;
    }

    *(a1 + 16) = v81;

    if (!v68)
    {
      goto LABEL_47;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_255DE277C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = *(a3 + 48);
    v61 = *(a3 + 16);
    v63 = *(a3 + 32);
    v65 = *(a3 + 40);
    v13 = StringResolvable.resolved(with:)(a2);
    if (v6)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v60 = v13;
      v67 = v14;
      v58 = a5;
      v59 = v12;
      v56 = a6;
      v57 = a4;
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v16 = sub_255E3AB08();
      v17 = v16;
      v18 = 0;
      v19 = 1 << *(v15 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v15 + 64);
      v22 = (v19 + 63) >> 6;
      v23 = v16 + 64;
      if (v21)
      {
        while (1)
        {
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
LABEL_13:
          v27 = v24 | (v18 << 6);
          v28 = (*(v15 + 48) + 16 * v27);
          v29 = *(*(v15 + 56) + 8 * v27);
          v30 = *v28;
          v31 = v28[1];
          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          v32 = (v17[6] + 16 * v27);
          *v32 = v30;
          v32[1] = v31;
          *(v17[7] + 8 * v27) = v29;
          v33 = v17[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            break;
          }

          v17[2] = v35;

          if (!v21)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v25 = v18;
        while (1)
        {
          v18 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v18 >= v22)
          {
            if (v17[2])
            {
              v49 = sub_255D3CA20(v60, v67);
              v51 = v50;

              if (v51)
              {
                v52 = *(v17[7] + 8 * v49);

                if ((~v59 & 0xF000000000000007) != 0)
                {

                  a1 = v57(v52, a2, v59);

                  v58(v59);
                }

                else
                {
                  a1 = v56(v52);
                }

                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v54 = a1;
            *(v54 + 32) = 1;
            swift_willThrow();
            goto LABEL_35;
          }

          v26 = *(v15 + 64 + 8 * v18);
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v21 = (v26 - 1) & v26;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v48 = a1;
    v48[1] = v47;
    swift_willThrow();
LABEL_35:

    return a1;
  }

  v36 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v62 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v64 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v66 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v37 = sub_255D8F9E4(a2);
  if ((v38 & 1) == 0)
  {
    v44 = v37;
    v45 = sub_255DDFB40(a1);
    if (v6)
    {
      return a1;
    }

    if ((v44 & 0x8000000000000000) == 0 && v44 < *(v45 + 16))
    {
      v46 = *(v45 + 8 * v44 + 32);

      if ((~v36 & 0xF000000000000007) != 0)
      {

        a1 = a4(v46, a2, v36);

        a5(v36);
      }

      else
      {
        a1 = a6(v46);
      }

      return a1;
    }

    sub_255D5C33C();
    swift_allocError();
    *v53 = a1;
    *(v53 + 32) = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_41:
    swift_once();
  }

  v39 = sub_255E386A8();
  __swift_project_value_buffer(v39, qword_27F8152D8);
  v40 = sub_255E38688();
  v41 = sub_255E3A848();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_255D2E000, v40, v41, "SubReference to find value, unable to resolve index", v42, 2u);
    MEMORY[0x259C4F9E0](v42, -1, -1);
  }

  sub_255D5C33C();
  a1 = swift_allocError();
  *v43 = 2;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 5;
  swift_willThrow();
  return a1;
}

uint64_t sub_255DE2D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83E8, &qword_255E55338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DE5D40();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340);
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DE2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F707265746E69 && a2 == 0xEC00000064657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DE2F8C(uint64_t a1)
{
  v2 = sub_255DE5D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE2FC8(uint64_t a1)
{
  v2 = sub_255DE5D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StringResolvable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83E8, &qword_255E55338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  sub_255D3CE1C(a1, v16);
  sub_255D8E89C(v16, &v17);
  if (v2)
  {

    sub_255D3CE1C(a1, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_255DE5D40();
    sub_255E3AE28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340);
    sub_255E3ABC8();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v6 + 8))(v9, v5);
    v15 = v17;
    v10 = v18;
    v11 = v19;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v13 = v15;
    v14 = v11 | 0x80;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v13 = v17;
    v10 = v18;
    v14 = v19;
  }

  *a2 = v13;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  return result;
}

uint64_t _s6LiftUI15LocalStateStoreCyypSgSScig_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v8 = *(*v4 + 112);
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_255D3CA20(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_7:
    v16 = *(v4 + *(*v4 + 120));
    if (v16)
    {
      return (*(*v16 + 248))(v18);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  MEMORY[0x28223BE20](v14);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v17 + 16))
  {
    sub_255D3951C(v17 + 32 * v13 + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE3530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v8 = *(*v4 + 112);
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_255D3CA20(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_7:
    v16 = *(v4 + *(*v4 + 120));
    if (v16)
    {
      return (*(*v16 + 248))(v18);
    }

    *a3 = 0xF000000000000007;
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  MEMORY[0x28223BE20](v14);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v17 + 16))
  {
    *a3 = *(v17 + 8 * v13 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_255DE373C()
{
  result = qword_27F7E83D8;
  if (!qword_27F7E83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E83D8);
  }

  return result;
}

uint64_t sub_255DE3790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_255DF3B58();
  *a2 = result;
  return result;
}

uint64_t sub_255DE37BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_255DF3C30();
}

void sub_255DE37E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a4) & 0xF;
  }

  v10 = 4 * v9;
  v11 = a2 >> 14;
  if (a2 >> 14 == 4 * v9)
  {
    v108 = 0;
    v12 = 0;
    v13 = 0;
    if (v10 >= a2 >> 14)
    {
LABEL_5:
      v14 = sub_255E3A618();
      v15 = MEMORY[0x259C4E8B0](v14);
      v17 = v16;

      v115 = sub_255DE5180(v15, v17);
      LOBYTE(v116) = v18 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
      if (swift_dynamicCast())
      {
        sub_255D34910(v108, v12, v13, 255);
        v19 = 0;
        v20 = 0;
        v12 = 0;
        v21 = v119;
LABEL_59:
        sub_255D348B4(v21, v12, v20, v19 & 1);
        sub_255D34910(v21, v12, v20, v19);
        *a1 = v21;
        *(a1 + 8) = v12;
        *(a1 + 16) = v20;
        *(a1 + 24) = v19 & 1;
        return;
      }

      v64 = sub_255E3A618();
      v65 = v13;
      v66 = MEMORY[0x259C4E8B0](v64);
      v68 = v67;

      sub_255D34910(v108, v12, v65, 255);
      v19 = 1;
      v7 = 0xF000000000000007;
      v21 = v66;
      v12 = v68;
      goto LABEL_57;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_255D5C33C();
    swift_allocError();
    *v102 = 2;
    *(v102 + 8) = 0;
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = 5;
    swift_willThrow();
    v80 = v10;
    v81 = v5;
    goto LABEL_61;
  }

  v111 = v4;
  v13 = 0;
  v12 = 0;
  v108 = 0;
  v22 = 0;
  v120 = 255;
  v23 = a2;
  v104 = 4 * v9;
  while (1)
  {
    if (v22)
    {
      v8 = v23;
    }

    if (v112 = v23, v5 = sub_255E3A5F8(), v114 = v24, v5 == 46) && v24 == 0xE100000000000000 || (v25 = sub_255E3AC68(), v24 = v114, (v25))
    {
      v26 = v8 >> 14;
      if (v8 >> 14 == v11)
      {
        v8 = 0;
        v22 = 1;
        if (v5 == 91)
        {
          goto LABEL_26;
        }
      }

      else if (v120 == 0xFF)
      {
        if (v11 < v26)
        {
          goto LABEL_82;
        }

        v36 = sub_255E3A618();
        v108 = MEMORY[0x259C4E8B0](v36);
        v12 = v37;
        v7 = a3;

        v24 = v114;
        v8 = 0;
        v22 = 1;
        v13 = 0xF000000000000007;
        v120 = 1;
        if (v5 == 91)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v27 = swift_allocObject();
        if (v11 < v26)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v28 = v27;
        v106 = v5;
        v29 = v13;
        v30 = v12;
        v31 = v120;
        sub_255D348B4(v108, v30, v29, v120 & 1);
        v32 = sub_255E3A618();
        v33 = MEMORY[0x259C4E8B0](v32);
        v35 = v34;

        *(v28 + 16) = v33;
        *(v28 + 24) = v35;
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0xF000000000000007;
        sub_255DEDB88(v28, v108, v30, v29, v31 & 1, &v115);
        if (v111)
        {
          sub_255D34910(v108, v30, v29, v31);

          v90 = v108;
          v91 = v30;
          v92 = v29;
          v93 = v31;
          goto LABEL_79;
        }

        v111 = 0;
        sub_255D34910(v108, v30, v29, v31);
        sub_255D34910(v108, v30, v29, v31);

        v8 = 0;
        v12 = v116;
        v108 = v115;
        v13 = v117;
        v22 = 1;
        v120 = v118;
        v6 = a4;
        v5 = v106;
        v7 = a3;
        v10 = v104;
        v24 = v114;
        if (v106 == 91)
        {
LABEL_26:
          if (v24 == 0xE100000000000000)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v22 = 0;
      if (v5 == 91)
      {
        goto LABEL_26;
      }
    }

    v38 = sub_255E3AC68();
    v24 = v114;
    if ((v38 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    if ((v22 & 1) == 0)
    {
      break;
    }

    v22 = 1;
LABEL_30:
    v39 = v112;
    if (v5 != 93)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v24 == 0xE100000000000000)
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_46:
    v5 = v13;
    v62 = sub_255E3AC68();

    v63 = v22 | ~v62;
    v7 = a3;
    if ((v63 & 1) == 0)
    {
LABEL_50:
      if (v120 == 0xFF)
      {
        if (v39 >> 14 >= v8 >> 14)
        {
          v94 = sub_255E3A618();
          v95 = MEMORY[0x259C4E8B0](v94);
          v97 = v96;

          v115 = sub_255DE5180(v95, v97);
          LOBYTE(v116) = v98 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
          if (swift_dynamicCast())
          {
            sub_255D34910(v108, v12, v13, 255);
            v78 = 0;
            v7 = 0;
            v5 = 0;
            v10 = v119;
          }

          else
          {
            v100 = sub_255E3A618();
            v10 = MEMORY[0x259C4E8B0](v100);
            v5 = v101;

            sub_255D34910(v108, v12, v13, 255);
            v78 = 1;
            v7 = 0xF000000000000007;
          }

          goto LABEL_74;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v69 = swift_allocObject();
      v70 = v108;
      if (v39 >> 14 >= v8 >> 14)
      {
        v71 = v69;
        v72 = v120;
        sub_255D348B4(v108, v12, v13, v120 & 1);
        v73 = v72;
        v74 = sub_255E3A618();
        v75 = MEMORY[0x259C4E8B0](v74);
        v77 = v76;

        *(v71 + 16) = v75;
        *(v71 + 24) = v77;
        *(v71 + 32) = 0;
        *(v71 + 40) = 0;
        *(v71 + 48) = 0xF000000000000007;
        sub_255DEDB88(v71, v108, v12, v13, v73 & 1, &v115);
        if (v111)
        {
          goto LABEL_65;
        }

        sub_255D34910(v108, v12, v13, v73);
        sub_255D34910(v108, v12, v13, v73);

        v10 = v115;
        v5 = v116;
        v7 = v117;
        v78 = v118;
        if (v118 == 255)
        {
          goto LABEL_77;
        }

LABEL_74:
        sub_255D348B4(v10, v5, v7, v78 & 1);
        sub_255D34910(v10, v5, v7, v78);
        *a1 = v10;
        *(a1 + 8) = v5;
        *(a1 + 16) = v7;
        *(a1 + 24) = v78 & 1;
        return;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_47:
    v23 = v39;
    v11 = v39 >> 14;
    if (v11 != v10)
    {
      v23 = sub_255E3A588();
      v11 = v23 >> 14;
    }

    if (v11 == v10)
    {
      if (v22)
      {
        v21 = v108;
        v7 = v13;
        v19 = v120;
        goto LABEL_57;
      }

      if (v120 == 0xFF)
      {
        if (v10 >= v8 >> 14)
        {
          goto LABEL_5;
        }

        goto LABEL_76;
      }

      v83 = swift_allocObject();
      if (v10 >= v8 >> 14)
      {
        v84 = v83;
        v85 = v120;
        sub_255D348B4(v108, v12, v13, v120 & 1);
        v73 = v85;
        v86 = sub_255E3A618();
        v87 = MEMORY[0x259C4E8B0](v86);
        v89 = v88;

        *(v84 + 16) = v87;
        *(v84 + 24) = v89;
        v70 = v108;
        *(v84 + 32) = 0;
        *(v84 + 40) = 0;
        *(v84 + 48) = 0xF000000000000007;
        sub_255DEDB88(v84, v108, v12, v13, v85 & 1, &v115);
        if (!v111)
        {
          sub_255D34910(v108, v12, v13, v85);
          sub_255D34910(v108, v12, v13, v85);

          v21 = v115;
          v12 = v116;
          v7 = v117;
          v19 = v118;
LABEL_57:
          if (v19 != -1)
          {
            v20 = v7;
            goto LABEL_59;
          }

          sub_255D5C33C();
          swift_allocError();
          *v79 = 5;
          *(v79 + 8) = 0;
          *(v79 + 16) = 0;
          *(v79 + 24) = 0;
          *(v79 + 32) = 5;
          swift_willThrow();
          v80 = v21;
          v81 = v12;
LABEL_61:
          v82 = v7;
LABEL_71:
          sub_255D34910(v80, v81, v82, 255);
          return;
        }

LABEL_65:
        sub_255D34910(v70, v12, v13, v73);
        v90 = v70;
        v91 = v12;
        v92 = v13;
        v93 = v73;
        goto LABEL_79;
      }

LABEL_87:
      __break(1u);
      return;
    }
  }

  v40 = v8 >> 14;
  if (v8 >> 14 == v11)
  {
    v41 = v111;
    v42 = v108;
    goto LABEL_40;
  }

  if (v120 == 0xFF)
  {
    if (v11 < v40)
    {
      goto LABEL_84;
    }

    v50 = sub_255E3A618();
    v42 = MEMORY[0x259C4E8B0](v50);
    v12 = v51;
    v7 = a3;

    v120 = 1;
    v13 = 0xF000000000000007;
    v41 = v111;
LABEL_40:
    v52 = sub_255E3A588();
    v53 = sub_255DE37E8(&v115, v52, v7, v6);
    if (v41)
    {
      sub_255D34910(v42, v12, v13, v120);

      return;
    }

    v107 = v5;
    v111 = 0;
    v113 = v53;
    v54 = v42;
    v55 = v13;
    v56 = v12;
    v58 = v115;
    v57 = v116;
    v59 = v117;
    v109 = v118;
    v60 = v120;
    if (v120 == 0xFF)
    {

      sub_255D5C33C();
      swift_allocError();
      *v99 = 2;
      *(v99 + 8) = 0;
      *(v99 + 16) = 0;
      *(v99 + 24) = 0;
      *(v99 + 32) = 5;
      swift_willThrow();
      sub_255D34870(v58, v57, v59, v109);
      v80 = v54;
      v81 = v56;
      v82 = v55;
      goto LABEL_71;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v57;
    *(v61 + 32) = v59;
    *(v61 + 40) = v109;
    *(v61 + 48) = 0xF000000000000007;
    sub_255DE63F8(v54, v56, v55, v60);
    sub_255D348B4(v58, v57, v59, v109);
    sub_255DEDB88(v61 | 0x8000000000000000, v54, v56, v55, v60 & 1, &v115);
    sub_255D34910(v54, v56, v55, v60);
    sub_255D34870(v58, v57, v59, v109);
    sub_255D34910(v54, v56, v55, v60);

    v8 = 0;
    v12 = v116;
    v108 = v115;
    v13 = v117;
    v22 = 1;
    v120 = v118;
    v39 = v113;
    v24 = v114;
    v6 = a4;
    v5 = v107;
    v7 = a3;
    v10 = v104;
    if (v107 != 93)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v43 = swift_allocObject();
  if (v11 < v40)
  {
    goto LABEL_83;
  }

  v44 = v43;
  v45 = v120;
  sub_255D348B4(v108, v12, v13, v120 & 1);
  v46 = sub_255E3A618();
  v47 = MEMORY[0x259C4E8B0](v46);
  v49 = v48;

  *(v44 + 16) = v47;
  *(v44 + 24) = v49;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = 0xF000000000000007;
  sub_255DEDB88(v44, v108, v12, v13, v45 & 1, &v115);
  v41 = v111;
  if (!v111)
  {
    sub_255D34910(v108, v12, v13, v45);
    sub_255D34910(v108, v12, v13, v45);

    v42 = v115;
    v12 = v116;
    v13 = v117;
    v120 = v118;
    v6 = a4;
    v7 = a3;
    goto LABEL_40;
  }

  sub_255D34910(v108, v12, v13, v45);

  v90 = v108;
  v91 = v12;
  v92 = v13;
  v93 = v45;
LABEL_79:
  sub_255D34910(v90, v91, v92, v93);
}

unint64_t sub_255DE46E4(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, unint64_t, uint64_t, uint64_t, unint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v11 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a4) & 0xF;
  }

  v12 = a2 >> 14;
  v92 = 4 * v11;
  if (a2 >> 14 == 4 * v11)
  {
    v13 = v11 << 16;
    v14 = (a4 >> 60) & ((a3 & 0x800000000000000) == 0);
    v15 = a2;
    goto LABEL_5;
  }

  v83 = v11;
  v84 = result;
  v21 = 0;
  v23 = 0;
  v90 = 0;
  v24 = 0;
  v25 = 255;
  v15 = a2;
  do
  {
    if (v24)
    {
      v9 = v15;
    }

    result = sub_255E3A5F8();
    v27 = result;
    v93 = result;
    v95 = v26;
    if (result == 46 && v26 == 0xE100000000000000 || (result = sub_255E3AC68(), v27 = v93, v26 = v95, (result & 1) != 0))
    {
      v28 = v9 >> 14;
      if (v9 >> 14 == v12)
      {
        v9 = 0;
        v24 = 1;
        if (v27 == 91)
        {
          goto LABEL_30;
        }
      }

      else if (v25 == 0xFF)
      {
        if (v12 < v28)
        {
          goto LABEL_80;
        }

        v36 = sub_255E3A618();
        v90 = MEMORY[0x259C4E8B0](v36);
        v23 = v37;
        v8 = a3;

        v27 = v93;
        v26 = v95;
        v9 = 0;
        v24 = 1;
        v21 = 0xF000000000000007;
        v25 = 1;
        if (v93 == 91)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = swift_allocObject();
        if (v12 < v28)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
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
          return result;
        }

        v29 = result;
        v30 = sub_255E3A618();
        v31 = MEMORY[0x259C4E8B0](v30);
        v32 = v23;
        v34 = v33;

        *(v29 + 16) = v31;
        *(v29 + 24) = v34;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
        *(v29 + 48) = 0xF000000000000007;
        v35 = v90;
        a6(&v97, v29, v90, v32, v21, v25 & 1);
        if (v89)
        {
          goto LABEL_73;
        }

        v89 = 0;
        a7(v90, v32, v21, v25);

        v9 = 0;
        v23 = v98;
        v90 = v97;
        v21 = v99;
        v24 = 1;
        v25 = v100;
        v7 = a4;
        v8 = a3;
        v27 = v93;
        v26 = v95;
        if (v93 == 91)
        {
LABEL_30:
          if (v26 == 0xE100000000000000)
          {
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      v24 = 0;
      if (v93 == 91)
      {
        goto LABEL_30;
      }
    }

    result = sub_255E3AC68();
    v27 = v93;
    v26 = v95;
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    if ((v24 & 1) == 0)
    {
      v38 = v9 >> 14;
      if (v9 >> 14 == v12)
      {
        v39 = v25;
      }

      else
      {
        if (v25 != 0xFF)
        {
          result = swift_allocObject();
          if (v12 < v38)
          {
            goto LABEL_81;
          }

          v40 = result;
          v41 = sub_255E3A618();
          v42 = MEMORY[0x259C4E8B0](v41);
          v32 = v23;
          v44 = v43;

          *(v40 + 16) = v42;
          *(v40 + 24) = v44;
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
          *(v40 + 48) = 0xF000000000000007;
          v35 = v90;
          a6(&v97, v40, v90, v32, v21, v25 & 1);
          v45 = v89;
          if (v89)
          {
LABEL_73:

            a7(v35, v32, v21, v25);

            return v15;
          }

          a7(v90, v32, v21, v25);

          v23 = v98;
          v90 = v97;
          v21 = v99;
          v39 = v100;
          v7 = a4;
          v8 = a3;
LABEL_45:
          v48 = sub_255E3A588();
          sub_255DE37E8(&v97, v48, v8, v7);
          if (v45)
          {
            a7(v90, v23, v21, v39);

            return v15;
          }

          v85 = v49;
          v50 = v23;
          v51 = v97;
          v52 = v98;
          v53 = v99;
          v101 = v100;
          if (v39 == 0xFF)
          {

            sub_255D5C33C();
            swift_allocError();
            *v81 = 2;
            *(v81 + 8) = 0;
            *(v81 + 16) = 0;
            *(v81 + 24) = 0;
            *(v81 + 32) = 5;
            swift_willThrow();
            sub_255D34870(v51, v52, v53, v101);
            return v15;
          }

          v54 = swift_allocObject();
          *(v54 + 16) = v51;
          *(v54 + 24) = v52;
          *(v54 + 32) = v53;
          v55 = v101;
          *(v54 + 40) = v101;
          *(v54 + 48) = 0xF000000000000007;
          sub_255D348B4(v51, v52, v53, v55);
          a6(&v97, v54 | 0x8000000000000000, v90, v50, v21, v39 & 1);
          v89 = 0;
          sub_255D34870(v51, v52, v53, v101);
          a7(v90, v50, v21, v39);

          v9 = 0;
          v23 = v98;
          v90 = v97;
          v21 = v99;
          v24 = 1;
          v25 = v100;
          v15 = v85;
          v7 = a4;
          v8 = a3;
          v26 = v95;
          if (v93 != 93)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v12 < v38)
        {
          goto LABEL_83;
        }

        v46 = sub_255E3A618();
        v90 = MEMORY[0x259C4E8B0](v46);
        v23 = v47;
        v8 = a3;

        v39 = 1;
        v21 = 0xF000000000000007;
      }

      v45 = v89;
      goto LABEL_45;
    }

    v24 = 1;
LABEL_34:
    if (v27 != 93)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v26 == 0xE100000000000000)
    {

      if ((v24 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }

LABEL_51:
    v56 = sub_255E3AC68();

    v57 = v24 | ~v56;
    v8 = a3;
    if ((v57 & 1) == 0)
    {
LABEL_56:
      if (v25 == 0xFF)
      {
        if (v15 >> 14 < v9 >> 14)
        {
          goto LABEL_85;
        }

        v75 = sub_255E3A618();
        v76 = MEMORY[0x259C4E8B0](v75);
        v78 = v77;

        v79 = 1;
        v80 = 0xF000000000000007;
      }

      else
      {
        v59 = v21;
        result = swift_allocObject();
        if (v15 >> 14 < v9 >> 14)
        {
          goto LABEL_84;
        }

        v60 = result;
        v61 = sub_255E3A618();
        v62 = MEMORY[0x259C4E8B0](v61);
        v64 = v63;

        *(v60 + 16) = v62;
        *(v60 + 24) = v64;
        *(v60 + 32) = 0;
        *(v60 + 40) = 0;
        *(v60 + 48) = 0xF000000000000007;
        a6(&v97, v60, v90, v23, v59, v25 & 1);
        if (v89)
        {
          v65 = v90;
          v66 = v23;
          v67 = v59;
          v68 = v25;
LABEL_66:
          a7(v65, v66, v67, v68);

          return v15;
        }

        a7(v90, v23, v59, v25);

        v76 = v97;
        v78 = v98;
        v80 = v99;
        v79 = v100;
        if (v100 == 255)
        {
          sub_255D5C33C();
          swift_allocError();
          *v82 = 2;
          *(v82 + 8) = 0;
          *(v82 + 16) = 0;
          *(v82 + 24) = 0;
          *(v82 + 32) = 5;
          goto LABEL_55;
        }
      }

      *v84 = v76;
      *(v84 + 8) = v78;
      *(v84 + 16) = v80;
      *(v84 + 24) = v79 & 1;
      return v15;
    }

LABEL_52:
    v12 = v15 >> 14;
    if (v15 >> 14 != v92)
    {
      result = sub_255E3A588();
      v15 = result;
      v12 = result >> 14;
    }
  }

  while (v12 != v92);
  v96 = v25;
  v69 = v7;
  v17 = v90;
  v19 = v23;
  v13 = v83 << 16;
  v14 = (v69 >> 60) & ((v8 & 0x800000000000000) == 0);
  if (v24)
  {
    v10 = v84;
    v20 = v96;
    goto LABEL_7;
  }

  if (v96 == 0xFF)
  {
    v10 = v84;
LABEL_5:
    if (v92 >= v9 >> 14)
    {
      v16 = sub_255E3A618();
      v17 = MEMORY[0x259C4E8B0](v16);
      v19 = v18;

      v20 = 1;
      v21 = 0xF000000000000007;
      goto LABEL_7;
    }

    goto LABEL_82;
  }

  v94 = v21;
  result = swift_allocObject();
  if (v92 < v9 >> 14)
  {
    goto LABEL_86;
  }

  v70 = result;
  v71 = sub_255E3A618();
  v72 = MEMORY[0x259C4E8B0](v71);
  v74 = v73;

  *(v70 + 16) = v72;
  *(v70 + 24) = v74;
  *(v70 + 32) = 0;
  *(v70 + 40) = 0;
  *(v70 + 48) = 0xF000000000000007;
  a6(&v97, v70, v90, v19, v94, v96 & 1);
  if (v89)
  {
    v65 = v90;
    v66 = v19;
    v67 = v94;
    v68 = v96;
    goto LABEL_66;
  }

  a7(v90, v19, v94, v96);

  v17 = v97;
  v19 = v98;
  v21 = v99;
  v20 = v100;
  v10 = v84;
LABEL_7:
  if (v20 == -1)
  {
    sub_255D5C33C();
    swift_allocError();
    *v58 = 5;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = 5;
LABEL_55:
    swift_willThrow();
    return v15;
  }

  *v10 = v17;
  *(v10 + 8) = v19;
  *(v10 + 16) = v21;
  *(v10 + 24) = v20 & 1;
  v22 = 7;
  if (v14)
  {
    v22 = 11;
  }

  return v13 | v22;
}

uint64_t sub_255DE5180(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_255E3AA18();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_255DE6940(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_255DE5480(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8440, &qword_255E55848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255DE55B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8410, &unk_255E55800);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_255DE5708(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_255DE5850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8458, &qword_255E55860);
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

char *sub_255DE5944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8438, &qword_255E55840);
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

char *sub_255DE5A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8418, &unk_255E5F300);
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

char *sub_255DE5B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8448, &qword_255E55850);
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

void *sub_255DE5C6C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6148, &qword_255E3BB78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255DE5CE0(char *a1, int64_t a2, char a3)
{
  result = sub_255DE60D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE5D00(char *a1, int64_t a2, char a3)
{
  result = sub_255DE61E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE5D20(char *a1, int64_t a2, char a3)
{
  result = sub_255DE62EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_255DE5D40()
{
  result = qword_27F7E83F0;
  if (!qword_27F7E83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E83F0);
  }

  return result;
}

unint64_t sub_255DE5DEC()
{
  result = qword_27F7E83F8;
  if (!qword_27F7E83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E83F8);
  }

  return result;
}

unint64_t sub_255DE5E44()
{
  result = qword_27F7E8400;
  if (!qword_27F7E8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8400);
  }

  return result;
}

unint64_t sub_255DE5E9C()
{
  result = qword_27F7E8408;
  if (!qword_27F7E8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8408);
  }

  return result;
}

void *sub_255DE5EF0(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8420, &unk_255E55810, &qword_27F7E6330, &qword_255E3E0F0);
  *v3 = result;
  return result;
}

void *sub_255DE5F30(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8470, &qword_255E55878, &qword_27F7E8478, &qword_255E55880);
  *v3 = result;
  return result;
}

void *sub_255DE5F70(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8480, &qword_255E55888, &qword_27F7E8488, &qword_255E55890);
  *v3 = result;
  return result;
}

void *sub_255DE5FB0(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E84A8, &qword_255E558B0, &qword_27F7E84B0, &qword_255E558B8);
  *v3 = result;
  return result;
}

void *sub_255DE5FF0(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8490, &qword_255E55898, &qword_27F7E8498, &qword_255E558A0);
  *v3 = result;
  return result;
}

char *sub_255DE6030(char *a1, int64_t a2, char a3)
{
  result = sub_255DE6410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_255DE6050(size_t a1, int64_t a2, char a3)
{
  result = sub_255DE651C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255DE6070(void *a1, int64_t a2, char a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8430, &unk_255E55830, &qword_27F7E65D0, &qword_255E3E0F8);
  *v3 = result;
  return result;
}

char *sub_255DE60B0(char *a1, int64_t a2, char a3)
{
  result = sub_255DE683C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE60D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8418, &unk_255E5F300);
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

char *sub_255DE61E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8410, &unk_255E55800);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255DE62EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8438, &qword_255E55840);
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

void sub_255DE63F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_255D348B4(a1, a2, a3, a4 & 1);
  }
}

char *sub_255DE6410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84A0, &qword_255E558A8);
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

size_t sub_255DE651C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8450, &qword_255E55858);
  v10 = *(sub_255E39068() - 8);
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
  v15 = *(sub_255E39068() - 8);
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

void *sub_255DE66F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_255DE683C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8460, &qword_255E55868);
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

unsigned __int8 *sub_255DE6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_255E3A608();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_255DE6ECC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_255E3AA18();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_255DE6ECC()
{
  v0 = sub_255E3A618();
  v4 = sub_255DE6F4C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_255DE6F4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_255E3A568();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_255E3A8B8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_255DE5C6C(v9, 0);
  v12 = sub_255DE70A4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_255E3A568();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_255E3AA18();
LABEL_4:

  return sub_255E3A568();
}

unint64_t sub_255DE70A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_255DE72C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255E3A5D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_255E3AA18();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_255DE72C4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_255E3A5B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_255DE72C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255E3A5E8();
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
    v5 = MEMORY[0x259C4E920](15, a1 >> 16);
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

uint64_t objectdestroyTm_3(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255DE73A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DE73EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_255DE743C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DE7484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DE74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_255D3CE1C(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(v39, v44);
    v47 = *v4;
    v10 = v47;
    if (v47)
    {
      v11 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v12 = sub_255E38AE8();
      v32 = &v28;
      v31 = *(v12 - 8);
      v13 = *(v31 + 64);
      MEMORY[0x28223BE20](v12);
      v33 = v5;
      v15 = &v28 - v14;
      *v41 = *(v4 + 8);
      v39[0] = *(v4 + 24);
      v16 = swift_allocObject();
      v29 = a4;
      *(v16 + 16) = a2;
      v17 = *(v4 + 16);
      *(v16 + 24) = *v4;
      *(v16 + 40) = v17;
      *(v16 + 56) = *(v4 + 32);
      *(v16 + 64) = v10;
      *(v16 + 72) = a3;
      sub_255DE9654(&v47, v36);
      sub_255DE9654(&v47, v36);

      sub_255DC8A90(v41, v36);
      sub_255DC8A90(v39, v36);

      sub_255E38E98();

      v18 = sub_255D48A94(v10);
      v19 = *(v11 + 8);
      v20 = sub_255DE96C4(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v34 = v19;
      v35 = v20;
      WitnessTable = swift_getWitnessTable();
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v18, a2, a3, v12, WitnessTable, v29);

      (*(v31 + 8))(v15, v12);
    }

    else
    {
      v23 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v42 = sub_255E38AE8();
      v37 = v23;
      v38 = sub_255DE96C4(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v43 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(v41);
      sub_255E38E98();
      v24 = v42;
      v25 = v43;
      v26 = __swift_project_boxed_opaque_existential_1(v41, v42);
      a4[3] = v24;
      a4[4] = *(v25 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_255D395E4(v39, &qword_27F7E8130, &qword_255E53900);
    return sub_255D3CE1C(a1, a4);
  }
}

uint64_t sub_255DE7928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a2;
  v48 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v43 = sub_255E385E8();
  v42 = *(v43 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E558C0;
  v46 = a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  *(inited + 32) = v17;
  v45 = inited + 32;
  v44 = inited;
  *(inited + 40) = v18;
  sub_255E385F8();
  sub_255DE8F80();

  v19 = sub_255E3A7D8();
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_8:
    v28 = v44;
    sub_255DCB5B4(v20, (v44 + 48));

    v50[0] = *(v46 + 24);
    *(v28 + 56) = v50[0];
    v29 = swift_allocObject();
    *(v29 + 16) = v47;
    *(v28 + 72) = v29 | 0x2000000000000000;
    sub_255DC8A90(v50, &v49);
    v30 = sub_255DC53CC(v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
    swift_arrayDestroy();
    v31 = sub_255DC5124(MEMORY[0x277D84F90]);
    v32 = type metadata accessor for RemoteStateStore(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();

    v36 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v35, v30, v31);
    v37 = sub_255E3A778();
    (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = a5;
    v38[5] = v36;
    v38[6] = a6;

    sub_255D52540(0, 0, v12, &unk_255E5A580, v38);
  }

  v21 = v19;
  v49 = MEMORY[0x277D84F90];
  sub_255DE60B0(0, v19 & ~(v19 >> 63), 0);
  v20 = v49;
  result = sub_255E3A7C8();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v39 = v12;
    v40 = a5;
    v41 = a6;
    do
    {
      v23 = sub_255E3A7F8();
      v25 = *v24;
      v23(v50, 0);
      v49 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_255DE60B0((v26 > 1), v27 + 1, 1);
        v20 = v49;
      }

      *(v20 + 16) = v27 + 1;
      *(v20 + 8 * v27 + 32) = v25;
      sub_255E3A7E8();
      --v21;
    }

    while (v21);
    (*(v42 + 8))(v15, v43);
    a6 = v41;
    a5 = v40;
    v12 = v39;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE7D6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7465537865646E69;
  v4 = 0xEB0000000079654BLL;
  if (v2 != 1)
  {
    v3 = 0x654B74657366666FLL;
    v4 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736E6F69746361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7465537865646E69;
  v8 = 0xEB0000000079654BLL;
  if (*a2 != 1)
  {
    v7 = 0x654B74657366666FLL;
    v8 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DE7E88()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE7F38()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DE7FD4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE8080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DE99F0();
  *a2 = result;
  return result;
}

void sub_255DE80B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB0000000079654BLL;
  v5 = 0x7465537865646E69;
  if (v2 != 1)
  {
    v5 = 0x654B74657366666FLL;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F69746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DE811C()
{
  v1 = 0x7465537865646E69;
  if (*v0 != 1)
  {
    v1 = 0x654B74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

uint64_t sub_255DE8184@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DE99F0();
  *a1 = result;
  return result;
}

uint64_t sub_255DE81AC(uint64_t a1)
{
  v2 = sub_255DE976C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE81E8(uint64_t a1)
{
  v2 = sub_255DE976C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_255DE823C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_255DE8FD8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_255DE8284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_255D3CE1C(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    v49 = a7;
    sub_255D34630(v41, v46);
    if (a4)
    {
      v33 = v48;
      v32[1] = __swift_project_boxed_opaque_existential_1(v46, v47);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v15 = sub_255E38AE8();
      v35 = v32;
      v34 = *(v15 - 8);
      v16 = *(v34 + 64);
      MEMORY[0x28223BE20](v15);
      v36 = v7;
      v18 = v32 - v17;
      v19 = swift_allocObject();
      v19[2] = a2;
      v19[3] = a4;
      v19[4] = a5;
      v19[5] = a6;
      v19[6] = a4;
      v19[7] = a3;
      swift_bridgeObjectRetain_n();

      v20 = v33;
      sub_255E38EA8();

      v21 = sub_255D48A94(a4);
      v22 = *(v20 + 8);
      v23 = sub_255DE96C4(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v37 = v22;
      v38 = v23;
      WitnessTable = swift_getWitnessTable();
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v21, a2, a3, v15, WitnessTable, v49);

      (*(v34 + 8))(v18, v15);
    }

    else
    {
      v26 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v44 = sub_255E38AE8();
      v39 = v26;
      v40 = sub_255DE96C4(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v45 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(v43);
      sub_255E38EA8();
      v27 = v44;
      v28 = v45;
      v29 = __swift_project_boxed_opaque_existential_1(v43, v44);
      v30 = v49;
      v49[3] = v27;
      v30[4] = *(v28 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_255D395E4(v41, &qword_27F7E8130, &qword_255E53900);
    return sub_255D3CE1C(a1, a7);
  }
}

uint64_t sub_255DE8684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_255E385E8();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = a4;
  v45 = inited;
  v46 = inited + 32;
  *(inited + 40) = a5;
  sub_255E385F8();
  sub_255DE8F80();

  v20 = sub_255E3A7D8();
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_8:
    v29 = v45;
    sub_255DCB5B4(v21, (v45 + 48));

    v30 = sub_255DC53CC(v29);
    swift_setDeallocating();
    sub_255D395E4(v46, &qword_27F7E6F40, &unk_255E559F0);
    v31 = sub_255DC5124(MEMORY[0x277D84F90]);
    v32 = type metadata accessor for RemoteStateStore(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();

    v36 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v35, v30, v31);
    v37 = sub_255E3A778();
    (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = a6;
    v38[5] = v36;
    v38[6] = a7;

    sub_255D52540(0, 0, v14, &unk_255E48080, v38);
  }

  v22 = v20;
  v49 = MEMORY[0x277D84F90];
  sub_255DE60B0(0, v20 & ~(v20 >> 63), 0);
  v21 = v49;
  result = sub_255E3A7C8();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v40 = v14;
    v41 = a6;
    v42 = a7;
    do
    {
      v24 = sub_255E3A7F8();
      v26 = *v25;
      v24(v48, 0);
      v49 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_255DE60B0((v27 > 1), v28 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v28 + 1;
      *(v21 + 8 * v28 + 32) = v26;
      sub_255E3A7E8();
      --v22;
    }

    while (v22);
    (*(v43 + 8))(v18, v44);
    a6 = v41;
    a7 = v42;
    v14 = v40;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE8A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7465537865646E69;
  }

  else
  {
    v4 = 0x736E6F69746361;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB0000000079654BLL;
  }

  if (*a2)
  {
    v6 = 0x7465537865646E69;
  }

  else
  {
    v6 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v7 = 0xEB0000000079654BLL;
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
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DE8AE4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE8B70()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DE8BE8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE8C70@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

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

void sub_255DE8CD0(uint64_t *a1@<X8>)
{
  v2 = 0x736E6F69746361;
  if (*v1)
  {
    v2 = 0x7465537865646E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000079654BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DE8D18()
{
  if (*v0)
  {
    result = 0x7465537865646E69;
  }

  else
  {
    result = 0x736E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_255DE8D5C@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

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

uint64_t sub_255DE8DC0(uint64_t a1)
{
  v2 = sub_255DE9718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE8DFC(uint64_t a1)
{
  v2 = sub_255DE9718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DE8E58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255DE935C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_255DE8E88(uint64_t a1)
{
  result = sub_255DE8EB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DE8EB0()
{
  result = qword_27F7E84B8;
  if (!qword_27F7E84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84B8);
  }

  return result;
}

unint64_t sub_255DE8F04(uint64_t a1)
{
  result = sub_255DE8F2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DE8F2C()
{
  result = qword_27F7E84C0;
  if (!qword_27F7E84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84C0);
  }

  return result;
}

unint64_t sub_255DE8F80()
{
  result = qword_27F7E84C8;
  if (!qword_27F7E84C8)
  {
    sub_255E385F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E84C8);
  }

  return result;
}

uint64_t sub_255DE8FD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84E0, &qword_255E55A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DE976C();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v34[0]) = 0;
  sub_255D7B658();
  sub_255E3ABA8();
  v11 = v36;
  if (v36)
  {
    v32 = a2;
    v12 = *(v36 + 16);
    if (v12)
    {
      v30 = v6;
      v31 = v5;
      v35 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v12, 0);
      v13 = v35;
      v29[1] = v11;
      v14 = v11 + 32;
      do
      {
        sub_255D7B730(v14, v33);
        sub_255D34630(v33, v34);
        v35 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_255DE5EF0((v15 > 1), v16 + 1, 1);
          v13 = v35;
        }

        *(v13 + 16) = v16 + 1;
        sub_255D34630(v34, v13 + 40 * v16 + 32);
        v14 += 40;
        --v12;
      }

      while (v12);

      v5 = v31;
      a2 = v32;
      v6 = v30;
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
      a2 = v32;
    }
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v34[0]) = 1;
  v17 = sub_255E3AB88();
  v19 = 0xE800000000000000;
  v20 = v18;
  if (v18)
  {
    v19 = v18;
  }

  v31 = v17;
  v32 = v19;
  LOBYTE(v34[0]) = 2;
  v21 = sub_255E3AB88();
  v24 = 0x7465537865646E69;
  if (v20)
  {
    v24 = v31;
  }

  v31 = v24;
  if (v22)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0x74657366666FLL;
  }

  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0xE600000000000000;
  }

  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28 = v31;
  v27 = v32;
  *a2 = v13;
  a2[1] = v28;
  a2[2] = v27;
  a2[3] = v25;
  a2[4] = v26;
  return result;
}