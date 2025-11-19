uint64_t sub_1D1ACAFAC()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1ACB0A8, 0, 0);
}

uint64_t sub_1D1ACB0A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_1D1AD7050(*(v0 + 80), type metadata accessor for StateSnapshot);
  result = (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = *(v0 + 232);
LABEL_11:
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v72 = (v5 - 1) & v5;
    v18 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v18, v14);
    sub_1D1AD7678(*(v7 + 56) + *(v17 + 72) * v18, v16, type metadata accessor for StateSnapshot);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    sub_1D1AD76E0(v16, v13 + v20, type metadata accessor for StateSnapshot);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    v21 = v72;
    v10 = v6;
LABEL_12:
    *(v0 + 240) = v21;
    *(v0 + 248) = v10;
    v22 = *(v0 + 120);
    sub_1D1741A90(*(v0 + 112), v22, &qword_1EC645430, &qword_1D1E799C0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      v24 = *(v0 + 232);

      v25 = *(v0 + 64);
      sub_1D1741C08(*(v0 + 152) + *(*(v0 + 136) + 44), v25, &qword_1EC64A8A8, &qword_1D1E96E28);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v25, 1, v26);
      v29 = *(v0 + 176);
      v30 = *(v0 + 152);
      v31 = *(v0 + 64);
      if (v28 == 1)
      {

        sub_1D1741A30(v30, &qword_1EC649DC8, &qword_1D1E96508);
        sub_1D1741A30(v29, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741A30(v31, &qword_1EC64A8A8, &qword_1D1E96E28);
      }

      else
      {
        *(v0 + 40) = *(v0 + 232);
        sub_1D1E67D6C();
        sub_1D1741A30(v30, &qword_1EC649DC8, &qword_1D1E96508);
        sub_1D1741A30(v29, &unk_1EC64A270, &qword_1D1E71780);
        (*(v27 + 8))(v31, v26);
      }

      v37 = *(v0 + 200) + 1;
      if (v37 == *(v0 + 184))
      {
LABEL_22:
        v44 = *(v0 + 176);
        v45 = *(v0 + 152);
        v47 = *(v0 + 120);
        v46 = *(v0 + 128);
        v49 = *(v0 + 104);
        v48 = *(v0 + 112);
        v50 = *(v0 + 80);
        v51 = *(v0 + 64);

        v52 = *(v0 + 8);

        return v52();
      }

      else
      {
        while (1)
        {
          *(v0 + 200) = v37;
          v38 = *(v0 + 176);
          v39 = *(v0 + 160);
          v40 = *(v0 + 136);
          v41 = *(v0 + 144);
          v42 = *(v0 + 128);
          sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v37, v38, &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741C08(v38 + *(v39 + 44), v42, &qword_1EC64A868, &qword_1D1E96DD8);
          if ((*(v41 + 48))(v42, 1, v40) != 1)
          {
            break;
          }

          v43 = *(v0 + 128);
          sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741A30(v43, &qword_1EC64A868, &qword_1D1E96DD8);
          v37 = *(v0 + 200) + 1;
          if (v37 == *(v0 + 184))
          {
            goto LABEL_22;
          }
        }

        v55 = *(v0 + 176);
        v56 = *(v0 + 152);
        v57 = *(v0 + 56);
        sub_1D1741A90(*(v0 + 128), v56, &qword_1EC649DC8, &qword_1D1E96508);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
        updated = type metadata accessor for StateSnapshot.UpdateType(0);
        *(v0 + 208) = updated;
        v59 = *(*(updated - 8) + 72);
        v60 = *(*(updated - 8) + 80);
        *(v0 + 264) = v60;
        v61 = (v60 + 32) & ~v60;
        v62 = swift_allocObject();
        *(v0 + 216) = v62;
        *(v62 + 16) = xmmword_1D1E739C0;
        sub_1D1AD7678(v55, v62 + v61, type metadata accessor for StateSnapshot.UpdateType);
        v63 = *v56;
        v64 = *(v56 + 8);
        v65 = *(v56 + 16);
        *(v0 + 16) = *v56;
        *(v0 + 24) = v64;
        *(v0 + 32) = v65;
        v66 = *(*v57 + 272);
        sub_1D1AC3828(v63, v64, v65);
        v71 = (v66 + *v66);
        v67 = v66[1];
        v68 = swift_task_alloc();
        *(v0 + 224) = v68;
        *v68 = v0;
        v68[1] = sub_1D1ACA540;
        v69 = *(v0 + 56);

        return v71(v62, v0 + 16);
      }
    }

    else
    {
      v32 = *(v0 + 56);
      sub_1D1AD76E0(*(v0 + 120) + *(v23 + 48), *(v0 + 80), type metadata accessor for StateSnapshot);
      v70 = (*v32 + 280);
      v73 = (*v70 + **v70);
      v33 = (*v70)[1];
      v34 = swift_task_alloc();
      *(v0 + 256) = v34;
      *v34 = v0;
      v34[1] = sub_1D1ACAFAC;
      v35 = *(v0 + 80);
      v36 = *(v0 + 56);

      return v73(v35);
    }
  }

  else
  {
    v8 = ((1 << *(v0 + 33)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 33)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v53 = *(v0 + 112);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v21 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 232);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall HomeState.Stream.startIfNeeded(homeManager:)(HMHomeManager_optional homeManager)
{
  v2 = v1;
  isa = homeManager.value.super.isa;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v4 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64A290);
    oslog = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D16EC000, oslog, v19, "Attempted to startIfNeeded but HomeState.Stream isn't supported", v20, 2u);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  else
  {
    v5 = v2[15];
    os_unfair_lock_lock((v5 + 16));
    v6 = *(v5 + 24);
    swift_weakLoadStrong();
    swift_weakAssign();

    os_unfair_lock_unlock((v5 + 16));
    v7 = v2[16] + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate__stream;
    os_unfair_lock_lock(v7);
    v8 = *(v7 + 8);
    swift_weakLoadStrong();
    swift_weakAssign();

    os_unfair_lock_unlock(v7);
    v9 = v2[20];
    *(v9 + 120) = sub_1D17D8EA8(&qword_1EC64A7B8, &qword_1EC649C08, &qword_1D1E95F38);
    swift_unknownObjectWeakAssign();
    v10 = v2[18];
    swift_weakAssign();
    v11 = v2[19];
    swift_weakAssign();
    sub_1D1AC3D00();
    sub_1D1AC3FD4();
    v12 = v2;
    swift_beginAccess();
    if (!v2[8])
    {
      v13 = isa;
      if (isa || (v12 = v2, (v13 = sub_1D1A81848()) != 0))
      {
        v14 = sub_1D17D8EA8(&unk_1EC649E70, &qword_1EC649C08, &qword_1D1E95F38);
        v15 = isa;

        HMHomeManager.homeManagerDelegate.setter(v16, v14);
        v17 = v12[8];
        v12[8] = v13;
      }
    }
  }
}

unint64_t HomeState.Stream.fastStart(with:homesToPerformSnapshotsIfPossible:)(void *a1, uint64_t a2, id a3, uint64_t *a4)
{
  v7 = *a4;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v8 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC64A290);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Attempted to fastStart but HomeState.Stream isn't supported", v20, 2u);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  else
  {
    v9 = sub_1D1A81848();
    if (v9)
    {
      v10 = v9;
      if (a3)
      {
        if (qword_1EE07A070 != -1)
        {
          swift_once();
        }

        v11 = sub_1D1E6709C();
        __swift_project_value_buffer(v11, qword_1EE081480);

        v12 = sub_1D1E6707C();
        v13 = sub_1D1E6835C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v24 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1D1B1312C(a2, a3, &v24);
          _os_log_impl(&dword_1D16EC000, v12, v13, "Taking assertion for reason %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x1D3893640](v15, -1, -1);
          MEMORY[0x1D3893640](v14, -1, -1);
        }

        v16 = sub_1D1E677EC();
        a3 = [v10 _beginActiveAssertionWithReason_];
      }

      v24 = v7;
      v23 = sub_1D1ACBF90(v10, &v24);

      *a1 = a3;
      return v23;
    }
  }

  *a1 = 0;
  v21 = MEMORY[0x1E69E7CC0];

  return sub_1D18DA7F8(v21);
}

void *sub_1D1ACBF90(void *a1, unint64_t *a2)
{
  v3 = v2;
  v110 = type metadata accessor for MatterStateSnapshot();
  v104 = *(v110 - 8);
  v6 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v83 - v21;
  v108 = type metadata accessor for HomeState();
  v95 = *(v108 - 8);
  v22 = *(v95 + 64);
  v23 = MEMORY[0x1EEE9AC00](v108);
  v111 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v83 - v25;
  v93 = type metadata accessor for StateSnapshot(0);
  v26 = *(v93 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v83 - v30;
  v106 = sub_1D1E66A7C();
  v100 = *(v106 - 8);
  v31 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v83 - v35;
  v113 = *a2;
  v37 = sub_1D1AD6544(&v113, a1);
  v103 = "snapshotModerator";
  sub_1D1E67E3C();
  v38 = sub_1D1E67E7C();
  (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
  v39 = qword_1EC642358;

  v40 = v3;

  v41 = a1;
  if (v39 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v42 = qword_1EC64ABE8;
    v43 = sub_1D1AD642C();
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = v43;
    v44[4] = v37;
    v44[5] = v40;
    v44[6] = v41;

    sub_1D1AD6C28(0xD00000000000001CLL, v103 | 0x8000000000000000, v36, 0, 0, &unk_1D1E96C88, v44, &unk_1F4D7A3F0);

    sub_1D1741A30(v36, &unk_1EC6442C0, &qword_1D1E741A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6428F8, &qword_1D1E7E7E0);
    v45 = sub_1D1E68BAC();
    v46 = 0;
    v47 = v37 + 64;
    v48 = 1 << *(v37 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v37 + 64);
    v83 = (v48 + 63) >> 6;
    v51 = v100;
    v91 = v100 + 16;
    v90 = v26 + 7;
    v89 = (v104 + 56);
    v102 = (v26 + 6);
    v88 = (v104 + 48);
    v99 = v45;
    v87 = v45 + 64;
    v86 = (v100 + 32);
    v36 = v37;
    v97 = v8;
    v98 = v13;
    v85 = v26;
    v84 = v37;
    v41 = v110;
    if (!v50)
    {
      break;
    }

    while (1)
    {
      v52 = __clz(__rbit64(v50));
      v103 = (v50 - 1) & v50;
LABEL_11:
      v37 = v52 | (v46 << 6);
      v55 = *(v51 + 72) * v37;
      (*(v51 + 16))(v105, *(v36 + 6) + v55, v106);
      v56 = *(v36 + 7) + v26[9] * v37;
      v57 = v107;
      sub_1D1AD7678(v56, v107, type metadata accessor for StateSnapshot);
      v58 = v57;
      v59 = v109;
      sub_1D1AD7678(v58, v109, type metadata accessor for StateSnapshot);
      v60 = v26[7];
      v61 = v93;
      v60(v59, 0, 1, v93);
      v62 = v96;
      if (qword_1EE07D498 != -1)
      {
        swift_once();
      }

      v63 = __swift_project_value_buffer(v41, qword_1EE07D4A0);
      v64 = v112;
      sub_1D1AD7678(v63, v112, type metadata accessor for MatterStateSnapshot);
      (*v89)(v64, 0, 1, v41);
      sub_1D1741C08(v59, v62, &unk_1EC649E30, &unk_1D1E91250);
      v65 = *v102;
      if ((*v102)(v62, 1, v61) == 1)
      {
        v66 = v101;
        v67 = v92;
        if (qword_1EE07D9E0 != -1)
        {
          swift_once();
        }

        v68 = __swift_project_value_buffer(v61, qword_1EE07D9E8);
        sub_1D1AD7678(v68, v67, type metadata accessor for StateSnapshot);
        if (v65(v62, 1, v61) != 1)
        {
          sub_1D1741A30(v62, &unk_1EC649E30, &unk_1D1E91250);
        }
      }

      else
      {
        v67 = v92;
        sub_1D1AD76E0(v62, v92, type metadata accessor for StateSnapshot);
        v66 = v101;
      }

      sub_1D1AD76E0(v67, v111, type metadata accessor for StateSnapshot);
      v26 = &qword_1D1E92B10;
      sub_1D1741C08(v112, v66, &unk_1EC64F390, &qword_1D1E92B10);
      v69 = *v88;
      v70 = v66;
      v71 = v66;
      v72 = v110;
      v73 = (*v88)(v70, 1, v110);
      v104 = v55;
      if (v73 == 1)
      {
        v74 = v63;
        v75 = v97;
        sub_1D1AD7678(v74, v97, type metadata accessor for MatterStateSnapshot);
        if (v69(v71, 1, v72) != 1)
        {
          sub_1D1741A30(v101, &unk_1EC64F390, &qword_1D1E92B10);
        }
      }

      else
      {
        v75 = v97;
        sub_1D1AD76E0(v71, v97, type metadata accessor for MatterStateSnapshot);
      }

      v40 = v37;
      sub_1D1AD76E0(v75, v111 + *(v108 + 24), type metadata accessor for MatterStateSnapshot);
      v13 = v98;
      v8 = &unk_1EC64F390;
      sub_1D1741C08(v112, v98, &unk_1EC64F390, &qword_1D1E92B10);
      if (v69(v13, 1, v72) == 1)
      {
        sub_1D1741A30(v13, &unk_1EC64F390, &qword_1D1E92B10);
        v76 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v76 = *&v13[*(v72 + 28)];

        sub_1D1AD7050(v13, type metadata accessor for MatterStateSnapshot);
      }

      v77 = v109;
      sub_1D1741A30(v112, &unk_1EC64F390, &qword_1D1E92B10);
      sub_1D1741A30(v77, &unk_1EC649E30, &unk_1D1E91250);
      v78 = v111;
      *(v111 + *(v108 + 20)) = v76;
      v36 = v94;
      sub_1D1AD76E0(v78, v94, type metadata accessor for HomeState);
      sub_1D1AD7050(v107, type metadata accessor for StateSnapshot);
      *(v87 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v41 = v99;
      (*v86)(v99[6] + v104, v105, v106);
      sub_1D1AD76E0(v36, v41[7] + *(v95 + 72) * v37, type metadata accessor for HomeState);
      v79 = v41[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        break;
      }

      v41[2] = v81;
      v51 = v100;
      v36 = v84;
      v50 = v103;
      v26 = v85;
      v41 = v110;
      if (!v103)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_6:
  v53 = v46;
  while (1)
  {
    v46 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v46 >= v83)
    {
      break;
    }

    v54 = *(v47 + 8 * v46);
    ++v53;
    if (v54)
    {
      v52 = __clz(__rbit64(v54));
      v103 = (v54 - 1) & v54;
      goto LABEL_11;
    }
  }

  return v99;
}

void *HomeState.Stream.fastStartIndirectly(with:homesToPerformSnapshotsIfPossible:)(objc_class *a1, unint64_t *a2)
{
  v4 = *a2;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v5 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    os_unfair_lock_lock((v2 + 16));
    v8 = *(v2 + 20);
    v9 = *(v2 + 21);
    v10 = *(v2 + 23);
    os_unfair_lock_unlock((v2 + 16));
    os_unfair_lock_lock((v2 + 16));
    *(v2 + 20) = v8;
    *(v2 + 21) = v9;
    *(v2 + 22) = 0;
    *(v2 + 23) = v10;
    os_unfair_lock_unlock((v2 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64A290);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6834C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Attempted to fastStartIndirectly but HomeState.Stream isn't supported", v14, 2u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v15 = MEMORY[0x1E69E7CC0];

    return sub_1D18DA7F8(v15);
  }

  else
  {
    v6.value.super.isa = a1;
    HomeState.Stream.setupIndirectConfiguration(with:)(v6);
    v16 = v4;
    return sub_1D1ACBF90(a1, &v16);
  }
}

Swift::Void __swiftcall HomeState.Stream.setupIndirectConfiguration(with:)(HMHomeManager_optional with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v6 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    os_unfair_lock_lock((v1 + 16));
    v16 = *(v1 + 20);
    v17 = *(v1 + 21);
    v18 = *(v1 + 23);
    os_unfair_lock_unlock((v1 + 16));
    os_unfair_lock_lock((v1 + 16));
    *(v1 + 20) = v16;
    *(v1 + 21) = v17;
    *(v1 + 22) = 0;
    *(v1 + 23) = v18;
    os_unfair_lock_unlock((v1 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EC64A290);
    v24 = sub_1D1E6707C();
    v20 = sub_1D1E6834C();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D16EC000, v24, v20, "Attempted to setupIndirectConfiguration but HomeState.Stream isn't supported", v21, 2u);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    v22 = v24;
  }

  else
  {
    os_unfair_lock_lock((v1 + 16));
    v7 = *(v1 + 20);
    v8 = *(v1 + 21);
    v9 = *(v1 + 23);
    os_unfair_lock_unlock((v1 + 16));
    os_unfair_lock_lock((v1 + 16));
    *(v1 + 20) = v7;
    *(v1 + 21) = v8;
    *(v1 + 22) = 0;
    *(v1 + 23) = v9;
    os_unfair_lock_unlock((v1 + 16));
    atomic_store(1u, (v1 + 57));
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = qword_1EC642358;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC64ABE8;
    v14 = sub_1D1AD642C();
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v1;
    v15[5] = v11;

    sub_1D1AD6C28(0, 0, v5, 0, 0, &unk_1D1E96C60, v15, &unk_1F4D7A3F0);

    sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
  }
}

uint64_t sub_1D1ACD0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ACD174, v6, 0);
}

uint64_t sub_1D1ACD174()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v4 = *(v1 + 64);
  *(v1 + 64) = Strong;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1ACD210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(type metadata accessor for StateSnapshot(0) - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ACD3A4, v13, 0);
}

uint64_t sub_1D1ACD3A4()
{
  v1 = v0[5];
  v41 = v0[6];
  v37 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v36 = (63 - v3) >> 6;
  v38 = v0[8];
  v40 = v0[11];
  v39 = v0[5];

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_12:
      v11 = v0[12];
      v10 = v0[13];
      v12 = v0[9];
      v13 = v0[10];
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v15 = v14 | (v7 << 6);
      (*(v40 + 16))(v11, *(v39 + 48) + *(v40 + 72) * v15, v13);
      sub_1D1AD7678(*(v39 + 56) + *(v38 + 72) * v15, v12, type metadata accessor for StateSnapshot);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      v17 = *(v16 + 48);
      (*(v40 + 32))(v10, v11, v13);
      sub_1D1AD76E0(v12, v10 + v17, type metadata accessor for StateSnapshot);
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
      v9 = v7;
LABEL_13:
      v18 = v0[14];
      sub_1D1741A90(v0[13], v18, &qword_1EC645430, &qword_1D1E799C0);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
      {
        break;
      }

      v20 = v0[14];
      v22 = v0[9];
      v21 = v0[10];
      sub_1D1AD76E0(v20 + *(v19 + 48), v22, type metadata accessor for StateSnapshot);
      v23 = *(v41 + 24);
      sub_1D1AFCD30(v22);
      sub_1D1AD7050(v22, type metadata accessor for StateSnapshot);
      result = (*(v40 + 8))(v20, v21);
      v6 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    v32 = v0[5];

    swift_beginAccess();
    v33 = *(v30 + 64);
    *(v30 + 64) = v31;

    v34 = v31;
    v43.value.super.isa = 0;
    HomeState.Stream.startIfNeeded(homeManager:)(v43);

    v35 = v0[1];

    return v35();
  }

  else
  {
LABEL_5:
    if (v36 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v36;
    }

    v9 = v8 - 1;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v36)
      {
        v24 = v0[13];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
        v4 = 0;
        goto LABEL_13;
      }

      v4 = *(v37 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static HomeState.Stream.overrideIsSupported.getter()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  return v0;
}

