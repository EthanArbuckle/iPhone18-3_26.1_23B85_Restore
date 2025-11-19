uint64_t sub_1CF382978()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF3829C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1CF382D40();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF382A4C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1CF382B88(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1CF382D40()
{
  result = qword_1EDEAB4E0;
  if (!qword_1EDEAB4E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDEAB4E0);
  }

  return result;
}

unint64_t sub_1CF382D98()
{
  result = qword_1EC4BFAE0;
  if (!qword_1EC4BFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAE0);
  }

  return result;
}

unint64_t sub_1CF382DFC()
{
  result = qword_1EC4BFAE8;
  if (!qword_1EC4BFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFAE8);
  }

  return result;
}

void sub_1CF382E50()
{
  sub_1CF194384();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1CF9E5A58();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1CF382FBC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v111 = a7;
  v112 = a8;
  v117 = a6;
  v106 = a5;
  v116 = a2;
  v107 = *v8;
  v92 = sub_1CF9E63D8();
  v91 = *(v92 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v89 - v18;
  v19 = sub_1CF9E6068();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v101 = (&v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v89 - v28;
  v30 = type metadata accessor for Signpost(0);
  v99 = *(v30 - 8);
  v31 = *(v99 + 8);
  MEMORY[0x1EEE9AC00](v30);
  v105 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v100 = &v89 - v34;
  v95 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v119 = &v89 - v37;
  v38 = *(v8 + qword_1EDEBBC38);
  v115 = fpfs_adopt_log();
  v110 = a4;
  v118 = v8;
  sub_1CF3C77C8(a4, &aBlock);
  v114 = v122;
  v104 = v123;
  v103 = v124;
  v102 = v125;
  v98 = v126;
  v96 = v127;
  v39 = v128;

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDEBBE40;
  (*(v20 + 56))(v29, 1, 1, v19);
  aBlock = 0x657220636E797361;
  v122 = 0xEB00000000206461;
  v108 = a1;
  v109 = a3;
  v41 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v41);

  v94 = aBlock;
  v93 = v122;
  v97 = v29;
  sub_1CEFCCBDC(v29, v26, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = *(v20 + 48);
  if (v42(v26, 1, v19) == 1)
  {
    v43 = v40;
    v44 = v101;
    sub_1CF9E6048();
    v45 = v44;
    if (v42(v26, 1, v19) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v45 = v101;
    (*(v20 + 32))(v101, v26, v19);
  }

  v46 = v119;
  (*(v20 + 16))(v119, v45, v19);
  *(v46 + *(v30 + 20)) = v40;
  v47 = v46 + *(v30 + 24);
  v48 = v96;
  *v47 = v98;
  *(v47 + 8) = v48;
  *(v47 + 16) = v39;
  v49 = v40;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1CF9FA450;
  *(v50 + 56) = MEMORY[0x1E69E6158];
  *(v50 + 64) = sub_1CEFD51C4();
  v51 = v93;
  *(v50 + 32) = v94;
  *(v50 + 40) = v51;
  sub_1CF9E6028();

  (*(v20 + 8))(v45, v19);
  sub_1CEFCCC44(v97, &unk_1EC4BED20, &unk_1CFA00700);
  v52 = v100;
  sub_1CEFDA214(v46, v100, type metadata accessor for Signpost);
  v53 = *(v99 + 80);
  v54 = (v53 + 16) & ~v53;
  v55 = v95;
  v56 = (v95 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v99 = type metadata accessor for Signpost;
  sub_1CEFD9F8C(v52, v57 + v54, type metadata accessor for Signpost);
  v58 = (v57 + v56);
  v59 = v117;
  *v58 = v106;
  v58[1] = v59;
  v106 = v118[21];
  v60 = sub_1CF9E6448();
  v101 = *(v60 - 8);
  v101[7](v120, 1, 1, v60);
  v61 = v105;
  sub_1CEFDA214(v46, v105, type metadata accessor for Signpost);
  v62 = (v53 + 48) & ~v53;
  v100 = (v62 + v55 + 55) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + v55 + 71) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v65 = v107;
  *(v64 + 16) = *(v107 + 2632);
  *(v64 + 24) = *(v65 + 2640);
  *(v64 + 40) = *(v65 + 2656);
  sub_1CEFD9F8C(v61, v64 + v62, v99);
  v66 = v64 + ((v62 + v55 + 7) & 0xFFFFFFFFFFFFFFF8);
  v67 = v103;
  *v66 = v104;
  *(v66 + 8) = v67;
  *(v66 + 16) = v102;
  v68 = v64 + ((v62 + v55 + 31) & 0xFFFFFFFFFFFFFFF8);
  v69 = v116;
  *v68 = v108;
  *(v68 + 8) = v69;
  LOBYTE(v69) = v110;
  *(v68 + 16) = v109;
  v70 = v64 + v100;
  *v70 = v118;
  *(v70 + 8) = v69;
  v71 = (v64 + v63);
  v72 = v112;
  *v71 = v111;
  v71[1] = v72;
  v73 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v73 = sub_1CF484E94;
  v73[1] = v57;
  v74 = swift_allocObject();
  v74[2] = sub_1CF484E94;
  v74[3] = v57;
  v75 = v106;
  v74[4] = v106;
  v116 = v57;
  v76 = v101;
  swift_retain_n();

  v77 = fpfs_current_log();
  v78 = *(v75 + 16);
  v79 = v113;
  sub_1CEFCCBDC(v120, v113, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v76[6])(v79, 1, v60) == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
    v80 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v81 = v90;
    sub_1CF9E6438();
    (v76[1])(v79, v60);
    v80 = sub_1CF9E63C8();
    (*(v91 + 8))(v81, v92);
  }

  v82 = swift_allocObject();
  v82[2] = v77;
  v82[3] = sub_1CF484F60;
  v82[4] = v64;
  v125 = sub_1CF2BA17C;
  v126 = v82;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123 = sub_1CEFCA444;
  v124 = &block_descriptor_1544;
  v83 = _Block_copy(&aBlock);
  v84 = v77;

  v125 = sub_1CF2BA180;
  v126 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123 = sub_1CEFCA444;
  v124 = &block_descriptor_1547;
  v85 = _Block_copy(&aBlock);

  v86 = v114;
  fp_task_tracker_async_and_qos(v78, v114, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v80, v83, v85);
  _Block_release(v85);
  _Block_release(v83);

  sub_1CEFCCC44(v120, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5278(v119, type metadata accessor for Signpost);
  v87 = v115;
  v88 = fpfs_adopt_log();
}

BOOL sub_1CF383B74()
{
  if (*(v0 + 8) == 255)
  {
    return 0;
  }

  return *(v0 + 248) && (*(v0 + 192) & 0xF000000000000000) != 0xB000000000000000 && *(v0 + 344) == 0;
}

uint64_t sub_1CF383BB4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  v4 = a2;
  sub_1CF066180(a1, a2, v34);
  v6 = *(a1 + 36);
  v49[0] = 1 << *(a1 + 32);
  v49[1] = v6;
  v50 = 0;
  v51 = 0;
  v52 = 1;
  v7 = sub_1CF0663E4(v34, v49, a1, v4, a3, sub_1CF7BA998);
  sub_1CEFCCC44(v34, &qword_1EC4C06A8, &qword_1CFA05AB8);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v7 & ~(v7 >> 63), 0);
    v29 = v53;
    result = sub_1CF066180(a1, v4, v35);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = v39;
      v11 = v38;
      v28 = a1;
      v27 = a1 + 64;
      v12 = v35;
      v13 = v37;
      v14 = v36;
      while (1)
      {
        v15 = *v12;
        v45[0] = *v12;
        v45[1] = v14;
        v46 = v13 & 1;
        v47 = v11;
        v48 = v10 & 1;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 < 0 || v15 >= 1 << *(v28 + 32))
        {
          goto LABEL_18;
        }

        if (((*(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (*(v28 + 36) != v14)
        {
          goto LABEL_20;
        }

        v31 = *(*(v28 + 56) + 16 * v15);

        v17 = v4;

        v4(&v30, &v31);

        if (v10)
        {
          goto LABEL_24;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v30 + 16))
        {
          goto LABEL_22;
        }

        sub_1CF1A91AC(v30 + 40 * v11 + 32, &v31);

        v18 = v32;
        v19 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        v20 = (*(v19 + 16))(v18, v19);
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_1(&v31);
        v23 = v29;
        v53 = v29;
        v25 = *(v29 + 16);
        v24 = *(v29 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1CEFE95CC((v24 > 1), v25 + 1, 1);
          v23 = v53;
        }

        *(v23 + 16) = v25 + 1;
        v29 = v23;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v20;
        *(v26 + 40) = v22;
        v12 = v40;
        v4 = v17;
        result = sub_1CF477D58(v45, v28, v17, a3, &qword_1EC4C06B0, &qword_1CFA05AC0, sub_1CF4841FC, sub_1CF477F5C, v40);
        v14 = v41;
        v13 = v42;
        v11 = v43;
        ++v9;
        v10 = v44;
        if (v16 == v7)
        {
          sub_1CEFCCC44(v40, &qword_1EC4C06A8, &qword_1CFA05AB8);
          return v29;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF383F1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  v4 = a2;
  sub_1CF066180(a1, a2, v34);
  v6 = *(a1 + 36);
  v49[0] = 1 << *(a1 + 32);
  v49[1] = v6;
  v50 = 0;
  v51 = 0;
  v52 = 1;
  v7 = sub_1CF0663E4(v34, v49, a1, v4, a3, sub_1CF7BA998);
  sub_1CEFCCC44(v34, &qword_1EC4C0690, &qword_1CFA05AA0);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v7 & ~(v7 >> 63), 0);
    v29 = v53;
    result = sub_1CF066180(a1, v4, v35);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v10 = v39;
      v11 = v38;
      v28 = a1;
      v27 = a1 + 64;
      v12 = v35;
      v13 = v37;
      v14 = v36;
      while (1)
      {
        v15 = *v12;
        v45[0] = *v12;
        v45[1] = v14;
        v46 = v13 & 1;
        v47 = v11;
        v48 = v10 & 1;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 < 0 || v15 >= 1 << *(v28 + 32))
        {
          goto LABEL_18;
        }

        if (((*(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }

        if (*(v28 + 36) != v14)
        {
          goto LABEL_20;
        }

        v31 = *(*(v28 + 56) + 16 * v15);

        v17 = v4;

        v4(&v30, &v31);

        if (v10)
        {
          goto LABEL_24;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v30 + 16))
        {
          goto LABEL_22;
        }

        sub_1CF1A91AC(v30 + 40 * v11 + 32, &v31);

        v18 = v32;
        v19 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        v20 = (*(v19 + 16))(v18, v19);
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_1(&v31);
        v23 = v29;
        v53 = v29;
        v25 = *(v29 + 16);
        v24 = *(v29 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1CEFE95CC((v24 > 1), v25 + 1, 1);
          v23 = v53;
        }

        *(v23 + 16) = v25 + 1;
        v29 = v23;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v20;
        *(v26 + 40) = v22;
        v12 = v40;
        v4 = v17;
        result = sub_1CF477D58(v45, v28, v17, a3, &qword_1EC4C0698, &qword_1CFA05AA8, sub_1CF48414C, sub_1CF477FFC, v40);
        v14 = v41;
        v13 = v42;
        v11 = v43;
        ++v9;
        v10 = v44;
        if (v16 == v7)
        {
          sub_1CEFCCC44(v40, &qword_1EC4C0690, &qword_1CFA05AA0);
          return v29;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

BOOL sub_1CF384284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = sub_1CF9E6148();
  }

  while (v7 != sub_1CF9E6148());
  return v4 != 0;
}

BOOL sub_1CF3842EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1CF38431C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1CF9E5A58() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1CF042F54(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
  }

  while ((sub_1CF9E6868() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_1CF384428(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);

  if (v6)
  {
    v7 = (a3 + 42);
    do
    {
      v8 = *(v7 - 10);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      sub_1CF48034C(v8, v9, *(v7 - 1));
      sub_1CF48034C(v8, v9, v10);
      sub_1CF48034C(a1, a2, BYTE1(a2) & 1);
      v12 = sub_1CF7BC9E4(v8, v9 | (v10 << 8), a1, a2 | (((a2 >> 8) & 1) << 8));
      sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
      sub_1CF1E53F8(v8, v9, v10);
      if (v12)
      {
        v13 = qword_1CFA05BE8[v11];
        v14 = qword_1CFA05BE8[SBYTE2(a2)];
        sub_1CF1E53F8(v8, v9, v10);
        if (v13 == v14)
        {
          v15 = 1;
          goto LABEL_10;
        }
      }

      else
      {
        sub_1CF1E53F8(v8, v9, v10);
      }

      v7 += 16;
      --v6;
    }

    while (v6);
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

uint64_t sub_1CF384598(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);

  if (v6)
  {
    v7 = (a3 + 42);
    do
    {
      v8 = *(v7 - 10);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      sub_1CEFD0988(v8, v9, *(v7 - 1));
      sub_1CEFD0988(v8, v9, v10);
      sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
      v12 = sub_1CF7BC790(v8, v9 | (v10 << 8), a1, a2 | (((a2 >> 8) & 1) << 8));
      sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
      sub_1CEFD0994(v8, v9, v10);
      if (v12)
      {
        v13 = qword_1CFA05BE8[v11];
        v14 = qword_1CFA05BE8[SBYTE2(a2)];
        sub_1CEFD0994(v8, v9, v10);
        if (v13 == v14)
        {
          v15 = 1;
          goto LABEL_10;
        }
      }

      else
      {
        sub_1CEFD0994(v8, v9, v10);
      }

      v7 += 16;
      --v6;
    }

    while (v6);
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

uint64_t sub_1CF384708(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 16);

  if (v6)
  {
    if (a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2 == 0xC000000000000000;
    }

    v8 = !v7;
    v9 = a2 >> 62;
    v10 = __OFSUB__(HIDWORD(a1), a1);
    v37 = v10;
    v38 = v8;
    v35 = a2;
    v36 = HIDWORD(a1) - a1;
    v39 = BYTE6(a2);
    v34 = a1;
    v11 = (a3 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *v11 >> 62;
      if (v14 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_36;
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v21)
        {
          goto LABEL_68;
        }

        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v14)
      {
        LODWORD(v18) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_69;
        }

        v18 = v18;
        if (v9 <= 1)
        {
LABEL_33:
          v22 = v39;
          if (v9)
          {
            v22 = v36;
            if (v37)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v18 = BYTE6(v12);
        if (v9 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v9 != 2)
      {
        if (!v18)
        {
          goto LABEL_62;
        }

        goto LABEL_13;
      }

      v24 = *(a1 + 16);
      v23 = *(a1 + 24);
      v21 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v21)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

LABEL_39:
      if (v18 == v22)
      {
        if (v18 < 1)
        {
          goto LABEL_62;
        }

        if (v14 > 1)
        {
          if (v14 != 2)
          {
            memset(v41, 0, 14);
            sub_1CEFE42D4(v13, v12);
            sub_1CF363A5C(v41, a1, a2, &v40);
            sub_1CEFE4714(v13, v12);
            if (v40)
            {
              goto LABEL_62;
            }

            goto LABEL_13;
          }

          v25 = *(v13 + 16);
          v26 = *(v13 + 24);
          sub_1CEFE42D4(*(v11 - 1), *v11);
          v27 = sub_1CF9E5498();
          if (v27)
          {
            v28 = sub_1CF9E54C8();
            if (__OFSUB__(v25, v28))
            {
              goto LABEL_72;
            }

            v27 += v25 - v28;
          }

          if (__OFSUB__(v26, v25))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (!v14)
          {
            v41[0] = *(v11 - 1);
            LOWORD(v41[1]) = v12;
            BYTE2(v41[1]) = BYTE2(v12);
            BYTE3(v41[1]) = BYTE3(v12);
            BYTE4(v41[1]) = BYTE4(v12);
            BYTE5(v41[1]) = BYTE5(v12);
            sub_1CEFE42D4(v13, v12);
            sub_1CF363A5C(v41, a1, a2, &v40);
            sub_1CEFE4714(v13, v12);
            if (v40)
            {
              goto LABEL_62;
            }

LABEL_60:
            v8 = v38;
            goto LABEL_13;
          }

          if (v13 >> 32 < v13)
          {
            goto LABEL_70;
          }

          sub_1CEFE42D4(*(v11 - 1), *v11);
          v27 = sub_1CF9E5498();
          if (v27)
          {
            v29 = sub_1CF9E54C8();
            if (__OFSUB__(v13, v29))
            {
              goto LABEL_73;
            }

            v27 += v13 - v29;
          }
        }

        sub_1CF9E54B8();
        v30 = v27;
        a1 = v34;
        a2 = v35;
        sub_1CF363A5C(v30, v34, v35, v41);
        sub_1CEFE4714(v13, v12);
        if (v41[0])
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

LABEL_13:
      v11 += 2;
      if (!--v6)
      {
        v31 = 0;
        goto LABEL_65;
      }
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12 == 0xC000000000000000;
    }

    v17 = !v15 || v9 < 3;
    if (((v17 | v8) & 1) == 0)
    {
LABEL_62:
      v31 = 1;
      goto LABEL_65;
    }

LABEL_36:
    v18 = 0;
    if (v9 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v31 = 0;
LABEL_65:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1CF384AD0(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v6 = (a5 + 56);
    do
    {
      if (*(v6 - 3) == a1 && *(v6 - 4) == a2)
      {
        if (*v6)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && *(v6 - 1) == a3)
        {
          return 1;
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  return 0;
}

unint64_t sub_1CF384B2C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);

  if (!v7)
  {
LABEL_47:

    return 0;
  }

  v8 = a2 == 2;
  v9 = a1 == 1 && a2 == 2;
  v32 = v9;
  if (a1)
  {
    v8 = 0;
  }

  v30 = v8;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v10;
  v33 = 4 * v10;
  v11 = (a5 + 56);
  while (1)
  {
    v13 = *(v11 - 3);
    v15 = *(v11 - 1);
    v14 = *v11;
    if (*(v11 - 16))
    {
      if (*(v11 - 16) == 1)
      {
        if (a2 != 1 || v13 != a1)
        {
          goto LABEL_12;
        }
      }

      else if (v13)
      {
        if (!v32)
        {
          goto LABEL_12;
        }
      }

      else if (!v30)
      {
        goto LABEL_12;
      }
    }

    else if (a2 || v13 != a1)
    {
      goto LABEL_12;
    }

    if ((v14 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v17 = *v11;

    if (!v16)
    {
      goto LABEL_36;
    }

    if (sub_1CF9E6B38() == 12565487 && v18 == 0xA300000000000000)
    {
      break;
    }

    v19 = sub_1CF9E8048();

    if (v19)
    {
      goto LABEL_33;
    }

LABEL_36:

    v23 = v14;
    if (!v34)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (sub_1CF9E6B38() == 12565487 && v24 == 0xA300000000000000)
    {

LABEL_41:
      result = sub_1CF9E69E8();
      if (v33 < result >> 14)
      {
        goto LABEL_50;
      }

      v26 = sub_1CF9E6B58();
      v27 = MEMORY[0x1D3868C10](v26);
      v29 = v28;

      if (v15 != v27)
      {
        goto LABEL_11;
      }

LABEL_45:
      if (v23 == v29)
      {

LABEL_48:

        return 1;
      }

      goto LABEL_11;
    }

    v25 = sub_1CF9E8048();

    if (v25)
    {
      goto LABEL_41;
    }

LABEL_44:

    v29 = a4;
    if (v15 == a3)
    {
      goto LABEL_45;
    }

LABEL_11:
    v12 = sub_1CF9E8048();

    if (v12)
    {
      goto LABEL_48;
    }

LABEL_12:
    v11 += 4;
    if (!--v7)
    {
      goto LABEL_47;
    }
  }

LABEL_33:
  result = sub_1CF9E69E8();
  if (4 * v16 >= result >> 14)
  {
    v21 = sub_1CF9E6B58();
    v15 = MEMORY[0x1D3868C10](v21);
    v23 = v22;

    if (!v34)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1CF384EC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1CF7BF2C0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CF7D2684();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
    v21 = *(v14 - 8);
    sub_1CEFE55D0(v13 + *(v21 + 72) * v9, a3, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CF1D02FC(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1CF3850A0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v1);
    v19 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = qword_1EDEA4990;
  swift_beginAccess();
  v3 = *&v0[v2];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*&v0[v2] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v11;
LABEL_9:
      v14 = *(*(v1 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        goto LABEL_15;
      }

      v9 &= v9 - 1;
      v11 = v13;
      if (!v9)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v16 = objc_sync_exit(v0);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v19 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v18, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v12;
}

uint64_t sub_1CF38525C()
{
  v1 = sub_1CF9E6448();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E73D8();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v14 = qword_1EDEBB760;
  }

  v15 = *(v0 + v14);
  result = swift_beginAccess();
  if (*(v0 + 80) == 1 && (*(v0 + 96) & 1) == 0)
  {
    v17 = *(v0 + 88);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      __break(1u);
    }

    else
    {
      v19 = v0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v21 = v20;
      result = (*(v10 + 8))(v13, v9);
      v22 = v21 * 1000000000.0;
      if (COERCE__INT64(fabs(v21 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v22 > -9.22337204e18)
        {
          if (v22 < 9.22337204e18)
          {
            if (v18 <= v22)
            {
              return result;
            }

            v32 = v18;
            v23 = v22;
            sub_1CF3857C8();
            v24 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
            v31[1] = *(v0 + qword_1EDEA4968);
            v31[2] = v24;
            v35 = MEMORY[0x1E69E7CC0];
            sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CF9E77B8();
            v25 = sub_1CF9E73E8();
            (*(v33 + 8))(v8, v5);
            v26 = *(v19 + qword_1EDEBB6C0);
            *(v19 + qword_1EDEBB6C0) = v25;
            swift_unknownObjectRelease();
            swift_getObjectType();
            v27 = swift_allocObject();
            swift_weakInit();
            swift_unknownObjectRetain();

            sub_1CF042F9C();
            sub_1CEFD5828(0, v4, sub_1CF481034, v27);

            (*(v34 + 8))(v4, v1);

            v28 = v32 - v23;
            if (!__OFSUB__(v32, v23))
            {
              v29 = dispatch_time(0x8000000000000000, 0);
              v30 = dispatch_time(v29, v28);
              sub_1CF4FBB4C(v30);
              sub_1CF9E7428();
              return swift_unknownObjectRelease();
            }

LABEL_17:
            __break(1u);
            return result;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1CF385728()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1CF3857C8();
    v2 = *(v1 + qword_1EDEBB6D0);
    if (v2)
    {
      v3 = *(v1 + qword_1EDEBB6D0 + 8);

      v2(1);
      sub_1CEFF7124(v2);
    }
  }

  return result;
}

uint64_t sub_1CF3857C8()
{
  v1 = qword_1EDEBB6C0;
  if (*(v0 + qword_1EDEBB6C0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      v2 = *(v0 + v1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v3 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF385874()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF386068(0);
  if (v8)
  {
    v9 = (v0 + 80);
    swift_beginAccess();
    return *v9;
  }

  v11 = v7;
  v12 = sub_1CF3850A0();
  v9 = (v1 + 80);
  result = swift_beginAccess();
  v13 = v11 - v12;
  v14 = __OFSUB__(v11, v12);
  if (*(v1 + 80))
  {
    if (!v14)
    {
      if (v13 < *(v1 + qword_1EDEBB6E8))
      {
        *(v1 + 80) = 0;
        *(v1 + 72) = 1;
        sub_1CF7F20A0();
        v15 = v1 + qword_1EDEBB6D0;
        v16 = *(v1 + qword_1EDEBB6D0);
        if (v16)
        {
          v17 = *(v15 + 8);

          v16(0);
          sub_1CEFF7124(v16);
        }
      }

      return *v9;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v14)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v1 + qword_1EDEBB6E0) >= v13)
  {
    return *v9;
  }

  *(v1 + 80) = 1;
  *(v1 + 72) = 1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  result = (*(v3 + 8))(v6, v2);
  v20 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v20 < 9.22337204e18)
  {
    *(v1 + 88) = v20;
    *(v1 + 96) = 0;
    *(v1 + 72) = 1;
    sub_1CF7F20A0();
    sub_1CF38525C();
    return *v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1CF385AD8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v4 = *(v1 + qword_1EDEA4970 + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + qword_1EDEA4970);
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v6 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000015;
  v7 = 5457241;
  if (a1)
  {
    v7 = 20302;
  }

  v8 = 0xE300000000000000;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 168) = v5;
  *(inited + 136) = 0x80000001CFA2EA30;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v9 = sub_1CF9E6618();

  v10 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1CF9E6628();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1CF385DE4()
{
  v1 = v0;
  v2 = sub_1CF9E6498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  if (*(v0 + qword_1EDEBB708 + 8))
  {
    v13 = qword_1EDEA4988;
    swift_beginAccess();
    (*(v3 + 16))(v12, v0 + v13, v2);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v14 = sub_1CF9E6468();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v10, v2);
    v16 = sub_1CF385AD8((v14 & 1) == 0);
    if (v17)
    {
      v15(v12, v2);
      return 0;
    }

    else
    {
      v20 = v16;
      sub_1CF9E6478();
      v15(v12, v2);
      swift_beginAccess();
      (*(v3 + 40))(v1 + v13, v10, v2);
      swift_endAccess();
      return v20;
    }
  }

  else
  {
    result = *(v0 + qword_1EDEBB708);
    if (!*(v0 + qword_1EDEBB6C8 + 8))
    {
      v19 = *(v0 + qword_1EDEBB6C8);
    }
  }

  return result;
}

uint64_t sub_1CF386068(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6498();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = v2 + qword_1EDEBB708;
  if (*(v2 + qword_1EDEBB708 + 8) == 1)
  {
    v16 = qword_1EDEA4980;
    swift_beginAccess();
    v17 = *(v5 + 16);
    v28 = v16;
    v17(v14, v2 + v16, v4);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v18 = sub_1CF9E6468();
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v12, v4);
    if (a1 & 1) == 0 || (v18)
    {
      v20 = [*(v2 + 120) freeSize];
      if (v20)
      {
        v21 = v20;
        v22 = (v2 + qword_1EDEBB740);
        if (*(v2 + qword_1EDEBB740 + 8) == 1)
        {
          if (*(v2 + 152))
          {
            v19(v14, v4);

LABEL_14:
            v15 = v2 + 128;
            v25 = *(v2 + 136);
            return *v15;
          }

          v22 = (v2 + 144);
        }

        v23 = *v22;
        *(v2 + 128) = [v20 longLongValue];
        *(v2 + 136) = 0;
        if (v23 < [v21 longLongValue])
        {
          *(v2 + 128) = v23;
          *(v2 + 136) = 0;
        }

        sub_1CF9E6478();

        v19(v14, v4);
        v24 = v28;
        swift_beginAccess();
        (*(v5 + 40))(v2 + v24, v12, v4);
        swift_endAccess();
        goto LABEL_14;
      }
    }

    v19(v14, v4);
    goto LABEL_14;
  }

  return *v15;
}

uint64_t sub_1CF386354(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_sync_enter(v1);
  if (v9)
  {
LABEL_41:
    MEMORY[0x1EEE9AC00](v9);
    *(&v36 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v36 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v10 = *(v1 + 13);
  v11 = v1[112];
  v12 = objc_sync_exit(v1);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v35 = &v36 - 4;
    *(&v36 - 2) = v1;
    goto LABEL_43;
  }

  v9 = sub_1CF3850A0();
  v13 = v9 + a1;
  if (__OFADD__(v9, a1))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = sub_1CF385DE4();
  if (v15)
  {
    return 0;
  }

  v16 = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
    goto LABEL_32;
  }

  v17 = qword_1EDEBB6E8;
  if (v16 >= *&v1[qword_1EDEBB6E8] || v14 == 0)
  {
    return 0;
  }

  v19 = v9;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  v9 = (*(v5 + 8))(v8, v4);
  v22 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  if (v10 >= v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = v11;
  }

  if (v24)
  {
    goto LABEL_21;
  }

  v25 = __OFSUB__(v23, v10);
  v26 = v23 - v10;
  if (v25)
  {
    goto LABEL_36;
  }

  v27 = *&v1[qword_1EDEBB768];
  v25 = __OFSUB__(v27, v26);
  v28 = v27 - v26;
  if (v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v28 >= 1)
  {
    return 0;
  }

LABEL_21:
  v9 = objc_sync_enter(v1);
  if (v9)
  {
    goto LABEL_41;
  }

  v30 = sub_1CF385874();
  v9 = objc_sync_exit(v2);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v35 = &v36 - 4;
    *(&v36 - 2) = v2;
LABEL_43:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v35, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

  v31 = *&v2[v17];
  v25 = __OFADD__(v31, a1);
  v32 = v31 + a1;
  if (v25)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!__OFSUB__(v32, v19))
  {
    return 1;
  }

  __break(1u);
LABEL_28:
  v33 = *&v2[qword_1EDEBB6E0];
  v25 = __OFADD__(v33, a1);
  v34 = v33 + a1;
  if (v25)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v34, v19))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  return 1;
}

void sub_1CF386704(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E5CF8();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF386354(a2) & 1) == 0 || (*(a1 + qword_1EDEBB6F0))
  {
    a3(0);
    return;
  }

  v18 = v17;
  v44 = qword_1EDEBB6F0;
  v45 = a3;
  v46 = a4;
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E7298();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_1CEFC7000, v20, v21, "💾 calling CD to purge: %lld", v22, 0xCu);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(a1 + qword_1EDEBB6F8);
  if (v23)
  {
    v24 = *(a1 + qword_1EDEBB6F8 + 8);

    v25 = v23(v18);
    v26 = *(a1 + qword_1EDEBB700);
    if (v26)
    {
      v27 = *(a1 + qword_1EDEBB700 + 8);

      v26(v18);
      sub_1CEFF7124(v26);
    }

    v28 = v45;
    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    v29 = objc_sync_enter(a1);
    if (v29)
    {
LABEL_20:
      MEMORY[0x1EEE9AC00](v29);
      *(&v43 - 2) = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v43 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v31 = v30;
    v29 = (*(v47 + 8))(v11, v8);
    v32 = v31 * 1000000000.0;
    if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v33 = v32;
        swift_beginAccess();
        *(a1 + 104) = v33;
        *(a1 + 112) = 0;
        *(a1 + 72) = 1;
        sub_1CF7F20A0();
        v34 = objc_sync_exit(a1);
        if (v34)
        {
          MEMORY[0x1EEE9AC00](v34);
          *(&v43 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v43 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_15:
        sub_1CF385874();
        v28(v25 & 1);
        sub_1CEFF7124(v23);
        return;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v36 = *(a1 + qword_1EDEA4970 + 8);
  v37 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(a1 + qword_1EDEA4970);
  *(inited + 56) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v38 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v38;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = MEMORY[0x1E69E7360];
  *(inited + 136) = 0x80000001CFA2E9D0;
  *(inited + 144) = v18;

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  *(a1 + v44) = 1;
  v39 = sub_1CF9E6618();

  v40 = swift_allocObject();
  v41 = v45;
  v40[2] = a1;
  v40[3] = v41;
  v40[4] = v46;
  aBlock[4] = sub_1CF481028;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF02C158;
  aBlock[3] = &block_descriptor_850;
  v42 = _Block_copy(aBlock);

  CacheDeletePurgeSpaceWithInfo();
  _Block_release(v42);
}

uint64_t sub_1CF386D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v54 = a2;
  v4 = sub_1CF9E63A8();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6448();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (aBlock[0] = 0, sub_1CF9E6628(), (v23 = aBlock[0]) == 0))
  {
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "💾 No results returned by CacheDeletePurgeSpaceWithInfo", v37, 2u);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    goto LABEL_11;
  }

  if (*(aBlock[0] + 16))
  {
    v24 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EA10);
    if (v25)
    {
      sub_1CEFD1104(*(v23 + 56) + 32 * v24, aBlock);
      if (swift_dynamicCast())
      {

        v27 = v57;
        v26 = v58;
        v28 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v29 = sub_1CF9E6108();
        v30 = sub_1CF9E72A8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v31 = 136315138;
          v33 = sub_1CEFD0DF0(v27, v26, aBlock);

          *(v31 + 4) = v33;
          _os_log_impl(&dword_1CEFC7000, v29, v30, "💾 CD failed while purging with: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1D386CDC0](v32, -1, -1);
          MEMORY[0x1D386CDC0](v31, -1, -1);
        }

        else
        {
        }

        (*(v13 + 8))(v20, v12);
LABEL_11:
        v38 = 0;
        goto LABEL_21;
      }
    }
  }

  if (!*(v23 + 16) || (v39 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2E9D0), (v40 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_1CEFD1104(*(v23 + 56) + 32 * v39, aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v41 = 0;
    goto LABEL_18;
  }

  v41 = v57;
LABEL_18:
  v42 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v43 = sub_1CF9E6108();
  v44 = sub_1CF9E7298();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = v41;
    _os_log_impl(&dword_1CEFC7000, v43, v44, "💾 CD was able to purge: %lld bytes", v45, 0xCu);
    MEMORY[0x1D386CDC0](v45, -1, -1);
  }

  (*(v13 + 8))(v22, v12);
  v46 = v54;
  v47 = *(v54 + qword_1EDEA4968);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v41;
  aBlock[4] = sub_1CF48103C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_863;
  v49 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v11, v7, v49);
  _Block_release(v49);
  (*(v53 + 8))(v7, v4);
  (*(v51 + 8))(v11, v52);

  v38 = 1;
LABEL_21:
  sub_1CF385874();
  return v56(v38);
}

uint64_t sub_1CF3874C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_sync_enter(a1);
  if (v9)
  {
LABEL_12:
    MEMORY[0x1EEE9AC00](v9);
    *(&v18 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v18 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v11 = v10;
  v9 = (*(v5 + 8))(v8, v4);
  v12 = v11 * 1000000000.0;
  if (COERCE__INT64(fabs(v11 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  swift_beginAccess();
  *(a1 + 104) = v13;
  *(a1 + 112) = 0;
  *(a1 + 72) = 1;
  sub_1CF7F20A0();
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v18 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v18 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  *(a1 + qword_1EDEBB6F0) = 0;
  v15 = a1 + qword_1EDEBB700;
  v16 = *(a1 + qword_1EDEBB700);
  if (v16)
  {
    v17 = *(v15 + 8);

    v16(a2);
    return sub_1CEFF7124(v16);
  }

  return result;
}

uint64_t sub_1CF38773C()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    return 0;
  }

  v6 = *(v0 + 88);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  v10 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  if (v6 >= v10)
  {
    return 0;
  }

  v12 = __OFSUB__(v11, v6);
  v13 = v11 - v6;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v14 = qword_1EDEBB760;
  }

  v15 = *(v0 + v14);
  v12 = __OFSUB__(v15, v13);
  v16 = v15 - v13;
  if (!v12)
  {
    return v16 >= 1;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CF3878F8()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF387A54(v0);
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF387A54(uint64_t a1)
{
  sub_1CF9E7948();

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(a1 + 80))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v2, v3);

  if ((*(a1 + 112) & 1) == 0)
  {
    v5 = *(a1 + 104);
    sub_1CF9E7948();

    sub_1CF064F48();
    v6 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v6);

    MEMORY[0x1D3868CC0](0x7275507473616C20, 0xEF3A657461446567);
  }

  if (*(a1 + 96))
  {
    goto LABEL_14;
  }

  v7 = qword_1EDEBB758;
  if (*(a1 + qword_1EDEBB758 + 8))
  {
    v7 = qword_1EDEBB760;
  }

  if (!__OFADD__(*(a1 + 88), *(a1 + v7)))
  {
    sub_1CF9E7948();

    sub_1CF064F48();
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v8);

    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2E960);

LABEL_14:
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    return 0x64656572476E693CLL;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CF387C98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CF387CEC;
}

uint64_t sub_1CF387CEC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 72) = 1;
  }

  return result;
}

uint64_t sub_1CF387D24(uint64_t a1)
{
  if (qword_1EDEAE1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (qword_1EDEAB998 != -1)
  {
    swift_once();
  }

  v2 = sub_1CF042F54(&qword_1EDEAE400, type metadata accessor for Continuation);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Continuation();
  v5 = v3(v4, v2);
  v7 = v6;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = off_1EDEAB9A0;
  off_1EDEAB9A0 = 0x8000000000000000;
  sub_1CF1D17EC(a1, v5, v7, isUniquelyReferenced_nonNull_native);

  off_1EDEAB9A0 = v10;
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(&dword_1EDEAE1F8);
  return swift_endAccess();
}

uint64_t sub_1CF387EDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF70, &qword_1CF9FB468);
  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF68, &qword_1CF9FB458);
  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF60, &qword_1CF9FB450);
  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF58, &qword_1CF9FB448);
  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF50, &qword_1CF9FB440);
  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0260, &unk_1CF9FCB00);
  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD50, &unk_1CF9FB430);
  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF48, &qword_1CF9FB428);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0270, &unk_1CFA05770);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0240, &qword_1CFA05750);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0280, &unk_1CF9FB400);
  if (swift_dynamicCastMetatype())
  {
    return 18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF38, &qword_1CF9FB3F8);
  if (swift_dynamicCastMetatype())
  {
    return 19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
  if (swift_dynamicCastMetatype())
  {
    return 20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF30, &qword_1CF9FB3E8);
  if (swift_dynamicCastMetatype())
  {
    return 21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF28, &qword_1CF9FB3E0);
  if (swift_dynamicCastMetatype())
  {
    return 22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF20, &unk_1CFA05470);
  if (swift_dynamicCastMetatype())
  {
    return 23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02A0, &unk_1CF9FB3D0);
  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF10, &qword_1CF9FB3C0);
  if (swift_dynamicCastMetatype())
  {
    return 26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02B0, &unk_1CFA05780);
  if (swift_dynamicCastMetatype())
  {
    return 27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF08, &unk_1CF9FB3B0);
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02C0, &unk_1CFA05790);
  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF00, &unk_1CF9FB3A0);
  if (swift_dynamicCastMetatype())
  {
    return 30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02D0, &unk_1CFA057A0);
  if (swift_dynamicCastMetatype())
  {
    return 31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
  if (swift_dynamicCastMetatype())
  {
    return 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF0, &qword_1CF9FB388);
  if (swift_dynamicCastMetatype())
  {
    return 33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02E0, &unk_1CFA057B0);
  if (swift_dynamicCastMetatype())
  {
    return 63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
  if (swift_dynamicCastMetatype())
  {
    return 64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02F0, &qword_1CF9FB380);
  if (swift_dynamicCastMetatype())
  {
    return 34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE8, &qword_1CF9FB378);
  if (swift_dynamicCastMetatype())
  {
    return 35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0300, &qword_1CF9FB370);
  if (swift_dynamicCastMetatype())
  {
    return 36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEE0, &unk_1CFA18220);
  if (swift_dynamicCastMetatype())
  {
    return 37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0310, &unk_1CF9FB360);
  if (swift_dynamicCastMetatype())
  {
    return 38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED8, &qword_1CF9FB358);
  if (swift_dynamicCastMetatype())
  {
    return 39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0320, &qword_1CF9FB350);
  if (swift_dynamicCastMetatype())
  {
    return 40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDED0, &qword_1CF9FB348);
  if (swift_dynamicCastMetatype())
  {
    return 41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0330, &qword_1CF9FB340);
  if (swift_dynamicCastMetatype())
  {
    return 42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC8, &qword_1CF9FB338);
  if (swift_dynamicCastMetatype())
  {
    return 43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0340, &qword_1CF9FB330);
  if (swift_dynamicCastMetatype())
  {
    return 44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEC0, &qword_1CF9FB328);
  if (swift_dynamicCastMetatype())
  {
    return 45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0350, &qword_1CF9FB320);
  if (swift_dynamicCastMetatype())
  {
    return 46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB8, &qword_1CF9FB318);
  if (swift_dynamicCastMetatype())
  {
    return 47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0360, &qword_1CF9FB310);
  if (swift_dynamicCastMetatype())
  {
    return 48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEB0, &qword_1CF9FB308);
  if (swift_dynamicCastMetatype())
  {
    return 49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0370, &qword_1CF9FB300);
  if (swift_dynamicCastMetatype())
  {
    return 50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA8, &qword_1CF9FB2F8);
  if (swift_dynamicCastMetatype())
  {
    return 51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0380, &qword_1CF9FB2F0);
  if (swift_dynamicCastMetatype())
  {
    return 52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEA0, &qword_1CF9FB2E8);
  if (swift_dynamicCastMetatype())
  {
    return 53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0390, &qword_1CF9FB2E0);
  if (swift_dynamicCastMetatype())
  {
    return 54;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE98, &qword_1CF9FB2D8);
  if (swift_dynamicCastMetatype())
  {
    return 55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03A0, &qword_1CF9FB2D0);
  if (swift_dynamicCastMetatype())
  {
    return 56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
  if (swift_dynamicCastMetatype())
  {
    return 57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE90, &unk_1CF9FB2C0);
  if (swift_dynamicCastMetatype())
  {
    return 58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03B0, &unk_1CFA057C0);
  if (swift_dynamicCastMetatype())
  {
    return 59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE88, &unk_1CF9FB2B0);
  if (swift_dynamicCastMetatype())
  {
    return 62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03C0, &unk_1CFA057D0);
  if (swift_dynamicCastMetatype())
  {
    return 60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE80, &unk_1CF9FB2A0);
  if (swift_dynamicCastMetatype())
  {
    return 61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03D0, &unk_1CFA057E0);
  if (swift_dynamicCastMetatype())
  {
    return 65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
  if (swift_dynamicCastMetatype())
  {
    return 66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE68, &qword_1CF9FB278);
  if (swift_dynamicCastMetatype())
  {
    return 67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
  if (swift_dynamicCastMetatype())
  {
    return 68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE60, &qword_1CF9FB268);
  if (swift_dynamicCastMetatype())
  {
    return 69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03F0, &qword_1CF9FB260);
  if (swift_dynamicCastMetatype())
  {
    return 70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE58, &qword_1CF9FB258);
  if (swift_dynamicCastMetatype())
  {
    return 71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0400, &qword_1CF9FB250);
  if (swift_dynamicCastMetatype())
  {
    return 72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE50, &qword_1CF9FB248);
  if (swift_dynamicCastMetatype())
  {
    return 73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0410, &qword_1CF9FB240);
  if (swift_dynamicCastMetatype())
  {
    return 74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCA0, &unk_1CFA053F0);
  if (swift_dynamicCastMetatype())
  {
    return 75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE48, &unk_1CF9FB230);
  if (swift_dynamicCastMetatype())
  {
    return 76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0420, &unk_1CFA057F0);
  if (swift_dynamicCastMetatype())
  {
    return 77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE40, &unk_1CF9FB220);
  if (swift_dynamicCastMetatype())
  {
    return 78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0430, &unk_1CFA05800);
  if (swift_dynamicCastMetatype())
  {
    return 79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE38, &unk_1CF9FB210);
  if (swift_dynamicCastMetatype())
  {
    return 80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0440, &unk_1CFA05810);
  if (swift_dynamicCastMetatype())
  {
    return 81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE30, &unk_1CF9FB200);
  if (swift_dynamicCastMetatype())
  {
    return 82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE28, &qword_1CF9FB1F8);
  if (swift_dynamicCastMetatype())
  {
    return 83;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0450, &qword_1CF9FB1F0);
  if (swift_dynamicCastMetatype())
  {
    return 84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE20, &qword_1CF9FB1E8);
  if (swift_dynamicCastMetatype())
  {
    return 85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0460, &qword_1CF9FB1E0);
  if (swift_dynamicCastMetatype())
  {
    return 86;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE18, &qword_1CF9FB1D8);
  if (swift_dynamicCastMetatype())
  {
    return 87;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0470, &qword_1CF9FB1D0);
  if (swift_dynamicCastMetatype())
  {
    return 88;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF388E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA58, &unk_1CFA05640);
  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDB0, &unk_1CF9FAE50);
  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF90, &qword_1CF9FAE40);
  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA40, &qword_1CF9FEFB0);
  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA38, &unk_1CF9FAE30);
  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFA0, &qword_1CF9FAE28);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA30, &unk_1CFA05650);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA28, &unk_1CFA05660);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFC0, &unk_1CF9FAE00);
  if (swift_dynamicCastMetatype())
  {
    return 18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA20, &unk_1CFA05670);
  if (swift_dynamicCastMetatype())
  {
    return 19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFD0, &unk_1CF9FADF0);
  if (swift_dynamicCastMetatype())
  {
    return 20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA18, &unk_1CFA05680);
  if (swift_dynamicCastMetatype())
  {
    return 21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFE0, &unk_1CF9FADE0);
  if (swift_dynamicCastMetatype())
  {
    return 22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
  if (swift_dynamicCastMetatype())
  {
    return 23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA08, &qword_1CF9FADD0);
  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
  if (swift_dynamicCastMetatype())
  {
    return 26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFF0, &qword_1CF9FADB8);
  if (swift_dynamicCastMetatype())
  {
    return 27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F0, &qword_1CF9FADB0);
  if (swift_dynamicCastMetatype())
  {
    return 28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
  if (swift_dynamicCastMetatype())
  {
    return 29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0000, &unk_1CF9FADA0);
  if (swift_dynamicCastMetatype())
  {
    return 30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9E8, &unk_1CFA05690);
  if (swift_dynamicCastMetatype())
  {
    return 31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
  if (swift_dynamicCastMetatype())
  {
    return 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0010, &qword_1CF9FAD88);
  if (swift_dynamicCastMetatype())
  {
    return 33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD968, &unk_1CFA056A0);
  if (swift_dynamicCastMetatype())
  {
    return 63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
  if (swift_dynamicCastMetatype())
  {
    return 64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9E0, &qword_1CF9FAD80);
  if (swift_dynamicCastMetatype())
  {
    return 34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0030, &qword_1CF9FAD78);
  if (swift_dynamicCastMetatype())
  {
    return 35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D8, &qword_1CF9FAD70);
  if (swift_dynamicCastMetatype())
  {
    return 36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0040, &qword_1CF9FAD68);
  if (swift_dynamicCastMetatype())
  {
    return 37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
  if (swift_dynamicCastMetatype())
  {
    return 38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0050, &qword_1CF9FAD58);
  if (swift_dynamicCastMetatype())
  {
    return 39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C8, &qword_1CF9FAD50);
  if (swift_dynamicCastMetatype())
  {
    return 40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0060, &qword_1CF9FAD48);
  if (swift_dynamicCastMetatype())
  {
    return 41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9C0, &qword_1CF9FAD40);
  if (swift_dynamicCastMetatype())
  {
    return 42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0070, &qword_1CF9FAD38);
  if (swift_dynamicCastMetatype())
  {
    return 43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B8, &qword_1CF9FAD30);
  if (swift_dynamicCastMetatype())
  {
    return 44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0080, &qword_1CF9FAD28);
  if (swift_dynamicCastMetatype())
  {
    return 45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9B0, &qword_1CF9FAD20);
  if (swift_dynamicCastMetatype())
  {
    return 46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0090, &qword_1CF9FAD18);
  if (swift_dynamicCastMetatype())
  {
    return 47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A8, &qword_1CF9FAD10);
  if (swift_dynamicCastMetatype())
  {
    return 48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00A0, &qword_1CF9FAD08);
  if (swift_dynamicCastMetatype())
  {
    return 49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9A0, &qword_1CF9FAD00);
  if (swift_dynamicCastMetatype())
  {
    return 50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00B0, &qword_1CF9FACF8);
  if (swift_dynamicCastMetatype())
  {
    return 51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD998, &qword_1CF9FACF0);
  if (swift_dynamicCastMetatype())
  {
    return 52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00C0, &qword_1CF9FACE8);
  if (swift_dynamicCastMetatype())
  {
    return 53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD990, &qword_1CF9FACE0);
  if (swift_dynamicCastMetatype())
  {
    return 54;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00D0, &qword_1CF9FACD8);
  if (swift_dynamicCastMetatype())
  {
    return 55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD988, &qword_1CF9FACD0);
  if (swift_dynamicCastMetatype())
  {
    return 56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
  if (swift_dynamicCastMetatype())
  {
    return 57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD980, &qword_1CF9FACC0);
  if (swift_dynamicCastMetatype())
  {
    return 58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00F0, &qword_1CF9FACB8);
  if (swift_dynamicCastMetatype())
  {
    return 59;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD978, &qword_1CF9FACB0);
  if (swift_dynamicCastMetatype())
  {
    return 62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0100, &qword_1CF9FACA8);
  if (swift_dynamicCastMetatype())
  {
    return 60;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD970, &qword_1CF9FACA0);
  if (swift_dynamicCastMetatype())
  {
    return 61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0110, &qword_1CF9FAC88);
  if (swift_dynamicCastMetatype())
  {
    return 65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
  if (swift_dynamicCastMetatype())
  {
    return 66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0120, &qword_1CF9FAC78);
  if (swift_dynamicCastMetatype())
  {
    return 67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
  if (swift_dynamicCastMetatype())
  {
    return 68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
  if (swift_dynamicCastMetatype())
  {
    return 69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0130, &unk_1CF9FAC60);
  if (swift_dynamicCastMetatype())
  {
    return 70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD950, &unk_1CFA056B0);
  if (swift_dynamicCastMetatype())
  {
    return 71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0140, &unk_1CF9FAC50);
  if (swift_dynamicCastMetatype())
  {
    return 72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD948, &unk_1CFA056C0);
  if (swift_dynamicCastMetatype())
  {
    return 73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0150, &unk_1CF9FAC40);
  if (swift_dynamicCastMetatype())
  {
    return 74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD40, &qword_1CF9FAC38);
  if (swift_dynamicCastMetatype())
  {
    return 75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD940, &qword_1CF9FAC30);
  if (swift_dynamicCastMetatype())
  {
    return 76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0160, &qword_1CF9FAC28);
  if (swift_dynamicCastMetatype())
  {
    return 77;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD938, &qword_1CF9FAC20);
  if (swift_dynamicCastMetatype())
  {
    return 78;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0170, &qword_1CF9FAC18);
  if (swift_dynamicCastMetatype())
  {
    return 79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD930, &qword_1CF9FAC10);
  if (swift_dynamicCastMetatype())
  {
    return 80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0180, &qword_1CF9FAC08);
  if (swift_dynamicCastMetatype())
  {
    return 81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD928, &qword_1CF9FAC00);
  if (swift_dynamicCastMetatype())
  {
    return 82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF20, &unk_1CFA055F0);
  if (swift_dynamicCastMetatype())
  {
    return 83;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
  if (swift_dynamicCastMetatype())
  {
    return 84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
  if (swift_dynamicCastMetatype())
  {
    return 85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0190, &unk_1CF9FABE0);
  if (swift_dynamicCastMetatype())
  {
    return 86;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD920, &unk_1CFA056D0);
  if (swift_dynamicCastMetatype())
  {
    return 87;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01A0, &unk_1CF9FABD0);
  if (swift_dynamicCastMetatype())
  {
    return 88;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF389E84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0u;
  *(v15 + 200) = 1;
  *(v15 + 208) = 0u;
  *(v15 + 224) = 0u;
  *(v15 + 240) = 0u;
  *(v15 + 256) = 1;
  *(v15 + 257) = 514;
  v16 = *(*v15 + 688);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + 152) = a2;
  *(v15 + 160) = a3;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 1;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 120) = a4;
  *(v15 + 128) = a5;
  *(v15 + 136) = a6;
  *(v15 + 144) = a1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 88) = 0;
  *(v15 + 112) = 0;
  return v15;
}

uint64_t sub_1CF389FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 160) = 0;
  *(v13 + 168) = -1;
  *(v13 + 176) = 0;
  *(v13 + 184) = -1;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 256) = 0u;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0;
  *(v13 + 296) = 1;
  *(v13 + 297) = 514;
  v14 = *(*v13 + 688);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *(v13 + 144) = a1;
  *(v13 + 152) = a2;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 120) = a3;
  *(v13 + 128) = a4;
  *(v13 + 136) = a5;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 88) = 0;
  *(v13 + 112) = 0;
  return v13;
}

uint64_t sub_1CF38A0F4(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v15 = a1;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = a1;
  v6[4] = sub_1CF483C84;
  v6[5] = v3;
  v6[6] = sub_1CF485B70;
  v6[7] = v5;
  v7 = *(*v1 + 144);
  swift_retain_n();
  v8 = v4;

  v9 = a1;

  v7(&v15, 0, 0, 0, sub_1CF483C84, v3, sub_1CF483C8C, v6);

  sub_1CF9E72F8();
  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1CF1FDB18(v11, 0);
  v13 = sub_1CF1F9D54(&v15, (v12 + 32), v11, v10);

  result = sub_1CEFCB59C();
  if (v13 == v11)
  {

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF38A324(uint64_t a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC8];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v18 = a1;
  LOBYTE(v19) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = sub_1CF483AF0;
  *(v8 + 48) = v5;
  *(v8 + 56) = sub_1CF483AF8;
  *(v8 + 64) = v7;
  v9 = *(*v2 + 144);
  swift_retain_n();
  v10 = v6;

  v9(&v18, 0, 0, 0, sub_1CF483AF0, v5, sub_1CF483B00, v8);

  sub_1CF9E72F8();
  swift_beginAccess();
  v11 = *(v5 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1CF1F8AFC(v12, 0);
  v14 = *(type metadata accessor for VFSItem(0) - 8);
  sub_1CF1F9D58(&v18, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v12, v11);
  v16 = v15;

  result = sub_1CEFCB59C();
  if (v16 == v12)
  {

    return v13;
  }

  __break(1u);
  return result;
}

void sub_1CF38A594(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v10 = dispatch_group_create();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = -1;
  dispatch_group_enter(v10);
  v29 = 0uLL;
  *v30 = 1;
  memset(&v30[8], 0, 40);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(*v3 + 136);

  v14 = v10;
  v13(&v31, &v29, 0, 1, sub_1CF483C28, v12);

  v32[0] = v29;
  v32[1] = *v30;
  v32[2] = *&v30[16];
  v32[3] = *&v30[32];
  sub_1CEFCCC44(v32, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CF9E72F8();
  swift_beginAccess();
  v15 = *(v11 + 24);
  if (v15 == 255)
  {
    goto LABEL_7;
  }

  v16 = *(v11 + 16);
  if ((v15 & 1) == 0)
  {
    if (v16)
    {
      v28 = *(v11 + 16);
      v17 = a1[3];
      v27 = a1[4];
      v26[1] = __swift_project_boxed_opaque_existential_1(a1, v17);
      sub_1CF483C48(v16, v15);
      v18 = [v16 description];
      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26[0] = a1;
      v20 = v19;
      v22 = v21;

      sub_1CF4FB2BC(v20, v22, v17, v27);

      sub_1CEFF54BC(v9);
      LODWORD(v17) = *v9;
      sub_1CEFD5278(v9, type metadata accessor for ItemMetadata);
      if (v17 == 1)
      {
        v23 = v26[0][3];
        v24 = v26[0][4];
        v25 = __swift_project_boxed_opaque_existential_1(v26[0], v23);
        MEMORY[0x1EEE9AC00](v25);
        v26[-4] = v3;
        v26[-3] = &v28;
        v26[-2] = 1;
        sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483C60, &v26[-6], v23, MEMORY[0x1E69E7CA8] + 8, v24);

        sub_1CF483C30(v16, v15);

        return;
      }

      goto LABEL_8;
    }

LABEL_7:

    return;
  }

  v28 = *(v11 + 16);
  sub_1CF0BA8A4(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();
LABEL_8:

  sub_1CF483C30(v16, v15);
}

uint64_t sub_1CF38A928(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = (&v46 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - v13;
  v50 = type metadata accessor for VFSItem(0);
  v49 = *(v50 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v60 = a3;
  v17 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v18 = swift_allocBox();
  v20 = v19;
  (*(v8 + 56))(v19, 1, 1, v7);
  dispatch_group_enter(v17);
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;
  v22 = *(*v4 + 136);
  v51 = v18;
  v23 = v4;

  v24 = v17;
  v22(&v59, &v53, 0, 1, sub_1CF483AC8, v21);

  v61[2] = v55;
  v61[3] = v56;
  v61[4] = v57;
  v61[5] = v58;
  v61[0] = v53;
  v61[1] = v54;
  sub_1CEFCCC44(v61, &unk_1EC4BECD0, &unk_1CF9FEF80);
  sub_1CF9E72F8();
  swift_beginAccess();
  if ((*(v8 + 48))(v20, 1, v7))
  {

    (*(v49 + 56))(v14, 1, 1, v50);
    v25 = v14;
LABEL_7:
    sub_1CEFCCC44(v25, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v26 = v49;
  v27 = v14;
  v28 = v50;
  v29 = v46;
  v30 = v47;
  v31 = v20;
  v32 = v48;
  sub_1CEFCCBDC(v31, v48, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v32;
    v33 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    v25 = v27;
    (*(v26 + 56))(v27, 1, 1, v28);
    goto LABEL_7;
  }

  v34 = v32;
  v25 = v27;
  sub_1CEFE55D0(v34, v27, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v35 = v27;
  v36 = v28;
  if ((*(v26 + 48))(v35, 1, v28) == 1)
  {

    goto LABEL_7;
  }

  v38 = v29;
  sub_1CEFD9F8C(v25, v29, type metadata accessor for VFSItem);
  v39 = v30[3];
  v40 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v39);
  v41 = sub_1CF255338();
  sub_1CF4FB2BC(v41, v42, v39, v40);

  if (*(v29 + *(v36 + 28)) == 1)
  {
    v43 = v30[3];
    v44 = v30[4];
    v45 = __swift_project_boxed_opaque_existential_1(v30, v43);
    MEMORY[0x1EEE9AC00](v45);
    *(&v46 - 4) = v23;
    *(&v46 - 3) = v38;
    *(&v46 - 2) = 1;
    sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483AD0, (&v46 - 6), v43, MEMORY[0x1E69E7CA8] + 8, v44);
  }

  sub_1CEFD5278(v38, type metadata accessor for VFSItem);
}

void sub_1CF38AEF4(void *a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v62) = a8;
  v61 = a7;
  v71 = a6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = (&v56 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v20 = memcpy(v66, a1, sizeof(v66));
  if (a2 >> 7 == 0xFFFFFFFF)
  {
    memcpy(v70, a1, sizeof(v70));
    sub_1CF44DF5C(a5, 1, v65);
    if (v8)
    {
      return;
    }

    v57 = v19;
    v21 = a4;
    v60 = 0;
    v22 = v70[31];
    v23 = v65[0];
    v24 = v65[1];
    v25 = v65[2];
    v26 = v65[0] >> 62;
    if (!(v65[0] >> 62))
    {
LABEL_4:
      memcpy(v67, v66, sizeof(v67));
      sub_1CF4804A4(a2, a3, v21);
      sub_1CF40E274(v23, v24, v25, v67, a5, v71, v61, v62);
      sub_1CF480498(v23);
      return;
    }
  }

  else
  {
    v57 = v19;
    v60 = v8;
    v22 = a1[31];
    v21 = a4;
    v25 = a4;
    v24 = a3;
    v23 = a2;
    v26 = a2 >> 62;
    if (!(a2 >> 62))
    {
      goto LABEL_4;
    }
  }

  if (v26 == 1)
  {
    memcpy(v69, v66, sizeof(v69));
    sub_1CF4804A4(a2, a3, v21);
    v27 = v25;
    v28 = sub_1CF7F62D0(v64);
    v29 = (*(*a5 + 176))(v28);
    v30 = (*(*v71 + 184))();
    memcpy(v68, v64, sizeof(v68));
    sub_1CF411C70(v23, v24, v27, v68, v29, v30, v61, v62);
    memcpy(v63, v64, sizeof(v63));
    sub_1CEFCCC44(v63, &unk_1EC4BFC90, &unk_1CFA053E0);

    sub_1CF480498(v23);
    return;
  }

  v31 = v25 | v24;
  if (v23 == 0x8000000000000000 && !v31 || (v32 = v21, v23 == 0x8000000000000001) && !v31)
  {
    sub_1CF4804A4(a2, a3, v21);
    return;
  }

  v33 = v66[1];
  if (LOBYTE(v66[1]) == 255)
  {
    if (!v22)
    {
      MEMORY[0x1EEE9AC00](v20);
      *(&v56 - 2) = v66;
      sub_1CF4804A4(a2, a3, v55);
      fp_preconditionFailure(_:file:line:)(sub_1CF4804B8, (&v56 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Reconciliation.swift", 104, 2, 63);
    }

    v63[0] = 1;
    v64[0] = v22;
    LOWORD(v64[1]) = 256;
    BYTE3(v64[14]) = 4;
    v47 = v71;
    v48 = *(*v71 + 136);
    v49 = a3;
    v50 = v22;
    sub_1CF4804A4(a2, v49, v21);
    v51 = v50;
    v48(v64);
    v52 = v59;
    *v59 = v51;
    *(v52 + 8) = 0;
    v52[2] = 0xD000000000000016;
    v52[3] = 0x80000001CFA45660;
    swift_storeEnumTagMultiPayload();
    v53 = *(*v47 + 128);
    v45 = v51;
    v53(v52);
    v46 = v52;
    goto LABEL_18;
  }

  v34 = v66[0];
  v63[0] = 0;
  v64[0] = v66[0];
  LOWORD(v64[1]) = LOBYTE(v66[1]);
  BYTE3(v64[14]) = 4;
  v35 = v71;
  v62 = *(*v71 + 136);
  v36 = a3;
  v37 = v22;
  sub_1CF4804A4(a2, v36, v32);
  v62(v64);
  if (v37)
  {
    v38 = v37;
    v39 = v57;
    *v57 = v34;
    *(v39 + 8) = v33;
    *(v39 + 9) = 0;
    *(v39 + 16) = 0xD000000000000015;
    *(v39 + 24) = 0x80000001CFA45680;
    v40 = v38;
    swift_storeEnumTagMultiPayload();
    v41 = *(*v35 + 120);
    v42 = v40;
    v41(v39);
    sub_1CEFCCC44(v39, &qword_1EC4BFC88, &qword_1CFA053D8);
    v43 = v59;
    *v59 = v42;
    *(v43 + 8) = 0;
    v43[2] = 0xD000000000000015;
    v43[3] = 0x80000001CFA45680;
    swift_storeEnumTagMultiPayload();
    v44 = *(*v35 + 128);
    v45 = v42;
    v44(v43);
    v46 = v43;
LABEL_18:
    sub_1CEFCCC44(v46, &qword_1EC4BFC80, &qword_1CFA053D0);

    return;
  }

  v54 = v57;
  *v57 = v34;
  *(v54 + 8) = v33;
  *(v54 + 9) = 0;
  *(v54 + 16) = 0xD000000000000016;
  *(v54 + 24) = 0x80000001CFA45660;
  swift_storeEnumTagMultiPayload();
  (*(*v35 + 120))(v54);
  sub_1CEFCCC44(v54, &qword_1EC4BFC88, &qword_1CFA053D8);
}

uint64_t sub_1CF38B590(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = &unk_1F4BECA00;
  *(v3 + 112) = &unk_1F4BECA38;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 48) = sub_1CEFE8C10(0, 0xE000000000000000);
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1CEFE8C10(3044466, 0xE300000000000000);
  *(v3 + 72) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v3 + 80) = v6;
  [v6 setCountLimit_];
  *(v3 + 88) = MEMORY[0x1E69E7CD0];
  *(v3 + 96) = 0;
  swift_weakInit();
  return v3;
}

uint64_t sub_1CF38B634()
{
  v83 = v0[12];
  v84 = v0[13];
  v85 = v0[14];
  v86 = *(v0 + 30);
  v79 = v0[8];
  v80 = v0[9];
  v81 = v0[10];
  v82 = v0[11];
  v75 = v0[4];
  v76 = v0[5];
  v77 = v0[6];
  v78 = v0[7];
  v73 = *v0;
  v1 = v0[2];
  v74 = v0[3];
  if (*(v0 + 1) == 255)
  {
    if (!*(v0 + 368) && *(v0 + 44) == 2)
    {
      goto LABEL_15;
    }
  }

  else if ((v0[1] & 0x51) != 0)
  {
    *(v0 + 31);
  }

  if (*(v0 + 31))
  {
    v2 = (v0[16] & 0x51) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || *(v0 + 1) == 255)
  {
    *(v0 + 33);
  }

LABEL_15:
  v4 = *(v0 + 58);
  v5 = *(v4 + 16);
  if (v5)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v5, 0);
    v6 = (v4 + 41);
    while (1)
    {
      v7 = *(v6 - 9);
      v8 = *(v6 - 1);
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v59 = 0x28726568746F2ELL;
      v60 = 0xE700000000000000;
      sub_1CEFD0988(v7, v8, 1);
      v9 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v9);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      sub_1CEFD0994(v7, v8, 1);
LABEL_31:
      v14 = *(v51 + 16);
      v13 = *(v51 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1CEFE95CC((v13 > 1), v14 + 1, 1);
      }

      *(v51 + 16) = v14 + 1;
      v15 = v51 + 16 * v14;
      *(v15 + 32) = v59;
      *(v15 + 40) = v60;
      v6 += 16;
      if (!--v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
        v16 = sub_1CF9E67D8();
        v18 = v17;

        MEMORY[0x1D3868CC0](v16, v18);

        MEMORY[0x1D3868CC0](62, 0xE100000000000000);
        v19 = 0xEB000000003A6E6FLL;
        v20 = 0x6973696C6C6F633CLL;
        goto LABEL_36;
      }
    }

    v59 = 0x286E69616D2ELL;
    v60 = 0xE600000000000000;
    if (*(v6 - 1))
    {
      if (v8 != 1)
      {
        if (v7)
        {
          v11 = 0x6873617274;
        }

        else
        {
          v11 = 1953460082;
        }

        if (v7)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        goto LABEL_30;
      }

      v56 = 0x284449656C6966;
      v58 = 0xE700000000000000;
    }

    else
    {
      v56 = 0x284449636F64;
      v58 = 0xE600000000000000;
    }

    v10 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v10);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v11 = v56;
    v12 = v58;
LABEL_30:
    MEMORY[0x1D3868CC0](v11, v12);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    goto LABEL_31;
  }

  v20 = 0;
  v19 = 0xE000000000000000;
LABEL_36:
  v21 = *(v0 + 456);
  v49 = v20;
  v50 = v19;
  if (v21 == 4)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = 6516580;
    v25 = 0xE700000000000000;
    v26 = 0x6B6E696C6D7973;
    if (v21 != 2)
    {
      v26 = 0x7361696C61;
      v25 = 0xE500000000000000;
    }

    if (*(v0 + 456))
    {
      v24 = 7498084;
    }

    if (*(v0 + 456) <= 1u)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (*(v0 + 456) <= 1u)
    {
      v28 = 0xE300000000000000;
    }

    else
    {
      v28 = v25;
    }

    MEMORY[0x1D3868CC0](v27, v28);

    v23 = 0xE100000000000000;
    v22 = 32;
  }

  v29 = *(v0 + 64);
  if (v29)
  {
    v30 = sub_1CF083800(v29);
    MEMORY[0x1D3868CC0](v30);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v31 = 0xE700000000000000;
    v48 = 0x3A636570733C20;
  }

  else
  {
    v48 = 0;
    v31 = 0xE000000000000000;
  }

  v47 = v31;
  if ((v86 & 3) != 0)
  {
    MEMORY[0x1D3868CC0](2425659376, 0xA400000000000000);
  }

  if ((v86 & 4) != 0)
  {
    MEMORY[0x1D3868CC0](9149666, 0xA300000000000000);
  }

  if ((v86 & 8) != 0)
  {
    MEMORY[0x1D3868CC0](2207555568, 0xA400000000000000);
  }

  v69 = *(v0 + 392);
  v70 = *(v0 + 408);
  v71 = *(v0 + 424);
  v72 = *(v0 + 440);
  v65 = *(v0 + 328);
  v66 = *(v0 + 344);
  v67 = *(v0 + 360);
  v68 = *(v0 + 376);
  v61 = *(v0 + 264);
  v62 = *(v0 + 280);
  v63 = *(v0 + 296);
  v64 = *(v0 + 312);
  if (*(v0 + 31))
  {
    sub_1CF39B7F0();
  }

  v32 = *(v0 + 504);
  v57 = sub_1CF9E7988();
  v33 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v33);

  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  sub_1CF9E7948();

  v35 = sub_1CF46C02C();
  MEMORY[0x1D3868CC0](v35);

  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  v36 = sub_1CF46B8FC();
  MEMORY[0x1D3868CC0](v36);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v22, v23);

  MEMORY[0x1D3868CC0](0x3A646568637320, 0xE700000000000000);
  v37 = *(v0 + 60);
  v52 = sub_1CF057488(*(v0 + 59));
  v55 = v38;
  MEMORY[0x1D3868CC0](35, 0xE100000000000000);
  v39 = sub_1CF9E6F58();
  MEMORY[0x1D3868CC0](v39);

  MEMORY[0x1D3868CC0](v52, v55);

  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);

  sub_1CF9E7948();

  v53 = *(v0 + 61);
  v40 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v40);

  v41 = 0xE300000000000000;
  MEMORY[0x1D3868CC0](3826464, 0xE300000000000000);
  if (*(v0 + 62) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 7889261;
  }

  else
  {
    v54 = *(v0 + 62);
    v42 = sub_1CF9E7F98();
    v41 = v43;
  }

  MEMORY[0x1D3868CC0](v42, v41);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x733C3A6B6E617220, 0xE90000000000003ALL);

  v44 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v44);

  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  MEMORY[0x1D3868CC0](v49, v50);

  MEMORY[0x1D3868CC0](v48, v47);

  return v57;
}

