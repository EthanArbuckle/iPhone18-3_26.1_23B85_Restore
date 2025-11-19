uint64_t sub_1B63895F8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v5[3] = swift_getObjectType();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0) - 8) + 64) + 15;
  v27 = swift_task_alloc();
  v5[4] = v27;
  v8 = sub_1B63BEA04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v5[6] = v13;
  v14 = sub_1B63BE8E4();
  v5[7] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v5[8] = v15;
  v17 = *(v15 + 64) + 15;
  v18 = swift_task_alloc();
  v5[9] = v18;
  v19 = swift_task_alloc();
  v5[10] = v19;
  v5[11] = _Block_copy(a4);
  sub_1B63BE8B4();
  if (a2)
  {
    sub_1B63BE9E4();
    (*(v9 + 32))(v13, v11, v8);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  (*(v9 + 56))(v13, v20, 1, v8);
  if (a3)
  {
    sub_1B63BE8B4();
    v22 = v27;
    (*(v16 + 32))(v27, v18, v14);
    v21 = 0;
  }

  else
  {
    v22 = v27;
  }

  (*(v16 + 56))(v22, v21, 1, v14);
  v23 = a5;
  v24 = swift_task_alloc();
  v5[12] = v24;
  *v24 = v5;
  v24[1] = sub_1B6389910;

  return sub_1B638F0B4(v19);
}

uint64_t sub_1B6389910(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 96);
  v7 = *v3;
  *(v7 + 104) = v2;

  if (v2)
  {
    v8 = *(v7 + 80);
    v9 = *(v7 + 56);
    v10 = *(v7 + 64);

    (*(v10 + 8))(v8, v9);
    v11 = *(v7 + 88);
    v12 = *(v7 + 48);
    sub_1B6284EAC(*(v7 + 32), &qword_1EB9433E8, &qword_1B63C63D0);
    sub_1B6284EAC(v12, &unk_1EB943680, qword_1B63C4070);
    v13 = sub_1B63BE814();

    (*(v11 + 16))(v11, v13);
    v14 = *(v7 + 80);
    v15 = *(v7 + 72);
    v17 = *(v7 + 40);
    v16 = *(v7 + 48);
    v18 = *(v7 + 32);
    _Block_release(*(v7 + 88));

    v19 = *(v7 + 8);

    return v19();
  }

  else
  {
    *(v7 + 112) = a2;
    *(v7 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B6389B34, 0, 0);
  }
}

uint64_t sub_1B6389B34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v7;
  *(v9 + 40) = vextq_s8(v10, v10, 8uLL);
  sub_1B63BEE84();

  (*(v6 + 8))(v4, v5);
  v11 = *(v0 + 88);
  v12 = *(v0 + 48);
  sub_1B6284EAC(*(v0 + 32), &qword_1EB9433E8, &qword_1B63C63D0);
  sub_1B6284EAC(v12, &unk_1EB943680, qword_1B63C4070);
  if (v3)
  {
    v13 = sub_1B63BE814();

    (*(v11 + 16))(v11, v13);
  }

  else
  {
    (*(v11 + 16))(v11, 0);
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 72);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 32);
  _Block_release(*(v0 + 88));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1B6389CF4(void *a1)
{
  v2 = 0;
  v3 = sub_1B63BE8E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v123 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v120 - v8;
  v10 = sub_1B6382B0C(MEMORY[0x1E69E7CC0]);
  v11 = [a1 objectID];
  v12 = [v11 URIRepresentation];

  sub_1B63BE8B4();
  v13 = sub_1B63BE854();
  v15 = v14;
  v16 = *(v4 + 8);
  v125 = v3;
  v124 = v4 + 8;
  v122 = v16;
  v16(v9, v3);
  *(&v137 + 1) = MEMORY[0x1E69E6158];
  *&v136 = v13;
  *(&v136 + 1) = v15;
  v17 = a1;
  sub_1B628E928(&v136, &v134);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v132 = v10;
  sub_1B638DBB8(&v134, 0x44497463656A626FLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v19 = v132;
  v20 = [a1 entity];
  v21 = [v20 attributesByName];

  sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
  v22 = sub_1B63BEB74();

  v24 = v22 + 64;
  v23 = *(v22 + 64);
  v128 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v126 = 0;
  v127 = a1;
  while (v27)
  {
LABEL_12:
    v32 = __clz(__rbit64(v27)) | (v2 << 6);
    v33 = (v128[6] + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    v36 = *(v128[7] + 8 * v32);

    v129 = v36;
    v37 = sub_1B63BEBC4();
    v38 = [v17 valueForKey_];

    if (v38)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
    }

    v27 &= v27 - 1;
    v136 = v134;
    v137 = v135;
    sub_1B638C038(&v136, [v129 attributeType], &v134);
    sub_1B628C510(&v134, &v132, &unk_1EB943740, &qword_1B63C5030);
    if (!v133)
    {
      sub_1B6284EAC(&v132, &unk_1EB943740, &qword_1B63C5030);
      v49 = sub_1B6380EF4(v34, v35);
      v51 = v50;

      if (v51)
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v19;
        if (!v52)
        {
          sub_1B638E350();
          v19 = v130;
        }

        v53 = *(v19[6] + 16 * v49 + 8);

        sub_1B628E928((v19[7] + 32 * v49), v131);
        sub_1B638D858(v49, v19);

        sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
        sub_1B6284EAC(&v136, &unk_1EB943740, &qword_1B63C5030);
      }

      else
      {

        sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
        sub_1B6284EAC(&v136, &unk_1EB943740, &qword_1B63C5030);
        memset(v131, 0, sizeof(v131));
      }

      v30 = v131;
      goto LABEL_5;
    }

    sub_1B628E928(&v132, v131);
    v39 = v19;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v39;
    v42 = sub_1B6380EF4(v34, v35);
    v43 = v39[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_72;
    }

    v46 = v41;
    if (v39[3] >= v45)
    {
      if ((v40 & 1) == 0)
      {
        sub_1B638E350();
      }
    }

    else
    {
      sub_1B638CE9C(v45, v40);
      v47 = sub_1B6380EF4(v34, v35);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_78;
      }

      v42 = v47;
    }

    if (v46)
    {

      v19 = v130;
      v29 = (v130[7] + 32 * v42);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1B628E928(v131, v29);

      sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
      v30 = &v136;
LABEL_5:
      sub_1B6284EAC(v30, &unk_1EB943740, &qword_1B63C5030);
      goto LABEL_6;
    }

    v19 = v130;
    v130[(v42 >> 6) + 8] |= 1 << v42;
    v54 = (v19[6] + 16 * v42);
    *v54 = v34;
    v54[1] = v35;
    sub_1B628E928(v131, (v19[7] + 32 * v42));

    sub_1B6284EAC(&v134, &unk_1EB943740, &qword_1B63C5030);
    sub_1B6284EAC(&v136, &unk_1EB943740, &qword_1B63C5030);
    v55 = v19[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_73;
    }

    v19[2] = v57;
LABEL_6:
    v17 = v127;
  }

  while (1)
  {
    v31 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v31);
    ++v2;
    if (v27)
    {
      v2 = v31;
      goto LABEL_12;
    }
  }

  v58 = [v17 entity];
  v59 = [v58 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v60 = sub_1B63BEB74();

  v61 = 0;
  v63 = v60 + 64;
  v62 = *(v60 + 64);
  v129 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v62;
  v67 = (v64 + 63) >> 6;
  while (2)
  {
    v68 = v61;
    v128 = v19;
    if (!v66)
    {
      goto LABEL_36;
    }

LABEL_35:
    v61 = v68;
LABEL_39:
    v69 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v70 = v69 | (v61 << 6);
    v71 = (*(v129 + 6) + 16 * v70);
    v72 = *v71;
    v73 = v71[1];
    v74 = *(*(v129 + 7) + 8 * v70);

    v75 = v74;
    v76 = sub_1B63BEBC4();
    v77 = [v17 valueForKey_];

    if (v77)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      if ([v75 isToMany])
      {
        sub_1B629E3F0(&v136, &v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943578, &qword_1B63C63D8);
        if (swift_dynamicCast())
        {
          v78 = v126;
          sub_1B6384270(v132);
          v80 = v79;
          v126 = v78;

          *(&v135 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
          *&v134 = v80;
          sub_1B628E928(&v134, &v132);
          v81 = v128;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v131[0] = v81;
          v83 = sub_1B6380EF4(v72, v73);
          v85 = v81[2];
          v86 = (v84 & 1) == 0;
          v56 = __OFADD__(v85, v86);
          v87 = v85 + v86;
          if (v56)
          {
            goto LABEL_75;
          }

          v88 = v84;
          if (v81[3] >= v87)
          {
            if ((v82 & 1) == 0)
            {
              v115 = v83;
              sub_1B638E350();
              v83 = v115;
              if (v88)
              {
                goto LABEL_59;
              }

LABEL_66:
              v116 = *&v131[0];
              *(*&v131[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
              v117 = (v116[6] + 16 * v83);
              *v117 = v72;
              v117[1] = v73;
              sub_1B628E928(&v132, (v116[7] + 32 * v83));

              v19 = v116;
              __swift_destroy_boxed_opaque_existential_1(&v136);
              v118 = v116[2];
              v56 = __OFADD__(v118, 1);
              v114 = v118 + 1;
              if (v56)
              {
                goto LABEL_77;
              }

              goto LABEL_67;
            }
          }

          else
          {
            sub_1B638CE9C(v87, v82);
            v83 = sub_1B6380EF4(v72, v73);
            if ((v88 & 1) != (v89 & 1))
            {
              goto LABEL_78;
            }
          }

          if (v88)
          {
LABEL_59:
            v108 = v83;

            v106 = *&v131[0];
            v109 = (*(*&v131[0] + 56) + 32 * v108);
            __swift_destroy_boxed_opaque_existential_1(v109);
            sub_1B628E928(&v132, v109);
            goto LABEL_60;
          }

          goto LABEL_66;
        }
      }

      sub_1B629E3F0(&v136, &v134);
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);

        v19 = v128;
        continue;
      }

      v121 = v132;
      v90 = [v132 objectID];
      v91 = [v90 URIRepresentation];

      v92 = v123;
      sub_1B63BE8B4();

      v93 = sub_1B63BE854();
      v95 = v94;
      v122(v92, v125);
      *(&v135 + 1) = MEMORY[0x1E69E6158];
      *&v134 = v93;
      *(&v134 + 1) = v95;
      sub_1B628E928(&v134, &v132);
      v96 = v128;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *&v131[0] = v96;
      v98 = sub_1B6380EF4(v72, v73);
      v100 = v96[2];
      v101 = (v99 & 1) == 0;
      v56 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v56)
      {
        goto LABEL_74;
      }

      v103 = v99;
      if (v96[3] >= v102)
      {
        if ((v97 & 1) == 0)
        {
          v110 = v98;
          sub_1B638E350();
          v98 = v110;
          if (v103)
          {
            goto LABEL_56;
          }

          goto LABEL_62;
        }
      }

      else
      {
        sub_1B638CE9C(v102, v97);
        v98 = sub_1B6380EF4(v72, v73);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_78;
        }
      }

      if (v103)
      {
LABEL_56:
        v105 = v98;

        v106 = *&v131[0];
        v107 = (*(*&v131[0] + 56) + 32 * v105);
        __swift_destroy_boxed_opaque_existential_1(v107);
        sub_1B628E928(&v132, v107);

LABEL_60:
        v19 = v106;
        __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_68:
        v17 = v127;
        continue;
      }

LABEL_62:
      v111 = *&v131[0];
      *(*&v131[0] + 8 * (v98 >> 6) + 64) |= 1 << v98;
      v112 = (v111[6] + 16 * v98);
      *v112 = v72;
      v112[1] = v73;
      sub_1B628E928(&v132, (v111[7] + 32 * v98));

      v19 = v111;
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v113 = v111[2];
      v56 = __OFADD__(v113, 1);
      v114 = v113 + 1;
      if (v56)
      {
        goto LABEL_76;
      }

LABEL_67:
      v19[2] = v114;
      goto LABEL_68;
    }

    break;
  }

  v68 = v61;
  v19 = v128;
  if (v66)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v61 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v61 >= v67)
    {

      return v19;
    }

    v66 = *(v63 + 8 * v61);
    ++v68;
    if (v66)
    {
      goto LABEL_39;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

id sub_1B638A994(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = 0;
  v69 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v60 - v9;
  v11 = sub_1B63BE8E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v16 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
    if (v17)
    {
      sub_1B629E3F0(*(a3 + 56) + 32 * v16, v68);
      if (swift_dynamicCast())
      {
        sub_1B63BE8D4();

        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          sub_1B6284EAC(v10, &qword_1EB9433E8, &qword_1B63C63D0);
          goto LABEL_19;
        }

        (*(v12 + 32))(v15, v10, v11);
        v18 = sub_1B63BE8C4();
        if (!v19)
        {
          goto LABEL_12;
        }

        if (v18 == 0x616465726F632D78 && v19 == 0xEA00000000006174)
        {
        }

        else
        {
          v21 = sub_1B63BF364();

          if ((v21 & 1) == 0)
          {
LABEL_12:
            (*(v12 + 8))(v15, v11);
            goto LABEL_19;
          }
        }

        v62 = 0;
        v22 = [a4 persistentStoreCoordinator];
        if (v22)
        {
          v23 = v22;
          v24 = sub_1B63BE884();
          v25 = [v23 managedObjectIDForURIRepresentation_];

          if (v25)
          {
            *&v68[0] = 0;
            v26 = [a4 existingObjectWithID:v25 error:v68];
            v27 = *&v68[0];
            if (v26)
            {
              v28 = v26;
              v63 = a3;
              v29 = *(v12 + 8);
              v30 = *&v68[0];
              v29(v15, v11);
              goto LABEL_21;
            }

            goto LABEL_43;
          }
        }

        (*(v12 + 8))(v15, v11);
        v6 = v62;
      }
    }
  }