void sub_1D1ACD820(char *a1@<X8>)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  *a1 = v2;
}

void sub_1D1ACD898(char *a1)
{
  v1 = *a1;
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = v1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

void static HomeState.Stream.overrideIsSupported.setter(char a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = a1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

void (*static HomeState.Stream.overrideIsSupported.modify(char *a1))(char *a1)
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v2 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  *a1 = v2;
  return sub_1D1ACDA1C;
}

void sub_1D1ACDA1C(char *a1)
{
  v1 = *a1;
  os_unfair_lock_lock(&dword_1EE07AF80);
  byte_1EE07AF84 = v1;

  os_unfair_lock_unlock(&dword_1EE07AF80);
}

uint64_t sub_1D1ACDA84()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_weakInit();
  v3 = *(MEMORY[0x1E69E88F0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A910, &qword_1D1E96EB8);
  *v4 = v0;
  v4[1] = sub_1D1ACDB98;
  v6 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96EB0, v6, sub_1D1AD79E4, v2, 0, 0, v5);
}

uint64_t sub_1D1ACDB98()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1D1AD7BF4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1D1AD7BFC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1ACDCD4()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_weakInit();
  v3 = *(MEMORY[0x1E69E88F0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A808, &qword_1D1E96D58);
  *v4 = v0;
  v4[1] = sub_1D1ACDDE8;
  v6 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96D50, v6, sub_1D1AD7380, v2, 0, 0, v5);
}

uint64_t sub_1D1ACDDE8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1D1A0EFD4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1D19D88F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1ACDF24()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  swift_weakInit();
  v3 = *(MEMORY[0x1E69E88F0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B0, &qword_1D1E96E40);
  *v4 = v0;
  v4[1] = sub_1D1ACDB98;
  v6 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E96E38, v6, sub_1D1AD77F8, v2, 0, 0, v5);
}

uint64_t sub_1D1ACE038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  sub_1D1ACE7D0(v9 + *(v10 + 28), v7, a2);
  os_unfair_lock_unlock(v9);
  return sub_1D1741A30(v7, &qword_1EC64A918, &qword_1D1E96EC0);
}

uint64_t sub_1D1ACE190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
  sub_1D1ACF228(v9 + *(v10 + 28), v7, a2);
  os_unfair_lock_unlock(v9);
  return sub_1D1741A30(v7, &qword_1EC64A810, &qword_1D1E96D60);
}

uint64_t sub_1D1ACE2E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = (a2 + *(*a2 + 96));
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
  sub_1D1ACFE18(v9 + *(v10 + 28), v7, a2);
  os_unfair_lock_unlock(v9);
  return sub_1D1741A30(v7, &qword_1EC64A8B8, &qword_1D1E96E48);
}

uint64_t sub_1D1ACE440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A918, &qword_1D1E96EC0);
  }

  return result;
}

uint64_t sub_1D1ACE570()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A810, &qword_1D1E96D60);
  }

  return result;
}

uint64_t sub_1D1ACE6A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    v6 = (v5 + *(*v5 + 96));
    os_unfair_lock_lock(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v6 + *(v7 + 28), v3, v5);
    os_unfair_lock_unlock(v6);

    return sub_1D1741A30(v3, &qword_1EC64A8B8, &qword_1D1E96E48);
  }

  return result;
}

uint64_t sub_1D1ACE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A920, &qword_1D1E96EC8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v87 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A930, &qword_1D1E96ED8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v87 - v30;
  v32 = a2;
  v33 = a1;
  sub_1D1AD0A08(v32, &v87 - v30);
  sub_1D1741C08(v31, v29, &qword_1EC64A930, &qword_1D1E96ED8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
  if ((*(*(v34 - 8) + 48))(v29, 1, v34) == 1)
  {
    goto LABEL_2;
  }

  v87 = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 36)))
        {
          sub_1D1E67F5C();
        }

        goto LABEL_33;
      }

      v57 = v93;
      v58 = *(*v93 + 104);
      v59 = sub_1D1E67E7C();
      (*(*(v59 - 8) + 56))(v24, 1, 1, v59);
      v60 = swift_allocObject();
      swift_weakInit();
      v62 = v90;
      v61 = v91;
      (*(v90 + 16))(v20, v57 + v58, v91);
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = (v18 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      (*(v62 + 32))(v65 + v63, v20, v61);
      *(v65 + v64) = v60;
      v66 = sub_1D17C6EF0(0, 0, v24, &unk_1D1E96F00, v65);
      sub_1D1741A30(v87, &qword_1EC64A930, &qword_1D1E96ED8);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 36);
      v68 = *(v33 + v67);

      *(v33 + v67) = v66;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v74 = v94;
        sub_1D1741A90(v29, v94, &qword_1EC64A920, &qword_1D1E96EC8);
        v75 = v92;
        sub_1D1741C08(v74, v92, &qword_1EC64A920, &qword_1D1E96EC8);
        v77 = v96;
        v76 = v97;
        if ((*(v96 + 48))(v75, 1, v97) == 1)
        {
          sub_1D1741A30(v75, &qword_1EC64A920, &qword_1D1E96EC8);
        }

        else
        {
          v98 = 0;
          sub_1D1E67D6C();
          (*(v77 + 8))(v75, v76);
        }

        v31 = v87;
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
        v83 = *(v82 + 40);
        v84 = *(v33 + v83);

        *(v33 + v83) = MEMORY[0x1E69E7CC0];
        if (*(v33 + *(v82 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v74, &qword_1EC64A920, &qword_1D1E96EC8);
        goto LABEL_2;
      }

      v46 = v96;
      v45 = v97;
      v47 = v89;
      (*(v96 + 16))(v89, v29, v97);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
      v49 = *(v48 + 40);
      v50 = v33;
      v51 = *(v33 + v49);
      if (!*(v51 + 16))
      {
        v85 = v48;
        v86 = *(v46 + 8);
        v86(v47, v45);
        (*(v46 + 32))(v88, v29, v45);
        v98 = 0;
        sub_1D1E67D6C();
        if (*(v50 + *(v85 + 36)))
        {
          sub_1D1E67F5C();
        }

        v86(v88, v45);
        goto LABEL_33;
      }

      v98 = v51;

      sub_1D1E67D6C();
      v52 = *(v46 + 8);
      v52(v47, v45);
      sub_1D1741A30(v87, &qword_1EC64A930, &qword_1D1E96ED8);

      *(v50 + v49) = MEMORY[0x1E69E7CC0];
      return (v52)(v29, v45);
    }
  }

  else
  {
    v38 = a1;
    if (EnumCaseMultiPayload > 1)
    {
      v31 = v87;
      if (EnumCaseMultiPayload != 2)
      {
        v78 = *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48)];
        v79 = v95;
        v80 = v96;
        v81 = v97;
        (*(v96 + 32))(v95, v29, v97);
        v98 = v78;
        sub_1D1E67D5C();
        (*(v80 + 8))(v79, v81);
LABEL_2:
        v35 = v31;
        return sub_1D1741A30(v35, &qword_1EC64A930, &qword_1D1E96ED8);
      }

      v53 = v95;
      v54 = v96;
      v55 = v97;
      (*(v96 + 32))(v95, v29, v97);
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 40);
      v98 = *(v38 + v56);

      sub_1D1E67D6C();
      (*(v54 + 8))(v53, v55);
      sub_1D1741A30(v31, &qword_1EC64A930, &qword_1D1E96ED8);

      *(v38 + v56) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A948, &qword_1D1E96EF0);
        v40 = *v29;
        v41 = v95;
        v42 = v96;
        v43 = v97;
        (*(v96 + 32))(v95, &v29[*(v39 + 48)], v97);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643338, &qword_1D1E71798);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1D1E739C0;
        *(v44 + 32) = v40;
        v98 = v44;
        sub_1D1E67D6C();
        (*(v42 + 8))(v41, v43);
LABEL_33:
        v35 = v87;
        return sub_1D1741A30(v35, &qword_1EC64A930, &qword_1D1E96ED8);
      }

      v69 = *v29;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8) + 40);
      v71 = *(a1 + v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1D177E664(0, v71[2] + 1, 1, v71);
      }

      v73 = v71[2];
      v72 = v71[3];
      if (v73 >= v72 >> 1)
      {
        v71 = sub_1D177E664((v72 > 1), v73 + 1, 1, v71);
      }

      result = sub_1D1741A30(v87, &qword_1EC64A930, &qword_1D1E96ED8);
      v71[2] = v73 + 1;
      v71[v73 + 4] = v69;
      *(a1 + v70) = v71;
    }
  }

  return result;
}

uint64_t sub_1D1ACF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A818, &qword_1D1E96D68);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = *(v104 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v96 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v102 = *(v17 - 8);
  v18 = *(v102 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v93 = *(v24 - 8);
  v94 = v24;
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A828, &qword_1D1E96D78);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v91 - v37;
  v39 = a2;
  v40 = a1;
  sub_1D1AD105C(v39, &v91 - v37);
  sub_1D1741C08(v38, v36, &qword_1EC64A828, &qword_1D1E96D78);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
  if ((*(*(v41 - 8) + 48))(v36, 1, v41) == 1)
  {
LABEL_2:
    v42 = v38;
    return sub_1D1741A30(v42, &qword_1EC64A828, &qword_1D1E96D78);
  }

  v91 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v61 = v99;
        v62 = *(*v99 + 104);
        v63 = sub_1D1E67E7C();
        (*(*(v63 - 8) + 56))(v31, 1, 1, v63);
        v64 = swift_allocObject();
        swift_weakInit();
        v65 = v93;
        v66 = v61 + v62;
        v67 = v94;
        (*(v93 + 16))(v27, v66, v94);
        v68 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = 0;
        *(v69 + 24) = 0;
        (*(v65 + 32))(v69 + v68, v27, v67);
        *(v69 + ((v25 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;
        v70 = sub_1D17C6EF0(0, 0, v31, &unk_1D1E96DA0, v69);
        sub_1D1741A30(v91, &qword_1EC64A828, &qword_1D1E96D78);
        v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 36);
        v72 = *(v40 + v71);

        *(v40 + v71) = v70;
        return result;
      }

      if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 36)))
      {
        sub_1D1E67F5C();
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v79 = v36;
        v80 = v100;
        sub_1D1741A90(v79, v100, &qword_1EC64A818, &qword_1D1E96D68);
        v81 = v98;
        sub_1D1741C08(v80, v98, &qword_1EC64A818, &qword_1D1E96D68);
        v83 = v104;
        v82 = v105;
        if ((*(v104 + 48))(v81, 1, v105) == 1)
        {
          sub_1D1741A30(v81, &qword_1EC64A818, &qword_1D1E96D68);
        }

        else
        {
          v106 = 0;
          sub_1D1E67D6C();
          (*(v83 + 8))(v81, v82);
        }

        v38 = v91;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
        v87 = *(v86 + 40);
        v88 = *(v40 + v87);

        *(v40 + v87) = MEMORY[0x1E69E7CC0];
        if (*(v40 + *(v86 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v80, &qword_1EC64A818, &qword_1D1E96D68);
        goto LABEL_2;
      }

      v53 = v104;
      v52 = v105;
      v54 = v96;
      (*(v104 + 16))(v96, v36, v105);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
      v56 = *(v55 + 40);
      if (*(*(v40 + v56) + 16))
      {
        v106 = *(v40 + v56);

        sub_1D1E67D6C();
        v57 = *(v53 + 8);
        v57(v54, v52);
        sub_1D1741A30(v91, &qword_1EC64A828, &qword_1D1E96D78);

        *(v40 + v56) = MEMORY[0x1E69E7CC0];
        return (v57)(v36, v52);
      }

      v89 = v55;
      v90 = *(v53 + 8);
      v90(v54, v52);
      (*(v53 + 32))(v92, v36, v52);
      v106 = 0;
      sub_1D1E67D6C();
      if (*(v40 + *(v89 + 36)))
      {
        sub_1D1E67F5C();
      }

      v90(v92, v52);
    }

LABEL_32:
    v42 = v91;
    return sub_1D1741A30(v42, &qword_1EC64A828, &qword_1D1E96D78);
  }

  v45 = v104;
  v44 = v105;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v59 = v103;
      (*(v104 + 32))(v103, v36, v105);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 40);
      v106 = *(v40 + v60);

      sub_1D1E67D6C();
      (*(v45 + 8))(v59, v44);
      sub_1D1741A30(v91, &qword_1EC64A828, &qword_1D1E96D78);

      *(v40 + v60) = MEMORY[0x1E69E7CC0];
      return result;
    }

    v84 = *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48)];
    v85 = v103;
    (*(v45 + 32))(v103, v36, v44);
    v106 = v84;
    sub_1D1E67D5C();
    (*(v45 + 8))(v85, v44);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A840, &qword_1D1E96D90) + 48);
    v47 = v95;
    sub_1D1741A90(v36, v95, &qword_1EC643318, &qword_1D1E71770);
    v48 = v103;
    (*(v45 + 32))(v103, &v36[v46], v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643310, &qword_1D1E71768);
    v49 = *(v102 + 72);
    v50 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D1E739C0;
    sub_1D1741C08(v47, v51 + v50, &qword_1EC643318, &qword_1D1E71770);
    v106 = v51;
    sub_1D1E67D6C();
    (*(v45 + 8))(v48, v44);
    sub_1D1741A30(v47, &qword_1EC643318, &qword_1D1E71770);
    goto LABEL_32;
  }

  v73 = v101;
  sub_1D1741A90(v36, v101, &qword_1EC643318, &qword_1D1E71770);
  v74 = v97;
  sub_1D1741C08(v73, v97, &qword_1EC643318, &qword_1D1E71770);
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8) + 40);
  v76 = *(a1 + v75);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_1D177F22C(0, v76[2] + 1, 1, v76);
  }

  v78 = v76[2];
  v77 = v76[3];
  if (v78 >= v77 >> 1)
  {
    v76 = sub_1D177F22C(v77 > 1, v78 + 1, 1, v76);
  }

  sub_1D1741A30(v101, &qword_1EC643318, &qword_1D1E71770);
  sub_1D1741A30(v91, &qword_1EC64A828, &qword_1D1E96D78);
  v76[2] = v78 + 1;
  result = sub_1D1741A90(v74, v76 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v78, &qword_1EC643318, &qword_1D1E71770);
  *(a1 + v75) = v76;
  return result;
}

uint64_t sub_1D1ACFE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C0, &qword_1D1E96E50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = *(v104 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v96 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v102 = *(v17 - 8);
  v18 = *(v102 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v93 = *(v24 - 8);
  v94 = v24;
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D0, &qword_1D1E96E60);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v91 - v37;
  v39 = a2;
  v40 = a1;
  sub_1D1AD1970(v39, &v91 - v37);
  sub_1D1741C08(v38, v36, &qword_1EC64A8D0, &qword_1D1E96E60);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
  if ((*(*(v41 - 8) + 48))(v36, 1, v41) == 1)
  {
LABEL_2:
    v42 = v38;
    return sub_1D1741A30(v42, &qword_1EC64A8D0, &qword_1D1E96E60);
  }

  v91 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v61 = v99;
        v62 = *(*v99 + 104);
        v63 = sub_1D1E67E7C();
        (*(*(v63 - 8) + 56))(v31, 1, 1, v63);
        v64 = swift_allocObject();
        swift_weakInit();
        v65 = v93;
        v66 = v61 + v62;
        v67 = v94;
        (*(v93 + 16))(v27, v66, v94);
        v68 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = 0;
        *(v69 + 24) = 0;
        (*(v65 + 32))(v69 + v68, v27, v67);
        *(v69 + ((v25 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;
        v70 = sub_1D17C6EF0(0, 0, v31, &unk_1D1E96E88, v69);
        sub_1D1741A30(v91, &qword_1EC64A8D0, &qword_1D1E96E60);
        v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 36);
        v72 = *(v40 + v71);

        *(v40 + v71) = v70;
        return result;
      }

      if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 36)))
      {
        sub_1D1E67F5C();
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v79 = v36;
        v80 = v100;
        sub_1D1741A90(v79, v100, &qword_1EC64A8C0, &qword_1D1E96E50);
        v81 = v98;
        sub_1D1741C08(v80, v98, &qword_1EC64A8C0, &qword_1D1E96E50);
        v83 = v104;
        v82 = v105;
        if ((*(v104 + 48))(v81, 1, v105) == 1)
        {
          sub_1D1741A30(v81, &qword_1EC64A8C0, &qword_1D1E96E50);
        }

        else
        {
          v106 = 0;
          sub_1D1E67D6C();
          (*(v83 + 8))(v81, v82);
        }

        v38 = v91;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
        v87 = *(v86 + 40);
        v88 = *(v40 + v87);

        *(v40 + v87) = MEMORY[0x1E69E7CC0];
        if (*(v40 + *(v86 + 36)))
        {
          sub_1D1E67F5C();
        }

        sub_1D1741A30(v80, &qword_1EC64A8C0, &qword_1D1E96E50);
        goto LABEL_2;
      }

      v53 = v104;
      v52 = v105;
      v54 = v96;
      (*(v104 + 16))(v96, v36, v105);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
      v56 = *(v55 + 40);
      if (*(*(v40 + v56) + 16))
      {
        v106 = *(v40 + v56);

        sub_1D1E67D6C();
        v57 = *(v53 + 8);
        v57(v54, v52);
        sub_1D1741A30(v91, &qword_1EC64A8D0, &qword_1D1E96E60);

        *(v40 + v56) = MEMORY[0x1E69E7CC0];
        return (v57)(v36, v52);
      }

      v89 = v55;
      v90 = *(v53 + 8);
      v90(v54, v52);
      (*(v53 + 32))(v92, v36, v52);
      v106 = 0;
      sub_1D1E67D6C();
      if (*(v40 + *(v89 + 36)))
      {
        sub_1D1E67F5C();
      }

      v90(v92, v52);
    }