uint64_t sub_1CF38C048(uint64_t a1)
{
  v66 = *(v1 + 160);
  v67 = *(v1 + 176);
  v68 = *(v1 + 192);
  v62 = *(v1 + 96);
  v63 = *(v1 + 112);
  v64 = *(v1 + 128);
  v65 = *(v1 + 144);
  v58 = *(v1 + 32);
  v59 = *(v1 + 48);
  v60 = *(v1 + 64);
  v61 = *(v1 + 80);
  v57 = *(v1 + 16);
  if (*v1)
  {
    if (((*(v1 + 16) >> 64) & 0x51) != 0)
    {
      *(v1 + 216);
    }
  }

  else if (!*(v1 + 368) && *(v1 + 352) == 2)
  {
    goto LABEL_15;
  }

  if (*(v1 + 216) == 0xFF || (*(v1 + 224) & 0x51) == 0 || *v1 == 0)
  {
    *(v1 + 232);
  }

LABEL_15:
  if (*(*(v1 + 464) + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    type metadata accessor for VFSItem(0);
    sub_1CF4804D8();
    sub_1CF042F54(qword_1EDEABC30, type metadata accessor for VFSItem);
    swift_getKeyPath();

    sub_1CF478CAC(v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
    v5 = sub_1CF9E67D8();
    v7 = v6;

    MEMORY[0x1D3868CC0](v5, v7);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v36 = 0x6973696C6C6F633CLL;
    v37 = 0xEB000000003A6E6FLL;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  v8 = *(v1 + 456);
  if (v8 == 4)
  {
    v32 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = 6516580;
    v11 = 0xE700000000000000;
    v12 = 0x6B6E696C6D7973;
    if (v8 != 2)
    {
      v12 = 0x7361696C61;
      v11 = 0xE500000000000000;
    }

    if (*(v1 + 456))
    {
      v10 = 7498084;
    }

    if (*(v1 + 456) <= 1u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (*(v1 + 456) <= 1u)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = v11;
    }

    MEMORY[0x1D3868CC0](v13, v14);

    v9 = 0xE100000000000000;
    v32 = 32;
  }

  v15 = *(v1 + 512);
  if (v15)
  {
    v16 = sub_1CF083800(v15);
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v17 = 0xE700000000000000;
    v35 = 0x3A636570733C20;
  }

  else
  {
    v35 = 0;
    v17 = 0xE000000000000000;
  }

  v34 = v17;
  if ((BYTE8(v68) & 3) != 0)
  {
    MEMORY[0x1D3868CC0](2425659376, 0xA400000000000000);
  }

  if ((BYTE8(v68) & 4) != 0)
  {
    MEMORY[0x1D3868CC0](9149666, 0xA300000000000000);
  }

  if ((BYTE8(v68) & 8) != 0)
  {
    MEMORY[0x1D3868CC0](2207555568, 0xA400000000000000);
  }

  v54 = *(v1 + 416);
  v55 = *(v1 + 432);
  v50 = *(v1 + 352);
  v51 = *(v1 + 368);
  v52 = *(v1 + 384);
  v53 = *(v1 + 400);
  v46 = *(v1 + 288);
  v47 = *(v1 + 304);
  v56 = *(v1 + 448);
  v48 = *(v1 + 320);
  v49 = *(v1 + 336);
  v43 = *(v1 + 240);
  v44 = *(v1 + 256);
  v45 = *(v1 + 272);
  if (BYTE8(*(v1 + 232)) != 255)
  {
    sub_1CF39B904();
  }

  v33 = *(v1 + 504);
  v42 = sub_1CF9E7988();
  v18 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v18);

  v19 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
  v20 = sub_1CF46B8FC();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](0x663C203E2D3C203ELL, 0xEA00000000003A70);
  v21 = sub_1CF46C02C();
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v32, v9);

  MEMORY[0x1D3868CC0](0x3A646568637320, 0xE700000000000000);
  v22 = *(v1 + 480);
  v38 = sub_1CF057488(*(v1 + 472));
  v41 = v23;
  MEMORY[0x1D3868CC0](35, 0xE100000000000000);
  v24 = sub_1CF9E6F58();
  MEMORY[0x1D3868CC0](v24);

  MEMORY[0x1D3868CC0](v38, v41);

  MEMORY[0x1D3868CC0](0, 0xE000000000000000);

  sub_1CF9E7948();

  v39 = *(v1 + 488);
  v25 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v25);

  v26 = 0xE300000000000000;
  MEMORY[0x1D3868CC0](3826464, 0xE300000000000000);
  if (*(v1 + 496) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 7889261;
  }

  else
  {
    v40 = *(v1 + 496);
    v27 = sub_1CF9E7F98();
    v26 = v28;
  }

  MEMORY[0x1D3868CC0](v27, v26);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0x733C3A6B6E617220, 0xE90000000000003ALL);

  v29 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v29);

  v30 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v30);

  MEMORY[0x1D3868CC0](v36, v37);

  MEMORY[0x1D3868CC0](v35, v34);

  return v42;
}

