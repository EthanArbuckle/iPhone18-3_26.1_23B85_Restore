uint64_t sub_22987EF6C(id *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = [*a1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v17 = v10;
      sub_22987F0C0(&v17, a2, v5, a3, a4);

      if (!v4)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_22987F0C0(void **a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v118 = sub_22A4DD07C();
  v117 = *(v118 - 8);
  v10 = *(v117 + 64);
  v11 = MEMORY[0x28223BE20](v118);
  v115 = (&v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v108 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v108 - v16);
  v18 = *a1;
  v19 = [a3 instanceID];
  v20 = [a2 findServicesRelationWithInstanceID_];

  if (v20)
  {
    v21 = v20;
    v22 = [v18 instanceID];
    v23 = [v21 findCharacteristicsRelationOfTypeCharacteristicWithInstanceID_];

    if (v23)
    {
      v24 = [v23 authorizationData];
      if (!v24)
      {
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v25 = v24;
      v26 = sub_22A4DB62C();
      v28 = v27;

      v29 = v116;
      sub_22970F850();
      if (v29)
      {
        v116 = v29;
        v30 = v115;
        sub_229541CB0(a5, &off_283CE8678);
        v31 = a4;
        v32 = v30;
        v33 = v18;
        sub_22956C148(v26, v28);
        v34 = sub_22A4DD05C();
        v35 = sub_22A4DDCEC();

        sub_2295798D4(v26, v28);
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v111 = v28;
          v37 = v36;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v121 = v113;
          *v37 = 136315650;
          v119 = 91;
          v120 = 0xE100000000000000;
          v38 = v31;
          v39 = [v38 description];
          v110 = v35;
          v40 = v39;
          v41 = sub_22A4DD5EC();
          v114 = v21;
          v42 = v41;
          v109 = v34;
          v44 = v43;

          MEMORY[0x22AAD08C0](v42, v44);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v45 = sub_2295A3E30(v119, v120, &v121);

          *(v37 + 4) = v45;
          *(v37 + 12) = 2080;
          v46 = v111;
          sub_22956C148(v26, v111);
          v47 = sub_22A4DB5AC();
          v49 = v48;
          sub_2295798D4(v26, v46);
          v50 = sub_2295A3E30(v47, v49, &v121);

          *(v37 + 14) = v50;
          *(v37 + 22) = 2112;
          *(v37 + 24) = v33;
          v51 = v112;
          *v112 = v33;
          v52 = v33;
          v53 = v109;
          _os_log_impl(&dword_229538000, v109, v110, "%s Failed to deserialize: %s for %@", v37, 0x20u);
          sub_22953EAE4(v51, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v51, -1, -1);
          v54 = v113;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v54, -1, -1);
          MEMORY[0x22AAD4E50](v37, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_2295798D4(v26, v46);
          return (*(v117 + 8))(v115, v118);
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_2295798D4(v26, v28);

          return (*(v117 + 8))(v32, v118);
        }
      }

      sub_2295798D4(v26, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v114 = v21;
      sub_229541CB0(a5, &off_283CE8678);
      v80 = a4;
      v81 = v18;
      v82 = a3;
      v83 = sub_22A4DD05C();
      v84 = sub_22A4DDCEC();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        LODWORD(v113) = v84;
        v86 = v85;
        v87 = swift_slowAlloc();
        v116 = v17;
        v88 = v87;
        v115 = swift_slowAlloc();
        v121 = v115;
        *v86 = 136315650;
        v119 = 91;
        v120 = 0xE100000000000000;
        v89 = v80;
        v90 = [v89 description];
        v91 = sub_22A4DD5EC();
        v93 = v92;

        MEMORY[0x22AAD08C0](v91, v93);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v94 = sub_2295A3E30(v119, v120, &v121);

        *(v86 + 4) = v94;
        *(v86 + 12) = 2112;
        v95 = [v81 instanceID];
        *(v86 + 14) = v95;
        *(v86 + 22) = 2112;
        *(v86 + 24) = v82;
        *v88 = v95;
        v88[1] = v82;
        v96 = v82;
        _os_log_impl(&dword_229538000, v83, v113, "%s Did not find characteristic for %@ in %@", v86, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v88, -1, -1);
        v97 = v115;
        __swift_destroy_boxed_opaque_existential_0(v115);
        MEMORY[0x22AAD4E50](v97, -1, -1);
        MEMORY[0x22AAD4E50](v86, -1, -1);

        (*(v117 + 8))(v116, v118);
      }

      else
      {

        (*(v117 + 8))(v17, v118);
      }

      type metadata accessor for HMError(0);
      v121 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      v99 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v100;
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_22A4DE1FC();

      v119 = 0xD00000000000001CLL;
      v120 = 0x800000022A59A360;
      v101 = [v81 instanceID];
      v102 = [v101 description];
      v103 = sub_22A4DD5EC();
      v105 = v104;

      MEMORY[0x22AAD08C0](v103, v105);

      v106 = v119;
      v107 = v120;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v106;
      *(inited + 56) = v107;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  sub_229541CB0(a5, &off_283CE8678);
  v56 = a4;
  v57 = a3;
  v58 = sub_22A4DD05C();
  v59 = sub_22A4DDCEC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v121 = v116;
    *v60 = 136315394;
    v119 = 91;
    v120 = 0xE100000000000000;
    v61 = v56;
    v62 = [v61 description];
    v63 = sub_22A4DD5EC();
    v65 = v64;

    MEMORY[0x22AAD08C0](v63, v65);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v66 = sub_2295A3E30(v119, v120, &v121);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2112;
    *(v60 + 14) = v57;
    v67 = v115;
    *v115 = v57;
    v68 = v57;
    _os_log_impl(&dword_229538000, v58, v59, "%s Did not find service for %@", v60, 0x16u);
    sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v67, -1, -1);
    v69 = v116;
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x22AAD4E50](v69, -1, -1);
    MEMORY[0x22AAD4E50](v60, -1, -1);
  }

  (*(v117 + 8))(v15, v118);
  type metadata accessor for HMError(0);
  v121 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_22A576180;
  v71 = *MEMORY[0x277CCA450];
  *(v70 + 32) = sub_22A4DD5EC();
  *(v70 + 40) = v72;
  v119 = 0;
  v120 = 0xE000000000000000;
  sub_22A4DE1FC();

  v119 = 0xD000000000000015;
  v120 = 0x800000022A59A340;
  v73 = [v57 instanceID];
  v74 = [v73 description];
  v75 = sub_22A4DD5EC();
  v77 = v76;

  MEMORY[0x22AAD08C0](v75, v77);

  v78 = v119;
  v79 = v120;
  *(v70 + 72) = MEMORY[0x277D837D0];
  *(v70 + 48) = v78;
  *(v70 + 56) = v79;
  sub_22956AD8C(v70);
  swift_setDeallocating();
  sub_22953EAE4(v70 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  return swift_willThrow();
}

void sub_22987FD90(void *a1, uint64_t *a2, char *a3, void *a4, uint64_t a5)
{
  v71 = a5;
  v72 = a3;
  v73 = a4;
  v69 = a2;
  v7 = sub_22A4DD07C();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [a1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB77C();
  v21 = *(v12 + 8);
  v19 = v12 + 8;
  v20 = v21;
  v21(v15, v11);
  v22 = [v16 findHomeWithModelID_];

  v76 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v5)
  {
    v23 = v74;
    v24 = [v69 uuid];
    sub_22A4DB79C();

    v25 = sub_22A4DB77C();
    v20(v15, v11);
    v26 = [v23 findAccessoriesRelationOfTypeHAPAccessoryWithModelID_];

    v70 = v26;
    if (v26)
    {
      v27 = v69;
      v28 = [v69 services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v29 = sub_22A4DD83C();

      if (v29 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
      {
        v31 = v73;
        v66 = v23;
        if (!i)
        {
          break;
        }

        v32 = 0;
        v23 = (v29 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x22AAD13F0](v32, v29);
          }

          else
          {
            if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v33 = *(v29 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v74 = v33;
          sub_22988059C(&v74, v70, v72, v27, v71);

          ++v32;
          v31 = v73;
          if (v35 == i)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_14:

      [v31 save];
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v23;
      v70 = v20;
      v73 = v11;
      v37 = v10;
      sub_229541CB0(v71, &off_283CE8678);
      v38 = v72;
      v39 = v69;
      v40 = sub_22A4DD05C();
      v41 = sub_22A4DDCEC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v66 = v36;
        v72 = v15;
        v43 = v42;
        v65 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v76 = v69;
        *v43 = 136315394;
        v74 = 91;
        v75 = 0xE100000000000000;
        v44 = v38;
        v45 = [v44 description];
        v71 = v19;
        v46 = v41;
        v47 = v45;
        v48 = sub_22A4DD5EC();
        v49 = v39;
        v51 = v50;

        MEMORY[0x22AAD08C0](v48, v51);
        v39 = v49;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v52 = sub_2295A3E30(v74, v75, &v76);

        *(v43 + 4) = v52;
        *(v43 + 12) = 2112;
        *(v43 + 14) = v49;
        v53 = v65;
        *v65 = v49;
        v54 = v49;
        _os_log_impl(&dword_229538000, v40, v46, "%s Did not find accessory: %@", v43, 0x16u);
        sub_22953EAE4(v53, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v53, -1, -1);
        v55 = v69;
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x22AAD4E50](v55, -1, -1);
        v56 = v43;
        v15 = v72;
        MEMORY[0x22AAD4E50](v56, -1, -1);

        (*(v67 + 8))(v37, v68);
      }

      else
      {

        (*(v67 + 8))(v10, v68);
      }

      type metadata accessor for HMError(0);
      v76 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      v58 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v59;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_22A4DE1FC();

      v74 = 0xD000000000000018;
      v75 = 0x800000022A59A3D0;
      v60 = [v39 uuid];
      sub_22A4DB79C();

      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
      v61 = v73;
      v62 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v62);

      v70(v15, v61);
      v63 = v74;
      v64 = v75;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v63;
      *(inited + 56) = v64;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22988059C(id *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = [*a1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v19 = v11;
      sub_2298806F4(&v19, a2, v6, a3, a4, a5);

      if (!v5)
      {
        ++v10;
        if (v13 != i)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2298806F4(void **a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v148 = a5;
  v150 = sub_22A4DD07C();
  v149 = *(v150 - 8);
  v11 = *(v149 + 64);
  v12 = MEMORY[0x28223BE20](v150);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v144 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v143 = &v136 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v136 - v19;
  v21 = *a1;
  v22 = [a3 instanceID];
  v23 = [a2 findServicesRelationWithInstanceID_];

  if (v23)
  {
    v146 = a6;
    v24 = [v21 instanceID];
    v145 = v23;
    v25 = [v23 findCharacteristicsRelationOfTypeCharacteristicWithInstanceID_];

    v26 = v21;
    if (v25)
    {
      v144 = v25;
      sub_229541CB0(v146, &off_283CE8678);
      v27 = a4;
      v28 = v21;
      v29 = sub_22A4DD05C();
      v30 = sub_22A4DDCDC();

      v31 = os_log_type_enabled(v29, v30);
      v32 = v150;
      v142 = v27;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v153 = v141;
        *v33 = 136315394;
        v151 = 91;
        v152 = 0xE100000000000000;
        v34 = v27;
        v35 = v28;
        v36 = [v34 description];
        v37 = sub_22A4DD5EC();
        v39 = v38;

        v28 = v35;
        MEMORY[0x22AAD08C0](v37, v39);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v40 = sub_2295A3E30(v151, v152, &v153);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v35;
        v41 = v140;
        *v140 = v35;
        v42 = v35;
        _os_log_impl(&dword_229538000, v29, v30, "%s Did serialize %@", v33, 0x16u);
        sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v41, -1, -1);
        v43 = v141;
        __swift_destroy_boxed_opaque_existential_0(v141);
        MEMORY[0x22AAD4E50](v43, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);

        v44 = *(v149 + 8);
        v44(v20, v150);
      }

      else
      {

        v44 = *(v149 + 8);
        v44(v20, v32);
      }

      if (qword_27D87B8A0 != -1)
      {
        swift_once();
      }

      v95 = qword_27D8AB630;
      v96 = [v148 identifier];
      v97 = sub_22A4DD5EC();
      v99 = v98;

      v100 = [v95 workQueue];
      if (v100)
      {
        v101 = v100;
        MEMORY[0x28223BE20](v100);
        *(&v136 - 4) = v95;
        *(&v136 - 3) = v97;
        *(&v136 - 2) = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
        sub_22A4DDD9C();

        v102 = v151;
        if (v151)
        {
          v147 = v28;
          v103 = [v148 uniqueIdentifier];
          if (!v103)
          {
            sub_22A4DD5EC();
            v103 = sub_22A4DD5AC();
          }

          v104 = HAPInstanceIDFromUniqueIdentifier();

          if (v104)
          {
            v105 = sub_2296136D4();
            if (v105)
            {
              v106 = v105;
              v107 = [v147 instanceID];
              v108 = [v106 characteristicWithInstanceID_];

              if (v108)
              {
                v109 = sub_229614EA0();
                if ((v110 & 1) == 0)
                {
                  v148 = v108;
                  v141 = v109;
                  sub_229541CB0(v146, &off_283CE8678);
                  v111 = v142;
                  v112 = v147;
                  v113 = sub_22A4DD05C();
                  v114 = sub_22A4DDCCC();
                  v146 = v112;

                  LODWORD(v142) = v114;
                  if (os_log_type_enabled(v113, v114))
                  {
                    v115 = swift_slowAlloc();
                    v140 = v106;
                    v116 = v115;
                    v138 = swift_slowAlloc();
                    v139 = swift_slowAlloc();
                    v153 = v139;
                    *v116 = 136315650;
                    v151 = 91;
                    v152 = 0xE100000000000000;
                    v117 = v111;
                    v137 = v113;
                    v118 = v117;
                    v119 = [v117 description];
                    v120 = sub_22A4DD5EC();
                    v122 = v121;

                    MEMORY[0x22AAD08C0](v120, v122);

                    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                    v123 = sub_2295A3E30(v151, v152, &v153);

                    *(v116 + 4) = v123;
                    *(v116 + 12) = 2112;
                    v124 = v146;
                    *(v116 + 14) = v146;
                    v125 = v138;
                    *v138 = v124;
                    *(v116 + 22) = 2048;
                    *(v116 + 24) = v141;
                    v126 = v124;
                    v127 = v137;
                    _os_log_impl(&dword_229538000, v137, v142, "%s Did update characteristic: %@ to update delay: %fs", v116, 0x20u);
                    sub_22953EAE4(v125, &qword_27D87D7D0, &unk_22A578D90);
                    MEMORY[0x22AAD4E50](v125, -1, -1);
                    v128 = v139;
                    __swift_destroy_boxed_opaque_existential_0(v139);
                    MEMORY[0x22AAD4E50](v128, -1, -1);
                    v129 = v116;
                    v106 = v140;
                    MEMORY[0x22AAD4E50](v129, -1, -1);

                    v44(v143, v150);
                    v130 = v124;
                  }

                  else
                  {

                    v44(v143, v150);
                    v130 = v146;
                  }

                  v131 = sub_22A4DDB3C();
                  swift_beginAccess();
                  objc_setAssociatedObject(v130, &unk_27D8800E0, v131, 1);
                  swift_endAccess();

                  v102 = v104;
                  v104 = v106;
                  v106 = v148;
                  v108 = v131;
                }

                v102 = v104;
                v104 = v106;
              }

              else
              {
                v108 = v106;
              }

              v102 = v104;
              v104 = v108;
            }
          }

          else
          {
            v104 = v102;
          }
        }

        v132 = sub_22970F1B4();
        v134 = v133;
        v135 = sub_22A4DB61C();
        sub_2295798D4(v132, v134);
        [v144 setAuthorizationData_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v69 = v144;
      sub_229541CB0(v146, &off_283CE8678);
      v70 = a4;
      v71 = a3;
      v72 = sub_22A4DD05C();
      v73 = sub_22A4DDCEC();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v153 = v148;
        *v74 = 136315394;
        v151 = 91;
        v152 = 0xE100000000000000;
        v75 = v70;
        LODWORD(v146) = v73;
        v76 = v75;
        v77 = [v75 description];
        v78 = sub_22A4DD5EC();
        v80 = v79;

        MEMORY[0x22AAD08C0](v78, v80);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v81 = sub_2295A3E30(v151, v152, &v153);

        *(v74 + 4) = v81;
        *(v74 + 12) = 2112;
        *(v74 + 14) = v71;
        v82 = v147;
        *v147 = v71;
        v83 = v71;
        _os_log_impl(&dword_229538000, v72, v146, "%s Did not find characteristic for %@", v74, 0x16u);
        sub_22953EAE4(v82, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v82, -1, -1);
        v84 = v148;
        __swift_destroy_boxed_opaque_existential_0(v148);
        MEMORY[0x22AAD4E50](v84, -1, -1);
        MEMORY[0x22AAD4E50](v74, -1, -1);
      }

      (*(v149 + 8))(v69, v150);
      type metadata accessor for HMError(0);
      v153 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      v86 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v87;
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_22A4DE1FC();

      v151 = 0xD00000000000001DLL;
      v152 = 0x800000022A59A410;
      v88 = [v26 instanceID];
      v89 = [v88 description];
      v90 = sub_22A4DD5EC();
      v92 = v91;

      MEMORY[0x22AAD08C0](v90, v92);

      v93 = v151;
      v94 = v152;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v93;
      *(inited + 56) = v94;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_229541CB0(a6, &off_283CE8678);
    v45 = a4;
    v46 = a3;
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v153 = v148;
      *v49 = 136315394;
      v151 = 91;
      v152 = 0xE100000000000000;
      v50 = v45;
      v51 = [v50 description];
      v52 = sub_22A4DD5EC();
      v54 = v53;

      MEMORY[0x22AAD08C0](v52, v54);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v55 = sub_2295A3E30(v151, v152, &v153);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      v56 = v147;
      *v147 = v46;
      v57 = v46;
      _os_log_impl(&dword_229538000, v47, v48, "%s Did not find service for %@", v49, 0x16u);
      sub_22953EAE4(v56, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v56, -1, -1);
      v58 = v148;
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    (*(v149 + 8))(v14, v150);
    type metadata accessor for HMError(0);
    v153 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_22A576180;
    v60 = *MEMORY[0x277CCA450];
    *(v59 + 32) = sub_22A4DD5EC();
    *(v59 + 40) = v61;
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_22A4DE1FC();

    v151 = 0xD000000000000016;
    v152 = 0x800000022A59A3F0;
    v62 = [v46 instanceID];
    v63 = [v62 description];
    v64 = sub_22A4DD5EC();
    v66 = v65;

    MEMORY[0x22AAD08C0](v64, v66);

    v67 = v151;
    v68 = v152;
    *(v59 + 72) = MEMORY[0x277D837D0];
    *(v59 + 48) = v67;
    *(v59 + 56) = v68;
    sub_22956AD8C(v59);
    swift_setDeallocating();
    sub_22953EAE4(v59 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

id sub_229881854(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DB57C();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_22A4DD07C();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&v4[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
  if (result)
  {
    sub_229881D2C(result, a1, a2, 0, 1, MEMORY[0x277D84F90]);
    result = swift_unknownObjectRelease();
    if (!v3)
    {
      v53 = 0;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v19 = v57;
      v20 = *(v57 + 16);
      v52 = v13;
      v20(v13, a1, v8);
      v21 = v56;
      v20(v56, a2, v8);
      v22 = v17;
      v23 = v4;
      v24 = sub_22A4DD05C();
      v25 = sub_22A4DDCCC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v26 = 136315650;
        v58 = 91;
        v59 = 0xE100000000000000;
        v27 = v23;
        v28 = [v27 description];
        v49 = v25;
        v29 = v28;
        v30 = sub_22A4DD5EC();
        v48 = v24;
        v31 = v30;
        v50 = v22;
        v33 = v32;

        MEMORY[0x22AAD08C0](v31, v33);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v34 = sub_2295A3E30(v58, v59, &v60);

        *(v26 + 4) = v34;
        *(v26 + 12) = 2080;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
        v35 = v52;
        v36 = sub_22A4DE5CC();
        v38 = v37;
        v39 = *(v19 + 8);
        v39(v35, v8);
        v40 = sub_2295A3E30(v36, v38, &v60);

        *(v26 + 14) = v40;
        *(v26 + 22) = 2080;
        v41 = sub_22A4DE5CC();
        v43 = v42;
        v39(v21, v8);
        v44 = sub_2295A3E30(v41, v43, &v60);

        *(v26 + 24) = v44;
        v45 = v48;
        _os_log_impl(&dword_229538000, v48, v49, "%s Copied contents for at %s to %s", v26, 0x20u);
        v46 = v51;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v46, -1, -1);
        MEMORY[0x22AAD4E50](v26, -1, -1);

        return (*(v54 + 8))(v50, v55);
      }

      else
      {

        v47 = *(v19 + 8);
        v47(v21, v8);
        v47(v52, v8);
        return (*(v54 + 8))(v22, v55);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229881D2C(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v134 = a6;
  v120 = a5;
  v118 = a4;
  v126 = a3;
  v140[2] = *MEMORY[0x277D85DE8];
  v121 = sub_22A4DD07C();
  v119 = *(v121 - 8);
  v12 = *(v119 + 64);
  v13 = MEMORY[0x28223BE20](v121);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v135 = &v114 - v16;
  MEMORY[0x28223BE20](v15);
  v117 = &v114 - v17;
  v18 = sub_22A4DB57C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v115 = &v114 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v114 = &v114 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v116 = &v114 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v114 - v31;
  MEMORY[0x28223BE20](v30);
  v122 = &v114 - v32;
  v139 = 0;
  sub_22A4DB52C();
  v33 = sub_22A4DD5AC();

  v127 = a1;
  v34 = [a1 fileExistsAtPath:v33 isDirectory:&v139];

  if (!v34)
  {
    sub_229541CB0(v9, &off_283CE8678);
    v41 = sub_22A4DDD0C();
    (*(v19 + 16))(v23, a2, v18);
    v42 = sub_22A4DD05C();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v140[0] = v44;
      *v43 = 136315138;
      v45 = sub_22A4DB52C();
      v46 = v18;
      v48 = v47;
      (*(v19 + 8))(v23, v46);
      v49 = sub_2295A3E30(v45, v48, v140);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_229538000, v42, v41, "No source found at: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v23, v18);
    }

    result = (*(v119 + 8))(v137, v121);
    goto LABEL_48;
  }

  v131 = v9;
  v133 = v19;
  if (v139 == 1)
  {
    v35 = sub_22A4DB4EC();
    v140[0] = 0;
    v36 = [v127 contentsOfDirectoryAtURL:v35 includingPropertiesForKeys:0 options:0 error:v140];

    v37 = v140[0];
    v38 = v133;
    v39 = v121;
    if (!v36)
    {
      v83 = v140[0];
      sub_22A4DB3EC();

LABEL_47:
      result = swift_willThrow();
      goto LABEL_48;
    }

    v137 = sub_22A4DD83C();
    v40 = v37;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
    v38 = v133;
    v50 = *(v133 + 72);
    v51 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_22A576180;
    v53 = *(v38 + 16);
    v137 = v52;
    v53(v52 + v51, a2, v18);
    v39 = v121;
  }

  v54 = v135;
  v55 = v120;
  v56 = v131;
  v57 = v122;
  if (*(v134 + 16))
  {
    v58 = v137;
    v130 = *(v137 + 2);
    if (v130)
    {
      v59 = 0;
      v123 = (v38 + 8);
      v128 = (v38 + 32);
      v129 = v38 + 16;
      v60 = MEMORY[0x277D84F90];
      v124 = v18;
      do
      {
        if (v59 >= *(v58 + 2))
        {
          __break(1u);
LABEL_50:
          __break(1u);
        }

        v136 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v61 = *(v38 + 72);
        (*(v38 + 16))(v57, &v58[v136 + v61 * v59], v18);
        v140[0] = sub_22A4DB4AC();
        v140[1] = v62;
        MEMORY[0x28223BE20](v140[0]);
        *(&v114 - 2) = v140;
        v63 = sub_22986A5E0(sub_22988F704, (&v114 - 4), v134);

        if (v63)
        {
          v125 = v8;
          v64 = *v128;
          (*v128)(v132, v57, v18);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v138 = v60;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_229583B44(0, *(v60 + 2) + 1, 1);
            v57 = v122;
            v60 = v138;
          }

          v67 = *(v60 + 2);
          v66 = *(v60 + 3);
          if (v67 >= v66 >> 1)
          {
            sub_229583B44(v66 > 1, v67 + 1, 1);
            v57 = v122;
            v60 = v138;
          }

          *(v60 + 2) = v67 + 1;
          v18 = v124;
          v64(&v60[v136 + v67 * v61], v132, v124);
          v8 = v125;
        }

        else
        {
          (*v123)(v57, v18);
        }

        ++v59;
        v56 = v131;
        v38 = v133;
        v54 = v135;
        v58 = v137;
      }

      while (v130 != v59);
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v137 = v60;
    v39 = v121;
    v55 = v120;
  }

  if (v118)
  {
    v69 = sub_22A4DB4EC();
    v70 = [v127 fileExistsAtURL_];

    if (v70)
    {
      sub_229541CB0(v56, &off_283CE8678);
      v71 = sub_22A4DDD0C();
      (*(v38 + 16))(v116, v126, v18);
      v72 = sub_22A4DD05C();
      LODWORD(v136) = v71;
      if (os_log_type_enabled(v72, v71))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v140[0] = v74;
        *v73 = 136315138;
        v75 = v116;
        v76 = sub_22A4DB52C();
        v77 = v18;
        v79 = v78;
        (*(v133 + 8))(v75, v77);
        v80 = sub_2295A3E30(v76, v79, v140);
        v18 = v77;
        v56 = v131;

        *(v73 + 4) = v80;
        _os_log_impl(&dword_229538000, v72, v136, "Removing existing file at: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        v81 = v74;
        v38 = v133;
        MEMORY[0x22AAD4E50](v81, -1, -1);
        v82 = v73;
        v55 = v120;
        MEMORY[0x22AAD4E50](v82, -1, -1);
      }

      else
      {

        (*(v38 + 8))(v116, v18);
      }

      v39 = v121;
      (*(v119 + 8))(v117, v121);
      v84 = sub_22A4DB4EC();
      v140[0] = 0;
      v85 = [v127 removeItemAtURL:v84 error:v140];

      v86 = v140[0];
      if (!v85)
      {
LABEL_46:
        v112 = v86;

        sub_22A4DB3EC();

        goto LABEL_47;
      }

      v87 = v140[0];
    }
  }

  sub_22A4DB52C();
  v88 = sub_22A4DD5AC();

  v89 = [v127 fileExistsAtPath:v88 isDirectory:&v139];

  if ((v89 & 1) == 0 && v139 == 1)
  {
    sub_229541CB0(v56, &off_283CE8678);
    v90 = sub_22A4DDD0C();
    v91 = v114;
    (*(v38 + 16))(v114, v126, v18);
    v92 = sub_22A4DD05C();
    LODWORD(v136) = v90;
    if (os_log_type_enabled(v92, v90))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v140[0] = v94;
      *v93 = 136315138;
      v95 = v92;
      v96 = sub_22A4DB52C();
      v97 = v91;
      v98 = v18;
      v100 = v99;
      (*(v133 + 8))(v97, v98);
      v101 = sub_2295A3E30(v96, v100, v140);
      v18 = v98;

      *(v93 + 4) = v101;
      _os_log_impl(&dword_229538000, v95, v136, "Creating new file at: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      v102 = v94;
      v38 = v133;
      MEMORY[0x22AAD4E50](v102, -1, -1);
      v103 = v93;
      v55 = v120;
      MEMORY[0x22AAD4E50](v103, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v91, v18);
    }

    (*(v119 + 8))(v54, v39);
    v104 = sub_22A4DB4EC();
    v140[0] = 0;
    v105 = [v127 createDirectoryAtURL:v104 withIntermediateDirectories:1 attributes:0 error:v140];

    v86 = v140[0];
    if (v105)
    {
      v106 = v140[0];
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_39:
  v107 = v137;
  v108 = *(v137 + 2);
  if (v108)
  {
    v109 = 0;
    v110 = (v38 + 8);
    v111 = v115;
    while (1)
    {
      if (v109 >= *(v107 + 2))
      {
        goto LABEL_50;
      }

      (*(v38 + 16))(v111, &v107[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v109], v18);
      sub_22988D35C(v111, v126, v55 & 1, v127);
      if (v8)
      {
        break;
      }

      ++v109;
      (*v110)(v111, v18);
      v107 = v137;
      if (v108 == v109)
      {
        goto LABEL_44;
      }
    }

    (*v110)(v111, v18);
  }

  else
  {
LABEL_44:
  }

LABEL_48:
  v113 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_229882A04(uint64_t a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB57C();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v50 = 0;
  v15 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v16 = [v15 fileManager];
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  sub_22A4DB52C();
  v18 = sub_22A4DD5AC();

  v19 = [v17 fileExistsAtPath:v18 isDirectory:&v50];

  swift_unknownObjectRelease();
  if (!v19 || v50 != 1)
  {
    type metadata accessor for HMError(0);
    v49 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v27 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A59A6D0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v27, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    result = swift_willThrow();
LABEL_8:
    v28 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = [v15 fileManager];
  if (result)
  {
    v21 = result;
    v22 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_22A4DB4FC();
    v23 = v48;
    v24 = *(v48 + 8);
    v24(v12, v6);
    v25 = v47;
    sub_229881D2C(v21, a1, v14, 1, 0, MEMORY[0x277D84F90]);
    if (v25)
    {
      v24(v14, v6);
      result = swift_unknownObjectRelease();
    }

    else
    {
      v24(v14, v6);
      swift_unknownObjectRelease();
      v29 = *MEMORY[0x277D0F1A8];
      sub_22A4DD5EC();
      v30 = v45;
      sub_22A4DD06C();
      v31 = sub_22A4DDCCC();
      v32 = v42;
      (*(v23 + 16))(v42, a1, v6);
      v33 = sub_22A4DD05C();
      if (os_log_type_enabled(v33, v31))
      {
        v34 = swift_slowAlloc();
        LODWORD(v48) = v31;
        v35 = v34;
        v36 = swift_slowAlloc();
        v51[0] = v36;
        *v35 = 136315138;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
        v37 = sub_22A4DE5CC();
        v38 = v32;
        v40 = v39;
        v24(v38, v6);
        v41 = sub_2295A3E30(v37, v40, v51);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_229538000, v33, v48, "Imported demo mode from %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v35, -1, -1);

        result = (*(v43 + 8))(v45, v44);
      }

      else
      {

        v24(v32, v6);
        result = (*(v43 + 8))(v30, v44);
      }
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_2298832E8()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v54 - v4;
  v57 = sub_22A4DD07C();
  v6 = *(v57 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v10 = v0;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  v13 = os_log_type_enabled(v11, v12);
  v58 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 136315138;
    v59 = 91;
    v60 = 0xE100000000000000;
    v61 = v15;
    v16 = v10;
    LODWORD(v55) = v12;
    v17 = v16;
    v18 = [v16 description];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v22 = sub_2295A3E30(v59, v60, &v61);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_229538000, v11, v55, "%s Configuring demo mode manager", v14, 0xCu);
    v23 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    v24 = v14;
    v5 = v58;
    MEMORY[0x22AAD4E50](v24, -1, -1);
  }

  (*(v6 + 8))(v9, v57);
  if (isInternalBuild() && [*&v10[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeV2Enabled])
  {
    v25 = [objc_opt_self() policyWithEntitlements_];
    v26 = *&v10[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22A576190;
    *(v27 + 32) = v25;
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v28 = v25;
    v29 = sub_22A4DD81C();

    [v26 registerForMessage:@"HomeUtilConfigureDemoMode" receiver:v10 policies:v29 selector:sel_handleRequestMessage_];
  }

  sub_229873E90();
  v30 = sub_22A4DD9DC();
  v31 = *(v30 - 1);
  v32 = *(v31 + 56);
  v33 = v31 + 56;
  v32(v5, 1, 1, v30);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  sub_22957F6B0(0, 0, v5, &unk_22A5867E8, v34);

  v57 = *&v10[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  result = [v57 homes];
  if (result)
  {
    v36 = result;
    v54[1] = v33;
    v55 = v32;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v37 = sub_22A4DD83C();

    v56 = v30;
    if (v37 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v39 = 0;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x22AAD13F0](v39, v37);
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v59 = v40;
        sub_229883A74(&v59, v10, ObjectType);

        ++v39;
        if (v42 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    v43 = [v57 hasDemoAccessories];
    v44 = v58;
    v46 = v55;
    v45 = v56;
    if (v43)
    {
      v55(v58, 1, 1, v56);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v10;
      v47[5] = ObjectType;
      v48 = v10;
      sub_22957F3C0(0, 0, v44, &unk_22A586808, v47);
    }

    result = sub_229591558();
    if (v49)
    {
      v50 = result;
      v51 = v49;
      v46(v44, 1, 1, v45);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = v10;
      v52[5] = v50;
      v52[6] = v51;
      v52[7] = ObjectType;
      v53 = v10;
      sub_22957F3C0(0, 0, v44, &unk_22A5867F8, v52);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229883948()
{
  if (qword_2814028E0 != -1)
  {
    swift_once();
  }

  v1 = qword_281405070;
  *(v0 + 24) = qword_281405070;

  return MEMORY[0x2822009F8](sub_2298839E0, v1, 0);
}

uint64_t sub_2298839E0()
{
  v1 = *(v0 + 24);
  sub_22979704C();
  *(v0 + 32) = 0;

  return MEMORY[0x2822009F8](sub_2296D55C0, 0, 0);
}

void sub_229883A74(void **a1, void *a2, uint64_t a3)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_229878350(*a1);
  if (v3)
  {
    v41 = 0;
    sub_229541CB0(a3, &off_283CE8678);
    v13 = a2;
    v14 = v12;
    v15 = v3;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v18 = 136315650;
      v42 = 91;
      v43 = 0xE100000000000000;
      v19 = v13;
      HIDWORD(v36) = v17;
      v20 = v19;
      v21 = [v19 description];
      v22 = sub_22A4DD5EC();
      v38 = v8;
      v39 = v7;
      v23 = v22;
      v25 = v24;

      MEMORY[0x22AAD08C0](v23, v25);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(v42, v43, &v44);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2080;
      v27 = [v14 shortDescription];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      v31 = sub_2295A3E30(v28, v30, &v44);

      *(v18 + 14) = v31;
      *(v18 + 22) = 2112;
      v32 = v3;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v33;
      v34 = v37;
      *v37 = v33;
      _os_log_impl(&dword_229538000, v16, BYTE4(v36), "%s Failed to load demo accessories for home: %s error: %@", v18, 0x20u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      v35 = v40;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v38 + 8))(v11, v39);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_229883DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v9[1] = sub_229883EDC;

  return sub_2298842B4();
}

uint64_t sub_229883EDC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229884018, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_229884018()
{
  v31 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v8)
  {
    v29 = v0[6];
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315394;
    v30[0] = v28;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v15 = v13;
    v27 = v12;
    v16 = [v15 description];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v26 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to fixup non demo accessories with error: %@", v14, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v29, v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[6];

  v24 = v0[1];

  return v24();
}

uint64_t sub_2298842B4()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298843A4, 0, 0);
}

void sub_2298843A4()
{
  v165 = v0;
  if (![*&v0[2][OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeMadeForDemoBundle])
  {
LABEL_85:
    v124 = v0[8];
    v123 = v0[9];
    v126 = v0[6];
    v125 = v0[7];

    v127 = v0[1];

    v127();
    return;
  }

  v1 = *&v0[2][OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  v0[10] = v1;
  v2 = [v1 homes];
  if (!v2)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return;
  }

  v3 = v2;
  v0[11] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v4 = sub_22A4DD83C();

  v5 = sub_22986A994(v4);

  v163 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    v0 = &selRef_installedProfileDataWithIdentifier_;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAD13F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v9 isDemoAccessory])
      {
      }

      else
      {
        sub_22A4DE27C();
        v8 = *(v163 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v7;
      if (v11 == v6)
      {
        v12 = v163;
        v0 = i;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_22A4DE0EC();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v0[12] = v12;
  v13 = v0[9];
  v15 = v0[2];
  v14 = v0[3];

  sub_229541CB0(v14, &off_283CE8678);
  swift_retain_n();
  v16 = v15;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[2];
    v20 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *v20 = 136315394;
    v162 = v155;
    v163 = 91;
    v164 = 0xE100000000000000;
    v21 = v19;
    v22 = [v21 description];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(91, 0xE100000000000000, &v162);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2048;
    v27 = v12 & 0x4000000000000000;
    if (v12 < 0 || v27)
    {
      v28 = sub_22A4DE0EC();
    }

    else
    {
      v28 = *(v12 + 16);
    }

    v0 = i;
    v29 = i[9];
    v31 = i[4];
    v30 = i[5];

    *(v20 + 14) = v28;

    _os_log_impl(&dword_229538000, v17, v18, "%s Fixing up %ld non-demo accessories", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v155);
    MEMORY[0x22AAD4E50](v155, -1, -1);
    MEMORY[0x22AAD4E50](v20, -1, -1);

    v32 = *(v30 + 1);
    (v32)(v29, v31);
  }

  else
  {
    v33 = v0[9];
    v34 = v0[4];
    v35 = v0[5];

    v32 = *(v35 + 1);
    (v32)(v33, v34);
    v27 = v12 & 0x4000000000000000;
  }

  v0[13] = v12;
  v0[14] = v32;
  if (v12 < 0 || v27)
  {
    goto LABEL_68;
  }

  v36 = *(v12 + 16);
  v0[15] = v36;
  if (v36)
  {
    goto LABEL_29;
  }

  while (1)
  {
LABEL_37:
    v42 = [v0[10] _accessoryOfCurrentDevice];
    if (v42)
    {
      v43 = v42;
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v158 = v44;
        v45 = v0[12];
        v46 = v0[8];
        v48 = v0[2];
        v47 = v0[3];

        sub_229541CB0(v47, &off_283CE8678);
        v49 = v48;
        v50 = v43;
        v51 = sub_22A4DD05C();
        v52 = sub_22A4DDCCC();

        v53 = os_log_type_enabled(v51, v52);
        v54 = v0[14];
        v55 = v0[8];
        v56 = v0[4];
        v57 = v0[5];
        if (v53)
        {
          v156 = v0[14];
          v58 = v0[2];
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 136315394;
          v162 = v60;
          v163 = 91;
          v164 = 0xE100000000000000;
          v61 = v58;
          v62 = [v61 description];
          v149 = v56;
          v151 = v55;
          v63 = sub_22A4DD5EC();
          v65 = v64;

          MEMORY[0x22AAD08C0](v63, v65);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v66 = sub_2295A3E30(v163, v164, &v162);

          *(v59 + 4) = v66;
          *(v59 + 12) = 2080;
          v67 = [v158 shortDescription];
          v68 = sub_22A4DD5EC();
          v70 = v69;

          v71 = sub_2295A3E30(v68, v70, &v162);

          *(v59 + 14) = v71;
          _os_log_impl(&dword_229538000, v51, v52, "%s No fixed up needed for current accessory: %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v60, -1, -1);
          v0 = i;
          MEMORY[0x22AAD4E50](v59, -1, -1);

          (v156)(v151, v149);
        }

        else
        {

          (v54)(v55, v56);
        }

        goto LABEL_85;
      }
    }

    v73 = [v0[10] homes];
    if (!v73)
    {
      goto LABEL_98;
    }

    v74 = v73;
    v75 = v0[11];
    v76 = sub_22A4DD83C();

    v77 = sub_22986A994(v76);

    if (v77 >> 62)
    {
      break;
    }

    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v78)
    {
      goto LABEL_72;
    }

LABEL_48:
    v79 = 0;
    while (1)
    {
      if ((v77 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x22AAD13F0](v79, v77);
      }

      else
      {
        if (v79 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v80 = *(v77 + 8 * v79 + 32);
      }

      v81 = v80;
      v0 = (v79 + 1);
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if ([v80 isCurrentDemoAccessory])
      {

        objc_opt_self();
        v82 = swift_dynamicCastObjCClass();
        v0 = i;
        if (!v82)
        {

          goto LABEL_73;
        }

LABEL_59:
        v0[21] = v82;
        v83 = v0[12];
        v84 = v0[7];
        v86 = v0[2];
        v85 = v0[3];
        v87 = v82;

        v88 = v81;
        sub_229541CB0(v85, &off_283CE8678);
        v89 = v86;
        v90 = v87;
        v91 = sub_22A4DD05C();
        v92 = sub_22A4DDCCC();

        v93 = os_log_type_enabled(v91, v92);
        v94 = v0[14];
        v95 = v0[7];
        v96 = v0[4];
        v97 = v0[5];
        if (v93)
        {
          v159 = v0[14];
          v98 = v0[2];
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          *v99 = 136315394;
          v162 = v153;
          v163 = 91;
          v164 = 0xE100000000000000;
          v101 = v98;
          v152 = v95;
          v102 = [v101 description];
          v150 = v96;
          v103 = sub_22A4DD5EC();
          v105 = v104;

          MEMORY[0x22AAD08C0](v103, v105);
          v0 = i;

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v106 = sub_2295A3E30(v163, v164, &v162);

          *(v99 + 4) = v106;
          *(v99 + 12) = 2112;
          *(v99 + 14) = v90;
          *v100 = v90;
          v107 = v90;
          _os_log_impl(&dword_229538000, v91, v92, "%s Fixing up current accessory: %@", v99, 0x16u);
          sub_22953EAE4(v100, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v100, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v153);
          MEMORY[0x22AAD4E50](v153, -1, -1);
          MEMORY[0x22AAD4E50](v99, -1, -1);

          (v159)(v152, v150);
        }

        else
        {

          (v94)(v95, v96);
        }

        v108 = v90;
        v109 = swift_task_alloc();
        v0[22] = v109;
        *v109 = v0;
        *(v109 + 1) = sub_229885E50;
        v110 = v0[2];
        v111 = v90;
        goto LABEL_92;
      }

      ++v79;
      if (v0 == v78)
      {
        goto LABEL_72;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v112 = sub_22A4DE0EC();
    v0[15] = v112;
    if (v112)
    {
LABEL_29:
      v37 = 0;
      while (1)
      {
        v38 = v0[12];
        if ((v0[13] & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x22AAD13F0](v37, v38);
        }

        else
        {
          if (v37 >= *(v38 + 2))
          {
            goto LABEL_67;
          }

          v39 = *&v38[8 * v37 + 32];
        }

        v40 = v39;
        v0[16] = v39;
        v0[17] = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        v41 = [v39 home];
        v0[18] = v41;
        if (v41)
        {
          break;
        }

        v37 = v0[17];
        if (v37 == v0[15])
        {
          goto LABEL_37;
        }
      }

      v72 = swift_task_alloc();
      v0[19] = v72;
      *v72 = v0;
      *(v72 + 1) = sub_22988524C;

      sub_229813B9C(v40);
      return;
    }
  }

  v78 = sub_22A4DE0EC();
  if (v78)
  {
    goto LABEL_48;
  }

LABEL_72:

  v0 = i;
LABEL_73:
  v113 = v0[12];
  if (v0[15])
  {
    v114 = 0;
    v115 = v0[13] & 0xC000000000000001;
    while (1)
    {
      if (v115)
      {
        v0 = i;
        v116 = MEMORY[0x22AAD13F0](v114, i[12]);
      }

      else
      {
        v0 = i;
        if (v114 >= *(v113 + 2))
        {
          goto LABEL_96;
        }

        v116 = *&v113[8 * v114 + 32];
      }

      v81 = v116;
      v117 = (v114 + 1);
      if (__OFADD__(v114, 1))
      {
        break;
      }

      objc_opt_self();
      v82 = swift_dynamicCastObjCClass();
      if (v82)
      {
        goto LABEL_59;
      }

      v118 = v0[15];

      ++v114;
      if (v117 == v118)
      {
        v0 = i;
        v119 = i[12];
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_83:

  v0[24] = 0;
  v120 = [v0[10] _accessoryOfCurrentDevice];
  if (v120)
  {
    v121 = v120;
    objc_opt_self();
    v122 = swift_dynamicCastObjCClass();

    if (v122)
    {
      goto LABEL_85;
    }
  }

  v128 = v0[6];
  v129 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v130 = v129;
  v131 = sub_22A4DD05C();
  v132 = sub_22A4DDCCC();

  v133 = os_log_type_enabled(v131, v132);
  v134 = v0[14];
  v136 = v0[5];
  v135 = v0[6];
  v137 = v0[4];
  if (v133)
  {
    v160 = v0[14];
    v138 = v0[2];
    v157 = v0[4];
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v139 = 136315138;
    v162 = v140;
    v163 = 91;
    v164 = 0xE100000000000000;
    v141 = v138;
    v142 = [v141 description];
    v143 = sub_22A4DD5EC();
    v154 = v135;
    v145 = v144;

    v0 = i;
    MEMORY[0x22AAD08C0](v143, v145);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v146 = sub_2295A3E30(v163, v164, &v162);

    *(v139 + 4) = v146;
    _os_log_impl(&dword_229538000, v131, v132, "%s Missing current accessory", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v140);
    MEMORY[0x22AAD4E50](v140, -1, -1);
    MEMORY[0x22AAD4E50](v139, -1, -1);

    (v160)(v154, v157);
  }

  else
  {

    (v134)(v135, v137);
  }

  v147 = swift_task_alloc();
  v0[25] = v147;
  *v147 = v0;
  *(v147 + 1) = sub_229886298;
  v148 = v0[2];
  v111 = 0;
LABEL_92:

  sub_22987BB90(v111);
}

uint64_t sub_22988524C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_22988643C;
  }

  else
  {

    v7 = sub_22988538C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_22988538C()
{
  v128 = v0;

  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  if (v3 == *(v0 + 120))
  {
LABEL_9:
    v1 = &selRef_auditDuplicatePreviouslyAddedAccessory_;
    v8 = [*(v0 + 80) _accessoryOfCurrentDevice];
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v122 = v10;
        v11 = *(v0 + 96);
        v12 = *(v0 + 64);
        v14 = *(v0 + 16);
        v13 = *(v0 + 24);

        sub_229541CB0(v13, &off_283CE8678);
        v15 = v14;
        v16 = v9;
        v17 = sub_22A4DD05C();
        v18 = sub_22A4DDCCC();

        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 112);
        v21 = *(v0 + 64);
        v22 = *(v0 + 32);
        v23 = *(v0 + 40);
        if (v19)
        {
          v120 = *(v0 + 112);
          v24 = *(v0 + 16);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 136315394;
          v125 = v26;
          v126 = 91;
          v127 = 0xE100000000000000;
          v27 = v24;
          v28 = [v27 description];
          v114 = v22;
          v116 = v21;
          v29 = sub_22A4DD5EC();
          v31 = v30;

          MEMORY[0x22AAD08C0](v29, v31);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v32 = sub_2295A3E30(91, 0xE100000000000000, &v125);

          *(v25 + 4) = v32;
          *(v25 + 12) = 2080;
          v33 = [v122 shortDescription];
          v34 = sub_22A4DD5EC();
          v36 = v35;

          v37 = sub_2295A3E30(v34, v36, &v125);

          *(v25 + 14) = v37;
          _os_log_impl(&dword_229538000, v17, v18, "%s No fixed up needed for current accessory: %s", v25, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v26, -1, -1);
          MEMORY[0x22AAD4E50](v25, -1, -1);

          v120(v116, v114);
        }

        else
        {

          v20(v21, v22);
        }

        goto LABEL_54;
      }
    }

    v39 = [*(v0 + 80) homes];
    if (v39)
    {
      v40 = v39;
      v41 = *(v0 + 88);
      v42 = sub_22A4DD83C();

      v3 = sub_22986A994(v42);

      if (v3 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v44 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x22AAD13F0](v44, v3);
          }

          else
          {
            if (v44 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v45 = *(v3 + 8 * v44 + 32);
          }

          v46 = v45;
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if ([v45 isCurrentDemoAccessory])
          {

            objc_opt_self();
            v48 = swift_dynamicCastObjCClass();
            if (!v48)
            {

              goto LABEL_42;
            }

LABEL_31:
            *(v0 + 168) = v48;
            v49 = *(v0 + 96);
            v50 = *(v0 + 56);
            v52 = *(v0 + 16);
            v51 = *(v0 + 24);
            v53 = v48;

            v54 = v46;
            sub_229541CB0(v51, &off_283CE8678);
            v55 = v52;
            v56 = v53;
            v57 = sub_22A4DD05C();
            v58 = sub_22A4DDCCC();

            v59 = os_log_type_enabled(v57, v58);
            v60 = *(v0 + 112);
            v61 = *(v0 + 56);
            v62 = *(v0 + 32);
            v63 = *(v0 + 40);
            if (v59)
            {
              v123 = *(v0 + 112);
              v64 = *(v0 + 16);
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              *v65 = 136315394;
              v125 = v118;
              v126 = 91;
              v127 = 0xE100000000000000;
              v67 = v64;
              v117 = v61;
              v68 = [v67 description];
              v115 = v62;
              v69 = sub_22A4DD5EC();
              v71 = v70;

              MEMORY[0x22AAD08C0](v69, v71);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v72 = sub_2295A3E30(91, 0xE100000000000000, &v125);

              *(v65 + 4) = v72;
              *(v65 + 12) = 2112;
              *(v65 + 14) = v56;
              *v66 = v56;
              v73 = v56;
              _os_log_impl(&dword_229538000, v57, v58, "%s Fixing up current accessory: %@", v65, 0x16u);
              sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v66, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v118);
              MEMORY[0x22AAD4E50](v118, -1, -1);
              MEMORY[0x22AAD4E50](v65, -1, -1);

              v123(v117, v115);
            }

            else
            {

              v60(v61, v62);
            }

            v74 = v56;
            v75 = swift_task_alloc();
            *(v0 + 176) = v75;
            *v75 = v0;
            v75[1] = sub_229885E50;
            v76 = *(v0 + 16);
            v77 = v56;
            goto LABEL_61;
          }

          ++v44;
          if (v47 == i)
          {
            goto LABEL_41;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_41:

LABEL_42:
      v78 = *(v0 + 96);
      if (!*(v0 + 120))
      {
LABEL_52:

        *(v0 + 192) = 0;
        v85 = [*(v0 + 80) v1[330]];
        if (!v85 || (v86 = v85, objc_opt_self(), v87 = swift_dynamicCastObjCClass(), v86, !v87))
        {
          v93 = *(v0 + 48);
          v94 = *(v0 + 16);
          sub_229541CB0(*(v0 + 24), &off_283CE8678);
          v95 = v94;
          v96 = sub_22A4DD05C();
          v97 = sub_22A4DDCCC();

          v98 = os_log_type_enabled(v96, v97);
          v99 = *(v0 + 112);
          v101 = *(v0 + 40);
          v100 = *(v0 + 48);
          v102 = *(v0 + 32);
          if (v98)
          {
            v124 = *(v0 + 112);
            v103 = *(v0 + 16);
            v121 = *(v0 + 32);
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *v104 = 136315138;
            v125 = v105;
            v126 = 91;
            v127 = 0xE100000000000000;
            v106 = v103;
            v107 = [v106 description];
            v108 = sub_22A4DD5EC();
            v119 = v100;
            v110 = v109;

            MEMORY[0x22AAD08C0](v108, v110);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v111 = sub_2295A3E30(91, 0xE100000000000000, &v125);

            *(v104 + 4) = v111;
            _os_log_impl(&dword_229538000, v96, v97, "%s Missing current accessory", v104, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v105);
            MEMORY[0x22AAD4E50](v105, -1, -1);
            MEMORY[0x22AAD4E50](v104, -1, -1);

            v124(v119, v121);
          }

          else
          {

            v99(v100, v102);
          }

          v112 = swift_task_alloc();
          *(v0 + 200) = v112;
          *v112 = v0;
          v112[1] = sub_229886298;
          v113 = *(v0 + 16);
          v77 = 0;
LABEL_61:

          sub_22987BB90(v77);
          return;
        }

LABEL_54:
        v89 = *(v0 + 64);
        v88 = *(v0 + 72);
        v91 = *(v0 + 48);
        v90 = *(v0 + 56);

        v92 = *(v0 + 8);

        v92();
        return;
      }

      v79 = 0;
      v80 = *(v0 + 104) & 0xC000000000000001;
      while (1)
      {
        if (v80)
        {
          v81 = MEMORY[0x22AAD13F0](v79, *(v0 + 96));
        }

        else
        {
          if (v79 >= *(v78 + 16))
          {
            goto LABEL_65;
          }

          v81 = *(v78 + 32 + 8 * v79);
        }

        v46 = v81;
        v82 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          break;
        }

        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          goto LABEL_31;
        }

        v83 = *(v0 + 120);

        ++v79;
        if (v82 == v83)
        {
          v84 = *(v0 + 96);
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v4 = *(v0 + 96);
    if ((*(v0 + 104) & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAD13F0](v3, v4);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_39;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    *(v0 + 128) = v5;
    *(v0 + 136) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v7 = [v5 home];
    *(v0 + 144) = v7;
    if (v7)
    {
      break;
    }

    v3 = *(v0 + 136);
    if (v3 == *(v0 + 120))
    {
      goto LABEL_9;
    }
  }

  v38 = swift_task_alloc();
  *(v0 + 152) = v38;
  *v38 = v0;
  v38[1] = sub_22988524C;

  sub_229813B9C(v6);
}

uint64_t sub_229885E50()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2298864CC;
  }

  else
  {
    v4 = sub_229885F7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229885F7C()
{
  v36 = v0;

  v1 = *(v0 + 168);
  *(v0 + 192) = v1;
  v2 = [*(v0 + 80) _accessoryOfCurrentDevice];
  if (v2 && (v3 = v2, objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, v4))
  {

    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 16);
    sub_229541CB0(*(v0 + 24), &off_283CE8678);
    v13 = v12;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 112);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);
    if (v16)
    {
      v34 = *(v0 + 112);
      v21 = *(v0 + 16);
      v33 = *(v0 + 32);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v35[0] = v23;
      v35[1] = 91;
      v35[2] = 0xE100000000000000;
      v24 = v21;
      v25 = [v24 description];
      v26 = sub_22A4DD5EC();
      v32 = v18;
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(91, 0xE100000000000000, v35);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_229538000, v14, v15, "%s Missing current accessory", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      v34(v32, v33);
    }

    else
    {

      v17(v18, v20);
    }

    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_229886298;
    v31 = *(v0 + 16);

    return sub_22987BB90(0);
  }
}

uint64_t sub_229886298()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_229886560;
  }

  else
  {
    v3 = sub_2298863AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2298863AC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22988643C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298864CC()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_229886560()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2298865F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_22A4DD07C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298866C0, 0, 0);
}

uint64_t sub_2298866C0()
{
  v31 = v0;
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  sub_229541CB0(v0[5], &off_283CE8678);
  v4 = v3;

  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  if (v7)
  {
    v27 = v0[3];
    v28 = v0[4];
    v11 = v0[2];
    v29 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315394;
    v30[0] = v13;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v14 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v26 = v8;
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(v27, v28, v30);
    _os_log_impl(&dword_229538000, v5, v6, "%s Updating demo mode with demo configuration for locale: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    v20 = *(v9 + 8);
    v20(v26, v29);
  }

  else
  {

    v20 = *(v9 + 8);
    v20(v8, v10);
  }

  v0[10] = v20;
  v21 = *(v0[2] + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = sub_229886960;
  v24 = v0[3];
  v23 = v0[4];

  return sub_22959A2A4(v24, v23);
}

uint64_t sub_229886960()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229886AA4, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229886AA4()
{
  v37 = v0;
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  sub_229541CB0(v0[5], &off_283CE8678);
  v5 = v4;

  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[8];
  v13 = v0[6];
  if (v9)
  {
    v29 = v0[3];
    v30 = v0[4];
    v35 = v0[10];
    v14 = v0[2];
    v34 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v15 = 136315650;
    v36[0] = v33;
    v36[1] = 91;
    v36[2] = 0xE100000000000000;
    v17 = v14;
    v32 = v12;
    v18 = [v17 description];
    v31 = v13;
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v22 = sub_2295A3E30(91, 0xE100000000000000, v36);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(v29, v30, v36);
    *(v15 + 22) = 2112;
    v23 = v10;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v24;
    *v16 = v24;
    _os_log_impl(&dword_229538000, v7, v8, "%s Failed to update non demo mode configuration for %s with error: %@", v15, 0x20u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    v35(v32, v31);
  }

  else
  {

    v11(v12, v13);
  }

  v26 = v0[8];
  v25 = v0[9];

  v27 = v0[1];

  return v27();
}

unint64_t sub_229886DE8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v90[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v94 = &v90[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v90[-v15];
  v95 = ObjectType;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v17 = v4;

  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();

  v20 = os_log_type_enabled(v18, v19);
  v98 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v97 = v7;
    v22 = v21;
    v93 = swift_slowAlloc();
    v101 = v93;
    *v22 = 136315394;
    v99 = 91;
    v100 = 0xE100000000000000;
    v23 = v17;
    v92 = v18;
    v24 = v23;
    v25 = [v23 description];
    v26 = sub_22A4DD5EC();
    v91 = v19;
    v27 = v26;
    v96 = v8;
    v29 = v28;

    v3 = v2;
    MEMORY[0x22AAD08C0](v27, v29);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v30 = sub_2295A3E30(v99, v100, &v101);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v31 = sub_22A4DD4AC();
    v33 = sub_2295A3E30(v31, v32, &v101);

    *(v22 + 14) = v33;
    v8 = v96;
    v18 = v92;
    _os_log_impl(&dword_229538000, v92, v91, "%s Received demo mode test request message payload: %s", v22, 0x16u);
    v34 = v93;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v34, -1, -1);
    v35 = v22;
    v7 = v97;
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  v36 = *(v8 + 8);
  v36(v16, v7);
  v37 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v39 = sub_229543DBC(v37, v38);
    v41 = v40;

    if (v41)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v39, &v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        if (v101)
        {
          v93 = v36;
          v42 = v94;
          sub_229541CB0(v95, &off_283CE8678);
          v43 = v98;
          v44 = sub_22A4DD05C();
          v45 = sub_22A4DDCCC();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v97 = v7;
            v47 = v46;
            v48 = swift_slowAlloc();
            v96 = v8;
            v49 = v48;
            v101 = v48;
            *v47 = 136315138;
            v99 = 91;
            v100 = 0xE100000000000000;
            v50 = v43;
            v51 = [v50 description];
            v52 = sub_22A4DD5EC();
            v54 = v53;

            MEMORY[0x22AAD08C0](v52, v54);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v55 = sub_2295A3E30(v99, v100, &v101);

            *(v47 + 4) = v55;
            _os_log_impl(&dword_229538000, v44, v45, "%s Resetting demo mode accessories", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);
            MEMORY[0x22AAD4E50](v49, -1, -1);
            MEMORY[0x22AAD4E50](v47, -1, -1);

            v56 = v97;
            v57 = v94;
          }

          else
          {

            v57 = v42;
            v56 = v7;
          }

          v93(v57, v56);
          if (qword_27D87B8A0 != -1)
          {
            swift_once();
          }

          sub_22956F9DC();
          return sub_22956AC5C(MEMORY[0x277D84F90]);
        }
      }
    }
  }

  else
  {
  }

  v58 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v60 = sub_229543DBC(v58, v59);
    v62 = v61;

    if (v62)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v60, &v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        inited = v101;
        v64 = sub_22986A4B0(v101);

        sub_2298877C0(v64);

        if (!v3)
        {
          return sub_22956AC5C(MEMORY[0x277D84F90]);
        }

        return inited;
      }
    }
  }

  else
  {
  }

  v65 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v67 = sub_229543DBC(v65, v66);
    v69 = v68;

    if (v69)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v67, &v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        inited = sub_229887D54(v101);

        return inited;
      }
    }
  }

  else
  {
  }

  v70 = v36;
  sub_229541CB0(v95, &off_283CE8678);
  v71 = v98;
  v72 = sub_22A4DD05C();
  v73 = sub_22A4DDCEC();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v97 = v7;
    v75 = v74;
    v76 = swift_slowAlloc();
    v96 = v8;
    v77 = v76;
    v101 = v76;
    *v75 = 136315138;
    v99 = 91;
    v100 = 0xE100000000000000;
    v78 = v71;
    v79 = [v78 description];
    v80 = sub_22A4DD5EC();
    v98 = v12;
    v81 = v80;
    v83 = v82;

    MEMORY[0x22AAD08C0](v81, v83);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v84 = sub_2295A3E30(v99, v100, &v101);

    *(v75 + 4) = v84;
    _os_log_impl(&dword_229538000, v72, v73, "%s Unhandled test mode request", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x22AAD4E50](v77, -1, -1);
    MEMORY[0x22AAD4E50](v75, -1, -1);

    v85 = v97;
    v86 = v98;
  }

  else
  {

    v86 = v12;
    v85 = v7;
  }

  v70(v86, v85);
  type metadata accessor for HMError(0);
  v101 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v87 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v88;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000022A59A080;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  swift_willThrow();
  return inited;
}

uint64_t sub_2298877C0(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = a1[2];
  if (v12)
  {
    v54 = a1;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v13 = v2;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v51 = v16;
      v52 = swift_slowAlloc();
      v58 = v52;
      *v16 = 136315138;
      v56 = 91;
      v57 = 0xE100000000000000;
      v17 = v13;
      v50 = v15;
      v18 = v17;
      v19 = [v17 description];
      v53 = v5;
      v20 = v19;
      v21 = sub_22A4DD5EC();
      v49 = v14;
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(v56, v57, &v58);

      v25 = v51;
      *(v51 + 1) = v24;
      v26 = v49;
      _os_log_impl(&dword_229538000, v49, v50, "%s Request to add test/demo accessories", v25, 0xCu);
      v27 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);

      result = (*(v55 + 8))(v11, v53);
    }

    else
    {

      result = (*(v55 + 8))(v11, v5);
    }

    v42 = 0;
    v43 = v54 + 4;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v56 = v43[v42];

      sub_22988A318(&v56, v13, ObjectType);

      ++v42;
      if (v44 == v12)
      {
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE8678);
    v29 = v2;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v5;
      v54 = v33;
      v58 = v33;
      *v32 = 136315138;
      v56 = 91;
      v57 = 0xE100000000000000;
      v34 = v29;
      v35 = [v34 description];
      v36 = sub_22A4DD5EC();
      v37 = v55;
      v39 = v38;

      MEMORY[0x22AAD08C0](v36, v39);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v40 = sub_2295A3E30(v56, v57, &v58);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_229538000, v30, v31, "%s Request to add test/demo accessories but none found", v32, 0xCu);
      v41 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v37 + 8))(v9, v53);
    }

    else
    {

      (*(v55 + 8))(v9, v5);
    }

    type metadata accessor for HMError(0);
    v58 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v46 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v47;
    *(inited + 48) = 0xD00000000000001ELL;
    *(inited + 56) = 0x800000022A59A0A0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_229887D54(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  if (!*(a1 + 16))
  {
    sub_229541CB0(ObjectType, &off_283CE8678);
    v25 = v1;
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v67 = v63;
      *v28 = 136315138;
      v65 = 91;
      v66 = 0xE100000000000000;
      v29 = v25;
      v30 = [v29 description];
      v31 = sub_22A4DD5EC();
      v64 = v6;
      v32 = v31;
      v33 = v7;
      v35 = v34;

      MEMORY[0x22AAD08C0](v32, v35);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(v65, v66, &v67);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_229538000, v26, v27, "%s Invalid accessory control configuration request", v28, 0xCu);
      v37 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v33 + 8))(v13, v64);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    type metadata accessor for HMError(0);
    v19 = v38;
    v67 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v40 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    v42 = inited + 32;
    v43 = 0x800000022A59A0F0;
    *(inited + 72) = MEMORY[0x277D837D0];
    v44 = 0xD00000000000002FLL;
LABEL_18:
    *(inited + 40) = v41;
    *(inited + 48) = v44;
    *(inited + 56) = v43;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v42, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
    return v19;
  }

  v63 = v7;
  v14 = sub_22A4DD5EC();
  v16 = sub_229543DBC(v14, v15);
  v18 = v17;

  if (v18)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v16, &v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v19 = sub_22988A80C(v67);

      return v19;
    }
  }

  v20 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_15:
    v64 = v6;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v45 = v3;

    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v48 = 136315394;
      v65 = 91;
      v66 = 0xE100000000000000;
      v49 = v45;
      v50 = [v49 description];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v65, v66, &v67);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v55 = sub_22A4DD4AC();
      v57 = sub_2295A3E30(v55, v56, &v67);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_229538000, v46, v47, "%s Unhandled accessory control configuration: %s", v48, 0x16u);
      v58 = v62;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    (v63[1])(v11, v64);
    type metadata accessor for HMError(0);
    v19 = v59;
    v67 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v60 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    v42 = inited + 32;
    v43 = 0x800000022A59A0C0;
    *(inited + 72) = MEMORY[0x277D837D0];
    v44 = 0xD000000000000029;
    goto LABEL_18;
  }

  v22 = sub_229543DBC(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v22, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v19 = v3;
  sub_22988C0BC(v67);

  if (!v2)
  {
    return sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  return v19;
}

uint64_t sub_229888624()
{
  v0 = sub_22A4DB57C();
  __swift_allocate_value_buffer(v0, qword_27D8AB9F8);
  __swift_project_value_buffer(v0, qword_27D8AB9F8);
  return sub_229888670();
}

uint64_t sub_229888670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v14 - v2;
  v4 = sub_22A4DB49C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v10 = result;
    sub_22A4DD5EC();

    v11 = *MEMORY[0x277CC91C0];
    v12 = *(v5 + 104);
    v12(v8, v11, v4);
    v13 = sub_22A4DB57C();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_22A4DB55C();
    v14[0] = 0xD000000000000034;
    v14[1] = 0x800000022A59A2E0;
    v12(v8, v11, v4);
    sub_22962F254();
    sub_22A4DB53C();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_229888888(uint64_t a1, void *a2)
{
  v164 = a2;
  v182[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v160 = &v156 - v6;
  v7 = sub_22A4DD07C();
  v171 = *(v7 - 8);
  v8 = *(v171 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v174 = (&v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v162 = &v156 - v12;
  MEMORY[0x28223BE20](v11);
  v173 = &v156 - v13;
  v178 = sub_22A4DB57C();
  v14 = *(v178 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v178);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v161 = &v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v166 = &v156 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v168 = &v156 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = (&v156 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v177 = &v156 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v167 = &v156 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v156 - v31;
  v181[0] = 0;
  v172 = v2;
  v33 = *&v2[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  v34 = [v33 fileManager];
  if (!v34)
  {
LABEL_52:
    __break(1u);
  }

  v35 = v34;
  v176 = a1;
  sub_22A4DB52C();
  v36 = sub_22A4DD5AC();

  v37 = [v35 fileExistsAtPath:v36 isDirectory:v181];

  swift_unknownObjectRelease();
  v169 = v7;
  if (!v37 || v181[0] != 1)
  {
    v54 = v174;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v55 = v178;
    (*(v14 + 16))(v18, v176, v178);
    v56 = v172;
    v57 = sub_22A4DD05C();
    v58 = sub_22A4DDCEC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      LODWORD(v176) = v58;
      v60 = v59;
      v177 = swift_slowAlloc();
      v182[0] = v177;
      *v60 = 136315394;
      v179 = 91;
      v180 = 0xE100000000000000;
      v61 = v56;
      v175 = v57;
      v62 = v61;
      v63 = [v61 description];
      v64 = sub_22A4DD5EC();
      v65 = v14;
      v67 = v66;

      MEMORY[0x22AAD08C0](v64, v67);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v68 = sub_2295A3E30(v179, v180, v182);

      *(v60 + 4) = v68;
      *(v60 + 12) = 2080;
      sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
      v69 = sub_22A4DE5CC();
      v71 = v70;
      (*(v65 + 8))(v18, v55);
      v72 = sub_2295A3E30(v69, v71, v182);

      *(v60 + 14) = v72;
      v73 = v175;
      _os_log_impl(&dword_229538000, v175, v176, "%s Unable to find content at: %s", v60, 0x16u);
      v74 = v177;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v74, -1, -1);
      MEMORY[0x22AAD4E50](v60, -1, -1);

      (*(v171 + 8))(v174, v169);
    }

    else
    {

      (*(v14 + 8))(v18, v55);
      (*(v171 + 8))(v54, v169);
    }

    type metadata accessor for HMError(0);
    v182[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v76 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v77;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x800000022A59A4F0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    result = swift_willThrow();
    goto LABEL_46;
  }

  v174 = v33;
  result = [v33 fileManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_54;
  }

  v39 = result;
  sub_22A4DD5EC();
  sub_22A4DB4FC();

  v40 = sub_22A4DB4EC();
  v165 = v14;
  v41 = v14 + 8;
  v42 = *(v14 + 8);
  v43 = v178;
  v42(v32, v178);
  LODWORD(v157) = [v39 fileExistsAtURL_];
  swift_unknownObjectRelease();

  result = [v174 fileManager];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = result;
  sub_22A4DD5EC();
  sub_22A4DB4FC();

  v45 = sub_22A4DB4EC();
  v158 = v42;
  v159 = v41;
  v42(v32, v43);
  v46 = [v44 fileExistsAtURL_];
  swift_unknownObjectRelease();

  sub_22A4DD5EC();
  sub_22A4DB4FC();

  v47 = v174;
  result = [v174 fileManager];
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v48 = result;
  sub_22A4DB52C();
  v49 = sub_22A4DD5AC();

  v50 = [v48 fileExistsAtPath:v49 isDirectory:v181];
  swift_unknownObjectRelease();

  if ((v157 | v46))
  {
    v51 = v178;
    v52 = v158;
    v53 = v173;
    if (!v50)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v51 = v178;
    v52 = v158;
    v53 = v173;
    if ((v50 & 1) == 0)
    {
      v100 = v162;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v101 = v161;
      (*(v165 + 16))(v161, v176, v51);
      v102 = v172;
      v103 = sub_22A4DD05C();
      v104 = sub_22A4DDCEC();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v182[0] = v177;
        *v105 = 136315394;
        v179 = 91;
        v180 = 0xE100000000000000;
        v106 = v102;
        v107 = [v106 description];
        v108 = v101;
        v109 = sub_22A4DD5EC();
        v111 = v110;

        MEMORY[0x22AAD08C0](v109, v111);
        v51 = v178;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v112 = sub_2295A3E30(v179, v180, v182);

        *(v105 + 4) = v112;
        *(v105 + 12) = 2080;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
        v113 = sub_22A4DE5CC();
        v115 = v114;
        v116 = v158;
        v158(v108, v51);
        v117 = sub_2295A3E30(v113, v115, v182);
        v52 = v116;

        *(v105 + 14) = v117;
        _os_log_impl(&dword_229538000, v103, v104, "%s Content is missing required files at %s", v105, 0x16u);
        v118 = v177;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v118, -1, -1);
        MEMORY[0x22AAD4E50](v105, -1, -1);

        (*(v171 + 8))(v162, v169);
      }

      else
      {

        v52 = v158;
        v158(v101, v51);
        (*(v171 + 8))(v100, v169);
      }

      type metadata accessor for HMError(0);
      v182[0] = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v119 = swift_initStackObject();
      *(v119 + 16) = xmmword_22A576180;
      v120 = *MEMORY[0x277CCA450];
      *(v119 + 32) = sub_22A4DD5EC();
      v122 = v119 + 32;
      v123 = 0x800000022A59A510;
      *(v119 + 72) = MEMORY[0x277D837D0];
      v124 = 0xD000000000000021;
      goto LABEL_36;
    }
  }

  if (v181[0] != 1)
  {
LABEL_40:
    v128 = v164;
    v129 = [v164 demoModeCameraPath];
    sub_22A4DD5EC();

    v130 = v166;
    sub_22A4DB4CC();

    v131 = v163;
    sub_229881854(v176, v130);
    if (v131)
    {
      v132 = v130;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v133 = swift_initStackObject();
      *(v133 + 16) = xmmword_22A576190;
      *(v133 + 32) = v128;
      v134 = v160;
      (*(v165 + 56))(v160, 1, 1, v51);
      v135 = v128;
      sub_229875850(v133, v134);

      sub_22953EAE4(v134, &qword_27D880180, &unk_22A586590);
      v132 = v166;
    }

    v52(v132, v51);
    goto LABEL_44;
  }

  result = [v47 fileManager];
  if (result)
  {
    v78 = result;
    v79 = v167;
    v80 = sub_22A4DB4EC();
    v179 = 0;
    v81 = [v78 contentsOfDirectoryAtURL:v80 includingPropertiesForKeys:0 options:0 error:&v179];
    swift_unknownObjectRelease();

    v82 = v179;
    if (!v81)
    {
      v125 = v179;
      sub_22A4DB3EC();

      swift_willThrow();
      v126 = v79;
LABEL_45:
      result = (v52)(v126, v51);
LABEL_46:
      v136 = *MEMORY[0x277D85DE8];
      return result;
    }

    v83 = sub_22A4DD83C();
    v84 = v82;

    v162 = *(v83 + 16);
    if (v162)
    {
      v85 = 0;
      v157 = v165 + 16;
      v156 = @"mov";
      v174 = (v165 + 32);
      v86 = MEMORY[0x277D84F90];
      v161 = v83;
      while (1)
      {
        if (v85 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v88 = (*(v165 + 80) + 32) & ~*(v165 + 80);
        v89 = *(v165 + 72);
        (*(v165 + 16))(v177, v83 + v88 + v89 * v85, v51);
        v90 = sub_22A4DB4AC();
        v92 = v91;
        if (v90 == sub_22A4DD5EC() && v92 == v93)
        {
          break;
        }

        v94 = sub_22A4DE60C();

        if (v94)
        {
          goto LABEL_27;
        }

        v158(v177, v51);
LABEL_21:
        v87 = v168;
        ++v85;
        v83 = v161;
        v53 = v173;
        if (v162 == v85)
        {
          goto LABEL_39;
        }
      }

LABEL_27:
      v95 = *v174;
      (*v174)(v175, v177, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_229583B44(0, v86[2] + 1, 1);
        v86 = v179;
      }

      v98 = v86[2];
      v97 = v86[3];
      if (v98 >= v97 >> 1)
      {
        sub_229583B44(v97 > 1, v98 + 1, 1);
        v86 = v179;
      }

      v86[2] = v98 + 1;
      v99 = v86 + v88 + v98 * v89;
      v51 = v178;
      v95(v99, v175, v178);
      goto LABEL_21;
    }

    v86 = MEMORY[0x277D84F90];
    v87 = v168;
LABEL_39:

    v127 = v86[2];

    v52 = v158;
    if (v127)
    {
      goto LABEL_40;
    }

    sub_229541CB0(ObjectType, &off_283CE8678);
    (*(v165 + 16))(v87, v167, v51);
    v137 = v172;
    v138 = sub_22A4DD05C();
    v139 = sub_22A4DDCEC();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v182[0] = v141;
      *v140 = 136315394;
      v179 = 91;
      v180 = 0xE100000000000000;
      v142 = v137;
      v143 = [v142 description];
      v144 = sub_22A4DD5EC();
      v146 = v145;

      MEMORY[0x22AAD08C0](v144, v146);
      v51 = v178;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v147 = sub_2295A3E30(v179, v180, v182);

      *(v140 + 4) = v147;
      *(v140 + 12) = 2080;
      sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
      v148 = v168;
      v149 = sub_22A4DE5CC();
      v151 = v150;
      v152 = v148;
      v153 = v158;
      v158(v152, v51);
      v154 = sub_2295A3E30(v149, v151, v182);
      v52 = v153;

      *(v140 + 14) = v154;
      _os_log_impl(&dword_229538000, v138, v139, "%s Camera clips folder is empty: %s", v140, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v141, -1, -1);
      MEMORY[0x22AAD4E50](v140, -1, -1);

      (*(v171 + 8))(v173, v169);
    }

    else
    {

      v52 = v158;
      v158(v87, v51);
      (*(v171 + 8))(v53, v169);
    }

    type metadata accessor for HMError(0);
    v182[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_22A576180;
    v155 = *MEMORY[0x277CCA450];
    *(v119 + 32) = sub_22A4DD5EC();
    v122 = v119 + 32;
    v123 = 0x800000022A59A540;
    *(v119 + 72) = MEMORY[0x277D837D0];
    v124 = 0xD00000000000001CLL;
LABEL_36:
    *(v119 + 40) = v121;
    *(v119 + 48) = v124;
    *(v119 + 56) = v123;
    sub_22956AD8C(v119);
    swift_setDeallocating();
    sub_22953EAE4(v122, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
LABEL_44:
    v126 = v167;
    goto LABEL_45;
  }

LABEL_56:
  __break(1u);
  return result;
}

id sub_229889C04(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v12 = sub_22A4DB57C();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  result = [*&v1[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
  if (result)
  {
    v20 = result;
    v21 = sub_22A4DB4EC();
    v22 = [v20 fileExistsAtURL_];

    swift_unknownObjectRelease();
    if (v22)
    {
      v23 = demoModeConfigPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      v24 = v56;
      sub_229881854(a1, v18);
      if (v24)
      {
        return (*(v60 + 8))(v18, v61);
      }

      else
      {
        v53 = v60;
        v52 = v61;
        (*(v60 + 16))(v11, v18, v61);
        (*(v53 + 56))(v11, 0, 1, v52);
        sub_229875850(0, v11);
        sub_22953EAE4(v11, &qword_27D880180, &unk_22A586590);
        return (*(v53 + 8))(v18, v52);
      }
    }

    else
    {
      v25 = v59;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v27 = v60;
      v26 = v61;
      v28 = *(v60 + 16);
      v29 = v16;
      v56 = a1;
      v28(v16, a1, v61);
      v30 = v2;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v29;
        v34 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v64 = v55;
        *v34 = 136315394;
        v62 = 91;
        v63 = 0xE100000000000000;
        v35 = v30;
        v36 = [v35 description];
        v37 = sub_22A4DD5EC();
        v39 = v38;

        MEMORY[0x22AAD08C0](v37, v39);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v40 = sub_2295A3E30(v62, v63, &v64);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2080;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
        v41 = sub_22A4DE5CC();
        v43 = v42;
        (*(v27 + 8))(v33, v61);
        v44 = sub_2295A3E30(v41, v43, &v64);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_229538000, v31, v32, "%s Unable to find: %s", v34, 0x16u);
        v45 = v55;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v45, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);

        (*(v57 + 8))(v59, v58);
      }

      else
      {

        (*(v27 + 8))(v29, v26);
        (*(v57 + 8))(v25, v58);
      }

      type metadata accessor for HMError(0);
      v64 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      v47 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v48;
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_22A4DE1FC();

      v62 = 0xD000000000000010;
      v63 = 0x800000022A59A560;
      sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
      v49 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v49);

      v50 = v62;
      v51 = v63;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v50;
      *(inited + 56) = v51;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22988A318(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    result = sub_229543DBC(0x726F737365636361, 0xEB00000000736569);
    if (v6)
    {
      sub_2295404B0(*(v3 + 56) + 32 * result, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED0, &qword_22A57A940);
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(v10 + 16);
        if (v7)
        {
          v8 = 0;
          while (v8 < *(v10 + 16))
          {
            v9 = v8 + 1;
            v11[0] = *(v10 + 32 + 8 * v8);

            sub_22988A448(v11, a2, a3);

            v8 = v9;
            if (v7 == v9)
            {
            }
          }

          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_22988A448(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  type metadata accessor for DemoAccessoryServer();

  v14 = sub_22960BC94(v13, 1);
  if (v3)
  {
    sub_229541CB0(a3, &off_283CE8678);

    v15 = a2;
    v16 = v3;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v19 = 136315650;
      v43 = 91;
      v44 = 0xE100000000000000;
      v20 = v15;
      v38 = v18;
      v21 = v20;
      v22 = [v20 description];
      v23 = sub_22A4DD5EC();
      v40 = v8;
      v41 = v7;
      v24 = v23;
      v26 = v25;

      MEMORY[0x22AAD08C0](v24, v26);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v27 = sub_2295A3E30(v43, v44, &v45);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2080;
      v28 = sub_22A4DD4AC();
      v30 = sub_2295A3E30(v28, v29, &v45);

      *(v19 + 14) = v30;
      *(v19 + 22) = 2112;
      v31 = v3;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v32;
      v33 = v39;
      *v39 = v32;
      _os_log_impl(&dword_229538000, v17, v38, "%s Failed to create a demo accessory server from %s. error: %@", v19, 0x20u);
      sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v34 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v40 + 8))(v11, v41);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    if (qword_27D87B8A0 != -1)
    {
      v36 = v14;
      swift_once();
      v14 = v36;
    }

    v35 = v14;
    sub_22956E358(v14);
  }
}

uint64_t sub_22988A80C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v226 = v4;
  ObjectType = swift_getObjectType();
  v214 = sub_22A4DD07C();
  v6 = *(*(v214 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v214);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v195 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](&v195 - v12);
  v19 = *(a1 + 16);
  if (!v19)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_62:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x800000022A59A210;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(inited + 48) = v21;
    v26 = sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    return v26;
  }

  v206 = &v195 - v15;
  v207 = v13;
  v200 = v11;
  v202 = v17;
  v204 = v16;
  v20 = (a1 + 32);
  v217 = "y control configuration request";
  v213 = "kServiceInstanceID";
  v209 = "kCharacteristicInstanceID";
  v211 = (v14 + 8);
  v212 = "No characteristic found";
  v216 = "kConfigTestingResponseDelayKey";
  v208 = "kCharacteristicValue";
  v21 = MEMORY[0x277D84F90];
  *&v18 = 136315394;
  v205 = v18;
  *(&v22 + 1) = 3;
  v199 = xmmword_22A576190;
  *&v22 = 136315650;
  v203 = v22;
  while (1)
  {
    v222 = v20;
    v223 = v19;
    v23 = *v20;

    v25 = sub_2296F7AE8(v24);
    v26 = v226;
    v27 = sub_22988CE0C(v25);
    if (v3)
    {

      return v26;
    }

    v28 = v27;

    if (!*(v23 + 2))
    {
      break;
    }

    v29 = sub_229543DBC(0xD000000000000012, v217 | 0x8000000000000000);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v225 = v21;
    sub_2295404B0(*(v23 + 7) + 32 * v29, &v232);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v234 = v230;
    if (!*(v23 + 2) || (v32 = sub_229543DBC(0xD000000000000019, v213 | 0x8000000000000000), (v33 & 1) == 0) || (sub_2295404B0(*(v23 + 7) + 32 * v32, &v232), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_67;
    }

    v227 = v230;
    if (*(v23 + 2) && (v34 = sub_229543DBC(0xD000000000000017, v209 | 0x8000000000000000), (v35 & 1) != 0) && (sub_2295404B0(*(v23 + 7) + 32 * v34, &v232), (swift_dynamicCast() & 1) != 0))
    {
      v36 = v230;
      v37 = sub_2296136D4();

      if (!v37)
      {
        goto LABEL_71;
      }

      v38 = v37;
    }

    else
    {
      v39 = [v28 accessories];
      if (!v39)
      {
LABEL_71:
        v210 = v28;
        goto LABEL_75;
      }

      v40 = v39;
      sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
      v41 = sub_22A4DD83C();

      if (v41 >> 62)
      {
        result = sub_22A4DE0EC();
        if (!result)
        {
LABEL_74:
          v210 = v28;

LABEL_75:

          v224 = 0;
LABEL_76:
          v174 = v202;
          sub_229541CB0(ObjectType, &off_283CE8678);

          v175 = v226;
          v176 = sub_22A4DD05C();
          v177 = sub_22A4DDCEC();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v226 = swift_slowAlloc();
            *&v230 = v226;
            *v178 = v205;
            *&v232 = 91;
            *(&v232 + 1) = 0xE100000000000000;
            v179 = v175;
            LODWORD(v225) = v177;
            v180 = v179;
            v181 = [v179 description];
            v182 = sub_22A4DD5EC();
            v184 = v183;

            MEMORY[0x22AAD08C0](v182, v184);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v185 = sub_2295A3E30(v232, *(&v232 + 1), &v230);

            *(v178 + 4) = v185;
            *(v178 + 12) = 2080;
            v186 = sub_22A4DD4AC();
            v188 = v187;

            v189 = sub_2295A3E30(v186, v188, &v230);

            *(v178 + 14) = v189;
            _os_log_impl(&dword_229538000, v176, v225, "%s Unable to find characteristic from %s", v178, 0x16u);
            v190 = v226;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v190, -1, -1);
            MEMORY[0x22AAD4E50](v178, -1, -1);

            (*v211)(v202, v214);
          }

          else
          {

            (*v211)(v174, v214);
          }

          type metadata accessor for HMError(0);
          v26 = v191;
          *&v230 = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
          v192 = swift_initStackObject();
          *(v192 + 16) = xmmword_22A576180;
          v193 = *MEMORY[0x277CCA450];
          *(v192 + 32) = sub_22A4DD5EC();
          *(v192 + 72) = MEMORY[0x277D837D0];
          *(v192 + 40) = v194;
          *(v192 + 48) = 0xD000000000000017;
          *(v192 + 56) = 0x800000022A59A180;
          sub_22956AD8C(v192);
          swift_setDeallocating();
          sub_22953EAE4(v192 + 32, &qword_27D87CDA0, &unk_22A57A930);
          sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
          sub_22A4DB3CC();
          swift_willThrow();

          return v26;
        }
      }

      else
      {
        result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_74;
        }
      }

      if ((v41 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x22AAD13F0](0, v41);
      }

      else
      {
        if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v43 = *(v41 + 32);
      }

      v38 = v43;
    }

    v44 = v38;
    v45 = [v44 serviceWithInstanceID_];
    v224 = v38;
    if (!v45)
    {
      v210 = v28;

      goto LABEL_76;
    }

    v220 = v45;
    v221 = v44;
    v219 = 0;
    v46 = sub_2296161C8();
    if (!v46)
    {
      v210 = v28;

      goto LABEL_76;
    }

    v47 = v46;
    v48 = *(v23 + 2);

    if (v48 && (v49 = sub_229543DBC(0xD00000000000001ELL, v212 | 0x8000000000000000), (v50 & 1) != 0) && (sub_2295404B0(*(v23 + 7) + 32 * v49, &v232), (swift_dynamicCast() & 1) != 0))
    {
      v51 = v230;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v201 = v226;
      v52 = v51;
      v53 = v47;
      v54 = sub_22A4DD05C();
      v55 = sub_22A4DDCCC();
      v210 = v53;

      v218 = v52;
      v56 = v201;

      if (os_log_type_enabled(v54, v55))
      {
        v57 = swift_slowAlloc();
        v197 = v57;
        v198 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        *&v230 = v196;
        *v57 = v203;
        *&v232 = 91;
        *(&v232 + 1) = 0xE100000000000000;
        v58 = v56;
        v201 = v54;
        v59 = v58;
        v60 = [v58 description];
        v61 = v28;
        v62 = sub_22A4DD5EC();
        LODWORD(v195) = v55;
        v64 = v63;

        v65 = v62;
        v28 = v61;
        v66 = v218;
        MEMORY[0x22AAD08C0](v65, v64);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v67 = sub_2295A3E30(v232, *(&v232 + 1), &v230);

        v68 = v197;
        *(v197 + 4) = v67;
        *(v68 + 6) = 2112;
        *(v68 + 14) = v66;
        v198->isa = v66;
        *(v68 + 11) = 2080;
        v69 = v66;
        v70 = [v210 shortDescription];
        v71 = sub_22A4DD5EC();
        v73 = v72;

        v74 = sub_2295A3E30(v71, v73, &v230);

        v75 = v197;
        v197[3] = v74;
        v54 = v201;
        _os_log_impl(&dword_229538000, v201, v195, "%s Setting the response delay: %@ for characteristic  %s", v75, 0x20u);
        v76 = v198;
        sub_22953EAE4(v198, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v76, -1, -1);
        v77 = v196;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v77, -1, -1);
        MEMORY[0x22AAD4E50](v75, -1, -1);
      }

      (*v211)(v206, v214);
      v78 = v218;
      [(objc_class *)v218 doubleValue];
      v79 = sub_22A4DDB3C();
      swift_beginAccess();
      objc_setAssociatedObject(v210, &unk_27D87DEA8, v79, 1);
      swift_endAccess();

      v80 = v23;
      v38 = v224;
    }

    else
    {
      v81 = COERCE_DOUBLE(sub_229614EA0());
      v80 = v23;
      if ((v82 & 1) == 0)
      {
        v233 = MEMORY[0x277D839F8];
        *&v232 = v81 * 1000.0;
        sub_229543C5C(&v232, &v230);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v228 = v23;
        v84 = __swift_mutable_project_boxed_opaque_existential_0(&v230, *(&v231 + 1));
        sub_2297FF248(0xD00000000000001ELL, v212 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v228, *v84);
        __swift_destroy_boxed_opaque_existential_0(&v230);
        v80 = v228;
      }
    }

    if (!*(v23 + 2) || (v85 = sub_229543DBC(0xD000000000000014, v216 | 0x8000000000000000), (v86 & 1) == 0))
    {
      if ([v47 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        v111 = v233;
        v112 = __swift_project_boxed_opaque_existential_0(&v232, v233);
        v229 = v111;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v228);
        (*(*(v111 - 8) + 16))(boxed_opaque_existential_1, v112, v111);
        sub_229543C5C(&v228, &v230);
        __swift_destroy_boxed_opaque_existential_0(&v232);
        if (*(&v231 + 1))
        {
          sub_229543C5C(&v230, &v232);
          goto LABEL_42;
        }
      }

      else
      {
        v230 = 0u;
        v231 = 0u;
      }

      v114 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v233 = sub_229562F68(0, &qword_27D880120, 0x277CBEB68);
      *&v232 = v114;
      if (*(&v231 + 1))
      {
        sub_22953EAE4(&v230, &unk_27D87FC20, &unk_22A578810);
      }

LABEL_42:
      sub_229543C5C(&v232, &v230);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      *&v228 = v80;
      v116 = *(&v231 + 1);
      v117 = __swift_mutable_project_boxed_opaque_existential_0(&v230, *(&v231 + 1));
      v118 = *(*(v116 - 8) + 64);
      MEMORY[0x28223BE20](v117);
      v120 = &v195 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v121 + 16))(v120);
      sub_2297FF768(v120, 0xD000000000000014, v216 | 0x8000000000000000, v115, &v228, v116);
      __swift_destroy_boxed_opaque_existential_0(&v230);
      v218 = v228;
      v38 = v224;
      v21 = v225;
      if (!*(v23 + 2))
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v201 = v31;
    v218 = v80;
    v210 = v28;
    sub_2295404B0(*(v23 + 7) + 32 * v85, &v230);
    sub_229543C5C(&v230, &v232);
    __swift_project_boxed_opaque_existential_0(&v232, v233);
    [v47 setValue_];
    swift_unknownObjectRelease();
    v87 = v207;
    sub_229541CB0(ObjectType, &off_283CE8678);

    v88 = v226;
    v89 = v47;
    v90 = sub_22A4DD05C();
    v91 = sub_22A4DDCCC();
    v197 = v89;

    LODWORD(v198) = v91;
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v228 = v196;
      *v92 = v203;
      *&v230 = 91;
      *(&v230 + 1) = 0xE100000000000000;
      v93 = v88;
      v195 = v90;
      v94 = v93;
      v95 = [v93 description];
      v96 = sub_22A4DD5EC();
      v98 = v97;

      MEMORY[0x22AAD08C0](v96, v98);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v99 = sub_2295A3E30(v230, *(&v230 + 1), &v228);

      *(v92 + 4) = v99;
      *(v92 + 12) = 2080;
      v100 = sub_22A4DD4AC();
      v102 = sub_2295A3E30(v100, v101, &v228);

      *(v92 + 14) = v102;
      *(v92 + 22) = 2080;
      v103 = [v197 shortDescription];
      v104 = sub_22A4DD5EC();
      v106 = v105;

      v107 = v104;
      v38 = v224;
      v108 = sub_2295A3E30(v107, v106, &v228);

      *(v92 + 24) = v108;
      v109 = v195;
      _os_log_impl(&dword_229538000, v195, v198, "%s Setting the value from %s for characteristic %s", v92, 0x20u);
      v110 = v196;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v110, -1, -1);
      MEMORY[0x22AAD4E50](v92, -1, -1);

      (*v211)(v207, v214);
    }

    else
    {

      (*v211)(v87, v214);
    }

    v28 = v210;
    v21 = v225;
    __swift_destroy_boxed_opaque_existential_0(&v232);
    if (!*(v23 + 2))
    {
      goto LABEL_51;
    }

LABEL_46:
    v122 = sub_229543DBC(0xD00000000000002BLL, v208 | 0x8000000000000000);
    if (v123)
    {
      sub_2295404B0(*(v23 + 7) + 32 * v122, &v232);

      if (swift_dynamicCast())
      {
        v210 = v28;
        v124 = v200;
        sub_229541CB0(ObjectType, &off_283CE8678);
        v125 = v226;
        v126 = v47;
        v127 = sub_22A4DD05C();
        v128 = sub_22A4DDCCC();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *&v230 = v201;
          *v129 = v205;
          *&v232 = 91;
          *(&v232 + 1) = 0xE100000000000000;
          v130 = v125;
          v198 = v127;
          v131 = v130;
          v132 = [v130 description];
          LODWORD(v197) = v128;
          v133 = v132;
          v134 = sub_22A4DD5EC();
          v136 = v135;

          MEMORY[0x22AAD08C0](v134, v136);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v137 = sub_2295A3E30(v232, *(&v232 + 1), &v230);

          *(v129 + 4) = v137;
          *(v129 + 12) = 2080;
          v138 = [v126 shortDescription];
          v139 = sub_22A4DD5EC();
          v141 = v140;

          v142 = sub_2295A3E30(v139, v141, &v230);
          v21 = v225;

          *(v129 + 14) = v142;
          v127 = v198;
          _os_log_impl(&dword_229538000, v198, v197, "%s Triggering update notification for characteristic %s", v129, 0x16u);
          v143 = v201;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v143, -1, -1);
          MEMORY[0x22AAD4E50](v129, -1, -1);
        }

        (*v211)(v124, v214);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v144 = swift_allocObject();
        *(v144 + 16) = v199;
        *(v144 + 32) = v126;
        v145 = v126;
        v28 = v210;
        sub_229613164(v144, 0);

        v38 = v224;
      }

      goto LABEL_52;
    }

LABEL_51:

LABEL_52:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_22958A770(0, v21[2] + 1, 1, v21);
    }

    v147 = v21[2];
    v146 = v21[3];
    if (v147 >= v146 >> 1)
    {
      v21 = sub_22958A770((v146 > 1), v147 + 1, 1, v21);
    }

    v21[2] = v147 + 1;
    v3 = v219;
    v21[v147 + 4] = v218;
    v20 = v222 + 1;
    v19 = v223 - 1;
    if (v223 == 1)
    {
      goto LABEL_62;
    }
  }

LABEL_67:
  v149 = v204;
  sub_229541CB0(ObjectType, &off_283CE8678);

  v150 = v226;
  v151 = sub_22A4DD05C();
  v152 = sub_22A4DDCEC();

  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *&v230 = v234;
    *v153 = v205;
    *&v232 = 91;
    *(&v232 + 1) = 0xE100000000000000;
    v154 = v150;
    v227 = v151;
    v155 = v154;
    v156 = [v154 description];
    v157 = sub_22A4DD5EC();
    LODWORD(v226) = v152;
    v158 = v28;
    v159 = v157;
    v161 = v160;

    v162 = v159;
    v28 = v158;
    MEMORY[0x22AAD08C0](v162, v161);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v163 = sub_2295A3E30(v232, *(&v232 + 1), &v230);

    *(v153 + 4) = v163;
    *(v153 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v164 = sub_22A4DD4AC();
    v166 = v165;

    v167 = sub_2295A3E30(v164, v166, &v230);

    *(v153 + 14) = v167;
    v168 = v227;
    _os_log_impl(&dword_229538000, v227, v226, "%s Ignoring invalid request: %s", v153, 0x16u);
    v169 = v234;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v169, -1, -1);
    MEMORY[0x22AAD4E50](v153, -1, -1);
  }

  else
  {
  }

  (*v211)(v149, v214);
  type metadata accessor for HMError(0);
  v26 = v170;
  *&v230 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v171 = swift_initStackObject();
  *(v171 + 16) = xmmword_22A576180;
  v172 = *MEMORY[0x277CCA450];
  *(v171 + 32) = sub_22A4DD5EC();
  *(v171 + 72) = MEMORY[0x277D837D0];
  *(v171 + 40) = v173;
  *(v171 + 48) = 0x2064696C61766E49;
  *(v171 + 56) = 0xEF74736575716572;
  sub_22956AD8C(v171);
  swift_setDeallocating();
  sub_22953EAE4(v171 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  swift_willThrow();

  return v26;
}