LABEL_32:
    v42 = v91;
    return sub_1D1741A30(v42, &qword_1EC64A8D0, &qword_1D1E96E60);
  }

  v45 = v104;
  v44 = v105;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v59 = v103;
      (*(v104 + 32))(v103, v36, v105);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 40);
      v106 = *(v40 + v60);

      sub_1D1E67D6C();
      (*(v45 + 8))(v59, v44);
      sub_1D1741A30(v91, &qword_1EC64A8D0, &qword_1D1E96E60);

      *(v40 + v60) = MEMORY[0x1E69E7CC0];
      return result;
    }

    v84 = *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48)];
    v85 = v103;
    (*(v45 + 32))(v103, v36, v44);
    v106 = v84;
    sub_1D1E67D5C();
    (*(v45 + 8))(v85, v44);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E8, &qword_1D1E96E78) + 48);
    v47 = v95;
    sub_1D1741A90(v36, v95, &unk_1EC64A270, &qword_1D1E71780);
    v48 = v103;
    (*(v45 + 32))(v103, &v36[v46], v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643320, &qword_1D1E71778);
    v49 = *(v102 + 72);
    v50 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D1E739C0;
    sub_1D1741C08(v47, v51 + v50, &unk_1EC64A270, &qword_1D1E71780);
    v106 = v51;
    sub_1D1E67D6C();
    (*(v45 + 8))(v48, v44);
    sub_1D1741A30(v47, &unk_1EC64A270, &qword_1D1E71780);
    goto LABEL_32;
  }

  v73 = v101;
  sub_1D1741A90(v36, v101, &unk_1EC64A270, &qword_1D1E71780);
  v74 = v97;
  sub_1D1741C08(v73, v97, &unk_1EC64A270, &qword_1D1E71780);
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0) + 40);
  v76 = *(a1 + v75);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_1D177F250(0, v76[2] + 1, 1, v76);
  }

  v78 = v76[2];
  v77 = v76[3];
  if (v78 >= v77 >> 1)
  {
    v76 = sub_1D177F250(v77 > 1, v78 + 1, 1, v76);
  }

  sub_1D1741A30(v101, &unk_1EC64A270, &qword_1D1E71780);
  sub_1D1741A30(v91, &qword_1EC64A8D0, &qword_1D1E96E60);
  v76[2] = v78 + 1;
  result = sub_1D1741A90(v74, v76 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v78, &unk_1EC64A270, &qword_1D1E71780);
  *(a1 + v75) = v76;
  return result;
}

void sub_1D1AD0A08(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  v5 = *(*(v40 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A930, &qword_1D1E96ED8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v38 - v20);
  sub_1D1741C08(a1, &v38 - v20, &qword_1EC64A918, &qword_1D1E96EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D1AD5180(*v21, v41);
    }

    else
    {
      v26 = v39;
      (*(v39 + 32))(v17, v21, v14);
      sub_1D1AD4100(v17, v41);
      (*(v26 + 8))(v17, v14);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v21;
      sub_1D1AD5494(*v21, v41);

      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1741C08(v2, v10, &qword_1EC649CE8, &qword_1D1E961D8);
      v23 = swift_getEnumCaseMultiPayload();
      if (v23 <= 7)
      {
        if (((1 << v23) & 0xB8) != 0)
        {
LABEL_8:
          sub_1D1741A30(v2, &qword_1EC649CE8, &qword_1D1E961D8);
          swift_storeEnumTagMultiPayload();
LABEL_9:
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
          v25 = v38;
          (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
LABEL_10:
          sub_1D1741A90(v25, v41, &qword_1EC64A930, &qword_1D1E96ED8);
          return;
        }

        if (((1 << v23) & 6) != 0)
        {
          sub_1D1741A30(v10, &qword_1EC649CE8, &qword_1D1E961D8);
          goto LABEL_8;
        }

        if (v23 == 6)
        {
          goto LABEL_9;
        }
      }

      v31 = v39;
      v32 = *(v39 + 32);
      v32(v17, v10, v14);
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
      v25 = v38;
      v32(v38, v17, v14);
      (*(v31 + 56))(v25, 0, 1, v14);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
      goto LABEL_10;
    }

    sub_1D1741C08(v2, v8, &qword_1EC649CE8, &qword_1D1E961D8);
    v28 = swift_getEnumCaseMultiPayload();
    if ((v28 - 3) >= 5)
    {
      if ((v28 - 1) >= 2)
      {
        v34 = v39;
        v35 = *(v39 + 32);
        v35(v17, v8, v14);
        sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
        swift_storeEnumTagMultiPayload();
        v36 = v41;
        v35(v41, v17, v14);
        (*(v34 + 56))(v36, 0, 1, v14);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        swift_storeEnumTagMultiPayload();
        (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
        return;
      }

      sub_1D1741A30(v8, &qword_1EC649CE8, &qword_1D1E961D8);
    }

    sub_1D1741A30(v2, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    v30 = v41;
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }
}

void sub_1D1AD105C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A828, &qword_1D1E96D78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v60 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  v6 = *(*(v63 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v63);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v60 - v25);
  sub_1D1741C08(a1, &v60 - v25, &qword_1EC64A810, &qword_1D1E96D60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v61;
      v32 = v62;
      (*(v61 + 32))(v22, v26, v62);
      sub_1D1AD4680(v22, v65);
      (*(v33 + 8))(v22, v32);
      return;
    }

    v38 = v18;
    sub_1D1741A90(v26, v18, &qword_1EC643318, &qword_1D1E71770);
    v39 = v64;
    sub_1D1741C08(v64, v14, &qword_1EC64A7E8, &qword_1D1E96D18);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 > 3)
    {
      if ((v40 - 6) < 2)
      {
        goto LABEL_30;
      }

      if (v40 != 4)
      {
        sub_1D1741A30(v39, &qword_1EC64A7E8, &qword_1D1E96D18);
        swift_storeEnumTagMultiPayload();
      }

      v41 = v65;
      sub_1D1741C08(v38, v65, &qword_1EC643318, &qword_1D1E71770);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      v43 = *(*(v42 - 8) + 56);
      v44 = v41;
    }

    else
    {
      if ((v40 - 1) < 2)
      {
        sub_1D1741A30(v14, &qword_1EC64A7E8, &qword_1D1E96D18);
LABEL_30:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        v43 = *(*(v50 - 8) + 56);
        v44 = v65;
        v49 = 1;
        goto LABEL_31;
      }

      if (v40)
      {
        goto LABEL_30;
      }

      v45 = v62;
      v46 = *(v61 + 32);
      v46(v22, v14, v62);
      sub_1D1741A30(v39, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A840, &qword_1D1E96D90) + 48);
      v48 = v65;
      sub_1D1741C08(v38, v65, &qword_1EC643318, &qword_1D1E71770);
      v46(&v48[v47], v22, v45);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      v43 = *(*(v42 - 8) + 56);
      v44 = v48;
    }

    v49 = 0;
    v50 = v42;
LABEL_31:
    v43(v44, v49, 1, v50);
    sub_1D1741A30(v38, &qword_1EC643318, &qword_1D1E71770);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v26;
    sub_1D1AD57F4(*v26, v65);

    return;
  }

  v28 = v64;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D1741C08(v64, v12, &qword_1EC64A7E8, &qword_1D1E96D18);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 <= 7)
    {
      if (((1 << v29) & 0xB8) != 0)
      {
LABEL_9:
        sub_1D1741A30(v28, &qword_1EC64A7E8, &qword_1D1E96D18);
        swift_storeEnumTagMultiPayload();
LABEL_10:
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        v31 = v60;
        (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
LABEL_11:
        sub_1D1741A90(v31, v65, &qword_1EC64A828, &qword_1D1E96D78);
        return;
      }

      if (((1 << v29) & 6) != 0)
      {
        sub_1D1741A30(v12, &qword_1EC64A7E8, &qword_1D1E96D18);
        goto LABEL_9;
      }

      if (v29 == 6)
      {
        goto LABEL_10;
      }
    }

    v52 = v61;
    v51 = v62;
    v53 = *(v61 + 32);
    v53(v22, v12, v62);
    sub_1D1741A30(v28, &qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    v31 = v60;
    v53(v60, v22, v51);
    (*(v52 + 56))(v31, 0, 1, v51);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v31, 0, 1, v54);
    goto LABEL_11;
  }

  sub_1D1741C08(v64, v9, &qword_1EC64A7E8, &qword_1D1E96D18);
  v35 = swift_getEnumCaseMultiPayload();
  if ((v35 - 3) >= 5)
  {
    if ((v35 - 1) >= 2)
    {
      v56 = v61;
      v55 = v62;
      v57 = *(v61 + 32);
      v57(v22, v9, v62);
      sub_1D1741A30(v28, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v58 = v65;
      v57(v65, v22, v55);
      (*(v56 + 56))(v58, 0, 1, v55);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      return;
    }

    sub_1D1741A30(v9, &qword_1EC64A7E8, &qword_1D1E96D18);
  }

  sub_1D1741A30(v28, &qword_1EC64A7E8, &qword_1D1E96D18);
  swift_storeEnumTagMultiPayload();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
  v37 = v65;
  swift_storeEnumTagMultiPayload();
  (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
}

void sub_1D1AD1970(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D0, &qword_1D1E96E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v60 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  v6 = *(*(v63 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v63);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v60 - v25);
  sub_1D1741C08(a1, &v60 - v25, &qword_1EC64A8B8, &qword_1D1E96E48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v61;
      v32 = v62;
      (*(v61 + 32))(v22, v26, v62);
      sub_1D1AD4C00(v22, v65);
      (*(v33 + 8))(v22, v32);
      return;
    }

    v38 = v18;
    sub_1D1741A90(v26, v18, &unk_1EC64A270, &qword_1D1E71780);
    v39 = v64;
    sub_1D1741C08(v64, v14, &qword_1EC64A890, &qword_1D1E96E00);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 > 3)
    {
      if ((v40 - 6) < 2)
      {
        goto LABEL_30;
      }

      if (v40 != 4)
      {
        sub_1D1741A30(v39, &qword_1EC64A890, &qword_1D1E96E00);
        swift_storeEnumTagMultiPayload();
      }

      v41 = v65;
      sub_1D1741C08(v38, v65, &unk_1EC64A270, &qword_1D1E71780);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      v43 = *(*(v42 - 8) + 56);
      v44 = v41;
    }

    else
    {
      if ((v40 - 1) < 2)
      {
        sub_1D1741A30(v14, &qword_1EC64A890, &qword_1D1E96E00);
LABEL_30:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        v43 = *(*(v50 - 8) + 56);
        v44 = v65;
        v49 = 1;
        goto LABEL_31;
      }

      if (v40)
      {
        goto LABEL_30;
      }

      v45 = v62;
      v46 = *(v61 + 32);
      v46(v22, v14, v62);
      sub_1D1741A30(v39, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E8, &qword_1D1E96E78) + 48);
      v48 = v65;
      sub_1D1741C08(v38, v65, &unk_1EC64A270, &qword_1D1E71780);
      v46(&v48[v47], v22, v45);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      v43 = *(*(v42 - 8) + 56);
      v44 = v48;
    }

    v49 = 0;
    v50 = v42;
LABEL_31:
    v43(v44, v49, 1, v50);
    sub_1D1741A30(v38, &unk_1EC64A270, &qword_1D1E71780);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v26;
    sub_1D1AD5B54(*v26, v65);

    return;
  }

  v28 = v64;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D1741C08(v64, v12, &qword_1EC64A890, &qword_1D1E96E00);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29 <= 7)
    {
      if (((1 << v29) & 0xB8) != 0)
      {
LABEL_9:
        sub_1D1741A30(v28, &qword_1EC64A890, &qword_1D1E96E00);
        swift_storeEnumTagMultiPayload();
LABEL_10:
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        v31 = v60;
        (*(*(v30 - 8) + 56))(v60, 1, 1, v30);
LABEL_11:
        sub_1D1741A90(v31, v65, &qword_1EC64A8D0, &qword_1D1E96E60);
        return;
      }

      if (((1 << v29) & 6) != 0)
      {
        sub_1D1741A30(v12, &qword_1EC64A890, &qword_1D1E96E00);
        goto LABEL_9;
      }

      if (v29 == 6)
      {
        goto LABEL_10;
      }
    }

    v52 = v61;
    v51 = v62;
    v53 = *(v61 + 32);
    v53(v22, v12, v62);
    sub_1D1741A30(v28, &qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    v31 = v60;
    v53(v60, v22, v51);
    (*(v52 + 56))(v31, 0, 1, v51);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v31, 0, 1, v54);
    goto LABEL_11;
  }

  sub_1D1741C08(v64, v9, &qword_1EC64A890, &qword_1D1E96E00);
  v35 = swift_getEnumCaseMultiPayload();
  if ((v35 - 3) >= 5)
  {
    if ((v35 - 1) >= 2)
    {
      v56 = v61;
      v55 = v62;
      v57 = *(v61 + 32);
      v57(v22, v9, v62);
      sub_1D1741A30(v28, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v58 = v65;
      v57(v65, v22, v55);
      (*(v56 + 56))(v58, 0, 1, v55);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      return;
    }

    sub_1D1741A30(v9, &qword_1EC64A890, &qword_1D1E96E00);
  }

  sub_1D1741A30(v28, &qword_1EC64A890, &qword_1D1E96E00);
  swift_storeEnumTagMultiPayload();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
  v37 = v65;
  swift_storeEnumTagMultiPayload();
  (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
}

uint64_t sub_1D1AD2284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA8, &qword_1D1E96180);
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A918, &qword_1D1E96EC0);
  v5[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD2400, 0, 0);
}

uint64_t sub_1D1AD2400()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v8, v6);
  sub_1D17D8EA8(&qword_1EC649CB0, &qword_1EC649C68, &qword_1D1E960B0);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AD2584;
  v11 = v0[20];
  v12 = v0[18];

  return MEMORY[0x1EEE6D8D0](v0 + 8, 0, 0);
}

uint64_t sub_1D1AD2584()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1D1AD29F0;
  }

  else
  {
    v3 = sub_1D1AD2698;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D1AD2698()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[14];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v0[25];
      v6 = v0[21];
      v7 = v0[22];
      *v7 = v1;
      swift_storeEnumTagMultiPayload();
      v8 = (v4 + *(*v4 + 96));

      os_unfair_lock_lock(v8);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
      sub_1D1ACE7D0(v8 + *(v9 + 28), v7, v4);
      if (v5)
      {

        os_unfair_lock_unlock(v8);
      }

      else
      {
        v17 = v0[22];
        os_unfair_lock_unlock(v8);

        sub_1D1741A30(v17, &qword_1EC64A918, &qword_1D1E96EC0);
        sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180);
        v18 = *(MEMORY[0x1E69E85B0] + 4);
        v19 = swift_task_alloc();
        v0[24] = v19;
        *v19 = v0;
        v19[1] = sub_1D1AD2584;
        v20 = v0[20];
        v21 = v0[18];

        MEMORY[0x1EEE6D8D0](v0 + 8, 0, 0);
      }

      return;
    }

    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v10 = v0[25];
  v11 = v0[14];
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = v0[23];
    v15 = (v12 + *(*v12 + 96));
    os_unfair_lock_lock(v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v15 + *(v16 + 28), v14, v13);
    os_unfair_lock_unlock(v15);
    if (v10)
    {
      return;
    }
  }

  v22 = v0[22];
  v23 = v0[20];
  v24 = v0[17];
  sub_1D1741A30(v0[23], &qword_1EC64A918, &qword_1D1E96EC0);

  v25 = v0[1];

  v25();
}

uint64_t sub_1D1AD29F0()
{
  v1 = v0[9];
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v2 = sub_1D1E68FEC();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = v0[23];
  v6 = v0[21];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D1741A30(v5, &qword_1EC64A918, &qword_1D1E96EC0);
  *v5 = v3;
  swift_storeEnumTagMultiPayload();
  v7 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = v0[23];
    v11 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
    sub_1D1ACE7D0(v11 + *(v12 + 28), v10, v9);
    os_unfair_lock_unlock(v11);
  }

  v13 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  sub_1D1741A30(v0[23], &qword_1EC64A918, &qword_1D1E96EC0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1AD2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A848, &qword_1D1E96DA8) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A850, &qword_1D1E96DB0);
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A810, &qword_1D1E96D60);
  v5[22] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD2E1C, 0, 0);
}

uint64_t sub_1D1AD2E1C()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[10];
  v8 = v0[11];
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v7, v6);
  sub_1D17D8EA8(&qword_1EC64A858, &qword_1EC649C40, qword_1D1E968E0);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC64A860, &qword_1EC64A850, &qword_1D1E96DB0);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AD2F9C;
  v11 = v0[21];
  v12 = v0[19];
  v13 = v0[15];

  return MEMORY[0x1EEE6D8D0](v13, 0, 0);
}

uint64_t sub_1D1AD2F9C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1D1AD348C;
  }

  else
  {
    v3 = sub_1D1AD30B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D1AD30B0()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v2 = v0[11];
    sub_1D1741A90(v1, v0[14], &qword_1EC643318, &qword_1D1E71770);
    Strong = swift_weakLoadStrong();
    v4 = v0[14];
    if (Strong)
    {
      v5 = v0[26];
      v6 = v0[23];
      sub_1D1741C08(v4, v6, &qword_1EC643318, &qword_1D1E71770);
      swift_storeEnumTagMultiPayload();
      v7 = (Strong + *(*Strong + 96));
      os_unfair_lock_lock(v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
      sub_1D1ACF228(v7 + *(v8 + 28), v6, Strong);
      if (v5)
      {

        os_unfair_lock_unlock(v7);
      }

      else
      {
        v25 = v0[23];
        v26 = v0[14];
        os_unfair_lock_unlock(v7);

        sub_1D1741A30(v26, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741A30(v25, &qword_1EC64A810, &qword_1D1E96D60);
        sub_1D17D8EA8(&qword_1EC64A860, &qword_1EC64A850, &qword_1D1E96DB0);
        v27 = *(MEMORY[0x1E69E85B0] + 4);
        v28 = swift_task_alloc();
        v0[25] = v28;
        *v28 = v0;
        v28[1] = sub_1D1AD2F9C;
        v29 = v0[21];
        v30 = v0[19];
        v31 = v0[15];

        MEMORY[0x1EEE6D8D0](v31, 0, 0);
      }

      return;
    }

    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    sub_1D1741A30(v4, &qword_1EC643318, &qword_1D1E71770);
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[26];
  v13 = v0[11];
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = v0[24];
    v17 = (v14 + *(*v14 + 96));
    os_unfair_lock_lock(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v17 + *(v18 + 28), v16, v15);
    os_unfair_lock_unlock(v17);
    if (v12)
    {
      return;
    }
  }

  v19 = v0[23];
  v20 = v0[21];
  v21 = v0[18];
  v23 = v0[14];
  v22 = v0[15];
  sub_1D1741A30(v0[24], &qword_1EC64A810, &qword_1D1E96D60);

  v24 = v0[1];

  v24();
}

uint64_t sub_1D1AD348C()
{
  v1 = sub_1D1E68FEC();
  if (!v1)
  {
    v1 = swift_allocError();
  }

  v2 = v1;
  v3 = v0[24];
  v4 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_1D1741A30(v3, &qword_1EC64A810, &qword_1D1E96D60);
  *v3 = v2;
  swift_storeEnumTagMultiPayload();
  v5 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[24];
    v9 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
    sub_1D1ACF228(v9 + *(v10 + 28), v8, v7);
    os_unfair_lock_unlock(v9);
  }

  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[18];
  v15 = v0[14];
  v14 = v0[15];
  sub_1D1741A30(v0[24], &qword_1EC64A810, &qword_1D1E96D60);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1AD3680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8F0, &qword_1D1E96E90) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8F8, &qword_1D1E96E98);
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B8, &qword_1D1E96E48);
  v5[22] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AD389C, 0, 0);
}

uint64_t sub_1D1AD389C()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[10];
  v8 = v0[11];
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v7, v6);
  sub_1D17D8EA8(&qword_1EC64A900, &qword_1EC649C50, &qword_1D1E96058);
  sub_1D1E6801C();
  swift_beginAccess();
  sub_1D17D8EA8(&qword_1EC64A908, &qword_1EC64A8F8, &qword_1D1E96E98);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AD3A1C;
  v11 = v0[21];
  v12 = v0[19];
  v13 = v0[15];

  return MEMORY[0x1EEE6D8D0](v13, 0, 0);
}