LABEL_19:
  while (1)
  {
    v31 = objc_opt_self();
    v32 = sub_1B63BEBC4();
    v25 = [v31 entityForName:v32 inManagedObjectContext:a4];

    if (!v25)
    {
      break;
    }

    v62 = v6;
    v63 = a3;
    v28 = [objc_allocWithZone(MEMORY[0x1E695D620]) initWithEntity:v25 insertIntoManagedObjectContext:a4];
LABEL_21:

    v33 = v28;
    v25 = [v33 entity];
    v64 = v33;

    v34 = [v25 attributesByName];
    sub_1B6281C60(0, &qword_1EB943560, 0x1E695D530);
    a3 = sub_1B63BEB74();

    v12 = 0;
    a4 = (a3 + 64);
    v35 = 1 << *(a3 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a3 + 64);
    v27 = ((v35 + 63) >> 6);
    while (v37)
    {
LABEL_29:
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v40 = v39 | (v12 << 6);
      v41 = *(a3 + 48) + 16 * v40;
      v15 = *v41;
      v11 = *(v41 + 8);
      v25 = *(*(a3 + 56) + 8 * v40);
      if (*v41 != 0x44497463656A626FLL || v11 != 0xE800000000000000)
      {
        v42 = *v41;
        v43 = *(v41 + 8);
        if ((sub_1B63BF364() & 1) == 0)
        {
          if (v63[2])
          {

            v44 = v25;
            v25 = v63;
            v45 = sub_1B6380EF4(v15, v11);
            if (v46)
            {
              sub_1B629E3F0(v25[7] + 32 * v45, v67);
              sub_1B628E928(v67, v68);
              sub_1B629E3F0(v68, v65);
              v61 = v44;
              sub_1B638BA00(v65, [v44 attributeType], v67);
              sub_1B6284EAC(v65, &unk_1EB943740, &qword_1B63C5030);
              sub_1B628C510(v67, v65, &unk_1EB943740, &qword_1B63C5030);
              v47 = v66;
              if (v66)
              {
                v48 = __swift_project_boxed_opaque_existential_0(v65, v66);
                v60 = &v60;
                v49 = *(v47 - 8);
                v50 = *(v49 + 64);
                MEMORY[0x1EEE9AC00](v48);
                v52 = &v60 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v49 + 16))(v52);
                v53 = sub_1B63BF354();
                v54 = v52;
                v55 = v53;
                (*(v49 + 8))(v54, v47);
                __swift_destroy_boxed_opaque_existential_1(v65);
              }

              else
              {
                v55 = 0;
              }

              v25 = sub_1B63BEBC4();

              [v64 setValue:v55 forKey:v25];
              swift_unknownObjectRelease();

              sub_1B6284EAC(v67, &unk_1EB943740, &qword_1B63C5030);
              __swift_destroy_boxed_opaque_existential_1(v68);
            }

            else
            {
            }
          }
        }
      }
    }

    while (1)
    {
      v38 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v38 >= v27)
      {

        goto LABEL_41;
      }

      v37 = *(a4 + v38);
      ++v12;
      if (v37)
      {
        v12 = v38;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_43:
    v58 = v27;
    v59 = sub_1B63BE824();

    swift_willThrow();
    (*(v12 + 8))(v15, v11);
    v6 = 0;
  }

  v64 = 0;
LABEL_41:
  v56 = *MEMORY[0x1E69E9840];
  return v64;
}

void sub_1B638B29C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1B6393B24;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6287EB4;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a2;

  [v16 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v14);
}

uint64_t sub_1B638B484(int a1, id a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
    sub_1B63BED04();
  }

  a4;
  [a5 viewContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8);
  return sub_1B63BED14();
}

uint64_t sub_1B638B6B8(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1B63BE8E4();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_1B63BE8B4();
  v10 = a3;
  v11 = swift_task_alloc();
  v3[7] = v11;
  *v11 = v3;
  v11[1] = sub_1B638B7F8;

  return sub_1B638F0B4(v9);
}

uint64_t sub_1B638B7F8(void *a1, void *a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 56);
  v9 = *(*v3 + 48);
  v10 = *v3;

  v11 = (v9 + 16);
  v12 = v7[6];
  v13 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    v14 = sub_1B63BE814();

    (*v11)(v12, 0, 0, v14);
    _Block_release(v12);
  }

  else
  {
    (*v11)(v12, a1, a2, 0);
    _Block_release(v12);
  }

  v15 = v7[5];

  v16 = *(v10 + 8);

  return v16();
}