void sub_22988C0BC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v15 = &v102 - v11;
  v16 = *(a1 + 16);
  if (v16)
  {
    v104 = v13;
    v103 = v12;
    v17 = (a1 + 32);
    v108 = "kCharacteristicInstanceID";
    v112 = "CharacteristicConfiguration";
    v113 = (v10 + 8);
    *&v14 = 136315650;
    v106 = v14;
    v107 = v6;
    v111 = v1;
    v105 = &v102 - v11;
    while (1)
    {
      v117 = v17;
      v19 = *v17;

      v21 = sub_2296F7AE8(v20);
      v22 = sub_22988CE0C(v21);
      if (v3)
      {

        return;
      }

      v23 = v22;

      v24 = *(v19 + 16);
      v116 = v16;
      if (!v24)
      {
        goto LABEL_11;
      }

      v25 = sub_229543DBC(0xD000000000000017, v108 | 0x8000000000000000);
      if (v26 & 1) != 0 && (sub_2295404B0(*(v19 + 56) + 32 * v25, &v118), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast()))
      {
        v27 = v120;
        v28 = sub_2296136D4();

        if (!v28)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_11:
        v29 = [v23 accessories];
        if (!v29)
        {
          goto LABEL_32;
        }

        v30 = v29;
        sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
        v31 = sub_22A4DD83C();

        if (v31 >> 62)
        {
          if (!sub_22A4DE0EC())
          {
LABEL_31:

LABEL_32:
            v80 = v103;
            sub_229541CB0(ObjectType, &off_283CE8678);

            v81 = v4;
            v82 = sub_22A4DD05C();
            v83 = sub_22A4DDCEC();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v110 = v23;
              v86 = v85;
              v120 = v85;
              *v84 = 136315394;
              v118 = 91;
              v119 = 0xE100000000000000;
              v87 = v81;
              v88 = [v87 description];
              LODWORD(v117) = v83;
              v89 = v88;
              v90 = sub_22A4DD5EC();
              v92 = v91;

              MEMORY[0x22AAD08C0](v90, v92);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v93 = sub_2295A3E30(v118, v119, &v120);

              *(v84 + 4) = v93;
              *(v84 + 12) = 2080;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
              v94 = sub_22A4DD4AC();
              v96 = v95;

              v97 = sub_2295A3E30(v94, v96, &v120);

              *(v84 + 14) = v97;
              _os_log_impl(&dword_229538000, v82, v117, "%s Ignoring invalid request: %s", v84, 0x16u);
              swift_arrayDestroy();
              v98 = v86;
              v23 = v110;
              MEMORY[0x22AAD4E50](v98, -1, -1);
              MEMORY[0x22AAD4E50](v84, -1, -1);

              (*v113)(v80, v107);
            }

            else
            {

              (*v113)(v80, v6);
            }

            type metadata accessor for HMError(0);
            v120 = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22A576180;
            v100 = *MEMORY[0x277CCA450];
            *(inited + 32) = sub_22A4DD5EC();
            *(inited + 72) = MEMORY[0x277D837D0];
            *(inited + 40) = v101;
            *(inited + 48) = 0x2064696C61766E49;
            *(inited + 56) = 0xEF74736575716572;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            swift_willThrow();

            return;
          }
        }

        else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x22AAD13F0](0, v31);
        }

        else
        {
          if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v32 = *(v31 + 32);
        }

        v28 = v32;
      }

      v33 = v28;
      if (!*(v19 + 16))
      {
        break;
      }

      v34 = sub_229543DBC(0xD000000000000018, v112 | 0x8000000000000000);
      if ((v35 & 1) == 0)
      {
        break;
      }

      sub_2295404B0(*(v19 + 56) + 32 * v34, &v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v115 = 0;

      v36 = v120;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v37 = v4;
      v38 = v33;
      v39 = sub_22A4DD05C();
      v40 = v15;
      v41 = sub_22A4DDCEC();

      if (os_log_type_enabled(v39, v41))
      {
        v42 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v120 = v109;
        *v42 = v106;
        v118 = 91;
        v119 = 0xE100000000000000;
        v43 = v37;
        v44 = [v43 description];
        v45 = v36;
        v46 = sub_22A4DD5EC();
        v110 = v23;
        v48 = v47;

        v49 = v46;
        v36 = v45;
        MEMORY[0x22AAD08C0](v49, v48);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v50 = sub_2295A3E30(v118, v119, &v120);

        *(v42 + 4) = v50;
        *(v42 + 12) = 2080;
        v51 = [v38 shortDescription];
        v52 = sub_22A4DD5EC();
        v54 = v53;

        v55 = sub_2295A3E30(v52, v54, &v120);
        v23 = v110;

        *(v42 + 14) = v55;
        *(v42 + 22) = 1024;
        *(v42 + 24) = v45;
        _os_log_impl(&dword_229538000, v39, v41, "%s Setting the reachability of accessory %s to %{BOOL}d", v42, 0x1Cu);
        v56 = v109;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v56, -1, -1);
        v57 = v42;
        v6 = v107;
        MEMORY[0x22AAD4E50](v57, -1, -1);

        v15 = v105;
        (*v113)(v105, v6);
        v3 = v115;
      }

      else
      {

        (*v113)(v40, v6);
        v3 = v115;
        v15 = v40;
      }

      v18 = v117;
      [v38 setReachable_];

      v17 = (v18 + 8);
      v16 = v116 - 1;
      v4 = v111;
      if (v116 == 1)
      {
        return;
      }
    }

    v58 = v104;
    sub_229541CB0(ObjectType, &off_283CE8678);

    v59 = v4;
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v110 = v23;
      v63 = v62;
      v117 = swift_slowAlloc();
      v120 = v117;
      *v63 = 136315394;
      v118 = 91;
      v119 = 0xE100000000000000;
      v64 = v59;
      v65 = [v64 description];
      LODWORD(v116) = v61;
      v66 = v65;
      v67 = sub_22A4DD5EC();
      v69 = v68;

      MEMORY[0x22AAD08C0](v67, v69);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v70 = sub_2295A3E30(v118, v119, &v120);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v71 = sub_22A4DD4AC();
      v73 = v72;

      v74 = sub_2295A3E30(v71, v73, &v120);

      *(v63 + 14) = v74;
      _os_log_impl(&dword_229538000, v60, v116, "%s No reachability setting in request: %s", v63, 0x16u);
      v75 = v117;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v75, -1, -1);
      v76 = v63;
      v23 = v110;
      MEMORY[0x22AAD4E50](v76, -1, -1);

      (*v113)(v58, v107);
    }

    else
    {

      (*v113)(v58, v6);
    }

    type metadata accessor for HMError(0);
    v120 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_22A576180;
    v78 = *MEMORY[0x277CCA450];
    *(v77 + 32) = sub_22A4DD5EC();
    *(v77 + 72) = MEMORY[0x277D837D0];
    *(v77 + 40) = v79;
    *(v77 + 48) = 0xD00000000000001CLL;
    *(v77 + 56) = 0x800000022A59A250;
    sub_22956AD8C(v77);
    swift_setDeallocating();
    sub_22953EAE4(v77 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

id sub_22988CE0C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v10 = sub_229543DBC(0x6F7373656363416BLL, 0xEE00656D614E7972);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v10, &v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v41 = v9;
  v12 = v42[1];
  v39 = v42[0];
  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v40 = v6;
  v45 = v5;
  v13 = qword_27D8AB630;
  result = [qword_27D8AB630 workQueue];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  MEMORY[0x28223BE20](result);
  v16 = v39;
  *(&v38 - 4) = v13;
  *(&v38 - 3) = v16;
  *(&v38 - 2) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
  sub_22A4DDD9C();

  result = v43;
  v5 = v45;
  v6 = v40;
  v9 = v41;
  if (!v43)
  {
LABEL_8:
    v17 = MEMORY[0x277D837D0];
    sub_229541CB0(ObjectType, &off_283CE8678);
    v18 = v2;

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v21 = 136315394;
      v43 = 91;
      v44 = 0xE100000000000000;
      v22 = v18;
      v23 = [v22 description];
      v24 = sub_22A4DD5EC();
      v45 = v5;
      v25 = v24;
      v41 = v9;
      v26 = v6;
      v28 = v27;

      MEMORY[0x22AAD08C0](v25, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v43, v44, v42);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      v30 = sub_22A4DD4AC();
      v32 = sub_2295A3E30(v30, v31, v42);

      *(v21 + 14) = v32;
      _os_log_impl(&dword_229538000, v19, v20, "%s Ignoring invalid request: %s", v21, 0x16u);
      v33 = v40;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v34 = v21;
      v17 = MEMORY[0x277D837D0];
      MEMORY[0x22AAD4E50](v34, -1, -1);

      (*(v26 + 8))(v41, v45);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    type metadata accessor for HMError(0);
    v42[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v36 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = v17;
    *(inited + 40) = v37;
    *(inited + 48) = 0x2064696C61766E49;
    *(inited + 56) = 0xEF74736575716572;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22988D35C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DB57C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB4DC();
  sub_22A4DB4FC();

  if (a3)
  {
    v11 = sub_22A4DB4EC();
    v12 = [a4 fileExistsAtURL_];

    if (v12)
    {
      v13 = sub_22A4DB4EC();
      v26[0] = 0;
      v14 = [a4 removeItemAtURL:v13 error:v26];

      v15 = v26[0];
      if (!v14)
      {
LABEL_7:
        v23 = v15;
        sub_22A4DB3EC();

        swift_willThrow();
        result = (*(v7 + 8))(v10, v6);
        goto LABEL_8;
      }

      v16 = v26[0];
    }
  }

  v17 = sub_22A4DB4EC();
  v18 = sub_22A4DB4EC();
  v26[0] = 0;
  v19 = [a4 copyItemAtURL:v17 toURL:v18 error:v26];

  v15 = v26[0];
  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = *(v7 + 8);
  v21 = v26[0];
  result = v20(v10, v6);
LABEL_8:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22988D590(void *a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v93[2] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DD07C();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB57C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v75 = &v75 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v75 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v77 = &v75 - v22;
  v92 = 0;
  sub_22A4DB52C();
  v23 = sub_22A4DD5AC();

  v88 = a1;
  v24 = [a1 fileExistsAtPath:v23 isDirectory:&v92];

  v76 = v3;
  if (v24)
  {
    v86 = a2;
    if (v92 == 1)
    {
      v25 = sub_22A4DB4EC();
      v93[0] = 0;
      v26 = [v88 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:0 options:0 error:v93];

      v27 = v93[0];
      v28 = v75;
      v29 = v80;
      if (!v26)
      {
        v72 = v93[0];
        sub_22A4DB3EC();

        result = swift_willThrow();
        goto LABEL_33;
      }

      v30 = sub_22A4DD83C();
      v31 = v27;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
      v41 = *(v11 + 72);
      v42 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_22A576180;
      (*(v11 + 16))(v30 + v42, v86, v10);
      v28 = v75;
      v29 = v80;
    }

    v43 = *(v87 + 16);
    v90 = v11;
    v44 = v77;
    if (v43)
    {
      v84 = *(v30 + 16);
      if (v84)
      {
        v45 = 0;
        v78 = (v11 + 8);
        v81 = (v11 + 32);
        v82 = v11 + 16;
        v46 = MEMORY[0x277D84F90];
        v47 = v76;
        v79 = v10;
        v83 = v30;
        while (v45 < *(v30 + 16))
        {
          v89 = (*(v11 + 80) + 32) & ~*(v11 + 80);
          v48 = *(v11 + 72);
          (*(v11 + 16))(v44, v30 + v89 + v48 * v45, v10);
          v49 = v10;
          v93[0] = sub_22A4DB4AC();
          v93[1] = v50;
          MEMORY[0x28223BE20](v93[0]);
          *(&v75 - 2) = v93;
          v51 = sub_22986A5E0(sub_229890700, (&v75 - 4), v87);

          if (v51)
          {
            v52 = *v81;
            (*v81)(v85, v44, v49);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91 = v46;
            v54 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_229583B44(0, *(v46 + 16) + 1, 1);
              v44 = v77;
              v46 = v91;
            }

            v55 = v89;
            v57 = *(v46 + 16);
            v56 = *(v46 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_229583B44(v56 > 1, v57 + 1, 1);
              v44 = v77;
              v46 = v91;
            }

            *(v46 + 16) = v57 + 1;
            v58 = v46 + v55 + v57 * v48;
            v59 = v79;
            v52(v58, v85, v79);
            v10 = v59;
            v47 = v54;
          }

          else
          {
            (*v78)(v44, v10);
          }

          ++v45;
          v30 = v83;
          v11 = v90;
          if (v84 == v45)
          {
            goto LABEL_23;
          }
        }

LABEL_37:
        __break(1u);
      }

      v46 = MEMORY[0x277D84F90];
      v47 = v76;
LABEL_23:
      v76 = v47;

      v30 = v46;
      v28 = v75;
      v29 = v80;
    }

    v89 = *(v30 + 16);
    if (v89)
    {
      v61 = v11;
      v62 = 0;
      v87 = v30 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v85 = (v61 + 16);
      v63 = (v61 + 8);
      while (v62 < *(v30 + 16))
      {
        (*(v90 + 16))(v29, v87 + *(v90 + 72) * v62, v10);
        sub_22A4DB4DC();
        sub_22A4DB4FC();

        v65 = sub_22A4DB4EC();
        v66 = v88;
        v67 = [v88 fileExistsAtURL_];

        if (v67)
        {
          v68 = sub_22A4DB4EC();
          v93[0] = 0;
          v69 = [v66 removeItemAtURL:v68 error:v93];

          if ((v69 & 1) == 0)
          {
            v73 = v93[0];

            sub_22A4DB3EC();

            swift_willThrow();
            v74 = *v63;
            (*v63)(v28, v10);
            result = (v74)(v80, v10);
            goto LABEL_33;
          }

          v64 = *v63;
          v70 = v93[0];
          v64(v28, v10);
          v29 = v80;
        }

        else
        {
          v64 = *v63;
          (*v63)(v28, v10);
        }

        v64(v29, v10);
        if (v89 == ++v62)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_32:
  }

  else
  {
    sub_229541CB0(v86, &off_283CE8678);
    v32 = sub_22A4DDD0C();
    (*(v11 + 16))(v15, a2, v10);
    v33 = sub_22A4DD05C();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v93[0] = v35;
      *v34 = 136315138;
      v36 = sub_22A4DB52C();
      v37 = v11;
      v39 = v38;
      (*(v37 + 8))(v15, v10);
      v40 = sub_2295A3E30(v36, v39, v93);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_229538000, v33, v32, "No source found at: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    result = (*(v89 + 8))(v9, v90);
  }

LABEL_33:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22988DE3C(void *a1)
{
  v82 = a1;
  v79 = sub_22A4DB57C();
  v2 = *(v79 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v73 = &v68 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v68 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v68 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v68 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v81 = sub_22A4DD07C();
  v19 = *(v81 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v81);
  v74 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v80 = v1;
  sub_229541CB0(v1, &off_283CE8678);
  v28 = sub_22A4DDD0C();
  v29 = sub_22A4DD05C();
  if (os_log_type_enabled(v29, v28))
  {
    v30 = v16;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_229538000, v29, v28, "Resetting demo mode configuration", v31, 2u);
    v32 = v31;
    v16 = v30;
    MEMORY[0x22AAD4E50](v32, -1, -1);
  }

  v33 = *(v19 + 8);
  v33(v27, v81);
  v34 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  v35 = v80;
  v36 = v78;
  sub_22988D590(v82, v18, &unk_283CDA3D8);
  if (v36)
  {
    (*(v2 + 8))(v18, v79);
  }

  else
  {
    v78 = 0;
    v69 = v16;
    v70 = v33;
    v37 = v18;
    v38 = v79;
    v71 = *(v2 + 8);
    v71(v37, v79);
    sub_229541CB0(v35, &off_283CE8678);
    v39 = sub_22A4DDD0C();
    v40 = sub_22A4DD05C();
    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_229538000, v40, v39, "Loading demo mode configuration from backup", v41, 2u);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    v70(v25, v81);
    v42 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    v43 = v77;
    sub_22A4DB4CC();

    v44 = v76;
    sub_22A4DB4FC();
    v45 = v38;
    v46 = v38;
    v47 = v71;
    v71(v43, v45);
    v48 = v69;
    sub_22A4DB4FC();
    v47(v44, v46);
    v49 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    v50 = v75;
    sub_22A4DB4CC();

    v51 = v80;
    v52 = v78;
    sub_229881D2C(v82, v48, v50, 0, 1, &unk_283CDA398);
    v78 = v52;
    if (v52)
    {
      v47(v50, v46);
      v47(v48, v46);
    }

    else
    {
      v47(v50, v46);
      v47(v48, v46);
      sub_229541CB0(v51, &off_283CE8678);
      v53 = sub_22A4DDD0C();
      v54 = sub_22A4DD05C();
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_229538000, v54, v53, "Loading demo mode contents from from backup", v55, 2u);
        MEMORY[0x22AAD4E50](v55, -1, -1);
      }

      v70(v74, v81);
      v56 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      v57 = v77;
      sub_22A4DB4CC();

      sub_22A4DB4FC();
      v58 = v57;
      v59 = v79;
      v60 = v71;
      v71(v58, v79);
      v61 = v73;
      sub_22A4DB4FC();
      v62 = v60;
      v60(v44, v59);
      v63 = demoModeConfigPath();
      sub_22A4DD5EC();

      v64 = v72;
      sub_22A4DB4CC();

      v65 = v78;
      sub_229881D2C(v82, v61, v64, 1, 0, MEMORY[0x277D84F90]);
      v62(v64, v59);
      v62(v61, v59);
      if (!v65)
      {
        v66 = @"loadDemoModeV2Backup";
        v67 = sub_22A4DD5AC();
        CFPreferencesSetValue(v66, 0, v67, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
      }
    }
  }
}

uint64_t sub_22988E688(void *a1)
{
  v51 = a1;
  v1 = sub_22A4DB57C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v44 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v46 = &v44 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  v26 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  v27 = v1;
  sub_22A4DB4CC();

  sub_22A4DB4FC();
  v28 = *(v2 + 8);
  v28(v16, v1);
  sub_22A4DB4FC();
  v28(v19, v1);
  v29 = v49;
  sub_229881D2C(v51, v24, v22, 1, 0, &unk_283CDA398);
  if (!v29)
  {
    v28(v22, v1);
    v28(v24, v1);
    v30 = demoModeConfigPath();
    v49 = 0;
    v31 = v30;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    v32 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_22A4DB4FC();
    v28(v16, v1);
    v33 = v48;
    sub_22A4DB4FC();
    v28(v19, v1);
    v34 = v49;
    sub_229881D2C(v51, v50, v33, 1, 0, MEMORY[0x277D84F90]);
    if (v34)
    {
      v22 = v33;
      v24 = v50;
    }

    else
    {
      v49 = 0;
      v28(v33, v1);
      v28(v50, v1);
      v35 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      v36 = v46;
      sub_22A4DB4FC();
      v28(v19, v1);
      v37 = NSTemporaryDirectory();
      if (!v37)
      {
        sub_22A4DD5EC();
        v37 = sub_22A4DD5AC();
      }

      v38 = [objc_opt_self() fileURLWithPath:v37 isDirectory:1];

      v39 = v45;
      sub_22A4DB51C();

      v22 = v47;
      sub_22A4DB4FC();
      v28(v39, v1);
      v40 = v49;
      sub_229881D2C(v51, v36, v22, 1, 0, MEMORY[0x277D84F90]);
      if (!v40)
      {
        v28(v22, v1);
        v41 = v36;
        v42 = v1;
        return (v28)(v41, v42);
      }

      v24 = v36;
      v27 = v1;
    }
  }

  v28(v22, v27);
  v41 = v24;
  v42 = v27;
  return (v28)(v41, v42);
}

HMDDemoModeManagerFactory __swiftcall HMDDemoModeManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22988EE0C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22A4DE60C() & 1;
  }
}

id sub_22988EE64(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v36 = a1;
    v15 = v14;
    v38 = v14;
    *v13 = 136315138;
    v16 = demoModeV2Status();
    v17 = sub_22A4DD5EC();
    v19 = v18;

    v20 = sub_2295A3E30(v17, v19, &v38);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_229538000, v10, v11, "Demo mode V2 status: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v21 = v15;
    a1 = v36;
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v22 = v13;
    a2 = v37;
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = objc_opt_self();
  v24 = a1;
  v25 = a2;
  v26 = [v23 defaultCenter];
  v27 = type metadata accessor for DemoModeManager();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_notificationCenter] = v26;
  *&v28[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] = v24;
  *&v28[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher] = v25;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = [v29 demoModeDataSource];
  *&v28[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] = v32;
  v39.receiver = v28;
  v39.super_class = v27;
  v33 = objc_msgSendSuper2(&v39, sel_init);

  return v33;
}