uint64_t sub_1CF38C948(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + 88);
    }

    v5 = *(v1 + 88);

    v6 = sub_1CF9E7818();
  }

  else
  {
    v6 = *(v3 + 16);
  }

  v7 = [objc_opt_self() defaultStore];
  v8 = [v7 pendingSetMaxItemCount];

  if (((*(v1 + 96) & 1) != 0 || v6 == v8) && (v9 = *(v1 + 88), , v10 = sub_1CF7DCE10(a1, v9), result = , (v10 & 1) == 0))
  {
    *(v1 + 96) = 1;
  }

  else
  {
    swift_beginAccess();

    sub_1CF477568(v12);
    swift_endAccess();
  }

  return result;
}

void sub_1CF38CA88(uint64_t *a1, int a2, uint64_t a3, char a4)
{
  v46 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v44 = *(v19 - 8);
  v20 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - v21;
  v50 = a3;
  v51 = a4;
  v23 = sub_1CF38CFE0();
  if (v23 != 2)
  {
    if (v23)
    {
      v24 = a1[31];
      if (!v24)
      {
        return;
      }

      v48 = a1[31];
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v26 = *(Strong + 40);
        v27 = v24;

        (*(*v26 + 240))(&v48, 1, &v50, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

        if (v4)
        {
LABEL_19:

          return;
        }

        if ((*(v47 + 48))(v11, 1, v12) == 1)
        {

          sub_1CEFCCC44(v11, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          return;
        }

        v34 = v11;
        v35 = v45;
        sub_1CEFE55D0(v34, v45, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v36 = swift_weakLoadStrong();
        if (v36)
        {
          v37 = v36;
          v38 = v35 + *(v12 + 48);
          v39 = type metadata accessor for ItemMetadata();
          (*(*v37 + 528))(1, *(v38 + *(v39 + 104)), v46 & 1, 0);

          sub_1CEFCCC44(v35, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_26;
    }

    if ((a1[2] & 0x10) == 0 && (a1[30] & 4) == 0 && (a1[56] & 4) == 0)
    {
      if (*(a1 + 137))
      {
        v28 = *(a1 + 8);
        if (v28 != 255)
        {
          v48 = *a1;
          v49 = v28;
          v29 = swift_weakLoadStrong();
          if (v29)
          {
            v30 = *(v29 + 32);

            (*(*v30 + 240))(&v48, 1, &v50, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

            if (v4)
            {
              return;
            }

            if ((*(v44 + 48))(v18, 1, v19) == 1)
            {
              v31 = &qword_1EC4C1B40;
              v32 = &unk_1CF9FCB70;
              v33 = v18;
            }

            else
            {
              sub_1CEFE55D0(v18, v22, &unk_1EC4BE360, &qword_1CF9FE650);
              v40 = swift_weakLoadStrong();
              if (!v40)
              {
LABEL_27:
                __break(1u);
                return;
              }

              v41 = v40;
              v42 = &v22[*(v19 + 48)];
              v43 = type metadata accessor for ItemMetadata();
              (*(*v41 + 528))(0, *&v42[*(v43 + 104)], v46 & 1, 0);

              v31 = &unk_1EC4BE360;
              v32 = &qword_1CF9FE650;
              v33 = v22;
            }

            sub_1CEFCCC44(v33, v31, v32);
            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }
    }
  }
}

uint64_t sub_1CF38CFE0()
{
  if ((*(v0 + 240) & 4) != 0 || (*(v0 + 448) & 4) != 0 || *(v0 + 456) == 1)
  {
    return 2;
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 368);
  if ((*(v0 + 24) & 8) != 0 && *(v0 + 137))
  {
    v3 = *(v0 + 160);
    v4 = (*(v0 + 144) & 0x40000) != 0 && v3 == 0;
    if (!v4 && (*(v0 + 16) & 0x10) == 0 && v3 != 2)
    {
      return 0;
    }
  }

  if (*(v0 + 456))
  {
    return 2;
  }

  result = 2;
  if ((*(v0 + 264) & 8) != 0 && *(v0 + 344))
  {
    if (*(v0 + 8) == 255 || !*(v0 + 248))
    {
      if (*(v0 + 368))
      {
        return 1;
      }

      if (v1 == 2)
      {
        return result;
      }
    }

    if (*(v0 + 368) || (v1 & 0x40000) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1CF38D098(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v116 = v2;
  v98 = v4;
  v6 = v5;
  v90 = v7;
  v9 = v8;
  v10 = v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = (&v81 - v12);
  v95 = sub_1CF9E6068();
  v89 = *(v95 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v88 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v86 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v81 - v19;
  v87 = type metadata accessor for Signpost(0);
  v20 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v97 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6118();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v109, v10, sizeof(v109));
  memcpy(v108, v9, sizeof(v108));
  v92 = v6;
  [v6 assertOnQueue];
  v27 = sub_1CEFE9C6C();
  v96 = v1;
  v100 = v1;
  v101 = v108;
  v102 = v109;
  v28 = v116;
  v29 = sub_1CF7F4784(sub_1CF480BF0, &v99, v27);
  v116 = v28;
  v93 = *(v29 + 16);
  if (!v93)
  {

    return v93 != 0;
  }

  v83 = v22;
  v85 = v29;
  memcpy(v115, v109, sizeof(v115));
  v30 = sub_1CF38B634();
  v32 = v31;
  v33 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7288();

  v36 = os_log_type_enabled(v34, v35);
  v91 = v32;
  v84 = v30;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v107[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_1CEFD0DF0(v30, v32, v107);
    _os_log_impl(&dword_1CEFC7000, v34, v35, " ✍️  reconciliation update: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  (*(v23 + 8))(v26, v83);
  v39 = v95;
  v40 = v86;
  memcpy(v114, v108, sizeof(v114));
  sub_1CF47B24C(v114, v98);
  v41 = v89;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  v43 = v94;
  (*(v41 + 56))(v94, 1, 1, v39);
  sub_1CEFCCBDC(v43, v40, &unk_1EC4BED20, &unk_1CFA00700);
  v44 = *(v41 + 48);
  if (v44(v40, 1, v39) == 1)
  {
    v45 = v42;
    v46 = v88;
    sub_1CF9E6048();
    if (v44(v40, 1, v39) != 1)
    {
      sub_1CEFCCC44(v40, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v46 = v88;
    (*(v41 + 32))(v88, v40, v39);
  }

  v47 = v97;
  (*(v41 + 16))(v97, v46, v39);
  v48 = v87;
  *&v47[*(v87 + 20)] = v42;
  v49 = &v47[*(v48 + 24)];
  *v49 = "SQLDB: reconciliation update";
  *(v49 + 1) = 28;
  v49[16] = 2;
  v50 = v91;

  v51 = v42;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  *(v52 + 32) = v84;
  *(v52 + 40) = v50;
  v79 = v52;
  LOBYTE(v78) = 2;
  v77 = 2;
  v88 = v51;
  sub_1CF9E6028();

  (*(v41 + 8))(v46, v95);
  sub_1CEFCCC44(v94, &unk_1EC4BED20, &unk_1CFA00700);
  memcpy(v113, v109, sizeof(v113));
  if (v113[31])
  {
    v53 = sub_1CF39B7F0() != 0;
  }

  else
  {
    v53 = 0;
  }

  v54 = v85;
  v55 = v90;
  memcpy(v104, v109, sizeof(v104));
  memcpy(v105, v109, sizeof(v105));
  nullsub_1(v105);
  memcpy(v111, v105, sizeof(v111));
  memcpy(v106, v108, sizeof(v106));
  memcpy(v107, v108, sizeof(v107));
  nullsub_1(v107);
  memcpy(v112, v107, sizeof(v112));
  sub_1CEFCCBDC(v104, v103, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v106, v103, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v56 = v116;
  sub_1CF38E458(v111);
  v116 = v56;
  if (v56)
  {

    sub_1CEFCCC44(v106, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCC44(v104, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_23:
    sub_1CF9E7458();
    v61 = v97;
    sub_1CF9E6038();
    sub_1CEFD5278(v61, type metadata accessor for Signpost);
    return v93 != 0;
  }

  sub_1CEFCCC44(v106, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v57 = sub_1CEFCCC44(v104, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  if (LOBYTE(v108[1]) == 255)
  {
    v58 = v98;
  }

  else
  {
    v58 = v98;
    if (LOBYTE(v109[1]) == 255)
    {
      v59 = v116;
      v57 = sub_1CF38EB78(v108[0], v108[1], 0xD000000000000022, 0x80000001CFA3B420, v92, v98);
      v116 = v59;
      if (v59)
      {
        goto LABEL_22;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v57);
  v77 = v54;
  v78 = v109;
  LOBYTE(v79) = v53;
  v80 = v55;
  v60 = v116;
  sub_1CF7D5920(sub_1CF480C5C, (&v81 - 6), v92);
  v116 = v60;
  if (v60)
  {
LABEL_22:

    goto LABEL_23;
  }

  memcpy(v110, v109, sizeof(v110));
  result = sub_1CF47B03C(v110, v55, v58);
  if (v53)
  {
    v63 = v110[31];
    if (!v110[31])
    {
      __break(1u);
      goto LABEL_41;
    }

    v64 = v110[60];
    v65 = v110[61];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
    v66 = swift_allocObject();
    *(v66 + 16) = v63;
    *(v66 + 24) = v64;
    *(v66 + 32) = v65;
    *(v66 + 40) = 0;
    v67 = v63;
    sub_1CF38C948(v66);
  }

  else
  {
    v68 = v106[31];
    if (v106[31])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
      v69 = v58;
      v70 = swift_allocObject();
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 16) = v68;
      *(v70 + 40) = 1;
      v71 = v68;
      v72 = v116;
      sub_1CF38E198(v70, v92, v69);
      v116 = v72;
      if (v72)
      {

        goto LABEL_23;
      }
    }
  }

  v73 = v109[1];
  if (LOBYTE(v109[1]) == 255)
  {
    goto LABEL_22;
  }

  if ((v110[2] & 2) == 0)
  {
    goto LABEL_22;
  }

  if (LOBYTE(v106[20]))
  {
    goto LABEL_22;
  }

  if ((v106[18] & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v74 = v109[0];
  if (!LOBYTE(v110[20]) && (v110[18] & 0x200) != 0)
  {
    goto LABEL_22;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v75 = result;

    v76 = v82;
    *v82 = v74;
    *(v76 + 8) = v73;
    *(v76 + 9) = 0;
    swift_storeEnumTagMultiPayload();
    (*(*v75 + 312))(v76);

    sub_1CEFCCC44(v76, &qword_1EC4BE710, &qword_1CF9FE5A8);
    goto LABEL_23;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1CF38DC10(void *a1, uint64_t a2, const void *a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  memcpy((v10 + 16), a3, 0x208uLL);
  *(v10 + 536) = a1;
  v24[65] = a2;
  v24[66] = sub_1CF480D50;
  v24[67] = v10;

  sub_1CEFCCBDC(a3, v24, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01D0, &unk_1CF9FF090);
  sub_1CF24F550();
  v12 = sub_1CF9E67D8();
  v14 = v13;

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA3B450);
  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](0x6E65705F7369202CLL, 0xEF203D20676E6964);
  v15 = [v11 bindBooleanParameter_];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39760);
  v19 = [v11 bindLongParameter_];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);

  return v24[0];
}

id sub_1CF38DE58(unsigned int a1, id a2)
{
  v3 = (a1 >> 4) & 3;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1CF08692C(a1 & 1, a2, *(v2 + 59), *(v2 + 60));
    }

    if (a1 > 0x32u)
    {
      if (a1 <= 0x34u)
      {
        if (a1 == 51)
        {
          v23 = [a2 bindLongParameter_];
        }

        else
        {
          v23 = [a2 bindBooleanParameter_];
        }

        goto LABEL_28;
      }

      if (a1 == 53)
      {
        v27 = *(v2 + 64);
        *(&v39 + 1) = MEMORY[0x1E69E6530];
        *&v38 = v27;
        v28 = sub_1CEFF8EA0(&v38);
        v30 = v29;
        sub_1CEFCCC44(&v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v30)
        {
          return v28;
        }

LABEL_31:
        result = sub_1CF9E7B68();
        __break(1u);
        return result;
      }

      v23 = [a2 bindLongParameter_];
LABEL_28:
      v37 = v23;
      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v26;
    }

    if (a1 == 48)
    {
      v31 = *(v2 + 456);
      if (v31 == 4)
      {
        v38 = 0u;
        v39 = 0u;
        goto LABEL_25;
      }

      v33 = MEMORY[0x1E69E6530];
      v32 = qword_1CFA05EB0[v31];
    }

    else
    {
      if (a1 == 49)
      {
        if (*(*(v2 + 58) + 16))
        {
          v24 = *(v2 + 58);

          v26 = sub_1CF1DFC8C(v25);

          return v26;
        }

        v23 = [a2 bindObjectParameter_];
        goto LABEL_28;
      }

      v32 = *(v2 + 30);
      v33 = MEMORY[0x1E69E6530];
    }

    *(&v39 + 1) = v33;
    *&v38 = v32;
LABEL_25:
    v34 = sub_1CEFF8EA0(&v38);
    v36 = v35;
    sub_1CEFCCC44(&v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v36)
    {
      return v34;
    }

    goto LABEL_31;
  }

  if (v3)
  {
    v12 = *(v2 + 392);
    v13 = *(v2 + 424);
    v14 = *(v2 + 440);
    v66 = *(v2 + 408);
    v67 = v13;
    v68 = v14;
    v15 = *(v2 + 328);
    v16 = *(v2 + 360);
    v17 = *(v2 + 376);
    v62 = *(v2 + 344);
    v63 = v16;
    v18 = *(v2 + 248);
    v64 = v17;
    v65 = v12;
    v19 = *(v2 + 264);
    v20 = *(v2 + 280);
    v56 = v18;
    v57 = v19;
    v21 = *(v2 + 296);
    v22 = *(v2 + 312);
    v58 = v20;
    v59 = v21;
    v60 = v22;
    v61 = v15;
    return sub_1CF3A4FD4(a1 & 0xCF, a2);
  }

  else
  {
    v4 = v2[13];
    v52 = v2[12];
    v53 = v4;
    v54 = v2[14];
    v55 = *(v2 + 30);
    v5 = v2[9];
    v48 = v2[8];
    v49 = v5;
    v6 = v2[11];
    v50 = v2[10];
    v51 = v6;
    v7 = v2[5];
    v44 = v2[4];
    v45 = v7;
    v8 = v2[7];
    v46 = v2[6];
    v47 = v8;
    v9 = v2[1];
    v40 = *v2;
    v41 = v9;
    v10 = v2[3];
    v42 = v2[2];
    v43 = v10;
    return sub_1CF3A4290(a1, a2);
  }
}

void sub_1CF38E198(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_beginAccess();
  v10 = sub_1CF8DD86C(a1);
  swift_endAccess();
  if (v10)
  {

    if (*(v6 + 96) == 1)
    {
      v11 = *(v6 + 88);
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v12 = *(v6 + 88);
        }

        v13 = *(v6 + 88);

        v14 = sub_1CF9E7818();
      }

      else
      {
        v14 = *(v11 + 16);
      }

      v15 = [objc_opt_self() defaultStore];
      v16 = [v15 pendingSetRegatherThreshold];

      if (v14 <= v16)
      {
        v17 = sub_1CF7F18FC(sub_1CF233FCC, 0);
        if (!v5)
        {
          if (v18)
          {
            if ((v14 & 0x8000000000000000) == 0)
            {
LABEL_12:
              *(v6 + 96) = 0;
              return;
            }
          }

          else if (v14 >= v17)
          {
            goto LABEL_12;
          }

          *(v6 + 96) = 0;
          v19 = sub_1CF7D55FC(sub_1CF233FE8, 0, a2, a3);
          if ([v19 next])
          {
            do
            {
              v23 = objc_autoreleasePoolPush();
              if ((*(v6 + 96) & 1) == 0)
              {
                v24 = v23;
                v25 = v19;
                v26 = [v25 stringAtIndex_];
                if (!v26)
                {
                  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v26 = sub_1CF9E6888();
                }

                v27 = [v25 longAtIndex_];
                v28 = [v25 isNullAtIndex_];
                if (v28)
                {
                  v20 = 0;
                }

                else
                {
                  v20 = [v25 integerAtIndex_];
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
                v21 = swift_allocObject();
                *(v21 + 16) = v26;
                *(v21 + 24) = v27;
                *(v21 + 32) = v20;
                *(v21 + 40) = v28;
                v22 = v26;
                sub_1CF38C948(v21);

                v23 = v24;
              }

              objc_autoreleasePoolPop(v23);
            }

            while (([v19 next] & 1) != 0);
          }
        }
      }
    }
  }
}

uint64_t sub_1CF38E458(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v65 = v2;
  v48 = v1;
  v47 = v4;
  v46 = v5;
  v7 = v6;
  v8 = v3;
  memcpy(v63, v3, sizeof(v63));
  memcpy(v64, v7, sizeof(v64));
  v9 = sub_1CF9E6118();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  memcpy(v56, v7, sizeof(v56));
  if (sub_1CF08B99C(v56) == 1)
  {
    v22 = 2;
  }

  else
  {
    memcpy(v62, v64, sizeof(v62));
    v22 = sub_1CF38CFE0();
  }

  memcpy(v55, v8, sizeof(v55));
  if (sub_1CF08B99C(v55) == 1)
  {
    result = 2;
  }

  else
  {
    memcpy(v61, v63, sizeof(v61));
    result = sub_1CF38CFE0();
  }

  if (v22 != 2)
  {
    if (result == 2)
    {
      memcpy(v53, v7, sizeof(v53));
      if (sub_1CF08B99C(v53) == 1)
      {
        v28 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v25 = sub_1CF9E6108();
        v29 = sub_1CF9E72A8();
        if (os_log_type_enabled(v25, v29))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1CEFC7000, v25, v29, "[GlobalProgress] RT.agp, oldSide!=nil, side==nil, but no oldEntry", v27, 2u);
          v19 = v16;
          goto LABEL_31;
        }

        v19 = v16;
LABEL_32:

        return (*(v44 + 8))(v19, v45);
      }

      memcpy(v59, v64, sizeof(v59));
      memcpy(v50, v64, sizeof(v50));
      sub_1CEFCCBDC(v50, v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v31 = v59;
      v32 = v46;
      v33 = v47;
    }

    else
    {
      if (((result ^ v22) & 1) == 0)
      {
        return result;
      }

      memcpy(v52, v8, sizeof(v52));
      v34 = sub_1CF08B99C(v52);
      v35 = v65;
      if (v34 == 1)
      {
        v36 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v37 = sub_1CF9E6108();
        v38 = sub_1CF9E72A8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1CEFC7000, v37, v38, "[GlobalProgress] RT.agp, oldSide!=side, but no entry", v39, 2u);
          MEMORY[0x1D386CDC0](v39, -1, -1);
        }

        (*(v44 + 8))(v21, v45);
        v40 = v47;
        v41 = v46;
      }

      else
      {
        memcpy(v58, v63, sizeof(v58));
        memcpy(v50, v63, sizeof(v50));
        sub_1CEFCCBDC(v50, v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v41 = v46;
        v40 = v47;
        sub_1CF38CA88(v58, 1, v46, v47);
        v30 = v8;
        if (v35)
        {
          return sub_1CEFCCC44(v30, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        sub_1CEFCCC44(v8, &unk_1EC4BFC20, &unk_1CFA0A290);
      }

      memcpy(v51, v7, sizeof(v51));
      if (sub_1CF08B99C(v51) == 1)
      {
        v42 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v25 = sub_1CF9E6108();
        v43 = sub_1CF9E72A8();
        if (os_log_type_enabled(v25, v43))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1CEFC7000, v25, v43, "[GlobalProgress] RT.agp, oldSide!=side, but no oldEntry", v27, 2u);
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      memcpy(v57, v64, sizeof(v57));
      memcpy(v50, v64, sizeof(v50));
      sub_1CEFCCBDC(v50, v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v31 = v57;
      v32 = v41;
      v33 = v40;
    }

    sub_1CF38CA88(v31, 0, v32, v33);
    v30 = v7;
    return sub_1CEFCCC44(v30, &unk_1EC4BFC20, &unk_1CFA0A290);
  }

  if (result != 2)
  {
    memcpy(v54, v8, sizeof(v54));
    if (sub_1CF08B99C(v54) == 1)
    {
      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E72A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1CEFC7000, v25, v26, "[GlobalProgress] RT.agp, oldSide=nil, side!=nil, but no entry", v27, 2u);
        v19 = v13;
LABEL_31:
        MEMORY[0x1D386CDC0](v27, -1, -1);
        goto LABEL_32;
      }

      v19 = v13;
      goto LABEL_32;
    }

    memcpy(v60, v63, sizeof(v60));
    memcpy(v50, v63, sizeof(v50));
    sub_1CEFCCBDC(v50, v49, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF38CA88(v60, 1, v46, v47);
    v30 = v8;
    return sub_1CEFCCC44(v30, &unk_1EC4BFC20, &unk_1CFA0A290);
  }

  return result;
}

uint64_t sub_1CF38EB78(uint64_t a1, char a2, uint64_t a3, unint64_t a4, NSObject *a5, unsigned int a6)
{
  v7 = v6;
  v56 = a3;
  v57 = a4;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v66 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v52 - v17;
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v54 = v20;
      v22 = *(v21 + 16);
      v23 = v21;

      v24 = sub_1CF3AC224(a1, a2, &unk_1F4BED208, a5, a6);
      if (v6)
      {
LABEL_4:
      }

      v29 = v24;
      v65 = v23;

      v64 = v29 >> 62;
      if (v29 >> 62)
      {
        goto LABEL_31;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        v31 = 0;
        v63 = v29 & 0xC000000000000001;
        v32 = v29 & 0xFFFFFFFFFFFFFF8;
        v61 = (v13 + 8);
        v55 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v29 < 0)
        {
          v32 = v29;
        }

        v52[1] = v32;
        *&v30 = 136315394;
        v53 = v30;
        v13 = v57;
        v60 = a6;
        v59 = a5;
        v62 = v29;
        do
        {
          if (v63)
          {
            v34 = MEMORY[0x1D3869C30](v31, v29);
            v35 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v31 >= *(v55 + 16))
            {
              goto LABEL_30;
            }

            v34 = *(v29 + 8 * v31 + 32);

            v35 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:
              if (!sub_1CF9E7818())
              {
                break;
              }

              goto LABEL_10;
            }
          }

          v67 = v35;
          v37 = *(v34 + 96);
          v36 = *(v34 + 104);
          *(v34 + 96) = 0;
          *(v34 + 104) = 0;
          v38 = *(v34 + 112);
          *(v34 + 112) = 4;

          v39 = v36;
          v40 = v66;
          sub_1CF03D7A8(v37, v39, v38);

          v41 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          a5 = sub_1CF9E6108();
          a6 = sub_1CF9E7288();

          if (os_log_type_enabled(a5, a6))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v58 = 0;
            v44 = v43;
            v68 = v43;
            *v42 = v53;
            *(v42 + 4) = sub_1CEFD0DF0(v56, v13, &v68);
            *(v42 + 12) = 2080;
            v45 = sub_1CF902D78();
            v46 = v12;
            v48 = v47;

            v49 = sub_1CEFD0DF0(v45, v48, &v68);
            v12 = v46;
            v13 = v57;

            *(v42 + 14) = v49;
            _os_log_impl(&dword_1CEFC7000, a5, a6, "✍️  Cancelling materialize job due to %s: %s", v42, 0x16u);
            swift_arrayDestroy();
            v50 = v44;
            v7 = v58;
            MEMORY[0x1D386CDC0](v50, -1, -1);
            MEMORY[0x1D386CDC0](v42, -1, -1);

            (*v61)(v66, v12);
          }

          else
          {

            (*v61)(v40, v12);
          }

          v29 = v62;
          v51 = *(v65 + 16);

          sub_1CF3AA380(v34, v59, v60);
          if (v7)
          {

            goto LABEL_4;
          }

          if (v64)
          {
            v33 = sub_1CF9E7818();
          }

          else
          {
            v33 = *(v55 + 16);
          }

          ++v31;
        }

        while (v67 != v33);
      }
    }

    else
    {

      v25 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v26 = sub_1CF9E6108();
      v27 = sub_1CF9E72A8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1CEFC7000, v26, v27, "unable to cancel materializations, job registry didn't cast", v28, 2u);
        MEMORY[0x1D386CDC0](v28, -1, -1);
      }

      return (*(v13 + 8))(v18, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF38F0E0(void *a1, uint64_t a2, void *a3, int a4)
{
  v9 = sub_1CF7D5474(sub_1CF217F44, 0, a1, a2);
  [v9 next];
  v10 = [v9 longAtIndex_];
  v11 = a3[3];
  v33 = a4;
  v12 = a3[4];
  v34 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v35 = v4;
  sub_1CF9E7948();

  v38[0] = 0xD000000000000012;
  v38[1] = 0x80000001CFA3BE10;
  v37[0] = v10;
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0x73656972746E6520, 0xEA00000000003A29);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA3BE10, v11, v12);

  MEMORY[0x1EEE9AC00](v14);
  v28 = v4;
  v29 = xmmword_1CF9FD950;
  v30 = 0;
  v31 = v33 & 1;
  v15 = sub_1CF7D5474(sub_1CF4843F4, &v27, a1, a2);
  v32 = v9;
  if ([v15 next])
  {
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = sub_1CEFE9C6C();
      sub_1CEFE9EC8(v15, v18, 0, v37);

      v19 = v34[3];
      v35 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v19);
      memcpy(v38, v37, sizeof(v38));
      v20 = sub_1CF38B634();
      sub_1CF4FB2BC(v20, v21, v19, v35);

      memcpy(v36, v37, sizeof(v36));
      sub_1CEFCCC44(v36, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      objc_autoreleasePoolPop(v17);
      ++v16;
    }

    while (([v15 next] & 1) != 0);
    if (v22 < 3000)
    {
      goto LABEL_6;
    }

    v23 = v32;
    if (v33)
    {
      v24 = v34[3];
      v25 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v24);
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3BE30);
      v36[0] = 3000;
      v26 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v26);

      MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BE50);
      sub_1CF4FB2BC(v37[0], v37[1], v24, v25);
    }

    else
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_1CF38F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 48), *(a2 + 56));
  MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA3BE80);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA3BEE0);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BF10);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3BF40);
  if (a6)
  {
    v11 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v11);

    v12 = 0x2054494D494CLL;
    v13 = 0xE600000000000000;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);

  return 0;
}

