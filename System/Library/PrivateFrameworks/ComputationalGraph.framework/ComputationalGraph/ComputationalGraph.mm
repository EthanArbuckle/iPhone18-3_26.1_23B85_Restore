uint64_t sub_1C6DEAC8C()
{
  result = sub_1C6EE41A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FileStore.init(containersDirectory:resourcesDirectory:modelsDirectory:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v88 = *MEMORY[0x1E69E9840];
  v81 = sub_1C6EE4090();
  v85 = *(v81 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6EE42F0();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1C6EE41A0();
  v84 = *(v77 - 8);
  v13 = v84[8];
  v14 = MEMORY[0x1EEE9AC00](v77);
  v82 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v67 - v16;
  *(v3 + qword_1EDEF6910) = 0;
  if (qword_1EDEF85F0 != -1)
  {
    swift_once();
  }

  *(v3 + qword_1EDEF6928) = qword_1EDEFCCE0;
  v17 = objc_opt_self();

  v18 = [v17 defaultManager];
  v19 = sub_1C6EE4100();
  v86 = 0;
  v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v86];

  v21 = v86;
  if (!v20)
  {
    goto LABEL_7;
  }

  v22 = v86;
  v23 = [v17 defaultManager];
  v24 = sub_1C6EE4100();
  v86 = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v86];

  v21 = v86;
  if (v25)
  {
    v26 = v86;
    v27 = [v17 defaultManager];
    v28 = sub_1C6EE4100();
    v86 = 0;
    v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v86];

    if (v29)
    {
      v30 = v86;
      v31 = v83;
      sub_1C6EE4120();
      v32 = v84;
      v33 = v84[4];
      v34 = v77;
      v33(v4 + qword_1EDEF6918, v31, v77);
      sub_1C6EE4120();
      v33(v4 + qword_1EDEF6920, v31, v34);
      sub_1C6EE4120();
      v35 = v32[1];
      v35(a3, v34);
      v35(a2, v34);
      v35(a1, v34);
      v36 = v4;
      v33(v4 + qword_1EDEF6938, v31, v34);
      goto LABEL_11;
    }

    v66 = v86;
    v38 = sub_1C6EE4050();
  }

  else
  {
LABEL_7:
    v37 = v21;
    v38 = sub_1C6EE4050();
  }

  swift_willThrow();
  v72 = a3;
  v73 = a2;
  v74 = a1;
  v75 = v4;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C6EE6590;
  v86 = 0;
  v87 = 0xE000000000000000;
  swift_getErrorValue();
  sub_1C6EE5480();
  v40 = v86;
  v41 = v87;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1C6DF10E0();
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  sub_1C6EE4730();

  v42 = v82;
  sub_1C6EE40F0();
  v43 = v78;
  sub_1C6EE42E0();
  v44 = sub_1C6EE42D0();
  v46 = v45;
  (*(v79 + 8))(v43, v80);
  v86 = v44;
  v87 = v46;
  v47 = *MEMORY[0x1E6968F58];
  v48 = v85;
  v49 = v85 + 104;
  v50 = *(v85 + 104);
  v51 = v76;
  v71 = v38;
  v52 = v81;
  v50(v76, v47, v81);
  v78 = v50;
  v79 = v49;
  v69 = sub_1C6DF0C68();
  sub_1C6EE4180();
  v53 = *(v48 + 8);
  v85 = v48 + 8;
  v53(v51, v52);
  v80 = v53;

  v54 = v84;
  v70 = v84[1];
  v55 = v42;
  v56 = v77;
  v70(v55, v77);
  v86 = 0x656E6961746E6F63;
  v87 = 0xEA00000000007372;
  v68 = v47;
  v50(v51, v47, v52);
  sub_1C6EE4190();
  v53(v51, v52);
  v57 = v54[4];
  v84 = v54 + 4;
  v67 = v57;
  v58 = v75;
  v59 = v82;
  v57(v75 + qword_1EDEF6918, v82, v56);
  v86 = 0x656372756F736572;
  v87 = 0xE900000000000073;
  v60 = v81;
  (v78)(v51, v47, v81);
  v61 = v83;
  sub_1C6EE4190();
  v80(v51, v60);
  v62 = v67;
  v67(v58 + qword_1EDEF6920, v59, v56);
  v86 = 0x736C65646F6DLL;
  v87 = 0xE600000000000000;
  (v78)(v51, v68, v60);
  sub_1C6EE4190();

  v63 = v70;
  v70(v72, v56);
  v63(v73, v56);
  v63(v74, v56);
  v80(v51, v60);
  v63(v61, v56);
  v36 = v58;
  v62(v58 + qword_1EDEF6938, v82, v56);
LABEL_11:
  v64 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1C6DEB66C()
{
  result = sub_1C6DEB68C();
  qword_1EDEFCCE0 = result;
  return result;
}