uint64_t sub_22988F720(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22A4DE60C() & 1;
  }
}

uint64_t sub_22988F778(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_229883928(a1);
}

uint64_t sub_22988F824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2298865F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22988F8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229883DEC(a1, v4, v5, v7, v6);
}

unint64_t sub_22988F9B8()
{
  result = qword_27D881EC0;
  if (!qword_27D881EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D548, &unk_22A578880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881EC0);
  }

  return result;
}

uint64_t sub_22988FA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22988FA64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_229879398(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22988FB74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_22986C0A0(*(v0 + 16));
}

uint64_t sub_22988FB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2298744B0(a1, v4, v5, v7, v6);
}

uint64_t sub_22988FC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2298769DC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22988FD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22987B480(a1, v4, v5, v7, v6);
}

uint64_t sub_22988FE48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_22986CD2C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_22988FF24()
{
  result = qword_27D881EF0;
  if (!qword_27D881EF0)
  {
    sub_229562F68(255, &qword_27D87D938, off_278666080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881EF0);
  }

  return result;
}

uint64_t sub_22988FF9C(uint64_t a1)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22987D594(a1, v10, v1 + v4, v11, v1 + v7, v12, v13, v14);
}

uint64_t sub_2298900D4(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[3];
  v19 = v1[2];
  v12 = v1[4];
  v13 = *(v1 + v6);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_229586D38;

  return sub_22987D8BC(a1, v19, v11, v12, v1 + v5, v13, v1 + v8, v14);
}