double sub_1B638BA00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  sub_1B628C510(a1, &v40, &unk_1EB943740, &qword_1B63C5030);
  if (v41)
  {
    sub_1B628E928(&v40, v42);
    if (a2 <= 799)
    {
      if (a2 > 399)
      {
        if (a2 > 599)
        {
          if (a2 != 600)
          {
            if (a2 == 700)
            {
              sub_1B628E928(v42, a3);
              return result;
            }

            goto LABEL_38;
          }
        }

        else if (a2 != 400 && a2 != 500)
        {
          goto LABEL_38;
        }
      }

      else if (a2 > 199)
      {
        if (a2 != 200 && a2 != 300)
        {
          goto LABEL_38;
        }
      }

      else if (a2 != 100)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v42, &v40);
      v28 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v29 = v39;
        *(a3 + 24) = v28;
        *a3 = v29;
        goto LABEL_33;
      }

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_39;
    }

    if (a2 > 1199)
    {
      goto LABEL_38;
    }

    if (a2 > 999)
    {
      if (a2 == 1000)
      {
        sub_1B629E3F0(v42, &v40);
        if (!swift_dynamicCast())
        {
          goto LABEL_38;
        }

        v32 = sub_1B63BE8F4();
        v34 = v33;

        if (v34 >> 60 == 15)
        {
          goto LABEL_38;
        }

        *(a3 + 24) = MEMORY[0x1E6969080];
        *a3 = v32;
        *(a3 + 8) = v34;
LABEL_33:
        __swift_destroy_boxed_opaque_existential_1(v42);
        return result;
      }

      if (a2 != 1100)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v42, &v40);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      sub_1B63BE9A4();

      v22 = sub_1B63BEA04();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) != 1)
      {
        *(a3 + 24) = v22;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(v23 + 32))(boxed_opaque_existential_0, v9, v22);
        goto LABEL_33;
      }

      __swift_destroy_boxed_opaque_existential_1(v42);
      v24 = &unk_1EB943680;
      v25 = qword_1B63C4070;
      v26 = v9;
    }

    else
    {
      if (a2 == 800)
      {
        sub_1B629E3F0(v42, &v40);
        v30 = MEMORY[0x1E69E6370];
        if (swift_dynamicCast())
        {
          v31 = v39;
          *(a3 + 24) = v30;
          *a3 = v31;
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      if (a2 != 900)
      {
        goto LABEL_38;
      }

      sub_1B629E3F0(v42, &v40);
      if (!swift_dynamicCast())
      {
        goto LABEL_38;
      }

      v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v18 = sub_1B63BEBC4();
      [v17 setDateFormat_];

      v19 = sub_1B63BEBC4();

      v20 = [v17 dateFromString_];

      if (v20)
      {
        sub_1B63BE974();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v36 = sub_1B63BE994();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v14, v21, 1, v36);
      sub_1B638FE98(v14, v16);
      if ((*(v37 + 48))(v16, 1, v36) != 1)
      {
        *(a3 + 24) = v36;
        v38 = __swift_allocate_boxed_opaque_existential_0(a3);
        (*(v37 + 32))(v38, v16, v36);

        goto LABEL_33;
      }

      __swift_destroy_boxed_opaque_existential_1(v42);

      v24 = &unk_1EB943210;
      v25 = &unk_1B63C3F50;
      v26 = v16;
    }

    sub_1B6284EAC(v26, v24, v25);
    goto LABEL_39;
  }

  sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
LABEL_39:
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1B638C038@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_1B63BEA04();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_1B63BE994();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B628C510(a1, &v46, &unk_1EB943740, &qword_1B63C5030);
  if (!v47)
  {
    v23 = &unk_1EB943740;
    v24 = &qword_1B63C5030;
    v25 = &v46;
    goto LABEL_8;
  }

  sub_1B628E928(&v46, v48);
  if (a2 <= 799)
  {
    if (a2 > 399)
    {
      if (a2 > 599)
      {
        if (a2 != 600 && a2 != 700)
        {
          goto LABEL_33;
        }
      }

      else if (a2 != 400 && a2 != 500)
      {
        goto LABEL_33;
      }
    }

    else if (a2 > 199)
    {
      if (a2 != 200 && a2 != 300)
      {
        goto LABEL_33;
      }
    }

    else if (a2 != 100)
    {
      goto LABEL_33;
    }

LABEL_29:
    sub_1B628E928(v48, a3);
    return result;
  }

  if (a2 > 1199)
  {
    goto LABEL_33;
  }

  if (a2 <= 999)
  {
    if (a2 == 800)
    {
      goto LABEL_29;
    }

    if (a2 == 900)
    {
      sub_1B629E3F0(v48, &v46);
      if (swift_dynamicCast())
      {
        (*(v19 + 56))(v17, 0, 1, v18);
        (*(v19 + 32))(v22, v17, v18);
        v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v27 = sub_1B63BEBC4();
        [v26 setDateFormat_];

        v28 = sub_1B63BE954();
        v29 = [v26 stringFromDate_];

        v30 = sub_1B63BEBD4();
        v32 = v31;

        *(a3 + 24) = MEMORY[0x1E69E6158];
        *a3 = v30;
        *(a3 + 8) = v32;
        (*(v19 + 8))(v22, v18);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1(v48);
        return result;
      }

      __swift_destroy_boxed_opaque_existential_1(v48);
      (*(v19 + 56))(v17, 1, 1, v18);
      v23 = &unk_1EB943210;
      v24 = &unk_1B63C3F50;
      v25 = v17;
      goto LABEL_8;
    }

LABEL_33:
    __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_34;
  }

  if (a2 == 1000)
  {
    sub_1B629E3F0(v48, &v46);
    if (swift_dynamicCast())
    {
      v37 = v44;
      v38 = v45;
      v39 = sub_1B63BE914();
      v41 = v40;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      sub_1B628BAC0(v37, v38);
      *a3 = v39;
      *(a3 + 8) = v41;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (a2 != 1100)
  {
    goto LABEL_33;
  }

  sub_1B629E3F0(v48, &v46);
  if (swift_dynamicCast())
  {
    v33 = v43;
    (*(v43 + 56))(v9, 0, 1, v10);
    (*(v33 + 32))(v13, v9, v10);
    v34 = sub_1B63BE9B4();
    *(a3 + 24) = MEMORY[0x1E69E6158];
    *a3 = v34;
    *(a3 + 8) = v35;
    (*(v33 + 8))(v13, v10);
    goto LABEL_32;
  }

  __swift_destroy_boxed_opaque_existential_1(v48);
  (*(v43 + 56))(v9, 1, 1, v10);
  v23 = &unk_1EB943680;
  v24 = qword_1B63C4070;
  v25 = v9;
LABEL_8:
  sub_1B6284EAC(v25, v23, v24);
LABEL_34:
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

id sub_1B638C638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, _OWORD *, uint64_t))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v9 = a1;
  }

  a5(v19, v18, a4);

  sub_1B6284EAC(v18, &unk_1EB943740, &qword_1B63C5030);
  v10 = v20;
  if (v20)
  {
    v11 = __swift_project_boxed_opaque_existential_0(v19, v20);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1B63BF354();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id MapsSyncCommandLineHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncCommandLineHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MapsSyncCommandLineHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1B638C8D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B6380EF4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B638E350();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B628E928((*(v12 + 56) + 32 * v9), a3);
    sub_1B638D858(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B638C97C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C8, &unk_1B63C64F0);
  v33 = a2;
  result = sub_1B63BF2E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1B63BF434();
      sub_1B63BEC24();

      result = sub_1B63BF494();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B638CC34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
  result = sub_1B63BF2E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1B63BEF14();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B638CE9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  v36 = a2;
  result = sub_1B63BF2E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B628E928(v25, v37);
      }

      else
      {
        sub_1B629E3F0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B628E928(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B638D154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
  v38 = a2;
  result = sub_1B63BF2E4();
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
      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
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

uint64_t sub_1B638D3FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943598, &qword_1B63C64C0);
  v38 = a2;
  result = sub_1B63BF2E4();
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
      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
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

uint64_t sub_1B638D69C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1B63BF434();
      sub_1B63BEC24();

      result = sub_1B63BF494();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B638D858(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1B63BF434();

      sub_1B63BEC24();
      v14 = sub_1B63BF494();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B638DA08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B63BEFC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B63BF434();

      sub_1B63BEC24();
      v13 = sub_1B63BF494();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1B638DBB8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6380EF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B638E350();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B638CE9C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B6380EF4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B63BF3D4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1B628E928(a1, v23);
  }

  else
  {
    sub_1B638DECC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1B638DD08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6380EF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B638D154(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B6380EF4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B63BF3D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B638E4F4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_1B638DE84(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1B638DECC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B628E928(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1B638DF38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943530, &unk_1B63C6500);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B638E094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C8, &unk_1B63C64F0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B638E1F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435D0, qword_1B63C6218);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B638E350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B629E3F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B628E928(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B638E4F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B0, &unk_1B63C64D0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B638E664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943598, &qword_1B63C64C0);
  v2 = *v0;
  v3 = sub_1B63BF2D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B638E7CC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B638E92C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1B638EB18(v9, v4, v2);
  result = MEMORY[0x1B8C93430](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B638E92C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v25 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B629E3F0(*(a3 + 56) + 32 * v13, v24);
    sub_1B629E3F0(v24, &v23);
    swift_bridgeObjectRetain_n();

    if (swift_dynamicCast())
    {

      if ((v22 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v17 = *v21 & 0xFFFFFFFFFFFFLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v24);

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v24);

LABEL_18:
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1B638EB90(v20, a2, v25, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1B638EB90(v20, a2, v25, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B638EB18(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B638E92C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B638EB90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943590, &unk_1B63C63F0);
  result = sub_1B63BF304();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1B629E3F0(v17 + 32 * v16, v34);
    sub_1B628E928(v34, v33);
    v21 = *(v9 + 40);
    sub_1B63BF434();

    sub_1B63BEC24();
    result = sub_1B63BF494();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1B628E928(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1B638EDE0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x1B8C92750](a1, a2, v7);
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
    if (sub_1B63BF024() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B63BF034();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1B63BEF14();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1B63BEF24();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
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

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_1B638F004(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B63BEC34();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B63BEC64();
}

uint64_t sub_1B638F0B4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 40) = a1;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B638F144, 0, 0);
}

uint64_t sub_1B638F144()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = sub_1B63BE884();
  v0[4] = 0;
  v4 = [v2 cachedModelForPersistentStoreWithURL:v3 options:0 error:v0 + 4];
  v0[6] = v4;

  v5 = v0[4];
  if (v4)
  {
    v6 = v0[5];
    v7 = v5;
    sub_1B63BE874();
    v8 = objc_allocWithZone(MEMORY[0x1E695D688]);
    v9 = v4;
    v10 = sub_1B63BEBC4();

    v11 = [v8 initWithName:v10 managedObjectModel:v9];
    v0[7] = v11;

    v12 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v13 = sub_1B63BE884();
    v14 = [v12 initWithURL_];
    v0[8] = v14;

    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    v15 = sub_1B63BEEF4();
    [v14 setOption:v15 forKey:*MEMORY[0x1E695D3C0]];

    v16 = sub_1B63BEEF4();
    [v14 setOption:v16 forKey:*MEMORY[0x1E695D430]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B63C3D70;
    *(v17 + 32) = v14;
    sub_1B6281C60(0, &qword_1EDB0F630, 0x1E695D6C8);
    v18 = v14;
    v19 = sub_1B63BEC94();

    [v11 setPersistentStoreDescriptions_];

    v20 = swift_task_alloc();
    v0[9] = v20;
    *(v20 + 16) = v11;
    *(v20 + 24) = v9;
    v21 = *(MEMORY[0x1E69E8920] + 4);
    v22 = swift_task_alloc();
    v0[10] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435B8, &qword_1B63C64E0);
    *v22 = v0;
    v22[1] = sub_1B638F4F4;
    v24 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001B63CBA00, sub_1B6393B1C, v20, v23);
  }

  else
  {
    v25 = v5;
    sub_1B63BE824();

    swift_willThrow();
    v26 = v0[1];
    v27 = *MEMORY[0x1E69E9840];

    return v26();
  }
}

uint64_t sub_1B638F4F4()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B638F6EC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1B638F644;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B638F644()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 8);
  v6 = *MEMORY[0x1E69E9840];

  return v5(v3, v4);
}

uint64_t sub_1B638F6EC()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = *(v0 + 88);
  v5 = *(v0 + 8);
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.exportDatabase(url:entityName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B628FBFC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.importDatabase(url:dictionary:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B628CAA0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.getCounts(url:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B629DD18;

  return v8(a1);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.purgeDatabase(url:entityName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B628CAA0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MapsSyncCommandLineHelpers.deleteObject(url:identifier:managedObjectId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B628E340;

  return v12(a1, a2, a3);
}

uint64_t sub_1B638FE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B638FF08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B638B6B8(v2, v3, v4);
}

uint64_t sub_1B638FFBC(uint64_t a1, uint64_t *a2)
{
  v262 = a1;
  v244 = sub_1B63BE8E4();
  v3 = *(*(v244 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v244);
  v242 = &v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v235 = &v228 - v7;
  v8 = *a2;
  v9 = *a2 + 64;
  v10 = 1 << *(*a2 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(*a2 + 64);
  v13 = (v10 + 63) >> 6;
  v241 = "yyyy-MM-dd HH:mm:ss Z";
  v243 = (v6 + 8);

  v14 = 0;
  v239 = 0;
  v15 = v8;
  v261 = v8;
  v246 = v9;
  v245 = v13;
  v247 = a2;
LABEL_5:
  v252 = v15;
LABEL_8:
  if (v12)
  {
    v16 = v12;
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v16 = *(v9 + 8 * v17);
    ++v14;
    if (v16)
    {
      v14 = v17;
LABEL_14:
      v12 = (v16 - 1) & v16;
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }

      v18 = (*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v18;
      v19 = v18[1];

      v21 = sub_1B6380EF4(v20, v19);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      v256 = v12;
      v23 = *(*(v15 + 56) + 8 * v21);
      v24 = objc_opt_self();

      v25 = sub_1B638F004(2uLL, v20, v19);
      v27 = v26;
      v29 = v28;
      v30 = v19;
      v32 = v31;
      v255 = v30;

      MEMORY[0x1B8C92300](v25, v27, v29, v32);

      v33 = sub_1B63BEBC4();

      v34 = [v24 entityForName:v33 inManagedObjectContext:v262];

      if (!v34)
      {

        v12 = v256;
        v15 = v252;
        v8 = v261;
LABEL_7:

        goto LABEL_8;
      }

      v230 = v24;
      v233 = v34;
      v232 = v20;
      v253 = v23;
      v231 = v23[2];
      if (v231)
      {
        v35 = 0;
        v36 = v247;
        v8 = v261;
        while (1)
        {
          if (v35 >= v253[2])
          {
            goto LABEL_156;
          }

          v38 = v253[v35 + 4];

          v40 = v239;
          v265 = sub_1B638E7CC(v39);
          v239 = v40;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v253 = sub_1B638C8B0(v253);
          }

          v41 = v253;
          if (v35 >= v253[2])
          {
            goto LABEL_157;
          }

          v42 = &v253[v35];
          v44 = v42[4];
          v43 = v42 + 4;
          *v43 = v265;

          if (v35 >= v41[2])
          {
            goto LABEL_158;
          }

          v254 = v43;
          v45 = *v43;
          if (*(*v43 + 16))
          {
            v46 = *v43;

            v47 = sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
            if (v48)
            {
              sub_1B629E3F0(*(v45 + 56) + 32 * v47, &v273);

              goto LABEL_30;
            }
          }

          v273 = 0u;
          v274 = 0u;
LABEL_30:
          if (v35 >= v253[2])
          {
            goto LABEL_159;
          }

          v234 = v35 + 1;
          sub_1B63846A0(&v273, 0x44497463656A626FLL, 0xE800000000000000);
          v49 = [v233 relationshipsByName];
          sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
          v50 = sub_1B63BEB74();

          v51 = 0;
          v53 = v50 + 64;
          v52 = *(v50 + 64);
          v240 = v50;
          v54 = 1 << *(v50 + 32);
          if (v54 < 64)
          {
            v55 = ~(-1 << v54);
          }

          else
          {
            v55 = -1;
          }

          v56 = v55 & v52;
          v57 = (v54 + 63) >> 6;
          v258 = v35;
          v238 = v50 + 64;
          v237 = v57;
          if (v56)
          {
            while (1)
            {
LABEL_39:
              v59 = v253;
              v60 = v254;
              if (v35 >= v253[2])
              {
                goto LABEL_154;
              }

              v251 = (v56 - 1) & v56;
              v61 = __clz(__rbit64(v56)) | (v51 << 6);
              v62 = *(v240 + 56);
              v63 = (*(v240 + 48) + 16 * v61);
              v64 = v63[1];
              v259 = *v63;
              v65 = *(v62 + 8 * v61);
              v66 = *v254;
              v67 = *(*v254 + 16);
              v263 = v64;

              v257 = v65;
              if (v67)
              {
                break;
              }

LABEL_52:
              if (v258 >= v59[2])
              {
                goto LABEL_155;
              }

              v78 = *v60;
              if (!*(*v60 + 16))
              {
                goto LABEL_58;
              }

              v79 = *v60;

              v80 = sub_1B6380EF4(0x6F6974616C65725FLL, 0xEE0073706968736ELL);
              if ((v81 & 1) == 0)
              {

LABEL_58:
                v82 = MEMORY[0x1E69E7CC0];
                goto LABEL_59;
              }

              sub_1B629E3F0(*(v78 + 56) + 32 * v80, &v273);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435A8, &qword_1B63C64C8);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_58;
              }

              v82 = v271;
LABEL_59:
              v265 = *(v82 + 16);
              if (v265)
              {
                v83 = 0;
                v264 = v82 + 32;
                do
                {
                  if (v83 >= *(v82 + 16))
                  {
                    goto LABEL_152;
                  }

                  v84 = *(v264 + 8 * v83);
                  if (*(v84 + 16))
                  {
                    v85 = *(v264 + 8 * v83);

                    v86 = sub_1B6380EF4(0x655368637465665FLL, 0xEE00726F7463656CLL);
                    if (v87)
                    {
                      sub_1B629E3F0(*(v84 + 56) + 32 * v86, &v273);
                      if (swift_dynamicCast())
                      {
                        v88 = sub_1B63BEBF4();
                        v90 = v89;

                        *&v273 = v88;
                        *(&v273 + 1) = v90;
                        *&v271 = sub_1B63BEBF4();
                        *(&v271 + 1) = v91;
                        sub_1B6349C74();
                        LOBYTE(v88) = sub_1B63BEF74();

                        if (v88)
                        {
                          if (*(v84 + 16) && (v92 = sub_1B6380EF4(0x6669746E6564695FLL, 0xEC00000073726569), (v93 & 1) != 0) && (sub_1B629E3F0(*(v84 + 56) + 32 * v92, &v273), v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0), (swift_dynamicCast() & 1) != 0))
                          {

                            *(&v274 + 1) = v94;
                            *&v273 = v271;
                            v95 = v253[2];
                            v96 = v263;

                            if (v258 >= v95)
                            {
                              goto LABEL_160;
                            }

                            sub_1B628E928(&v273, &v271);
                            v97 = v254;
                            v98 = *v254;
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *&v269 = *v97;
                            v100 = v269;
                            *v97 = 0x8000000000000000;
                            v101 = sub_1B6380EF4(v259, v96);
                            v103 = *(v100 + 16);
                            v104 = (v102 & 1) == 0;
                            v105 = __OFADD__(v103, v104);
                            v106 = v103 + v104;
                            if (v105)
                            {
                              goto LABEL_161;
                            }

                            v107 = v102;
                            if (*(v100 + 24) >= v106)
                            {
                              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                              {
                                v166 = v101;
                                sub_1B638E350();
                                v101 = v166;
                              }
                            }

                            else
                            {
                              sub_1B638CE9C(v106, isUniquelyReferenced_nonNull_native);
                              v101 = sub_1B6380EF4(v259, v263);
                              if ((v107 & 1) != (v108 & 1))
                              {
                                goto LABEL_168;
                              }
                            }

                            v142 = v259;
                            v143 = v269;
                            if (v107)
                            {
                              v144 = (*(v269 + 56) + 32 * v101);
                              __swift_destroy_boxed_opaque_existential_1(v144);
                              sub_1B628E928(&v271, v144);
                            }

                            else
                            {
                              *(v269 + 8 * (v101 >> 6) + 64) |= 1 << v101;
                              v145 = (v143[6] + 16 * v101);
                              v146 = v263;
                              *v145 = v142;
                              v145[1] = v146;
                              sub_1B628E928(&v271, (v143[7] + 32 * v101));
                              v147 = v143[2];
                              v105 = __OFADD__(v147, 1);
                              v148 = v147 + 1;
                              if (v105)
                              {
                                goto LABEL_162;
                              }

                              v143[2] = v148;
                            }

                            v149 = *v254;
                            *v254 = v143;
                          }

                          else if (*(v84 + 16))
                          {
                            v109 = sub_1B6380EF4(0x737463656A626F5FLL, 0xE800000000000000);
                            if (v110)
                            {
                              sub_1B629E3F0(*(v84 + 56) + 32 * v109, &v273);

                              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
                              if ((swift_dynamicCast() & 1) == 0)
                              {
                                goto LABEL_62;
                              }

                              v112 = v271;
                              v113 = [v257 inverseRelationship];
                              if (v113)
                              {
                                v114 = v113;
                                v115 = [v113 entity];

                                v116 = [v115 name];
                                if (v116)
                                {
                                  v117 = [v230 entityForName:v116 inManagedObjectContext:v262];

                                  v236 = v117;
                                  if (v117)
                                  {
                                    v229 = v111;
                                    v118 = *(v112 + 16);
                                    v228 = v112;
                                    if (v118)
                                    {
                                      v119 = (v112 + 40);
                                      v260 = MEMORY[0x1E69E7CC0];
                                      do
                                      {
                                        v250 = v118;
                                        v121 = *(v119 - 1);
                                        v120 = *v119;
                                        v122 = objc_allocWithZone(MEMORY[0x1E695D620]);

                                        v249 = [v122 initWithEntity:v236 insertIntoManagedObjectContext:{v262, v228}];
                                        *(&v272 + 1) = MEMORY[0x1E69E6158];
                                        *&v271 = v121;
                                        *(&v271 + 1) = v120;
                                        sub_1B638BA00(&v271, 700, &v273);
                                        sub_1B6284EAC(&v271, &unk_1EB943740, &qword_1B63C5030);
                                        sub_1B628C510(&v273, &v271, &unk_1EB943740, &qword_1B63C5030);
                                        v123 = *(&v272 + 1);
                                        if (*(&v272 + 1))
                                        {
                                          v124 = __swift_project_boxed_opaque_existential_0(&v271, *(&v272 + 1));
                                          v125 = *(v123 - 8);
                                          v126 = *(v125 + 64);
                                          MEMORY[0x1EEE9AC00](v124);
                                          v128 = &v228 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
                                          (*(v125 + 16))(v128);
                                          v129 = sub_1B63BF354();
                                          (*(v125 + 8))(v128, v123);
                                          __swift_destroy_boxed_opaque_existential_1(&v271);
                                        }

                                        else
                                        {
                                          v129 = 0;
                                        }

                                        v130 = sub_1B63BEBC4();
                                        v131 = v249;
                                        [v249 setValue:v129 forKey:v130];
                                        swift_unknownObjectRelease();

                                        v132 = [v131 objectID];
                                        v133 = [v132 URIRepresentation];

                                        v134 = v242;
                                        sub_1B63BE8B4();

                                        v135 = sub_1B63BE854();
                                        v248 = v136;
                                        (*v243)(v134, v244);
                                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                        {
                                          v260 = sub_1B62B23B4(0, *(v260 + 2) + 1, 1, v260);
                                        }

                                        v138 = *(v260 + 2);
                                        v137 = *(v260 + 3);
                                        if (v138 >= v137 >> 1)
                                        {
                                          v260 = sub_1B62B23B4((v137 > 1), v138 + 1, 1, v260);
                                        }

                                        sub_1B6284EAC(&v273, &unk_1EB943740, &qword_1B63C5030);
                                        v139 = v260;
                                        *(v260 + 2) = v138 + 1;
                                        v140 = &v139[16 * v138];
                                        v141 = v248;
                                        *(v140 + 4) = v135;
                                        *(v140 + 5) = v141;
                                        v119 += 2;
                                        v118 = v250 - 1;
                                      }

                                      while (v250 != 1);
                                    }

                                    else
                                    {
                                      v260 = MEMORY[0x1E69E7CC0];
                                    }

                                    *(&v274 + 1) = v229;
                                    *&v273 = v260;
                                    v150 = v253[2];
                                    v151 = v263;

                                    if (v258 >= v150)
                                    {
                                      goto LABEL_163;
                                    }

                                    sub_1B628E928(&v273, &v271);
                                    v152 = v254;
                                    v153 = *v254;
                                    v154 = swift_isUniquelyReferenced_nonNull_native();
                                    *&v269 = *v152;
                                    v155 = v269;
                                    *v152 = 0x8000000000000000;
                                    v156 = v259;
                                    v157 = sub_1B6380EF4(v259, v151);
                                    v159 = *(v155 + 16);
                                    v160 = (v158 & 1) == 0;
                                    v105 = __OFADD__(v159, v160);
                                    v161 = v159 + v160;
                                    if (v105)
                                    {
                                      goto LABEL_164;
                                    }

                                    v162 = v158;
                                    if (*(v155 + 24) >= v161)
                                    {
                                      if (v154)
                                      {
                                        goto LABEL_109;
                                      }

                                      v167 = v157;
                                      sub_1B638E350();
                                      v157 = v167;
                                      v164 = v269;
                                      if ((v162 & 1) == 0)
                                      {
                                        goto LABEL_112;
                                      }

LABEL_110:
                                      v165 = (v164[7] + 32 * v157);
                                      __swift_destroy_boxed_opaque_existential_1(v165);
                                      sub_1B628E928(&v271, v165);
                                    }

                                    else
                                    {
                                      sub_1B638CE9C(v161, v154);
                                      v157 = sub_1B6380EF4(v156, v151);
                                      if ((v162 & 1) != (v163 & 1))
                                      {
                                        goto LABEL_168;
                                      }

LABEL_109:
                                      v164 = v269;
                                      if (v162)
                                      {
                                        goto LABEL_110;
                                      }

LABEL_112:
                                      v164[(v157 >> 6) + 8] |= 1 << v157;
                                      v168 = (v164[6] + 16 * v157);
                                      v169 = v263;
                                      *v168 = v156;
                                      v168[1] = v169;
                                      sub_1B628E928(&v271, (v164[7] + 32 * v157));
                                      v170 = v164[2];
                                      v105 = __OFADD__(v170, 1);
                                      v171 = v170 + 1;
                                      if (v105)
                                      {
                                        goto LABEL_165;
                                      }

                                      v164[2] = v171;
                                    }

                                    *v254 = v164;

                                    goto LABEL_62;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_62:
                  ++v83;
                }

                while (v83 != v265);
              }

              v36 = v247;
              v8 = v261;
              v9 = v246;
              v13 = v245;
              v53 = v238;
              v57 = v237;
              v56 = v251;
LABEL_116:
              v35 = v258;
              if (!v56)
              {
                goto LABEL_35;
              }
            }

            v68 = sub_1B6380EF4(0xD000000000000010, v241 | 0x8000000000000000);
            if ((v69 & 1) == 0)
            {
              goto LABEL_51;
            }

            sub_1B629E3F0(*(v66 + 56) + 32 * v68, &v273);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_52;
            }

            v70 = v271;
            v71 = [v257 inverseRelationship];
            if (!v71 || (v72 = v71, v73 = [v71 entity], v72, v74 = objc_msgSend(v73, sel_name), v73, !v74))
            {
LABEL_51:

              goto LABEL_52;
            }

            if (sub_1B63BEBD4() == 0x70614D6E6978694DLL && v75 == 0xEC0000006D657449)
            {
            }

            else
            {
              v77 = sub_1B63BF364();

              if ((v77 & 1) == 0)
              {

LABEL_137:
                v60 = v254;
                goto LABEL_52;
              }
            }

            v172 = [v230 entityForName:v74 inManagedObjectContext:{v262, v228}];

            if (!v172)
            {

              goto LABEL_137;
            }

            v270 = MEMORY[0x1E69E6158];
            v269 = v70;
            sub_1B628C510(&v269, &v266, &unk_1EB943740, &qword_1B63C5030);
            if (v267)
            {
              sub_1B628E928(&v266, &v268);
              sub_1B629E3F0(&v268, &v266);
              if (swift_dynamicCast())
              {
                v173 = sub_1B63BE8F4();
                v175 = v174;

                if (v175 >> 60 == 15)
                {
                  __swift_destroy_boxed_opaque_existential_1(&v268);
                  v271 = 0u;
                  v272 = 0u;
                }

                else
                {
                  *(&v272 + 1) = MEMORY[0x1E6969080];
                  *&v271 = v173;
                  *(&v271 + 1) = v175;
                  __swift_destroy_boxed_opaque_existential_1(&v268);
                }

                goto LABEL_130;
              }

              __swift_destroy_boxed_opaque_existential_1(&v268);
            }

            else
            {
              sub_1B6284EAC(&v266, &unk_1EB943740, &qword_1B63C5030);
            }

            v271 = 0u;
            v272 = 0u;
LABEL_130:
            sub_1B6284EAC(&v269, &unk_1EB943740, &qword_1B63C5030);
            if (*(&v272 + 1))
            {
              sub_1B628E928(&v271, &v273);
              v176 = objc_allocWithZone(MEMORY[0x1E695D620]);
              v177 = [v176 initWithEntity:v172 insertIntoManagedObjectContext:v262];
              __swift_project_boxed_opaque_existential_0(&v273, *(&v274 + 1));
              v178 = sub_1B63BF354();
              v179 = sub_1B63BEBC4();
              [v177 setValue:v178 forKey:v179];
              swift_unknownObjectRelease();

              v180 = v263;

              v265 = v177;
              v181 = [v177 objectID];
              v182 = [v181 URIRepresentation];

              v183 = v235;
              sub_1B63BE8B4();

              v184 = sub_1B63BE854();
              v186 = v185;
              (*v243)(v183, v244);
              *(&v272 + 1) = MEMORY[0x1E69E6158];
              *&v271 = v184;
              *(&v271 + 1) = v186;
              if (v258 >= v59[2])
              {
                goto LABEL_166;
              }

              v187 = v172;
              sub_1B628E928(&v271, &v269);
              v188 = v254;
              v189 = *v254;
              v190 = swift_isUniquelyReferenced_nonNull_native();
              *&v268 = *v188;
              v191 = v268;
              *v188 = 0x8000000000000000;
              v192 = v259;
              v193 = sub_1B6380EF4(v259, v180);
              v195 = *(v191 + 16);
              v196 = (v194 & 1) == 0;
              v105 = __OFADD__(v195, v196);
              v197 = v195 + v196;
              if (v105)
              {
                goto LABEL_167;
              }

              v198 = v194;
              v199 = v257;
              if (*(v191 + 24) >= v197)
              {
                if ((v190 & 1) == 0)
                {
                  v204 = v193;
                  sub_1B638E350();
                  v193 = v204;
                  v192 = v259;
                }
              }

              else
              {
                sub_1B638CE9C(v197, v190);
                v193 = sub_1B6380EF4(v192, v263);
                if ((v198 & 1) != (v200 & 1))
                {
                  goto LABEL_168;
                }
              }

              v201 = v261;
              v9 = v246;
              v202 = v268;
              if (v198)
              {
                v203 = (*(v268 + 56) + 32 * v193);
                __swift_destroy_boxed_opaque_existential_1(v203);
                sub_1B628E928(&v269, v203);
              }

              else
              {
                sub_1B638DECC(v193, v192, v263, &v269, v268);
              }

              v8 = v201;
              *v254 = v202;

              __swift_destroy_boxed_opaque_existential_1(&v273);
              v13 = v245;
              v53 = v238;
              v57 = v237;
              v56 = v251;
              v36 = v247;
              goto LABEL_116;
            }

            sub_1B6284EAC(&v271, &unk_1EB943740, &qword_1B63C5030);
            goto LABEL_137;
          }

          while (1)
          {
LABEL_35:
            v58 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_153;
            }

            if (v58 >= v57)
            {
              break;
            }

            v56 = *(v53 + 8 * v58);
            ++v51;
            if (v56)
            {
              v51 = v58;
              goto LABEL_39;
            }
          }

          v35 = v234;
          v37 = v232;
          if (v234 == v231)
          {
            goto LABEL_145;
          }
        }
      }

      v37 = v232;
      v36 = v247;
      v8 = v261;
LABEL_145:
      v205 = v255;

      v206 = sub_1B6380EF4(v37, v205);
      v208 = v207;

      if (v208)
      {
        v209 = *v36;
        v210 = swift_isUniquelyReferenced_nonNull_native();
        v211 = *v36;
        *&v273 = *v36;
        if (!v210)
        {
          sub_1B638E4F4();
          v211 = v273;
        }

        v212 = *(*(v211 + 48) + 16 * v206 + 8);

        v213 = *(*(v211 + 56) + 8 * v206);

        sub_1B638DA08(v206, v211);
        *v36 = v211;
      }

      v214 = sub_1B638F004(2uLL, v37, v205);
      v216 = v215;
      v218 = v217;
      v220 = v219;

      v221 = MEMORY[0x1B8C92300](v214, v216, v218, v220);
      v223 = v222;

      v224 = v253;

      v225 = *v36;
      v226 = swift_isUniquelyReferenced_nonNull_native();
      *&v273 = *v36;
      sub_1B638DD08(v224, v221, v223, v226);

      v15 = v273;
      *v36 = v273;
      v12 = v256;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
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
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

uint64_t sub_1B63918F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v192 = a4;
  *&v202 = a2;
  *(&v202 + 1) = a1;
  v5 = sub_1B63BE8E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 objectID];
  v11 = [v10 URIRepresentation];

  sub_1B63BE8B4();
  v201 = sub_1B63BE854();
  v203 = v12;
  (*(v6 + 8))(v9, v5);
  v13 = [a3 entity];
  v14 = [v13 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v15 = sub_1B63BEB74();

  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  v194 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
    v20 = v21;
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v15 + 56) + ((v20 << 9) | (8 * v22)));
    v24 = [v23 inverseRelationship];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 name];

      v27 = sub_1B63BEBD4();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_1B62B23B4(0, *(v194 + 2) + 1, 1, v194);
      }

      v31 = *(v194 + 2);
      v30 = *(v194 + 3);
      if (v31 >= v30 >> 1)
      {
        v194 = sub_1B62B23B4((v30 > 1), v31 + 1, 1, v194);
      }

      v32 = v194;
      *(v194 + 2) = v31 + 1;
      v33 = &v32[16 * v31];
      *(v33 + 4) = v27;
      *(v33 + 5) = v29;
      goto LABEL_4;
    }

    v21 = v20;
  }

  while (v18);
LABEL_6:
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v34 = *v192;
      v35 = *v192 + 64;
      v36 = 1 << *(*v192 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(*v192 + 64);
      v39 = (v36 + 63) >> 6;
      v40 = v194;
      v200 = v194 + 32;

      v41 = v38;
      v42 = 0;
      v43 = v34;
      while (1)
      {
        while (1)
        {
          if (v41)
          {
            v44 = v41;
            goto LABEL_26;
          }

          do
          {
            v45 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_151;
            }

            if (v45 >= v39)
            {
            }

            v44 = *(v35 + 8 * v45);
            ++v42;
          }

          while (!v44);
          v42 = v45;
LABEL_26:
          v41 = (v44 - 1) & v44;
          if (!v43[2])
          {
            continue;
          }

          v196 = (v44 - 1) & v44;
          v46 = (v34[6] + ((v42 << 10) | (16 * __clz(__rbit64(v44)))));
          v47 = *v46;
          v48 = v46[1];

          v49 = sub_1B6380EF4(v47, v48);
          if (v50)
          {
            break;
          }

          v41 = v196;
        }

        v188 = v47;
        v187 = v34;
        v51 = *(v43[7] + 8 * v49);
        v190 = v51[2];
        if (v190)
        {
          break;
        }

LABEL_138:

        v167 = v192;
        v168 = *v192;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v207 = *v167;
        v170 = v207;
        v171 = sub_1B6380EF4(v188, v48);
        v173 = *(v170 + 16);
        v174 = (v172 & 1) == 0;
        v104 = __OFADD__(v173, v174);
        v175 = v173 + v174;
        if (v104)
        {
          goto LABEL_165;
        }

        v176 = v172;
        v34 = v187;
        if (*(v170 + 24) >= v175)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v184 = v171;
            sub_1B638E4F4();
            v171 = v184;
          }
        }

        else
        {
          sub_1B638D154(v175, isUniquelyReferenced_nonNull_native);
          v171 = sub_1B6380EF4(v188, v48);
          if ((v176 & 1) != (v177 & 1))
          {
            goto LABEL_169;
          }
        }

        v178 = v188;
        v43 = v207;
        if (v176)
        {
          v179 = *(v207 + 56);
          v180 = *(v179 + 8 * v171);
          *(v179 + 8 * v171) = v51;
        }

        else
        {
          *(v207 + 8 * (v171 >> 6) + 64) |= 1 << v171;
          v181 = (v43[6] + 16 * v171);
          *v181 = v178;
          v181[1] = v48;
          *(v43[7] + 8 * v171) = v51;
          v182 = v43[2];
          v104 = __OFADD__(v182, 1);
          v183 = v182 + 1;
          if (v104)
          {
            goto LABEL_167;
          }

          v43[2] = v183;
        }

        *v192 = v43;
        v41 = v196;
      }

      v199 = *(v40 + 2);

      v52 = 0;
      v189 = v35;
      v193 = v39;
      v197 = v48;
      while (2)
      {
        if (v52 >= v51[2])
        {
          goto LABEL_161;
        }

        v53 = v51[v52 + 4];
        v54 = *(v53 + 16);
        v198 = v52;
        if (v54)
        {

          v55 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
          if (v56)
          {
            sub_1B629E3F0(*(v53 + 56) + 32 * v55, &v207);

            if (swift_dynamicCast())
            {
              if (__PAIR128__(v205, *(&v205 + 1)) == v202)
              {

                goto LABEL_117;
              }

              v139 = sub_1B63BF364();

              if (v139)
              {
LABEL_117:
                v208 = MEMORY[0x1E69E6158];
                *&v207 = v201;
                *(&v207 + 1) = v203;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v51 = sub_1B638C8B0(v51);
                }

                if (v52 >= v51[2])
                {
                  goto LABEL_164;
                }

                v140 = v51 + 4;
                if (v208)
                {
                  v141 = v52;
                  v142 = v51;
                  sub_1B628E928(&v207, &v205);
                  v143 = v140[v141];
                  v144 = swift_isUniquelyReferenced_nonNull_native();
                  v204 = v140[v141];
                  v145 = v204;
                  v140[v141] = 0x8000000000000000;
                  v146 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                  v148 = v145[2];
                  v149 = (v147 & 1) == 0;
                  v104 = __OFADD__(v148, v149);
                  v150 = v148 + v149;
                  if (v104)
                  {
                    goto LABEL_166;
                  }

                  v151 = v147;
                  if (v145[3] >= v150)
                  {
                    if ((v144 & 1) == 0)
                    {
                      v166 = v146;
                      sub_1B638E350();
                      v146 = v166;
                    }
                  }

                  else
                  {
                    sub_1B638CE9C(v150, v144);
                    v146 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                    if ((v151 & 1) != (v152 & 1))
                    {
                      goto LABEL_169;
                    }
                  }

                  v51 = v142;
                  v161 = v204;
                  v52 = v198;
                  if (v151)
                  {
                    v162 = (v204[7] + 32 * v146);
                    __swift_destroy_boxed_opaque_existential_1(v162);
                    sub_1B628E928(&v205, v162);
                    v140[v52] = v161;
                  }

                  else
                  {
                    v204[(v146 >> 6) + 8] |= 1 << v146;
                    v163 = (v161[6] + 16 * v146);
                    *v163 = 0x44497463656A626FLL;
                    v163[1] = 0xE800000000000000;
                    sub_1B628E928(&v205, (v161[7] + 32 * v146));
                    v164 = v161[2];
                    v104 = __OFADD__(v164, 1);
                    v165 = v164 + 1;
                    if (v104)
                    {
                      goto LABEL_168;
                    }

                    v161[2] = v165;
                    v140[v52] = v161;
                  }
                }

                else
                {
                  sub_1B6284EAC(&v207, &unk_1EB943740, &qword_1B63C5030);
                  v153 = v140[v52];
                  v154 = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
                  if (v155)
                  {
                    v156 = v154;
                    v157 = v140[v52];
                    v158 = swift_isUniquelyReferenced_nonNull_native();
                    v204 = v140[v52];
                    v140[v52] = 0x8000000000000000;
                    if ((v158 & 1) == 0)
                    {
                      sub_1B638E350();
                    }

                    v159 = v204;
                    v160 = *(v204[6] + 16 * v156 + 8);

                    sub_1B628E928((*(v159 + 56) + 32 * v156), &v205);
                    sub_1B638D858(v156, v159);
                    v140[v52] = v159;
                  }

                  else
                  {
                    v205 = 0u;
                    v206 = 0u;
                  }

                  sub_1B6284EAC(&v205, &unk_1EB943740, &qword_1B63C5030);
                }
              }
            }
          }

          else
          {
          }
        }

        if (!v199)
        {
LABEL_31:
          ++v52;
          v35 = v189;
          if (v52 == v190)
          {
            goto LABEL_138;
          }

          continue;
        }

        break;
      }

      v57 = 0;
      while (2)
      {
        if (v57 >= *(v40 + 2))
        {
          goto LABEL_154;
        }

        if (v52 >= v51[2])
        {
          goto LABEL_155;
        }

        v58 = &v200[16 * v57];
        v60 = *v58;
        v59 = v58[1];
        v61 = v52;
        v62 = v51;
        v63 = v51 + 4;
        v64 = v51[v61 + 4];
        v65 = *(v64 + 16);

        if (v65)
        {

          v66 = sub_1B6380EF4(v60, v59);
          if (v67)
          {
            sub_1B629E3F0(*(v64 + 56) + 32 * v66, &v207);

            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
            if (swift_dynamicCast())
            {
              v69 = v205;
              v70 = *(v205 + 16);
              if (v70)
              {
                v71 = 0;
                v72 = 0;
                while (v72 < *(v69 + 2))
                {
                  v76 = *&v69[v71 + 32] == *(&v202 + 1) && *&v69[v71 + 40] == v202;
                  if (v76 || (sub_1B63BF364() & 1) != 0)
                  {

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v69 = sub_1B638C8C4(v69);
                    }

                    if (v72 >= *(v69 + 2))
                    {
                      goto LABEL_153;
                    }

                    v73 = &v69[v71];
                    v74 = *&v69[v71 + 40];
                    v75 = v203;
                    *(v73 + 4) = v201;
                    *(v73 + 5) = v75;
                  }

                  ++v72;
                  v71 += 16;
                  if (v70 == v72)
                  {
                    goto LABEL_70;
                  }
                }

                goto LABEL_152;
              }

LABEL_70:
              v208 = v68;
              *&v207 = v69;

              v82 = v62;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_1B638C8B0(v62);
              }

              v52 = v198;
              if (v198 >= v82[2])
              {
                goto LABEL_157;
              }

              v195 = v82;
              v83 = v82 + 4;
              if (!v208)
              {
                sub_1B6284EAC(&v207, &unk_1EB943740, &qword_1B63C5030);
                v108 = v83[v52];
                v109 = sub_1B6380EF4(v60, v59);
                LOBYTE(v108) = v110;

                if (v108)
                {
                  v111 = v83[v52];
                  v112 = swift_isUniquelyReferenced_nonNull_native();
                  v204 = v83[v52];
                  v83[v52] = 0x8000000000000000;
                  v113 = v83;
                  v40 = v194;
                  v48 = v197;
                  if (!v112)
                  {
                    sub_1B638E350();
                  }

                  v114 = v204;
                  v115 = *(v204[6] + 16 * v109 + 8);

                  sub_1B628E928((*(v114 + 56) + 32 * v109), &v205);
                  sub_1B638D858(v109, v114);
                  v116 = v113[v52];
                  v113[v52] = v114;
                }

                else
                {
                  v205 = 0u;
                  v206 = 0u;
                  v40 = v194;
                  v48 = v197;
                }

                sub_1B6284EAC(&v205, &unk_1EB943740, &qword_1B63C5030);
                goto LABEL_110;
              }

              sub_1B628E928(&v207, &v205);
              v84 = v83[v52];
              v85 = swift_isUniquelyReferenced_nonNull_native();
              v204 = v83[v52];
              v86 = v204;
              v191 = v83;
              v83[v52] = 0x8000000000000000;
              v88 = sub_1B6380EF4(v60, v59);
              v89 = v86[2];
              v90 = (v87 & 1) == 0;
              v91 = v89 + v90;
              if (__OFADD__(v89, v90))
              {
                goto LABEL_159;
              }

              v92 = v87;
              if (v86[3] >= v91)
              {
                if (v85)
                {
                  if ((v87 & 1) == 0)
                  {
                    goto LABEL_107;
                  }
                }

                else
                {
                  sub_1B638E350();
                  if ((v92 & 1) == 0)
                  {
                    goto LABEL_107;
                  }
                }
              }

              else
              {
                sub_1B638CE9C(v91, v85);
                v93 = sub_1B6380EF4(v60, v59);
                if ((v92 & 1) != (v94 & 1))
                {
                  goto LABEL_169;
                }

                v88 = v93;
                if ((v92 & 1) == 0)
                {
LABEL_107:
                  v117 = v204;
                  v204[(v88 >> 6) + 8] |= 1 << v88;
                  v130 = (v117[6] + 16 * v88);
                  *v130 = v60;
                  v130[1] = v59;
                  sub_1B628E928(&v205, (v117[7] + 32 * v88));
                  v131 = v117[2];
                  v104 = __OFADD__(v131, 1);
                  v132 = v131 + 1;
                  if (v104)
                  {
                    goto LABEL_162;
                  }

                  v117[2] = v132;
LABEL_109:
                  v133 = v191[v52];
                  v191[v52] = v117;

                  v40 = v194;
                  v48 = v197;
LABEL_110:
                  v51 = v195;

                  v39 = v193;
LABEL_43:
                  if (++v57 == v199)
                  {
                    goto LABEL_31;
                  }

                  continue;
                }
              }

              v117 = v204;
              v118 = (v204[7] + 32 * v88);
              __swift_destroy_boxed_opaque_existential_1(v118);
              sub_1B628E928(&v205, v118);
              goto LABEL_109;
            }
          }

          else
          {
          }
        }

        break;
      }

      v51 = v62;
      v77 = v62[2];
      v52 = v198;
      if (v198 >= v77)
      {
        goto LABEL_156;
      }

      v78 = v63[v198];
      if (*(v78 + 16))
      {
        v79 = v63[v198];

        v80 = sub_1B6380EF4(v60, v59);
        if (v81)
        {
          sub_1B629E3F0(*(v78 + 56) + 32 * v80, &v207);

          if (swift_dynamicCast())
          {
            if (__PAIR128__(v205, *(&v205 + 1)) == v202)
            {

              goto LABEL_80;
            }

            v95 = sub_1B63BF364();

            if (v95)
            {
LABEL_80:
              v208 = MEMORY[0x1E69E6158];
              *&v207 = v201;
              *(&v207 + 1) = v203;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v51 = sub_1B638C8B0(v51);
              }

              if (v52 >= v51[2])
              {
                goto LABEL_158;
              }

              v195 = v51;
              v96 = v51 + 4;
              if (v208)
              {
                sub_1B628E928(&v207, &v205);
                v97 = v96[v52];
                v98 = swift_isUniquelyReferenced_nonNull_native();
                v204 = v96[v52];
                v99 = v204;
                v96[v52] = 0x8000000000000000;
                v100 = sub_1B6380EF4(v60, v59);
                v102 = v99[2];
                v103 = (v101 & 1) == 0;
                v104 = __OFADD__(v102, v103);
                v105 = v102 + v103;
                if (v104)
                {
                  goto LABEL_160;
                }

                v106 = v101;
                if (v99[3] >= v105)
                {
                  if (v98)
                  {
                    goto LABEL_100;
                  }

                  v134 = v100;
                  sub_1B638E350();
                  v100 = v134;
                  if ((v106 & 1) == 0)
                  {
                    goto LABEL_112;
                  }

LABEL_101:
                  v127 = v100;

                  v128 = v204;
                  v129 = (v204[7] + 32 * v127);
                  __swift_destroy_boxed_opaque_existential_1(v129);
                  sub_1B628E928(&v205, v129);
                }

                else
                {
                  sub_1B638CE9C(v105, v98);
                  v100 = sub_1B6380EF4(v60, v59);
                  if ((v106 & 1) != (v107 & 1))
                  {
                    goto LABEL_169;
                  }

LABEL_100:
                  if (v106)
                  {
                    goto LABEL_101;
                  }

LABEL_112:
                  v128 = v204;
                  v204[(v100 >> 6) + 8] |= 1 << v100;
                  v135 = (v128[6] + 16 * v100);
                  *v135 = v60;
                  v135[1] = v59;
                  sub_1B628E928(&v205, (v128[7] + 32 * v100));
                  v136 = v128[2];
                  v104 = __OFADD__(v136, 1);
                  v137 = v136 + 1;
                  if (v104)
                  {
                    goto LABEL_163;
                  }

                  v128[2] = v137;
                }

                v138 = v96[v52];
                v96[v52] = v128;

                v39 = v193;
                v48 = v197;
              }

              else
              {
                sub_1B6284EAC(&v207, &unk_1EB943740, &qword_1B63C5030);
                v119 = v96[v52];
                v120 = sub_1B6380EF4(v60, v59);
                LOBYTE(v119) = v121;

                if (v119)
                {
                  v122 = v96[v52];
                  v123 = swift_isUniquelyReferenced_nonNull_native();
                  v204 = v96[v52];
                  v96[v52] = 0x8000000000000000;
                  v48 = v197;
                  if (!v123)
                  {
                    sub_1B638E350();
                  }

                  v124 = v204;
                  v125 = *(v204[6] + 16 * v120 + 8);

                  sub_1B628E928((*(v124 + 56) + 32 * v120), &v205);
                  sub_1B638D858(v120, v124);
                  v126 = v96[v52];
                  v96[v52] = v124;
                }

                else
                {
                  v205 = 0u;
                  v206 = 0u;
                  v48 = v197;
                }

                sub_1B6284EAC(&v205, &unk_1EB943740, &qword_1B63C5030);
                v39 = v193;
              }

              v51 = v195;
              goto LABEL_43;
            }
          }
        }

        else
        {
        }
      }

      v48 = v197;
      goto LABEL_43;
    }

    v18 = *(v15 + 64 + 8 * v20);
    ++v21;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
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
  result = sub_1B63BF3D4();
  __break(1u);
  return result;
}