void sub_1CF38F7F4(void *a1, uint64_t a2, void *a3)
{
  v5 = a2;
  v7 = sub_1CF7D5474(sub_1CF483CF4, v3, a1, a2);
  v115 = v3;
  v116 = a1;
  v117 = v5;
  if (![v7 next])
  {
LABEL_85:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 897);
  }

  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  sub_1CF9E7948();

  [v7 longAtIndex_];
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3BBB0);
  [v7 longLongAtIndex_];
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA3BB90, v8, v9);

  v125 = a3;
  if ([v7 longAtIndex_] > 0)
  {
    v12 = sub_1CF7D5474(sub_1CF483D0C, v3, v116, v117);
    v111 = v7;
    if ([v12 next])
    {
      v13 = 0;
      v119 = *MEMORY[0x1E6967258];
      v114 = *MEMORY[0x1E6967298];
      v110 = *MEMORY[0x1E6967280];
      v121 = v12;
      while (1)
      {
        v19 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        v20 = v12;
        v21 = [v20 stringAtIndex_];
        if (!v21)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v21 = sub_1CF9E6888();
        }

        [v20 longLongAtIndex_];
        [v20 integerAtIndex_];
        v22 = v125[3];
        v128 = v125[4];
        __swift_project_boxed_opaque_existential_1(v125, v22);
        sub_1CF9E7948();

        v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v25 = v24;
        if (v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v25 == v26)
        {
          break;
        }

        v27 = sub_1CF9E8048();

        if (v27)
        {
          goto LABEL_6;
        }

        v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v29;
        if (v28 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v30 == v31)
        {

          v15 = 0x676E696B726F772ELL;
          v14 = 0xEB00000000746553;
        }

        else
        {
          v32 = sub_1CF9E8048();

          v15 = 0x676E696B726F772ELL;
          v14 = 0xEB00000000746553;
          if ((v32 & 1) == 0)
          {
            v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v35 = v34;
            if (v33 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v35 == v36)
            {
            }

            else
            {
              v37 = sub_1CF9E8048();

              if ((v37 & 1) == 0)
              {
                v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v14 = v38;
                goto LABEL_7;
              }
            }

            v14 = 0xE600000000000000;
            v15 = 0x68736172742ELL;
          }
        }

LABEL_7:
        MEMORY[0x1D3868CC0](v15, v14);

        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v16 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v16);

        MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA3BC60);
        v17 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v17);

        sub_1CF4FB2BC(0x202D202020, 0xE500000000000000, v22, v128);

        v18 = [v20 next];
        ++v13;
        v12 = v121;
        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_6:
      v14 = 0xE500000000000000;
      v15 = 0x746F6F722ELL;
      goto LABEL_7;
    }

    v19 = 0;