uint64_t sub_2298902D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 80);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  return sub_22986BF40();
}

void *sub_229890404()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_22986C028(*(v0 + 16));
}

uint64_t objectdestroy_39Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  v8 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2298905CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_229890634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_229890738(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2 >> 60 == 15)
  {
    if (a6 >> 60 == 15)
    {
      sub_2295AEF1C(a1, a2);
      sub_2295AEF1C(a5, a6);
      sub_229590D18(a1, a2);
      goto LABEL_7;
    }

LABEL_5:
    sub_2295AEF1C(a1, a2);
    sub_2295AEF1C(a5, a6);
    sub_229590D18(a1, a2);
    v18 = a5;
    v19 = a6;
LABEL_12:
    sub_229590D18(v18, v19);
    return 0;
  }

  if (a6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_2295AEF1C(a1, a2);
  sub_2295AEF1C(a5, a6);
  v22 = sub_2297B7550(a1, a2, a5, a6);
  sub_229590D18(a5, a6);
  sub_229590D18(a1, a2);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  if (a4 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      sub_2295AEF1C(a3, a4);
      sub_2295AEF1C(a7, a8);
      sub_229590D18(a3, a4);
      return 1;
    }

    goto LABEL_11;
  }

  if (a8 >> 60 == 15)
  {
LABEL_11:
    sub_2295AEF1C(a3, a4);
    sub_2295AEF1C(a7, a8);
    sub_229590D18(a3, a4);
    v18 = a7;
    v19 = a8;
    goto LABEL_12;
  }

  sub_2295AEF1C(a3, a4);
  sub_2295AEF1C(a7, a8);
  v24 = sub_2297B7550(a3, a4, a7, a8);
  sub_229590D18(a7, a8);
  sub_229590D18(a3, a4);
  return (v24 & 1) != 0;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229890954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2298909B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_229890A10()
{
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DB7DC();
  __swift_project_value_buffer(v1, qword_27D8AB968);
  v16 = sub_22970DA38();
  v17 = v2;
  v18 = 0;
  v19 = 0xE000000000000000;
  v20 = 1;
  v21 = MEMORY[0x277D84F98];
  v14 = _s21EventMetadataInternalVMa(0);
  v15 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  sub_22989B24C(v0, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, &v13);
  sub_22953EAE4(&v13, &qword_27D882000, &qword_22A578390);
  v4 = *(v0 + *(_s17HomeActivityStateO5EventVMa() + 20));
  v14 = MEMORY[0x277D84CC0];
  v15 = &off_283CDFC58;
  LODWORD(v13) = v4;
  sub_229557188(&v13, v12);
  v5 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v5;
  v7 = __swift_mutable_project_boxed_opaque_existential_0(v12, v12[3]);
  sub_22989AA58(*v7, 0xD000000000000011, 0x800000022A589C40, isUniquelyReferenced_nonNull_native, &v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882008, &qword_22A586BE8);
  v8 = sub_22A4DD47C();
  v12[0] = v8;
  sub_22A4DE31C();

  v9 = v13;
  sub_2295798D4(v16, v17);

  return v9;
}