uint64_t sub_1D1AD3A1C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1D1AD3F0C;
  }

  else
  {
    v3 = sub_1D1AD3B30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D1AD3B30()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v2 = v0[11];
    sub_1D1741A90(v1, v0[14], &unk_1EC64A270, &qword_1D1E71780);
    Strong = swift_weakLoadStrong();
    v4 = v0[14];
    if (Strong)
    {
      v5 = v0[26];
      v6 = v0[23];
      sub_1D1741C08(v4, v6, &unk_1EC64A270, &qword_1D1E71780);
      swift_storeEnumTagMultiPayload();
      v7 = (Strong + *(*Strong + 96));
      os_unfair_lock_lock(v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
      sub_1D1ACFE18(v7 + *(v8 + 28), v6, Strong);
      if (v5)
      {

        os_unfair_lock_unlock(v7);
      }

      else
      {
        v25 = v0[23];
        v26 = v0[14];
        os_unfair_lock_unlock(v7);

        sub_1D1741A30(v26, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741A30(v25, &qword_1EC64A8B8, &qword_1D1E96E48);
        sub_1D17D8EA8(&qword_1EC64A908, &qword_1EC64A8F8, &qword_1D1E96E98);
        v27 = *(MEMORY[0x1E69E85B0] + 4);
        v28 = swift_task_alloc();
        v0[25] = v28;
        *v28 = v0;
        v28[1] = sub_1D1AD3A1C;
        v29 = v0[21];
        v30 = v0[19];
        v31 = v0[15];

        MEMORY[0x1EEE6D8D0](v31, 0, 0);
      }

      return;
    }

    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    sub_1D1741A30(v4, &unk_1EC64A270, &qword_1D1E71780);
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[26];
  v13 = v0[11];
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = v0[24];
    v17 = (v14 + *(*v14 + 96));
    os_unfair_lock_lock(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v17 + *(v18 + 28), v16, v15);
    os_unfair_lock_unlock(v17);
    if (v12)
    {
      return;
    }
  }

  v19 = v0[23];
  v20 = v0[21];
  v21 = v0[18];
  v23 = v0[14];
  v22 = v0[15];
  sub_1D1741A30(v0[24], &qword_1EC64A8B8, &qword_1D1E96E48);

  v24 = v0[1];

  v24();
}

uint64_t sub_1D1AD3F0C()
{
  v1 = sub_1D1E68FEC();
  if (!v1)
  {
    v1 = swift_allocError();
  }

  v2 = v1;
  v3 = v0[24];
  v4 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_1D1741A30(v3, &qword_1EC64A8B8, &qword_1D1E96E48);
  *v3 = v2;
  swift_storeEnumTagMultiPayload();
  v5 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[24];
    v9 = (Strong + *(*Strong + 96));
    os_unfair_lock_lock(v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
    sub_1D1ACFE18(v9 + *(v10 + 28), v8, v7);
    os_unfair_lock_unlock(v9);
  }

  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[18];
  v15 = v0[14];
  v14 = v0[15];
  sub_1D1741A30(v0[24], &qword_1EC64A8B8, &qword_1D1E96E48);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1AD4100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - v8);
  sub_1D1741C08(v3, &v25 - v8, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
        (*(*(v21 - 8) + 16))(v3, a1, v21);
        swift_storeEnumTagMultiPayload();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
      }

      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      v18 = *(v17 - 8);
      (*(v18 + 16))(a2, a1, v17);
      (*(v18 + 56))(a2, 0, 1, v17);
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v24 - 8) + 16))(a2, a1, v24);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
        (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
        return sub_1D1741A30(v9, &qword_1EC649CE8, &qword_1D1E961D8);
      }

      v19 = *v9;
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      *v3 = v19;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v20 - 8) + 16))(a2, a1, v20);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v9;
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v15 - 8) + 16))(a2, a1, v15);
      *(a2 + v14) = v13;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
      (*(*(v23 - 8) + 16))(v3, a1, v23);
      swift_storeEnumTagMultiPayload();
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1D1AD4680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - v8);
  sub_1D1741C08(v3, &v25 - v8, &qword_1EC64A7E8, &qword_1D1E96D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
        (*(*(v21 - 8) + 16))(v3, a1, v21);
        swift_storeEnumTagMultiPayload();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
      }

      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      v18 = *(v17 - 8);
      (*(v18 + 16))(a2, a1, v17);
      (*(v18 + 56))(a2, 0, 1, v17);
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v24 - 8) + 16))(a2, a1, v24);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
        (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
        return sub_1D1741A30(v9, &qword_1EC64A7E8, &qword_1D1E96D18);
      }

      v19 = *v9;
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      *v3 = v19;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v20 - 8) + 16))(a2, a1, v20);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v9;
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      swift_storeEnumTagMultiPayload();
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v15 - 8) + 16))(a2, a1, v15);
      *(a2 + v14) = v13;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
      (*(*(v23 - 8) + 16))(v3, a1, v23);
      swift_storeEnumTagMultiPayload();
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1D1AD4C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v25 - v8);
  sub_1D1741C08(v3, &v25 - v8, &qword_1EC64A890, &qword_1D1E96E00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
        (*(*(v21 - 8) + 16))(v3, a1, v21);
        swift_storeEnumTagMultiPayload();
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
      }

      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      v18 = *(v17 - 8);
      (*(v18 + 16))(a2, a1, v17);
      (*(v18 + 56))(a2, 0, 1, v17);
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v24 - 8) + 16))(a2, a1, v24);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
        (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
        return sub_1D1741A30(v9, &qword_1EC64A890, &qword_1D1E96E00);
      }

      v19 = *v9;
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      *v3 = v19;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v20 - 8) + 16))(a2, a1, v20);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v9;
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      swift_storeEnumTagMultiPayload();
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v15 - 8) + 16))(a2, a1, v15);
      *(a2 + v14) = v13;
    }

    else
    {
      sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
      (*(*(v23 - 8) + 16))(v3, a1, v23);
      swift_storeEnumTagMultiPayload();
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1D1AD5180@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  sub_1D1741C08(v3, &v21 - v13, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 4)
    {
      sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
      swift_storeEnumTagMultiPayload();
    }

    *a2 = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    v17 = *(v7 + 32);
    v17(v10, v14, v6);
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A948, &qword_1D1E96EF0) + 48);
    *a2 = a1;
    v17(&a2[v18], v10, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    goto LABEL_10;
  }

  sub_1D1741A30(v14, &qword_1EC649CE8, &qword_1D1E961D8);
LABEL_11:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
  return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
}

id sub_1D1AD5494@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A928, &qword_1D1E96ED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  sub_1D1741C08(v3, &v23 - v13, &qword_1EC649CE8, &qword_1D1E961D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v14, &qword_1EC649CE8, &qword_1D1E961D8);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    v18 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36));
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
LABEL_8:
    v19 = *(v7 + 32);
    v19(v10, v14, v6);
    sub_1D1741A30(v3, &qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A940, &qword_1D1E96EE8) + 48);
    v19(a2, v10, v6);
    *&a2[v20] = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A938, &qword_1D1E96EE0);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  return a1;
}

id sub_1D1AD57F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A820, &qword_1D1E96D70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  sub_1D1741C08(v3, &v23 - v13, &qword_1EC64A7E8, &qword_1D1E96D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v14, &qword_1EC64A7E8, &qword_1D1E96D18);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    v18 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F0, &qword_1D1E96D20) + 36));
    sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
LABEL_8:
    v19 = *(v7 + 32);
    v19(v10, v14, v6);
    sub_1D1741A30(v3, &qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A838, &qword_1D1E96D88) + 48);
    v19(a2, v10, v6);
    *&a2[v20] = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A830, &qword_1D1E96D80);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  return a1;
}

id sub_1D1AD5B54@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8C8, &qword_1D1E96E58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  sub_1D1741C08(v3, &v23 - v13, &qword_1EC64A890, &qword_1D1E96E00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    sub_1D1741A30(v14, &qword_1EC64A890, &qword_1D1E96E00);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    v18 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A898, &qword_1D1E96E08) + 36));
    sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
LABEL_8:
    v19 = *(v7 + 32);
    v19(v10, v14, v6);
    sub_1D1741A30(v3, &qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8E0, &qword_1D1E96E70) + 48);
    v19(a2, v10, v6);
    *&a2[v20] = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8D8, &qword_1D1E96E68);
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  return a1;
}

uint64_t sub_1D1AD5EB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD5ED4, 0, 0);
}

uint64_t sub_1D1AD5ED4()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A910, &qword_1D1E96EB8);
  *v2 = v0;
  v2[1] = sub_1D1AD5FB4;
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD7BEC, v4, v3);
}

uint64_t sub_1D1AD5FB4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AD7BF8, 0, 0);
  }

  else
  {
    **(v3 + 24) = *(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D1AD60F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD6110, 0, 0);
}

uint64_t sub_1D1AD6110()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A808, &qword_1D1E96D58);
  *v2 = v0;
  v2[1] = sub_1D1AD61F0;
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD74B4, v4, v3);
}

uint64_t sub_1D1AD61F0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19557A0, 0, 0);
  }

  else
  {
    **(v3 + 24) = *(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D1AD632C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1AD634C, 0, 0);
}

uint64_t sub_1D1AD634C()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8B0, &qword_1D1E96E40);
  *v2 = v0;
  v2[1] = sub_1D1AD5FB4;
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1AD792C, v4, v3);
}

unint64_t sub_1D1AD642C()
{
  result = qword_1EC649DA0;
  if (!qword_1EC649DA0)
  {
    type metadata accessor for HomeDataActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649DA0);
  }

  return result;
}

uint64_t sub_1D1AD6484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1ACD0DC(a1, v4, v5, v7, v6);
}

unint64_t sub_1D1AD6544(unint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v54 - v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v65 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for StateSnapshot(0);
  v68 = *(v64 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x1EEE9AC00](v64);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = (&v54 - v13);
  v62 = sub_1D1E66A7C();
  v55 = *(v62 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v70 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*a1)
  {
    sub_1D1A82B50(*a1);
    sub_1D1A82B60(v16);
    sub_1D1A82B60(0);
    v17 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v18 = [a2 homes];
    sub_1D1821898();
    v19 = sub_1D1E67C1C();

    if (v19 >> 62)
    {
LABEL_34:
      v20 = sub_1D1E6873C();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v21 = [a2 *(v17 + 320)];
      v22 = sub_1D1E67C1C();

      v23 = sub_1D1AD7C00();
      v24 = sub_1D1AD7EF4(v22, v23, v16);

      v25 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
      if (v24 >> 62)
      {
        v17 = sub_1D1E6873C();
        if (v17)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_7:
          v26 = 0;
          v60 = v24 & 0xFFFFFFFFFFFFFF8;
          v61 = v24 & 0xC000000000000001;
          v54 = v55 + 16;
          v58 = (v55 + 8);
          v59 = (v68 + 56);
          v56 = v17;
          v57 = v24;
          do
          {
            if (v61)
            {
              v27 = MEMORY[0x1D3891EF0](v26, v24);
            }

            else
            {
              if (v26 >= *(v60 + 16))
              {
                goto LABEL_31;
              }

              v27 = *(v24 + 8 * v26 + 32);
            }

            v16 = v27;
            if (__OFADD__(v26, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v69 = v26 + 1;
            v28 = [v27 uniqueIdentifier];
            v29 = v70;
            sub_1D1E66A5C();

            v30 = v12;
            v31 = v65;
            *v65 = v16;
            swift_storeEnumTagMultiPayload();
            v32 = v67;
            (*v59)(v67, 1, 1, v64);
            v33 = v16;
            v34 = sub_1D179B6E8(&unk_1F4D65BA8);
            swift_arrayDestroy();
            v16 = v33;
            v35 = a2;
            v36 = v63;
            v37 = v31;
            v12 = v30;
            StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v37, v35, v16, v32, v34, v63);
            sub_1D1AD76E0(v36, v30, type metadata accessor for StateSnapshot);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v25;
            v17 = sub_1D1742188(v29);
            v40 = v25[2];
            v41 = (v39 & 1) == 0;
            v42 = v40 + v41;
            if (__OFADD__(v40, v41))
            {
              goto LABEL_32;
            }

            v43 = v39;
            if (v25[3] >= v42)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v25 = v71;
                if (v39)
                {
                  goto LABEL_8;
                }
              }

              else
              {
                sub_1D17375D4();
                v25 = v71;
                if (v43)
                {
                  goto LABEL_8;
                }
              }
            }

            else
            {
              sub_1D1725B48(v42, isUniquelyReferenced_nonNull_native);
              v44 = sub_1D1742188(v70);
              if ((v43 & 1) != (v45 & 1))
              {
                result = sub_1D1E690FC();
                __break(1u);
                return result;
              }

              v17 = v44;
              v25 = v71;
              if (v43)
              {
LABEL_8:
                sub_1D1AD70B0(v12, v25[7] + *(v68 + 72) * v17);

                (*v58)(v70, v62);
                goto LABEL_9;
              }
            }

            v25[(v17 >> 6) + 8] |= 1 << v17;
            v46 = v55;
            v47 = v70;
            v48 = v62;
            (*(v55 + 16))(v25[6] + *(v55 + 72) * v17, v70, v62);
            sub_1D1AD76E0(v12, v25[7] + *(v68 + 72) * v17, type metadata accessor for StateSnapshot);

            (*(v46 + 8))(v47, v48);
            v49 = v25[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_33;
            }

            v25[2] = v51;
LABEL_9:
            ++v26;
            v17 = v56;
            v24 = v57;
          }

          while (v69 != v56);
        }
      }

      return v25;
    }
  }

  else
  {
    sub_1D1A82B60(0);
    sub_1D1A82B60(0);
  }

  v52 = MEMORY[0x1E69E7CC0];

  return sub_1D18D70C0(v52);
}

uint64_t sub_1D1AD6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a6;
  v31 = a5;
  v35 = a4;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D1741C08(a3, v14, &unk_1EC6442C0, &qword_1D1E741A0);
  v21 = sub_1D1E67E7C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_1D1741A30(v14, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v22 + 8))(v14, v21);
  }

  if (a2)
  {
    v23 = sub_1D1E678CC() + 32;
    v24 = swift_allocObject();
    *(v24 + 16) = v34;
    *(v24 + 24) = a7;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v40[0] = 0;
      v40[1] = 0;
      v25 = v40;
      v40[2] = v17;
      v40[3] = v19;
    }

    else
    {
      v25 = 0;
    }

    if (v35 != 1)
    {
      v39[0] = 6;
      v39[1] = v25;
      v39[2] = v35;
      v39[3] = v31;
      v25 = v39;
    }

    v36 = 7;
    v37 = v25;
    v38 = v23;
    v28 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    *(v26 + 24) = a7;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v41[0] = 0;
      v41[1] = 0;
      v27 = v41;
      v41[2] = v17;
      v41[3] = v19;
    }

    else
    {
      v27 = 0;
    }

    if (v35 != 1)
    {
      v40[4] = 6;
      v40[5] = v27;
      v40[6] = v35;
      v40[7] = v31;
    }

    v28 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  return v28;
}

uint64_t sub_1D1AD6F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1ACD210(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AD7050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AD70B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1AD7114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC42A8(a1, v4, v5, v6);
}

uint64_t sub_1D1AD71C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC74C0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D1AD7288(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {

    return sub_1D1861470(a2, a3);
  }

  return result;
}

uint64_t sub_1D1AD72D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4BFC;

  return sub_1D1AD60F0(a1, v1);
}