LABEL_25:
    v63 = v19 == [v111 longAtIndex_];
    a3 = v125;
    if (!v63)
    {
      v39 = v125[3];
      v40 = v125[4];
      __swift_project_boxed_opaque_existential_1(v125, v39);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v39, v40);
    }

    v7 = v111;
  }

  v41 = sub_1CF7D5474(sub_1CF22964C, 0, v116, v117);
  if (![v41 next])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 929);
  }

  v42 = a3[3];
  v43 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v42);
  sub_1CF9E7948();

  [v41 longAtIndex_];
  v44 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v44);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3BBB0);
  [v41 longLongAtIndex_];
  v45 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF4FB2BC(0xD000000000000019, 0x80000001CFA3BBD0, v42, v43);

  if ([v41 longAtIndex_] <= 0)
  {
    v48 = v115;
    v47 = v116;
    v49 = v117;
  }

  else
  {
    v126 = v41;
    v46 = sub_1CF7D5474(sub_1CF2197A4, 0, v116, v117);
    v50 = v46;
    v112 = v7;
    if ([v46 next])
    {
      v129 = *MEMORY[0x1E6967258];
      v122 = *MEMORY[0x1E6967298];
      v120 = *MEMORY[0x1E6967280];
      while (1)
      {
        v54 = v50;
        v55 = [v54 stringAtIndex_];
        if (!v55)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v55 = sub_1CF9E6888();
        }

        [v54 longLongAtIndex_];
        v56 = a3;
        v57 = a3[3];
        v58 = a3[4];
        __swift_project_boxed_opaque_existential_1(v56, v57);
        sub_1CF9E7948();

        v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v61 = v60;
        v63 = v59 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v61 == v62;
        if (v63)
        {
          break;
        }

        v64 = sub_1CF9E8048();

        if (v64)
        {
          goto LABEL_35;
        }

        v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v67 = v66;
        if (v65 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v67 == v68)
        {

          v52 = 0x676E696B726F772ELL;
          v51 = 0xEB00000000746553;
        }

        else
        {
          v69 = sub_1CF9E8048();

          v52 = 0x676E696B726F772ELL;
          v51 = 0xEB00000000746553;
          if ((v69 & 1) == 0)
          {
            v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v72 = v71;
            if (v70 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v72 == v73)
            {
            }

            else
            {
              v74 = sub_1CF9E8048();

              if ((v74 & 1) == 0)
              {
                v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v51 = v75;
                goto LABEL_36;
              }
            }

            v51 = 0xE600000000000000;
            v52 = 0x68736172742ELL;
          }
        }

LABEL_36:
        MEMORY[0x1D3868CC0](v52, v51);

        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v53 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v53);

        sub_1CF4FB2BC(0x202D202020, 0xE500000000000000, v57, v58);

        a3 = v125;
        if (([v54 next] & 1) == 0)
        {
          goto LABEL_54;
        }
      }

LABEL_35:
      v51 = 0xE500000000000000;
      v52 = 0x746F6F722ELL;
      goto LABEL_36;
    }

LABEL_54:
    v48 = v115;
    if ([v126 longAtIndex_])
    {
      v76 = a3[3];
      v77 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v76);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v76, v77);
    }

    v7 = v112;
    v49 = v117;
    v47 = v116;
    v41 = v126;
  }

  v78 = sub_1CF7D5474(sub_1CF483CFC, v48, v47, v49);
  if (![v78 next])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 956);
  }

  v79 = a3[3];
  v130 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v79);
  sub_1CF9E7948();

  [v78 longAtIndex_];
  v80 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v80);

  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3BBB0);
  [v78 longLongAtIndex_];
  v81 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v81);

  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA3BBF0, v79, v130);

  if ([v78 longAtIndex_] <= 0)
  {
  }

  else
  {
    v82 = sub_1CF7D5474(sub_1CF483D04, v115, v116, v117);
    v83 = v82;
    v127 = v41;
    v113 = v7;
    if ([v82 next])
    {
      v124 = *MEMORY[0x1E6967258];
      v123 = *MEMORY[0x1E6967298];
      v118 = *MEMORY[0x1E6967280];
      v131 = v83;
      while (1)
      {
        v88 = v83;
        v89 = [v88 stringAtIndex_];
        if (!v89)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v89 = sub_1CF9E6888();
        }

        [v88 longLongAtIndex_];
        [v88 integerAtIndex_];
        v90 = v125[3];
        v91 = v125[4];
        __swift_project_boxed_opaque_existential_1(v125, v90);
        sub_1CF9E7948();

        v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v94 = v93;
        if (v92 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v94 == v95)
        {
          break;
        }

        v96 = sub_1CF9E8048();

        if (v96)
        {
          goto LABEL_64;
        }

        v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v99 = v98;
        if (v97 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v99 == v100)
        {

          v85 = 0x676E696B726F772ELL;
          v84 = 0xEB00000000746553;
        }

        else
        {
          v101 = sub_1CF9E8048();

          v85 = 0x676E696B726F772ELL;
          v84 = 0xEB00000000746553;
          if ((v101 & 1) == 0)
          {
            v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v104 = v103;
            if (v102 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v104 == v105)
            {
            }

            else
            {
              v106 = sub_1CF9E8048();

              if ((v106 & 1) == 0)
              {
                v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v84 = v107;
                goto LABEL_65;
              }
            }

            v84 = 0xE600000000000000;
            v85 = 0x68736172742ELL;
          }
        }

LABEL_65:
        MEMORY[0x1D3868CC0](v85, v84);

        MEMORY[0x1D3868CC0](0x203A657A6973202CLL, 0xE800000000000000);
        v86 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v86);

        MEMORY[0x1D3868CC0](0x797420626F6A202CLL, 0xEC000000203A6570);
        v87 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v87);

        sub_1CF4FB2BC(0x202D202020, 0xE500000000000000, v90, v91);

        v83 = v131;
        if (([v88 next] & 1) == 0)
        {
          goto LABEL_81;
        }
      }

LABEL_64:
      v84 = 0xE500000000000000;
      v85 = 0x746F6F722ELL;
      goto LABEL_65;
    }

LABEL_81:
    if ([v78 longAtIndex_])
    {
      v108 = v125[3];
      v109 = v125[4];
      __swift_project_boxed_opaque_existential_1(v125, v108);
      sub_1CF4FB2BC(0x100000000000004ELL, 0x80000001CFA3BC10, v108, v109);
    }
  }
}