uint64_t sub_229890C80(void (*a1)(uint64_t *))
{
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DB7DC();
  __swift_project_value_buffer(v2, qword_27D8AB968);
  v6 = sub_22970DA38();
  v7 = v3;
  v8 = 0;
  v9 = 0xE000000000000000;
  v10 = 1;
  v11 = MEMORY[0x277D84F98];
  a1(&v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882008, &qword_22A586BE8);
  v5 = sub_22A4DD47C();
  sub_22A4DE31C();

  sub_2295798D4(v6, v7);

  return 0;
}

uint64_t sub_229890DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_229557188(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_0(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_22989AC04(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v17);

    *v3 = v16;
  }

  else
  {
    sub_22953EAE4(a1, &qword_27D882018, &unk_22A586BF8);
    sub_2297FCF28(a2, a3, v17);

    return sub_22953EAE4(v17, &qword_27D882018, &unk_22A586BF8);
  }

  return result;
}

uint64_t sub_229890F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2295AAFCC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_229543DBC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_229898ADC(&unk_27D87CE60, &qword_22A577CD8);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_2297FDBE4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_229891054(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = _s13PresenceStateOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D87EBB0, &qword_22A57C720);
    sub_2297FD0E8(a2, v8);
    v14 = sub_22A4DB7DC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22953EAE4(v8, &qword_27D87EBB0, &qword_22A57C720);
  }

  else
  {
    sub_22989B1E4(a1, v12, _s13PresenceStateOMa);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2295AB144(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_22A4DB7DC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_229891274(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D87EA30, &unk_22A57CD80);
    sub_2297FD12C(a2, v8);
    v14 = sub_22A4DB7DC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22953EAE4(v8, &qword_27D87EA30, &unk_22A57CD80);
  }

  else
  {
    sub_22989B1E4(a1, v12, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2295AB340(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_22A4DB7DC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_229891494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_22A4DBB4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_22953EAE4(a1, &qword_27D882100, &unk_22A580DB0);
    sub_2297FD330(a2, a3, v10);

    return sub_22953EAE4(v10, &qword_27D882100, &unk_22A580DB0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2295AB53C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_22989166C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_2295ABEC8(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_2296DC034(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_229899924();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_2297FE434(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_229891770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HomePassData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D881B40, &qword_22A585CD8);
    sub_2297FD6F8(a2, a3, v10);

    return sub_22953EAE4(v10, &qword_27D881B40, &qword_22A585CD8);
  }

  else
  {
    sub_22989B1E4(a1, v14, type metadata accessor for HomePassData);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2295AC4C4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

id sub_229891944()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882040, &unk_22A586C40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882028, &qword_22A586C28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882030, &qword_22A586C30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v19 = v14;
  sub_2298920D8();
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_22A4DDA6C();
  (*(v7 + 32))(v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_events, v10, v6);
  sub_229564F88(v14, v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_continuation, &qword_27D882030, &qword_22A586C30);
  sub_22953EAE4(v14, &qword_27D882030, &qword_22A586C30);
  v20.receiver = v0;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_229891C00(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D882030, &qword_22A586C30);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_229891FB4()
{
  sub_229892080();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_229892124();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_229892080()
{
  if (!qword_27D881F68)
  {
    sub_2298920D8();
    v0 = sub_22A4DDA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D881F68);
    }
  }
}

unint64_t sub_2298920D8()
{
  result = qword_27D881F70;
  if (!qword_27D881F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881F70);
  }

  return result;
}

void sub_229892124()
{
  if (!qword_27D881F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D881F80, &qword_22A586A80);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D881F78);
    }
  }
}

uint64_t sub_229892188()
{
  v1 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask;
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask);

    sub_22A4DDA7C();
  }

  v3 = *(v0 + 112);

  sub_22989B17C(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_home);

  v4 = *(v0 + v1);

  v5 = *(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description + 8);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22989229C()
{
  result = _s20ControlBlockInternalVMa();
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

uint64_t sub_22989236C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v7, &unk_27D881FF0, &qword_22A57A380);
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_2295F5AFC(v7, v15 + v14);
  v16 = sub_22957F3C0(0, 0, v11, &unk_22A586C18, v15);
  v17 = *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask) = v16;
}