uint64_t sub_1C6DEB68C()
{
  type metadata accessor for PackageInstaller();
  v0 = swift_allocObject();
  v1 = 0;
  v73 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v2 = (v0 + 16);
  while (1)
  {
    if (!byte_1F468A2C8[v1 + 32])
    {
      v17 = type metadata accessor for DirectoryPackageInstaller();
      v18 = swift_allocObject();
      swift_beginAccess();
      v19 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;
      v79 = &off_1F468BCE8;
      v80 = v21;
      v78 = v17;
      *&v77 = v18;

      v9 = sub_1C6DEBD64(0);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v13 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v13)
      {
        goto LABEL_40;
      }

      v26 = v22;
      if (v21[3] < v25)
      {
        sub_1C6DEBFEC(v25, isUniquelyReferenced_nonNull_native);
        v9 = sub_1C6DEBD64(0);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_45;
        }

LABEL_24:
        v39 = v80;
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_2;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v69 = v9;
      sub_1C6E09F2C();
      v9 = v69;
      v39 = v80;
      if ((v26 & 1) == 0)
      {
LABEL_25:
        v50 = v78;
        v51 = v9;
        v52 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
        v53 = *(*(v50 - 8) + 64);
        MEMORY[0x1EEE9AC00](v52);
        v55 = (&v72 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v56 + 16))(v55);
        v57 = *v55;
        v75 = v17;
        v76 = &off_1F468BCE8;
        *&v74 = v57;
        v39[(v51 >> 6) + 8] |= 1 << v51;
        *(v39[6] + v51) = 0;
        sub_1C6DEC3A8(&v74, v39[7] + 40 * v51);
        v58 = v39[2];
        v13 = __OFADD__(v58, 1);
        v49 = v58 + 1;
        if (v13)
        {
          goto LABEL_44;
        }

LABEL_31:
        v39[2] = v49;
        __swift_destroy_boxed_opaque_existential_1(&v77);
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if (byte_1F468A2C8[v1 + 32] == 1)
    {
      break;
    }

    v28 = type metadata accessor for AppleArchivePackageInstaller();
    v29 = swift_allocObject();
    swift_beginAccess();
    v30 = *v2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v2;
    v79 = &off_1F468BCF8;
    v80 = v32;
    v78 = v28;
    *&v77 = v29;

    v9 = sub_1C6DEBD64(2u);
    v34 = v32[2];
    v35 = (v33 & 1) == 0;
    v13 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v13)
    {
      goto LABEL_41;
    }

    v37 = v33;
    if (v32[3] < v36)
    {
      sub_1C6DEBFEC(v36, v31);
      v9 = sub_1C6DEBD64(2u);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_45;
      }

LABEL_29:
      v39 = v80;
      if ((v37 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    if (v31)
    {
      goto LABEL_29;
    }

    v70 = v9;
    sub_1C6E09F2C();
    v9 = v70;
    v39 = v80;
    if ((v37 & 1) == 0)
    {
LABEL_30:
      v59 = v78;
      v60 = v9;
      v61 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
      v62 = *(*(v59 - 8) + 64);
      MEMORY[0x1EEE9AC00](v61);
      v64 = (&v72 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v65 + 16))(v64);
      v66 = *v64;
      v75 = v28;
      v76 = &off_1F468BCF8;
      *&v74 = v66;
      v39[(v60 >> 6) + 8] |= 1 << v60;
      *(v39[6] + v60) = 2;
      sub_1C6DEC3A8(&v74, v39[7] + 40 * v60);
      v67 = v39[2];
      v13 = __OFADD__(v67, 1);
      v49 = v67 + 1;
      if (v13)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

LABEL_2:
    v3 = (v39[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C6DEC3A8(&v77, v3);
LABEL_3:
    *v2 = v39;
    swift_endAccess();
    ++v1;

    if (v1 == 3)
    {
      return v73;
    }
  }

  v4 = type metadata accessor for ZipArchivePackageInstaller();
  v5 = swift_allocObject();
  swift_beginAccess();
  v6 = *v2;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v79 = &off_1F468BD08;
  v80 = v8;
  v78 = v4;
  *&v77 = v5;

  v9 = sub_1C6DEBD64(1u);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (!v13)
  {
    v15 = v10;
    if (v8[3] < v14)
    {
      sub_1C6DEBFEC(v14, v7);
      v9 = sub_1C6DEBD64(1u);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_45;
      }

LABEL_19:
      v39 = v80;
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_2;
    }

    if (v7)
    {
      goto LABEL_19;
    }

    v68 = v9;
    sub_1C6E09F2C();
    v9 = v68;
    v39 = v80;
    if ((v15 & 1) == 0)
    {
LABEL_20:
      v40 = v78;
      v41 = v9;
      v42 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
      v43 = *(*(v40 - 8) + 64);
      MEMORY[0x1EEE9AC00](v42);
      v45 = (&v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v46 + 16))(v45);
      v47 = *v45;
      v75 = v4;
      v76 = &off_1F468BD08;
      *&v74 = v47;
      v39[(v41 >> 6) + 8] |= 1 << v41;
      *(v39[6] + v41) = 1;
      sub_1C6DEC3A8(&v74, v39[7] + 40 * v41);
      v48 = v39[2];
      v13 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v13)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }

    goto LABEL_2;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

unint64_t sub_1C6DEBD64(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1C6EE5580();
  sub_1C6EE4B30();

  v4 = sub_1C6EE55A0();

  return sub_1C6DEBE3C(a1, v4);
}

unint64_t sub_1C6DEBE3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x696863724170697ALL;
          v8 = 0xEA00000000006576;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x637241656C707061;
          v8 = 0xEC00000065766968;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000079;
            if (v7 != 0x726F746365726964)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x726F746365726964;
        v8 = 0xE900000000000079;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x696863724170697ALL;
      }

      else
      {
        v10 = 0x637241656C707061;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006576;
      }

      else
      {
        v11 = 0xEC00000065766968;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1C6EE54B0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C6DEBFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77D0, &qword_1C6EE6988);
  result = sub_1C6EE5330();
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
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_1C6DEC3A8(v22, v33);
      }

      else
      {
        sub_1C6E0D038(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1C6EE5580();
      sub_1C6EE4B30();

      result = sub_1C6EE55A0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_1C6DEC3A8(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1C6DEC304()
{
  result = qword_1EDEF85F8;
  if (!qword_1EDEF85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF85F8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1C6DEC3A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C6DEC478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C6DEC4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1C6DEC520(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1C6DEC53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6DEC598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

unint64_t sub_1C6DEC5E8()
{
  result = qword_1EDEF6768;
  if (!qword_1EDEF6768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6768);
  }

  return result;
}

uint64_t sub_1C6DEC634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6DEC67C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6DEC6D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6DEC73C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C6DEC79C(uint64_t a1, uint64_t a2, uint64_t a3)
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

_OWORD *sub_1C6DEC868(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t FileStore.import(configuration:resources:models:method:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v111 = a3;
  v122 = a2;
  v132 = *MEMORY[0x1E69E9840];
  v121 = *v5;
  v8 = v121;
  v129 = sub_1C6EE41A0();
  v9 = *(v129 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v129);
  v126 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v111 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v111 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v111 - v17;
  v18 = *(v8 + 80);
  v19 = sub_1C6EE4FE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v111 - v23;
  v25 = *(v18 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v111 - v27;
  v123 = *a4;
  (*(v20 + 16))(v24, a1, v19);
  v29 = (*(v25 + 48))(v24, 1, v18);
  v127 = v9;
  if (v29 == 1)
  {
    result = (*(v20 + 8))(v24, v19);
    v112 = 0;
    v31 = v129;
    v32 = v115;
    v33 = v124;
    v34 = v122;
  }

  else
  {
    (*(v25 + 32))(v28, v24, v18);
    v112 = sub_1C6ECFF6C(v28);
    v31 = v129;
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C6EE6590;
    v36 = sub_1C6EBF184(v18, *(v121 + 96));
    v38 = v37;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1C6DF10E0();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v34 = v122;
    result = (*(v25 + 8))(v28, v18);
    v32 = v115;
    v33 = v124;
  }

  v39 = *(v34 + 16);
  v128 = v5;
  if (v39)
  {
    v40 = objc_opt_self();
    v121 = qword_1EDEF6920;
    v119 = *(v127 + 16);
    v41 = v34 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    *&v118 = *(v127 + 72);
    v120 = v127 + 16;
    v117 = (v127 + 8);
    v116 = xmmword_1C6EE6590;
    v113 = xmmword_1C6EE6B40;
    v122 = v40;
    (v119)(v33, v41, v31);
    while (1)
    {
      sub_1C6EE40E0();
      v49 = v5;
      sub_1C6EE4110();

      v50 = [v40 defaultManager];
      sub_1C6EE4170();
      v51 = v40;
      v52 = sub_1C6EE4A60();

      v53 = [v50 fileExistsAtPath_];

      if (v53)
      {
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v42 = swift_allocObject();
        *(v42 + 16) = v116;
        v43 = sub_1C6EE40E0();
        v44 = v32;
        v46 = v45;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1C6DF10E0();
        *(v42 + 32) = v43;
        *(v42 + 40) = v46;
        sub_1C6EE4EE0();
        sub_1C6EE4730();

        v5 = v49;
        v31 = v129;
      }

      else
      {
        v54 = [v51 defaultManager];
        v55 = sub_1C6EE4100();
        v56 = sub_1C6EE4100();
        if (v123)
        {
          v130 = 0;
          v57 = [v54 moveItemAtURL:v55 toURL:v56 error:&v130];

          v58 = v130;
          v5 = v49;
          v31 = v129;
          if (v57)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v130 = 0;
          v64 = [v54 copyItemAtURL:v55 toURL:v56 error:&v130];

          v58 = v130;
          v5 = v49;
          v31 = v129;
          if (v64)
          {
LABEL_16:
            v59 = v58;
            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v60 = swift_allocObject();
            *(v60 + 16) = v116;
            v44 = v115;
            v61 = sub_1C6EE40E0();
            v63 = v62;
            *(v60 + 56) = MEMORY[0x1E69E6158];
            *(v60 + 64) = sub_1C6DF10E0();
            *(v60 + 32) = v61;
            *(v60 + 40) = v63;
            sub_1C6EE4EE0();
            sub_1C6EE4730();

            goto LABEL_11;
          }
        }

        v65 = v58;
        v66 = sub_1C6EE4050();

        swift_willThrow();
        if (qword_1EDEF8F80 != -1)
        {
          swift_once();
        }

        v114 = qword_1EDEF8F88;
        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v67 = swift_allocObject();
        *(v67 + 16) = v113;
        v44 = v115;
        v68 = sub_1C6EE40E0();
        v70 = v69;
        v71 = MEMORY[0x1E69E6158];
        *(v67 + 56) = MEMORY[0x1E69E6158];
        v72 = sub_1C6DF10E0();
        *(v67 + 64) = v72;
        *(v67 + 32) = v68;
        *(v67 + 40) = v70;
        v130 = 0;
        v131 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v73 = v130;
        v74 = v131;
        *(v67 + 96) = v71;
        *(v67 + 104) = v72;
        *(v67 + 72) = v73;
        *(v67 + 80) = v74;
        sub_1C6EE4730();

        v5 = v128;
        v31 = v129;
      }

LABEL_11:
      v47 = *v117;
      (*v117)(v44, v31);
      v48 = v124;
      result = v47(v124, v31);
      v41 += v118;
      --v39;
      v32 = v44;
      v40 = v122;
      if (!v39)
      {
        break;
      }

      (v119)(v48, v41, v31);
    }
  }

  v75 = v111;
  v76 = *(v111 + 16);
  v77 = v127;
  v78 = v125;
  if (v76)
  {
    v79 = objc_opt_self();
    v122 = qword_1EDEF6938;
    v81 = *(v77 + 16);
    v80 = v77 + 16;
    v121 = v81;
    v82 = v75 + ((*(v80 + 64) + 32) & ~*(v80 + 64));
    v120 = *(v80 + 56);
    v127 = v80;
    v119 = (v80 - 8);
    v118 = xmmword_1C6EE6590;
    v116 = xmmword_1C6EE6B40;
    v124 = v79;
    v81(v78, v82, v31);
    while (1)
    {
      sub_1C6EE40E0();
      sub_1C6EE4110();

      v90 = [v79 defaultManager];
      sub_1C6EE4170();
      v91 = sub_1C6EE4A60();

      v92 = [v90 fileExistsAtPath_];

      if (v92)
      {
        break;
      }

      v93 = [v79 defaultManager];
      v94 = sub_1C6EE4100();
      v95 = sub_1C6EE4100();
      if (v123)
      {
        v130 = 0;
        v96 = [v93 moveItemAtURL:v94 toURL:v95 error:&v130];

        v97 = v130;
        if (v96)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v130 = 0;
        v99 = [v93 copyItemAtURL:v94 toURL:v95 error:&v130];

        v97 = v130;
        if (v99)
        {
LABEL_32:
          v98 = v97;
          if (qword_1EDEF8F80 == -1)
          {
            goto LABEL_26;
          }

LABEL_38:
          swift_once();
LABEL_26:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v83 = swift_allocObject();
          *(v83 + 16) = v118;
          v84 = v126;
          v85 = sub_1C6EE40E0();
          v87 = v86;
          *(v83 + 56) = MEMORY[0x1E69E6158];
          *(v83 + 64) = sub_1C6DF10E0();
          *(v83 + 32) = v85;
          *(v83 + 40) = v87;
          sub_1C6EE4EE0();
          sub_1C6EE4730();

          goto LABEL_27;
        }
      }

      v100 = v97;
      v101 = sub_1C6EE4050();

      swift_willThrow();
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v117 = qword_1EDEF8F88;
      sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v102 = swift_allocObject();
      *(v102 + 16) = v116;
      v84 = v126;
      v103 = sub_1C6EE40E0();
      v105 = v104;
      v106 = MEMORY[0x1E69E6158];
      *(v102 + 56) = MEMORY[0x1E69E6158];
      v107 = sub_1C6DF10E0();
      *(v102 + 64) = v107;
      *(v102 + 32) = v103;
      *(v102 + 40) = v105;
      v130 = 0;
      v131 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v108 = v130;
      v109 = v131;
      *(v102 + 96) = v106;
      *(v102 + 104) = v107;
      *(v102 + 72) = v108;
      *(v102 + 80) = v109;
      sub_1C6EE4730();

      v31 = v129;
LABEL_27:
      v88 = *v119;
      (*v119)(v84, v31);
      v89 = v125;
      result = (v88)(v125, v31);
      v82 += v120;
      --v76;
      v79 = v124;
      if (!v76)
      {
        goto LABEL_40;
      }

      (v121)(v89, v82, v31);
    }

    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

LABEL_40:
  if (v112)
  {
    sub_1C6ED3280();
  }

  v110 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1C6DED904(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6DED958()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1C6EE5230();
  return sub_1C6EE5220();
}

void sub_1C6DED9D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph20RetentionTokenVendorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6DEDA5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1C6DEDAF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

unint64_t sub_1C6DEDB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77E0, &qword_1C6EE6998);
    v3 = sub_1C6EE5340();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6E02334(v5, v6, sub_1C6DEC79C);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C6DEDC90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6DEDCF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1C6DEDD3C(char a1)
{
  v3 = *v1;
  v4 = sub_1C6DEE4A0(0, 1);
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  type metadata accessor for FileStore.FileContainer();
  if (sub_1C6EE4D40())
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_1C6EE4D10();
      sub_1C6EE4CD0();
      if (v9)
      {
        v10 = *(v4 + 8 * v8 + 32);

        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = sub_1C6EE51D0();
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_10:
          __break(1u);
          goto LABEL_11;
        }
      }

      if (sub_1C6DF280C(a1))
      {
        break;
      }

      ++v8;
      if (v11 == sub_1C6EE4D40())
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    return 0;
  }

  return v10;
}

char *sub_1C6DEDFB8()
{
  v54[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v40 - v4;
  v5 = sub_1C6EE41A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1C6EE4100();
  v54[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:4 error:v54];

  v17 = v54[0];
  if (!v16)
  {
    v37 = v54[0];
    sub_1C6EE4050();

    swift_willThrow();
LABEL_17:
    v38 = *MEMORY[0x1E69E9840];
    return v52;
  }

  v18 = sub_1C6EE4CA0();
  v19 = v17;

  v20 = v18;
  v50 = *(v18 + 16);
  if (!v50)
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v49 = v13;
  v21 = 0;
  v47 = v6 + 16;
  v48 = (v6 + 8);
  v45 = (v6 + 32);
  v46 = (v6 + 48);
  v52 = MEMORY[0x1E69E7CC0];
  v41 = v6;
  v42 = v1;
  v22 = v44;
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
    }

    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = v20;
    v25 = *(v6 + 72);
    v26 = v49;
    (*(v6 + 16))(v49, v20 + v23 + v25 * v21, v5);
    v27 = v1[10];
    v28 = v1[11];
    v29 = v1[12];
    v30 = v53;
    sub_1C6DEE6A8(v22);
    v53 = v30;
    if (v30)
    {
      break;
    }

    (*v48)(v26, v5);
    if ((*v46)(v22, 1, v5) == 1)
    {
      sub_1C6EDA890(v22, &unk_1EC1F9AB0, &qword_1C6EE9250);
    }

    else
    {
      v31 = *v45;
      v32 = v43;
      (*v45)(v43, v22, v5);
      v31(v51, v32, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1C6DEE840(0, *(v52 + 2) + 1, 1, v52, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      }

      v34 = *(v52 + 2);
      v33 = *(v52 + 3);
      if (v34 >= v33 >> 1)
      {
        v52 = sub_1C6DEE840(v33 > 1, v34 + 1, 1, v52, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0]);
      }

      v35 = v51;
      v36 = v52;
      *(v52 + 2) = v34 + 1;
      v31(&v36[v23 + v34 * v25], v35, v5);
      v6 = v41;
      v1 = v42;
      v22 = v44;
    }

    ++v21;
    v20 = v24;
    if (v50 == v21)
    {
      goto LABEL_16;
    }
  }

  (*v48)(v26, v5);

  __break(1u);
  return result;
}

uint64_t sub_1C6DEE4A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1C6DEDFB8();
  if (!v3)
  {
    v15 = v14;
    v16 = v6;
    v7 = MEMORY[0x1EEE9AC00](v6);
    v14[1] = 0;
    v14[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9918, &qword_1C6EF6FA0);
    v8 = v5[10];
    v9 = v5[11];
    v10 = v5[12];
    type metadata accessor for FileStore.FileContainer();
    sub_1C6EDA944(&qword_1EDEF6818, &qword_1EC1F9918, &qword_1C6EF6FA0);
    v11 = sub_1C6EE4C20();

    v15 = v14;
    v16 = v11;
    MEMORY[0x1EEE9AC00](v12);
    sub_1C6EE4D50();
    swift_getWitnessTable();
    a2 = sub_1C6EE4C30();
  }

  return a2;
}

uint64_t sub_1C6DEE6A8@<X0>(uint64_t a1@<X8>)
{
  sub_1C6EE40E0();
  v2 = sub_1C6EE4BA0();

  if (v2)
  {
    sub_1C6EE4120();
    v3 = 0;
  }

  else
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C6EE6590;
    v5 = sub_1C6EE40E0();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1C6DF10E0();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v3 = 1;
  }

  v8 = sub_1C6EE41A0();
  return (*(*(v8 - 8) + 56))(a1, v3, 1, v8);
}

size_t sub_1C6DEE840(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_3(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C6DEEA60(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1C6EE41A0();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t *sub_1C6DEEB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t **a5@<X8>)
{
  v39 = a3;
  v38 = a4;
  v36 = a1;
  v41 = a5;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = sub_1C6EE4FE0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v35 - v10;
  v11 = sub_1C6EE41A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = *(v12 + 16);
  v22(&v35 - v20, v36, v11);
  v22(v19, a2 + qword_1EDEF6920, v11);
  v22(v16, a2 + qword_1EDEF6938, v11);
  v23 = *(a2 + qword_1EDEF6928);
  v24 = *(a2 + qword_1EDEF6910);
  v25 = 12;
  if (*(a2 + qword_1EDEF6910))
  {
    v25 = 18;
  }

  if (v38)
  {
    v26 = v25;
  }

  else
  {
    v26 = v39;
  }

  v27 = *(v6 + 88);
  v28 = *(v6 + 96);
  v29 = type metadata accessor for FileStore.FileContainer();
  v30 = v37;
  (*(*(v7 - 8) + 56))(v37, 1, 1, v7);
  v31 = *(v29 + 48);
  v32 = *(v29 + 52);
  swift_allocObject();

  v33 = v40;
  result = sub_1C6DEEE64(v21, v19, v16, v23, v26, v24, v30);
  if (v33)
  {

    result = 0;
  }

  *v41 = result;
  return result;
}

uint64_t *sub_1C6DEEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char *a7)
{
  v8 = v7;
  v110 = a7;
  LODWORD(v114) = a6;
  v113 = a5;
  v115 = a4;
  v116 = a3;
  v117 = a2;
  v10 = *v7;
  v104 = v10;
  v11 = *(v10 + 80);
  v12 = sub_1C6EE4FE0();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v92 - v15;
  v107 = v11;
  v105 = *(v11 - 8);
  v16 = *(v105 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v95 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v92 - v21;
  v22 = sub_1C6EE4090();
  v101 = *(v22 - 8);
  v102 = v22;
  v23 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C6EE41A0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v118 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v92 - v31;
  v33 = *(v10 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A80, &qword_1C6EF7600);
  v34 = swift_allocObject();
  *(v34 + 28) = 0;
  *(v34 + 16) = 0;
  *(v34 + 24) = -1;
  v100 = v33;
  *(v8 + v33) = v34;
  v35 = *(*v8 + 120);
  v109 = v27;
  v36 = *(v27 + 16);
  v36(v8 + v35, a1, v26);
  v98 = *(*v8 + 128);
  v36(v8 + v98, v117, v26);
  v97 = *(*v8 + 136);
  v36(v8 + v97, v116, v26);
  v96 = *(*v8 + 144);
  *(v8 + v96) = v115;
  v99 = v35;
  v108 = v26;
  v36(v32, v8 + v35, v26);
  v37 = a1;
  v38 = objc_allocWithZone(type metadata accessor for ContainerLock());

  v39 = sub_1C6DEFEF8(v32, v113);
  v40 = *(*v8 + 160);
  *&v40[v8] = v39;
  *(v8 + *(*v8 + 168)) = v114;
  strcpy(v119, "configuration");
  HIWORD(v119[1]) = -4864;
  v42 = v101;
  v41 = v102;
  (*(v101 + 104))(v25, *MEMORY[0x1E6968F68], v102);
  sub_1C6DF0C68();
  v113 = v37;
  sub_1C6EE4190();
  v43 = v25;
  v44 = v103;
  (*(v42 + 8))(v43, v41);
  v45 = v104;

  v46 = v106;
  sub_1C6DF0CBC();
  if (v46)
  {
    v106 = v40;
    v47 = v105;
    v48 = v107;
    if (v114)
    {
      v49 = *(v45 + 88);
      v50 = *(v45 + 96);
      type metadata accessor for FileStore.FileContainer.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v51 = xmmword_1C6EE91C0;
      *(v51 + 16) = 1;
      swift_willThrow();

      (*(v111 + 8))(v110, v112);
      v52 = v108;
      v53 = *(v109 + 8);
      v53(v116, v108);
      v53(v117, v52);
      v53(v113, v52);
      v53(v118, v52);
LABEL_8:
      v53(v8 + v99, v52);
      v53(v8 + v98, v52);
      v53(v8 + v97, v52);
      v62 = *(v8 + v96);

      v63 = *(v8 + v100);

      v64 = *(*v8 + 48);
      v65 = *(*v8 + 52);
      swift_deallocPartialClassInstance();
      return v8;
    }

    v57 = v110;
    v56 = v111;
    v58 = v93;
    v59 = v112;
    (*(v111 + 16))(v93, v110, v112);
    if ((*(v47 + 48))(v58, 1, v48) == 1)
    {
      v60 = *(v56 + 8);
      v60(v58, v59);
      swift_willThrow();

      v60(v57, v59);
      v52 = v108;
      v53 = *(v109 + 8);
      v53(v116, v108);
      v53(v117, v52);
      v53(v113, v52);
      v53(v118, v52);
      goto LABEL_8;
    }

    v61 = v94;
    (*(v47 + 32))(v94, v58, v48);
    sub_1C6ED3FE0(v61, v118);
    v55 = v46;
    v106 = 0;
    v89 = v94;
    (*(v47 + 16))(v8 + *(*v8 + 104), v94, v48);
    v90 = *(v45 + 88);
    v91 = *(v45 + 96);
    type metadata accessor for FileStore.FileContainer.Flags();
    sub_1C6EE4CF0();
    swift_getWitnessTable();
    sub_1C6EE5040();

    (*(v47 + 8))(v89, v48);
    *(v8 + *(*v8 + 152)) = v119[0];
  }

  else
  {
    v47 = v105;
    v48 = v107;
    (*(v105 + 32))(v8 + *(*v8 + 104), v44, v107);
    v54 = *&v40[v8];
    v55 = 0;
    v66 = sub_1C6DF11A0(v113);
    v106 = 0;

    *(v8 + *(*v8 + 152)) = v66;
  }

  v67 = v95;
  (*(v47 + 16))(v95, v8 + *(*v8 + 104), v48);
  v68 = *(*(v45 + 96) + 24);
  sub_1C6EE51C0();
  (*(v47 + 8))(v67, v48);
  v69 = v119[1];
  v70 = (v8 + *(*v8 + 112));
  *v70 = v119[0];
  v70[1] = v69;
  v71 = sub_1C6DF22D8(v8);
  v72 = v45;
  v73 = *(*v8 + 152);
  v74 = *(v72 + 88);
  *(v8 + v73) |= v71;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1C6EE65B0;
  v76 = sub_1C6DF10E0();
  v77 = v76;
  v78 = 0x64657461657243;
  if (!v55)
  {
    v78 = 0x646564616F4CLL;
  }

  v79 = 0xE700000000000000;
  if (!v55)
  {
    v79 = 0xE600000000000000;
  }

  v80 = MEMORY[0x1E69E6158];
  *(v75 + 56) = MEMORY[0x1E69E6158];
  *(v75 + 64) = v76;
  *(v75 + 32) = v78;
  *(v75 + 40) = v79;
  v81 = v8 + *(*v8 + 120);
  v82 = sub_1C6EE40E0();
  *(v75 + 96) = v80;
  *(v75 + 104) = v77;
  *(v75 + 72) = v82;
  *(v75 + 80) = v83;
  v119[0] = 0;
  v119[1] = 0xE000000000000000;
  v120 = *(v8 + v73);
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  sub_1C6EE5490();
  v84 = v119[0];
  v85 = v119[1];
  *(v75 + 136) = v80;
  *(v75 + 144) = v77;
  *(v75 + 112) = v84;
  *(v75 + 120) = v85;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  (*(v111 + 8))(v110, v112);
  v86 = v108;
  v87 = *(v109 + 8);
  v87(v116, v108);
  v87(v117, v86);
  v87(v113, v86);
  v87(v118, v86);
  return v8;
}

uint64_t sub_1C6DEFBD4()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F88 = result;
  return result;
}

unint64_t sub_1C6DEFC3C()
{
  result = qword_1EDEF6750;
  if (!qword_1EDEF6750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6750);
  }

  return result;
}

uint64_t sub_1C6DEFCA8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6DEFCF8()
{
  sub_1C6DEFDAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C6DEFDAC()
{
  if (!qword_1EDEF8FB0)
  {
    sub_1C6EE41A0();
    v0 = sub_1C6EE4FE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF8FB0);
    }
  }
}

uint64_t type metadata accessor for ContainerLock()
{
  result = qword_1EDEF88E0;
  if (!qword_1EDEF88E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6DEFE50()
{
  result = sub_1C6EE41A0();
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

_BYTE *sub_1C6DEFEF8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  v7 = sub_1C6EE41A0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  *&v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] = a2;
  v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained] = (a2 & 8) != 0;
  v2[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter] = (a2 & 0x10) != 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  if (v9[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isRetained] == 1)
  {
    if (qword_1EDEF66B0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDEF66C0;
    MEMORY[0x1EEE9AC00]();
    os_unfair_lock_lock((v10 + 24));
    sub_1C6DF03B0((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
  }

  if (v9[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter] == 1)
  {
    [objc_opt_self() addFilePresenter_];
  }

  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_1C6DF00C8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1C6DF01E8;
  }

  else
  {

    v3 = sub_1C6E504C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6DF01E8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  swift_getErrorValue();
  v5 = v0[8];
  v6 = v0[9];
  sub_1C6EE5480();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6DF10E0();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1C6EE4730();

  if ((*(v3 + 128) & 0xC0) != 0x40)
  {
    v7 = v0[12];
    sub_1C6E52454();
  }

  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  sub_1C6E50668();
  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C6DF0364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A88, &qword_1C6EF7608);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDEF66C0 = result;
  return result;
}

uint64_t sub_1C6DF03CC(void *a1, uint64_t a2)
{
  v24 = sub_1C6EE41A0();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL;
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  v12 = v25;
  v14 = sub_1C6DF0598(a2 + v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v13;
  if (v12[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *a1 = v12;
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C6DF07F0(result, isUniquelyReferenced_nonNull_native);
    v12 = v25;
    result = sub_1C6DF0598(a2 + v9);
    if ((v2 & 1) != (v18 & 1))
    {
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v14 = result;
    *a1 = v12;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v20 = v12[7];
    v21 = *(v20 + 8 * v14);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1C6E0A9A4();
    v12 = v25;
    *a1 = v25;
    if ((v2 & 1) == 0)
    {
LABEL_8:
      v19 = *(v5 + 16);
      v5 += 16;
      v19(v8, a2 + v9, v24);
      result = sub_1C6DF0BB0(v14, v8, 0, v12);
    }
  }

  *(v20 + 8 * v14) = v23;
  return result;
}

unint64_t sub_1C6DF0598(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C6EE41A0();
  sub_1C6E0D2A4(&qword_1EDEF66E0, MEMORY[0x1E6968FB0]);
  v5 = sub_1C6EE49F0();

  return sub_1C6DF0630(a1, v5);
}

unint64_t sub_1C6DF0630(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C6EE41A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
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
      sub_1C6E0D2A4(&qword_1EDEF66D8, MEMORY[0x1E6968FB0]);
      v16 = sub_1C6EE4A50();
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

uint64_t sub_1C6DF07F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C6EE41A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77B8, &qword_1C6EE6970);
  v44 = a2;
  result = sub_1C6EE5330();
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

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_1C6E0D2A4(&qword_1EDEF66E0, MEMORY[0x1E6968FB0]);
      result = sub_1C6EE49F0();
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
      *(*(v14 + 56) + 8 * v22) = v30;
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

uint64_t sub_1C6DF0BB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C6EE41A0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1C6DF0C68()
{
  result = qword_1EDEF6850;
  if (!qword_1EDEF6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6850);
  }

  return result;
}

uint64_t sub_1C6DF0CBC()
{
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C6EE6590;
  sub_1C6EE41A0();
  sub_1C6DF1088();
  v2 = sub_1C6EE5460();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6DF10E0();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  v6 = sub_1C6EE41C0();
  if (v0)
  {
    sub_1C6EE4EC0();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C6EE6B40;
    v26 = sub_1C6EE5460();
    v27 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = v5;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v25 + 96) = v27;
    *(v25 + 104) = v5;
    *(v25 + 72) = 0;
    *(v25 + 80) = 0xE000000000000000;
    sub_1C6EE4730();

    return swift_willThrow();
  }

  else
  {
    v8 = v7;
    v30 = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C6EE6B40;
    result = sub_1C6EE5460();
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = v5;
    *(v9 + 32) = result;
    *(v9 + 40) = v11;
    v29 = v8;
    v12 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v13 = 0;
      if (v12 != 2)
      {
        goto LABEL_13;
      }

      v15 = *(v30 + 16);
      v14 = *(v30 + 24);
      v13 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v8);
LABEL_13:
      v16 = [objc_opt_self() stringFromByteCount:v13 countStyle:1];
      v17 = sub_1C6EE4A90();
      v19 = v18;

      MEMORY[0x1CCA57F60](v17, v19);

      *(v9 + 96) = MEMORY[0x1E69E6158];
      *(v9 + 104) = v5;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0xE000000000000000;
      sub_1C6EE4EE0();
      sub_1C6EE4730();

      v20 = sub_1C6EE3F00();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_1C6EE3EF0();
      v23 = *(v31 + 80);
      v24 = *(*(v31 + 96) + 8);
      sub_1C6EE3EE0();

      return sub_1C6DF1134(v30, v29);
    }

    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v13 = HIDWORD(v30) - v30;
      goto LABEL_13;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C6DF1088()
{
  result = qword_1EDEF8FC0[0];
  if (!qword_1EDEF8FC0[0])
  {
    sub_1C6EE41A0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8FC0);
  }

  return result;
}

unint64_t sub_1C6DF10E0()
{
  result = qword_1EDEF6848;
  if (!qword_1EDEF6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6848);
  }

  return result;
}

uint64_t sub_1C6DF1134(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C6DF11A0(uint64_t a1)
{
  v3 = v1[11];
  v14[2] = v1[10];
  v14[3] = v3;
  v14[4] = v1[12];
  v14[5] = a1;
  v4 = type metadata accessor for FileStore.FileContainer.Flags();
  sub_1C6DF138C(sub_1C6DF1B28, v14, v4, &v15);
  if (!v2)
  {
    return v15;
  }

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6EE6B40;
  v6 = sub_1C6EE40E0();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C6DF10E0();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v15 = 0;
  v16 = 0xE000000000000000;
  swift_getErrorValue();
  sub_1C6EE5480();
  v11 = v15;
  v12 = v16;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  sub_1C6EE4730();

  return swift_willThrow();
}

uint64_t sub_1C6DF1344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C6DF138C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = *(sub_1C6EE4FE0() - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  if ((v4[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_options] & 2) == 0)
  {
    result = a1(v14);
LABEL_11:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v31 = v14;
  v18 = *(a3 - 8);
  v29 = a4;
  v30 = v18;
  (*(v18 + 56))(&v29 - v15, 1, 1, a3);
  v19 = 0;
  v33[0] = 0;
  if (v4[OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_isPresenter] == 1)
  {
    v19 = v4;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) initWithFilePresenter_];
  swift_unknownObjectRelease();
  v21 = sub_1C6EE4100();
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = v16;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v33;
  v23 = swift_allocObject();
  v23[2] = sub_1C6EDA6FC;
  v23[3] = v22;
  aBlock[4] = sub_1C6EDAD7C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6ED7D7C;
  aBlock[3] = &block_descriptor_53;
  v24 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v20 coordinateReadingItemAtURL:v21 options:0 error:aBlock byAccessor:v24];
  _Block_release(v24);

  v25 = aBlock[0];
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  if (v25)
  {
    swift_willThrow();

LABEL_10:
    (*(v9 + 8))(v16, v31);

    goto LABEL_11;
  }

  if (v33[0])
  {
    swift_willThrow();
    goto LABEL_10;
  }

  v27 = v31;
  (*(v9 + 16))(v13, v16, v31);
  v28 = v30;
  result = (*(v30 + 48))(v13, 1, a3);
  if (result != 1)
  {
    (*(v28 + 32))(v29, v13, a3);
    (*(v9 + 8))(v16, v27);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6DF17E8@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_1C6DF1918(0xD000000000000031, 0x80000001C6EFDB50, 512);
  v5 = v4;

  if (!v1)
  {
    if (v5 >> 60 == 15)
    {
      type metadata accessor for FileStore.FileContainer.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v8 = sub_1C6DF20F0(v3, v5);
      result = sub_1C6DF20DC(v3, v5);
      *a1 = v8;
    }
  }

  return result;
}

char *sub_1C6DF1918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v25 = sub_1C6DF1B4C(a3);
  v26 = v8;
  v9 = &v25;
  if ((sub_1C6DF1BEC(sub_1C6DF200C) & 0x8000000000000000) == 0)
  {
    v10 = sub_1C6EE4200();
LABEL_3:
    v9 = v10;
LABEL_17:
    sub_1C6DF1134(v25, v26);
    return v9;
  }

  v11 = MEMORY[0x1CCA57C40]();
  switch(v11)
  {
    case 93:
      v9 = 0;
      goto LABEL_17;
    case 34:
      sub_1C6EE4170();
      v13 = sub_1C6EE4B10();

      v14 = sub_1C6EE4B10();
      v15 = getxattr((v13 + 32), (v14 + 32), 0, 0, 0, 0);

      if ((v15 & 0x8000000000000000) == 0)
      {
        v17 = v15;
        v9 = v5;
        v10 = sub_1C6DF1918(a1, a2, v17);
        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      break;
    case 2:
      sub_1C6E2BFC0();
      swift_allocError();
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
LABEL_16:
      swift_willThrow();
      goto LABEL_17;
    default:
      v18 = MEMORY[0x1CCA57C40]();
      v19 = MEMORY[0x1CCA57C40]();
      v16 = strerror(v19);
      if (v16)
      {
LABEL_15:
        v9 = sub_1C6EE4B70();
        v23 = v22;
        sub_1C6E2BFC0();
        swift_allocError();
        *v24 = v18;
        v24[1] = v9;
        v24[2] = v23;
        goto LABEL_16;
      }

      __break(1u);
      break;
  }

  v18 = MEMORY[0x1CCA57C40](v16);
  v20 = MEMORY[0x1CCA57C40]();
  result = strerror(v20);
  if (result)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6DF1B28@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  return sub_1C6DF17E8(a1);
}

uint64_t sub_1C6DF1B4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1C6ED9F78(result);
    }

    else
    {
      v2 = sub_1C6EE3FE0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1C6EE3FA0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C6EE41D0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1C6DF1BEC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1C6DF1134(v6, v5);
      *&v21 = v6;
      WORD4(v21) = v5;
      BYTE10(v21) = BYTE2(v5);
      BYTE11(v21) = BYTE3(v5);
      BYTE12(v21) = BYTE4(v5);
      BYTE13(v21) = BYTE5(v5);
      BYTE14(v21) = BYTE6(v5);
      result = a1(&v20, &v21, &v21 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *v3 = v21;
      v3[1] = v9;
      goto LABEL_19;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C6DF1134(v6, v5);
    *v3 = xmmword_1C6EE6B50;
    sub_1C6DF1134(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1C6EE3F90() && __OFSUB__(v6, sub_1C6EE3FC0()))
      {
LABEL_22:
        __break(1u);
      }

      v13 = sub_1C6EE3FE0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1C6EE3F80();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1C6DF1F5C(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        result = v17;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_1C6DF1134(v6, v5);
    *&v21 = v6;
    *(&v21 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1C6EE6B50;
    sub_1C6DF1134(0, 0xC000000000000000);
    sub_1C6EE41B0();
    v10 = *(&v21 + 1);
    result = sub_1C6DF1F5C(*(v21 + 16), *(v21 + 24), a1);
    *v3 = v21;
    v3[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    result = a1(&v20, &v21, &v21);
    if (!v2)
    {
      result = v20;
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1C6DF1F5C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C6EE3F90();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C6EE3FC0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1C6EE3FB0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C6DF200C@<X0>(void *a1@<X0>, ssize_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1C6DF202C(a1, v2[5], a2);
}

uint64_t sub_1C6DF202C@<X0>(void *a1@<X0>, size_t a2@<X5>, ssize_t *a3@<X8>)
{
  sub_1C6EE4170();
  v6 = sub_1C6EE4B10();

  v7 = sub_1C6EE4B10();
  v8 = getxattr((v6 + 32), (v7 + 32), a1, a2, 0, 0);

  *a3 = v8;
  return result;
}

uint64_t sub_1C6DF20DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6DF1134(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6DF20F0(uint64_t result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) == 8)
    {
LABEL_8:
      while (v3 != 2)
      {
        if (v3 != 1)
        {
          return result;
        }

        v8 = result;
        if (result > result >> 32)
        {
          goto LABEL_34;
        }

        v9 = sub_1C6EE3F90();
        if (!v9)
        {
          goto LABEL_40;
        }

        v10 = v9;
        v11 = sub_1C6EE3FC0();
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_37;
        }

        v12 = (v8 - v11 + v10);
        result = sub_1C6EE3FB0();
        if (v12)
        {
          return *v12;
        }

        __break(1u);
LABEL_15:
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_33;
        }

        if (HIDWORD(result) - result != 8)
        {
          goto LABEL_17;
        }
      }

      v14 = *(result + 16);
      v15 = sub_1C6EE3F90();
      if (!v15)
      {
        goto LABEL_38;
      }

      v16 = v15;
      v17 = sub_1C6EE3FC0();
      if (!__OFSUB__(v14, v17))
      {
        v12 = (v14 - v17 + v16);
        sub_1C6EE3FB0();
        if (!v12)
        {
          goto LABEL_39;
        }

        return *v12;
      }

      goto LABEL_36;
    }

LABEL_17:
    if (v3 == 2)
    {
      v19 = *(result + 16);
      v18 = *(result + 24);
      v13 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (v3 == 1)
    {
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v13 = HIDWORD(result) - result;
LABEL_30:
        type metadata accessor for FileStore.FileContainer.Errors();
        swift_getWitnessTable();
        swift_allocError();
        *v20 = v13;
        *(v20 + 8) = 8;
        *(v20 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_35;
    }

    v13 = v2;
    goto LABEL_30;
  }

  if (v3 != 2)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (!v6)
  {
    if (v7 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1C6EE3FB0();
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1C6EE3FB0();
  __break(1u);
  return result;
}

uint64_t sub_1C6DF22D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  v3 = *((*(*(*a1 + 96) + 48))(*(*a1 + 80), *(*a1 + 96)) + 16);

  v4 = *(v1 + 88);
  type metadata accessor for FileStore.FileContainer.Flags();
  sub_1C6EE5470();
  swift_allocObject();
  sub_1C6EE4CC0();
  if (v3)
  {
    *v5 = 1;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    return v8;
  }

  else
  {
    *v5 = 0x400000001;
    v5[2] = 8;
    sub_1C6EE4D50();
    swift_getWitnessTable();
    sub_1C6EE5040();
    return v7;
  }
}

uint64_t sub_1C6DF24D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1C6DF2578();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

unint64_t sub_1C6DF2578()
{
  result = qword_1EDEF6748;
  if (!qword_1EDEF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6748);
  }

  return result;
}

uint64_t sub_1C6DF25CC@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  result = nullsub_1(*a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

uint64_t sub_1C6DF2608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C6DF2674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1C6DF26E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C6DF2578();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1C6DF2780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7310];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1C6DF280C(char a1)
{
  v3 = *(v1 + *(*v1 + 152));
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  type metadata accessor for FileStore.FileContainer.Flags();
  swift_getWitnessTable();
  if (sub_1C6EE5620())
  {
    v7 = 0;
  }

  else
  {
    v8 = 1;
    if (a1)
    {
      v8 = sub_1C6EE5620();
    }

    v9 = ((a1 & 2) == 0) & v8;
    if (a1 & 2) != 0 && (v8)
    {
      v9 = sub_1C6EE5620();
    }

    v10 = ((a1 & 4) == 0) & v9;
    if (a1 & 4) != 0 && (v9)
    {
      v10 = sub_1C6EE5620();
    }

    v11 = ((a1 & 8) == 0) & v10;
    if (a1 & 8) != 0 && (v10)
    {
      v11 = sub_1C6EE5620();
    }

    v7 = ((a1 & 0x10) == 0) & v11;
    if (a1 & 0x10) != 0 && (v11)
    {
      v7 = sub_1C6EE5620();
    }
  }

  return v7 & 1;
}

uint64_t sub_1C6DF2A4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6DF2A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_1C6EE4880();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6EE48C0();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3[4];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = *(v6 + 80);
  v16[3] = *(v6 + 88);
  v16[4] = v15;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6DEDCF0;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);

  sub_1C6EE48A0();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1C6DEC634(&qword_1EDEF6858, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6DEC67C(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
  sub_1C6EE50C0();
  MEMORY[0x1CCA58340](0, v14, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1C6DF2D94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF2DCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C6DF2DD8();
}

uint64_t sub_1C6DF2DD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 80) = 0;
    if (qword_1EDEF8F90 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  return result;
}

uint64_t sub_1C6DF2E98()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F98 = result;
  return result;
}

uint64_t sub_1C6DF2F54@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

__n128 sub_1C6DF30A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C6DF30B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C6DF30C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6DF30E4()
{
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C6DF3180()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF31F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE41A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF32A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE41A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF3350()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6DF3390()
{
  v1 = sub_1C6EE42C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6DF346C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF34E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF3560()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DF35A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6DF365C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DF36A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF3714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE42C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF3784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimedData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C6DF3850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TimedData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C6DF3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF3A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF3BC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1C6DF3D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1C6DF3F30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF3FDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s18ComputationalGraph47Com_Apple_News_Algorithms_Proto_Model_ModelTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph47Com_Apple_News_Algorithms_Proto_Model_ModelTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF40D0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF40EC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF410C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1C6DF42E4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DF44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1018)
  {
    v4 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
    if (v4 >= 0x3FB)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF456C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 1018)
  {
    *result = 0;
    *(result + 8) = (~a2 & 3) << 60;
    *(result + 16) = ~a2 >> 2;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4640(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF46EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4790(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF483C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF48E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF4A10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF4C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF4D80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF4E2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF4ED0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF4F7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF50B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF5130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s18ComputationalGraph52Com_Apple_News_Algorithms_Proto_Ratings_RatingSourceV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph52Com_Apple_News_Algorithms_Proto_Ratings_RatingSourceV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF5208(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF5224(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF524C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF52F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF539C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF5448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF54EC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5670(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C6DF57F4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5978(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C6DF5AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF5C54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF5DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C6DF5EB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t _s18ComputationalGraph61Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph61Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF6014(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF6030(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF6050(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF60FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF61A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C6DF624C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF62EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF6428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6DF64EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_1C6DF6640(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DF67BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF68EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF6A1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF6AC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF6B98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1C6DF6DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s18ComputationalGraph62Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyTypeV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18ComputationalGraph62Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyTypeV4EnumOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6DF70CC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DF70E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6DF71D0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_1C6DF73FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF7644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF76F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF7794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DF7890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DF7998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6EE4430();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6DF7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6EE4430();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6DF7AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C6DF7B64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6EE4430();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C6DF7C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF7C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF7D14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF7E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF7F74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF80A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF81D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF8280(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8324(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF83D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF8520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF85C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF86F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF88D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF8990(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF8AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6DF8C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6DF8CCC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF8DFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF8F2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF905C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF918C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DF92BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF93EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DF951C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DF9670(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DF971C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF97C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DF986C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DF9910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DF9A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DF9B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DF9C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DF9DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C6DF9ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C6DF9FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6DFA0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6DFA1E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DFA2A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFA368@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6DFA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFA508(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFA638(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1C6DFA810(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6EE4430();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6DFA9E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFAB18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFAC48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFAD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFAECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFAF78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB01C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C6DFB0C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFB214(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DFB410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DFB5C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFB670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFB760(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C6DFB890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFB9C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFBAF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFBC20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6DFBCCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFBD70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFBE1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFBEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6EE4430();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C6DFC018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6EE4430();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6DFC17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFC2AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFC3DC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C6EE4430();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1C6DFC50C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFC638(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6DFC6E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6DFC788(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6DFC8B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6DFCA00()
{
  v1 = sub_1C6EE41A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1C6DF1134(*(v0 + v5), *(v0 + v5 + 8));
  v7 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

BOOL sub_1C6DFCAD8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C6DFCB64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DFCBA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6DFCBE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6DFCC18()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6DFCC68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C6DFCC80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id APDefaultLog()
{
  predicate = &APDefaultLog_once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = APDefaultLog_result;

  return v0;
}

uint64_t __APDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.ComputationalGraph", "Default");
  v1 = APDefaultLog_result;
  APDefaultLog_result = v0;
  return MEMORY[0x1E69E5920](v1);
}

void CGZipUnarchiverCopyFileFinishedHandler(uint64_t a1, const char *a2, int a3, uint64_t a4, int a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = BOMCopierUserData();
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 stringWithFileSystemRepresentation:v11 length:strlen(v11)];
  MEMORY[0x1E69E5920](v5);
  [v7 addObject:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
}

void CGZipUnarchiverCopyFatalErrorHandler(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v3 = a2;
  oslog = APDefaultLog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v5, v3);
    _os_log_error_impl(&dword_1C6DE9000, oslog, OS_LOG_TYPE_ERROR, "encountered fatal error %s", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __os_log_helper_16_2_3_8_0_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_1C6DFD544(uint64_t a1, id *a2)
{
  result = sub_1C6EE4A70();
  *a2 = 0;
  return result;
}

uint64_t sub_1C6DFD5BC(uint64_t a1, id *a2)
{
  v3 = sub_1C6EE4A80();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6DFD63C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C6EE4A90();
  v2 = sub_1C6EE4A60();

  *a1 = v2;
  return result;
}

uint64_t sub_1C6DFD680()
{
  v1 = *v0;
  v2 = sub_1C6EE4A90();
  v3 = MEMORY[0x1CCA57FC0](v2);

  return v3;
}

uint64_t sub_1C6DFD6BC()
{
  v1 = *v0;
  sub_1C6EE4A90();
  sub_1C6EE4B30();
}

uint64_t sub_1C6DFD710()
{
  v1 = *v0;
  sub_1C6EE4A90();
  sub_1C6EE5580();
  sub_1C6EE4B30();
  v2 = sub_1C6EE55A0();

  return v2;
}

void *sub_1C6DFD798@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C6DFD7B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C6EE4A90();
  v6 = v5;
  if (v4 == sub_1C6EE4A90() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6EE54B0();
  }

  return v9 & 1;
}

uint64_t sub_1C6DFD83C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6EE4A60();

  *a2 = v5;
  return result;
}

uint64_t sub_1C6DFD884@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C6EE4A90();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C6DFD8B0(uint64_t a1)
{
  v2 = sub_1C6DFDBB8(&qword_1EC1F74F8);
  v3 = sub_1C6DFDBB8(&qword_1EC1F7500);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C6DFD948(uint64_t result, uint64_t a2)
{
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    v6 = result;
    while (1)
    {
      v8 = *v4++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      if (v6 == 0x80000000 && v7 == -1)
      {
        goto LABEL_23;
      }

      v2 = v6 / v7;
      if (v6 % v7)
      {

        return 0;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6ED8F9C(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        result = sub_1C6ED8F9C((v9 > 1), v10 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v11;
      *&v5[8 * v10 + 32] = v7;
      v6 = v2;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v11 >= *(v5 + 3) >> 1)
  {
    v5 = sub_1C6ED8F9C(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v5);
  }

  sub_1C6EC8844(0, 0, 1, v2);
  return v5;
}

uint64_t sub_1C6DFDAE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6DFDB00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C6DFDBB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6DFDC30(uint64_t a1)
{
  v67 = sub_1C6EE4020();
  v3 = *(v67 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52 - v8;
  v10 = sub_1C6EE41A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v66 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v52 - v15;
  v16 = sub_1C6EE4070();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6EE40D0())
  {
    v65 = v11;
    v63 = v17;
    v21 = [objc_opt_self() defaultManager];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
    v22 = swift_allocObject();
    v62 = xmmword_1C6EE6590;
    *(v22 + 16) = xmmword_1C6EE6590;
    v23 = *MEMORY[0x1E695DBB8];
    *(v22 + 32) = *MEMORY[0x1E695DBB8];
    v60 = v23;
    v24 = sub_1C6EE4EA0();

    if (v24)
    {
      v58 = v24;
      v59 = v16;
      v64 = v1;
      sub_1C6EE4E90();
      sub_1C6EE4060();
      if (!v70)
      {
        v3 = MEMORY[0x1E69E7CC0];
        v27 = v63;
LABEL_21:
        (*(v27 + 8))(v20, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1C6ECE32C(v3);
        }

        v44 = v58;
        v45 = v3[2];
        v69[0] = v3 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v69[1] = v45;
        sub_1C6DFE514(v69);

        return v3;
      }

      v25 = (v65 + 56);
      v26 = (v65 + 32);
      v56 = (v3 + 1);
      v57 = (v65 + 8);
      v54 = (v65 + 16);
      v3 = MEMORY[0x1E69E7CC0];
      v27 = v63;
      while (1)
      {
        v28 = swift_dynamicCast();
        v29 = *v25;
        if (v28)
        {
          v29(v9, 0, 1, v10);
          v30 = *v26;
          v55 = v26;
          v53 = v30;
          v30(v71, v9, v10);
          inited = swift_initStackObject();
          *(inited + 16) = v62;
          v32 = v60;
          *(inited + 32) = v60;
          v33 = v32;
          sub_1C6ED9D4C(inited);
          swift_setDeallocating();
          sub_1C6DFFC0C(inited + 32);
          v34 = v68;
          v35 = v64;
          sub_1C6EE40C0();
          v64 = v35;
          if (v35)
          {

            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            v3 = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v46 = swift_allocObject();
            *(v46 + 16) = v62;
            sub_1C6DF1088();
            v47 = v71;
            v48 = sub_1C6EE5460();
            v50 = v49;
            *(v46 + 56) = MEMORY[0x1E69E6158];
            *(v46 + 64) = sub_1C6DF10E0();
            *(v46 + 32) = v48;
            *(v46 + 40) = v50;
            sub_1C6EE4730();

            sub_1C6DFE4C0();
            swift_allocError();
            *v51 = 0;
            *(v51 + 8) = 0;
            *(v51 + 16) = 5;
            swift_willThrow();

            (*v57)(v47, v10);
            (*(v63 + 8))(v20, v59);
            return v3;
          }

          result = sub_1C6EE4010();
          if (result == 2)
          {
            __break(1u);
            return result;
          }

          v27 = v63;
          if (result)
          {
            (*v54)(v66, v71, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1C6DEEA1C(0, v3[2] + 1, 1, v3);
            }

            v38 = v3[2];
            v37 = v3[3];
            v52 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              v3 = sub_1C6DEEA1C(v37 > 1, v38 + 1, 1, v3);
            }

            (*v56)(v68, v67);
            v39 = v65;
            (*(v65 + 8))(v71, v10);
            v3[2] = v52;
            v40 = v3 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38;
            v26 = v55;
            v53(v40, v66, v10);
          }

          else
          {
            (*v56)(v34, v67);
            (*v57)(v71, v10);
            v26 = v55;
          }
        }

        else
        {
          v29(v9, 1, 1, v10);
          sub_1C6DFFBA4(v9);
        }

        sub_1C6EE4060();
        if (!v70)
        {
          goto LABEL_21;
        }
      }
    }

    sub_1C6DFE4C0();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 5;
    swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9910, &unk_1C6EF6B80);
    v41 = *(v11 + 72);
    v42 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1C6EE6590;
    (*(v11 + 16))(v3 + v42, a1, v10);
  }

  return v3;
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

unint64_t sub_1C6DFE4C0()
{
  result = qword_1EDEF6008[0];
  if (!qword_1EDEF6008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6008);
  }

  return result;
}

uint64_t sub_1C6DFE514(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1C6EE5450();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6EE41A0();
        v6 = sub_1C6EE4D00();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C6EE41A0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C6DFE94C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6DFE640(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6DFE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6EE41A0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_1C6EE4170();
      v28 = v27;
      if (v26 == sub_1C6EE4170() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1C6EE54B0();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6DFE94C(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1C6EE41A0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_1C6DFF508(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1C6ECCA74(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_1C6ECC9E8(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1C6ECCA74(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_1C6EE4170();
      v38 = v37;
      v39 = sub_1C6EE4170();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1C6EE54B0();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_1C6EE4170();
        v53 = v52;
        if (v51 == sub_1C6EE4170() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1C6EE54B0();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6ED92D4(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1C6ED92D4((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_1C6DFF508(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1C6ECCA74(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_1C6ECC9E8(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_1C6EE4170();
    v70 = v69;
    if (v5 == sub_1C6EE4170() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1C6EE54B0();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1C6DFF508(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_1C6EE41A0();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_1C6EE4170();
            v53 = v52;
            if (v51 != sub_1C6EE4170())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_1C6EE54B0();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_1C6EE4170();
        v33 = v32;
        if (v31 == sub_1C6EE4170() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_1C6EE54B0();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_1C6ECCA88(&v75, &v74, &v73);
  return 1;
}