uint64_t sub_1CF390A50(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A9, 0x80000001CFA3BC80);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v18 = *(a2 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v8 = *(v19 + 16);
  v9 = 0x20u;
  do
  {
    v10 = *(&unk_1F4BED230 + v9);
    v11 = *(v19 + 24);
    if (v8 >= v11 >> 1)
    {
      sub_1CF680C9C((v11 > 1), v8 + 1, 1);
    }

    *(v19 + 16) = v8 + 1;
    *(v19 + 8 * v8 + 32) = v10;
    v9 += 8;
    ++v8;
  }

  while (v9 != 128);

  v12 = sub_1CF9E6C18();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF390E6C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D3, 0x80000001CFA3BD30);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v15 = *(a2 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v13 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF391290@<X0>(void *__src@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v197 = a2;
  v209 = a5;
  memcpy(v208, __src, sizeof(v208));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v177 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v189 = *(v14 - 8);
  v190 = v14;
  v15 = *(v189 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v186 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v185 = &v177 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v193 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v177 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v187 = *(v24 - 8);
  v188 = v24;
  v25 = *(v187 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v195 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v196 = &v177 - v28;
  v29 = sub_1CF9E6118();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v177 - v35;
  v204 = a3;
  v205 = a4;
  memcpy(v206, __src, sizeof(v206));
  if (sub_1CF08B99C(v206) == 1)
  {
    v37 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E7298();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "[interactive] testingOperationForEntry, missing entry", v40, 2u);
      MEMORY[0x1D386CDC0](v40, -1, -1);
    }

    (*(v30 + 8))(v36, v29);
    goto LABEL_5;
  }

  memcpy(v202, v208, sizeof(v202));
  memcpy(v207, v208, sizeof(v207));
  memcpy(v203, v208, sizeof(v203));
  sub_1CEFCCBDC(v203, v198, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44C9F4(v197, &v199);
  if (v5)
  {
    v43 = __src;
    return sub_1CEFCCC44(v43, &unk_1EC4BFC20, &unk_1CFA0A290);
  }

  v182 = v29;
  v184 = 0;
  v44 = v199;
  v45 = v200;
  v46 = v201;
  v47 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(__src, v198, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CF48048C(v44, v45, v46);
  v48 = sub_1CF9E6108();
  v49 = sub_1CF9E7298();
  v197 = v44;
  v50 = v44;
  v183 = v45;
  v51 = v46;
  sub_1CF480498(v50);
  v180 = v49;
  v52 = os_log_type_enabled(v48, v49);
  v181 = __src;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v199 = v179;
    *v53 = 136315394;
    v178 = v48;
    v54 = sub_1CF38B634();
    v56 = v55;
    sub_1CEFCCC44(__src, &unk_1EC4BFC20, &unk_1CFA0A290);
    v57 = sub_1CEFD0DF0(v54, v56, &v199);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v198[0] = v197;
    v198[1] = v183;
    v58 = v51;
    v198[2] = v51;
    sub_1CF48048C(v197, v183, v51);
    v59 = sub_1CF95E1F0();
    v61 = v60;
    sub_1CF480498(v198[0]);
    v62 = sub_1CEFD0DF0(v59, v61, &v199);
    v63 = v184;

    *(v53 + 14) = v62;
    v64 = v178;
    _os_log_impl(&dword_1CEFC7000, v178, v180, "[interactive] testingOperationForEntry, entry=%s, status=%s", v53, 0x16u);
    v65 = v179;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v65, -1, -1);
    MEMORY[0x1D386CDC0](v53, -1, -1);

    (*(v30 + 8))(v34, v182);
    v66 = v58;
  }

  else
  {
    sub_1CEFCCC44(__src, &unk_1EC4BFC20, &unk_1CFA0A290);

    (*(v30 + 8))(v34, v182);
    v63 = v184;
    v66 = v46;
  }

  Strong = v197;
  v68 = v194;
  v70 = v195;
  v69 = v196;
  if (v197 >> 62 != 1)
  {
    v71 = v181;
    if (v197 >> 62)
    {
      goto LABEL_67;
    }

    if (v197 <= 5u)
    {
      if (v197)
      {
        if (v197 == 1)
        {
          v72 = v197;
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v73 = *(Strong + 32);

            v74 = v193;
            if (LOBYTE(v202[1]) != 255)
            {
              v199 = v202[0];
              LOBYTE(v200) = v202[1];
              (*(*v73 + 240))(&v199, 1, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              if (v63)
              {

                v75 = v72;
LABEL_42:
                sub_1CF480498(v75);
                v43 = v71;
                return sub_1CEFCCC44(v43, &unk_1EC4BFC20, &unk_1CFA0A290);
              }

              if ((*(v187 + 48))(v74, 1, v188) == 1)
              {

                sub_1CF480498(v72);
                sub_1CEFCCC44(v71, &unk_1EC4BFC20, &unk_1CFA0A290);
                v112 = &qword_1EC4C1B40;
                v113 = &unk_1CF9FCB70;
                v114 = v74;
                goto LABEL_72;
              }

              sub_1CEFE55D0(v74, v70, &unk_1EC4BE360, &qword_1CF9FE650);
              v127 = (*(*v73 + 312))(&v199, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
              v129 = v128;

              sub_1CF480498(v72);
              if (v129)
              {
                v123 = v70;
                goto LABEL_91;
              }

              v116 = v71;
              v162 = v202[31];
              if (!v202[31] || v202[37] == 1)
              {
                sub_1CEFCCC44(v70, &unk_1EC4BE360, &qword_1CF9FE650);
                goto LABEL_102;
              }

              v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
              v164 = v163[12];
              v194 = v163[16];
              v165 = v209;
              v166 = v70;
              v167 = (v209 + v163[20]);
              v184 = 0;
              v168 = v163[24];
              v169 = v163[32];
              v196 = v163[28];
              v197 = v169;
              v170 = v200;
              *v209 = v199;
              *(v165 + 8) = v170;
              sub_1CEFE55D0(v166, v165 + v164, &unk_1EC4BE360, &qword_1CF9FE650);
              (*(v187 + 56))(v165 + v164, 0, 1, v188);
              *(v165 + v194) = v162;
              v171 = *&v202[37];
              *v167 = *&v202[35];
              v167[1] = v171;
              v172 = *&v202[41];
              v167[2] = *&v202[39];
              v167[3] = v172;
              *(v165 + v168) = v183;
              *(v165 + v196) = v127;
              v173 = v162;
              sub_1CEFCCBDC(&v202[35], v198, &unk_1EC4BF2D0, &unk_1CF9FEF20);
              sub_1CEFCCBDC(v202, v198, &unk_1EC4BFE00, &unk_1CF9FEF00);
              sub_1CEFCCC44(v116, &unk_1EC4BFC20, &unk_1CFA0A290);
              v174 = v202[29];
              v175 = v202[29];
              sub_1CEFCCC44(v202, &unk_1EC4BFE00, &unk_1CF9FEF00);
              *(v165 + v197) = v174;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
              swift_storeEnumTagMultiPayload();
              v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
              swift_storeEnumTagMultiPayload();
              return (*(*(v176 - 8) + 56))(v165, 0, 1, v176);
            }

            Strong = v72;
LABEL_67:
            sub_1CF480498(Strong);
LABEL_68:
            v112 = &unk_1EC4BFC20;
            v113 = &unk_1CFA0A290;
            v114 = v71;
LABEL_72:
            sub_1CEFCCC44(v114, v112, v113);
            goto LABEL_5;
          }

          __break(1u);
          goto LABEL_106;
        }

        if (v197 == 2)
        {
          sub_1CF480498(v197);
          v94 = v202[1];
          if (LOBYTE(v202[1]) == 255)
          {
            goto LABEL_68;
          }

          v95 = v202[31];
          if (!v202[31] || v202[37] == 1)
          {
            goto LABEL_68;
          }

          v96 = *&v202[37];
          v97 = v71;
          v98 = v209;
          *(v209 + 24) = *&v202[35];
          *(v98 + 40) = v96;
          v99 = *&v202[41];
          *(v98 + 56) = *&v202[39];
          *v98 = v202[0];
          *(v98 + 8) = v94;
          *(v98 + 16) = v95;
          *(v98 + 72) = v99;
          *(v98 + 88) = 1;
          v100 = v95;
          sub_1CEFCCBDC(&v202[35], v198, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCBDC(v202, v198, &unk_1EC4BFE00, &unk_1CF9FEF00);
          sub_1CEFCCC44(v97, &unk_1EC4BFC20, &unk_1CFA0A290);
          v101 = v202[29];
          v102 = v202[29];
          sub_1CEFCCC44(v202, &unk_1EC4BFE00, &unk_1CF9FEF00);
          *(v98 + 96) = v101;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
          swift_storeEnumTagMultiPayload();
          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
          swift_storeEnumTagMultiPayload();
          return (*(*(v103 - 8) + 56))(v98, 0, 1, v103);
        }

LABEL_109:
        sub_1CF51565C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 1169, Strong);
      }

      v84 = v197;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v85 = *(Strong + 32);

      if (LOBYTE(v202[1]) == 255)
      {

        Strong = v84;
        goto LABEL_67;
      }

      v199 = v202[0];
      LOBYTE(v200) = v202[1];
      (*(*v85 + 240))(&v199, 1, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      if (v63)
      {

        v75 = v84;
        goto LABEL_42;
      }

      if ((*(v187 + 48))(v68, 1, v188) == 1)
      {

        sub_1CF480498(v84);
        sub_1CEFCCC44(v71, &unk_1EC4BFC20, &unk_1CFA0A290);
        v112 = &qword_1EC4C1B40;
        v113 = &unk_1CF9FCB70;
        v114 = v68;
        goto LABEL_72;
      }

      sub_1CEFE55D0(v68, v69, &unk_1EC4BE360, &qword_1CF9FE650);
      v118 = (*(*v85 + 312))(&v199, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      LODWORD(v195) = v119;

      v122 = v118;
      sub_1CF480498(v84);
      if (v195)
      {
        v123 = v196;
LABEL_91:
        sub_1CEFCCC44(v123, &unk_1EC4BE360, &qword_1CF9FE650);
        goto LABEL_68;
      }

      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
      v147 = v146[12];
      v148 = v146[16];
      v149 = v71;
      v150 = v146[20];
      v151 = v200;
      v107 = v209;
      *v209 = v199;
      *(v107 + 8) = v151;
      sub_1CEFE55D0(v196, v107 + v147, &unk_1EC4BE360, &qword_1CF9FE650);
      (*(v187 + 56))(v107 + v147, 0, 1, v188);
      *(v107 + v148) = v122;
      sub_1CEFCCBDC(v202, v198, &unk_1EC4BFE00, &unk_1CF9FEF00);
      sub_1CEFCCC44(v149, &unk_1EC4BFC20, &unk_1CFA0A290);
      v152 = v202[29];
      v153 = v202[29];
      sub_1CEFCCC44(v202, &unk_1EC4BFE00, &unk_1CF9FEF00);
      *(v107 + v150) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
      swift_storeEnumTagMultiPayload();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
LABEL_63:
      swift_storeEnumTagMultiPayload();
      return (*(*(v111 - 8) + 56))(v107, 0, 1, v111);
    }

    switch(v197)
    {
      case 6u:
        sub_1CF480498(v197);
        sub_1CEFCCC44(v71, &unk_1EC4BFC20, &unk_1CFA0A290);
        v81 = v202[1];
        if (LOBYTE(v202[1]) != 255)
        {
LABEL_44:
          v86 = v209;
          *v209 = v202[0];
          *(v86 + 8) = v81;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
LABEL_52:
          swift_storeEnumTagMultiPayload();
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
          swift_storeEnumTagMultiPayload();
          return (*(*(v93 - 8) + 56))(v86, 0, 1, v93);
        }

        break;
      case 0xCu:
        goto LABEL_67;
      case 0x17u:
        sub_1CF480498(v197);
        sub_1CEFCCC44(v71, &unk_1EC4BFC20, &unk_1CFA0A290);
        v81 = v202[1];
        if (LOBYTE(v202[1]) != 255)
        {
          goto LABEL_44;
        }

        break;
      default:
        goto LABEL_109;
    }

LABEL_5:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
    return (*(*(v41 - 8) + 56))(v209, 1, 1, v41);
  }

  if (v197 > 5u)
  {
    switch(v197)
    {
      case 6u:
        sub_1CF480498(v197);
        sub_1CEFCCBDC(&v202[31], v198, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
        v92 = v202[31];
        v83 = v202[31];
        sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
        if (!v92)
        {
          goto LABEL_5;
        }

        break;
      case 0xCu:
        goto LABEL_70;
      case 0x17u:
        sub_1CF480498(v197);
        sub_1CEFCCBDC(&v202[31], v198, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
        v82 = v202[31];
        v83 = v202[31];
        sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
        if (!v82)
        {
          goto LABEL_5;
        }

        break;
      default:
        goto LABEL_110;
    }

    v86 = v209;
    *v209 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
    goto LABEL_52;
  }

  if (v197)
  {
    if (v197 == 1)
    {
      v76 = v197;
      v196 = v66;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v77 = *(Strong + 40);

      if (v202[31])
      {
        v199 = v202[31];
        v78 = *(*v77 + 240);
        v79 = v202[31];
        v80 = v192;
        v78(&v199, 1, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        if (v63)
        {

          sub_1CF480498(v76);

LABEL_49:
          v43 = v181;
          return sub_1CEFCCC44(v43, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        v117 = v79;
        if ((*(v189 + 48))(v80, 1, v190) == 1)
        {

          sub_1CF480498(v76);

          sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
          v112 = &unk_1EC4BFBB0;
          v113 = &qword_1CF9FCB90;
          v114 = v80;
          goto LABEL_72;
        }

        sub_1CEFE55D0(v80, v186, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v121 = (*(*v77 + 312))(&v199, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v131 = v130;
        v132 = v121;

        sub_1CF480498(v76);
        if ((v131 & 1) == 0)
        {
          v133 = v202[1];
          if (LOBYTE(v202[1]) != 255)
          {
            v184 = 0;
            if (!v202[13])
            {
              sub_1CEFCCC44(v186, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

              sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
              goto LABEL_5;
            }

            v194 = v202[0];
            v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
            v135 = v134[12];
            v136 = v209;
            v137 = v209 + v134[16];
            v138 = (v209 + v134[20]);
            v139 = v134[24];
            v195 = v134[28];
            v196 = v139;
            v197 = v134[32];
            *v209 = v117;
            sub_1CEFE55D0(v186, v136 + v135, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            (*(v189 + 56))(v136 + v135, 0, 1, v190);
            *v137 = v194;
            *(v137 + 8) = v133;
            v140 = *&v202[11];
            v138[2] = *&v202[9];
            v138[3] = v140;
            v141 = *&v202[15];
            v138[4] = *&v202[13];
            v138[5] = v141;
            v142 = *&v202[7];
            *v138 = *&v202[5];
            v138[1] = v142;
            *(v136 + v196) = v183;
            *(v136 + v195) = v132;
            sub_1CEFCCBDC(&v202[5], v198, &unk_1EC4BECD0, &unk_1CF9FEF80);
            sub_1CEFCCBDC(&v202[31], v198, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
            v143 = v202[55];
            v144 = v202[55];
            sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
            *(v136 + v197) = v143;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
            swift_storeEnumTagMultiPayload();
            v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
            swift_storeEnumTagMultiPayload();
            return (*(*(v145 - 8) + 56))(v136, 0, 1, v145);
          }
        }

        sub_1CEFCCC44(v186, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_71:
        v112 = &unk_1EC4BFC20;
        v113 = &unk_1CFA0A290;
        v114 = v181;
        goto LABEL_72;
      }

      Strong = v76;
LABEL_70:
      sub_1CF480498(Strong);
      goto LABEL_71;
    }

    if (v197 == 2)
    {
      sub_1CF480498(v197);
      v104 = v202[31];
      if (v202[31])
      {
        v105 = v202[1];
        if (LOBYTE(v202[1]) != 255)
        {
          if (v202[13])
          {
            v106 = v202[0];
            v107 = v209;
            *v209 = v202[31];
            *(v107 + 8) = v106;
            *(v107 + 16) = v105;
            *(v107 + 56) = *&v202[9];
            *(v107 + 72) = *&v202[11];
            *(v107 + 88) = *&v202[13];
            *(v107 + 104) = *&v202[15];
            *(v107 + 24) = *&v202[5];
            *(v107 + 40) = *&v202[7];
            *(v107 + 120) = 0;
            v108 = v104;
            sub_1CEFCCBDC(&v202[5], v198, &unk_1EC4BECD0, &unk_1CF9FEF80);
            sub_1CEFCCBDC(&v202[31], v198, &unk_1EC4C4E60, &unk_1CF9FCAD0);
            sub_1CEFCCC44(v181, &unk_1EC4BFC20, &unk_1CFA0A290);
            v109 = v202[55];
            v110 = v202[55];
            sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
            *(v107 + 128) = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
            swift_storeEnumTagMultiPayload();
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
            goto LABEL_63;
          }
        }
      }

      goto LABEL_71;
    }

LABEL_110:
    sub_1CF51565C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 1220, v197);
  }

  v87 = v197;
  v196 = v66;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v88 = *(Strong + 40);

  if (!v202[31])
  {

    Strong = v87;
    goto LABEL_70;
  }

  v199 = v202[31];
  v89 = *(*v88 + 240);
  v90 = v202[31];
  v91 = v191;
  v89(&v199, 1, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v63)
  {

    sub_1CF480498(v87);

    goto LABEL_49;
  }

  v115 = (*(v189 + 48))(v91, 1, v190);
  v116 = v181;
  if (v115 == 1)
  {

    sub_1CF480498(v87);

    sub_1CEFCCC44(v116, &unk_1EC4BFC20, &unk_1CFA0A290);
    v112 = &unk_1EC4BFBB0;
    v113 = &qword_1CF9FCB90;
    v114 = v91;
    goto LABEL_72;
  }

  sub_1CEFE55D0(v91, v185, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v120 = v90;
  v124 = (*(*v88 + 312))(&v199, &v204, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v126 = v125;

  sub_1CF480498(v87);
  if (v126)
  {
    sub_1CEFCCC44(v185, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

LABEL_102:
    v112 = &unk_1EC4BFC20;
    v113 = &unk_1CFA0A290;
    v114 = v116;
    goto LABEL_72;
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
  v155 = v154[12];
  v156 = v154[16];
  v157 = v154[20];
  v158 = v209;
  *v209 = v120;
  sub_1CEFE55D0(v185, v158 + v155, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(v189 + 56))(v158 + v155, 0, 1, v190);
  *(v158 + v156) = v124;
  sub_1CEFCCBDC(&v202[31], v198, &unk_1EC4C4E60, &unk_1CF9FCAD0);
  sub_1CEFCCC44(v116, &unk_1EC4BFC20, &unk_1CFA0A290);
  v159 = v202[55];
  v160 = v202[55];
  sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
  *(v158 + v157) = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  swift_storeEnumTagMultiPayload();
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  swift_storeEnumTagMultiPayload();
  return (*(*(v161 - 8) + 56))(v158, 0, 1, v161);
}

uint64_t sub_1CF392F5C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B2, 0x80000001CFA3B9E0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v18 = *(a2 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v8 = *(v19 + 16);
  v9 = 0x20u;
  do
  {
    v10 = *(&unk_1F4BED230 + v9);
    v11 = *(v19 + 24);
    if (v8 >= v11 >> 1)
    {
      sub_1CF680C9C((v11 > 1), v8 + 1, 1);
    }

    *(v19 + 16) = v8 + 1;
    *(v19 + 8 * v8 + 32) = v10;
    v9 += 8;
    ++v8;
  }

  while (v9 != 128);

  v12 = sub_1CF9E6C18();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v16 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF39337C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000E7, 0x80000001CFA3B7F0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v15 = *(a2 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v11 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v13 = sub_1CF9E6C18();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF3937A4(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  memcpy(v20, v3, sizeof(v20));
  v6 = *(v5 + 16);
  sub_1CEFCCBDC(v4, __src, &qword_1EC4BFC40, &qword_1CFA05380);
  memcpy(v19, v20, sizeof(v19));
  v21 = v5;

  if (v6)
  {
    v7 = 32;
    while (1)
    {
      v8 = *(v21 + v7 + 80);
      v17[4] = *(v21 + v7 + 64);
      v17[5] = v8;
      v17[6] = *(v21 + v7 + 96);
      v18 = *(v21 + v7 + 112);
      v9 = *(v21 + v7 + 16);
      v17[0] = *(v21 + v7);
      v17[1] = v9;
      v10 = *(v21 + v7 + 48);
      v17[2] = *(v21 + v7 + 32);
      v17[3] = v10;
      sub_1CEFCCBDC(v17, __src, &qword_1EC4BE6D0, &qword_1CF9FE560);
      v11 = objc_autoreleasePoolPush();
      sub_1CEFCCBDC(v19, __dst, &qword_1EC4BFC40, &qword_1CFA05380);
      sub_1CF44389C(v17);
      if (v1)
      {
        break;
      }

      sub_1CEFCCC44(v19, &qword_1EC4BFC40, &qword_1CFA05380);
      nullsub_1(__src);
      sub_1CEFCCC44(v19, &qword_1EC4BFC40, &qword_1CFA05380);
      memcpy(__dst, __src, sizeof(__dst));
      objc_autoreleasePoolPop(v11);
      sub_1CEFCCC44(v17, &qword_1EC4BE6D0, &qword_1CF9FE560);
      memcpy(v19, __dst, sizeof(v19));
      memcpy(v20, v19, sizeof(v20));
      v7 += 120;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    sub_1CEFCCC44(v19, &qword_1EC4BFC40, &qword_1CFA05380);
    objc_autoreleasePoolPop(v11);

    sub_1CEFCCC44(v17, &qword_1EC4BE6D0, &qword_1CF9FE560);
  }

  else
  {
LABEL_5:

    memcpy(__src, v19, sizeof(__src));
    result = sub_1CF480474(__src);
    if (result == 1)
    {
      return result;
    }

    memcpy(v16, v19, sizeof(v16));
    memcpy(__dst, v19, sizeof(__dst));
    sub_1CEFCCBDC(__dst, v13, &qword_1EC4BFC48, &qword_1CFA05388);
    sub_1CF3F7B80(v16);
    sub_1CEFCCC44(v19, &qword_1EC4BFC40, &qword_1CFA05380);
  }

  return sub_1CEFCCC44(v19, &qword_1EC4BFC40, &qword_1CFA05380);
}

uint64_t sub_1CF393AF8(char a1)
{
  result = swift_weakLoadStrong();
  if (a1)
  {
    if (result)
    {

      return 0x204554414C4C4F43;
    }

    __break(1u);
  }

  else if (result)
  {
    v3 = *(result + 32);

    v4 = *(v3 + 16);

    v6 = (*(*v4 + 112))(v5);

    if (v6 != 2 && (v6 & 1) != 0)
    {
      return 0;
    }

    return 0x204554414C4C4F43;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF393BDC(uint64_t a1, void *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v146 = a4;
  v147 = a2;
  v8 = *(sub_1CF9E6938() - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](a1);
  v13 = (&v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 9);
  v17 = *(a1 + 10) | (*(a1 + 14) << 32);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (v20 <= 3)
  {
    if (*(a1 + 32) <= 1u)
    {
      if (!*(a1 + 32))
      {
        v30 = v15 | (v16 << 8) | (v17 << 16);
        v148 = 0;
        v149 = 0xE000000000000000;
        sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        sub_1CF9E7948();
        v150 = v148;
        v151 = v149;
        MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
        MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
        MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA369F0);
        LOBYTE(v148) = v16 & 1;
        v31 = v147;
        v32 = sub_1CEFE96F8(v14, v15 | ((v16 & 1) << 8), 3044466, 0xE300000000000000, v147);
        MEMORY[0x1D3868CC0](v32);

        MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
        v33 = a3(v31);
        MEMORY[0x1D3868CC0](v33);

        sub_1CF480358(v14, v30, v18, v19, 0, sub_1CEFD0994);
        return v150;
      }

      v145 = a3;
      v57 = 0xD000000000000011;
      if (v16)
      {
        v148 = 0;
        v149 = 0xE000000000000000;
        v144 = v11;
        sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        sub_1CEFD0988(v14, v15, 1);
        sub_1CF9E7948();
        v150 = v148;
        v151 = v149;
        MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
        MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
        MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
        MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
        MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
        MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
        MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E6918();
        v58 = sub_1CF9E68C8();
        v60 = v59;

        result = (v8[1])(v13, v144);
        if (v60 >> 60 != 15)
        {
          v61 = sub_1CF9E5B48();
          sub_1CEFE48D8(v58, v60);
          v62 = v147;
          v63 = [v147 bindObjectParameter_];

          v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v66 = v65;

          MEMORY[0x1D3868CC0](v64, v66);

          MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
          if (v19)
          {

            v67 = sub_1CF39587C(v18, v19, v62, v5, 1);
            v69 = v68;

LABEL_63:
            MEMORY[0x1D3868CC0](v67, v69);

            MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
            v115 = v62;
            goto LABEL_64;
          }

LABEL_62:
          v67 = 0;
          v69 = 0xE000000000000000;
          goto LABEL_63;
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v148 = 0;
      v149 = 0xE000000000000000;
      sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
      sub_1CF9E7948();
      v150 = v148;
      v151 = v149;
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
      MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
      MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      v10 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
      v13 = 0xD000000000000011;
      if (v15)
      {
        v103 = v147;
        if (v15 == 1)
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          v14 = (v14 != 0) << 63;
        }
      }

      else
      {
        v14 = -v14;
        v103 = v147;
      }

      v117 = [v103 bindLongParameter_];
      v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v120 = v119;

      MEMORY[0x1D3868CC0](v118, v120);

      MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
      if (v19)
      {

        v121 = sub_1CF39587C(v18, v19, v103, v5, 0);
        v123 = v122;
      }

      else
      {
        v121 = 0;
        v123 = 0xE000000000000000;
      }

      MEMORY[0x1D3868CC0](v121, v123);

      MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
      v124 = v145(v103);
      MEMORY[0x1D3868CC0](v124);

      goto LABEL_85;
    }

    v145 = a3;
    if (v20 == 2)
    {
      if (v16)
      {
        v144 = v11;
        v34 = 0xE000000000000000;
        v148 = 0;
        v149 = 0xE000000000000000;
        sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        sub_1CEFD0988(v14, v15, 1);
        sub_1CF9E7948();
        v150 = v148;
        v151 = v149;
        MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
        MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
        v16 = 0xD000000000000011;
        MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA36B50);
        MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
        MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA36B90);
        MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
        MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xEC00000020202020);
        if (v19)
        {

          v35 = sub_1CF39587C(v18, v19, v147, v5, 1);
          v34 = v36;

          goto LABEL_55;
        }

LABEL_54:
        v35 = 0;
LABEL_55:
        MEMORY[0x1D3868CC0](v35, v34);

        MEMORY[0x1D3868CC0](v16 + 38, 0x80000001CFA36BD0);
        MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
        MEMORY[0x1D3868CC0](v16 + 14, 0x80000001CFA36C10);
        MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
        MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E6918();
        v106 = sub_1CF9E68C8();
        v108 = v107;

        result = (v8[1])(v13, v144);
        if (v108 >> 60 != 15)
        {
          v109 = sub_1CF9E5B48();
          sub_1CEFE48D8(v106, v108);
          v110 = v147;
          v111 = [v147 bindObjectParameter_];

          v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v114 = v113;

          MEMORY[0x1D3868CC0](v112, v114);

          MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
          v115 = v110;
LABEL_64:
          v116 = v145(v115);
          MEMORY[0x1D3868CC0](v116);

          sub_1CEFD0994(v14, v15, 1);

          sub_1CEFD0994(v14, v15, 1);
          return v150;
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v100 = 0xE000000000000000;
      v148 = 0;
      v149 = 0xE000000000000000;
      sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
      sub_1CF9E7948();
      v150 = v148;
      v151 = v149;
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
      MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
      MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA36B50);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA36B90);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xEC00000020202020);
      if (v19)
      {

        v62 = v147;
        v101 = sub_1CF39587C(v18, v19, v147, v5, 0);
        v100 = v102;
      }

      else
      {
        v101 = 0;
        v62 = v147;
      }

      MEMORY[0x1D3868CC0](v101, v100);

      MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA36BD0);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA36C10);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
      if (v15)
      {
        if (v15 == 1)
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_62;
          }
        }

        else
        {
          v14 = (v14 != 0) << 63;
        }
      }

      else
      {
        v14 = -v14;
      }

      v131 = [v62 bindLongParameter_];
      v132 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v134 = v133;

      MEMORY[0x1D3868CC0](v132, v134);

      MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
      v135 = v145(v62);
      MEMORY[0x1D3868CC0](v135);

LABEL_85:

      return v150;
    }

    v57 = 0x204D4F524620200ALL;
    if (v16)
    {
      v70 = v15 | (v16 << 8) | (v17 << 16);
      v148 = 0;
      v149 = 0xE000000000000000;
      v71 = v11;
      sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
      sub_1CF480278(v14, v70, v18, v19, 3u, sub_1CEFD0988);
      sub_1CF9E7948();
      v150 = v148;
      v151 = v149;
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
      MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
      MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36C30);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E6918();
      v72 = sub_1CF9E68C8();
      v74 = v73;

      result = (v8[1])(v13, v71);
      if (v74 >> 60 != 15)
      {
        v75 = sub_1CF9E5B48();
        sub_1CEFE48D8(v72, v74);
        v76 = v147;
        v77 = [v147 bindObjectParameter_];

        v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v80 = v79;

        MEMORY[0x1D3868CC0](v78, v80);

        MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA36C60);
        v81 = v145(v76);
        MEMORY[0x1D3868CC0](v81);

        sub_1CF480358(v14, v70, v18, v19, 3u, sub_1CEFD0994);
        v49 = v14;
        v50 = v70;
        v51 = v18;
        v52 = v19;
        v53 = 3;
        goto LABEL_33;
      }

      goto LABEL_88;
    }

LABEL_41:
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
    sub_1CF9E7948();
    v150 = v148;
    v151 = v149;
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
    MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
    MEMORY[0x1D3868CC0](v57, 0xE800000000000000);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    v21 = 0xD000000000000011;
    MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    v10 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36C30);
    v19 = 0xD000000000000011;
    if (v15)
    {
      v8 = v147;
      if (v15 == 1)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v14 = (v14 != 0) << 63;
      }
    }

    else
    {
      v14 = -v14;
      v8 = v147;
    }

    v125 = [v8 bindLongParameter_];
    v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v128 = v127;

    MEMORY[0x1D3868CC0](v126, v128);

    v129 = 0xD000000000000027;
    v130 = 0x80000001CFA36C60;
    goto LABEL_83;
  }

  if (*(a1 + 32) > 5u)
  {
    if (v20 == 6)
    {
      v54 = v15 | (v16 << 8) | (v17 << 16);
      v148 = v14;
      if (v16)
      {
        v55 = MEMORY[0x1EEE9AC00](v10);
        v56 = v147;
        *(&v144 - 2) = &v148;
        *(&v144 - 1) = v56;
        sub_1CEFCCBDC(v55, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        sub_1CF480278(v14, v54, v18, v19, 6u, sub_1CEFD0988);
        v24 = sub_1CF395A0C(1, sub_1CF485968, (&v144 - 4), v5, a3, v146, v56);
        sub_1CF480358(v14, v54, v18, v19, 6u, sub_1CEFD0994);
      }

      else
      {
        LOBYTE(v149) = v15;
        v98 = MEMORY[0x1EEE9AC00](v10);
        v99 = v147;
        *(&v144 - 2) = &v148;
        *(&v144 - 1) = v99;
        sub_1CEFCCBDC(v98, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        v24 = sub_1CF395A0C(0, sub_1CF48596C, (&v144 - 4), v5, a3, v146, v99);
      }

      v25 = v14;
      v26 = v54;
      v27 = v18;
      v28 = v19;
      v29 = 6;
      goto LABEL_21;
    }

    if (v20 == 7)
    {
      v13 = a3;
      v21 = v15 | (v16 << 8) | (v17 << 16);
      if (v16)
      {
        v148 = v14;
        v22 = MEMORY[0x1EEE9AC00](v10);
        v23 = v147;
        *(&v144 - 2) = &v148;
        *(&v144 - 1) = v23;
        sub_1CEFCCBDC(v22, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
        sub_1CF480278(v14, v21, v18, v19, 7u, sub_1CEFD0988);
        v24 = sub_1CF395C58(1, sub_1CF480BE0, (&v144 - 4), v5, a3, v146, v23);
        sub_1CF480358(v14, v21, v18, v19, 7u, sub_1CEFD0994);
        v25 = v14;
        v26 = v21;
        v27 = v18;
        v28 = v19;
        v29 = 7;
LABEL_21:
        sub_1CF480358(v25, v26, v27, v28, v29, sub_1CEFD0994);
        return v24;
      }

LABEL_45:
      v148 = v14;
      LOBYTE(v149) = v15;
      v104 = MEMORY[0x1EEE9AC00](v10);
      v105 = v147;
      *(&v144 - 2) = &v148;
      *(&v144 - 1) = v105;
      sub_1CEFCCBDC(v104, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
      v24 = sub_1CF395C58(0, sub_1CF480BE8, (&v144 - 4), v5, v13, v146, v105);
      v25 = v14;
      v26 = v21;
      v27 = v18;
      v28 = v19;
      v29 = 7;
      goto LABEL_21;
    }

    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
    sub_1CF9E7948();
    v150 = v148;
    v151 = v149;
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
    MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
    MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA36A20);
    v148 = 34;
    v82 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v82);

    MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
    v148 = 2;
    v83 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v83);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    v84 = a3(v147);
    goto LABEL_84;
  }

  v145 = a3;
  if (v20 == 4)
  {
    if (v16)
    {
      v37 = v15 | (v16 << 8) | (v17 << 16);
      v148 = 0;
      v149 = 0xE000000000000000;
      v144 = v11;
      sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
      sub_1CF480278(v14, v37, v18, v19, 4u, sub_1CEFD0988);
      sub_1CF9E7948();
      v150 = v148;
      v151 = v149;
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
      MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
      MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA36C90);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA36CD0);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA36D00);
      MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36D60);
      MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
      MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      sub_1CF9E6918();
      v38 = sub_1CF9E68C8();
      v40 = v39;

      result = (v8[1])(v13, v144);
      if (v40 >> 60 != 15)
      {
        v42 = sub_1CF9E5B48();
        sub_1CEFE48D8(v38, v40);
        v43 = v147;
        v44 = [v147 bindObjectParameter_];

        v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v47 = v46;

        MEMORY[0x1D3868CC0](v45, v47);

        MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
        v48 = v145(v43);
        MEMORY[0x1D3868CC0](v48);

        sub_1CF480358(v14, v37, v18, v19, 4u, sub_1CEFD0994);
        v49 = v14;
        v50 = v37;
        v51 = v18;
        v52 = v19;
        v53 = 4;
LABEL_33:
        sub_1CF480358(v49, v50, v51, v52, v53, sub_1CEFD0994);
        return v150;
      }

      goto LABEL_90;
    }

    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
    sub_1CF9E7948();
    v150 = v148;
    v151 = v149;
    v34 = 0xD000000000000011;
    MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
    MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
    MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA36C90);
    MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA36CD0);
    MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA36D00);
    MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36D60);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    v10 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
    if (v15)
    {
      v8 = v147;
      if (v15 == 1)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      else
      {
        v14 = (v14 != 0) << 63;
      }
    }

    else
    {
      v14 = -v14;
      v8 = v147;
    }

    v136 = [v8 bindLongParameter_];
    v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v139 = v138;

    MEMORY[0x1D3868CC0](v137, v139);

    v129 = 0x20444E412020200ALL;
    v130 = 0xE800000000000000;
    goto LABEL_83;
  }

  v34 = 0xD000000000000011;
  if ((v16 & 1) == 0)
  {
LABEL_50:
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
    sub_1CF9E7948();
    v150 = v148;
    v151 = v149;
    MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA36D90);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA36DF0);
    if (v15)
    {
      v8 = v147;
      if (v15 == 1)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
        v14 = (v14 != 0) << 63;
      }
    }

    else
    {
      v14 = -v14;
      v8 = v147;
    }

    v140 = [v8 bindLongParameter_];
    v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v143 = v142;

    MEMORY[0x1D3868CC0](v141, v143);

    MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA36E20);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA36E60);
    MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
    MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA36EF0);
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    v129 = 0x454857200A64695FLL;
    v130 = 0xEB00000000204552;