uint64_t sub_1B63929BC(uint64_t a1, void *a2, int a3)
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v94 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v94 - v13;
  v15 = sub_1B63BE8E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v115 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v94 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = v94 - v24;
  if (!*(a1 + 16))
  {
    goto LABEL_71;
  }

  result = sub_1B6380EF4(0x44497463656A626FLL, 0xE800000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_1B629E3F0(*(a1 + 56) + 32 * result, &v118);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_1B63BE8D4();

  v112 = *(v16 + 48);
  v113 = v16 + 48;
  if (v112(v14, 1, v15) == 1)
  {
    result = sub_1B6284EAC(v14, &qword_1EB9433E8, &qword_1B63C63D0);
    goto LABEL_71;
  }

  v110 = *(v16 + 32);
  v111 = v16 + 32;
  v110(v25, v14, v15);
  v27 = sub_1B63BE8C4();
  if (!v28)
  {
    goto LABEL_70;
  }

  if (v27 != 0x616465726F632D78 || v28 != 0xEA00000000006174)
  {
    v29 = sub_1B63BF364();

    if (v29)
    {
      goto LABEL_11;
    }

LABEL_70:
    result = (*(v16 + 8))(v25, v15);
    goto LABEL_71;
  }

LABEL_11:
  v106 = a3;
  v30 = [a2 persistentStoreCoordinator];
  if (!v30)
  {
    goto LABEL_70;
  }

  v31 = v30;
  v32 = sub_1B63BE884();
  v33 = [v31 managedObjectIDForURIRepresentation_];

  if (!v33)
  {
    goto LABEL_70;
  }

  *&v118 = 0;
  v34 = [a2 existingObjectWithID:v33 error:&v118];
  if (!v34)
  {
    v91 = v118;
    v92 = sub_1B63BE824();

    swift_willThrow();
    goto LABEL_70;
  }

  v96 = v33;
  v104 = a2;
  v35 = v34;
  v36 = v118;
  v101 = v35;
  v37 = [v35 entity];
  v38 = [v37 relationshipsByName];

  sub_1B6281C60(0, &unk_1EB943568, 0x1E695D6E8);
  v39 = sub_1B63BEB74();

  v40 = 0;
  v95 = 0;
  v42 = v39 + 64;
  v41 = *(v39 + 64);
  v105 = v39;
  v43 = 1 << *(v39 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v41;
  v46 = (v43 + 63) >> 6;
  v108 = (v16 + 8);
  v103 = v39 + 64;
  v102 = v46;
  if (v45)
  {
LABEL_21:
    while (1)
    {
      v107 = (v45 - 1) & v45;
      v48 = __clz(__rbit64(v45)) | (v40 << 6);
      v49 = (*(v105 + 48) + 16 * v48);
      v51 = *v49;
      v50 = v49[1];
      v52 = *(*(v105 + 56) + 8 * v48);
      v53 = *(a1 + 16);

      v109 = v52;
      if (!v53)
      {
        break;
      }

      v54 = sub_1B6380EF4(v51, v50);
      if ((v55 & 1) == 0)
      {
        break;
      }

      v98 = v51;
      v99 = v50;
      sub_1B629E3F0(*(a1 + 56) + 32 * v54, v117);
      sub_1B628E928(v117, &v118);
      if ([v109 isToMany])
      {
        v56 = sub_1B63BEBC4();
        v97 = [v101 mutableSetValueForKey_];

        sub_1B629E3F0(&v118, v117);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943580, &qword_1B63C63E0);
        v57 = swift_dynamicCast();
        v58 = v116;
        if (!v57)
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        v59 = *(v58 + 16);
        v94[1] = v58;
        if (v59)
        {
          v60 = (v58 + 40);
          while (1)
          {
            v61 = *(v60 - 1);
            v62 = *v60;

            sub_1B63BE8D4();

            if (v112(v12, 1, v15) != 1)
            {
              break;
            }

            sub_1B6284EAC(v12, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_29:
            v60 += 2;
            if (!--v59)
            {
              goto LABEL_49;
            }
          }

          v110(v22, v12, v15);
          v63 = sub_1B63BE8C4();
          if (v64)
          {
            if (v63 == 0x616465726F632D78 && v64 == 0xEA00000000006174)
            {

              goto LABEL_36;
            }

            v65 = sub_1B63BF364();

            if (v65)
            {
LABEL_36:
              v66 = [v104 persistentStoreCoordinator];
              if (v66)
              {
                v67 = v66;
                v100 = sub_1B63BE884();
                v68 = [v67 managedObjectIDForURIRepresentation_];

                v100 = v68;
                if (v68)
                {
                  *&v117[0] = 0;
                  v69 = [v104 existingObjectWithID:v100 error:v117];
                  if (!v69)
                  {
                    v95 = *&v117[0];
                    v73 = sub_1B63BE824();

                    swift_willThrow();
                    (*v108)(v22, v15);
                    v95 = 0;
                    goto LABEL_29;
                  }

                  v70 = v69;
                  v71 = *&v117[0];
                  v72 = v70;
                  [v97 addObject_];
                }
              }
            }
          }

          (*v108)(v22, v15);
          goto LABEL_29;
        }

LABEL_49:

        v76 = v97;
        v77 = sub_1B63BEBC4();

        [v101 setValue:v76 forKey:v77];

        goto LABEL_50;
      }

      sub_1B629E3F0(&v118, v117);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v118);
LABEL_44:

        goto LABEL_45;
      }

      v75 = v114;
      sub_1B63BE8D4();

      if (v112(v75, 1, v15) != 1)
      {
        v110(v115, v75, v15);
        v78 = sub_1B63BE8C4();
        if (v79)
        {
          if (v78 == 0x616465726F632D78 && v79 == 0xEA00000000006174)
          {

LABEL_59:
            v81 = [v104 persistentStoreCoordinator];
            if (v81 && (v82 = v81, v100 = sub_1B63BE884(), v83 = [v82 managedObjectIDForURIRepresentation_], v82, v100, (v100 = v83) != 0))
            {
              *&v117[0] = 0;
              v84 = [v104 existingObjectWithID:v100 error:v117];
              if (!v84)
              {
                v89 = *&v117[0];

                v90 = sub_1B63BE824();

                swift_willThrow();
                (*v108)(v115, v15);
                __swift_destroy_boxed_opaque_existential_1(&v118);
                v95 = 0;
                goto LABEL_51;
              }

              v85 = v84;
              v86 = *&v117[0];
              v87 = v85;
              v88 = sub_1B63BEBC4();

              [v101 setValue:v87 forKey:v88];
            }

            else
            {
            }

LABEL_66:
            (*v108)(v115, v15);
LABEL_50:
            __swift_destroy_boxed_opaque_existential_1(&v118);
            goto LABEL_51;
          }

          v80 = sub_1B63BF364();

          if (v80)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_66;
      }

      __swift_destroy_boxed_opaque_existential_1(&v118);

      sub_1B6284EAC(v75, &qword_1EB9433E8, &qword_1B63C63D0);
LABEL_51:
      v42 = v103;
      v46 = v102;
      v45 = v107;
      if (!v107)
      {
        goto LABEL_17;
      }
    }

    if ((v106 & 1) == 0)
    {
      goto LABEL_44;
    }

    v74 = sub_1B63BEBC4();

    [v101 setValue:0 forKey:v74];

LABEL_45:
    goto LABEL_51;
  }

  while (1)
  {
LABEL_17:
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
    }

    if (v47 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v47);
    ++v40;
    if (v45)
    {
      v40 = v47;
      goto LABEL_21;
    }
  }

  result = (*v108)(v25, v15);