uint64_t sub_1D1AD7388(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD2C00(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1AD74BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC5B50(a1, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D1AD75B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AC7D18(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1D1AD7678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AD76E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AD7748(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1AD632C(a1, v1);
}

uint64_t sub_1D1AD7800(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD3680(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1AD7934(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4CF0;

  return sub_1D1AD5EB4(a1, v1);
}

uint64_t objectdestroy_54Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1D1AD7AC0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AD2284(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1AD7C00()
{
  v1 = [v0 currentHome];
  if (v1)
  {
    return v1;
  }

  v2 = sub_1D174A5B8(&qword_1EC642DB8, &unk_1EC649E60, 0x1E696CBA0);
  v3 = *(v2 + 48);
  v4 = sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0);
  v3(v4, v2);

  v14 = sub_1D1749970(v5);
  sub_1D1ADFA9C(&v14);

  v6 = v14;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v7 = *(v14 + 16);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = sub_1D1E6873C();
  if (!v7)
  {
LABEL_22:

    return 0;
  }

LABEL_5:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v10 = MEMORY[0x1D3891EF0](v8, v6);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v1 = v10;
    v11 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ([v10 isPrimary])
    {
      goto LABEL_18;
    }

    ++v8;
  }

  while (v11 != v7);
  if (v9)
  {
    v12 = MEMORY[0x1D3891EF0](0, v6);
    goto LABEL_17;
  }

  if (*(v6 + 16))
  {
    v12 = *(v6 + 32);
LABEL_17:
    v1 = v12;
LABEL_18:

    return v1;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_1D1AD7DD8(void *a1, void *a2)
{
  v4 = [a1 isPrimary];
  if (v4 != [a2 isPrimary])
  {
    return [a1 isPrimary];
  }

  v6 = [a1 name];
  v7 = sub_1D1E6781C();
  v9 = v8;

  v10 = [a2 name];
  v11 = sub_1D1E6781C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    return 0;
  }

  else
  {
    v15 = sub_1D1E6904C();

    return (v15 & 1);
  }
}

uint64_t sub_1D1AD7EF4(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v37 = *(v6 - 8);
  v7 = v37[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - v11;
  result = MEMORY[0x1E69E7CC0];
  switch(a3)
  {
    case 0:
      return result;
    case 1:
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D1E73FA0;
        *(v13 + 32) = a2;
        v14 = a2;
        return v13;
      }

      return result;
    case 2:
      if (a1 >> 62)
      {
        goto LABEL_28;
      }

      return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v47 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (2)
  {
    v16 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v36 = a1;
    v38 = a1 + 32;
    v39 = v15;
    v44 = v37 + 2;
    v45 = a3 + 56;
    v17 = (v37 + 1);
    while (v41)
    {
      v18 = MEMORY[0x1D3891EF0](v16, v36);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_25:
        __break(1u);
        return v47;
      }

LABEL_16:
      v42 = v18;
      v43 = v20;
      v21 = [v18 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(a3 + 16) && (v22 = *(a3 + 40), sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]), v23 = sub_1D1E676DC(), v24 = -1 << *(a3 + 32), v25 = v23 & ~v24, ((*(v45 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        v27 = v37[9];
        a1 = v37[2];
        while (1)
        {
          v28 = a3;
          (a1)(v10, *(a3 + 48) + v27 * v25, v6);
          sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v29 = sub_1D1E6775C();
          v30 = *v17;
          (*v17)(v10, v6);
          if (v29)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          a3 = v28;
          if (((*(v45 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v30(v46, v6);
        sub_1D1E6896C();
        v31 = *(v47 + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        a3 = v28;
      }

      else
      {
LABEL_11:
        (*v17)(v46, v6);
      }

      v16 = v43;
      if (v43 == v39)
      {
        return v47;
      }
    }

    if (v16 < *(v40 + 16))
    {
      v18 = *(v38 + 8 * v16);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_28:
    v32 = sub_1D1E6873C();
    if (!v32)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v33 = v32;
    v34 = sub_1D1808600(v32, 0);

    sub_1D18D2FC0(v34 + 32, v33, a1);
    a1 = v35;

    result = v34;
    if (a1 != v33)
    {
      __break(1u);
LABEL_31:
      v15 = sub_1D1E6873C();
      if (!v15)
      {
        return MEMORY[0x1E69E7CC0];
      }

      continue;
    }

    return result;
  }
}

uint64_t HomeState.Stream.StateSubscription.Reason.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1AE37A8(v0, v9, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v11 = (*(*(v10 - 8) + 48))(v9, 3, v10);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    if (!v11)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1D3892850](1);
      sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      return (*(v2 + 8))(v5, v1);
    }

    v13 = 0;
  }

  return MEMORY[0x1D3892850](v13);
}

uint64_t HomeState.Stream.StateSubscription.Reason.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1AE37A8(v1, v10, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    v13 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v13);
    return sub_1D1E6926C();
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v3 + 8))(v6, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD87A0()
{
  sub_1D1E6920C();
  HomeState.Stream.StateSubscription.Reason.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 2)
  {
    v4 = 2;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](3);

  return sub_1D176D4E8(a1, v3);
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v4, v1);
        return sub_1D1E6926C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD88F4()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v4, v1);
        return sub_1D1E6926C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AD8978(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 2)
  {
    v4 = 2;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](3);

  return sub_1D176D4E8(a1, v3);
}

uint64_t sub_1D1AD8A08()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1D3892850](3);
        sub_1D176D4E8(v4, v1);
        return sub_1D1E6926C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

unint64_t HomeState.Stream.set(homeStateSubscriptionSpecification:)(void (***a1)(char *, uint64_t))
{
  v2 = v1;
  v246 = sub_1D1E66A7C();
  v242 = *(v246 - 8);
  v4 = *(v242 + 64);
  v5 = MEMORY[0x1EEE9AC00](v246);
  v7 = &v220 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v220 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v220 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v240 = &v220 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v220 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v220 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v220 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v231 = (&v220 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v243 = &v220 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v245 = &v220 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v244 = (&v220 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v241 = &v220 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v220 - v35;
  v37 = *a1;
  swift_beginAccess();
  v38 = *(v2 + 40);
  if (v38)
  {
    if (v38 == 1)
    {
      if (v37 == 1)
      {
        sub_1D1A82B60(1uLL);
        v39 = 1;
        return sub_1D1A82B60(v39);
      }
    }

    else if (v38 == 2)
    {
      if (v37 == 2)
      {
        sub_1D1A82B60(2uLL);
        v39 = 2;
        return sub_1D1A82B60(v39);
      }
    }

    else
    {
      if (v37 >= 3)
      {
        v223 = v10;
        sub_1D1A82B50(v38);
        sub_1D1A82B50(v38);
        sub_1D1A82B50(v37);
        v49 = sub_1D17A6E98(v38, v37);
        sub_1D1A82B60(v38);
        sub_1D1A82B60(v37);
        result = sub_1D1A82B60(v38);
        if (v49)
        {
          return result;
        }

        goto LABEL_13;
      }

      sub_1D1A82B50(*(v2 + 40));
    }
  }

  else if (!v37)
  {
    sub_1D1A82B60(0);
    v39 = 0;
    return sub_1D1A82B60(v39);
  }

  v223 = v10;
  sub_1D1A82B50(v37);
  sub_1D1A82B60(v38);
  sub_1D1A82B60(v37);
LABEL_13:
  if (qword_1EC642328 != -1)
  {
    goto LABEL_178;
  }

LABEL_14:
  v40 = sub_1D1E6709C();
  v41 = __swift_project_value_buffer(v40, qword_1EC64A290);
  sub_1D1A82B50(v37);
  v226 = v41;
  v42 = sub_1D1E6707C();
  v43 = sub_1D1E6831C();
  sub_1D1A82B60(v37);
  v44 = os_log_type_enabled(v42, v43);
  v239 = v13;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v248[0] = v46;
    *v45 = 136315138;
    LODWORD(v238) = v43;
    v237 = v45;
    v236 = v46;
    if (v37)
    {
      if (v37 == 1)
      {
        v47 = 0xEB00000000656D6FLL;
        v48 = 0x48746E6572727563;
      }

      else if (v37 == 2)
      {
        v47 = 0xE800000000000000;
        v48 = 0x73656D6F486C6C61;
      }

      else
      {
        v250 = 0x2873656D6F68;
        v251 = 0xE600000000000000;
        sub_1D1A82B50(v37);
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        v51 = sub_1D1E6817C();
        MEMORY[0x1D3890F70](v51);

        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        sub_1D1A82B60(v37);
        v48 = v250;
        v47 = v251;
      }
    }

    else
    {
      v47 = 0xE400000000000000;
      v48 = 1701736302;
    }

    v52 = sub_1D1B1312C(v48, v47, v248);

    v53 = v237;
    *(v237 + 4) = v52;
    _os_log_impl(&dword_1D16EC000, v42, v238, "Setting home state subscription specification: %s", v53, 0xCu);
    v54 = v236;
    __swift_destroy_boxed_opaque_existential_1(v236);
    MEMORY[0x1D3893640](v54, -1, -1);
    MEMORY[0x1D3893640](v53, -1, -1);
  }

  v55 = *(v2 + 40);
  *(v2 + 40) = v37;
  sub_1D1A82B50(v37);
  sub_1D1A82B50(v55);
  sub_1D1A82B60(v55);
  if (!*(*(v2 + 32) + 16))
  {
    v39 = v55;
    return sub_1D1A82B60(v39);
  }

  v221 = v24;
  v220 = v7;
  v225 = v21;
  v224 = v18;
  swift_beginAccess();
  v234 = v2;
  v56 = *(v2 + 64);
  v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (v56)
  {
    v57 = v56;
    v58 = [v57 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v59 = sub_1D1E67C1C();

    v60 = sub_1D1AD7C00();
    *&v238 = sub_1D1AD7EF4(v59, v60, v55);
    sub_1D1A82B60(v55);
  }

  else
  {
    sub_1D1A82B60(v55);
    *&v238 = MEMORY[0x1E69E7CC0];
  }

  v61 = v241;
  v62 = *(v234 + 64);
  if (v62)
  {
    v63 = v62;
    v64 = [v63 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v65 = sub_1D1E67C1C();

    v66 = sub_1D1AD7C00();
    v237 = sub_1D1AD7EF4(v65, v66, v37);
  }

  else
  {
    v237 = MEMORY[0x1E69E7CC0];
  }

  v37 = v231;
  v13 = v239;
  v236 = v238 >> 62;
  if (v238 >> 62)
  {
    v24 = sub_1D1E6873C();
  }

  else
  {
    v24 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = MEMORY[0x1E69E7CC0];
  v233 = v24;
  if (v24)
  {
    v248[0] = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v67 = v248[0];
    v68 = v240;
    if ((v238 & 0xC000000000000001) != 0)
    {
      v69 = 0;
      v18 = v242 + 32;
      do
      {
        MEMORY[0x1D3891EF0](v69, v238);
        v24 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v248[0] = v67;
        v2 = *(v67 + 16);
        v70 = *(v67 + 24);
        if (v2 >= v70 >> 1)
        {
          sub_1D178CEFC(v70 > 1, v2 + 1, 1);
          v67 = v248[0];
        }

        ++v69;
        *(v67 + 16) = v2 + 1;
        (*(v242 + 32))(v67 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v2, v36, v246);
      }

      while (v233 != v69);
    }

    else
    {
      v18 = v238 + 32;
      do
      {
        v71 = *v18;
        v7 = [v71 uniqueIdentifier];
        sub_1D1E66A5C();

        v248[0] = v67;
        v2 = *(v67 + 16);
        v72 = *(v67 + 24);
        if (v2 >= v72 >> 1)
        {
          sub_1D178CEFC(v72 > 1, v2 + 1, 1);
          v67 = v248[0];
        }

        *(v67 + 16) = v2 + 1;
        (*(v242 + 32))(v67 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v2, v68, v246);
        v18 += 8;
        --v24;
      }

      while (v24);
    }

    v37 = v231;
    v13 = v239;
    v61 = v241;
  }

  v240 = sub_1D17841EC(v67);

  v73 = v237 >> 62;
  if (v237 >> 62)
  {
    v36 = sub_1D1E6873C();
  }

  else
  {
    v36 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = MEMORY[0x1E69E7CC0];
  v232 = v36;
  v222 = v73;
  if (v36)
  {
    v248[0] = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      goto LABEL_182;
    }

    v75 = v248[0];
    if ((v237 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      v18 = v242 + 32;
      do
      {
        MEMORY[0x1D3891EF0](v36, v237);
        v24 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v248[0] = v75;
        v77 = *(v75 + 16);
        v76 = *(v75 + 24);
        v13 = (v77 + 1);
        if (v77 >= v76 >> 1)
        {
          sub_1D178CEFC(v76 > 1, v77 + 1, 1);
          v75 = v248[0];
        }

        ++v36;
        *(v75 + 16) = v13;
        (*(v242 + 32))(v75 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v77, v61, v246);
      }

      while (v232 != v36);
    }

    else
    {
      v18 = v237 + 32;
      do
      {
        v78 = *v18;
        v7 = [v78 uniqueIdentifier];
        sub_1D1E66A5C();

        v248[0] = v75;
        v80 = *(v75 + 16);
        v79 = *(v75 + 24);
        v24 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          sub_1D178CEFC(v79 > 1, v80 + 1, 1);
          v75 = v248[0];
        }

        *(v75 + 16) = v24;
        (*(v242 + 32))(v75 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v80, v13, v246);
        v18 += 8;
        --v36;
      }

      while (v36);
    }

    v74 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1D17841EC(v75);

  v81 = v240;
  if (sub_1D17A6E98(v240, v21))
  {
  }

  v248[0] = v74;
  if (v236)
  {
    v2 = sub_1D1E6873C();
    if (!v2)
    {
LABEL_87:
      v7 = v74;
      goto LABEL_88;
    }
  }

  else
  {
    v2 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_87;
    }
  }

  v82 = 0;
  v230 = v238 & 0xC000000000000001;
  v229 = v238 & 0xFFFFFFFFFFFFFF8;
  v227 = v238 + 32;
  v241 = (v21 + 56);
  v239 = (v242 + 16);
  v18 = v242 + 8;
  v228 = v2;
  while (!v230)
  {
    if (v82 >= *(v229 + 16))
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      swift_once();
      goto LABEL_14;
    }

    v83 = *(v227 + 8 * v82);
    v84 = __OFADD__(v82, 1);
    v85 = (v82 + 1);
    if (v84)
    {
      goto LABEL_84;
    }

LABEL_75:
    v236 = v85;
    v235 = v83;
    v86 = [v83 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v21 + 16) && (v87 = *(v21 + 40), sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]), v88 = sub_1D1E676DC(), v89 = -1 << *(v21 + 32), v7 = v88 & ~v89, ((*&v241[(v7 >> 3) & 0xFFFFFFFFFFFFFF8] >> v7) & 1) != 0))
    {
      v36 = ~v89;
      v13 = *(v242 + 72);
      v90 = *(v242 + 16);
      while (1)
      {
        v91 = v21;
        v24 = v245;
        v92 = v246;
        v90(v245, *(v21 + 48) + v13 * v7, v246);
        sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v93 = sub_1D1E6775C();
        v94 = *v18;
        (*v18)(v24, v92);
        if (v93)
        {
          break;
        }

        v7 = (v7 + 1) & v36;
        v21 = v91;
        if (((*&v241[(v7 >> 3) & 0xFFFFFFFFFFFFFF8] >> v7) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v94(v244, v246);
      v21 = v91;
    }

    else
    {
LABEL_70:
      (*v18)(v244, v246);
      sub_1D1E6896C();
      v7 = *(v248[0] + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
    }

    v2 = v228;
    v82 = v236;
    v37 = v231;
    if (v236 == v228)
    {
      goto LABEL_85;
    }
  }

  v83 = MEMORY[0x1D3891EF0](v82, v238);
  v84 = __OFADD__(v82, 1);
  v85 = (v82 + 1);
  if (!v84)
  {
    goto LABEL_75;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  v7 = v248[0];
  v81 = v240;
  v74 = MEMORY[0x1E69E7CC0];
LABEL_88:

  v248[0] = v74;
  if (v222)
  {
    v95 = sub_1D1E6873C();
  }

  else
  {
    v95 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  v236 = v7;
  if (!v95)
  {
    goto LABEL_109;
  }

  v24 = 0;
  v235 = (v237 & 0xC000000000000001);
  v230 = v237 & 0xFFFFFFFFFFFFFF8;
  v228 = (v237 + 32);
  v244 = (v81 + 56);
  v241 = (v242 + 16);
  v37 = (v242 + 8);
  v229 = v95;
  while (2)
  {
    if (v235)
    {
      v97 = MEMORY[0x1D3891EF0](v24, v237);
      v84 = __OFADD__(v24++, 1);
      if (v84)
      {
        break;
      }

      goto LABEL_98;
    }

    if (v24 >= *(v230 + 16))
    {
      goto LABEL_177;
    }

    v97 = v228[v24];
    v84 = __OFADD__(v24++, 1);
    if (!v84)
    {
LABEL_98:
      v239 = v97;
      v98 = [v97 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v81 + 16) && (v99 = *(v81 + 40), sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]), v100 = sub_1D1E676DC(), v101 = -1 << *(v81 + 32), v102 = v100 & ~v101, ((*(&v244->isa + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) != 0))
      {
        v18 = ~v101;
        v36 = *(v242 + 72);
        v2 = *(v242 + 16);
        while (1)
        {
          v103 = *(v81 + 48) + v36 * v102;
          v104 = v245;
          v105 = v246;
          (v2)(v245, v103, v246);
          sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v21 = sub_1D1E6775C();
          v13 = *v37;
          (*v37)(v104, v105);
          if (v21)
          {
            break;
          }

          v102 = (v102 + 1) & v18;
          v81 = v240;
          if (((*(&v244->isa + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        v13(v243, v246);
        v81 = v240;
      }

      else
      {
LABEL_93:
        (*v37)(v243, v246);
        sub_1D1E6896C();
        v96 = *(v248[0] + 16);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      v7 = v236;
      if (v24 == v229)
      {
        goto LABEL_108;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_108:
  v2 = v248[0];
  v37 = v231;
LABEL_109:

  v106 = sub_1D1E6707C();
  v107 = sub_1D1E6835C();

  v108 = os_log_type_enabled(v106, v107);
  v243 = v2;
  if (!v108)
  {

    v116 = (v7 & 0x4000000000000000);
    goto LABEL_165;
  }

  LODWORD(v241) = v107;
  v24 = swift_slowAlloc();
  v109 = swift_slowAlloc();
  v248[0] = v109;
  *v24 = 136315906;
  v110 = v233;
  v244 = v106;
  v240 = v109;
  if (!v233)
  {

    v111 = MEMORY[0x1E69E7CC0];
    goto LABEL_125;
  }

  v247 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v233 & ~(v233 >> 63), 0);
  if (v110 < 0)
  {
    __break(1u);
  }

  else
  {
    v111 = v247;
    if ((v238 & 0xC000000000000001) != 0)
    {
      v112 = 0;
      do
      {
        MEMORY[0x1D3891EF0](v112, v238);
        v113 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v247 = v111;
        v115 = *(v111 + 16);
        v114 = *(v111 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1D178CEFC(v114 > 1, v115 + 1, 1);
          v111 = v247;
        }

        ++v112;
        *(v111 + 16) = v115 + 1;
        (*(v242 + 32))(v111 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v115, v37, v246);
      }

      while (v233 != v112);
    }

    else
    {
      v117 = 32;
      v118 = v223;
      do
      {
        v119 = *(v238 + v117);
        v120 = [v119 uniqueIdentifier];
        sub_1D1E66A5C();

        v247 = v111;
        v122 = *(v111 + 16);
        v121 = *(v111 + 24);
        if (v122 >= v121 >> 1)
        {
          sub_1D178CEFC(v121 > 1, v122 + 1, 1);
          v111 = v247;
        }

        *(v111 + 16) = v122 + 1;
        (*(v242 + 32))(v111 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v122, v118, v246);
        v117 += 8;
        --v110;
      }

      while (v110);
    }

    v2 = v243;
LABEL_125:
    v123 = MEMORY[0x1D3891260](v111, v246);
    v125 = v124;

    v126 = sub_1D1B1312C(v123, v125, v248);

    *(v24 + 4) = v126;
    *(v24 + 12) = 2080;
    v127 = v232;
    if (!v232)
    {

      v128 = MEMORY[0x1E69E7CC0];
      goto LABEL_139;
    }

    v247 = MEMORY[0x1E69E7CC0];
    result = sub_1D178CEFC(0, v232 & ~(v232 >> 63), 0);
    if ((v127 & 0x8000000000000000) == 0)
    {
      v128 = v247;
      if ((v237 & 0xC000000000000001) != 0)
      {
        v129 = 0;
        v130 = v221;
        do
        {
          MEMORY[0x1D3891EF0](v129, v237);
          v131 = [swift_unknownObjectRetain() uniqueIdentifier];
          sub_1D1E66A5C();
          swift_unknownObjectRelease_n();

          v247 = v128;
          v133 = *(v128 + 16);
          v132 = *(v128 + 24);
          if (v133 >= v132 >> 1)
          {
            sub_1D178CEFC(v132 > 1, v133 + 1, 1);
            v128 = v247;
          }

          ++v129;
          *(v128 + 16) = v133 + 1;
          (*(v242 + 32))(v128 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v133, v130, v246);
        }

        while (v232 != v129);
      }

      else
      {
        v134 = 32;
        v135 = v220;
        do
        {
          v136 = *(v237 + v134);
          v137 = [v136 uniqueIdentifier];
          sub_1D1E66A5C();

          v247 = v128;
          v139 = *(v128 + 16);
          v138 = *(v128 + 24);
          if (v139 >= v138 >> 1)
          {
            sub_1D178CEFC(v138 > 1, v139 + 1, 1);
            v128 = v247;
          }

          *(v128 + 16) = v139 + 1;
          (*(v242 + 32))(v128 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v139, v135, v246);
          v134 += 8;
          --v127;
        }

        while (v127);
      }

      v2 = v243;
LABEL_139:
      v140 = MEMORY[0x1D3891260](v128, v246);
      v142 = v141;

      v143 = sub_1D1B1312C(v140, v142, v248);

      *(v24 + 14) = v143;
      *(v24 + 22) = 2080;
      v116 = v236;
      v239 = (v236 & 0x4000000000000000);
      if ((v236 & 0x8000000000000000) != 0 || (v236 & 0x4000000000000000) != 0)
      {
        goto LABEL_209;
      }

      v144 = *(v236 + 16);
      while (2)
      {
        v145 = MEMORY[0x1E69E7CC0];
        if (v144)
        {
          v146 = v116;
          v247 = MEMORY[0x1E69E7CC0];
          result = sub_1D178CEFC(0, v144 & ~(v144 >> 63), 0);
          if (v144 < 0)
          {
            goto LABEL_213;
          }

          v147 = 0;
          v145 = v247;
          v148 = v146;
          v149 = v146 & 0xC000000000000001;
          v150 = v225;
          do
          {
            if (v149)
            {
              v151 = MEMORY[0x1D3891EF0](v147, v148);
            }

            else
            {
              v151 = *(v148 + 8 * v147 + 32);
            }

            v152 = v151;
            v153 = [v152 uniqueIdentifier];
            sub_1D1E66A5C();

            v247 = v145;
            v155 = *(v145 + 16);
            v154 = *(v145 + 24);
            if (v155 >= v154 >> 1)
            {
              sub_1D178CEFC(v154 > 1, v155 + 1, 1);
              v145 = v247;
            }

            ++v147;
            *(v145 + 16) = v155 + 1;
            (*(v242 + 32))(v145 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v155, v150, v246);
            v148 = v236;
          }

          while (v144 != v147);
          v2 = v243;
        }

        v156 = MEMORY[0x1D3891260](v145, v246);
        v158 = v157;

        v159 = sub_1D1B1312C(v156, v158, v248);

        *(v24 + 24) = v159;
        *(v24 + 32) = 2080;
        if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v160 = sub_1D1E6873C();
        }

        else
        {
          v160 = *(v2 + 16);
        }

        v161 = MEMORY[0x1E69E7CC0];
        if (v160)
        {
          v247 = MEMORY[0x1E69E7CC0];
          result = sub_1D178CEFC(0, v160 & ~(v160 >> 63), 0);
          if (v160 < 0)
          {
            goto LABEL_214;
          }

          v162 = 0;
          v161 = v247;
          v163 = v2 & 0xC000000000000001;
          v164 = v224;
          do
          {
            if (v163)
            {
              v165 = MEMORY[0x1D3891EF0](v162, v243);
            }

            else
            {
              v165 = *(v243 + 8 * v162 + 32);
            }

            v166 = v165;
            v167 = [v166 uniqueIdentifier];
            sub_1D1E66A5C();

            v247 = v161;
            v2 = *(v161 + 16);
            v168 = *(v161 + 24);
            if (v2 >= v168 >> 1)
            {
              sub_1D178CEFC(v168 > 1, v2 + 1, 1);
              v161 = v247;
            }

            ++v162;
            *(v161 + 16) = v2 + 1;
            (*(v242 + 32))(v161 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v2, v164, v246);
          }

          while (v160 != v162);
        }

        v169 = MEMORY[0x1D3891260](v161, v246);
        v171 = v170;

        v172 = sub_1D1B1312C(v169, v171, v248);

        *(v24 + 34) = v172;
        v173 = v244;
        _os_log_impl(&dword_1D16EC000, v244, v241, "Changing subscribed homes from %s to %s.\nRemoving %s and adding %s", v24, 0x2Au);
        v174 = v240;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v174, -1, -1);
        MEMORY[0x1D3893640](v24, -1, -1);

        v7 = v236;
        v116 = v239;
LABEL_165:
        if ((v7 & 0x8000000000000000) != 0 || v116)
        {
LABEL_183:
          v175 = sub_1D1E6873C();
          if (!v175)
          {
            goto LABEL_184;
          }

LABEL_168:
          if (v175 >= 1)
          {
            v176 = 0;
            v24 = *(v234 + 128);
            do
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v177 = MEMORY[0x1D3891EF0](v176, v7);
              }

              else
              {
                v177 = *(v7 + 8 * v176 + 32);
              }

              v178 = v177;
              v179 = v234;
              os_unfair_lock_lock((v234 + 16));
              v180 = *(v179 + 22);
              os_unfair_lock_unlock((v179 + 16));
              if (v180 == 1)
              {
                sub_1D1ADC8E4(v178, "unregisterForAllRelevantAccessories() called on %s (%{public}s)", 0);
                HMHome.homeDelegate.setter(0, 0);
              }

              ++v176;
              sub_1D1AB1A6C(v178);
            }

            while (v175 != v176);
            goto LABEL_184;
          }

          __break(1u);
        }

        else
        {
          v175 = *(v7 + 16);
          if (v175)
          {
            goto LABEL_168;
          }

LABEL_184:

          v182 = v243;
          if ((v243 & 0x8000000000000000) != 0 || (v243 & 0x4000000000000000) != 0)
          {
            v183 = sub_1D1E6873C();
          }

          else
          {
            v183 = *(v243 + 16);
          }

          v116 = &v252;
          v2 = v234;
          if (!v183)
          {
          }

          if (v183 >= 1)
          {
            v184 = 0;
            v185 = v182 & 0xC000000000000001;
            v239 = (v242 + 8);
            *&v181 = 136315394;
            v238 = v181;
            v242 = v182 & 0xC000000000000001;
            v240 = v183;
            while (1)
            {
              if (v185)
              {
                v186 = MEMORY[0x1D3891EF0](v184, v182);
              }

              else
              {
                v186 = *(v182 + 8 * v184 + 32);
              }

              v187 = v186;
              os_unfair_lock_lock((v2 + 16));
              v188 = *(v2 + 22);
              os_unfair_lock_unlock((v2 + 16));
              if (v188 != 1)
              {
                goto LABEL_203;
              }

              v189 = v187;
              v190 = sub_1D1E6707C();
              v191 = sub_1D1E6835C();

              v192 = os_log_type_enabled(v190, v191);
              v244 = v187;
              if (v192)
              {
                v193 = swift_slowAlloc();
                v241 = swift_slowAlloc();
                v248[0] = v241;
                *v193 = v238;
                v194 = [v189 name];
                v195 = sub_1D1E6781C();
                v197 = v196;

                v198 = sub_1D1B1312C(v195, v197, v248);

                *(v193 + 4) = v198;
                *(v193 + 12) = 2082;
                v199 = [v189 uniqueIdentifier];
                v200 = v245;
                sub_1D1E66A5C();

                sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
                v201 = v246;
                v202 = sub_1D1E68FAC();
                v204 = v203;
                v205 = v200;
                v183 = v240;
                v206 = v201;
                v182 = v243;
                (*v239)(v205, v206);
                v207 = sub_1D1B1312C(v202, v204, v248);

                *(v193 + 14) = v207;
                _os_log_impl(&dword_1D16EC000, v190, v191, "registerForAllRelevantAccessories() called on %s (%{public}s)", v193, 0x16u);
                v208 = v241;
                swift_arrayDestroy();
                MEMORY[0x1D3893640](v208, -1, -1);
                MEMORY[0x1D3893640](v193, -1, -1);
              }

              sub_1D1ADCBE0(v189, 1);
              v209 = *(v2 + 120);
              v210 = sub_1D1A830C0(&qword_1EC649E80);

              if (![v189 delegate])
              {
                goto LABEL_201;
              }

              _s15DelegateAdapterCMa_1();
              v211 = swift_dynamicCastClass();
              if (!v211)
              {
                break;
              }

              *(v211 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = v210;
              swift_unknownObjectWeakAssign();
              swift_unknownObjectRelease();
LABEL_202:

              v185 = v242;
              v187 = v244;
LABEL_203:
              if ((*(v2 + 48) & 2) != 0)
              {
                v217 = *(v2 + 128);
                sub_1D1AB1598(v187);
              }

              ++v184;

              if (v183 == v184)
              {
              }
            }

            swift_unknownObjectRelease();
LABEL_201:
            v212 = _s15DelegateAdapterCMa_1();
            v213 = objc_allocWithZone(v212);
            *&v213[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
            *(swift_unknownObjectWeakInit() + 8) = v210;
            swift_unknownObjectWeakAssign();
            v249.receiver = v213;
            v249.super_class = v212;
            v214 = objc_msgSendSuper2(&v249, sel_init);
            swift_beginAccess();
            v215 = v214;
            objc_setAssociatedObject(v189, &unk_1EC649750, v215, 1);
            swift_endAccess();

            v216 = v215;
            [v189 setDelegate:v216];

            goto LABEL_202;
          }
        }

        __break(1u);
LABEL_209:
        v218 = v116;
        v219 = sub_1D1E6873C();
        v116 = v218;
        v144 = v219;
        continue;
      }
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
  return result;
}

void HomeState.Stream.add(stateSubscriptionEnabledReason:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v26 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  swift_beginAccess();
  v14 = *(v1 + 32);

  v15 = sub_1D171A1C8(a1, v14);

  if ((v15 & 1) == 0)
  {
    sub_1D1AE37A8(a1, v11, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_beginAccess();
    sub_1D1768638(v13, v11);
    swift_endAccess();
    sub_1D1AE3810(v13, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EC64A290);
    sub_1D1AE37A8(a1, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_retain_n();
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6831C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315394;
      v21 = HomeState.Stream.StateSubscription.Reason.description.getter();
      v23 = v22;
      sub_1D1AE3810(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v24 = sub_1D1B1312C(v21, v23, v26);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2048;
      v25 = *(*(v2 + 32) + 16);

      *(v19 + 14) = v25;

      _os_log_impl(&dword_1D16EC000, v17, v18, "Adding reason to enable subscriptions: %s, resulting in %ld subscriptions", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      sub_1D1AE3810(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    sub_1D1ADAE50();
  }
}

void sub_1D1ADAE50()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    if ((*(v0 + 56) & 1) == 0)
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v2 = sub_1D1E6709C();
      __swift_project_value_buffer(v2, qword_1EC64A290);

      v3 = sub_1D1E6707C();
      v4 = sub_1D1E6835C();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        v7 = *(v1 + 32);
        type metadata accessor for HomeState.Stream.StateSubscription.Reason();
        sub_1D1AE3140(&qword_1EC64A998, type metadata accessor for HomeState.Stream.StateSubscription.Reason);

        v8 = sub_1D1E6817C();
        v10 = v9;

        v11 = sub_1D1B1312C(v8, v10, &v16);

        *(v5 + 4) = v11;
        _os_log_impl(&dword_1D16EC000, v3, v4, "Subscribing for state for reasons: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x1D3893640](v6, -1, -1);
        MEMORY[0x1D3893640](v5, -1, -1);
      }

      sub_1D1ADB844();
      sub_1D1ADC2BC();
    }
  }

  else if (*(v0 + 56))
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64A290);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Unsubscribing for state because reasons are empty", v15, 2u);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    sub_1D1ADC718();
  }
}

void HomeState.Stream.remove(stateSubscriptionEnabledReason:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A950, &qword_1D1E96F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  swift_beginAccess();
  v12 = *(v1 + 32);

  v13 = sub_1D171A1C8(a1, v12);

  if (v13)
  {
    swift_beginAccess();
    sub_1D1AE0A10(a1, v11);
    swift_endAccess();
    sub_1D1741A30(v11, &qword_1EC64A950, &qword_1D1E96F10);
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EC64A290);
    sub_1D1AE37A8(a1, v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    swift_retain_n();
    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6831C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315394;
      v19 = HomeState.Stream.StateSubscription.Reason.description.getter();
      v21 = v20;
      sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      v22 = sub_1D1B1312C(v19, v21, v24);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2048;
      v23 = *(*(v2 + 32) + 16);

      *(v17 + 14) = v23;

      _os_log_impl(&dword_1D16EC000, v15, v16, "Removing reason to enable subscriptions: %s, resulting in %ld subscriptions", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {

      sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    sub_1D1ADAE50();
  }
}

Swift::Void __swiftcall HomeState.Stream.clearStateSubscriptionReasons()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CD0];

  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64A290);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6831C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D16EC000, v3, v4, "Clearing reasons to enable subscription", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  sub_1D1ADAE50();
}

void HomeState.Stream.takeActiveAssertion(reason:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 64);
  if (v7)
  {
    v8 = qword_1EE07A070;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE081480);

    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D1B1312C(a1, a2, &v17);
      _os_log_impl(&dword_1D16EC000, v11, v12, "Taking assertion for reason %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v15 = sub_1D1E677EC();
    v16 = [v9 _beginActiveAssertionWithReason_];

    *a3 = v16;
  }

  else
  {
    sub_1D1E67D8C();
    sub_1D1AE3140(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();
  }
}

uint64_t HomeState.Stream.releaseAssertion(_:)(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = v3;
    sub_1D1AE3188(v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D1E67D8C();
    sub_1D1AE3140(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1D1E6759C();
    return swift_willThrow();
  }
}

size_t sub_1D1ADB844()
{
  v1 = v0;
  v92 = sub_1D1E66A7C();
  v2 = *(v92 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v92);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v87 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v83 - v9);
  swift_beginAccess();
  v11 = *(v0 + 40);
  swift_beginAccess();
  v12 = *(v0 + 64);
  sub_1D1A82B50(v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v15 = sub_1D1E67C1C();

    v16 = sub_1D1AD7C00();
    v17 = sub_1D1AD7EF4(v15, v16, v11);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  v19 = __swift_project_value_buffer(v18, qword_1EC64A290);
  sub_1D1A82B50(v11);

  v91 = v19;
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();

  sub_1D1A82B60(v11);
  v22 = os_log_type_enabled(v20, v21);
  v23 = &qword_1D1E6F000;
  v24 = v17 >> 62;
  v88 = v1;
  if (!v22)
  {

    sub_1D1A82B60(v11);
    goto LABEL_31;
  }

  v90 = v11;
  v25 = swift_slowAlloc();
  *&v83 = swift_slowAlloc();
  v93 = v83;
  v84 = v25;
  *v25 = 136315394;
  LODWORD(v86) = v21;
  if (v24)
  {
    goto LABEL_53;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v27 = MEMORY[0x1E69E7CC0];
    v89 = v20;
    v85 = v24;
    if (i)
    {
      break;
    }

LABEL_23:
    v39 = MEMORY[0x1D3891260](v27, v92);
    v41 = v40;

    v42 = sub_1D1B1312C(v39, v41, &v93);

    v6 = v84;
    *(v84 + 4) = v42;
    *(v6 + 6) = 2080;
    v43 = v90;
    if (v90)
    {
      v23 = &qword_1D1E6F000;
      if (v90 == 1)
      {
        v44 = 0xEB00000000656D6FLL;
        v45 = 0x48746E6572727563;
      }

      else if (v90 == 2)
      {
        v44 = 0xE800000000000000;
        v45 = 0x73656D6F486C6C61;
      }

      else
      {
        v94 = 0x2873656D6F68;
        v95 = 0xE600000000000000;
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        v46 = sub_1D1E6817C();
        MEMORY[0x1D3890F70](v46);

        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        sub_1D1A82B60(v43);
        v45 = v94;
        v44 = v95;
      }
    }

    else
    {
      v44 = 0xE400000000000000;
      v45 = 1701736302;
      v23 = &qword_1D1E6F000;
    }

    v47 = sub_1D1B1312C(v45, v44, &v93);

    *(v6 + 14) = v47;
    v48 = v89;
    _os_log_impl(&dword_1D16EC000, v89, v86, "Subscribing for state in homes %s for specification %s", v6, 0x16u);
    v49 = v83;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v49, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);

    v24 = v85;
LABEL_31:
    if (v24)
    {
      v20 = sub_1D1E6873C();
      if (!v20)
      {
LABEL_51:

        *(v1 + 56) = 1;
        return result;
      }
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_51;
      }
    }

    if (v20 >= 1)
    {
      v50 = 0;
      v84 = (v2 + 8);
      v51 = v17 & 0xC000000000000001;
      *&v33 = *v23;
      v83 = v33;
      v85 = v17 & 0xC000000000000001;
      v86 = v17;
      v90 = v20;
      while (2)
      {
        if (v51)
        {
          v52 = MEMORY[0x1D3891EF0](v50, v17);
        }

        else
        {
          v52 = *(v17 + 8 * v50 + 32);
        }

        v53 = v52;
        os_unfair_lock_lock((v1 + 16));
        v54 = *(v1 + 22);
        os_unfair_lock_unlock((v1 + 16));
        if (v54 != 1)
        {
          goto LABEL_48;
        }

        v55 = v53;
        v56 = sub_1D1E6707C();
        v57 = sub_1D1E6835C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v94 = v89;
          *v58 = v83;
          v59 = [v55 name];
          v60 = sub_1D1E6781C();
          v62 = v61;

          v63 = sub_1D1B1312C(v60, v62, &v94);

          *(v58 + 4) = v63;
          *(v58 + 12) = 2082;
          v64 = [v55 uniqueIdentifier];
          v65 = v87;
          sub_1D1E66A5C();

          sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
          v66 = v92;
          v67 = sub_1D1E68FAC();
          v69 = v68;
          v70 = v66;
          v17 = v86;
          (*v84)(v65, v70);
          v71 = sub_1D1B1312C(v67, v69, &v94);

          *(v58 + 14) = v71;
          _os_log_impl(&dword_1D16EC000, v56, v57, "registerForAllRelevantAccessories() called on %s (%{public}s)", v58, 0x16u);
          v72 = v89;
          swift_arrayDestroy();
          v1 = v88;
          MEMORY[0x1D3893640](v72, -1, -1);
          v73 = v58;
          v51 = v85;
          MEMORY[0x1D3893640](v73, -1, -1);
        }

        sub_1D1ADCBE0(v55, 1);
        v74 = *(v1 + 120);
        v75 = sub_1D1A830C0(&qword_1EC649E80);

        if ([v55 delegate])
        {
          _s15DelegateAdapterCMa_1();
          v76 = swift_dynamicCastClass();
          if (v76)
          {
            *(v76 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = v75;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            goto LABEL_47;
          }

          swift_unknownObjectRelease();
        }

        v77 = _s15DelegateAdapterCMa_1();
        v78 = objc_allocWithZone(v77);
        *&v78[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = v75;
        swift_unknownObjectWeakAssign();
        v96.receiver = v78;
        v96.super_class = v77;
        v79 = objc_msgSendSuper2(&v96, sel_init);
        swift_beginAccess();
        v80 = v79;
        objc_setAssociatedObject(v55, &unk_1EC649750, v80, 1);
        swift_endAccess();

        v81 = v80;
        [v55 setDelegate_];

LABEL_47:

        v20 = v90;
LABEL_48:
        if ((*(v1 + 48) & 2) != 0)
        {
          v82 = *(v1 + 128);
          sub_1D1AB1598(v53);
        }

        ++v50;

        if (v20 == v50)
        {
          goto LABEL_51;
        }

        continue;
      }
    }

    __break(1u);
LABEL_53:
    ;
  }

  v94 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v27 = v94;
    if ((v17 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        MEMORY[0x1D3891EF0](j, v17);
        v30 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v94 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D178CEFC(v31 > 1, v32 + 1, 1);
          v27 = v94;
        }

        *(v27 + 16) = v32 + 1;
        (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v10, v92);
      }
    }

    else
    {
      v34 = (v17 + 32);
      v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      do
      {
        v35 = *v34;
        v36 = [v35 uniqueIdentifier];
        sub_1D1E66A5C();

        v94 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D178CEFC(v37 > 1, v38 + 1, 1);
          v27 = v94;
        }

        *(v27 + 16) = v38 + 1;
        (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v38, v6, v92);
        ++v34;
        --i;
      }

      while (i);
    }

    v1 = v88;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1D1ADC2BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 != 4)
  {
    swift_beginAccess();
    if ((*(v0 + 48) & 2) != 0)
    {
      v36 = v5;
      v10 = *(v0 + 40);
      swift_beginAccess();
      v11 = v0;
      v12 = *(v0 + 64);
      if (v12)
      {
        sub_1D1A82B50(v10);
        v13 = v12;
        v14 = [v13 homes];
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        v15 = sub_1D1E67C1C();

        v16 = sub_1D1AD7C00();
        v17 = sub_1D1AD7EF4(v15, v16, v10);
        sub_1D1A82B60(v10);

        if (!(v17 >> 62))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
LABEL_7:
          v18 = v17;
          v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
LABEL_8:
            if (v19 < 1)
            {
              __break(1u);
              return;
            }

            v20 = *(v11 + 152);
            v21 = *(*v20 + 120);
            v38 = v1;
            if ((v18 & 0xC000000000000001) != 0)
            {
              v22 = 0;
              v23 = (v6 + 8);
              v24 = v18;
              v37 = v20;
              v25 = v36;
              do
              {
                v26 = MEMORY[0x1D3891EF0](v22++, v24);
                v27 = *(v38 + 44);
                v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
                (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
                *v4 = v26;
                *(v4 + 1) = 0;
                v4[16] = 0;
                swift_unknownObjectRetain();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
                sub_1D1E67ECC();
                swift_unknownObjectRelease();
                (*v23)(v9, v25);
              }

              while (v19 != v22);
            }

            else
            {
              v29 = (v6 + 8);
              v30 = 32;
              do
              {
                v31 = *(v18 + v30);
                v32 = *(v38 + 44);
                v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
                (*(*(v33 - 8) + 56))(&v4[v32], 1, 1, v33);
                *v4 = v31;
                *(v4 + 1) = 0;
                v4[16] = 0;
                v34 = v31;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
                sub_1D1E67ECC();

                (*v29)(v9, v36);
                v30 += 8;
                --v19;
              }

              while (v19);
            }
          }

LABEL_18:

          return;
        }
      }

      v18 = v17;
      v19 = sub_1D1E6873C();
      if (v19)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }
}

void sub_1D1ADC718()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v4 = sub_1D1E67C1C();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_14:

      swift_beginAccess();
      *(v1 + 56) = 0;
      return;
    }
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(v1 + 128);
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      os_unfair_lock_lock((v1 + 16));
      v10 = *(v1 + 22);
      os_unfair_lock_unlock((v1 + 16));
      if (v10 == 1)
      {
        sub_1D1ADC8E4(v9, "unregisterForAllRelevantAccessories() called on %s (%{public}s)", 0);
        HMHome.homeDelegate.setter(0, 0);
      }

      ++v6;
      sub_1D1AB1A6C(v9);
    }

    while (v5 != v6);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1D1ADC8E4(void *a1, const char *a2, char a3)
{
  v6 = v3;
  v8 = sub_1D1E66A7C();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC64A290);
  v13 = a1;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v17 = 136315394;
    v18 = [v13 name];
    v19 = sub_1D1E6781C();
    v34 = v6;
    v20 = v19;
    v21 = a3;
    v23 = v22;

    v24 = sub_1D1B1312C(v20, v23, &v36);
    a3 = v21;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    v25 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v26 = sub_1D1E68FAC();
    v28 = v27;
    (*(v35 + 8))(v11, v8);
    v29 = sub_1D1B1312C(v26, v28, &v36);

    *(v17 + 14) = v29;
    _os_log_impl(&dword_1D16EC000, v14, v15, v32, v17, 0x16u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  sub_1D1ADCBE0(v13, a3 & 1);
}

void sub_1D1ADCBE0(unint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - v6;
  if (qword_1EE07AF78 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EE07AF80);
    v8 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v8 == 2 || (v8 & 1) == 0)
    {
      break;
    }

    if (v2)
    {
      v9 = v50;
      swift_beginAccess();
      v49 = (*(v9 + 48) >> 2) & 1;
    }

    else
    {
      v49 = 0;
    }

    v48 = v2;
    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = qword_1EC642358;

    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC64ABE8;
    v14 = sub_1D1AE3140(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = v50;
    *(v15 + 32) = v50;
    *(v15 + 40) = v12;
    *(v15 + 48) = v49;

    sub_1D17C6EF0(0, 0, v7, &unk_1D1E97340, v15);

    swift_beginAccess();
    if (*(v16 + 104))
    {
      sub_1D17419CC(v50 + 80, &v54);
      if (*(&v55 + 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = *(v50 + 96);
      v54 = *(v50 + 80);
      v55 = v17;
      v56 = *(v50 + 112);
      if (*(&v17 + 1))
      {
LABEL_11:
        sub_1D16EEE20(&v54, &v57);
        goto LABEL_18;
      }
    }

    v18 = v50;
    swift_beginAccess();
    v19 = *(v18 + 64);
    if (v19)
    {
      v20 = [v19 createAccessorySettingsDataSource];
      v7 = sub_1D1741B10(0, &qword_1EC649B18, 0x1E696CAE0);
      v19 = sub_1D174A5B8(&qword_1EC649B10, &qword_1EC649B18, 0x1E696CAE0);
    }

    else
    {
      v20 = 0;
      v7 = 0;
      *(&v57 + 1) = 0;
      *&v58 = 0;
    }

    *&v57 = v20;
    *(&v58 + 1) = v7;
    v59 = v19;
    if (*(&v55 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v54);
    }

LABEL_18:
    v21 = v50;
    swift_beginAccess();
    v22 = *(v21 + 104);
    v23 = *(&v58 + 1);
    if (v22)
    {
      __swift_destroy_boxed_opaque_existential_1((v50 + 80));
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    else if (!*(&v58 + 1))
    {
LABEL_22:
      v24 = v58;
      v25 = v50;
      *(v50 + 80) = v57;
      *(v25 + 96) = v24;
      *(v25 + 112) = v59;
      goto LABEL_23;
    }

    sub_1D16EEE20(&v57, v50 + 80);
LABEL_23:
    v26 = *(v50 + 104);
    if (v26)
    {
      if (v49)
      {
        v7 = *(v50 + 120);
        v27 = sub_1D1A830C0(&qword_1EC649EA0);
      }

      else
      {
        v7 = 0;
        v27 = 0;
      }

      v28 = *(v50 + 112);
      __swift_mutable_project_boxed_opaque_existential_1(v50 + 80, v26);
      (*(v28 + 32))(v7, v27, v26, v28);
    }

    swift_endAccess();
    v29 = [v12 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    a1 = sub_1D1E67C1C();

    v47 = v12;
    if (a1 >> 62)
    {
      v2 = sub_1D1E6873C();
      if (!v2)
      {
LABEL_51:

        v44 = [v47 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v45 = sub_1D1E67C1C();

        sub_1D1ADD3A8(v45, v48 & 1);

        return;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_51;
      }
    }

    v30 = 0;
    v52 = a1 & 0xC000000000000001;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v52)
      {
        v36 = MEMORY[0x1D3891EF0](v30, a1);
      }

      else
      {
        if (v30 >= *(v51 + 16))
        {
          goto LABEL_48;
        }

        v36 = *(a1 + 8 * v30 + 32);
      }

      v37 = v36;
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v39 = [v36 mediaSession];
      if (v39)
      {
        v7 = v39;
        if (v49)
        {
          v40 = *(v50 + 120);
          v41 = sub_1D1A830C0(&qword_1EC649E98);
        }

        else
        {
          v41 = 0;
        }

        if ([v7 delegate])
        {
          _s15DelegateAdapterCMa_3();
          v42 = swift_dynamicCastClass();
          if (v42)
          {
            v43 = v42;

            *(v43 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8) = v41;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          swift_unknownObjectRelease();
        }

        v31 = _s15DelegateAdapterCMa_3();
        v32 = objc_allocWithZone(v31);
        *&v32[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = v41;
        swift_unknownObjectWeakAssign();
        v53.receiver = v32;
        v53.super_class = v31;
        v33 = objc_msgSendSuper2(&v53, sel_init);
        swift_beginAccess();
        v34 = v33;
        objc_setAssociatedObject(v7, &unk_1EC649770, v34, 1);
        swift_endAccess();

        v35 = v34;
        [v7 setDelegate_];

        swift_unknownObjectRelease();
      }

LABEL_34:
      ++v30;
      if (v38 == v2)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }
}

void sub_1D1ADD3A8(unint64_t a1, char a2)
{
  v3 = v2;
  v27 = *v2;
  if (qword_1EE07AF78 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EE07AF80);
    v6 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v6 == 2 || (v6 & 1) == 0)
    {
      break;
    }

    os_unfair_lock_lock((v3 + 16));
    v7 = *(v3 + 22);
    os_unfair_lock_unlock((v3 + 16));
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64A290);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();
    v26 = a1;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109888;
      *(v11 + 4) = a2 & 1;
      *(v11 + 8) = 2048;
      if (a1 >> 62)
      {
        v12 = sub_1D1E6873C();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 10) = v12;

      *(v11 + 18) = 2048;
      if (qword_1EE07AE38 != -1)
      {
        swift_once();
      }

      *(v11 + 20) = qword_1EE07AE40;
      *(v11 + 28) = 1024;
      *(v11 + 30) = v7;
      _os_log_impl(&dword_1D16EC000, v9, v10, "changeObservationOnAccessories %{BOOL}d for %ld accessories (context: %ld, connectsHomeKitDelegatesDirectly = %{BOOL}d.", v11, 0x22u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
    }

    v13 = v7;
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    v14 = v26;
    if (qword_1EE07AE40 == 1)
    {
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6835C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13;
        _os_log_impl(&dword_1D16EC000, v15, v16, "changeObservationOnAccessories called but running in Home App. connectsHomeKitDelegatesDirectly = %{BOOL}d.", v17, 8u);
        MEMORY[0x1D3893640](v17, -1, -1);
      }
    }

    if (a2)
    {
      swift_beginAccess();
      v18 = *(v3 + 48) & 1;
      v19 = (*(v3 + 48) >> 2) & 1;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
      LODWORD(v19) = 0;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    if ((v26 & 0x4000000000000000) == 0)
    {
      v20 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_37:
    v20 = sub_1D1E6873C();
    if (!v20)
    {
      return;
    }

LABEL_25:
    v21 = 0;
    a2 = 0;
    a1 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1D3891EF0](v21, v14);
      }

      else
      {
        if (v21 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(v14 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v28 = v22;
      sub_1D1ADE660(&v28, v18, v3, v19, v27);

      ++v21;
      v25 = v24 == v20;
      v14 = v26;
      if (v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }
}

uint64_t sub_1D1ADD78C(uint64_t a1, char a2)
{
  *(v3 + 216) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  v4 = sub_1D1E66A7C();
  *(v3 + 168) = v4;
  v5 = *(v4 - 8);
  *(v3 + 176) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC64ABE8;
  *(v3 + 192) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ADD888, v7, 0);
}

uint64_t sub_1D1ADD888()
{
  v58 = v0;
  v1 = *(v0 + 160);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 22);
  os_unfair_lock_unlock((v1 + 16));
  if (v2 == 1)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 <= 7 && ((1 << qword_1EE07AE40) & 0xC3) != 0)
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 152);
      v5 = sub_1D1E6709C();
      *(v0 + 200) = __swift_project_value_buffer(v5, qword_1EC64A290);
      v6 = v4;
      v7 = sub_1D1E6707C();
      v8 = sub_1D1E6835C();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 176);
        v9 = *(v0 + 184);
        v51 = *(v0 + 168);
        v53 = *(v0 + 216);
        v11 = *(v0 + 152);
        v12 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = v55;
        *v12 = 136315650;
        v13 = [v11 name];
        v14 = sub_1D1E6781C();
        v16 = v15;

        v17 = sub_1D1B1312C(v14, v16, &v57);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2082;
        v18 = [v11 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v19 = sub_1D1E68FAC();
        v21 = v20;
        (*(v10 + 8))(v9, v51);
        v22 = sub_1D1B1312C(v19, v21, &v57);

        *(v12 + 14) = v22;
        *(v12 + 22) = 1026;
        *(v12 + 24) = v53;
        _os_log_impl(&dword_1D16EC000, v7, v8, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: called for %s (%{public}s) to set to %{BOOL,public}d", v12, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v55, -1, -1);
        MEMORY[0x1D3893640](v12, -1, -1);
      }

      v23 = *(v0 + 216);
      v24 = *(v0 + 152);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1ADDF0C;
      v25 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_42;
      *(v0 + 112) = v25;
      [v24 setAllNotificationsEnabled:v23 includeAppleMediaAccessories:v23 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 152);
    v27 = sub_1D1E6709C();
    __swift_project_value_buffer(v27, qword_1EC64A290);
    v28 = v26;
    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6831C();

    if (os_log_type_enabled(v29, v30))
    {
      v56 = v30;
      v32 = *(v0 + 176);
      v31 = *(v0 + 184);
      v52 = *(v0 + 168);
      v33 = *(v0 + 152);
      v34 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v34 = 136315650;
      v35 = [v33 name];
      v36 = sub_1D1E6781C();
      v38 = v37;

      v39 = sub_1D1B1312C(v36, v38, &v57);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v40 = [v33 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v41 = sub_1D1E68FAC();
      v43 = v42;
      (*(v32 + 8))(v31, v52);
      v44 = sub_1D1B1312C(v41, v43, &v57);

      *(v34 + 14) = v44;
      *(v34 + 22) = 2082;
      *(v0 + 144) = qword_1EE07AE40;
      type metadata accessor for DataModelContext(0);
      v45 = sub_1D1E6789C();
      v47 = sub_1D1B1312C(v45, v46, &v57);

      *(v34 + 24) = v47;
      _os_log_impl(&dword_1D16EC000, v29, v56, "HomeState.Stream: skipping enabling notifications for %s (%{public}s) because context is %{public}s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v54, -1, -1);
      MEMORY[0x1D3893640](v34, -1, -1);
    }
  }

  v48 = *(v0 + 184);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1D1ADDF0C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 192);
  if (v3)
  {
    v5 = sub_1D1ADE298;
  }

  else
  {
    v5 = sub_1D1ADE02C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1ADE02C()
{
  v26 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 216);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v8 = 136315650;
    v9 = [v7 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v15 = sub_1D1E68FAC();
    v17 = v16;
    (*(v6 + 8))(v5, v22);
    v18 = sub_1D1B1312C(v15, v17, &v25);

    *(v8 + 14) = v18;
    *(v8 + 22) = 1026;
    *(v8 + 24) = v23;
    _os_log_impl(&dword_1D16EC000, v3, v4, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: for %s (%{public}s) is now %{BOOL,public}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v19 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1ADE298()
{
  v34 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[19];
  swift_willThrow();
  v4 = v3;
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6834C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  if (v8)
  {
    v32 = v7;
    v11 = v0[22];
    v10 = v0[23];
    v29 = v0[21];
    v12 = v0[19];
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v13 = 136315650;
    v14 = [v12 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, v33);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v20 = sub_1D1E68FAC();
    v22 = v21;
    (*(v11 + 8))(v10, v29);
    v23 = sub_1D1B1312C(v20, v22, v33);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2112;
    v24 = v9;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v25;
    *v30 = v25;
    _os_log_impl(&dword_1D16EC000, v6, v32, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: for %s (%{public}s) failed with error: %@", v13, 0x20u);
    sub_1D1741A30(v30, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {
  }

  v26 = v0[23];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D1ADE588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1ADD78C(a5, a6 & 1);
}

void sub_1D1ADE660(void **a1, char a2, int64_t a3, int a4, uint64_t a5)
{
  v52 = a5;
  v57 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - v10;
  v12 = *a1;
  if (a2)
  {
    v13 = *(a3 + 120);
    v14 = sub_1D1A830C0(&qword_1EC649E88);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  HMAccessory.accessoryDelegate.setter(v13, v14);
  v15 = [v12 softwareUpdateController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 availableUpdate];

    if (v17)
    {
      if (v57)
      {
        v18 = *(a3 + 136);
      }

      else
      {
        v18 = 0;
      }

      [v17 setDelegate_];
      swift_unknownObjectRelease();
    }
  }

  v19 = [v12 mediaProfile];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 mediaSession];

    if (v21)
    {
      if (v57)
      {
        v22 = *(a3 + 120);
        v23 = sub_1D1A830C0(&qword_1EC649E98);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      HMMediaSession.mediaSessionDelegate.setter(v22, v23);
    }
  }

  v54 = v12;
  v24 = [v12 lightProfiles];
  v25 = sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8);
  v26 = sub_1D1E6816C();

  v55 = v25;
  v56 = a3;
  v51 = v11;
  if ((v26 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1E681BC();
    v27 = v59;
    v28 = v60;
    v30 = v61;
    v29 = v62;
    v31 = v63;
  }

  else
  {
    v32 = -1 << *(v26 + 32);
    v28 = v26 + 56;
    v30 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v26 + 56);

    v29 = 0;
    v27 = v26;
  }

  v53 = v30;
  v35 = (v30 + 64) >> 6;
  while ((v27 & 0x8000000000000000) == 0)
  {
    v37 = v29;
    v38 = v31;
    v39 = v29;
    if (!v31)
    {
      while (1)
      {
        v39 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v35)
        {
          goto LABEL_36;
        }

        v38 = *(v28 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_44:
      swift_once();
LABEL_40:
      v47 = qword_1EC64ABE8;
      v48 = sub_1D1AE3140(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
      v49 = swift_allocObject();
      v49[2] = v47;
      v49[3] = v48;
      v49[4] = v39;
      v49[5] = v24;
      v50 = v52;
      v49[6] = v27;
      v49[7] = v50;

      sub_1D17C6EF0(0, 0, v35, &unk_1D1E97328, v49);

      goto LABEL_41;
    }

LABEL_30:
    v40 = (v38 - 1) & v38;
    v24 = *(*(v27 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v24)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (v57)
    {
      v36 = *(v56 + 136);
    }

    else
    {
      v36 = 0;
    }

    [v24 setDelegate_];

    swift_unknownObjectRelease();
    v29 = v39;
    v31 = v40;
  }

  v41 = sub_1D1E6877C();
  if (v41)
  {
    v58 = v41;
    swift_dynamicCast();
    v24 = v64;
    v39 = v29;
    v40 = v31;
    if (v64)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  sub_1D1716918();

  v42 = v54;
  v43 = [v54 mediaProfile];
  if (v43)
  {

    v44 = [v42 home];
    if (v44)
    {
      v29 = v44;
      if (v57)
      {
        v45 = sub_1D1E67E7C();
        v35 = v51;
        (*(*(v45 - 8) + 56))(v51, 1, 1, v45);
        v46 = qword_1EC642358;
        v39 = v56;

        v24 = v29;
        v27 = v42;
        if (v46 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

LABEL_41:
    }
  }
}

uint64_t sub_1D1ADEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_1D1E66A7C();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC64ABE8;
  v6[18] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ADED28, v10, 0);
}

uint64_t sub_1D1ADED28()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    sub_1D17419CC(v1 + 80, v0 + 16);
    v6 = *(v0 + 40);
    *(v0 + 152) = v6;
    *(v0 + 168) = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v7 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    v8 = [v4 uniqueIdentifier];
    sub_1D1E66A5C();

    *(v0 + 176) = sub_1D1E67E1C();
    *(v0 + 184) = sub_1D1E67E0C();
    v10 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1ADEEBC, v10, v9);
  }

  else
  {
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D1ADEEBC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D1ADEF28, v2, 0);
}

uint64_t sub_1D1ADEF28()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1ADEFB4, v3, v2);
}

uint64_t sub_1D1ADEFB4()
{
  v1 = v0[24];
  v12 = v0[20];

  v2 = *(v12 + 64);
  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1D1ADF0E0;
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[17];

  return (v11)(v9, v8, &unk_1F4D65BD8, 0, v7, v5);
}

uint64_t sub_1D1ADF0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *v1;
  v2[26] = v0;

  v9 = *(v6 + 8);
  v2[27] = v9;
  v2[28] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v9(v4, v7);
  v10 = v2[18];
  if (v0)
  {
    v11 = sub_1D1ADF328;
  }

  else
  {
    v11 = sub_1D1ADF2AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1D1ADF2AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1ADF328()
{
  v44 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64A290);
  v5 = v2;
  v6 = v3;
  v7 = v1;
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6833C();

  if (os_log_type_enabled(v8, v9))
  {
    v37 = v0[27];
    v38 = v0[28];
    v41 = v0[26];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v39 = v0[11];
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v13 = 136315906;
    v14 = [v11 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v43);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v20 = sub_1D1E68FAC();
    v22 = v21;
    v37(v10, v12);
    v23 = sub_1D1B1312C(v20, v22, &v43);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = [v39 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = sub_1D1B1312C(v25, v27, &v43);

    *(v13 + 24) = v28;
    *(v13 + 32) = 2112;
    v29 = v41;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v30;
    *v40 = v30;
    _os_log_impl(&dword_1D16EC000, v8, v9, "Subscribing to accessory settings changes for accessory: %s %{public}s in home: %s failed due to %@", v13, 0x2Au);
    sub_1D1741A30(v40, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v40, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {
    v31 = v0[26];
  }

  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[15];

  v35 = v0[1];

  return v35();
}

uint64_t HomeState.Stream.StateSubscription.Reason.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1AE37A8(v1, v10, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x6E6E755274736574;
    }
  }

  else if (v12)
  {
    return 0xD000000000000013;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1D1E6884C();

    v16 = 0xD00000000000001BLL;
    v17 = 0x80000001D1EC4660;
    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v13 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v13);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v14 = v16;
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701736302;
  }

  if (v1 == 1)
  {
    return 0x48746E6572727563;
  }

  if (v1 == 2)
  {
    return 0x73656D6F486C6C61;
  }

  sub_1D1E66A7C();
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v3 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0x2873656D6F68;
}

uint64_t sub_1D1ADFA9C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1ADFB18(v6);
  return sub_1D1E6897C();
}

void sub_1D1ADFB18(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1E68F9C();
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
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        v6 = sub_1D1E67C8C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D1ADFC2C(v8, v9, a1, v4);
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
    sub_1D1748070(0, v2, 1, a1);
  }
}

void sub_1D1ADFC2C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        break;
      }

LABEL_32:
      v35 = a3[1];
      v7 = v11;
      if (v11 >= v35)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_143;
      }

      if (v11 - v10 >= a4)
      {
LABEL_40:
        v7 = v11;
LABEL_41:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v36 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_145;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v11 == v36)
      {
        goto LABEL_40;
      }

      v110 = v8;
      v5 = *a3;
      v4 = *a3 + 8 * v11 - 8;
      v107 = v10;
      v83 = v10 - v11;
      v112 = v36;
      v120 = *a3;
      while (2)
      {
        v114 = v4;
        v116 = v11;
        v84 = *(v5 + 8 * v11);
        v113 = v83;
        while (1)
        {
          v85 = *v4;
          v86 = v84;
          v87 = v85;
          LODWORD(v85) = [v86 v9[47]];
          if (v85 != [v87 v9[47]])
          {
            v88 = [v86 v9[47]];

            if ((v88 & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_103;
          }

          v89 = [v86 name];
          v90 = sub_1D1E6781C();
          v92 = v91;

          v93 = [v87 name];
          v94 = sub_1D1E6781C();
          v96 = v95;

          if (v90 == v94 && v92 == v96)
          {
            break;
          }

          v98 = sub_1D1E6904C();

          v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v5 = v120;
          if ((v98 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_103:
          if (!v5)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v99 = *v4;
          v84 = *(v4 + 8);
          *v4 = v84;
          *(v4 + 8) = v99;
          v4 -= 8;
          if (__CFADD__(v83++, 1))
          {
            goto LABEL_93;
          }
        }

        v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v5 = v120;
LABEL_93:
        v11 = v116 + 1;
        v4 = v114 + 8;
        v83 = v113 - 1;
        if (v116 + 1 != v112)
        {
          continue;
        }

        break;
      }

      v7 = v112;
      v8 = v110;
      v10 = v107;
      if (v112 < v107)
      {
        goto LABEL_142;
      }

LABEL_42:
      v37 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v37;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v37 + 2) + 1, 1, v37);
      }

      v4 = *(v8 + 2);
      v38 = *(v8 + 3);
      v39 = v4 + 1;
      if (v4 >= v38 >> 1)
      {
        v8 = sub_1D177D070((v38 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = &v8[16 * v4];
      *(v40 + 4) = v10;
      *(v40 + 5) = v7;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_152;
      }

      if (v4)
      {
        while (2)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            v47 = &v8[16 * v39 + 32];
            v48 = *(v47 - 64);
            v49 = *(v47 - 56);
            v53 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            if (v53)
            {
              goto LABEL_129;
            }

            v52 = *(v47 - 48);
            v51 = *(v47 - 40);
            v53 = __OFSUB__(v51, v52);
            v45 = v51 - v52;
            v46 = v53;
            if (v53)
            {
              goto LABEL_130;
            }

            v54 = &v8[16 * v39];
            v56 = *v54;
            v55 = *(v54 + 1);
            v53 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v53)
            {
              goto LABEL_132;
            }

            v53 = __OFADD__(v45, v57);
            v58 = v45 + v57;
            if (v53)
            {
              goto LABEL_135;
            }

            if (v58 >= v50)
            {
              v76 = &v8[16 * v42 + 32];
              v78 = *v76;
              v77 = *(v76 + 1);
              v53 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v53)
              {
                goto LABEL_139;
              }

              if (v45 < v79)
              {
                v42 = v39 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v46)
              {
                goto LABEL_131;
              }

              v59 = &v8[16 * v39];
              v61 = *v59;
              v60 = *(v59 + 1);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              v64 = v62;
              if (v62)
              {
                goto LABEL_134;
              }

              v65 = &v8[16 * v42 + 32];
              v67 = *v65;
              v66 = *(v65 + 1);
              v53 = __OFSUB__(v66, v67);
              v68 = v66 - v67;
              if (v53)
              {
                goto LABEL_137;
              }

              if (__OFADD__(v63, v68))
              {
                goto LABEL_138;
              }

              if (v63 + v68 < v45)
              {
                goto LABEL_75;
              }

              if (v45 < v68)
              {
                v42 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v43 = *(v8 + 4);
              v44 = *(v8 + 5);
              v53 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              v46 = v53;
              goto LABEL_61;
            }

            v69 = &v8[16 * v39];
            v71 = *v69;
            v70 = *(v69 + 1);
            v53 = __OFSUB__(v70, v71);
            v63 = v70 - v71;
            v64 = v53;
LABEL_75:
            if (v64)
            {
              goto LABEL_133;
            }

            v72 = &v8[16 * v42];
            v74 = *(v72 + 4);
            v73 = *(v72 + 5);
            v53 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v53)
            {
              goto LABEL_136;
            }

            if (v75 < v63)
            {
              break;
            }
          }

          v4 = v42 - 1;
          if (v42 - 1 >= v39)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_149;
          }

          v5 = v8;
          v80 = *&v8[16 * v4 + 32];
          v81 = *&v8[16 * v42 + 40];
          sub_1D174922C((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
          if (v118)
          {
            goto LABEL_123;
          }

          if (v81 < v80)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D1E0BE44(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_128;
          }

          v82 = v5 + 16 * v4;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          sub_1D1E0BDB8(v42);
          v8 = v5;
          v39 = *(v5 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v109 = v8;
    v4 = *a3;
    v12 = *(*a3 + 8 * v7);
    v13 = *(*a3 + 8 * v11);
    v14 = v12;
    v119 = sub_1D1AD7DD8(v13, v14);
    if (v118)
    {

      return;
    }

    v5 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      v8 = v109;
      if ((v119 & 1) == 0)
      {
LABEL_31:
        v11 = v5;
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v10;
      v4 += 8 * v10 + 16;
      v115 = v6;
      do
      {
        v16 = *(v4 - 8);
        v17 = *v4;
        v18 = v16;
        v19 = [v17 v9[47]];
        if (v19 == [v18 v9[47]])
        {
          v20 = [v17 name];
          v21 = sub_1D1E6781C();
          v23 = v22;

          v24 = [v18 name];
          v25 = sub_1D1E6781C();
          v27 = v26;

          if (v21 == v25 && v23 == v27)
          {

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if (v119)
            {
              v8 = v109;
              v10 = v106;
              goto LABEL_23;
            }
          }

          else
          {
            v29 = sub_1D1E6904C();

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if ((v119 ^ v29))
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v15 = [v17 v9[47]];

          if ((v119 ^ v15))
          {
            goto LABEL_22;
          }
        }

        v4 += 8;
        ++v5;
      }

      while (v6 != v5);
      v5 = v6;
LABEL_22:
      v8 = v109;
      v10 = v106;
      if ((v119 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v5 < v10)
    {
      goto LABEL_144;
    }

    if (v10 < v5)
    {
      v30 = 8 * v5 - 8;
      v31 = 8 * v10;
      v11 = v5;
      v32 = v10;
      while (1)
      {
        if (v32 != --v5)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v33 = *(v34 + v31);
          *(v34 + v31) = *(v34 + v30);
          *(v34 + v30) = v33;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
        if (v32 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_31;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_153;
  }

  v4 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v101 = v4;
  }

  else
  {
LABEL_147:
    v101 = sub_1D1E0BE44(v4);
  }

  v4 = *(v101 + 2);
  if (v4 < 2)
  {
LABEL_123:

    return;
  }

  while (*a3)
  {
    v102 = *&v101[16 * v4];
    v103 = v101;
    v104 = *&v101[16 * v4 + 24];
    sub_1D174922C((*a3 + 8 * v102), (*a3 + 8 * *&v101[16 * v4 + 16]), (*a3 + 8 * v104), v5);
    if (v118)
    {
      goto LABEL_123;
    }

    if (v104 < v102)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1D1E0BE44(v103);
    }

    if (v4 - 2 >= *(v103 + 2))
    {
      goto LABEL_141;
    }

    v105 = &v103[16 * v4];
    *v105 = v102;
    *(v105 + 1) = v104;
    sub_1D1E0BDB8(v4 - 1);
    v101 = v103;
    v4 = *(v103 + 2);
    if (v4 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_1D1AE04A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1D1E676DC();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v22 = sub_1D1E6775C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1946EF8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1D1AE1E78(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1D1AE0760(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1D1E6878C();

    if (v7)
    {
      v8 = sub_1D1AE1D10();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v11 = *(v3 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D1947B44();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1D1AE2180(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1D1AE0910(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1D1E691FC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (*(*(v5 + 48) + 8 * v9) != a1)
  {
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v9);
  sub_1D1AE2320(v9);
  result = v15;
  *v2 = v16;
  return result;
}

uint64_t sub_1D1AE0A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v51 - v7;
  v62 = sub_1D1E66A7C();
  v58 = *(v62 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v68 = *v3;
  v23 = *(v68 + 40);
  sub_1D1E6920C();
  v67 = a1;
  sub_1D1AE37A8(a1, v22, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 3, v24);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }

    goto LABEL_8;
  }

  if (v26)
  {
    v32 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v32);
    goto LABEL_9;
  }

  v56 = a2;
  v27 = v58;
  v28 = *(v58 + 32);
  v53 = v3;
  v29 = v62;
  v28(v13, v22, v62);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v30 = v27;
  a2 = v56;
  v31 = v29;
  v3 = v53;
  (*(v30 + 8))(v13, v31);
LABEL_9:
  v33 = sub_1D1E6926C();
  v34 = -1 << *(v68 + 32);
  v35 = v33 & ~v34;
  v65 = v68 + 56;
  if (((*(v68 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
    v44 = 1;
    return (*(v59 + 56))(a2, v44, 1, v14);
  }

  v52 = v14;
  v53 = v3;
  v56 = a2;
  v63 = ~v34;
  v64 = *(v59 + 72);
  v60 = (v58 + 8);
  v54 = (v58 + 32);
  v36 = v61;
  v55 = v25;
  while (1)
  {
    v37 = v64 * v35;
    sub_1D1AE37A8(*(v68 + 48) + v64 * v35, v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v38 = *(v66 + 48);
    sub_1D1AE37A8(v20, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1AE37A8(v67, &v8[v38], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v39 = v25(v8, 3, v24);
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        sub_1D1AE3810(v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v25(&v8[v38], 3, v24) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1AE3810(v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v25(&v8[v38], 3, v24) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v39)
    {
      sub_1D1AE3810(v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v25(&v8[v38], 3, v24) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1AE37A8(v8, v36, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v25(&v8[v38], 3, v24))
    {
      break;
    }

    sub_1D1AE3810(v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v60)(v36, v62);
LABEL_21:
    sub_1D1741A30(v8, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_22:
    v35 = (v35 + 1) & v63;
    if (((*(v65 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      v44 = 1;
      a2 = v56;
      goto LABEL_30;
    }
  }

  v40 = v57;
  v41 = v62;
  (*v54)(v57, &v8[v38], v62);
  LODWORD(v58) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v42 = *v60;
  v43 = v40;
  v36 = v61;
  (*v60)(v43, v41);
  sub_1D1AE3810(v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v42(v36, v41);
  v25 = v55;
  if ((v58 & 1) == 0)
  {
    sub_1D1AE3810(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1AE3810(v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v45 = v53;
  v46 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v45;
  v69 = *v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D1948FDC();
    v48 = v69;
  }

  v49 = *(v48 + 48) + v37;
  a2 = v56;
  sub_1D1AE3870(v49, v56, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1AE24A4(v35, type metadata accessor for HomeState.Stream.StateSubscription.Reason, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v44 = 0;
  *v45 = v69;
LABEL_30:
  v14 = v52;
  return (*(v59 + 56))(a2, v44, 1, v14);
}

uint64_t sub_1D1AE11B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v51 - v7;
  v62 = sub_1D1E66A7C();
  v58 = *(v62 - 8);
  v9 = *(v58 + 64);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for DataModel.StateSubscription.Reason();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;
  v68 = *v3;
  v23 = *(v68 + 40);
  sub_1D1E6920C();
  v67 = a1;
  sub_1D1AE37A8(a1, v22, type metadata accessor for DataModel.StateSubscription.Reason);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v22, 3, v24);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }

    goto LABEL_8;
  }

  if (v26)
  {
    v32 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v32);
    goto LABEL_9;
  }

  v56 = a2;
  v27 = v58;
  v28 = *(v58 + 32);
  v53 = v3;
  v29 = v62;
  v28(v13, v22, v62);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v30 = v27;
  a2 = v56;
  v31 = v29;
  v3 = v53;
  (*(v30 + 8))(v13, v31);
LABEL_9:
  v33 = sub_1D1E6926C();
  v34 = -1 << *(v68 + 32);
  v35 = v33 & ~v34;
  v65 = v68 + 56;
  if (((*(v68 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
    v44 = 1;
    return (*(v59 + 56))(a2, v44, 1, v14);
  }

  v52 = v14;
  v53 = v3;
  v56 = a2;
  v63 = ~v34;
  v64 = *(v59 + 72);
  v60 = (v58 + 8);
  v54 = (v58 + 32);
  v36 = v61;
  v55 = v25;
  while (1)
  {
    v37 = v64 * v35;
    sub_1D1AE37A8(*(v68 + 48) + v64 * v35, v20, type metadata accessor for DataModel.StateSubscription.Reason);
    v38 = *(v66 + 48);
    sub_1D1AE37A8(v20, v8, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1AE37A8(v67, &v8[v38], type metadata accessor for DataModel.StateSubscription.Reason);
    v39 = v25(v8, 3, v24);
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        sub_1D1AE3810(v20, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v25(&v8[v38], 3, v24) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1AE3810(v20, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v25(&v8[v38], 3, v24) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v39)
    {
      sub_1D1AE3810(v20, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v25(&v8[v38], 3, v24) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1AE37A8(v8, v36, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v25(&v8[v38], 3, v24))
    {
      break;
    }

    sub_1D1AE3810(v20, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v60)(v36, v62);
LABEL_21:
    sub_1D1741A30(v8, &qword_1EC642A00, &qword_1D1E97330);
LABEL_22:
    v35 = (v35 + 1) & v63;
    if (((*(v65 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      v44 = 1;
      a2 = v56;
      goto LABEL_30;
    }
  }

  v40 = v57;
  v41 = v62;
  (*v54)(v57, &v8[v38], v62);
  LODWORD(v58) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v42 = *v60;
  v43 = v40;
  v36 = v61;
  (*v60)(v43, v41);
  sub_1D1AE3810(v20, type metadata accessor for DataModel.StateSubscription.Reason);
  v42(v36, v41);
  v25 = v55;
  if ((v58 & 1) == 0)
  {
    sub_1D1AE3810(v8, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1AE3810(v8, type metadata accessor for DataModel.StateSubscription.Reason);
  v45 = v53;
  v46 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v45;
  v69 = *v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D1949C24();
    v48 = v69;
  }

  v49 = *(v48 + 48) + v37;
  a2 = v56;
  sub_1D1AE3870(v49, v56, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1AE24A4(v35, type metadata accessor for DataModel.StateSubscription.Reason, type metadata accessor for DataModel.StateSubscription.Reason);
  v44 = 0;
  *v45 = v69;
LABEL_30:
  v14 = v52;
  return (*(v59 + 56))(a2, v44, 1, v14);
}

uint64_t sub_1D1AE1958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v33 - v5;
  v7 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v35 = v2;
  v15 = *v2;
  v16 = *(*v2 + 40);
  sub_1D1E6920C();
  v42 = a1;
  sub_1D1AE37A8(a1, v14, type metadata accessor for WriteInProgressStatusViewModel.ID);
  MEMORY[0x1D3892850](0);
  v17 = sub_1D1E66A7C();
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v18 = *(*(v17 - 8) + 8);
  v18(v14, v17);
  v19 = sub_1D1E6926C();
  v39 = v15 + 56;
  v40 = v15;
  v20 = -1 << *(v15 + 32);
  v21 = v19 & ~v20;
  if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v33 = v8;
    v34 = v7;
    v37 = ~v20;
    v38 = *(v8 + 72);
    while (1)
    {
      v22 = v38 * v21;
      sub_1D1AE37A8(*(v40 + 48) + v38 * v21, v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v23 = *(v41 + 48);
      sub_1D1AE37A8(v12, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1AE37A8(v42, &v6[v23], type metadata accessor for WriteInProgressStatusViewModel.ID);
      v24 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1AE3810(v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v18(&v6[v23], v17);
      v18(v6, v17);
      if (v24)
      {
        break;
      }

      v21 = (v21 + 1) & v37;
      if (((*(v39 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        v25 = 1;
        v26 = v36;
        v7 = v34;
        goto LABEL_10;
      }
    }

    v27 = v35;
    v28 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v27;
    v43 = *v27;
    v7 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1947938();
      v30 = v43;
    }

    v31 = v36;
    sub_1D1AE3870(*(v30 + 48) + v22, v36, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1AE2920(v21);
    v26 = v31;
    v25 = 0;
    *v27 = v43;
LABEL_10:
    v8 = v33;
  }

  else
  {
    v25 = 1;
    v26 = v36;
  }

  return (*(v8 + 56))(v26, v25, 1, v7);
}

uint64_t sub_1D1AE1D10()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1D1E6873C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D176BA18(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1D1E684EC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1D1E684FC();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1D1AE2180(v9);
  result = sub_1D1E684FC();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AE1E78(int64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1D1E686AC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        v27 = sub_1D1E676DC();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}