LABEL_83:
    MEMORY[0x1D3868CC0](v129, v130);
    v84 = v145(v8);
LABEL_84:
    MEMORY[0x1D3868CC0](v84);
    goto LABEL_85;
  }

  v85 = v15 | (v16 << 8) | (v17 << 16);
  v148 = 0;
  v149 = 0xE000000000000000;
  v86 = v11;
  sub_1CEFCCBDC(v10, &v150, &unk_1EC4BFEF0, &unk_1CFA055C0);
  v144 = v85;
  sub_1CF480278(v14, v85, v18, v19, 5u, sub_1CEFD0988);
  sub_1CF9E7948();
  v150 = v148;
  v151 = v149;
  MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA36D90);
  MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA36DF0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v87 = sub_1CF9E68C8();
  v89 = v88;

  result = (v8[1])(v13, v86);
  if (v89 >> 60 != 15)
  {
    v90 = sub_1CF9E5B48();
    sub_1CEFE48D8(v87, v89);
    v91 = v147;
    v92 = [v147 bindObjectParameter_];

    v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v95 = v94;

    MEMORY[0x1D3868CC0](v93, v95);

    MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA36E20);
    MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA36E60);
    MEMORY[0x1D3868CC0](*(v5 + 64), *(v5 + 72));
    MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA36EF0);
    MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0x454857200A64695FLL, 0xEB00000000204552);
    v96 = v145(v91);
    MEMORY[0x1D3868CC0](v96);

    v97 = v144;
    sub_1CF480358(v14, v144, v18, v19, 5u, sub_1CEFD0994);
    v49 = v14;
    v50 = v97;
    v51 = v18;
    v52 = v19;
    v53 = 5;
    goto LABEL_33;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_1CF39587C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1CF9E7948();

  v18 = 0xD000000000000014;
  v19 = 0x80000001CFA36B30;
  if (a2)
  {

    v8 = MEMORY[0x1E69E6158];
  }

  else
  {

    a1 = 0;
    v8 = 0;
    v16 = 0;
  }

  v14 = a1;
  v15 = a2;
  v17 = v8;
  v9 = sub_1CEFF8EA0(&v14);
  v11 = v10;
  sub_1CEFCCC44(&v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v11)
  {
    MEMORY[0x1D3868CC0](v9, v11);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v12 = sub_1CF393AF8(a5 & 1);
    MEMORY[0x1D3868CC0](v12);

    return v18;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF395A0C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA36F50);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  if (v12)
  {
    v14 = 21318;
  }

  else
  {
    v14 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA36FB0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA37000);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);

  v15 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA37020);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA37060);
  MEMORY[0x1D3868CC0](*(a4 + 64), *(a4 + 72));
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA370F0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA37140);
  v17 = a5(a7);
  MEMORY[0x1D3868CC0](v17);

  return 0;
}

uint64_t sub_1CF395C58(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA37160);
  MEMORY[0x1D3868CC0](*(a4 + 64), *(a4 + 72));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA37180);
  v11 = a1 & 1;
  if (a1)
  {
    v12 = 21318;
  }

  else
  {
    v12 = 20550;
  }

  if (a1)
  {
    v13 = 20550;
  }

  else
  {
    v13 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA371C0);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA37200);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA37250);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000051, 0x80000001CFA37280);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA372E0);
  v14 = sub_1CF393AF8(v11);
  MEMORY[0x1D3868CC0](v14);

  v15 = MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA37330);
  v16 = a2(v15);
  MEMORY[0x1D3868CC0](v16);

  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA37360);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373A0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);

  v17 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v18 = a2(v17);
  MEMORY[0x1D3868CC0](v18);

  MEMORY[0x1D3868CC0](0x444E41202020200ALL, 0xE900000000000020);
  v19 = a5(a7);
  MEMORY[0x1D3868CC0](v19);

  return 0;
}