LABEL_71:
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B63936A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B63895F8(v2, v3, v4, v5, v6);
}

uint64_t sub_1B6393790()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B6388064(v2, v3, v5, v4);
}

uint64_t sub_1B6393850()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B6387394(v2, v3, v4);
}

uint64_t sub_1B6393904()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B63866D0(v2, v3, v5, v4);
}

uint64_t objectdestroy_47Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6393A38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B6385690(v2, v3, v5, v4);
}

uint64_t sub_1B6393AF8@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  return sub_1B6384DC8(*(v1 + 16), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1B6393B24(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435C0, &qword_1B63C64E8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B638B484(a1, a2, v2 + v6, v8, v9);
}

id sub_1B6393CB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedUserReview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6394008()
{
  v0 = sub_1B63BE994();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB942F98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB942FA0;
  v6 = sub_1B63BEBC4();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v8 = v11[1];
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B6284EAC(v14, &unk_1EB943740, &qword_1B63C5030);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_11:
  sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  v9 = sub_1B63BEF04();
  v10 = sub_1B63BEF24();

  if (v10)
  {
    sub_1B63BE934();
  }

  else
  {
    sub_1B63BE984();
    [v8 doubleValue];
    sub_1B63BE944();

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1B6394370(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = sub_1B63BE994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncManagedVisit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata fetchRequest];
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B63C3D50;
  sub_1B6394008();
  v11 = sub_1B63BE954();
  (*(v4 + 8))(v7, v3);
  *(v10 + 56) = sub_1B6281C60(0, &qword_1EDB0E6D0, 0x1E695DF00);
  *(v10 + 64) = sub_1B62B03CC(&qword_1EDB0E6C8, &qword_1EDB0E6D0, 0x1E695DF00);
  *(v10 + 32) = v11;
  v12 = sub_1B63BED94();
  [v9 setPredicate_];

  v13 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v13 setResultType_];
  *&v40 = 0;
  v14 = [a2 executeRequest:v13 error:&v40];
  v15 = v40;
  if (!v14)
  {
    v19 = v40;
    sub_1B63BE824();

    swift_willThrow();
LABEL_18:

    goto LABEL_28;
  }

  v16 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = v15;
  if (!v17)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_11:
    sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_12;
  }

  if ([v17 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v37 = v38;
    goto LABEL_13;
  }

LABEL_12:
  v37 = 0;
LABEL_13:
  v20 = [ObjCClassFromMetadata fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B63C3D70;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1B63BEBC4();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v25 = sub_1B63BEC94();

  [v20 setSortDescriptors_];

  [v20 setFetchOffset_];
  v26 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v26 setResultType_];
  *&v40 = 0;
  v27 = [a2 executeRequest:v26 error:&v40];
  v28 = v40;
  if (!v27)
  {
    v32 = v40;
    sub_1B63BE824();

    swift_willThrow();
    v13 = v17;
    goto LABEL_18;
  }

  v29 = v27;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  v31 = v28;
  if (!v30)
  {

    v40 = 0u;
    v41 = 0u;
LABEL_24:
    sub_1B6284EAC(&v40, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_25;
  }

  if ([v30 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    goto LABEL_24;
  }

  if (!swift_dynamicCast())
  {
LABEL_25:
    v33 = 0;
    goto LABEL_26;
  }

  v33 = v38;
LABEL_26:
  v34 = v37 + v33;
  if (__OFADD__(v37, v33))
  {
    __break(1u);
  }

  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v40 = 0x2064656E757250;
  *(&v40 + 1) = 0xE700000000000000;
  *&v38 = v34;
  v35 = sub_1B63BF344();
  MEMORY[0x1B8C92330](v35);

  MEMORY[0x1B8C92330](0x73746973697620, 0xE700000000000000);
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v40, *(&v40 + 1));

LABEL_28:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1B6394A84(void *a1, void *a2)
{
  v18 = a2;
  sub_1B63BEE84();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe())
    {
      v5 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
      v6 = type metadata accessor for VisitedLocation();
      *&v5[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v5[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v6;
      v7 = type metadata accessor for MapsSyncRequest();
      v17.receiver = v5;
      v17.super_class = v7;
      v8 = a1;
      v9 = objc_msgSendSuper2(&v17, sel_init);
      v10 = a2;
      sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v10, MEMORY[0x1E69E7CC0], v9, v10);

      v11 = objc_allocWithZone(type metadata accessor for VisitRequest());
      v12 = type metadata accessor for Visit();
      *&v11[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v8;
      *&v11[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v12;
      v16.receiver = v11;
      v16.super_class = v7;
      v13 = v8;
      v14 = objc_msgSendSuper2(&v16, sel_init);
      v15 = v10;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v15, MEMORY[0x1E69E7CC0], v14, v15);
    }
  }
}

Swift::Void __swiftcall Visit.removeVisit()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v5 - v2;
  sub_1B633AEA4(1);
  v4 = sub_1B63BE994();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1B633B878(v3);
  sub_1B633D0DC(0);
  sub_1B633C204(4);
}

void sub_1B6394EB8(void *a1, void *a2)
{
  sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe())
    {
      sub_1B635072C(a1, a2);
      v5 = objc_allocWithZone(type metadata accessor for VisitRequest());
      v6 = type metadata accessor for Visit();
      *&v5[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v5[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v6;
      v10.receiver = v5;
      v10.super_class = type metadata accessor for MapsSyncRequest();
      v7 = a1;
      v8 = objc_msgSendSuper2(&v10, sel_init);
      v9 = a2;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v9, MEMORY[0x1E69E7CC0], v8, v9);
    }
  }
}

uint64_t sub_1B6394FC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B63BD8C4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B639503C(v6);
  return sub_1B63BF174();
}