uint64_t sub_229892570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882020, &qword_22A586C20);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882028, &qword_22A586C28);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298926B0, 0, 0);
}

uint64_t sub_2298926B0()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v9 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_homeActivityStateAdapter);

    (*(v6 + 16))(v3, v9 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_events, v5);

    (*(v6 + 32))(v4, v3, v5);
    sub_22A4DDA3C();
    swift_beginAccess();
    v10 = *(MEMORY[0x277D85798] + 4);
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_229892884;
    v12 = v0[13];
    v13 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v13);
  }

  else
  {
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[13];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_229892884()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229892980, 0, 0);
}

uint64_t sub_229892980()
{
  v1 = v0[8];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[9];
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_229892A94, Strong, 0);
    }
  }

  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v6 + 8))(v4, v5);
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_229892A94()
{
  v1 = *(v0 + 160);
  sub_229892BB4(*(v0 + 80), *(v0 + 152));

  return MEMORY[0x2822009F8](sub_229892B00, 0, 0);
}

uint64_t sub_229892B00()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_229892884;
  v5 = v0[13];
  v6 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v6);
}

void sub_229892BB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  v43 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v40 - v7;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881FE0, &unk_22A586BD8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = _s17HomeActivityStateO5EventVMa();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = v9;
    v26 = Strong;
    sub_2295639D8(v26, a2, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      sub_22953EAE4(v16, &qword_27D881FE0, &unk_22A586BD8);
    }

    else
    {
      v41 = v26;
      sub_22989B1E4(v16, v24, _s17HomeActivityStateO5EventVMa);
      v27 = v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock;
      swift_beginAccess();
      if (v27[*(_s20ControlBlockInternalVMa() + 20)] == 1)
      {
        sub_229541CB0(v43, &off_283CE8B48);
        sub_22989B24C(v24, v22, _s17HomeActivityStateO5EventVMa);

        v28 = sub_22A4DD05C();
        v29 = sub_22A4DDCDC();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v49[0] = v43;
          *v30 = 136315394;
          *(v30 + 4) = sub_2295A3E30(*(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description), *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description + 8), v49);
          *(v30 + 12) = 2080;
          v31 = sub_229890A10();
          v33 = v32;
          sub_22989B17C(v22, _s17HomeActivityStateO5EventVMa);
          v34 = sub_2295A3E30(v31, v33, v49);

          *(v30 + 14) = v34;
          _os_log_impl(&dword_229538000, v28, v29, "%s received event %s", v30, 0x16u);
          v35 = v43;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v35, -1, -1);
          MEMORY[0x22AAD4E50](v30, -1, -1);
        }

        else
        {

          sub_22989B17C(v22, _s17HomeActivityStateO5EventVMa);
        }

        (*(v42 + 8))(v12, v8);
        v36 = v41;
        v49[3] = v17;
        v49[4] = sub_229893410(&qword_27D881FE8, _s17HomeActivityStateO5EventVMa);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
        sub_22989B24C(v24, boxed_opaque_existential_1, _s17HomeActivityStateO5EventVMa);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) + 28);
        sub_22957F1C4(v49, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v39 = v44;
        sub_22A4DDA0C();

        (*(v45 + 8))(v39, v46);
        sub_22989B17C(v24, _s17HomeActivityStateO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v49);
      }

      else
      {
        sub_22989B17C(v24, _s17HomeActivityStateO5EventVMa);
      }
    }
  }
}