void *sub_1CF395F8C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v84 = v3;
  v90 = v4;
  v119[67] = v5;
  v86 = v7;
  v87 = v6;
  v88 = v8;
  LODWORD(v89) = v9;
  v10 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v85 = *(v11 - 8);
  v12 = v85[8];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v75 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v75 - v21;
  v23 = [v10 longAtIndex_];
  v24 = sub_1CEFE9C6C();
  sub_1CEFE9EC8(v10, v24, 1, v105);
  if (v1)
  {
  }

  v81 = 0;
  v82 = v22;
  v26 = v87;
  v27 = v88;
  v83 = v18;
  v79 = v23;
  v80 = v11;
  v78 = v14;

  memcpy(v107, v105, sizeof(v107));
  if (v89)
  {
    v28 = LOBYTE(v107[46]);
    v89 = v107[45];
    v29 = v107[44];
    sub_1CEFCCBDC(v107, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    if (v28)
    {
      goto LABEL_63;
    }

    v30 = v26;
    v31 = v29 & v26;
    v32 = v81;
    if (!v31)
    {
      goto LABEL_63;
    }

    v85 = v29;
    memcpy(v118, v105, sizeof(v118));
    sub_1CF7F62D0(v91);
    v33 = v83;
    sub_1CF030B88(v83);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 176))(result);

      memcpy(v117, v91, sizeof(v117));
      v35 = v117[13];
      v36 = v117[14];
      v37 = LOBYTE(v117[15]);
      v88 = v117[13];
      LODWORD(v82) = LOBYTE(v117[15]);
      if (LOBYTE(v117[15]))
      {
        v38 = v117[13];
        sub_1CF03C530(v117[13], v117[14], v117[15]);

        v39 = v36;
        v40 = v36;
        v41 = v37;
      }

      else
      {
        v39 = v117[14];
        v49 = v117[13] & v30;
        if ((v117[13] & v30) != 0)
        {

          v50 = v35;
          while (1)
          {
            v51 = v49 & -v49;
            sub_1CF44F5F8(v104);
            if (v32)
            {
              break;
            }

            v53 = v52;
            sub_1CF4804C0(v104[0], LOWORD(v104[1]));
            v54 = -1;
            if ((v53 & ((v50 & v51) != 0)) != 0)
            {
              v54 = ~v51;
            }

            v50 &= v54;
            v55 = v49 == v51;
            v49 ^= v51;
            if (v55)
            {
              goto LABEL_33;
            }
          }

          sub_1CF03D7A8(v88, v39, 0);

          sub_1CEFCCC44(v83, &qword_1EC4BFDE8, &qword_1CFA054E8);
          memcpy(v99, v91, 0x208uLL);
          sub_1CEFCCC44(v99, &unk_1EC4BFC90, &unk_1CFA053E0);
          sub_1CEFCCC44(v107, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          memcpy(v101, v105, 0x208uLL);
          v71 = v101;
          return sub_1CEFCCC44(v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        }

        v50 = v35;
LABEL_33:

        v41 = v50 == 0;
        if (v50)
        {
          v38 = v50;
        }

        else
        {
          v38 = v39;
        }

        if (v50)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }
      }

      sub_1CEFCCC44(v83, &qword_1EC4BFDE8, &qword_1CFA054E8);
      memcpy(v101, v91, 0x208uLL);
      sub_1CEFCCC44(v101, &unk_1EC4BFC90, &unk_1CFA053E0);
      v63 = v85;
      v64 = v89;
      if (sub_1CF95F010(v38, v40, v41, v85, v89, 0))
      {
        sub_1CF03D7A8(v88, v39, v82);
LABEL_63:
        sub_1CEFCCC44(v107, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_64:
        memcpy(v91, v105, 0x208uLL);
        v71 = v91;
        return sub_1CEFCCC44(v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      v105[44] = v38;
      v105[45] = v40;
      LOBYTE(v105[46]) = v41;
      sub_1CF03C530(v38, v40, v41);
      sub_1CF03D7A8(v63, v64, 0);
      sub_1CF03D7A8(v88, v39, v82);
      if (v41)
      {
        *v84 = 1;
      }

      v65 = v79;
LABEL_58:
      memcpy(v103, v105, sizeof(v103));
      sub_1CF095754(v104);
      memcpy(v101 + 7, v107, 0x208uLL);
      memcpy(v100, v103, sizeof(v100));
      memcpy(&v99[7], v104, 0x208uLL);
      v102 = 0;
      v108 = v65;
      v109 = 0;
      memcpy(v110, v101, sizeof(v110));
      memcpy(v111, v103, sizeof(v111));
      v112 = 0;
      v114 = 0;
      v113 = 0;
      v115 = 2;
      memcpy(v116, v99, sizeof(v116));
      sub_1CEFCCBDC(v107, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v103, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v70 = sub_1CF396D20(&v108);
      if (v32)
      {
        v91[0] = v65;
        LOBYTE(v91[1]) = 0;
        memcpy(&v91[1] + 1, v101, 0x20FuLL);
        memcpy(v92, v100, sizeof(v92));
        v93 = 0;
        v95 = 0;
        v94 = 0;
        v96 = 2;
        memcpy(v97, v99, sizeof(v97));
        sub_1CEFCCC44(v91, &qword_1EC4BFC48, &qword_1CFA05388);
        sub_1CEFCCC44(v107, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        memcpy(v98, v105, sizeof(v98));
        v71 = v98;
        return sub_1CEFCCC44(v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      }

      if ((v70 & 1) == 0)
      {
        memcpy(v106, v105, sizeof(v106));
        sub_1CF38D098(v106);
      }

      v91[0] = v65;
      LOBYTE(v91[1]) = 0;
      memcpy(&v91[1] + 1, v101, 0x20FuLL);
      memcpy(v92, v100, sizeof(v92));
      v93 = 0;
      v95 = 0;
      v94 = 0;
      v96 = 2;
      memcpy(v97, v99, sizeof(v97));
      sub_1CEFCCC44(v91, &qword_1EC4BFC48, &qword_1CFA05388);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_73;
  }

  if (LOBYTE(v107[20]))
  {
    goto LABEL_64;
  }

  v42 = v26;
  v43 = v107[18];
  v44 = v107[18] & v26;
  v32 = v81;
  if (!v44)
  {
    goto LABEL_64;
  }

  v83 = v107[19];
  memcpy(v119, v105, 0x208uLL);
  v45 = v82;
  sub_1CEFCCBDC(v27, v82, &qword_1EC4BE710, &qword_1CF9FE5A8);
  (v85[7])(v45, 0, 1, v80);
  result = swift_weakLoadStrong();
  v88 = result;
  if (!result)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v75 = v119[2];
  v46 = v119[18];
  v47 = v119[19];
  v48 = LOBYTE(v119[20]);
  v77 = v43;
  v89 = v119[19];
  v85 = v119[18];
  v76 = LOBYTE(v119[20]);
  if (LOBYTE(v119[20]))
  {
    sub_1CEFCCBDC(v107, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v119, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF03C530(v46, v47, v48);
  }

  else
  {
    v56 = v119[18] & v42;
    if ((v119[18] & v42) != 0)
    {
      sub_1CEFCCBDC(v107, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v119, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF03C530(v46, v89, 0);
      v57 = v46;
      while (1)
      {
        v58 = v56 & -v56;
        v59 = v82;
        sub_1CF45AD80(v101);
        if (v32)
        {
          break;
        }

        v61 = v60;
        sub_1CF47FDFC(v101[0], LOWORD(v101[1]));
        v62 = -1;
        if ((v61 & ((v57 & v58) != 0)) != 0)
        {
          v62 = ~v58;
        }

        v57 &= v62;
        v55 = v56 == v58;
        v56 ^= v58;
        if (v55)
        {
          goto LABEL_45;
        }
      }

      sub_1CF03D7A8(v85, v89, 0);

      sub_1CEFCCC44(v59, &unk_1EC4BFDF0, &unk_1CFA054F0);
      sub_1CEFCCC44(v119, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCC44(v107, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v91, v105, 0x208uLL);
      v71 = v91;
      return sub_1CEFCCC44(v71, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    sub_1CEFCCBDC(v107, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v119, v91, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CF03C530(v46, v89, 0);
    v57 = v46;
LABEL_45:

    v48 = v57 == 0;
    if (v57)
    {
      v46 = v57;
    }

    else
    {
      v46 = v89;
    }

    if (v57)
    {
      v47 = v89;
    }

    else
    {
      v47 = 0;
    }
  }

  sub_1CEFCCC44(v82, &unk_1EC4BFDF0, &unk_1CFA054F0);
  sub_1CEFCCC44(v119, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v66 = v77;
  v67 = v83;
  if (sub_1CF95F010(v46, v47, v48, v77, v83, 0))
  {
    sub_1CF03D7A8(v85, v89, v76);
    goto LABEL_63;
  }

  v105[18] = v46;
  v105[19] = v47;
  LOBYTE(v105[20]) = v48;
  sub_1CF03C530(v46, v47, v48);
  sub_1CF03D7A8(v66, v67, 0);
  if (v48 == 1)
  {
    *v84 = 1;
    v65 = v79;
    v68 = v89;
    v69 = v76;
LABEL_57:
    sub_1CF03D7A8(v85, v68, v69);
    goto LABEL_58;
  }

  v65 = v79;
  v68 = v89;
  v69 = v76;
  if ((v75 & 2) == 0 || v48)
  {
    goto LABEL_57;
  }

  sub_1CF03D7A8(v85, v89, v76);
  if (v46 != 512)
  {
    goto LABEL_58;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_74;
  }

  v72 = v105[1];
  v73 = v78;
  if (LOBYTE(v105[1]) != 255)
  {
    v74 = result;
    *v78 = v105[0];
    *(v73 + 8) = v72;
    *(v73 + 9) = 0;
    swift_storeEnumTagMultiPayload();
    (*(*v74 + 312))(v73);

    sub_1CEFCCC44(v73, &qword_1EC4BE710, &qword_1CF9FE5A8);
    goto LABEL_58;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1CF396D20(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v115 = v5;
  v116 = v6;
  v7 = v3;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v111 = &v100 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v112 = &v100 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v113 = &v100 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v114 = &v100 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v100 - v24;
  v145 = v1;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v27 = (*(*result + 152))(result);

  if ((v27 & 8) != 0)
  {
    v28 = 0;
    return v28 & 1;
  }

  memcpy(v139, (v7 + 536), sizeof(v139));
  if (LOBYTE(v139[1]) == 255 || LOBYTE(v139[20]) != 1)
  {
    v28 = 0;
    if (!v139[31] || LOBYTE(v139[46]) != 1)
    {
      return v28 & 1;
    }
  }

  memcpy(v135, (v7 + 536), sizeof(v135));
  nullsub_1(v135);
  memcpy(v138, (v7 + 1088), sizeof(v138));
  memcpy(v129, (v7 + 1088), 0x208uLL);
  memcpy(&v129[520], v135, 0x208uLL);
  memcpy(v136, (v7 + 1088), sizeof(v136));
  v29 = sub_1CF08B99C(v136);
  v109 = v9;
  if (v29 == 1)
  {
    memcpy(v124, &v129[520], 0x208uLL);
    if (sub_1CF08B99C(v124) == 1)
    {
      memcpy(v123, (v7 + 1088), 0x208uLL);
      sub_1CEFCCBDC(v139, v117, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v138, v117, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFCCC44(v123, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_17:
      v32 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v33 = sub_1CF9E6108();
      v34 = sub_1CF9E7298();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1CEFC7000, v33, v34, "item is still runnable after reconciliation, breaking loop", v35, 2u);
        MEMORY[0x1D386CDC0](v35, -1, -1);
      }

      (*(v109 + 8))(v25, v8);
      v28 = 0;
      return v28 & 1;
    }

    goto LABEL_12;
  }

  memcpy(v123, (v7 + 1088), 0x208uLL);
  memcpy(v124, &v129[520], 0x208uLL);
  if (sub_1CF08B99C(v124) == 1)
  {
LABEL_12:
    memcpy(v124, v129, 0x410uLL);
    sub_1CEFCCBDC(v139, v123, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v138, v123, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(v124, &qword_1EC4BFC50, &qword_1CFA05390);
    goto LABEL_13;
  }

  memcpy(v128, &v129[520], 0x208uLL);
  memcpy(v144, &v129[520], 0x208uLL);
  memcpy(v143, v123, sizeof(v143));
  sub_1CEFCCBDC(v139, v117, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v139, v117, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v107 = v8;
  v108 = v2;
  sub_1CEFCCBDC(v138, v117, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCBDC(v123, v117, &unk_1EC4BFC20, &unk_1CFA0A290);
  v31 = sub_1CF46D8B0(v143, v144);
  sub_1CEFCCC44(v128, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFCCC44(v139, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCC44(v123, &unk_1EC4BFC20, &unk_1CFA0A290);
  memcpy(v117, (v7 + 1088), 0x208uLL);
  v8 = v107;
  v4 = v108;
  sub_1CEFCCC44(v117, &unk_1EC4BFC20, &unk_1CFA0A290);
  if (v31)
  {
    goto LABEL_17;
  }

LABEL_13:
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = result;
  sub_1CEFCCBDC(v139, v129, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44DF5C(v30, 1, v124);
  if (v4)
  {
    sub_1CEFCCC44(v139, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

    return v28 & 1;
  }

  sub_1CEFCCC44(v139, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

  if (v124[0] >> 62 == 2 && v124[0] <= 0x8000000000000001)
  {
    v28 = LOBYTE(v124[2]) | LOBYTE(v124[1]);
    if (*&v124[1] == 0)
    {
      return v28 & 1;
    }
  }

  v103 = v124[0];
  v106 = *&v124[1];
  v108 = 0;
  v128[0] = *v7;
  LOBYTE(v128[1]) = *(v7 + 8);
  memcpy(v137, (v7 + 16), sizeof(v137));
  v36 = *(v7 + 1056);
  v37 = *(v7 + 1064);
  v126 = *(v7 + 1072);
  v127 = *(v7 + 1080);
  memcpy(&v128[2], (v7 + 16), 0x208uLL);
  memcpy(&v128[67], v139, 0x208uLL);
  memcpy(&v125[7], v135, 0x208uLL);
  v38 = objc_allocWithZone(FPLoggerScope);
  sub_1CEFCCBDC(v139, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v139, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v137, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v39 = [v38 init];
  v40 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  memcpy(v129, v128, sizeof(v129));
  v104 = v36;
  v105 = v37;
  v130 = v36;
  v131 = v37;
  v132 = *(v7 + 1072);
  v133 = *(v7 + 1080);
  memcpy(v134, v125, sizeof(v134));
  sub_1CEFCCBDC(v129, v124, &qword_1EC4BFC48, &qword_1CFA05388);
  v41 = v39;
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7288();

  v44 = os_log_type_enabled(v42, v43);
  v101 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v102 = v46;
    v107 = swift_slowAlloc();
    v123[0] = v107;
    *v45 = 138412546;
    v47 = [v41 enter];
    *(v45 + 4) = v47;
    *v46 = v47;
    *(v45 + 12) = 2082;
    memcpy(v142, &v129[536], sizeof(v142));
    sub_1CEFCCBDC(&v129[536], v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v48 = v43;
    v49 = sub_1CF38B634();
    v50 = v8;
    v52 = v51;
    sub_1CEFCCC44(v129, &qword_1EC4BFC48, &qword_1CFA05388);
    sub_1CEFCCC44(&v129[536], &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v53 = sub_1CEFD0DF0(v49, v52, v123);
    v8 = v50;

    *(v45 + 14) = v53;
    _os_log_impl(&dword_1CEFC7000, v42, v48, "%@  ⚙️ reconciling: %{public}s", v45, 0x16u);
    v54 = v102;
    sub_1CEFCCC44(v102, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v54, -1, -1);
    v55 = v107;
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);

    v56 = *(v109 + 8);
    v57 = v23;
    v58 = v50;
  }

  else
  {
    sub_1CEFCCC44(v129, &qword_1EC4BFC48, &qword_1CFA05388);

    v56 = *(v109 + 8);
    v57 = v23;
    v58 = v8;
  }

  v102 = v56;
  v56(v57, v58);
  v59 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  v60 = swift_allocObject();
  v61 = MEMORY[0x1E69E7CC0];
  v60[2] = MEMORY[0x1E69E7CC0];
  v60[3] = v61;
  v108 = v60 + 3;
  v60[4] = v61;
  v60[5] = v61;
  v107 = v60 + 5;
  v60[6] = 0;
  memcpy(v141, &v128[67], sizeof(v141));
  result = swift_weakLoadStrong();
  v62 = *(&v106 + 1);
  if (!result)
  {
    goto LABEL_46;
  }

  v63 = result;
  sub_1CEFCCBDC(v141, v124, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v64 = v103;
  v65 = v106;
  sub_1CF48048C(v103, v106, v62);
  v66 = v62;
  v67 = v115;
  sub_1CF38AEF4(v141, v64, v65, v66, v63, v60, v116, v115);
  if (v59)
  {
    v107 = v8;

    sub_1CF480498(v64);
    sub_1CEFCCC44(v141, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v68 = fpfs_current_or_default_log();
    v69 = v114;
    sub_1CF9E6128();
    v70 = v101;
    v71 = sub_1CF9E6108();
    v72 = sub_1CF9E7288();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = v69;
      v75 = swift_slowAlloc();
      *v73 = 138412290;
      v76 = [v70 leave];
      *(v73 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&dword_1CEFC7000, v71, v72, "%@", v73, 0xCu);
      sub_1CEFCCC44(v75, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v75, -1, -1);
      MEMORY[0x1D386CDC0](v73, -1, -1);

      v102(v74, v107);
    }

    else
    {

      v102(v69, v107);
    }

    sub_1CF480498(v64);

    memcpy(v124, v128, 0x420uLL);
    v124[132] = v104;
    v124[133] = v105;
    v124[134] = v126;
    LOBYTE(v124[135]) = v127;
    memcpy(&v124[135] + 1, v125, 0x20FuLL);
    sub_1CEFCCC44(v124, &qword_1EC4BFC48, &qword_1CFA05388);
    return v28 & 1;
  }

  sub_1CF480498(v64);
  sub_1CEFCCC44(v141, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  swift_beginAccess();
  v77 = v60[4];
  memcpy(v123, v128, 0x420uLL);
  v123[132] = v104;
  v123[133] = v105;
  v123[134] = v126;
  LOBYTE(v123[135]) = v127;
  memcpy(&v123[135] + 1, v125, 0x20FuLL);
  memcpy(v124, v123, sizeof(v124));
  nullsub_1(v124);
  memcpy(v140, v124, sizeof(v140));
  sub_1CEFCCBDC(v123, v117, &qword_1EC4BFC48, &qword_1CFA05388);

  v79 = v116;
  sub_1CF3937A4(v78, v140, v116, v67);
  v80 = v67;
  sub_1CEFCCC44(v123, &qword_1EC4BFC48, &qword_1CFA05388);

  result = swift_weakLoadStrong();
  if (result)
  {
    v81 = v108;
    swift_beginAccess();
    v82 = *v81;

    sub_1CF808014(v83, MEMORY[0x1E69E7CC0], v79, v80);
    v84 = v8;

    v85 = v107;
    swift_beginAccess();
    v86 = *v85;
    v87 = *(v86 + 16);

    if (!v87)
    {
LABEL_40:

      v92 = fpfs_current_or_default_log();
      v93 = v111;
      sub_1CF9E6128();
      v94 = v101;
      v95 = sub_1CF9E6108();
      v96 = sub_1CF9E7288();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v97 = 138412290;
        v99 = [v94 leave];
        *(v97 + 4) = v99;
        *v98 = v99;
        _os_log_impl(&dword_1CEFC7000, v95, v96, "%@", v97, 0xCu);
        sub_1CEFCCC44(v98, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v98, -1, -1);
        MEMORY[0x1D386CDC0](v97, -1, -1);
      }

      v102(v93, v84);
      sub_1CF480498(v103);

      memcpy(v117, v128, sizeof(v117));
      v118 = v104;
      v119 = v105;
      v120 = v126;
      v121 = v127;
      memcpy(v122, v125, sizeof(v122));
      sub_1CEFCCC44(v117, &qword_1EC4BFC48, &qword_1CFA05388);
      v28 = 1;
      return v28 & 1;
    }

    v88 = 4;
    while (v88 - 4 < v87)
    {
      v89 = *(v86 + 8 * v88);

      v90 = objc_autoreleasePoolPush();
      sub_1CF44EFA4(v89, v145, v116, v80);
      objc_autoreleasePoolPop(v90);

      v87 = *(v86 + 16);
      v91 = v88 - 3;
      ++v88;
      if (v91 == v87)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1CF3981E8(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v176 = v1;
  v177 = v4;
  LODWORD(v178) = v5;
  v175 = v3;
  v188 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E5CF8();
  v172 = *(v6 - 8);
  v173 = v6;
  v7 = v172[8];
  MEMORY[0x1EEE9AC00](v6);
  v171 = (&v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CF9E64A8();
  v161 = *(v9 - 8);
  v162 = v9;
  v10 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v170 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v169 = (&v158 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v166 = *(v15 - 8);
  v167 = v15;
  v16 = *(v166 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v163 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v159 = (&v158 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v164 = (&v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v160 = &v158 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v165 = &v158 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v168 = (&v158 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v174 = (&v158 - v30);
  v31 = &qword_1EC4BE710;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v33 = *(*(v32 - 1) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v158 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v158 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v158 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v179 = v177;
  v180 = v178;
  v47 = &v158 - v46;
  sub_1CEFCCBDC(v175, &v158 - v46, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    v42 = v171;
    v31 = v172;
    v32 = v173;
    v45 = v170;
    if (EnumCaseMultiPayload != 3)
    {
      v49 = v176;
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_68;
      }

      v42 = v39;
      v53 = sub_1CEFCCBDC(v47, v39, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v39 + 9))
      {
        sub_1CEFD0994(v39[2], *(v39 + 24), *(v39 + 25));
        v54 = *v39;
        v55 = *(v39 + 9);
        v56 = *(v39 + 8);
LABEL_67:
        sub_1CEFD0994(v54, v56, v55);
        goto LABEL_68;
      }

      v79 = *v39;
      v80 = *(v39 + 8);
      v183[0] = *v39;
      LOBYTE(v183[1]) = v80;
      if (v80 != 2 || v79 > 1)
      {
        v173 = v47;
        v32 = &v158;
        MEMORY[0x1EEE9AC00](v53);
        v174 = &v158 - 4;
        *(&v158 - 2) = v183;
        v181[0] = sub_1CF23A47C;
        v181[1] = 0;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v82 = Strong;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
          v83 = swift_dynamicCastClass();
          if (!v83)
          {
            goto LABEL_62;
          }

          v171 = v82;
          v172 = &v158;
          v168 = v83;
          v84 = *(v83 + 64);
          *v45 = v84;
          v85 = v161;
          v86 = v162;
          (*(v161 + 104))(v45, *MEMORY[0x1E69E8020], v162);
          v87 = v84;
          v31 = sub_1CF9E64D8();
          (*(v85 + 8))(v45, v86);
          if ((v31 & 1) == 0)
          {
            goto LABEL_118;
          }

          v45 = v168[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
          v88 = *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB18);
          v32 = v172;
          if (v88)
          {
            v89 = v88 + *(*v88 + 136);
            swift_beginAccess();
            v31 = *(v89 + 48);
            v90 = *(v89 + 56);
            v45 = *(v89 + 57);

            if ((v45 & 1) == 0)
            {
              if (v90)
              {
                v31 = qword_1CFA05B68[v31];
              }

              Strong = swift_allocObject();
              *(Strong + 16) = v31;
              v181[0] = sub_1CF24CF24;
              v181[1] = Strong;
            }
          }

          else
          {
LABEL_62:
          }
        }

        MEMORY[0x1EEE9AC00](Strong);
        *(&v158 - 4) = 0x7FFFFFFFFFFFFFFFLL;
        *(&v158 - 3) = sub_1CF485868;
        *(&v158 - 2) = v174;
        *(&v158 - 1) = v181;
        sub_1CF7D5920(sub_1CF485864, (&v158 - 6), v177);
        if (v2)
        {

          sub_1CEFD0994(v39[2], *(v39 + 24), *(v39 + 25));
          v100 = &qword_1EC4BE710;
          v101 = &qword_1CF9FE5A8;
          v102 = v173;
          goto LABEL_58;
        }

        v47 = v173;
        v42 = v39;
      }

      v54 = v42[2];
      v55 = *(v42 + 25);
      v56 = *(v42 + 24);
      goto LABEL_67;
    }

    sub_1CEFCCBDC(v47, v36, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v63 = *v36;
    v64 = v36[8];
    if (v36[9])
    {
      sub_1CEFD0994(v63, v64, 1);
      v49 = v176;
      goto LABEL_68;
    }

    v184[0] = *v36;
    LOBYTE(v184[1]) = v64;
    if (v64 == 2 && v63 <= 1)
    {
      v49 = v176;
      goto LABEL_68;
    }

    v45 = &v158;
    MEMORY[0x1EEE9AC00](v63);
    v39 = &v158 - 4;
    *(&v158 - 2) = v184;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v95 = v94;
    v96 = *(v31 + 8);
    v31 += 8;
    v97 = v96(v42, v32);
    v98 = v95 * 1000000000.0;
    if (COERCE__INT64(fabs(v95 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v49 = v176;
      if (v98 > -9.22337204e18)
      {
        if (v98 < 9.22337204e18)
        {
          v42 = &v158;
          v181[0] = sub_1CF23A47C;
          v181[1] = 0;
          MEMORY[0x1EEE9AC00](v97);
          *(&v158 - 4) = v99;
          *(&v158 - 3) = sub_1CF48042C;
          *(&v158 - 2) = v39;
          *(&v158 - 1) = v181;
          sub_1CF7D5920(sub_1CF24CF18, (&v158 - 6), v177);
          if (v2)
          {

LABEL_57:
            v100 = &qword_1EC4BE710;
            v101 = &qword_1CF9FE5A8;
            v102 = v47;
            goto LABEL_58;
          }

LABEL_68:
          v76 = &qword_1EC4BE710;
          v77 = &qword_1CF9FE5A8;
          i = v47;
          goto LABEL_69;
        }

        goto LABEL_117;
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v173 = v47;
    sub_1CEFCCBDC(v47, v42, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
    v58 = *(v57 + 48);
    v172 = *(v42 + *(v57 + 64));
    sub_1CEFE55D0(v42, v174, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v59 = v168;
    sub_1CEFE55D0(v42 + v58, v168, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v60 = v165;
    sub_1CEFCCBDC(v59, v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v39 = v167;
    v32 = *(v166 + 48);
    v61 = (v32)(v60, 1, v167);
    v49 = v176;
    if (v61 == 1)
    {
      sub_1CEFCCC44(v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v62 = v60;
      v31 = v173;
    }

    else
    {
      v171 = *v60;
      LODWORD(v170) = *(v60 + 8);
      sub_1CEFCCC44(v60, &unk_1EC4BE360, &qword_1CF9FE650);
      v74 = v164;
      sub_1CEFCCBDC(v59, v164, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if ((v32)(v74, 1, v39) == 1)
      {
        sub_1CEFCCC44(v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v31 = v173;
        v62 = v174;
        v174 = v74;
      }

      else
      {
        v91 = v163;
        sub_1CEFE55D0(v74, v163, &unk_1EC4BE360, &qword_1CF9FE650);
        v92 = (v91 + *(v39 + 12));
        if (*v92 || (v32)(v174, 1, v39) == 1 || (v172 & 8) == 0 || (v172 & 0x10) != 0)
        {
          sub_1CEFCCC44(v91, &unk_1EC4BE360, &qword_1CF9FE650);
          v31 = v173;
        }

        else
        {
          v93 = v92[*(type metadata accessor for ItemMetadata() + 80)];
          v184[0] = v171;
          LOBYTE(v184[1]) = v170;
          if (v170 == 2 && v171 <= 1)
          {
            v31 = v173;
          }

          else
          {
            v152 = MEMORY[0x1EEE9AC00](v93);
            *(&v158 - 2) = v184;
            v153 = sub_1CF47F504(v152);
            v181[0] = sub_1CF23A47C;
            v181[1] = 0;
            *(&v158 - 4) = MEMORY[0x1EEE9AC00](v153);
            *(&v158 - 3) = sub_1CF485868;
            *(&v158 - 2) = (&v158 - 4);
            *(&v158 - 1) = v181;
            sub_1CF7D5920(sub_1CF485864, (&v158 - 6), v177);
            v31 = v173;
            if (v2)
            {

              sub_1CEFCCC44(v91, &unk_1EC4BE360, &qword_1CF9FE650);
              sub_1CEFCCC44(v168, &qword_1EC4C1B40, &unk_1CF9FCB70);
              sub_1CEFCCC44(v174, &qword_1EC4C1B40, &unk_1CF9FCB70);
              v100 = &qword_1EC4BE710;
              v101 = &qword_1CF9FE5A8;
              v102 = v31;
              goto LABEL_58;
            }
          }

          sub_1CEFCCC44(v91, &unk_1EC4BE360, &qword_1CF9FE650);
        }

        v62 = v168;
      }
    }

    v42 = &qword_1EC4C1B40;
    v45 = &unk_1CF9FCB70;
    sub_1CEFCCC44(v62, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFCCC44(v174, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v76 = &qword_1EC4BE710;
    v77 = &qword_1CF9FE5A8;
    i = v31;
    goto LABEL_69;
  }

  v49 = v176;
  if (EnumCaseMultiPayload != 14)
  {
    if (EnumCaseMultiPayload == 48)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v158 - 2) = v49;
      *(&v158 - 1) = &v179;
      v50 = v177;
      v51 = v178;
      sub_1CF47B3BC(sub_1CF480444, (&v158 - 4), v177, v178);
      if (!v2)
      {
        *(v49 + 96) = 0;
        v52 = sub_1CF7D55FC(sub_1CF233FE8, 0, v50, v51);
        if ([v52 next])
        {
          do
          {
            v68 = objc_autoreleasePoolPush();
            if ((*(v49 + 96) & 1) == 0)
            {
              v178 = v68;
              v69 = v52;
              v70 = [v69 stringAtIndex_];
              if (!v70)
              {
                _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v70 = sub_1CF9E6888();
              }

              v71 = [v69 longAtIndex_];
              v72 = [v69 isNullAtIndex_];
              v73 = v47;
              if (v72)
              {
                v65 = 0;
              }

              else
              {
                v65 = [v69 integerAtIndex_];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
              v66 = swift_allocObject();
              *(v66 + 16) = v70;
              *(v66 + 24) = v71;
              *(v66 + 32) = v65;
              *(v66 + 40) = v72;
              v67 = v70;
              v49 = v176;
              sub_1CF38C948(v66);

              v68 = v178;
              v47 = v73;
            }

            objc_autoreleasePoolPop(v68);
          }

          while (([v52 next] & 1) != 0);
        }
      }

      goto LABEL_57;
    }

    goto LABEL_68;
  }

  sub_1CEFCCBDC(v47, v45, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (*(v45 + 9))
  {
    v54 = *v45;
    v56 = *(v45 + 8);
    v55 = 1;
    goto LABEL_67;
  }

  if (*(v45 + 10) >= 2u)
  {
    goto LABEL_68;
  }

  v75 = *(v45 + 8);
  v185 = *v45;
  v186 = v75;
  sub_1CEFCCC44(v47, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v42 = v49;
  sub_1CF7EB934(v185, v186, v177, v178, v184);
  if (v2)
  {
    goto LABEL_89;
  }

  memcpy(v183, v184, sizeof(v183));
  if (sub_1CF08B99C(v183) == 1)
  {
    memcpy(v181, v184, 0x208uLL);
    v76 = &unk_1EC4BFC20;
    v77 = &unk_1CFA0A290;
    i = v181;
    goto LABEL_69;
  }

  memcpy(v182, v184, sizeof(v182));
  if ((v182[2] & 0x10) == 0)
  {
    goto LABEL_98;
  }

  LODWORD(v39) = LOBYTE(v182[1]);
  v106 = v182[31];
  v45 = v182[59];
  v31 = v182[60];
  v150 = swift_weakLoadStrong();
  if (!v150)
  {
LABEL_123:
    __break(1u);
    return;
  }

  v151 = *(v150 + 32);

  v32 = v160;
  (*(*v151 + 240))(&v185, 1, &v179, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

  v42 = v167;
  if ((*(v166 + 48))(v32, 1, v167) != 1)
  {
    goto LABEL_105;
  }

  sub_1CEFCCC44(v182, &unk_1EC4BFC20, &unk_1CFA0A290);
  v76 = &qword_1EC4C1B40;
  v77 = &unk_1CF9FCB70;
  for (i = v32; ; i = v182)
  {
LABEL_69:
    sub_1CEFCCC44(i, v76, v77);
    v103 = swift_weakLoadStrong();
    if (!v103)
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      swift_once();
LABEL_112:
      v155 = qword_1EDEABDE8;
      v156 = v181[0];
      v32 = sub_1CF1F8144(1, 2, 1, v32);
      v32[2] = 2;
      v32[19] = v42;
      *(v32 + 160) = v49;
      *(v32 + 161) = v156;
      v32[21] = v155;
      v32[22] = v45;
      v32[23] = v31;
      *(v32 + 133) = 2560;
LABEL_113:
      sub_1CF48043C(v181);
      memcpy(v187, v181, sizeof(v187));
      sub_1CF3937A4(v32);
      v157 = v159;

      sub_1CEFCCC44(v157, &unk_1EC4BE360, &qword_1CF9FE650);
      v100 = &unk_1EC4BFC20;
      v101 = &unk_1CFA0A290;
      v102 = v182;
LABEL_58:
      sub_1CEFCCC44(v102, v100, v101);
      goto LABEL_89;
    }

    v45 = (*(*v103 + 152))(v103);

    v104 = sub_1CF033B90(0, v45);
    v42 = v104;
    v105 = v104[2];
    if (!v105)
    {
      break;
    }

    v106 = 0;
    v174 = v104 + 4;
    v31 = &selRef_initWithTarget_;
    while (v106 < v105)
    {
      v32 = &v158;
      v107 = &v174[6 * v106];
      v108 = v107[3];
      v109 = v107[4];
      v110 = v107[1];
      v111 = v107[2];
      v39 = *v107;
      v112 = *(v107 + 40);
      v181[0] = *v107;
      v181[1] = v110;
      v181[2] = v111;
      v181[3] = v108;
      v181[4] = v109;
      LOBYTE(v181[5]) = v112;
      v113 = MEMORY[0x1EEE9AC00](v110);
      *(&v158 - 2) = v49;
      *(&v158 - 1) = v181;
      sub_1CF480278(v113, v114, v115, v116, v117, sub_1CEFD0988);
      v118 = sub_1CF7D55FC(sub_1CF480268, (&v158 - 4), v177, v178);
      if (v2)
      {

        v121 = v181[1];
        v122 = v181[2];
        v123 = v181[3];
        v124 = v181[4];
        v125 = v181[5];
        v126 = sub_1CEFD0994;
        goto LABEL_88;
      }

      v119 = v118;
      LOBYTE(v183[0]) = 0;
      v45 = 0;
      if ([v118 next])
      {
        do
        {
          v120 = objc_autoreleasePoolPush();
          sub_1CF395F8C(v119);
          objc_autoreleasePoolPop(v120);
        }

        while (([v119 next] & 1) != 0);
        v45 = LOBYTE(v183[0]);
      }

      ++v106;

      sub_1CF480358(v181[1], v181[2], v181[3], v181[4], v181[5], sub_1CEFD0994);
      v105 = v42[2];
      v49 = v176;
      if (v106 == v105)
      {
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_105:
    v154 = v32;
    v32 = v159;
    sub_1CEFE55D0(v154, v159, &unk_1EC4BE360, &qword_1CF9FE650);
    v42 = (v32 + *(v42 + 12));
    if ((*(v42 + *(type metadata accessor for ItemMetadata() + 64)) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
      v32 = swift_allocObject();
      *(v32 + 1) = xmmword_1CF9FA450;
      v42 = v185;
      LOBYTE(v49) = v186;
      v32[4] = v185;
      *(v32 + 20) = v49;
      *(v32 + 48) = 0;
      *(v32 + 73) = 2565;
      if (v39 == 255 || !v106)
      {
        LOBYTE(v181[0]) = 0;
        if (qword_1EDEABDE0 == -1)
        {
          goto LABEL_112;
        }

        goto LABEL_121;
      }

      goto LABEL_113;
    }

    sub_1CEFCCC44(v32, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_98:
    v76 = &unk_1EC4BFC20;
    v77 = &unk_1CFA0A290;
  }

  v45 = 0;
LABEL_79:
  v127 = v45;

  v31 = v169;
  v42 = v175;
  sub_1CF030B88(v169);
  v128 = swift_weakLoadStrong();
  if (!v128)
  {
    goto LABEL_120;
  }

  v129 = (*(*v128 + 152))(v128);

  v130 = sub_1CF036ED4(1, v129);
  sub_1CEFCCC44(v31, &unk_1EC4C4E20, &unk_1CFA05350);
  v131 = v130[2];
  if (!v131)
  {
    v133 = v127;
LABEL_91:

    if ((v133 & 1) == 0)
    {
      goto LABEL_89;
    }

    v149 = swift_weakLoadStrong();
    if (v149)
    {
      (*(*v149 + 304))(v149);

      goto LABEL_89;
    }

    __break(1u);
    goto LABEL_123;
  }

  v132 = 0;
  v173 = v130;
  v174 = v130 + 4;
  v133 = v127;
  while (1)
  {
    if (v132 >= v131)
    {
      __break(1u);
      goto LABEL_115;
    }

    v134 = &v174[6 * v132];
    v135 = v134[3];
    v136 = v134[4];
    v137 = v134[1];
    v138 = v134[2];
    v139 = *(v134 + 40);
    v181[0] = *v134;
    v181[1] = v137;
    v181[2] = v138;
    v181[3] = v135;
    v181[4] = v136;
    LOBYTE(v181[5]) = v139;
    v140 = MEMORY[0x1EEE9AC00](v137);
    *(&v158 - 2) = v49;
    *(&v158 - 1) = v181;
    sub_1CF480278(v140, v141, v142, v143, v144, sub_1CF48034C);
    v145 = sub_1CF7D55FC(sub_1CF480270, (&v158 - 4), v177, v178);
    if (v2)
    {
      break;
    }

    v146 = v145;
    LOBYTE(v183[0]) = 0;
    if ([v145 next])
    {
      do
      {
        v147 = objc_autoreleasePoolPush();
        sub_1CF395F8C(v146);
        objc_autoreleasePoolPop(v147);
      }

      while (([v146 next] & 1) != 0);
      v133 |= LOBYTE(v183[0]);
    }

    ++v132;

    sub_1CF480358(v181[1], v181[2], v181[3], v181[4], v181[5], sub_1CF1E53F8);
    v131 = *(v173 + 2);
    v49 = v176;
    if (v132 == v131)
    {
      goto LABEL_91;
    }
  }

  v121 = v181[1];
  v122 = v181[2];
  v123 = v181[3];
  v124 = v181[4];
  v125 = v181[5];
  v126 = sub_1CF1E53F8;
LABEL_88:
  sub_1CF480358(v121, v122, v123, v124, v125, v126);
LABEL_89:
  v148 = *MEMORY[0x1E69E9840];
}