void sub_1B639503C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for MapsSyncManagedVisit();
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B6395238(v8, v9, a1, v4);
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
    sub_1B6395140(0, v2, 1, a1);
  }
}

void sub_1B6395140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 visitClassification];
      v13 = [v11 visitClassification];

      if ((v12 & 4) == 0 || (v13 & 4) != 0)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B6395238(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = v9;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v92 = v5;
      v93 = *(v10 + 16);
      if (v93 >= 2)
      {
        while (*v6)
        {
          v5 = v93 - 1;
          v94 = *(v10 + 16 * v93);
          v95 = *(v10 + 16 * (v93 - 1) + 40);
          sub_1B63958FC((*v6 + 8 * v94), (*v6 + 8 * *(v10 + 16 * (v93 - 1) + 32)), (*v6 + 8 * v95), v9);
          if (v92)
          {
            goto LABEL_103;
          }

          if (v95 < v94)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B63BCE9C(v10);
          }

          if (v93 - 2 >= *(v10 + 16))
          {
            goto LABEL_120;
          }

          v96 = (v10 + 16 * v93);
          *v96 = v94;
          v96[1] = v95;
          sub_1B63BCE10(v93 - 1);
          v93 = *(v10 + 16);
          if (v93 <= 1)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_130;
      }

LABEL_103:

      return;
    }

LABEL_126:
    v10 = sub_1B63BCE9C(v10);
    goto LABEL_95;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  v104 = v9;
  if (v8 + 1 >= v7)
  {
    goto LABEL_24;
  }

  v12 = *v6;
  v13 = *(*v6 + 8 * v8);
  v14 = *(*v6 + 8 * v11);
  v100 = v10;
  v15 = v13;
  v16 = [v14 visitClassification];
  v17 = [v15 visitClassification];

  v10 = v100;
  v105 = ((v17 & 4) == 0) & (v16 >> 2);
  v11 = v100 + 2;
  if (v100 + 2 >= v7)
  {
    v6 = a3;
    if (v105)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v18 = (v12 + 8 * v100 + 16);
  while (1)
  {
    v19 = v11;
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = v20;
    v23 = [v21 visitClassification];
    v24 = [v22 visitClassification];

    if ((v23 & 4) == 0)
    {
      v9 = v104;
      if (v105)
      {
        v6 = a3;
        v10 = v100;
        v11 = v19;
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v9 = v104;
    if (v105 == (v24 & 4) >> 2)
    {
      break;
    }

LABEL_8:
    v11 = v19 + 1;
    ++v18;
    if (v7 == v19 + 1)
    {
      v11 = v7;
      v6 = a3;
      goto LABEL_16;
    }
  }

  v6 = a3;
  v11 = v19;
LABEL_16:
  v10 = v100;
  if (v105)
  {
LABEL_17:
    if (v11 < v10)
    {
      goto LABEL_123;
    }

    if (v10 < v11)
    {
      v25 = 8 * v11 - 8;
      v26 = 8 * v10;
      v27 = v11;
      v28 = v10;
      do
      {
        if (v28 != --v27)
        {
          v29 = *v6;
          if (!*v6)
          {
            goto LABEL_129;
          }

          v30 = *(v29 + v26);
          *(v29 + v26) = *(v29 + v25);
          *(v29 + v25) = v30;
        }

        ++v28;
        v25 -= 8;
        v26 += 8;
      }

      while (v28 < v27);
    }
  }

LABEL_24:
  v31 = v6[1];
  if (v11 >= v31)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_122;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_42;
  }

  v32 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_124;
  }

  if (v32 >= v31)
  {
    v32 = v6[1];
  }

  if (v32 < v10)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v11 == v32)
  {
    goto LABEL_42;
  }

  v97 = v5;
  v33 = *v6;
  v34 = *v6 + 8 * v11 - 8;
  v101 = v10;
  v35 = v10 - v11;
  v103 = v32;