uint64_t sub_2298931B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock;
  swift_beginAccess();
  return sub_22989B24C(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

void sub_229893298(uint64_t a1, uint64_t a2, const char **a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v6 = [Strong homeActivityStateManager];
    if (v6)
    {
      v7 = *a3;
      v8 = v6;
      [v6 v7];
    }
  }
}

uint64_t sub_229893330()
{
  v1 = (*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_22989338C(uint64_t a1)
{
  *(a1 + 16) = sub_229893410(&qword_27D881FB8, _s8ObserverCMa_2);
  result = sub_229893410(&qword_27D881FC0, _s8ObserverCMa_2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229893410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229893458(uint64_t a1)
{
  result = sub_229893410(&qword_27D881FC0, _s8ObserverCMa_2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2298934B0(uint64_t a1)
{
  *(a1 + 8) = sub_229893410(&qword_27D881FC8, _s8ObserverCMa_2);
  result = sub_229893410(&unk_27D881FD0, _s8ObserverCMa_2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_229893584(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_2295404B0(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_229893870(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s13PresenceStateOMa();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882080, &unk_22A586C78);
  v48 = a2;
  result = sub_22A4DE3EC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22989B1E4(v31 + v32 * v28, v52, _s13PresenceStateOMa);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22989B24C(v33 + v32 * v28, v52, _s13PresenceStateOMa);
      }

      v34 = *(v16 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_22989B1E4(v52, *(v16 + 56) + v32 * v24, _s13PresenceStateOMa);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_229893D10(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s28DefaultRoomPresencePublisherC8ObserverVMa();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882088, &qword_22A586C88);
  v48 = a2;
  result = sub_22A4DE3EC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22989B1E4(v31 + v32 * v28, v52, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22989B24C(v33 + v32 * v28, v52, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      }

      v34 = *(v16 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_22989B1E4(v52, *(v16 + 56) + v32 * v24, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2298941B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  v47 = a2;
  result = sub_22A4DE3EC();
  v14 = result;
  if (*(v11 + 16))
  {
    v51 = v10;
    v43 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    v46 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v50 = *(v7 + 72);
      v29 = v28 + v50 * v27;
      if (v47)
      {
        (*v48)(v51, v29, v6);
        v30 = *(v11 + 56) + 24 * v27;
        v52 = *v30;
        v49 = *(v30 + 16);
      }

      else
      {
        (*v44)(v51, v29, v6);
        v31 = *(v11 + 56) + 24 * v27;
        v52 = *v31;
        v49 = *(v31 + 16);
        v32 = v49;
      }

      v33 = *(v14 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v50 * v22, v51, v6);
      v23 = *(v14 + 56) + 24 * v22;
      *v23 = v52;
      *(v23 + 16) = v49;
      ++*(v14 + 16);
      v7 = v45;
      v11 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2298945D0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_22A4DBB4C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882108, &unk_22A586D00);
  v46 = a2;
  result = sub_22A4DE3EC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_229894978(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_22A4DE3EC();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_229894C14(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E8, &unk_22A586CF0);
  v43 = a2;
  result = sub_22A4DE3EC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_229894FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      v24 = *(v8 + 40);
      result = sub_22A4DDECC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_229895274(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820E0, &qword_22A586CE8);
  v44 = a2;
  result = sub_22A4DE3EC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_229895634(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820C8, &qword_22A586CC8);
  v38 = a2;
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2298958DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882118, qword_22A586D10);
  v42 = a2;
  result = sub_22A4DE3EC();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_229895CB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
  v48 = a2;
  result = sub_22A4DE3EC();
  v13 = result;
  if (*(v10 + 16))
  {
    v53 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = v2;
    v45 = (v7 + 16);
    v46 = v10;
    v47 = v7;
    v50 = (v7 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v47 + 72) * v28;
      v30 = 16 * v28;
      v51 = *(v47 + 72);
      v52 = v25;
      if (v48)
      {
        (*v50)(v21, v29, v53);
        v31 = *(v10 + 56) + v30;
        v32 = *v31;
        v33 = *(v31 + 8);
      }

      else
      {
        (*v45)(v21, v29, v53);
        v34 = *(v10 + 56) + v30;
        v32 = *v34;
        v33 = *(v34 + 8);
        sub_229792944(*v34, v33);
      }

      v35 = *(v13 + 40);
      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v49;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v13 + 48) + v51 * v22, v21, v53);
      v23 = *(v13 + 56) + 16 * v22;
      *v23 = v32;
      *(v23 + 8) = v33;
      ++*(v13 + 16);
      v10 = v46;
      v18 = v52;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_2298960AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8820B8, &unk_22A586CB8);
  result = sub_22A4DE3EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_22A4DDECC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}