LABEL_34:
  v106 = v11;
  v36 = *(v33 + 8 * v11);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = [v40 visitClassification];
    v43 = [v41 visitClassification];

    if ((v42 & 4) == 0 || (v43 & 4) != 0)
    {
LABEL_33:
      v11 = v106 + 1;
      v34 += 8;
      --v35;
      if (v106 + 1 == v103)
      {
        v11 = v103;
        v5 = v97;
        v6 = a3;
        v10 = v101;
        v9 = v104;
LABEL_42:
        if (v11 < v10)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B62B24E4(0, *(v9 + 2) + 1, 1, v9);
        }

        v47 = *(v9 + 2);
        v46 = *(v9 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v9 = sub_1B62B24E4((v46 > 1), v47 + 1, 1, v9);
        }

        *(v9 + 2) = v48;
        v49 = &v9[16 * v47];
        *(v49 + 4) = v10;
        *(v49 + 5) = v11;
        v107 = v11;
        v50 = *a1;
        if (!*a1)
        {
          goto LABEL_131;
        }

        if (!v47)
        {
LABEL_3:
          v7 = v6[1];
          v8 = v107;
          if (v107 >= v7)
          {
            goto LABEL_93;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v10 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v9 + 4);
            v52 = *(v9 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_62:
            if (v54)
            {
              goto LABEL_110;
            }

            v67 = &v9[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = &v9[16 * v10 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_117;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v10 = v48 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v77 = &v9[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_76:
          if (v72)
          {
            goto LABEL_112;
          }

          v80 = &v9[16 * v10];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_83:
          v88 = v10 - 1;
          if (v10 - 1 >= v48)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*v6)
          {
            goto LABEL_128;
          }

          v89 = *&v9[16 * v88 + 32];
          v90 = *&v9[16 * v10 + 40];
          sub_1B63958FC((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v10 + 32]), (*v6 + 8 * v90), v50);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v90 < v89)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B63BCE9C(v9);
          }

          if (v88 >= *(v9 + 2))
          {
            goto LABEL_107;
          }

          v91 = &v9[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          sub_1B63BCE10(v10);
          v48 = *(v9 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v9[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = &v9[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v66 >= v58)
        {
          v84 = &v9[16 * v10 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v87)
          {
            v10 = v48 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

      goto LABEL_34;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1B63958FC(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v33 = v4;
LABEL_27:
      v35 = v6;
      v23 = v6 - 1;
      --v5;
      v24 = v14;
      do
      {
        v25 = *--v24;
        v26 = v23;
        v27 = *v23;
        v28 = v25;
        v29 = v27;
        v30 = [v28 visitClassification];
        v31 = [v29 visitClassification];

        if ((v30 & 4) != 0 && (v31 & 4) == 0)
        {
          if (v5 + 1 != v35)
          {
            *v5 = *v26;
          }

          v4 = v33;
          if (v14 <= v33 || (v6 = v26, v26 <= v7))
          {
            v6 = v26;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v24;
        }

        --v5;
        v14 = v24;
        v4 = v33;
        v23 = v26;
      }

      while (v24 > v33);
      v14 = v24;
      v6 = v35;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v34 = v14;
      while (1)
      {
        v15 = v6;
        v16 = v4;
        v17 = *v4;
        v18 = *v6;
        v19 = v17;
        v20 = [v18 visitClassification];
        v21 = [v19 visitClassification];

        if ((v20 & 4) == 0 || (v21 & 4) != 0)
        {
          break;
        }

        v22 = v15;
        v6 = v15 + 1;
        v4 = v16;
        if (v7 != v15)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v7;
        v14 = v34;
        if (v4 >= v34 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v22 = v16;
      v4 = v16 + 1;
      v6 = v15;
      if (v7 == v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void sub_1B6395BBC(void *a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_1B63BEA04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = 0x696669746E656469;
  *(&v59 + 1) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61[0] = v59;
  v61[1] = v60;
  if (!*(&v60 + 1))
  {
    sub_1B6284EAC(v61, &unk_1EB943740, &qword_1B63C5030);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  v14 = swift_dynamicCast();
  (*(v9 + 56))(v7, v14 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_9:
    sub_1B6284EAC(v7, &unk_1EB943680, qword_1B63C4070);
    goto LABEL_10;
  }

  v15 = *(v9 + 32);
  v56 = a2;
  v16 = v57;
  v15(v57, v7, v8);
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = sub_1B63BEBC4();
  v19 = [v17 initWithEntityName_];

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B63C3D80;
  *(v20 + 56) = v12;
  *(v20 + 64) = sub_1B6281318();
  *(v20 + 32) = 0x696669746E656469;
  *(v20 + 40) = 0xEA00000000007265;
  v21 = sub_1B63BE9C4();
  v22 = 0x1E696AFB0uLL;
  *(v20 + 96) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
  *(v20 + 104) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
  *(v20 + 72) = v21;
  v23 = v56;
  v24 = v19;
  v25 = sub_1B63BED94();
  [v19 setPredicate_];

  type metadata accessor for MapsSyncManagedVisit();
  v26 = v58;
  v27 = sub_1B63BEEA4();
  if (v26)
  {
    (*(v9 + 8))(v16, v8);

    goto LABEL_10;
  }

  v29 = v27;

  *&v61[0] = sub_1B63BCFB8(v30);
  sub_1B6394FC0(v61);
  v54 = v19;
  v55 = v29;
  v58 = 0;
  v31 = *&v61[0];
  v32 = (*&v61[0] >> 62) & 1;
  if (*&v61[0] < 0)
  {
    LODWORD(v32) = 1;
  }

  v33 = v32;
  if (v32 != 1)
  {
    v16 = v23;
    v24 = *(*&v61[0] + 16);
    v22 = v24 != 0;
    if (v24 >= v22)
    {
      goto LABEL_15;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v52 = sub_1B63BF044();
  if (v52 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v24 = v52;
    v22 = v52 != 0;
    if (sub_1B63BF044() < v22)
    {
      goto LABEL_38;
    }

    if (sub_1B63BF044() < v24)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v16 = v23;
LABEL_15:
  if ((v31 & 0xC000000000000001) != 0)
  {

    if (v24 >= 2)
    {
      v34 = v22;
      do
      {
        v35 = v34 + 1;
        sub_1B63BF134();
        v34 = v35;
      }

      while (v24 != v35);
    }
  }

  else
  {
  }

  if (v33)
  {
    sub_1B63BF2C4();
    v37 = v36;
    v22 = v38;
    v40 = v39;

    v40 >>= 1;
    v41 = __OFSUB__(v40, v22);
    v43 = v40 - v22;
    v42 = (v43 < 0) ^ v41 | (v43 == 0);
    if (!v43)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v37 = v31 + 32;
    v41 = __OFSUB__(v24, v22);
    v43 = v24 - v22;
    v42 = (v43 < 0) ^ v41 | (v43 == 0);
    if (!v43)
    {
      goto LABEL_28;
    }
  }

  if (v42)
  {
    goto LABEL_41;
  }

  v44 = (v37 + 8 * v22);
  do
  {
    v45 = *v44++;
    [v16 deleteObject_];
    --v43;
  }

  while (v43);
LABEL_28:
  swift_unknownObjectRelease();
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_1B63BF114();

  *&v61[0] = 0x20646567727550;
  *(&v61[0] + 1) = 0xE700000000000000;
  if (!(v55 >> 62))
  {
    v46 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

LABEL_39:
  v46 = sub_1B63BF044();
LABEL_30:
  v47 = v57;

  if (__OFSUB__(v46, 1))
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }

  *&v59 = v46 - 1;
  v48 = sub_1B63BF344();
  MEMORY[0x1B8C92330](v48);

  MEMORY[0x1B8C92330](0xD000000000000011, 0x80000001B63CBA60);
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v61[0], *(&v61[0] + 1));

  *&v61[0] = 0;
  if ([v16 save_])
  {
    v49 = *(v9 + 8);
    v50 = *&v61[0];
    v49(v47, v8);
  }

  else
  {
    v51 = *&v61[0];
    sub_1B63BE824();

    swift_willThrow();
    (*(v9 + 8))(v47, v8);
  }

LABEL_10:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B6396304@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCachedUserReview();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B63963A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6396450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6396484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedFavoriteItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1B63964CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16) != 0;
  [v1 unlock];
  return v3;
}

void (*sub_1B63965B0(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
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
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943680, qword_1B63C4070);
  [v9 unlock];
  return sub_1B63966F0;
}

id sub_1B6396718(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  if (a2)
  {
    [*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  }

  sub_1B628C510(a1, v11, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B6282DFC(v11, v2 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v9, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v9, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v16 = *(v2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1B629A8E8(0, v16[2] + 1, 1, v16);
    *(v2 + v15) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1B629A8E8((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = sub_1B639A630;
  v20[5] = v14;
  *(v2 + v15) = v16;
  result = swift_endAccess();
  if (a2)
  {
    return [*(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) unlock];
  }

  return result;
}

id sub_1B63969A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = *a1;
  swift_beginAccess();
  sub_1B628C510(v4 + v10, a4, a2, a3);
  return [v9 unlock];
}

void (*sub_1B6396A84(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
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
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943210, &unk_1B63C3F50);
  [v9 unlock];
  return sub_1B6396BC4;
}

void (*sub_1B6396C70(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
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
  v9 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v9 lock];
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime;
  swift_beginAccess();
  sub_1B628C510(v1 + v10, v8, &unk_1EB943210, &unk_1B63C3F50);
  [v9 unlock];
  return sub_1B6396DB0;
}

void sub_1B6396DD8(uint64_t a1, char a2, void (*a3)(void *, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = *(*a1 + 40);
  v11 = *(*a1 + 24);
  if (a2)
  {
    sub_1B628C510(v10, v9, a4, a5);
    a3(v9, 1);
    sub_1B6284EAC(v9, a4, a5);
  }

  else
  {
    a3(v10, 1);
  }

  sub_1B6284EAC(v10, a4, a5);
  free(v10);
  free(v9);

  free(v8);
}

id sub_1B6396EC8(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a2)
  {
    [*(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  }

  sub_1B628C510(a1, v15, &unk_1EB943210, &unk_1B63C3F50);
  v16 = *a3;
  swift_beginAccess();
  sub_1B6282DFC(v15, v5 + v16, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v13, &unk_1EB943210, &unk_1B63C3F50);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_1B628A128(v13, v18 + v17, &unk_1EB943210, &unk_1B63C3F50);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v20 = *(v5 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v19) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
    *(v5 + v19) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1B629A8E8((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v24 = &v20[2 * v23];
  v24[4] = v27;
  v24[5] = v18;
  *(v5 + v19) = v20;
  result = swift_endAccess();
  if (v28)
  {
    return [*(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) unlock];
  }

  return result;
}

uint64_t sub_1B639713C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v36 - v4;
  v5 = sub_1B63BEA04();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for MapsSyncHashing();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(&v1[v22], v13, &qword_1EB9435F0, &qword_1B63C6610);
  v37 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B6284EAC(v13, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v13, v21);
    v23 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
    [v23 lock];
    v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v25 = *(*&v1[v24] + 16);
    [v23 unlock];
    if (!v25)
    {
      v19 = v21;
      return sub_1B639A148(v19, v42);
    }

    sub_1B639A0EC(v21);
  }

  v26 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v26 &selRef_setTitleLocale_];
  v27 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  v28 = v38;
  sub_1B628C510(&v1[v27], v38, &unk_1EB943680, qword_1B63C4070);
  [v26 property descriptor for VisitedLocation.hidden];
  v30 = v40;
  v29 = v41;
  if ((*(v40 + 48))(v28, 1, v41) == 1)
  {
    sub_1B6284EAC(v28, &unk_1EB943680, qword_1B63C4070);
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    v31 = v1;
  }

  else
  {
    v32 = *(v30 + 32);
    v33 = v36;
    v32(v36, v28, v29);
    v32(v19, v33, v29);
    swift_storeEnumTagMultiPayload();
  }

  v34 = v39;
  sub_1B639A52C(v19, v39);
  (*(v37 + 56))(v34, 0, 1, v14);
  swift_beginAccess();
  sub_1B6282DFC(v34, &v1[v22], &qword_1EB9435F0, &qword_1B63C6610);
  swift_endAccess();
  return sub_1B639A148(v19, v42);
}

uint64_t sub_1B63975D8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for MapsSyncHashing();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  *&v46 = v1;
  type metadata accessor for MapsSyncObject();
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F8, &qword_1B63C6618);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_1B6284EAC(&v49, &qword_1EB943600, &qword_1B63C6620);
    goto LABEL_15;
  }

  sub_1B62AA870(&v49, v52);
  sub_1B628C510(a1, v44, &unk_1EB943740, &qword_1B63C5030);
  if (!v45)
  {
    sub_1B6284EAC(v44, &unk_1EB943740, &qword_1B63C5030);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
LABEL_13:
    sub_1B6284EAC(&v46, &qword_1EB943600, &qword_1B63C6620);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_15;
  }

  if (!*(&v47 + 1))
  {
    goto LABEL_13;
  }

  sub_1B62AA870(&v46, &v49);
  v40 = a1;
  v23 = v53;
  v24 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v25 = (*(v24 + 8))(v23, v24);
  __swift_project_boxed_opaque_existential_0(&v49, *(&v50 + 1));
  DynamicType = swift_getDynamicType();
  a1 = v40;
  v27 = *(v25 + 16);
  v28 = 32;
  do
  {
    if (!v27)
    {

      __swift_destroy_boxed_opaque_existential_1(&v49);
      goto LABEL_14;
    }

    v29 = *(v25 + v28);
    v28 += 8;
    --v27;
  }

  while (DynamicType != v29);

  v30 = v53;
  v31 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  (*(v31 + 16))(v30, v31);
  v32 = v41 + 48;
  v33 = *(v41 + 48);
  if (v33(v9, 1, v10) == 1)
  {
    v34 = v9;
  }

  else
  {
    sub_1B639A148(v9, v22);
    v41 = v32;
    v38 = *(&v50 + 1);
    v39 = v51;
    __swift_project_boxed_opaque_existential_0(&v49, *(&v50 + 1));
    (*(v39 + 16))(v38, v39);
    if (v33(v7, 1, v10) != 1)
    {
      sub_1B639A148(v7, v20);
      v36 = sub_1B63AA5D4(v22, v20);
      sub_1B639A0EC(v20);
      sub_1B639A0EC(v22);
      __swift_destroy_boxed_opaque_existential_1(&v49);
      __swift_destroy_boxed_opaque_existential_1(v52);
      return v36 & 1;
    }

    sub_1B639A0EC(v22);
    v34 = v7;
  }

  sub_1B6284EAC(v34, &qword_1EB9435F0, &qword_1B63C6610);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  a1 = v40;
LABEL_15:
  sub_1B628C510(a1, v52, &unk_1EB943740, &qword_1B63C5030);
  if (!v53)
  {
    sub_1B6284EAC(v52, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v36 = 0;
    return v36 & 1;
  }

  v35 = v49;
  sub_1B639713C(v17);
  sub_1B639713C(v14);
  v36 = sub_1B63AA5D4(v17, v14);

  sub_1B639A0EC(v14);
  sub_1B639A0EC(v17);
  return v36 & 1;
}

uint64_t sub_1B6397B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v7 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  result = sub_1B63BEF24();
  if (result)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v4 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v4 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B8188;
    v15[5] = v9;
    *(v4 + v10) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B6397CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v75 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v77 = &v67 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v67 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v67 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - v18;
  v20 = sub_1B63BE994();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v25 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  result = sub_1B63BEF24();
  if (result)
  {
    v72 = v7;
    v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000001CLL, 0x80000001B63CBCB0);
    sub_1B63BE984();
    v27 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v3 + v27, v19, &unk_1EB943210, &unk_1B63C3F50);
    v28 = (*(v21 + 48))(v19, 1, v20);
    v29 = v21;
    v30 = v28;
    v31 = v19;
    v32 = v29;
    sub_1B6284EAC(v31, &unk_1EB943210, &unk_1B63C3F50);
    v33 = *(v32 + 16);
    v73 = v24;
    if (v30 == 1)
    {
      v34 = v74;
      v68 = v33;
      v33(v74, v24, v20);
      (*(v32 + 56))(v34, 0, 1, v20);
      v69 = v32;
      v35 = v76;
      sub_1B628C510(v34, v76, &unk_1EB943210, &unk_1B63C3F50);
      swift_beginAccess();
      sub_1B6282DFC(v35, v3 + v27, &unk_1EB943210, &unk_1B63C3F50);
      swift_endAccess();
      v36 = v71;
      sub_1B628C510(v34, v71, &unk_1EB943210, &unk_1B63C3F50);
      v37 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v67 = swift_allocObject();
      sub_1B628A128(v36, v67 + v37, &unk_1EB943210, &unk_1B63C3F50);
      v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
      swift_beginAccess();
      v39 = *(v3 + v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v38) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
        *(v3 + v38) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
      }

      v39[2] = v42 + 1;
      v43 = &v39[2 * v42];
      v44 = v67;
      v43[4] = sub_1B639A4DC;
      v43[5] = v44;
      *(v3 + v38) = v39;
      swift_endAccess();
      sub_1B6284EAC(v74, &unk_1EB943210, &unk_1B63C3F50);
      v33 = v68;
      v32 = v69;
      v24 = v73;
    }

    v45 = v77;
    v33(v77, v24, v20);
    (*(v32 + 56))(v45, 0, 1, v20);
    v46 = v32;
    v47 = v76;
    sub_1B628C510(v45, v76, &unk_1EB943210, &unk_1B63C3F50);
    v48 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime;
    swift_beginAccess();
    sub_1B6282DFC(v47, v4 + v48, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v49 = v70;
    sub_1B628C510(v45, v70, &unk_1EB943210, &unk_1B63C3F50);
    v50 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v51 = swift_allocObject();
    sub_1B628A128(v49, v51 + v50, &unk_1EB943210, &unk_1B63C3F50);
    v52 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v53 = *(v4 + v52);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v52) = v53;
    v55 = v20;
    if ((v54 & 1) == 0)
    {
      v53 = sub_1B629A8E8(0, v53[2] + 1, 1, v53);
      *(v4 + v52) = v53;
    }

    v56 = v75;
    v58 = v53[2];
    v57 = v53[3];
    if (v58 >= v57 >> 1)
    {
      v53 = sub_1B629A8E8((v57 > 1), v58 + 1, 1, v53);
    }

    v53[2] = v58 + 1;
    v59 = &v53[2 * v58];
    v59[4] = sub_1B639A504;
    v59[5] = v51;
    *(v4 + v52) = v53;
    swift_endAccess();
    v60 = sub_1B6284EAC(v77, &unk_1EB943210, &unk_1B63C3F50);
    v61 = *(v4 + v52);
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = *(v4 + v52);

      v64 = (v61 + 40);
      do
      {
        v66 = *(v64 - 1);
        v65 = *v64;
        v78 = a2;
        v79[0] = v56;

        v66(v79, &v78);

        v64 += 2;
        --v62;
      }

      while (v62);
    }

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))(v60);
    return (*(v46 + 8))(v73, v55);
  }

  return result;
}

void *sub_1B63983D0(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v50;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
  v23 = v51;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v24 = type metadata accessor for MapsSyncObject();
  v52.receiver = v4;
  v52.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  v27 = v26;
  if (v22)
  {
    v28 = v26;
    v29 = [v22 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v22, v23 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v17(v32, 0, 1, v16);
    v33 = v45;
    sub_1B628C510(v32, v45, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v47;
    sub_1B628C510(v32, v47, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B639A630;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

id MapsSyncObject.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithObject:0 store:v1 lazyLoad:0 parent:1];
}

id MapsSyncObject.__allocating_init(store:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithObject:0 store:a1 lazyLoad:0 parent:1];

  return v3;
}

id MapsSyncObject.init(store:)(void *a1)
{
  v3 = [v1 initWithObject:0 store:a1 lazyLoad:0 parent:1];

  return v3;
}

void *sub_1B6398A0C(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  v49 = a4;
  v50 = a3;
  v51 = a2;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  v12 = objc_allocWithZone(v4);
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v12[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing();
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v12[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v21(&v12[v19], 1, 1, v20);
  v21(&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v22 = v50;
  v23 = v51;
  *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v51;
  v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v53.receiver = v12;
  v53.super_class = v5;
  v24 = v52;
  v25 = v23;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v24)
  {
    v28 = v26;
    v29 = [v24 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v24, v22 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v18(v32, 0, 1, v17);
    v33 = v45;
    sub_1B628C510(v32, v45, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v47;
    sub_1B628C510(v32, v47, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B639A49C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

void sub_1B63993C8(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = *a2;
  sub_1B628C510(a3, &v14 - v7, &unk_1EB943680, qword_1B63C4070);
  v10 = sub_1B63BEA04();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_1B63BE9C4();
    (*(v11 + 8))(v8, v10);
  }

  v13 = sub_1B63BEBC4();
  [v9 setValue:v12 forKey:v13];
  swift_unknownObjectRelease();
}

uint64_t sub_1B6399548(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1B63BE974();
    v11 = sub_1B63BE994();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1B63BE994();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = a1;
  a4(v10, 1);

  return sub_1B6284EAC(v10, &unk_1EB943210, &unk_1B63C3F50);
}

id sub_1B6399680@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  v11 = *a2;
  swift_beginAccess();
  sub_1B628C510(v9 + v11, a5, a3, a4);
  return [*(v9 + v10) unlock];
}

void sub_1B639971C(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = *a2;
  sub_1B628C510(a3, &v14 - v7, &unk_1EB943210, &unk_1B63C3F50);
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_1B63BE954();
    (*(v11 + 8))(v8, v10);
  }

  v13 = sub_1B63BEBC4();
  [v9 setValue:v12 forKey:v13];
  swift_unknownObjectRelease();
}

id sub_1B6399890(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v10 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v11 = a1;
  [v10 lock];
  v12 = *a3;
  swift_beginAccess();
  sub_1B628C510(&v11[v12], v8, &unk_1EB943210, &unk_1B63C3F50);
  [*&a1[v9] unlock];

  v13 = sub_1B63BE994();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_1B63BE954();
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  return v16;
}

uint64_t sub_1B6399A3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(char *, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1B628C510(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  a7(v15, 1);
  return sub_1B6284EAC(v15, a5, a6);
}

void sub_1B6399AFC(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = *a2;
  sub_1B628C510(a3, &v14 - v7, &unk_1EB943210, &unk_1B63C3F50);
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_1B63BE954();
    (*(v11 + 8))(v8, v10);
  }

  v13 = sub_1B63BEBC4();
  [v9 setValue:v12 forKey:v13];
  swift_unknownObjectRelease();
}

id MapsSyncObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B639A0EC(uint64_t a1)
{
  v2 = type metadata accessor for MapsSyncHashing();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B639A148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncHashing();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B639A52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncHashing();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B639A590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

id sub_1B639A694()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B639A890@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVehicle();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B639A92C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedContactHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B639A9DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVisit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MapsSyncManagedCachedMapItemStorage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B63BEBC4();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1B639AAA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 customName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B639AB08(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1B63BEBC4();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setCustomName_];
}

void sub_1B639AB78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B628C510(a1, &v12 - v6, &unk_1EB943680, qword_1B63C4070);
  v8 = *a2;
  v9 = sub_1B63BEA04();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B63BE9C4();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_1B639ACB4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mapItemStorage];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B639AD1C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1B63BE904();
  }

  v5 = v3;
  [v2 setMapItemStorage_];
}

uint64_t sub_1B639ADC8@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B639AE8C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1B628C510(a1, &v16 - v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = *a2;
  v13 = sub_1B63BE994();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_1B63BE954();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_1B639AFC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B639B06C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVisit();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B639B0B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B639B14C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVisitedLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MapsSyncQueryOptions.__allocating_init(predicate:sortDescriptors:range:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B62895F4(a1, a2, a3);

  return v8;
}

id MapsSyncDictionaryQueryOptions.__allocating_init(propertiesToFetch:groupBy:expression:)(char *a1, uint64_t a2, char *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B639EA7C(a1, a2, a3);

  return v8;
}

id MapsSyncRange.__allocating_init(offset:limit:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t MapsSyncDateRange.init(startDate:endDate:)(char *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943628, &unk_1B63C6860);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = sub_1B63BE994();
  sub_1B639EBAC();
  result = sub_1B63BEBA4();
  if (result)
  {
    v19 = *(v17 - 8);
    v34 = v3;
    v20 = v19;
    v31 = v13;
    v21 = *(v19 + 16);
    v21(v12, a1, v17);
    v21(&v12[*(v6 + 48)], a2, v17);
    sub_1B628C510(v12, v10, &qword_1EB943628, &unk_1B63C6860);
    v22 = *(v6 + 48);
    v32 = a2;
    v33 = a1;
    v23 = *(v20 + 32);
    v23(v16, v10, v17);
    v24 = *(v20 + 8);
    v24(&v10[v22], v17);
    sub_1B639EC04(v12, v10);
    v23(&v16[*(v31 + 36)], &v10[*(v6 + 48)], v17);
    v24(v10, v17);
    v25 = type metadata accessor for MapsSyncDateRange();
    v26 = objc_allocWithZone(v25);
    sub_1B628C510(v16, v26 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
    v35.receiver = v26;
    v35.super_class = v25;
    v27 = objc_msgSendSuper2(&v35, sel_init);
    v24(v32, v17);
    v24(v33, v17);
    sub_1B6284EAC(v16, &qword_1EB943630, &qword_1B63C3E10);
    v28 = v34;
    swift_getObjectType();
    v29 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x30);
    v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x34);
    swift_deallocPartialClassInstance();
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MapsSyncDateRange.__allocating_init(range:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B628C510(a1, v3 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B6284EAC(a1, &qword_1EB943630, &qword_1B63C3E10);
  return v4;
}

id MapsSyncDateRange.init(range:)(uint64_t a1)
{
  sub_1B628C510(a1, v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range, &qword_1EB943630, &qword_1B63C3E10);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncDateRange();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1B6284EAC(a1, &qword_1EB943630, &qword_1B63C3E10);
  return v3;
}

void *sub_1B639BC80()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B639BCD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1B639BDDC()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B639BE34(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1B639BE90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B639BEE8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_1B639C044()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B639C114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B639C16C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1B639C29C()
{
  v1 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B639C334(char a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MapsSyncQueryOptions.__allocating_init(options:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B628DD60(a1);

  return v4;
}

id MapsSyncQueryOptions.init(options:)(void *a1)
{
  v2 = sub_1B628DD60(a1);

  return v2;
}

uint64_t sub_1B639C48C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B62B1E6C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B639C584(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B62B23B4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall MapsSyncQueryAttribute.string()()
{
  if (v0 <= 2)
  {
    v1 = 0xEA0000000000656DLL;
    switch(v0)
    {
      case 0:
        v1 = 0xEA00000000007265;
        v2 = 0x696669746E656469;
        goto LABEL_17;
      case 1:
        v2 = 0xD000000000000010;
        v1 = 0x80000001B63C7D10;
        goto LABEL_17;
      case 2:
        v2 = 0x6954657461657263;
        goto LABEL_17;
    }

LABEL_16:
    v2 = sub_1B63BF3A4();
    __break(1u);
    goto LABEL_17;
  }

  if (v0 > 4)
  {
    if (v0 == 5)
    {
      v1 = 0xE400000000000000;
      v2 = 1684632941;
      goto LABEL_17;
    }

    if (v0 == 6)
    {
      v1 = 0x80000001B63C9040;
      v2 = 0xD000000000000011;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v0 == 3)
  {
    v1 = 0xED00007865646E49;
    v2 = 0x6E6F697469736F70;
  }

  else
  {
    v1 = 0x80000001B63C7C80;
    v2 = 0xD00000000000001BLL;
  }

LABEL_17:
  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t sub_1B639C8FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B639ECC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MapsSyncQueryPredicate.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MapsSyncQueryPredicate.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1B639CA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B628E790(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B628E790((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1B628E928(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1B639CB54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B63BF044();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B628E790(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8C92830](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B628E790((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B628E928(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v11 = *v8;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
        swift_dynamicCast();
        v13 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1B628E790((v9 > 1), v10 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v10 + 1;
        sub_1B628E928(v12, (v3 + 32 * v10 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B639CD4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B639E81C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1B629E3F0(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B639E81C((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      *(v2 + 8 * v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id MapsSyncQueryPredicate.__allocating_init(not:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D70;
  *(v4 + 32) = a1;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v5 = a1;
  v6 = sub_1B63BEC94();

  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithType_subpredicates_, 0, v6);

  return v7;
}

id MapsSyncQueryPredicate.init(not:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C3D70;
  *(v3 + 32) = a1;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v4 = a1;
  v5 = sub_1B63BEC94();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v6 = objc_msgSendSuper2(&v8, sel_initWithType_subpredicates_, 0, v5);

  return v6;
}

id MapsSyncQueryPredicate.__allocating_init(centerLatitude:centerLongitude:squareSideLengthMeters:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B62A0D18(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B63C3D70;
  *(v9 + 32) = v8;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v10 = v8;
  v11 = sub_1B63BEC94();

  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_initWithType_subpredicates_, 1, v11);

  return v12;
}

id MapsSyncQueryPredicate.init(centerLatitude:centerLongitude:squareSideLengthMeters:)(double a1, double a2, double a3)
{
  v4 = sub_1B62A0D18(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D70;
  *(v5 + 32) = v4;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v6 = v4;
  v7 = sub_1B63BEC94();

  v10.receiver = v3;
  v10.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v8 = objc_msgSendSuper2(&v10, sel_initWithType_subpredicates_, 1, v7);

  return v8;
}

id static MapsSyncQueryPredicate.queryPredicate(format:argumentArray:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());

  return sub_1B6299B9C(a1, a2, a3);
}

id sub_1B639D3A8()
{
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v2 = objc_allocWithZone(Predicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C3D70;
  *(v3 + 32) = v0;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v4 = v0;
  v5 = sub_1B63BEC94();

  v8.receiver = v2;
  v8.super_class = Predicate;
  v6 = objc_msgSendSuper2(&v8, sel_initWithType_subpredicates_, 0, v5);

  return v6;
}

id MapsSyncQueryPredicate.init(mapItem:customName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v55 - v10;
  v12 = sub_1B63BEA04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B63C3D60;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v18 = swift_allocObject();
    v56 = xmmword_1B63C3D50;
    *(v18 + 16) = xmmword_1B63C3D50;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1B6281318();
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v17 + 32) = sub_1B63BED94();
    v19 = swift_allocObject();
    *(v19 + 16) = v56;
    [a1 coordinate];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = a1;
    v23 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(v19 + 56) = v23;
    v24 = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
    *(v19 + 64) = v24;
    *(v19 + 32) = v21;
    *(v17 + 40) = sub_1B63BED94();
    v25 = swift_allocObject();
    *(v25 + 16) = v56;
    [v22 coordinate];
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(v25 + 56) = v23;
    *(v25 + 64) = v24;
    *(v25 + 32) = v27;
    *(v17 + 48) = sub_1B63BED94();
    v28 = sub_1B63BEC94();

    Predicate = type metadata accessor for MapsSyncQueryPredicate();
    v57.receiver = v3;
    v57.super_class = Predicate;
    v30 = objc_msgSendSuper2(&v57, sel_initWithType_subpredicates_, 1, v28);

LABEL_17:
    swift_unknownObjectRelease();
    return v30;
  }

  v60 = MEMORY[0x1E69E7CC0];
  if ([a1 _hasMUID])
  {
    *&v56 = v3;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1B63C3D50;
    v32 = [a1 _muid];
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(v31 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(v31 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
    *(v31 + 32) = v33;
    sub_1B63BED94();
    MEMORY[0x1B8C92370]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v53 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v4 = v56;
  }

  else
  {
    [a1 coordinate];
    v35 = v34;
    [a1 coordinate];
    sub_1B62A0D18(v35, v36, *MEMORY[0x1E69A1670]);
    MEMORY[0x1B8C92370]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v54 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
  }

  v37 = [a1 _clientAttributes];
  if (!v37 || (v38 = v37, v39 = [v37 mapsSyncAttributes], v38, !v39) || (v40 = objc_msgSend(v39, sel_mapsSyncIdentifier), v39, !v40))
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_16;
  }

  sub_1B63BEBD4();

  sub_1B63BE9A4();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_16:
    sub_1B6284EAC(v11, &unk_1EB943680, qword_1B63C4070);
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v50 = sub_1B63BEC94();

    v51 = type metadata accessor for MapsSyncQueryPredicate();
    v59.receiver = v4;
    v59.super_class = v51;
    v30 = objc_msgSendSuper2(&v59, sel_initWithType_subpredicates_, 1, v50);

    goto LABEL_17;
  }

  (*(v13 + 32))(v16, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B63C4B90;
  v55[0] = sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v42 = swift_allocObject();
  *&v56 = v4;
  v43 = v42;
  *(v42 + 16) = xmmword_1B63C3D50;
  v44 = sub_1B63BE9C4();
  v55[1] = a1;
  v43[7] = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
  v43[8] = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
  v43[4] = v44;
  *(v41 + 32) = sub_1B63BED94();
  v45 = objc_allocWithZone(MEMORY[0x1E696AB28]);
  v46 = sub_1B63BEC94();

  v47 = [v45 initWithType:1 subpredicates:v46];

  *(v41 + 40) = v47;
  v48 = sub_1B63BEC94();

  v49 = type metadata accessor for MapsSyncQueryPredicate();
  v58.receiver = v56;
  v58.super_class = v49;
  v30 = objc_msgSendSuper2(&v58, sel_initWithType_subpredicates_, 2, v48);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v16, v12);
  return v30;
}

uint64_t sub_1B639DF10(unint64_t a1)
{
  if (a1 < 0x10)
  {
    return qword_1B63C6B38[a1];
  }

  result = sub_1B63BF3A4();
  __break(1u);
  return result;
}

uint64_t sub_1B639DF7C()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

uint64_t sub_1B639DFC4()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

unint64_t sub_1B639E008@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B639ECD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MapsSyncExpression.__allocating_init(expression:key:returnType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v8 setExpression_];
  v9 = v8;
  v10 = sub_1B63BEBC4();

  [v9 setName_];

  [v9 setExpressionResultType_];
  *&v7[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression] = v9;
  v13.receiver = v7;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id MapsSyncExpression.init(expression:key:returnType:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1B639ECE0(a1, a2, a3, a4);

  return v5;
}

id MapsSyncExpression.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncDictionaryQueryOptions.init(propertiesToFetch:groupBy:expression:)(char *a1, uint64_t a2, char *a3)
{
  v4 = sub_1B639EA7C(a1, a2, a3);

  return v4;
}

uint64_t sub_1B639E494(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = v4;
  v7 = v4;

  v8 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;
  v12 = v9;

  v13 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  v16 = *(v1 + v15);
  *(v1 + v15) = v14;

  *(v1 + OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_notifyOnLoad) = *(a1 + OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_notifyOnLoad);
  v17 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v17);
  v18 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  result = swift_beginAccess();
  *(v1 + v18) = a1;
  return result;
}

uint64_t sub_1B639E720()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch);

  v2 = *(v0 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy);
}