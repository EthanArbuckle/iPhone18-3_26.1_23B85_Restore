uint64_t sub_1D1AB1A6C(uint64_t *a1)
{
  v2 = sub_1D1909DC8();
  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315394;
    v9 = [v4 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v42);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v14 = sub_1D1E6765C();
    v16 = sub_1D1B1312C(v14, v15, &v42);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Removing delegates for all devices in home: %s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (!*(v2 + 16))
  {
    v17 = v4;
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6832C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC4320, &v42);
      *(v20 + 12) = 2082;
      v22 = HMHome.matterAccessories.getter();
      v23 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = MEMORY[0x1D3891260](v22, v23);
      v26 = v25;

      v27 = sub_1D1B1312C(v24, v26, &v42);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%s No eligible devices found: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  v28 = 1 << *(v2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v2 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  a1 = &qword_1EE07A000;
  while (v30)
  {
LABEL_18:
    v36 = (*(v2 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v37 = *v36;
    v38 = v36[1];
    v39 = qword_1EE07AE38;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC6BE138;
    }

    else
    {
      v33 = v41;
      swift_unknownObjectRetain();
    }

    v30 &= v30 - 1;
    ObjectType = swift_getObjectType();
    (*(v38 + 112))(v33, ObjectType, v38);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v2 + 64 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
      goto LABEL_18;
    }
  }
}

void sub_1D1AB1FE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - v12;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  v14 = __swift_project_value_buffer(v13, qword_1EE07A0B0);
  v15 = a1;
  v59 = v14;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v58 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v57 = v3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v63 = v23;
    *v20 = 136446466;
    v62 = a2;
    type metadata accessor for MTRDeviceState(0);
    v24 = sub_1D1E678BC();
    v26 = v9;
    v27 = v6;
    v28 = sub_1D1B1312C(v24, v25, &v63);

    *(v20 + 4) = v28;
    v6 = v27;
    v9 = v26;
    v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *(v20 + 12) = 2114;
    v29 = [v15 hdm_getNodeID];
    *(v20 + 14) = v29;
    *v22 = v29;
    _os_log_impl(&dword_1D16EC000, v16, v17, "Received MTRDevice delegate stateChanged (%{public}s) for device: %{public}@.", v20, 0x16u);
    sub_1D1741A30(v22, &unk_1EC644000, &unk_1D1E75B00);
    v30 = v22;
    v3 = v57;
    MEMORY[0x1D3893640](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D3893640](v23, -1, -1);
    v31 = v20;
    v10 = v58;
    MEMORY[0x1D3893640](v31, -1, -1);
  }

  v32 = [v15 hdm_containingHome];
  if (v32)
  {
    v33 = v32;
    v34 = [v15 v18[333]];
    v35 = [v34 unsignedLongLongValue];

    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v35;
      v37 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v38 = *(**(v3 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
      v39 = *(v6 + 44);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v40 - 8) + 56))(&v9[v39], 1, 1, v40);
      *v9 = v37;
      *(v9 + 1) = v33;
      v9[16] = 1;
      v41 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v42 = v60;
      sub_1D1E67ECC();

      (*(v61 + 8))(v42, v10);
    }

    else
    {
      v52 = *(**(v3 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
      v53 = *(v6 + 44);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v54 - 8) + 56))(&v9[v53], 1, 1, v54);
      *v9 = v33;
      *(v9 + 1) = 0;
      v9[16] = 0;
      v55 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v56 = v60;
      sub_1D1E67ECC();

      (*(v61 + 8))(v56, v10);
    }
  }

  else
  {
    v43 = v18;
    v44 = v15;
    v45 = sub_1D1E6707C();
    v46 = sub_1D1E6833C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63 = v49;
      *v47 = 136315650;
      *(v47 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC42A0, &v63);
      *(v47 + 12) = 2114;
      v50 = [v44 v43 + 4037];
      *(v47 + 14) = v50;
      *(v47 + 22) = 2112;
      *(v47 + 24) = v44;
      *v48 = v50;
      v48[1] = v44;
      v51 = v44;
      _os_log_impl(&dword_1D16EC000, v45, v46, "%s: Could not find Home for MTRDevice: %{public}@ %@", v47, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D3893640](v49, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);
    }
  }
}

void sub_1D1AB26B0(void *a1, uint64_t a2)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v4 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v109 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v114 = *(v115 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v109 - v8;
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_44;
  }

  v10 = 0;
  v11 = 0;
  v119 = a2 + 32;
  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  *&v7 = 136315138;
  v116 = v7;
  *&v7 = 138412546;
  v109 = v7;
  *&v7 = 136446466;
  v117 = v7;
  v118 = a1;
  do
  {
    v15 = *(v119 + 8 * v11);

    v16 = [a1 v12[333]];
    v17 = [v16 unsignedLongLongValue];

    sub_1D18F8630(v15, v17, v122);
    if (*(&v122[0] + 1))
    {

      v18 = v123;
      v125 = v123;
      v124[0] = v122[0];
      v124[1] = v122[1];
      v124[2] = v122[2];
      if (v123)
      {
        v19 = v123;
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v20 = sub_1D1E6709C();
        __swift_project_value_buffer(v20, qword_1EE07A0B0);
        sub_1D18F5324(v124, v122);
        v21 = v18;
        v22 = sub_1D1E6707C();
        v23 = sub_1D1E6833C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v121 = v25;
          *v24 = v117;
          v26 = *(&v122[0] + 1);
          v120 = *(&v122[0] + 1);
          sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
          v27 = v26;
          v28 = sub_1D1E678BC();
          v30 = v29;
          sub_1D18F5380(v122);
          v31 = sub_1D1B1312C(v28, v30, &v121);

          *(v24 + 4) = v31;
          *(v24 + 12) = 2082;
          v120 = v18;
          v32 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
          v33 = sub_1D1E678BC();
          v35 = sub_1D1B1312C(v33, v34, &v121);
          v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;

          *(v24 + 14) = v35;
          a1 = v118;
          _os_log_impl(&dword_1D16EC000, v22, v23, "AttributeReport: path (%{public}s) has error: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v25, -1, -1);
          MEMORY[0x1D3893640](v24, -1, -1);
        }

        else
        {

          sub_1D18F5380(v122);
        }
      }

      else
      {
        if (qword_1EE07B280 != -1)
        {
          swift_once();
        }

        if (byte_1EE07B288 == 1)
        {
          v46 = [*(&v124[0] + 1) cluster];
          v47 = [v46 unsignedIntValue];

          ClusterKind.init(rawValue:)(v47);
          v48 = SLOBYTE(v122[0]);
          if (SLOBYTE(v122[0]) != 30)
          {
            if (qword_1EC6422F0 != -1)
            {
              swift_once();
            }

            v49 = off_1EC6493A0;
            if (*(off_1EC6493A0 + 2))
            {
              v50 = *(off_1EC6493A0 + 5);
              sub_1D1E6920C();
              v51 = dword_1D1E9666C[v48];
              sub_1D1E6924C();
              v52 = sub_1D1E6926C();
              v53 = -1 << v49[32];
              v54 = v52 & ~v53;
              if ((*&v49[((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v54))
              {
                v55 = ~v53;
                while (dword_1D1E9666C[*(*(v49 + 6) + v54)] != v51)
                {
                  v54 = (v54 + 1) & v55;
                  if (((*&v49[((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v54) & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (qword_1EE07A0A8 != -1)
                {
                  swift_once();
                }

                v56 = sub_1D1E6709C();
                __swift_project_value_buffer(v56, qword_1EE07A0B0);
                sub_1D18F5324(v124, v122);
                v57 = a1;
                v58 = sub_1D1E6707C();
                v59 = sub_1D1E6835C();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v121 = v62;
                  *v60 = v109;
                  v63 = [v57 hdm_getNodeID];
                  *(v60 + 4) = v63;
                  *v61 = v63;
                  *(v60 + 12) = 2080;
                  v64 = sub_1D18F8A98();
                  v66 = v65;
                  sub_1D18F5380(v122);
                  v67 = sub_1D1B1312C(v64, v66, &v121);

                  *(v60 + 14) = v67;
                  _os_log_impl(&dword_1D16EC000, v58, v59, "AttributeReport: device[%@] reported %s", v60, 0x16u);
                  sub_1D1741A30(v61, &unk_1EC644000, &unk_1D1E75B00);
                  v68 = v61;
                  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
                  MEMORY[0x1D3893640](v68, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1(v62);
                  MEMORY[0x1D3893640](v62, -1, -1);
                  MEMORY[0x1D3893640](v60, -1, -1);
                }

                else
                {

                  sub_1D18F5380(v122);
                }

                a1 = v118;
              }
            }
          }
        }
      }

LABEL_4:
      v13 = [*(&v124[0] + 1) cluster];
      v14 = [v13 unsignedIntValue];

      ClusterKind.init(rawValue:)(v14);
      v10 = LOBYTE(v122[0]) != 30;
      sub_1D18F5380(v124);
    }

    else
    {
      sub_1D1741A30(v122, &unk_1EC64A350, &qword_1D1E914C0);
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v36 = sub_1D1E6709C();
      __swift_project_value_buffer(v36, qword_1EE07A0B0);

      v37 = sub_1D1E6707C();
      v38 = sub_1D1E6833C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v122[0] = v40;
        *v39 = v116;
        v41 = sub_1D1E6760C();
        v43 = v42;

        v44 = v41;
        v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v45 = sub_1D1B1312C(v44, v43, v122);
        a1 = v118;

        *(v39 + 4) = v45;
        _os_log_impl(&dword_1D16EC000, v37, v38, "ParsedAttributeReport failed all attempts to parse %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1D3893640](v40, -1, -1);
        MEMORY[0x1D3893640](v39, -1, -1);
      }

      else
      {
      }
    }

    ++v11;
  }

  while (v11 != v9);
  if (!v10)
  {
LABEL_44:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v88 = sub_1D1E6709C();
    __swift_project_value_buffer(v88, qword_1EE07A0B0);
    v89 = a1;
    v90 = sub_1D1E6707C();
    v91 = sub_1D1E6835C();

    if (!os_log_type_enabled(v90, v91))
    {
      goto LABEL_49;
    }

    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138543362;
    v94 = [v89 hdm_getNodeID];
    *(v92 + 4) = v94;
    *v93 = v94;
    _os_log_impl(&dword_1D16EC000, v90, v91, "Skipping update for MTRDevice delegate receivedAttributeReport for device: %{public}@", v92, 0xCu);
    sub_1D1741A30(v93, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v93, -1, -1);
    v95 = v92;
    goto LABEL_48;
  }

  v69 = [a1 hdm_containingHome];
  if (!v69)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v96 = sub_1D1E6709C();
    __swift_project_value_buffer(v96, qword_1EE07A0B0);
    v97 = a1;
    v90 = sub_1D1E6707C();
    v98 = sub_1D1E6833C();

    if (!os_log_type_enabled(v90, v98))
    {
      goto LABEL_49;
    }

    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138543618;
    v101 = [v97 v12[333]];
    *(v99 + 4) = v101;
    *(v99 + 12) = 2114;
    *(v99 + 14) = v97;
    *v100 = v101;
    v100[1] = v97;
    v102 = v97;
    _os_log_impl(&dword_1D16EC000, v90, v98, "Could not find Home for MTRDevice: %{public}@ %{public}@", v99, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v100, -1, -1);
    v95 = v99;
LABEL_48:
    MEMORY[0x1D3893640](v95, -1, -1);
LABEL_49:

    return;
  }

  v70 = v69;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v71 = sub_1D1E6709C();
  __swift_project_value_buffer(v71, qword_1EE07A0B0);
  v72 = a1;
  v73 = sub_1D1E6707C();
  v74 = sub_1D1E6835C();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v75 = 138543362;
    v77 = [v72 v12[333]];
    *(v75 + 4) = v77;
    *v76 = v77;
    _os_log_impl(&dword_1D16EC000, v73, v74, "Updating for MTRDevice delegate receivedAttributeReports for device: %{public}@", v75, 0xCu);
    sub_1D1741A30(v76, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v76, -1, -1);
    MEMORY[0x1D3893640](v75, -1, -1);
  }

  v78 = [v72 v12[333]];
  v79 = [v78 unsignedLongLongValue];

  if (v79)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v79;
    v81 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v82 = *(**(v111 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
    v83 = *(v110 + 44);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v85 = v113;
    (*(*(v84 - 8) + 56))(&v113[v83], 1, 1, v84);
    *v85 = v81;
    *(v85 + 1) = v70;
    v85[16] = 1;
    v86 = v70;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    v87 = v112;
    sub_1D1E67ECC();

    (*(v114 + 8))(v87, v115);
  }

  else
  {
    v103 = *(**(v111 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
    v104 = *(v110 + 44);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v106 = v113;
    (*(*(v105 - 8) + 56))(&v113[v104], 1, 1, v105);
    *v106 = v70;
    *(v106 + 1) = 0;
    v106[16] = 0;
    v107 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    v108 = v112;
    sub_1D1E67ECC();

    (*(v114 + 8))(v108, v115);
  }
}

void sub_1D1AB35B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v63 = *(v10 - 8);
  isa = v63[8].isa;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - v12;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  v14 = __swift_project_value_buffer(v13, qword_1EE07A0B0);

  v15 = a1;
  v61 = v14;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v60 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v59 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v64 = v23;
    *v20 = 136315394;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v25 = MEMORY[0x1D3891260](a2, v24);
    v27 = v9;
    v28 = v3;
    v29 = sub_1D1B1312C(v25, v26, &v64);

    *(v20 + 4) = v29;
    v3 = v28;
    v9 = v27;
    v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *(v20 + 12) = 2114;
    v30 = [v15 hdm_getNodeID];
    *(v20 + 14) = v30;
    *v22 = v30;
    _os_log_impl(&dword_1D16EC000, v16, v17, "Received MTRDevice delegate receivedEventReport (%s) for device: %{public}@. ", v20, 0x16u);
    sub_1D1741A30(v22, &unk_1EC644000, &unk_1D1E75B00);
    v31 = v22;
    v6 = v59;
    MEMORY[0x1D3893640](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D3893640](v23, -1, -1);
    v32 = v20;
    v10 = v60;
    MEMORY[0x1D3893640](v32, -1, -1);
  }

  v33 = [v15 hdm_containingHome];
  if (v33)
  {
    v34 = v33;
    v35 = [v15 v18[333]];
    v36 = [v35 unsignedLongLongValue];

    if (v36)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v36;
      v38 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v39 = *(**(v3 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
      v40 = *(v6 + 44);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v41 - 8) + 56))(&v9[v40], 1, 1, v41);
      *v9 = v38;
      *(v9 + 1) = v34;
      v9[16] = 1;
      v42 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v43 = v62;
      sub_1D1E67ECC();

      (v63[1].isa)(v43, v10);
    }

    else
    {
      v52 = *(**(v3 + OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream14MatterDelegate_matterSnapshotUpdateController) + 120);
      v53 = *(v6 + 44);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v54 - 8) + 56))(&v9[v53], 1, 1, v54);
      *v9 = v34;
      *(v9 + 1) = 0;
      v9[16] = 0;
      v55 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v56 = v62;
      sub_1D1E67ECC();

      (v63[1].isa)(v56, v10);
    }
  }

  else
  {
    v44 = v15;
    v63 = sub_1D1E6707C();
    v45 = sub_1D1E6833C();

    if (os_log_type_enabled(v63, v45))
    {
      v46 = v18;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v47 = 136315650;
      *(v47 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC42A0, &v64);
      *(v47 + 12) = 2114;
      v50 = [v44 v46 + 4037];
      *(v47 + 14) = v50;
      *(v47 + 22) = 2114;
      *(v47 + 24) = v44;
      *v48 = v50;
      v48[1] = v44;
      v51 = v44;
      _os_log_impl(&dword_1D16EC000, v63, v45, "%s: Could not find Home for MTRDevice: %{public}@ %{public}@", v47, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D3893640](v49, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);
    }

    else
    {
      v57 = v63;
    }
  }
}

uint64_t sub_1D1AB3C78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v8 = sub_1D1E67C1C();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

void sub_1D1AB3E34(void *a1)
{
  v2 = v1;
  v4 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(a1);
  v6 = v5;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EE07A0B0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A330, &qword_1D1E96660);
    v13 = sub_1D1E678BC();
    v15 = v6;
    v16 = sub_1D1B1312C(v13, v14, &v20);

    *(v11 + 4) = v16;
    v6 = v15;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_1D16EC000, v9, v10, "Setting up delegate for device (%{public}s) accessory: %@", v11, 0x16u);
    sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  if (v4)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v2 = qword_1EC6BE138;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 104))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1D1AB40FC(void *a1)
{
  v2 = v1;
  v4 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(a1);
  v6 = v5;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EE07A0B0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A330, &qword_1D1E96660);
    v13 = sub_1D1E678BC();
    v15 = v6;
    v16 = sub_1D1B1312C(v13, v14, &v20);

    *(v11 + 4) = v16;
    v6 = v15;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_1D16EC000, v9, v10, "Removing delegate for device (%{public}s) accessory: %@", v11, 0x16u);
    sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  if (v4)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v2 = qword_1EC6BE138;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 112))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1D1AB43C4(void *a1, const char *a2)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07A0B0);
  v5 = a1;
  oslog = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = [v5 hdm_getNodeID];
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_1D16EC000, oslog, v6, a2, v7, 0xCu);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }
}

uint64_t HomeState.Stream.ResidentUpdateController.configuration.getter()
{
  swift_getKeyPath();
  sub_1D1AB4604();
  sub_1D1E66CAC();
}

uint64_t sub_1D1AB4598(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D1AB4604();
  sub_1D1E66CAC();
}

unint64_t sub_1D1AB4604()
{
  result = qword_1EC64A388;
  if (!qword_1EC64A388)
  {
    type metadata accessor for HomeState.Stream.ResidentUpdateController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A388);
  }

  return result;
}

uint64_t type metadata accessor for HomeState.Stream.ResidentUpdateController()
{
  result = qword_1EC64A390;
  if (!qword_1EC64A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*HomeState.Stream.ResidentUpdateController.configuration.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  *a1 = v1;
  a1[3] = sub_1D1AB4604();
  sub_1D1E66CAC();

  *a1 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  return sub_1D1AB477C;
}

uint64_t sub_1D1AB477C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  *a1 = a1[1];
  swift_getKeyPath();
  sub_1D1E66CBC();
}

uint64_t HomeState.Stream.ResidentUpdateController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1D1E66CDC();
  return v3;
}

uint64_t HomeState.Stream.ResidentUpdateController.deinit()
{
  v1 = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HomeState.Stream.ResidentUpdateController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1AB4964()
{
  result = sub_1D1E66CEC();
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

uint64_t HomeState.Stream.SetupMilestone.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

unint64_t HomeState.Stream.SetupMilestone.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x63655273656D6F68;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
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
}

unint64_t HomeState.Stream.SetupMilestone.nextStepDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 1701736270;
    if (v1 == 6)
    {
      v2 = 0xD000000000000031;
    }

    v3 = 0xD00000000000001DLL;
    if (v1 != 4)
    {
      v3 = 0xD000000000000033;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD000000000000021;
    if (*v0)
    {
      v3 = 0xD00000000000001DLL;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeState.Stream.SetupMilestone.signpostDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 <= 5u)
    {
      if (v1 != 4)
      {
        MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC43D0);

        MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
        v2 = 0x80000001D1EC4470;
        v3 = 0xD000000000000033;
        goto LABEL_17;
      }

      MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC43F0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v4 = "Snapshots are being generated";
      goto LABEL_13;
    }

    if (v1 == 6)
    {
      MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC43B0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC4430;
      v3 = 0xD000000000000031;
    }

    else
    {
      MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC4390);

      v2 = 0xE400000000000000;
      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v3 = 1701736270;
    }
  }

  else
  {
    if (*v0 <= 1u)
    {
      if (!*v0)
      {
        MEMORY[0x1D3890F70](0x6576697463616E69, 0xE800000000000000);

        MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
        v2 = 0x80000001D1EC4540;
        v3 = 0xD000000000000021;
        goto LABEL_17;
      }

      MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC4410);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v4 = "Home manager is being created";
LABEL_13:
      v2 = (v4 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      goto LABEL_17;
    }

    if (v1 == 2)
    {
      MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC3CF0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC4500;
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      MEMORY[0x1D3890F70](0x63655273656D6F68, 0xED00006465766965);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC44D0;
      v3 = 0xD000000000000029;
    }
  }

LABEL_17:
  MEMORY[0x1D3890F70](v3, v2);

  return 0;
}

unint64_t sub_1D1AB5050()
{
  result = qword_1EC64A3A0;
  if (!qword_1EC64A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A3A0);
  }

  return result;
}

unint64_t sub_1D1AB50A8()
{
  result = qword_1EC64A3A8;
  if (!qword_1EC64A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC64A3B0, &qword_1D1E96820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A3A8);
  }

  return result;
}

unint64_t sub_1D1AB510C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x63655273656D6F68;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
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
}

uint64_t sub_1D1AB5240(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB52DC, v3, 0);
}

uint64_t sub_1D1AB52DC()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 22);
  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    goto LABEL_9;
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 4 || (v3 = *(v0 + 48), swift_beginAccess(), v4 = *(v3 + 64), (*(v0 + 64) = v4) == 0))
  {
LABEL_9:
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    v7[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v7[2].i64[0] = v4;
    v8 = *(MEMORY[0x1E69E87D8] + 4);
    v9 = v4;
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_1D1AB54D4;
    v11 = MEMORY[0x1E69E7CA8] + 8;
    v12 = MEMORY[0x1E69E7CA8] + 8;
    v13 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DBF8](v10, v11, v12, v5, v6, &unk_1D1E96C18, v7, v13);
  }
}

uint64_t sub_1D1AB54D4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5600, v3, 0);
}

uint64_t sub_1D1AB5600()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AB5660@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  objc_opt_self();
  if (!a2)
  {
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v7 = 0;
      a1 = result;
      goto LABEL_6;
    }

    a1 = 0;
    v7 = 0;
LABEL_9:
    a2 = -1;
    goto LABEL_10;
  }

  result = swift_dynamicCastObjCClass();
  v7 = result;
  if (!result)
  {
    a1 = 0;
    goto LABEL_9;
  }

LABEL_6:
  result = swift_unknownObjectRetain();
LABEL_10:
  *a3 = a1;
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1D1AB5714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB57E8, v7, 0);
}

uint64_t sub_1D1AB57E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_1D1E67E7C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;

  v9 = v4;
  v10 = v2;
  sub_1D1DE2784(v1, &unk_1D1E96C28, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v7(v1, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v9;

  v12 = v9;
  sub_1D1DE2784(v1, &unk_1D1E96C38, v11);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D1AB59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[5] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5A6C, 0, 0);
}

uint64_t sub_1D1AB5A6C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v0[8] = *(*(v0[2] + 144) + qword_1EC6BE170);
  *v1 = v3;
  swift_storeEnumTagMultiPayload();

  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AB5B48;
  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[3];
  v8 = v0[4];

  return sub_1D1E5A250(v6, v7, v8, v9, 0);
}

uint64_t sub_1D1AB5B48()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_1D1AC3B08(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5C90, 0, 0);
}

uint64_t sub_1D1AB5C90()
{
  *(v0 + 80) = *(*(v0 + 16) + 24);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5D30, v1, 0);
}

uint64_t sub_1D1AB5D30()
{
  v1 = *(v0 + 80);
  sub_1D1AFCD30(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5D9C, 0, 0);
}

uint64_t sub_1D1AB5D9C()
{
  v1 = v0[6];
  sub_1D1AC3B08(v0[7], type metadata accessor for StateSnapshot);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D1AB5E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = *(*(type metadata accessor for MatterStateSnapshot() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5EB4, 0, 0);
}

uint64_t sub_1D1AB5EB4()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = *(*(*(v0 + 56) + 152) + qword_1EC6BE178);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = -1;

  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1D1AB5FAC;
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  return MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(v4, v0 + 16, v5, v0 + 40);
}

uint64_t sub_1D1AB5FAC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  sub_1D1A283E8(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB60FC, 0, 0);
}

uint64_t sub_1D1AB60FC()
{
  *(v0 + 96) = *(*(v0 + 56) + 24);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB619C, v1, 0);
}

uint64_t sub_1D1AB619C()
{
  v1 = *(v0 + 96);
  sub_1D1AFD7B4(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6208, 0, 0);
}

uint64_t sub_1D1AB6208()
{
  sub_1D1AC3B08(*(v0 + 72), type metadata accessor for MatterStateSnapshot);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AB6288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
  v9 = *(updated + 44);
  sub_1D1E66A7C();
  sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E6769C();
  sub_1D1E67D7C();
  v10 = sub_1D1E685AC();
  result = (*(*(v10 - 8) + 32))(a4 + v9, a2, v10);
  *(a4 + *(updated + 48)) = a3;
  return result;
}

uint64_t sub_1D1AB63B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(_s24SnapshotUpdateControllerC13UpdateRequestVMa() + 44);
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
  v8 = *(*(updated - 8) + 32);

  return v8(a4 + v6, a2, updated);
}

void sub_1D1AB648C()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E6709C();
  __swift_project_value_buffer(v0, qword_1EE07B5D8);
  oslog = sub_1D1E6707C();
  v1 = sub_1D1E6832C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D16EC000, oslog, v1, "Task streamTask with BatchManager exited", v2, 2u);
    MEMORY[0x1D3893640](v2, -1, -1);
  }
}

uint64_t sub_1D1AB6574(uint64_t a1)
{
  v27 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v24[2] = *(*v1 + 88);
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
  v6 = *(*(updated - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](updated - 8);
  v26 = v24 - v8;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - v11;
  v13 = _s24SnapshotUpdateControllerC13UpdateRequestVMa();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  v25 = sub_1D1E67E9C();
  v17 = *(v25 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v20 = v24 - v19;
  v24[1] = *(v2 + 120);
  (*(v9 + 16))(v12, v27, v3);
  v21 = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
  v22 = v26;
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  sub_1D1AB63B0(v12, v22, v3, v16);
  sub_1D1E67EEC();
  sub_1D1E67ECC();
  return (*(v17 + 8))(v20, v25);
}

uint64_t sub_1D1AB6894(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 113) = a5;
  *(v6 + 112) = a4;
  *(v6 + 40) = a3;
  *(v6 + 48) = v5;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 56) = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6940, 0, 0);
}

uint64_t sub_1D1AB6940()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB69D4, v0, 0);
}

uint64_t sub_1D1AB69D4()
{
  *(v0 + 80) = *(*(v0 + 48) + *(**(v0 + 48) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6A5C, 0, 0);
}

uint64_t sub_1D1AB6A5C()
{
  v32 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 113);
    v2 = *(v0 + 112);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v30 = *(v0 + 24);

    v5 = swift_allocObject();
    *(v0 + 88) = v5;
    swift_weakInit();
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v30;
    *(v6 + 40) = v4;
    *(v6 + 48) = v2;
    *(v6 + 49) = v1;
    v7 = *(MEMORY[0x1E69E88D0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A790, &qword_1D1E96BE8);
    *v8 = v0;
    v8[1] = sub_1D1AB6DDC;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC3870, v6, v9);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = *(v0 + 24);
    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64A290);
    sub_1D1AC3B68(v11, v10, type metadata accessor for StateSnapshot.UpdateType);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6834C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      sub_1D1AC3B68(v16, v17, type metadata accessor for StateSnapshot.UpdateType);
      v21 = sub_1D1E6789C();
      v23 = v22;
      sub_1D1AC3B08(v16, type metadata accessor for StateSnapshot.UpdateType);
      v24 = sub_1D1B1312C(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      sub_1D1AC3B08(v16, type metadata accessor for StateSnapshot.UpdateType);
    }

    v25 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);

    v28 = *(v0 + 8);

    return v28(v25);
  }
}

uint64_t sub_1D1AB6DDC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6F10, 0, 0);
}

uint64_t sub_1D1AB6F10()
{
  v1 = v0[2];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1D1AB6F80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 96) = a5;
  *(v8 + 104) = v7;
  *(v8 + 35) = a7;
  *(v8 + 34) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 33) = a3;
  *(v8 + 72) = a1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1AB6FBC, 0, 0);
}

uint64_t sub_1D1AB6FBC()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7050, v0, 0);
}

uint64_t sub_1D1AB7050()
{
  *(v0 + 112) = *(*(v0 + 104) + *(**(v0 + 104) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB70D8, 0, 0);
}

uint64_t sub_1D1AB70D8()
{
  v30 = v0;
  if (*(v0 + 112))
  {
    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 35);
    v4 = *(v0 + 34);
    v5 = *(v0 + 88);

    v6 = swift_allocObject();
    *(v0 + 120) = v6;
    swift_weakInit();
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v0 + 16;
    *(v7 + 32) = v5;
    *(v7 + 40) = v2;
    *(v7 + 48) = v4;
    *(v7 + 49) = v3;
    v8 = *(MEMORY[0x1E69E88D0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491C0, &qword_1D1E92B40);
    *v9 = v0;
    v9[1] = sub_1D1AB7404;

    return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC37EC, v7, v10);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 33);
    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EC64A290);
    sub_1D1A28388(v12, v11, v13);
    sub_1D1A28388(v12, v11, v13);
    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6834C();
    sub_1D1A283E8(v12, v11, v13);
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 33);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      *(v0 + 40) = v20;
      *(v0 + 48) = v19;
      *(v0 + 56) = v18;
      v23 = sub_1D1E6789C();
      v25 = sub_1D1B1312C(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    else
    {
      sub_1D1A283E8(*(v0 + 72), *(v0 + 80), *(v0 + 33));
    }

    v26 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
    v27 = *(v0 + 8);

    return v27(v26);
  }
}

uint64_t sub_1D1AB7404()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7538, 0, 0);
}

uint64_t sub_1D1AB7550(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v6 = *v3;
  *(v4 + 40) = *v3;
  v7 = *(v6 + 80);
  *(v4 + 48) = v7;
  v8 = *(v7 - 8);
  *(v4 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = *a2;
  *(v4 + 129) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB766C, 0, 0);
}

uint64_t sub_1D1AB766C()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7700, v0, 0);
}

uint64_t sub_1D1AB7700()
{
  *(v0 + 96) = *(*(v0 + 32) + *(**(v0 + 32) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7788, 0, 0);
}

uint64_t sub_1D1AB7788()
{
  v46 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 129);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 128);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);

    v9 = swift_allocObject();
    *(v0 + 104) = v9;
    swift_weakInit();
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *(v10 + 16) = v4;
    *(v10 + 24) = *(v5 + 88);
    *(v10 + 32) = *(v5 + 96);
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
    *(v10 + 56) = v3;
    *(v10 + 64) = v2;
    *(v10 + 72) = v1;
    *(v10 + 73) = v6;
    v11 = *(MEMORY[0x1E69E88D0] + 4);
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    sub_1D1E66A7C();
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v13 = sub_1D1E6769C();
    *v12 = v0;
    v12[1] = sub_1D1AB7BE0;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC28E4, v10, v13);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = *(v0 + 24);
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64A290);
    v19 = *(v16 + 16);
    v19(v14, v17, v15);
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6834C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = *(v0 + 56);
      v25 = *(v0 + 64);
      v26 = *(v0 + 48);
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v27 = 136315138;
      v19(v25, v23, v26);
      v28 = sub_1D1E6789C();
      v30 = v29;
      (*(v24 + 8))(v23, v26);
      v31 = sub_1D1B1312C(v28, v30, &v45);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D16EC000, v20, v21, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1D3893640](v44, -1, -1);
      MEMORY[0x1D3893640](v27, -1, -1);
    }

    else
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 56);

      (*(v33 + 8))(v23, v32);
    }

    v34 = *(v0 + 40);
    v35 = sub_1D1E66A7C();
    v36 = *(v34 + 88);
    swift_getTupleTypeMetadata2();
    v37 = sub_1D1E67C7C();
    v38 = sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v39 = sub_1D1AC25F8(v37, v35, v36, v38);

    v41 = *(v0 + 64);
    v40 = *(v0 + 72);

    v42 = *(v0 + 8);

    return v42(v39);
  }
}

uint64_t sub_1D1AB7BE0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC3C38, 0, 0);
}

uint64_t sub_1D1AB7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v43 = a7;
  v44 = a4;
  v42 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A798, &qword_1D1E96BF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v39 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(v15 + 16);
    v25 = Strong + *(*Strong + 120);
    v40 = v14;
    v41 = v18;
    v24(v18, v25, v14);

    sub_1D1AC3B68(a3, v13, type metadata accessor for StateSnapshot.UpdateType);
    v26 = &v13[*(v10 + 44)];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    v28 = a6;
    v29 = *(v27 + 44);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
    v31 = *(v30 - 8);
    v39[1] = v13;
    v32 = v44;
    v33 = v31;
    (*(v31 + 16))(&v26[v29], v42, v30);
    (*(v33 + 56))(&v26[v29], 0, 1, v30);
    *v26 = v32;
    *(v26 + 1) = a5;
    v26[16] = v28;
    v26[*(v27 + 48)] = v43 & 1;
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_1D1AC3828(v32, a5, v28);
    v34 = v40;
    v35 = v41;
    sub_1D1E67ECC();
    (*(v15 + 8))(v35, v34);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  (*(*(v37 - 8) + 56))(v22, v36, 1, v37);
  return sub_1D1741A30(v22, &qword_1EC64A798, &qword_1D1E96BF0);
}

uint64_t sub_1D1AB80C8(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v53 = a8;
  v51 = a1;
  v52 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A780, &unk_1D1E96BB8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v54 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = a9;
    v26 = *(v18 + 16);
    v27 = Strong + *(*Strong + 120);
    v49 = v17;
    v50 = v21;
    v26(v21, v27, v17);

    v28 = &v16[*(v13 + 44)];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v47 = a3;
    v30 = *(v29 + 44);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
    v45 = a4;
    v46 = a5;
    v32 = v31;
    v33 = v52;
    v34 = v53;
    v35 = *(v31 - 8);
    (*(v35 + 16))(&v28[v30], v51, v31);
    (*(v35 + 56))(&v28[v30], 0, 1, v32);
    *v28 = v33;
    *(v28 + 1) = a7;
    v28[16] = v34;
    v28[*(v29 + 48)] = v48 & 1;
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v36 = v47;
    v37 = v45;
    *v16 = v47;
    *(v16 + 1) = v37;
    LOBYTE(v29) = v46;
    v16[16] = v46;
    sub_1D1AC3828(v33, a7, v34);
    sub_1D1A28388(v36, v37, v29);
    v38 = v54;
    v39 = v49;
    v40 = v50;
    sub_1D1E67ECC();
    (*(v18 + 8))(v40, v39);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v38 = v54;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  (*(*(v42 - 8) + 56))(v38, v41, 1, v42);
  return sub_1D1741A30(v38, &qword_1EC64A780, &unk_1D1E96BB8);
}

uint64_t sub_1D1AB8498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a7;
  v61 = a6;
  v60 = a5;
  v54 = a3;
  v55 = a1;
  sub_1D1E66A7C();
  sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E6769C();
  v51 = sub_1D1E67D7C();
  v12 = sub_1D1E685AC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v47 - v14;
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
  v16 = *(*(updated - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](updated - 8);
  v53 = &v47 - v18;
  v19 = *(a8 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a9;
  v57 = a10;
  v23 = _s24SnapshotUpdateControllerC13UpdateRequestVMa();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v47 - v25;
  v26 = sub_1D1E67EEC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v47 - v29;
  v31 = sub_1D1E67E9C();
  v32 = sub_1D1E685AC();
  v58 = *(v32 - 8);
  v59 = v32;
  v33 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v47 - v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v27 + 16))(v30, Strong + *(*Strong + 120), v26);

    v37 = *(v19 + 16);
    v48 = v31;
    v38 = v22;
    v37(v22, v54, a8);
    v54 = a4;
    v62[0] = a4;
    v62[1] = v60;
    v63 = v61;
    v39 = v51;
    v40 = *(v51 - 8);
    v41 = v49;
    (*(v40 + 16))(v49, v55, v51);
    (*(v40 + 56))(v41, 0, 1, v39);
    v42 = v53;
    sub_1D1AB6288(v62, v41, v56 & 1, v53);
    v43 = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = v38;
    v31 = v48;
    sub_1D1AB63B0(v44, v42, a8, v50);
    sub_1D1AC3828(v54, v60, v61);
    sub_1D1E67ECC();
    (*(v27 + 8))(v30, v26);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  (*(*(v31 - 8) + 56))(v35, v45, 1, v31);
  return (*(v58 + 8))(v35, v59);
}

uint64_t sub_1D1AB8A50()
{
  v1 = *(v0 + 16);
  v2 = sub_1D1E66A7C();
  v3 = *(v1 + 88);
  swift_getTupleTypeMetadata2();
  v4 = sub_1D1E67C7C();
  v5 = sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v6 = sub_1D1AC25F8(v4, v2, v3, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t HomeState.Stream.SnapshotUpdateController.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  v2 = *(*v0 + 112);
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  _s24SnapshotUpdateControllerC13UpdateRequestVMa();
  v6 = sub_1D1E67F2C();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = *(*v0 + 120);
  v8 = sub_1D1E67EEC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + *(*v0 + 128));

  v10 = *(v0 + *(*v0 + 136));

  return v0;
}

uint64_t sub_1D1AB8CB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC6BE170);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A770, &unk_1D1E96B90);
  a1[3] = v4;
  a1[4] = sub_1D1AC3798(&qword_1EC64A778, &qword_1EC64A770, &unk_1D1E96B90);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);
  v7 = v3 + OBJC_IVAR____TtC13HomeDataModel17SnapshotModerator_snapshotsStream;

  return v6(boxed_opaque_existential_1, v7, v4);
}

uint64_t sub_1D1AB8D74(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v16 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 8);
  v27 = *a1;
  v28 = v19;
  v20 = *(v4 + 288);
  v21 = *(v4 + 296);
  v22 = type metadata accessor for StateSnapshot.UpdateType.Generic();
  sub_1D1AB9004(v22, v18);
  v23 = *(*v2 + 120);
  sub_1D1AC3B68(v18, v9, type metadata accessor for StateSnapshot.UpdateType);
  v24 = *(v6 + 52);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v25 - 8) + 56))(&v9[v24], 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v11 + 8))(v14, v10);
  return sub_1D1AC3B08(v18, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AB9004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (v2[1])
  {
    v9 = *v2;
    v4 = MEMORY[0x1EEE9AC00](a1);
    v8 = *(v4 + 16);
    v5 = *(*(v4 + 24) + 16);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1D1E67D1C();
    sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
    swift_getWitnessTable();
    *a2 = sub_1D1E67A4C();
    type metadata accessor for StateSnapshot.UpdateType(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      swift_unknownObjectRetain();
    }

    *a2 = v7;
    type metadata accessor for StateSnapshot.UpdateType(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D1AB91EC(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = *v4;
  v7 = *(*(type metadata accessor for StateSnapshot.UpdateType(0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v3 + 48) = v8;
  *(v3 + 56) = v9;
  *(v3 + 25) = *(a1 + 8);
  *(v3 + 64) = *a2;
  *(v3 + 26) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB92C8, 0, 0);
}

uint64_t sub_1D1AB92C8()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 296);
  updated = type metadata accessor for StateSnapshot.UpdateType.Generic();
  sub_1D1AB9004(updated, v2);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1D1AB93B0;
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = *(v0 + 26);

  return sub_1D1AB6894(v10, v8, v9, v12, 0);
}

uint64_t sub_1D1AB93B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v7 = *v1;

  sub_1D1AC3B08(v4, type metadata accessor for StateSnapshot.UpdateType);

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1D1AB94E4(uint64_t a1, uint64_t *a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A748, &qword_1D1E96B38) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v3[28] = v12;
  v13 = *(v12 - 8);
  v3[29] = v13;
  v14 = *(v13 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v15 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v3[33] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = *a2;
  v3[34] = v17;
  v3[35] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9788, 0, 0);
}

uint64_t sub_1D1AB9788()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 288) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9820, v1, 0);
}

uint64_t sub_1D1AB9820()
{
  v1 = *(v0 + 120);
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9890, 0, 0);
}

uint64_t sub_1D1AB9890()
{
  if (v0[37])
  {
    v1 = v0[36];

    return MEMORY[0x1EEE6DFA0](sub_1D1AB99F8, v1, 0);
  }

  else
  {
    v17 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
    v2 = v0[34];
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[30];
    v7 = v0[26];
    v6 = v0[27];
    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[22];
    v11 = v0[23];
    v14 = v0[21];
    v15 = v0[20];
    v16 = v0[17];

    v12 = v0[1];

    return v12(v17);
  }
}

uint64_t sub_1D1AB99F8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 304) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9A80, 0, 0);
}

uint64_t sub_1D1AB9A80()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = [*(v0 + 304) homes];
    *(v0 + 312) = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v5 = sub_1D1E67C1C();

    v6 = sub_1D1ABB498(v3, v5);
    *(v0 + 320) = v6;

    v8 = *(v6 + 16);
    *(v0 + 328) = v8;
    if (!v8)
    {

      *(v0 + 456) = MEMORY[0x1E69E7CC8];
      v58 = *(v0 + 288);
      v59 = sub_1D1ABB194;
LABEL_41:

      return MEMORY[0x1EEE6DFA0](v59, v58, 0);
    }

    v9 = *(v0 + 264);
    *(v0 + 336) = qword_1EC6BE170;
    v10 = *(v9 + 80);
    v11 = MEMORY[0x1E69E7CC8];
    *(v0 + 472) = v10;
    *(v0 + 352) = 0;
    *(v0 + 360) = v11;
    *(v0 + 344) = v11;
    v12 = *(v0 + 320);
    if (*(v12 + 16))
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 312);
      sub_1D1AC3B68(v12 + ((v10 + 32) & ~v10), *(v0 + 272), type metadata accessor for StateSnapshot.UpdateType);
      v15 = [v13 homes];
      v16 = sub_1D1E67C1C();

      v7 = v16;
      if (!(v16 >> 62))
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_6:
          v18 = 0;
          v73 = v7 & 0xFFFFFFFFFFFFFF8;
          v75 = v7 & 0xC000000000000001;
          v19 = MEMORY[0x1E69E7CC8];
          v69 = v17;
          v71 = v7;
          while (1)
          {
            if (v75)
            {
              v7 = MEMORY[0x1D3891EF0](v18, v7);
            }

            else
            {
              if (v18 >= *(v73 + 16))
              {
                goto LABEL_31;
              }

              v7 = *(v7 + 8 * v18 + 32);
            }

            v22 = v7;
            v23 = v18 + 1;
            if (__OFADD__(v18, 1))
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

            v24 = *(v0 + 256);
            v25 = [v7 uniqueIdentifier];
            sub_1D1E66A5C();

            v26 = v22;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 88) = v19;
            v7 = sub_1D1742188(v24);
            v29 = v19[2];
            v30 = (v28 & 1) == 0;
            v31 = __OFADD__(v29, v30);
            v32 = v29 + v30;
            if (v31)
            {
              goto LABEL_32;
            }

            v33 = v28;
            if (v19[3] >= v32)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v45 = v7;
                sub_1D173A870();
                v7 = v45;
              }
            }

            else
            {
              v34 = *(v0 + 256);
              sub_1D172B420(v32, isUniquelyReferenced_nonNull_native);
              v35 = *(v0 + 88);
              v7 = sub_1D1742188(v34);
              if ((v33 & 1) != (v36 & 1))
              {
                v60 = *(v0 + 224);

                return sub_1D1E690FC();
              }
            }

            v19 = *(v0 + 88);
            v37 = *(v0 + 256);
            v39 = *(v0 + 224);
            v38 = *(v0 + 232);
            if (v33)
            {
              v20 = v19[7];
              v21 = *(v20 + 8 * v7);
              *(v20 + 8 * v7) = v26;

              (*(v38 + 8))(v37, v39);
            }

            else
            {
              v19[(v7 >> 6) + 8] |= 1 << v7;
              v41 = *(v38 + 16);
              v40 = v38 + 16;
              v42 = v7;
              v41(v19[6] + *(v40 + 56) * v7, v37, v39);
              *(v19[7] + 8 * v42) = v26;

              v7 = (*(v40 - 8))(v37, v39);
              v43 = v19[2];
              v31 = __OFADD__(v43, 1);
              v44 = v43 + 1;
              if (v31)
              {
                goto LABEL_33;
              }

              v19[2] = v44;
            }

            ++v18;
            v7 = v71;
            if (v23 == v69)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
LABEL_34:
      __break(1u);
    }

    v61 = v7;
    v17 = sub_1D1E6873C();
    v7 = v61;
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_36:
    v19 = MEMORY[0x1E69E7CC8];
LABEL_37:
    v62 = *(v0 + 272);

    v63 = StateSnapshot.UpdateType.relevantHome(in:)(v19);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1D1E73FA0;
      *(v64 + 32) = v63;
    }

    else
    {
      v65 = *(v0 + 312);
      v66 = [*(v0 + 304) homes];
      v64 = sub_1D1E67C1C();

      v63 = 0;
    }

    *(v0 + 368) = v63;
    *(v0 + 376) = v64;
    v67 = *(v0 + 288);
    v68 = v63;
    v59 = sub_1D1ABA02C;
    v58 = v67;
    goto LABEL_41;
  }

  v76 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
  v46 = *(v0 + 272);
  v48 = *(v0 + 248);
  v47 = *(v0 + 256);
  v49 = *(v0 + 240);
  v51 = *(v0 + 208);
  v50 = *(v0 + 216);
  v53 = *(v0 + 192);
  v52 = *(v0 + 200);
  v54 = *(v0 + 176);
  v55 = *(v0 + 184);
  v70 = *(v0 + 168);
  v72 = *(v0 + 160);
  v74 = *(v0 + 136);

  v56 = *(v0 + 8);

  return v56(v76);
}

uint64_t sub_1D1ABA02C()
{
  v1 = *(v0 + 120);
  *(v0 + 384) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA09C, 0, 0);
}

uint64_t sub_1D1ABA09C()
{
  v1 = v0[48];
  if (v1)
  {
    v2 = v0[36];
    v4 = v0[26];
    v3 = v0[27];
    v5 = *(v1 + 24);

    v6 = sub_1D1E67E7C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = 4;
    sub_1D1741C08(v3, v4, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = v8;
    v9[4] = sub_1D1A82E34;
    v9[5] = v7;

    sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v9);

    sub_1D1741A30(v3, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v10 = v0[35];
  v0[49] = *(v0[15] + v0[42]);
  if (v10)
  {
  }

  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_1D1ABA2DC;

  return sub_1D1E5C7D0();
}

uint64_t sub_1D1ABA2DC(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA3F4, v3, 0);
}

uint64_t sub_1D1ABA3F4()
{
  v1 = v0[51];
  if (v1)
  {
    v2 = v0[47];
    v3 = v0[35];

    v0[56] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D1ABA7F8, 0, 0);
  }

  else
  {
    v4 = v0[49];
    v5 = v0[47];
    v6 = v0[38];
    v8 = v0[34];
    v7 = v0[35];
    swift_beginAccess();
    v9 = *(v4 + 112);
    v0[52] = v9;
    swift_beginAccess();
    v10 = *(v4 + 120);
    v0[53] = v10;

    v11 = sub_1D1AC359C(&qword_1EC64A750, type metadata accessor for SnapshotModerator);
    v12 = swift_task_alloc();
    v0[54] = v12;
    v12[2] = v5;
    v12[3] = v4;
    v12[4] = v6;
    v12[5] = v8;
    v12[6] = v7;
    v12[7] = v9;
    v12[8] = v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A758, &unk_1D1E96B50);
    v15 = *(MEMORY[0x1E69E87D8] + 4);
    v16 = swift_task_alloc();
    v0[55] = v16;
    *v16 = v0;
    v16[1] = sub_1D1ABA628;

    return MEMORY[0x1EEE6DBF8](v0 + 12, v13, v14, v4, v11, &unk_1D1E96B40, v12, v13);
  }
}

uint64_t sub_1D1ABA628()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 424);
  v4 = *(*v0 + 416);
  v5 = *(*v0 + 392);
  v6 = *(*v0 + 376);
  v7 = *(*v0 + 280);
  v9 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA7D4, v5, 0);
}

uint64_t sub_1D1ABA7F8(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 448);
  v4 = *(v3 + 64);
  v110 = v3 + 64;
  v111 = v3;
  v5 = -1;
  v6 = -1 << *(v111 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  v9 = *(v1 + 360);
  v10 = *(v1 + 344);
  for (i = v8; ; v8 = i)
  {
    v121 = v10;
    v115 = v9;
    if (!v7)
    {
      if (v8 <= v2 + 1)
      {
        v12 = v2 + 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v55 = *(v1 + 192);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
          (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
          v7 = 0;
          goto LABEL_16;
        }

        v7 = *(v110 + 8 * v11);
        ++v2;
        if (v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v102 = a1;
        v72 = sub_1D1E6873C();
        a1 = v102;
        if (!v72)
        {
          goto LABEL_61;
        }

LABEL_32:
        v73 = 0;
        v120 = a1 & 0xFFFFFFFFFFFFFF8;
        v123 = a1 & 0xC000000000000001;
        v74 = MEMORY[0x1E69E7CC8];
        v114 = v72;
        v117 = a1;
        while (1)
        {
          if (v123)
          {
            a1 = MEMORY[0x1D3891EF0](v73, a1);
          }

          else
          {
            if (v73 >= *(v120 + 16))
            {
              goto LABEL_56;
            }

            a1 = *(a1 + 8 * v73 + 32);
          }

          v77 = a1;
          v78 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          v79 = *(v1 + 256);
          v80 = [a1 uniqueIdentifier];
          sub_1D1E66A5C();

          v81 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 88) = v74;
          a1 = sub_1D1742188(v79);
          v84 = v74[2];
          v85 = (v83 & 1) == 0;
          v40 = __OFADD__(v84, v85);
          v86 = v84 + v85;
          if (v40)
          {
            goto LABEL_57;
          }

          v87 = v83;
          if (v74[3] >= v86)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v99 = a1;
              sub_1D173A870();
              a1 = v99;
            }
          }

          else
          {
            v88 = *(v1 + 256);
            sub_1D172B420(v86, isUniquelyReferenced_nonNull_native);
            v89 = *(v1 + 88);
            a1 = sub_1D1742188(v88);
            if ((v87 & 1) != (v90 & 1))
            {
              goto LABEL_49;
            }
          }

          v74 = *(v1 + 88);
          v91 = *(v1 + 256);
          v93 = *(v1 + 224);
          v92 = *(v1 + 232);
          if (v87)
          {
            v75 = v74[7];
            v76 = *(v75 + 8 * a1);
            *(v75 + 8 * a1) = v81;

            (*(v92 + 8))(v91, v93);
          }

          else
          {
            v74[(a1 >> 6) + 8] |= 1 << a1;
            v95 = *(v92 + 16);
            v94 = v92 + 16;
            v96 = a1;
            v95(v74[6] + *(v94 + 56) * a1, v91, v93);
            *(v74[7] + 8 * v96) = v81;

            a1 = (*(v94 - 8))(v91, v93);
            v97 = v74[2];
            v40 = __OFADD__(v97, 1);
            v98 = v97 + 1;
            if (v40)
            {
              goto LABEL_58;
            }

            v74[2] = v98;
          }

          ++v73;
          a1 = v117;
          if (v78 == v114)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v11 = v2;
LABEL_15:
    v118 = *(v1 + 248);
    v15 = *(v1 + 224);
    v14 = *(v1 + 232);
    v16 = *(v1 + 184);
    v17 = *(v1 + 192);
    v18 = *(v1 + 152);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (v11 << 6);
    v21 = *(v111 + 48) + *(v14 + 72) * v20;
    (*(v14 + 16))();
    sub_1D1741C08(*(v111 + 56) + *(v18 + 72) * v20, v16, &qword_1EC645BD0, &qword_1D1E96B30);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    v23 = *(v22 + 48);
    (*(v14 + 32))(v17, v118, v15);
    sub_1D1741A90(v16, v17 + v23, &qword_1EC645BD0, &qword_1D1E96B30);
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
    v13 = v11;
LABEL_16:
    v24 = *(v1 + 200);
    sub_1D1741A90(*(v1 + 192), v24, &qword_1EC64A748, &qword_1D1E96B38);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      break;
    }

    v26 = *(v1 + 232);
    v27 = *(v1 + 240);
    v113 = v13;
    v116 = *(v1 + 224);
    v28 = *(v1 + 200);
    v29 = *(v1 + 168);
    v30 = *(v1 + 176);
    v31 = *(v1 + 160);
    v32 = v124[18];
    v119 = v124[17];
    v33 = v28 + *(v25 + 48);
    v34 = *(v33 + *(v32 + 48));
    sub_1D1AC3BD0(v33, v29, type metadata accessor for StateSnapshot);
    v35 = *(v32 + 48);
    sub_1D1AC3BD0(v29, v30, type metadata accessor for StateSnapshot);
    *(v30 + v35) = v34;
    v1 = v124;
    (*(v26 + 32))(v27, v28, v116);
    sub_1D1741C08(v30, v31, &qword_1EC645BD0, &qword_1D1E96B30);
    sub_1D1AC3BD0(v31, v119, type metadata accessor for StateSnapshot);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v124[13] = v121;
    a1 = sub_1D1742188(v27);
    v38 = v121[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_53;
    }

    v42 = v37;
    if (v121[3] >= v41)
    {
      if ((v36 & 1) == 0)
      {
        v57 = a1;
        sub_1D17375D4();
        a1 = v57;
      }
    }

    else
    {
      v43 = v124[30];
      sub_1D1725B48(v41, v36);
      v44 = v124[13];
      a1 = sub_1D1742188(v43);
      if ((v42 & 1) != (v45 & 1))
      {
LABEL_49:
        v100 = *(v1 + 224);

        return sub_1D1E690FC();
      }
    }

    v10 = v124[13];
    v46 = v124[29];
    v47 = v124[30];
    v48 = v124[28];
    v122 = v124[22];
    v50 = v124[16];
    v49 = v124[17];
    if (v42)
    {
      sub_1D1AC36D4(v124[17], v10[7] + *(v50 + 72) * a1, type metadata accessor for StateSnapshot);
      (*(v46 + 8))(v47, v48);
      a1 = sub_1D1741A30(v122, &qword_1EC645BD0, &qword_1D1E96B30);
      v2 = v113;
      v9 = v10;
    }

    else
    {
      v10[(a1 >> 6) + 8] |= 1 << a1;
      v52 = *(v46 + 16);
      v51 = v46 + 16;
      v1 = a1;
      v52(v10[6] + *(v51 + 56) * a1, v47, v48);
      sub_1D1AC3BD0(v49, v10[7] + *(v50 + 72) * v1, type metadata accessor for StateSnapshot);
      (*(v51 - 8))(v47, v48);
      a1 = sub_1D1741A30(v122, &qword_1EC645BD0, &qword_1D1E96B30);
      v53 = v10[2];
      v40 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v40)
      {
        goto LABEL_54;
      }

      v10[2] = v54;
      v2 = v113;
      v9 = v10;
      v1 = v124;
    }
  }

  v58 = *(v1 + 448);
  v59 = *(v1 + 368);
  v60 = *(v1 + 352);
  v61 = *(v1 + 328);
  v62 = *(v1 + 272);

  a1 = sub_1D1AC3B08(v62, type metadata accessor for StateSnapshot.UpdateType);
  if (v60 + 1 == v61)
  {
    v63 = *(v1 + 320);

    *(v1 + 456) = v115;
    v64 = *(v1 + 288);
    v65 = sub_1D1ABB194;
    goto LABEL_66;
  }

  v66 = *(v1 + 352) + 1;
  *(v1 + 352) = v66;
  *(v1 + 360) = v115;
  *(v1 + 344) = v121;
  v67 = *(v1 + 320);
  if (v66 >= *(v67 + 16))
  {
    goto LABEL_59;
  }

  v68 = *(v1 + 304);
  v69 = *(v1 + 312);
  sub_1D1AC3B68(v67 + ((*(v1 + 472) + 32) & ~*(v1 + 472)) + *(*(v1 + 264) + 72) * v66, *(v1 + 272), type metadata accessor for StateSnapshot.UpdateType);
  v70 = [v68 homes];
  v71 = sub_1D1E67C1C();

  a1 = v71;
  if (v71 >> 62)
  {
    goto LABEL_60;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
    goto LABEL_32;
  }

LABEL_61:
  v74 = MEMORY[0x1E69E7CC8];
LABEL_62:
  v103 = *(v1 + 272);

  v104 = StateSnapshot.UpdateType.relevantHome(in:)(v74);

  if (v104)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1D1E73FA0;
    *(v105 + 32) = v104;
  }

  else
  {
    v106 = *(v1 + 312);
    v107 = [*(v1 + 304) homes];
    v105 = sub_1D1E67C1C();

    v104 = 0;
  }

  *(v1 + 368) = v104;
  *(v1 + 376) = v105;
  v108 = *(v1 + 288);
  v109 = v104;
  v65 = sub_1D1ABA02C;
  v64 = v108;
LABEL_66:

  return MEMORY[0x1EEE6DFA0](v65, v64, 0);
}

uint64_t sub_1D1ABB194()
{
  v1 = *(v0 + 120);
  *(v0 + 464) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABB204, 0, 0);
}

uint64_t sub_1D1ABB204()
{
  v1 = v0[58];
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[36];
    v5 = v0[26];
    v4 = v0[27];
    v6 = *(v1 + 24);

    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = 5;
    sub_1D1741C08(v4, v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v9 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = sub_1D1A83158;
    v10[5] = v8;

    sub_1D17C6EF0(0, 0, v5, &unk_1D1E96B60, v10);

    sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
  }

  v11 = v0[34];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[30];
  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[22];
  v20 = v0[23];
  v23 = v0[21];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[57];

  v21 = v0[1];

  return v21(v26);
}

uint64_t sub_1D1ABB498(unint64_t a1, unint64_t a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(updated - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](updated);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = (&v62 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v62 - v12;
  v71 = sub_1D1E66A7C();
  v66 = *(v71 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v62 = v4;
  v63 = a1;
  v16 = MEMORY[0x1E69E7CC8];
  if (v15)
  {
    v17 = 0;
    v69 = a2 & 0xFFFFFFFFFFFFFF8;
    v70 = a2 & 0xC000000000000001;
    v65 = v66 + 16;
    v68 = (v66 + 8);
    do
    {
      if (v70)
      {
        v19 = MEMORY[0x1D3891EF0](v17, a2);
      }

      else
      {
        if (v17 >= *(v69 + 16))
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 8 * v17 + 32);
      }

      a1 = v19;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v15 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v21 = [v19 uniqueIdentifier];
      v22 = v75;
      sub_1D1E66A5C();

      v23 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v16;
      v4 = v16;
      a1 = sub_1D1742188(v22);
      v26 = v16[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_48;
      }

      v29 = v25;
      if (v16[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = v81[0];
          if (v25)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1D173A870();
          v16 = v81[0];
          if (v29)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1D172B420(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_1D1742188(v75);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_1D1E690FC();
          __break(1u);
          return result;
        }

        a1 = v30;
        v16 = v81[0];
        if (v29)
        {
LABEL_5:
          v18 = v16[7];
          v4 = *(v18 + 8 * a1);
          *(v18 + 8 * a1) = v23;

          (*v68)(v75, v71);
          goto LABEL_6;
        }
      }

      v16[(a1 >> 6) + 8] |= 1 << a1;
      v32 = v66;
      v33 = v75;
      v4 = v71;
      (*(v66 + 16))(v16[6] + *(v66 + 72) * a1, v75, v71);
      *(v16[7] + 8 * a1) = v23;

      (*(v32 + 8))(v33, v4);
      v34 = v16[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_49;
      }

      v16[2] = v36;
LABEL_6:
      ++v17;
    }

    while (v20 != v15);
  }

  v81[0] = MEMORY[0x1E69E7CD0];
  v37 = MEMORY[0x1E69E7CC8];
  v80 = MEMORY[0x1E69E7CC8];
  v79 = sub_1D18D995C(MEMORY[0x1E69E7CC0]);
  v38 = v63;
  v39 = *(v63 + 16);
  if (v39)
  {
    v40 = v62;
    v41 = v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v42 = v62[9];
    v43 = *(v63 + 16);
    v44 = v67;
    do
    {
      sub_1D1ABE9A8(v41, &v80, v81, v16, &v79);
      v41 += v42;
      --v43;
    }

    while (v43);
    v37 = v80;
  }

  else
  {
    v44 = v67;
    v40 = v62;
  }

  v75 = v37;
  v45 = sub_1D1B32324(v37);
  v70 = 0;
  v71 = sub_1D1785BE4(v45);
  v78[0] = 0;
  if (v39)
  {
    v46 = 0;
    v47 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v48 = v38 + v47;
    v49 = v40[9];
    v50 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v51 = v74;
      sub_1D1AC3B68(v48, v74, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1AC3B68(v51, v44, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_36;
        }

        v53 = v64;
        sub_1D1AC3B68(v44, v64, type metadata accessor for StateSnapshot.UpdateType);
        if (*v53)
        {
          break;
        }
      }

      sub_1D1AC3B08(v44, type metadata accessor for StateSnapshot.UpdateType);
      if ((v46 & 1) == 0)
      {
        v46 = 1;
        v78[0] = 1;
        goto LABEL_39;
      }

      sub_1D1AC3B08(v74, type metadata accessor for StateSnapshot.UpdateType);
      v46 = 1;
LABEL_31:
      v48 += v49;
      if (!--v39)
      {
        goto LABEL_45;
      }
    }

LABEL_36:
    sub_1D1AC3B08(v44, type metadata accessor for StateSnapshot.UpdateType);
LABEL_39:
    sub_1D1AC3BD0(v74, v73, type metadata accessor for StateSnapshot.UpdateType);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v50;
    if ((v54 & 1) == 0)
    {
      sub_1D178D7B4(0, *(v50 + 16) + 1, 1);
      v50 = v77;
    }

    v56 = *(v50 + 16);
    v55 = *(v50 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1D178D7B4(v55 > 1, v56 + 1, 1);
      v50 = v77;
    }

    *(v50 + 16) = v56 + 1;
    sub_1D1AC3BD0(v73, v50 + v47 + v56 * v49, type metadata accessor for StateSnapshot.UpdateType);
    v44 = v67;
    goto LABEL_31;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v57 = MEMORY[0x1E69E7CD0];
  v77 = MEMORY[0x1E69E7CD0];
  v58 = v71;

  v59 = sub_1D1AC0FEC(v50, v81, v58, v16, &v77, &v79);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v76 = v57;
  v60 = sub_1D1B2D7C8(v59, v78, &v76);

  return v60;
}

uint64_t sub_1D1ABBBC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1ABBBE8, 0, 0);
}

uint64_t sub_1D1ABBBE8()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABBC80, v1, 0);
}

uint64_t sub_1D1ABBC80()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABBCF0, 0, 0);
}

uint64_t sub_1D1ABBCF0()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[4];
    v0[6] = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D1ABBDA0, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1ABBDA0()
{
  v1 = v0[6];
  sub_1D1AFCD30(v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t HomeState.Stream.StateSnapshotUpdateController.deinit()
{
  swift_weakDestroy();
  v1 = *(*v0 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + *(*v0 + 128));

  v6 = *(v0 + *(*v0 + 136));

  v7 = *(v0 + qword_1EC6BE170);

  return v0;
}

uint64_t sub_1D1ABBF54(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1ABBFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC6BE178);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  a1[3] = v4;
  a1[4] = sub_1D1AC3798(&qword_1EC6491C8, &qword_1EC6491A0, &unk_1D1E92AF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);
  v7 = v3 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;

  return v6(boxed_opaque_existential_1, v7, v4);
}

uint64_t sub_1D1ABC074(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  *(v3 + 128) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  *(v3 + 144) = v7;
  v8 = *(v7 - 8);
  *(v3 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 168) = updated;
  v11 = *(*(updated - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v12 = type metadata accessor for StaticMatterDevice();
  *(v3 + 184) = v12;
  v13 = *(v12 - 8);
  *(v3 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v15 = type metadata accessor for MatterStateSnapshot();
  *(v3 + 224) = v15;
  v16 = *(v15 - 8);
  *(v3 + 232) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  v18 = sub_1D1E66A7C();
  *(v3 + 248) = v18;
  v19 = *(v18 - 8);
  *(v3 + 256) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0) - 8) + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  *(v3 + 57) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC348, 0, 0);
}

uint64_t sub_1D1ABC348()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 320) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC3E0, v1, 0);
}

uint64_t sub_1D1ABC3E0()
{
  v1 = *(v0 + 120);
  *(v0 + 328) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC450, 0, 0);
}

uint64_t sub_1D1ABC450()
{
  if (v0[41])
  {
    v1 = v0[40];

    return MEMORY[0x1EEE6DFA0](sub_1D1ABC5B0, v1, 0);
  }

  else
  {
    v16 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
    v3 = v0[36];
    v2 = v0[37];
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v7 = v0[30];
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[25];
    v11 = v0[22];
    v14 = v0[20];
    v15 = v0[17];

    v12 = v0[1];

    return v12(v16);
  }
}

uint64_t sub_1D1ABC5B0()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 336) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC638, 0, 0);
}

uint64_t sub_1D1ABC638()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = [*(v0 + 336) homes];
    *(v0 + 344) = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v5 = sub_1D1E67C1C();

    v6 = sub_1D18F9E6C(v5);

    updated = _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO6unique7updates2inSayAEGAI_SayAA0A8Protocol_pGtFZ_0(v3, v6);
    *(v0 + 352) = updated;

    v9 = *(updated + 16);
    *(v0 + 360) = v9;
    if (v9)
    {
      v10 = *(v0 + 304);
      v11 = *(*(v0 + 120) + qword_1EC6BE178);
      *(v0 + 384) = MEMORY[0x1E69E7CC8];
      *(v0 + 392) = 0;
      *(v0 + 368) = v11;
      *(v0 + 376) = 0;
      v12 = *(v0 + 352);
      if (*(v12 + 16))
      {
        v13 = *(v0 + 336);
        v14 = *(v0 + 344);
        v15 = *(v12 + 32);
        *(v0 + 400) = v15;
        v16 = *(v12 + 40);
        *(v0 + 408) = v16;
        v17 = *(v12 + 48);
        *(v0 + 58) = v17;
        *(v0 + 40) = v15;
        *(v0 + 48) = v16;
        *(v0 + 56) = v17;
        sub_1D1A28388(v15, v16, v17);
        v18 = [v13 homes];
        sub_1D1E67C1C();

        v19 = sub_1D1A2A7C8();
        *(v0 + 416) = v19;

        *(v0 + 64) = v15;
        *(v0 + 72) = v16;
        *(v0 + 80) = v17;
        if (v10)
        {
          sub_1D186145C(*(v0 + 312), *(v0 + 57));
          v20 = *(v0 + 57);
          v21 = *(v0 + 312);
        }

        else
        {
          v21 = 0;
          v20 = -1;
        }

        *(v0 + 88) = v21;
        *(v0 + 96) = v20;
        v34 = swift_task_alloc();
        *(v0 + 424) = v34;
        *v34 = v0;
        v34[1] = sub_1D1ABC970;
        v35 = *(v0 + 368);

        return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v19, v0 + 88);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v22 = *(v0 + 336);

    v38 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v38 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  }

  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 264);
  v28 = *(v0 + 240);
  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 200);
  v32 = *(v0 + 176);
  v36 = *(v0 + 160);
  v37 = *(v0 + 136);

  v33 = *(v0 + 8);

  return v33(v38);
}

uint64_t sub_1D1ABC970(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 424);
  v5 = *(*v1 + 416);
  v7 = *v1;
  *(v3 + 432) = a1;

  sub_1D1861470(*(v2 + 88), *(v3 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D1ABCAB8, 0, 0);
}

uint64_t sub_1D1ABCAB8()
{
  v149 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148 = v2;
  sub_1D1AC317C(v1, sub_1D1ABF45C, 0, isUniquelyReferenced_nonNull_native, &v148);
  *(v0 + 440) = v3;

  *(v0 + 448) = v148;
  v5 = *(v1 + 32);
  *(v0 + 59) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v1 + 64);
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 432);
LABEL_8:
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v144 = (v8 - 1) & v8;
    v19 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v16 + 16))(v13, *(v10 + 48) + *(v16 + 72) * v19, v15);
    sub_1D1AC3B68(*(v10 + 56) + *(v18 + 72) * v19, v17, type metadata accessor for MatterStateSnapshot);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v21 = *(v20 + 48);
    (*(v16 + 32))(v14, v13, v15);
    sub_1D1AC3BD0(v17, v14 + v21, type metadata accessor for MatterStateSnapshot);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    v22 = v144;
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v9 = v11 + 1;
      v10 = *(v0 + 432);
      v8 = *(v10 + 8 * v11++ + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v124 = *(v0 + 288);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    (*(*(v125 - 8) + 56))(v124, 1, 1, v125);
    v22 = 0;
  }

  *(v0 + 456) = v22;
  *(v0 + 464) = v12;
  v23 = *(v0 + 296);
  sub_1D1741A90(*(v0 + 288), v23, &qword_1EC645410, &unk_1D1E799A0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    v48 = *(v0 + 248);
    v49 = *(v0 + 224);
    v50 = *(v0 + 296) + *(v24 + 48);
    v134 = *(*(v0 + 256) + 32);
    (v134)(*(v0 + 272));
    v51 = *(v50 + *(v49 + 24));

    sub_1D1AC3B08(v50, type metadata accessor for MatterStateSnapshot);
    v52 = sub_1D18D5FAC(MEMORY[0x1E69E7CC0]);
    v53 = v51 + 64;
    v54 = -1 << *(v51 + 32);
    if (-v54 < 64)
    {
      v55 = ~(-1 << -v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(v51 + 64);
    v57 = (63 - v54) >> 6;
    v139 = v51;

    v58 = 0;
    v137 = v57;
    for (i = v51 + 64; ; v53 = i)
    {
      if (!v56)
      {
        while (1)
        {
          v60 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
            goto LABEL_67;
          }

          if (v60 >= v57)
          {
            break;
          }

          v56 = *(v53 + 8 * v60);
          ++v58;
          if (v56)
          {
            v146 = v52;
            goto LABEL_26;
          }
        }

        v104 = *(v0 + 320);
        v105 = *(v0 + 272);
        v107 = *(v0 + 248);
        v106 = *(v0 + 256);
        v109 = *(v0 + 168);
        v108 = *(v0 + 176);

        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
        *v108 = v52;
        (*(v106 + 16))(v108 + v110, v105, v107);
        swift_storeEnumTagMultiPayload();
        v31 = sub_1D1ABD61C;
        v32 = v104;
        v33 = 0;

        return MEMORY[0x1EEE6DFA0](v31, v32, v33);
      }

      v146 = v52;
      v60 = v58;
LABEL_26:
      v61 = *(v0 + 256);
      v62 = *(v0 + 264);
      v63 = *(v0 + 248);
      v65 = *(v0 + 208);
      v64 = *(v0 + 216);
      v66 = *(v0 + 184);
      v143 = *(*(v0 + 192) + 72);
      sub_1D1AC3B68(*(v139 + 56) + v143 * (__clz(__rbit64(v56)) | (v60 << 6)), v64, type metadata accessor for StaticMatterDevice);
      v141 = *(v61 + 16);
      (v141)(v62, v64 + *(v66 + 48), v63);
      sub_1D1AC3B68(v64, v65, type metadata accessor for StaticMatterDevice);
      v67 = v146;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v146;
      v31 = sub_1D1742188(v62);
      v69 = *(v146 + 16);
      v70 = (v32 & 1) == 0;
      v71 = __OFADD__(v69, v70);
      v72 = v69 + v70;
      if (v71)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (*(v146 + 24) < v72)
      {
        break;
      }

      if (v68)
      {
        goto LABEL_31;
      }

      v129 = v32;
      v130 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
      v86 = sub_1D1E68BAC();
      v77 = v86;
      v87 = *(v146 + 16);
      if (v87)
      {
        v31 = v86 + 64;
        v32 = (v146 + 64);
        v88 = ((1 << *(v77 + 32)) + 63) >> 6;
        if (v77 != v146 || v31 >= v32 + 8 * v88)
        {
          v31 = memmove(v31, v32, 8 * v88);
          v87 = *(v146 + 16);
        }

        v89 = 0;
        *(v77 + 16) = v87;
        v90 = 1 << *(v146 + 32);
        if (v90 < 64)
        {
          v91 = ~(-1 << v90);
        }

        else
        {
          v91 = -1;
        }

        v92 = v91 & *(v146 + 64);
        v93 = (v90 + 63) >> 6;
        v131 = v77;
        if (v92)
        {
          do
          {
            v94 = __clz(__rbit64(v92));
            v136 = (v92 - 1) & v92;
LABEL_49:
            v97 = v94 | (v89 << 6);
            v98 = *(v0 + 280);
            v132 = v98;
            v133 = *(v0 + 248);
            v99 = *(v0 + 200);
            v100 = *(*(v0 + 256) + 72) * v97;
            v101 = *(v146 + 48) + v100;
            v141();
            v102 = v97 * v143;
            sub_1D1AC3B68(*(v146 + 56) + v102, v99, type metadata accessor for StaticMatterDevice);
            v134(*(v131 + 48) + v100, v132, v133);
            v103 = *(v131 + 56) + v102;
            v77 = v131;
            v31 = sub_1D1AC3BD0(v99, v103, type metadata accessor for StaticMatterDevice);
            v92 = v136;
          }

          while (v136);
        }

        v95 = v89;
        while (1)
        {
          v89 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_70;
          }

          if (v89 >= v93)
          {
            break;
          }

          v96 = *(v146 + 64 + 8 * v89);
          ++v95;
          if (v96)
          {
            v94 = __clz(__rbit64(v96));
            v136 = (v96 - 1) & v96;
            goto LABEL_49;
          }
        }
      }

      v31 = v130;
      LOBYTE(v32) = v129;
LABEL_32:
      v56 &= v56 - 1;
      v79 = *(v0 + 256);
      v78 = *(v0 + 264);
      v80 = *(v0 + 248);
      v82 = *(v0 + 208);
      v81 = *(v0 + 216);
      if (v32)
      {
        v59 = *(v0 + 264);
        sub_1D1AC36D4(*(v0 + 208), *(v77 + 56) + v31 * v143, type metadata accessor for StaticMatterDevice);
        (*(v79 + 8))(v59, v80);
        v31 = sub_1D1AC3B08(v81, type metadata accessor for StaticMatterDevice);
      }

      else
      {
        *(v77 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v147 = v81;
        v83 = v31;
        v135 = v78;
        (v141)(*(v77 + 48) + *(v79 + 72) * v31, v78, v80);
        sub_1D1AC3BD0(v82, *(v77 + 56) + v83 * v143, type metadata accessor for StaticMatterDevice);
        (*(v79 + 8))(v135, v80);
        v31 = sub_1D1AC3B08(v147, type metadata accessor for StaticMatterDevice);
        v84 = *(v77 + 16);
        v71 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v71)
        {
          goto LABEL_68;
        }

        *(v77 + 16) = v85;
      }

      v58 = v60;
      v52 = v77;
      v57 = v137;
    }

    v73 = *(v0 + 264);
    v74 = v32;
    sub_1D1725208(v72, v68);
    v75 = v73;
    v67 = *(v0 + 104);
    v31 = sub_1D1742188(v75);
    if ((v74 & 1) != (v76 & 1))
    {
      v128 = *(v0 + 248);

      return sub_1D1E690FC();
    }

    LOBYTE(v32) = v74;
LABEL_31:
    v77 = v67;
    goto LABEL_32;
  }

  v25 = *(v0 + 432);
  v26 = *(v0 + 400);
  v27 = *(v0 + 408);
  v28 = *(v0 + 392);
  v29 = *(v0 + 360);
  v30 = *(v0 + 58);

  sub_1D1A283E8(v26, v27, v30);
  if (v28 + 1 == v29)
  {
    v34 = *(v0 + 352);
    v35 = *(v0 + 336);

    v145 = *(v0 + 448);
    v37 = *(v0 + 288);
    v36 = *(v0 + 296);
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v40 = *(v0 + 264);
    v41 = *(v0 + 240);
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 200);
    v45 = *(v0 + 176);
    v140 = *(v0 + 160);
    v142 = *(v0 + 136);

    v46 = *(v0 + 8);

    return v46(v145);
  }

  else
  {
    v111 = *(v0 + 392) + 1;
    *(v0 + 392) = v111;
    *(v0 + 376) = *(v0 + 440);
    v112 = *(v0 + 352);
    if (v111 >= *(v112 + 16))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v31, v32, v33);
    }

    else
    {
      v113 = *(v0 + 336);
      v114 = *(v0 + 344);
      v115 = *(v0 + 304);
      v116 = v112 + 24 * v111;
      v117 = *(v116 + 32);
      *(v0 + 400) = v117;
      v118 = *(v116 + 40);
      *(v0 + 408) = v118;
      v119 = *(v116 + 48);
      *(v0 + 58) = v119;
      *(v0 + 40) = v117;
      *(v0 + 48) = v118;
      *(v0 + 56) = v119;
      sub_1D1A28388(v117, v118, v119);
      v120 = [v113 homes];
      sub_1D1E67C1C();

      v121 = sub_1D1A2A7C8();
      *(v0 + 416) = v121;

      *(v0 + 64) = v117;
      *(v0 + 72) = v118;
      *(v0 + 80) = v119;
      if (v115)
      {
        sub_1D186145C(*(v0 + 312), *(v0 + 57));
        v122 = *(v0 + 57);
        v123 = *(v0 + 312);
      }

      else
      {
        v123 = 0;
        v122 = -1;
      }

      *(v0 + 88) = v123;
      *(v0 + 96) = v122;
      v126 = swift_task_alloc();
      *(v0 + 424) = v126;
      *v126 = v0;
      v126[1] = sub_1D1ABC970;
      v127 = *(v0 + 368);

      return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v121, v0 + 88);
    }
  }
}

uint64_t sub_1D1ABD61C()
{
  v1 = *(v0 + 120);
  *(v0 + 472) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABD68C, 0, 0);
}

uint64_t sub_1D1ABD68C()
{
  v1 = *(v0 + 472);
  if (v1)
  {
    v2 = *(v0 + 176);
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = *(v1 + 144);

    v9 = *(*v8 + 120);
    sub_1D1AC3B68(v2, v6, type metadata accessor for StateSnapshot.UpdateType);
    v10 = *(v7 + 44);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
    sub_1D1E67ECC();

    (*(v4 + 8))(v3, v5);
  }

  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  sub_1D1AC3B08(*(v0 + 176), type metadata accessor for StateSnapshot.UpdateType);
  v15 = (*(v14 + 8))(v12, v13);
  v18 = *(v0 + 456);
  v19 = *(v0 + 464);
  if (v18)
  {
    v20 = *(v0 + 432);
    goto LABEL_13;
  }

  v21 = ((1 << *(v0 + 59)) + 63) >> 6;
  if (v21 <= (v19 + 1))
  {
    v22 = v19 + 1;
  }

  else
  {
    v22 = ((1 << *(v0 + 59)) + 63) >> 6;
  }

  v23 = v22 - 1;
  do
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v24 >= v21)
    {
      v134 = *(v0 + 288);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v135 - 8) + 56))(v134, 1, 1, v135);
      v34 = 0;
      goto LABEL_14;
    }

    v20 = *(v0 + 432);
    v18 = *(v20 + 8 * v24 + 64);
    ++v19;
  }

  while (!v18);
  v19 = v24;
LABEL_13:
  v25 = *(v0 + 280);
  v26 = *(v0 + 288);
  v27 = *(v0 + 248);
  v28 = *(v0 + 256);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v154 = (v18 - 1) & v18;
  v31 = __clz(__rbit64(v18)) | (v19 << 6);
  (*(v28 + 16))(v25, *(v20 + 48) + *(v28 + 72) * v31, v27);
  sub_1D1AC3B68(*(v20 + 56) + *(v30 + 72) * v31, v29, type metadata accessor for MatterStateSnapshot);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  v33 = *(v32 + 48);
  (*(v28 + 32))(v26, v25, v27);
  sub_1D1AC3BD0(v29, v26 + v33, type metadata accessor for MatterStateSnapshot);
  (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
  v34 = v154;
  v23 = v19;
LABEL_14:
  *(v0 + 456) = v34;
  *(v0 + 464) = v23;
  v35 = *(v0 + 296);
  sub_1D1741A90(*(v0 + 288), v35, &qword_1EC645410, &unk_1D1E799A0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
  {
    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 296) + *(v36 + 48);
    v144 = *(*(v0 + 256) + 32);
    (v144)(*(v0 + 272));
    v60 = *(v59 + *(v58 + 24));

    sub_1D1AC3B08(v59, type metadata accessor for MatterStateSnapshot);
    v61 = sub_1D18D5FAC(MEMORY[0x1E69E7CC0]);
    v62 = v60 + 64;
    v63 = -1 << *(v60 + 32);
    if (-v63 < 64)
    {
      v64 = ~(-1 << -v63);
    }

    else
    {
      v64 = -1;
    }

    v65 = v64 & *(v60 + 64);
    v66 = (63 - v63) >> 6;
    v149 = v60;

    v67 = 0;
    v147 = v66;
    for (i = v60 + 64; ; v62 = i)
    {
      if (!v65)
      {
        while (1)
        {
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v69 >= v66)
          {
            break;
          }

          v65 = *(v62 + 8 * v69);
          ++v67;
          if (v65)
          {
            v156 = v61;
            goto LABEL_31;
          }
        }

        v113 = *(v0 + 320);
        v114 = *(v0 + 272);
        v116 = *(v0 + 248);
        v115 = *(v0 + 256);
        v118 = *(v0 + 168);
        v117 = *(v0 + 176);

        v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
        *v117 = v61;
        (*(v115 + 16))(v117 + v119, v114, v116);
        swift_storeEnumTagMultiPayload();
        v15 = sub_1D1ABD61C;
        v16 = v113;
        v17 = 0;

        return MEMORY[0x1EEE6DFA0](v15, v16, v17);
      }

      v156 = v61;
      v69 = v67;
LABEL_31:
      v70 = *(v0 + 256);
      v71 = *(v0 + 264);
      v72 = *(v0 + 248);
      v74 = *(v0 + 208);
      v73 = *(v0 + 216);
      v75 = *(v0 + 184);
      v153 = *(*(v0 + 192) + 72);
      sub_1D1AC3B68(*(v149 + 56) + v153 * (__clz(__rbit64(v65)) | (v69 << 6)), v73, type metadata accessor for StaticMatterDevice);
      v151 = *(v70 + 16);
      (v151)(v71, v73 + *(v75 + 48), v72);
      sub_1D1AC3B68(v73, v74, type metadata accessor for StaticMatterDevice);
      v76 = v156;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v156;
      v15 = sub_1D1742188(v71);
      v78 = *(v156 + 16);
      v79 = (v16 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_73;
      }

      if (*(v156 + 24) < v81)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v139 = v16;
      v140 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
      v95 = sub_1D1E68BAC();
      v86 = v95;
      v96 = *(v156 + 16);
      if (v96)
      {
        v15 = v95 + 64;
        v16 = (v156 + 64);
        v97 = ((1 << *(v86 + 32)) + 63) >> 6;
        if (v86 != v156 || v15 >= v16 + 8 * v97)
        {
          v15 = memmove(v15, v16, 8 * v97);
          v96 = *(v156 + 16);
        }

        v98 = 0;
        *(v86 + 16) = v96;
        v99 = 1 << *(v156 + 32);
        if (v99 < 64)
        {
          v100 = ~(-1 << v99);
        }

        else
        {
          v100 = -1;
        }

        v101 = v100 & *(v156 + 64);
        v102 = (v99 + 63) >> 6;
        v141 = v86;
        if (v101)
        {
          do
          {
            v103 = __clz(__rbit64(v101));
            v146 = (v101 - 1) & v101;
LABEL_54:
            v106 = v103 | (v98 << 6);
            v107 = *(v0 + 280);
            v142 = v107;
            v143 = *(v0 + 248);
            v108 = *(v0 + 200);
            v109 = *(*(v0 + 256) + 72) * v106;
            v110 = *(v156 + 48) + v109;
            v151();
            v111 = v106 * v153;
            sub_1D1AC3B68(*(v156 + 56) + v111, v108, type metadata accessor for StaticMatterDevice);
            v144(*(v141 + 48) + v109, v142, v143);
            v112 = *(v141 + 56) + v111;
            v86 = v141;
            v15 = sub_1D1AC3BD0(v108, v112, type metadata accessor for StaticMatterDevice);
            v101 = v146;
          }

          while (v146);
        }

        v104 = v98;
        while (1)
        {
          v98 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_76;
          }

          if (v98 >= v102)
          {
            break;
          }

          v105 = *(v156 + 64 + 8 * v98);
          ++v104;
          if (v105)
          {
            v103 = __clz(__rbit64(v105));
            v146 = (v105 - 1) & v105;
            goto LABEL_54;
          }
        }
      }

      v15 = v140;
      LOBYTE(v16) = v139;
LABEL_37:
      v65 &= v65 - 1;
      v88 = *(v0 + 256);
      v87 = *(v0 + 264);
      v89 = *(v0 + 248);
      v91 = *(v0 + 208);
      v90 = *(v0 + 216);
      if (v16)
      {
        v68 = *(v0 + 264);
        sub_1D1AC36D4(*(v0 + 208), *(v86 + 56) + v15 * v153, type metadata accessor for StaticMatterDevice);
        (*(v88 + 8))(v68, v89);
        v15 = sub_1D1AC3B08(v90, type metadata accessor for StaticMatterDevice);
      }

      else
      {
        *(v86 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v157 = v90;
        v92 = v15;
        v145 = v87;
        (v151)(*(v86 + 48) + *(v88 + 72) * v15, v87, v89);
        sub_1D1AC3BD0(v91, *(v86 + 56) + v92 * v153, type metadata accessor for StaticMatterDevice);
        (*(v88 + 8))(v145, v89);
        v15 = sub_1D1AC3B08(v157, type metadata accessor for StaticMatterDevice);
        v93 = *(v86 + 16);
        v80 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v80)
        {
          goto LABEL_74;
        }

        *(v86 + 16) = v94;
      }

      v67 = v69;
      v61 = v86;
      v66 = v147;
    }

    v82 = *(v0 + 264);
    v83 = v16;
    sub_1D1725208(v81, isUniquelyReferenced_nonNull_native);
    v84 = v82;
    v76 = *(v0 + 104);
    v15 = sub_1D1742188(v84);
    if ((v83 & 1) != (v85 & 1))
    {
      v138 = *(v0 + 248);

      return sub_1D1E690FC();
    }

    LOBYTE(v16) = v83;
LABEL_36:
    v86 = v76;
    goto LABEL_37;
  }

  v37 = *(v0 + 432);
  v38 = *(v0 + 400);
  v39 = *(v0 + 408);
  v40 = *(v0 + 392);
  v41 = *(v0 + 360);
  v42 = *(v0 + 58);

  sub_1D1A283E8(v38, v39, v42);
  if (v40 + 1 == v41)
  {
    v43 = *(v0 + 352);
    v44 = *(v0 + 336);

    v155 = *(v0 + 448);
    v46 = *(v0 + 288);
    v45 = *(v0 + 296);
    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 264);
    v50 = *(v0 + 240);
    v52 = *(v0 + 208);
    v51 = *(v0 + 216);
    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v150 = *(v0 + 160);
    v152 = *(v0 + 136);

    v55 = *(v0 + 8);

    return v55(v155);
  }

  v120 = *(v0 + 440);
  v121 = *(v0 + 392) + 1;
  *(v0 + 384) = *(v0 + 448);
  *(v0 + 392) = v121;
  *(v0 + 376) = v120;
  v122 = *(v0 + 352);
  if (v121 < *(v122 + 16))
  {
    v123 = *(v0 + 336);
    v124 = *(v0 + 344);
    v125 = *(v0 + 304);
    v126 = v122 + 24 * v121;
    v127 = *(v126 + 32);
    *(v0 + 400) = v127;
    v128 = *(v126 + 40);
    *(v0 + 408) = v128;
    v129 = *(v126 + 48);
    *(v0 + 58) = v129;
    *(v0 + 40) = v127;
    *(v0 + 48) = v128;
    *(v0 + 56) = v129;
    sub_1D1A28388(v127, v128, v129);
    v130 = [v123 homes];
    sub_1D1E67C1C();

    v131 = sub_1D1A2A7C8();
    *(v0 + 416) = v131;

    *(v0 + 64) = v127;
    *(v0 + 72) = v128;
    *(v0 + 80) = v129;
    if (v125)
    {
      sub_1D186145C(*(v0 + 312), *(v0 + 57));
      v132 = *(v0 + 57);
      v133 = *(v0 + 312);
    }

    else
    {
      v133 = 0;
      v132 = -1;
    }

    *(v0 + 88) = v133;
    *(v0 + 96) = v132;
    v136 = swift_task_alloc();
    *(v0 + 424) = v136;
    *v136 = v0;
    v136[1] = sub_1D1ABC970;
    v137 = *(v0 + 368);

    return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v131, v0 + 88);
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D1ABE2C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1ABE2E0, 0, 0);
}

uint64_t sub_1D1ABE2E0()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABE378, v1, 0);
}

uint64_t sub_1D1ABE378()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABE3E8, 0, 0);
}

uint64_t sub_1D1ABE3E8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[4];
    v0[6] = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D1ABE498, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1ABE498()
{
  v1 = v0[6];
  sub_1D1AFD7B4(v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t HomeState.Stream.MatterSnapshotUpdateController.deinit()
{
  swift_weakDestroy();
  v1 = *(*v0 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + *(*v0 + 128));

  v6 = *(v0 + *(*v0 + 136));

  v7 = *(v0 + qword_1EC6BE178);

  return v0;
}

uint64_t sub_1D1ABE64C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D1ABE6AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  sub_1D1E6769C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A8, &qword_1D1E96C00);
  swift_getWitnessTable();
  result = sub_1D1E67A9C();
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1D1ABE794(void **a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = *(v8 + 16);
  v15(v25 - v13, a2, TupleTypeMetadata2);
  sub_1D1757A60(*&v14[*(TupleTypeMetadata2 + 48)], *&v14[*(TupleTypeMetadata2 + 48) + 8], *&v14[*(TupleTypeMetadata2 + 48) + 16], v14[*(TupleTypeMetadata2 + 48) + 24]);
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v26;
    v15(v12, a2, TupleTypeMetadata2);
    v18 = &v12[*(TupleTypeMetadata2 + 48)];
    v19 = *v18;
    v20 = *(v18 + 1);
    v25[1] = v3;
    v21 = *(v18 + 2);
    v22 = *a1;
    v23 = v18[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    sub_1D1753978(v19, v20, v21, v23, v17, isUniquelyReferenced_nonNull_native);

    *a1 = v26;
    return (*(*(a3 - 8) + 8))(v12, a3);
  }

  return result;
}

uint64_t sub_1D1ABE9A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v92 = a5;
  v87 = a4;
  v90 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v82 - v9;
  v98 = _s7MergeIdVMa();
  v95 = *(v98 - 8);
  v10 = *(v95 + 64);
  v11 = MEMORY[0x1EEE9AC00](v98);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v82 - v13);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v89 = *(updated - 8);
  v15 = *(v89 + 64);
  v16 = MEMORY[0x1EEE9AC00](updated);
  v86 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v82 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v93 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v82 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v82 - v26;
  v28 = sub_1D1E66A7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v84 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v88 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v82 - v35;
  v97 = a1;
  sub_1D1B2EF60(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
    v37 = 0;
  }

  else
  {
    v83 = v14;
    (*(v29 + 32))(v36, v27, v28);
    v38 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *a2;
    v40 = v99;
    *a2 = 0x8000000000000000;
    v37 = sub_1D1742188(v36);
    v42 = v40[2];
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v27 = v41;
    if (v40[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737900();
        v40 = v99;
      }
    }

    else
    {
      sub_1D1725FE8(v44, isUniquelyReferenced_nonNull_native);
      v40 = v99;
      v45 = sub_1D1742188(v36);
      if ((v27 & 1) != (v46 & 1))
      {
        sub_1D1E690FC();
        __break(1u);
        goto LABEL_43;
      }

      v37 = v45;
    }

    v14 = v83;
    v47 = *a2;
    *a2 = v40;

    v40 = *a2;
    if ((v27 & 1) == 0)
    {
      v48 = v88;
      (*(v29 + 16))(v88, v36, v28);
      sub_1D19DD7D8(v37, v48, 0, v40);
    }

    v49 = v40[7];
    v50 = *(v49 + 8 * v37);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      v40 = sub_1D177E928(0, v40[2] + 1, 1, v40);
      *(v27 + 8 * v36) = v40;
LABEL_34:
      v79 = v40[2];
      v78 = v40[3];
      if (v79 >= v78 >> 1)
      {
        *(v27 + 8 * v36) = sub_1D177E928(v78 > 1, v79 + 1, 1, v40);
      }

      sub_1D1AC3B08(v23, _s7MergeIdVMa);
      v80 = *(v27 + 8 * v36);
      *(v80 + 16) = v79 + 1;
      sub_1D1AC3BD0(v93, v80 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v79, type metadata accessor for StateSnapshot.UpdateType);
      return sub_1D17169C0(v37);
    }

    *(v49 + 8 * v37) = v52;
    (*(v29 + 8))(v36, v28);
    v37 = sub_1D16EE93C;
  }

  v53 = v97;
  sub_1D1AC3B68(v97, v23, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D1AC3B08(v23, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {
    v59 = *v23;
    if (*v23)
    {
      v60 = [*v23 uniqueIdentifier];
      v61 = v84;
      sub_1D1E66A5C();

      v62 = v88;
      sub_1D1762CB8(v88, v61);

      (*(v29 + 8))(v62, v28);
      v23 = v98;
      v57 = v95;
      v56 = v96;
      goto LABEL_23;
    }
  }

  v54 = v91;
  sub_1D1AC3B68(v53, v91, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = v98;
  v57 = v95;
  v56 = v96;
  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_19:
      sub_1D1AC3B08(v54, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_23;
    }

    v58 = v86;
    sub_1D1AC3B68(v54, v86, type metadata accessor for StateSnapshot.UpdateType);
    if (*v58)
    {

      goto LABEL_19;
    }
  }

  sub_1D1AC3B08(v54, type metadata accessor for StateSnapshot.UpdateType);

  sub_1D19306D8(v63);
LABEL_23:
  sub_1D1B2F234(v56);
  if ((*(v57 + 48))(v56, 1, v23) == 1)
  {
    sub_1D1741A30(v56, &qword_1EC64A760, &unk_1D1E96B70);
    return sub_1D17169C0(v37);
  }

  sub_1D1AC3BD0(v56, v14, _s7MergeIdVMa);
  sub_1D1AC3B68(v53, v93, type metadata accessor for StateSnapshot.UpdateType);
  v64 = v92;
  v65 = *v92;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v64;
  v40 = v99;
  *v64 = 0x8000000000000000;
  v36 = sub_1D171D934(v14);
  v67 = v40[2];
  v68 = (v66 & 1) == 0;
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
    goto LABEL_39;
  }

  v70 = v66;
  if (v40[3] >= v69)
  {
    if ((v27 & 1) == 0)
    {
      sub_1D173A630();
      v40 = v99;
    }

LABEL_31:
    v73 = v92;
    v74 = *v92;
    *v92 = v40;

    v75 = *v73;
    if ((v70 & 1) == 0)
    {
      v76 = v85;
      sub_1D1AC3B68(v14, v85, _s7MergeIdVMa);
      sub_1D19DBCF8(v36, v76, MEMORY[0x1E69E7CC0], v75);
    }

    v27 = v75[7];
    v40 = *(v27 + 8 * v36);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 8 * v36) = v40;
    v23 = v14;
    if (v77)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  sub_1D172AEA4(v69, v27);
  v40 = v99;
  v71 = sub_1D171D934(v14);
  if ((v70 & 1) == (v72 & 1))
  {
    v36 = v71;
    goto LABEL_31;
  }

LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D1ABF278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1D1E676DC();

  return sub_1D1ABF2D4(a1, v9, a2, a3);
}

unint64_t sub_1D1ABF2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1D1E6775C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1D1ABF45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1AC3B68(a1 + v4, a2 + v5, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1ABF514@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v4;
  v5 = type metadata accessor for StaticMatterDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v50 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v46 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_1D1AC3B68(*(v22 + 56) + *(v6 + 72) * v30, v9, type metadata accessor for StaticMatterDevice);
    v31 = v9;
    v32 = v49;
    v33 = *(v49 + 48);
    v34 = v47;
    (*(v11 + 32))();
    sub_1D1AC3BD0(v31, v34 + v33, type metadata accessor for StaticMatterDevice);
    v35 = v48;
    (*(v48 + 56))(v34, 0, 1, v32);
    v36 = v46;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v51;
    v1[2] = v50;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_1D1741A90(v34, v37, &qword_1EC6454B8, &unk_1D1E79A50);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v52;
    if (v41 != 1)
    {
      v43 = v45;
      sub_1D1741A90(v37, v45, &qword_1EC6454C0, &qword_1D1E96BE0);
      v38(v43);
      sub_1D1741A30(v43, &qword_1EC6454C0, &qword_1D1E96BE0);
      v40 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720);
    return (*(*(v44 - 8) + 56))(v42, v40, 1, v44);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v47;
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(v47, 1, 1, v49);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1ABF99C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F8, &unk_1D1E797F0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - v4;
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7B0, &qword_1D1E96C48);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v46 - v20;
  v23 = *v1;
  v22 = v1[1];
  v25 = v1[2];
  v24 = v1[3];
  v26 = v1[4];
  v47 = v5;
  v52 = v25;
  if (v26)
  {
    v27 = v24;
LABEL_10:
    v31 = (v26 - 1) & v26;
    v32 = __clz(__rbit64(v26)) | (v27 << 6);
    sub_1D1AC3B68(*(v23 + 48) + *(v48 + 72) * v32, v13, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D1AC3B68(*(v23 + 56) + *(v49 + 72) * v32, v9, type metadata accessor for IconTextValueStringDataHolder);
    v33 = *(v51 + 48);
    v34 = v13;
    v35 = v51;
    sub_1D1AC3BD0(v34, v21, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D1AC3BD0(v9, &v21[v33], type metadata accessor for IconTextValueStringDataHolder);
    v36 = v50;
    (*(v50 + 56))(v21, 0, 1, v35);
    v30 = v27;
LABEL_11:
    *v1 = v23;
    v1[1] = v22;
    v1[2] = v52;
    v1[3] = v30;
    v1[4] = v31;
    v38 = v1[5];
    v37 = v1[6];
    sub_1D1741A90(v21, v18, &qword_1EC64A7B0, &qword_1D1E96C48);
    v39 = *(v36 + 48);
    v40 = 1;
    v41 = v39(v18, 1, v35);
    v42 = v53;
    if (v41 != 1)
    {
      v43 = v18;
      v44 = v47;
      sub_1D1741A90(v43, v47, &qword_1EC6452F8, &unk_1D1E797F0);
      v38(v44);
      sub_1D1741A30(v44, &qword_1EC6452F8, &unk_1D1E797F0);
      v40 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
    return (*(*(v45 - 8) + 56))(v42, v40, 1, v45);
  }

  else
  {
    v28 = (v25 + 64) >> 6;
    if (v28 <= v24 + 1)
    {
      v29 = v24 + 1;
    }

    else
    {
      v29 = (v25 + 64) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v28)
      {
        v36 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v20, 1, 1, v51);
        v31 = 0;
        goto LABEL_11;
      }

      v26 = *(v22 + 8 * v27);
      ++v24;
      if (v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1D1ABFE14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_1D1741970(*(v3 + 56) + 32 * v13, v19);
    LOBYTE(v21) = v14;
    result = sub_1D1742194(v19, (&v21 + 8));
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19[0] = v21;
      v19[1] = v22;
      v20 = v16;
      v18(v19);
      return sub_1D1741A30(v19, &qword_1EC646288, &qword_1D1E7E948);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1ABFF5C@<X0>(uint64_t a1@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - v5;
  v6 = type metadata accessor for StaticMatterDevice();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v42 - v16);
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v21;
  v47 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = *(*(v19 + 48) + 8 * v28);
    sub_1D1AC3B68(*(v19 + 56) + *(v44 + 72) * v28, v9, type metadata accessor for StaticMatterDevice);
    v30 = v45;
    v31 = *(v45 + 48);
    *v17 = v29;
    v32 = v9;
    v33 = v30;
    sub_1D1AC3BD0(v32, v17 + v31, type metadata accessor for StaticMatterDevice);
    (*(v3 + 56))(v17, 0, 1, v33);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v27;
    v34 = v1[5];
    v35 = v1[6];
    sub_1D1741A90(v17, v14, &qword_1EC645420, &unk_1D1E799B0);
    v36 = 1;
    v37 = (*(v3 + 48))(v14, 1, v33);
    v38 = v47;
    if (v37 != 1)
    {
      v39 = v14;
      v40 = v43;
      sub_1D1741A90(v39, v43, &qword_1EC645428, &qword_1D1E96C40);
      v34(v40);
      sub_1D1741A30(v40, &qword_1EC645428, &qword_1D1E96C40);
      v36 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
    return (*(*(v41 - 8) + 56))(v38, v36, 1, v41);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v45;
        (*(v3 + 56))(&v42 - v16, 1, 1, v45);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC031C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v4;
  v5 = type metadata accessor for MatterStateSnapshot();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v50 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v46 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_1D1AC3B68(*(v22 + 56) + *(v6 + 72) * v30, v9, type metadata accessor for MatterStateSnapshot);
    v31 = v9;
    v32 = v49;
    v33 = *(v49 + 48);
    v34 = v47;
    (*(v11 + 32))();
    sub_1D1AC3BD0(v31, v34 + v33, type metadata accessor for MatterStateSnapshot);
    v35 = v48;
    (*(v48 + 56))(v34, 0, 1, v32);
    v36 = v46;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v51;
    v1[2] = v50;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_1D1741A90(v34, v37, &qword_1EC645410, &unk_1D1E799A0);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v52;
    if (v41 != 1)
    {
      v43 = v45;
      sub_1D1741A90(v37, v45, &qword_1EC645418, &unk_1D1E96B10);
      v38(v43);
      sub_1D1741A30(v43, &qword_1EC645418, &unk_1D1E96B10);
      v40 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    return (*(*(v44 - 8) + 56))(v42, v40, 1, v44);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v47;
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(v47, 1, 1, v49);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC07A4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v4;
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v50 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v46 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_1D1AC3B68(*(v22 + 56) + *(v6 + 72) * v30, v9, type metadata accessor for StaticService);
    v31 = v9;
    v32 = v49;
    v33 = *(v49 + 48);
    v34 = v47;
    (*(v11 + 32))();
    sub_1D1AC3BD0(v31, v34 + v33, type metadata accessor for StaticService);
    v35 = v48;
    (*(v48 + 56))(v34, 0, 1, v32);
    v36 = v46;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v51;
    v1[2] = v50;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_1D1741A90(v34, v37, &qword_1EC643C68, &unk_1D1E764C0);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v52;
    if (v41 != 1)
    {
      v43 = v45;
      sub_1D1741A90(v37, v45, &qword_1EC642DB0, &unk_1D1E6F360);
      v38(v43);
      sub_1D1741A30(v43, &qword_1EC642DB0, &unk_1D1E6F360);
      v40 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
    return (*(*(v44 - 8) + 56))(v42, v40, 1, v44);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v47;
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(v47, 1, 1, v49);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC0C2C@<X0>(uint64_t a1@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - v5;
  v6 = type metadata accessor for StaticCharacteristic();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v21;
  v47 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = *(*(v19 + 48) + v28);
    sub_1D1AC3B68(*(v19 + 56) + *(v44 + 72) * v28, v9, type metadata accessor for StaticCharacteristic);
    v30 = v45;
    v31 = *(v45 + 48);
    *v17 = v29;
    v32 = v9;
    v33 = v30;
    sub_1D1AC3BD0(v32, &v17[v31], type metadata accessor for StaticCharacteristic);
    (*(v3 + 56))(v17, 0, 1, v33);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v27;
    v34 = v1[5];
    v35 = v1[6];
    sub_1D1741A90(v17, v14, &qword_1EC645540, &unk_1D1E96BA0);
    v36 = 1;
    v37 = (*(v3 + 48))(v14, 1, v33);
    v38 = v47;
    if (v37 != 1)
    {
      v39 = v14;
      v40 = v43;
      sub_1D1741A90(v39, v43, &qword_1EC645548, &unk_1D1E79AE0);
      v34(v40);
      sub_1D1741A30(v40, &qword_1EC645548, &unk_1D1E79AE0);
      v36 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    return (*(*(v41 - 8) + 56))(v38, v36, 1, v41);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v45;
        (*(v3 + 56))(&v42 - v16, 1, 1, v45);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC0FEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v160 = a6;
  v163 = a5;
  v156 = a4;
  v164 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v148 - v10;
  v175 = _s7MergeIdVMa();
  v12 = *(v175 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v175);
  v153 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v152 = &v148 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v148 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v148 - v25;
  v195 = sub_1D1E66A7C();
  v27 = *(v195 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v195);
  v155 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v191 = &v148 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v194 = &v148 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = (&v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v181 = (&v148 - v39);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v40 = *(*(updated - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](updated);
  v182 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v154 = &v148 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v185 = &v148 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v172 = &v148 - v51;
  v180 = *(a1 + 16);
  if (v180)
  {
    v149 = v49;
    v151 = v38;
    v52 = 0;
    v171 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v179 = a1 + v171;
    v183 = *(v48 + 72);
    v174 = (v27 + 32);
    v176 = (v27 + 56);
    v178 = (v27 + 48);
    v192 = v27 + 16;
    v166 = v27;
    v193 = (v27 + 8);
    v177 = (v48 + 56);
    v189 = a3 + 56;
    v173 = (v12 + 48);
    v187 = MEMORY[0x1E69E7CC0];
    v161 = (v48 + 48);
    *&v50 = 136315394;
    v150 = v50;
    v169 = v11;
    v168 = v19;
    v167 = v24;
    v170 = v26;
    v53 = v195;
    v54 = v181;
    v162 = a3;
    while (1)
    {
      v184 = v52;
      v188 = v179 + v183 * v52;
      sub_1D1AC3B68(v188, v185, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 6)
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
        v58 = v185;
        v59 = *(v185 + *(v57 + 48));

        (*v174)(v26, v58, v53);
        (*v176)(v26, 0, 1, v53);
        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 1)
      {
        (*v176)(v26, 1, 1, v53);
        sub_1D1AC3B08(v185, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_34;
      }

      v56 = *v185;
      if (!*(v185 + 16))
      {
        break;
      }

      sub_1D1AC373C(v56, *(v185 + 8), *(v185 + 16));
      (*v176)(v24, 1, 1, v53);
LABEL_33:
      sub_1D1741A90(v24, v26, &qword_1EC642590, qword_1D1E71260);
LABEL_34:
      if ((*v178)(v26, 1, v53) == 1)
      {
        sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v79 = v194;
        (*v174)(v194, v26, v53);
        v80 = *v164;
        if (*(*v164 + 16))
        {
          v81 = *(v80 + 40);
          sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);

          v82 = sub_1D1E676DC();
          v83 = -1 << *(v80 + 32);
          v84 = v82 & ~v83;
          v190 = v80 + 56;
          if ((*(v80 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
          {
            v85 = ~v83;
            v86 = *(v166 + 72);
            v87 = *(v166 + 16);
            while (1)
            {
              v88 = v191;
              v89 = v195;
              v87(v191, *(v80 + 48) + v86 * v84, v195);
              sub_1D1AC359C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v90 = sub_1D1E6775C();
              v91 = *v193;
              (*v193)(v88, v89);
              if (v90)
              {
                break;
              }

              v84 = (v84 + 1) & v85;
              if (((*(v190 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v53 = v195;
            v91(v194, v195);
            v106 = 1;
            a3 = v162;
            v11 = v169;
            v19 = v168;
            v24 = v167;
            v26 = v170;
            v54 = v181;
            goto LABEL_75;
          }

LABEL_41:

          a3 = v162;
          v79 = v194;
        }

        v92 = v166;
        if (*(a3 + 16))
        {
          v93 = *(a3 + 40);
          sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
          v94 = sub_1D1E676DC();
          v95 = -1 << *(a3 + 32);
          v96 = v94 & ~v95;
          if ((*(v189 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
          {
            v97 = ~v95;
            v98 = *(v92 + 72);
            v99 = *(v92 + 16);
            while (1)
            {
              v100 = v191;
              v101 = v195;
              v99(v191, *(a3 + 48) + v98 * v96, v195);
              sub_1D1AC359C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v102 = sub_1D1E6775C();
              v103 = *v193;
              (*v193)(v100, v101);
              if (v102)
              {
                break;
              }

              v96 = (v96 + 1) & v97;
              v79 = v194;
              if (((*(v189 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v113 = v156;
            if (*(v156 + 16) && (v114 = sub_1D1742188(v194), (v115 & 1) != 0))
            {
              v116 = *(*(v113 + 56) + 8 * v114);
              v53 = v195;
              v103(v194, v195);
              v54 = v181;
              *v181 = v116;
              swift_storeEnumTagMultiPayload();
              v106 = 0;
              v11 = v169;
              v19 = v168;
              v24 = v167;
              v26 = v170;
            }

            else
            {
              v53 = v195;
              v54 = v181;
              if (qword_1EE07B5D0 != -1)
              {
                swift_once();
              }

              v117 = sub_1D1E6709C();
              __swift_project_value_buffer(v117, qword_1EE07B5D8);
              v118 = v155;
              v99(v155, v194, v53);
              v119 = v154;
              sub_1D1AC3B68(v188, v154, type metadata accessor for StateSnapshot.UpdateType);
              v120 = sub_1D1E6707C();
              v121 = sub_1D1E6833C();
              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                v190 = swift_slowAlloc();
                v202 = v190;
                *v122 = v150;
                sub_1D1AC359C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
                v123 = sub_1D1E68FAC();
                v124 = v119;
                v126 = v125;
                v103(v118, v195);
                v127 = sub_1D1B1312C(v123, v126, &v202);

                *(v122 + 4) = v127;
                *(v122 + 12) = 2080;
                v128 = StateSnapshot.UpdateType.description.getter();
                v130 = v129;
                sub_1D1AC3B08(v124, type metadata accessor for StateSnapshot.UpdateType);
                v131 = sub_1D1B1312C(v128, v130, &v202);

                *(v122 + 14) = v131;
                _os_log_impl(&dword_1D16EC000, v120, v121, "Failed to find home for homeID (%s) from update: %s", v122, 0x16u);
                v132 = v190;
                swift_arrayDestroy();
                MEMORY[0x1D3893640](v132, -1, -1);
                v133 = v122;
                v54 = v181;
                v53 = v195;
                MEMORY[0x1D3893640](v133, -1, -1);
              }

              else
              {

                sub_1D1AC3B08(v119, type metadata accessor for StateSnapshot.UpdateType);
                v103(v118, v53);
              }

              v103(v194, v53);
              v26 = v170;
              sub_1D1AC3B68(v188, v54, type metadata accessor for StateSnapshot.UpdateType);
              v106 = 0;
              v11 = v169;
              v19 = v168;
              v24 = v167;
            }

            goto LABEL_75;
          }
        }

LABEL_47:
        v53 = v195;
        (*v193)(v79, v195);
        v11 = v169;
        v19 = v168;
        v24 = v167;
        v26 = v170;
        v54 = v181;
      }

      sub_1D1B2F234(v11);
      if ((*v173)(v11, 1, v175) == 1)
      {
        sub_1D1741A30(v11, &qword_1EC64A760, &unk_1D1E96B70);
LABEL_58:
        sub_1D1AC3B68(v188, v54, type metadata accessor for StateSnapshot.UpdateType);
        (*v177)(v54, 0, 1, updated);
LABEL_76:
        v144 = v172;
        sub_1D1AC3BD0(v54, v172, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1AC3BD0(v144, v182, type metadata accessor for StateSnapshot.UpdateType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = sub_1D177E928(0, v187[2] + 1, 1, v187);
        }

        v146 = v187[2];
        v145 = v187[3];
        if (v146 >= v145 >> 1)
        {
          v187 = sub_1D177E928(v145 > 1, v146 + 1, 1, v187);
        }

        v147 = v187;
        v187[2] = v146 + 1;
        sub_1D1AC3BD0(v182, v147 + v171 + v146 * v183, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_4;
      }

      sub_1D1AC3BD0(v11, v19, _s7MergeIdVMa);
      v104 = *v163;

      v105 = sub_1D1719B44(v19, v104);

      if (v105)
      {
        sub_1D1AC3B08(v19, _s7MergeIdVMa);
        v106 = 1;
      }

      else
      {
        v107 = *v160;
        if (!*(*v160 + 16) || (v108 = sub_1D171D934(v19), (v109 & 1) == 0) || *(*(*(v107 + 56) + 8 * v108) + 16) < 2uLL)
        {
          sub_1D1AC3B08(v19, _s7MergeIdVMa);
          goto LABEL_58;
        }

        v110 = *(*(v107 + 56) + 8 * v108);

        v112 = v151;
        sub_1D1B30840(v111, v151);

        if ((*v161)(v112, 1, updated) == 1)
        {
          sub_1D1AC3B08(v19, _s7MergeIdVMa);
          sub_1D1741A30(v112, &qword_1EC6437E0, &unk_1D1E96B80);
          goto LABEL_58;
        }

        v190 = type metadata accessor for StateSnapshot.UpdateType;
        v139 = v149;
        sub_1D1AC3BD0(v112, v149, type metadata accessor for StateSnapshot.UpdateType);
        v140 = v153;
        sub_1D1AC3B68(v19, v153, _s7MergeIdVMa);
        v141 = v152;
        sub_1D1766F54(v152, v140);
        v142 = v141;
        v26 = v170;
        sub_1D1AC3B08(v142, _s7MergeIdVMa);
        sub_1D1AC3B08(v19, _s7MergeIdVMa);
        sub_1D1AC3BD0(v139, v54, v190);
        v106 = 0;
      }

LABEL_75:
      v143 = updated;
      (*v177)(v54, v106, 1, updated);
      if ((*v161)(v54, 1, v143) != 1)
      {
        goto LABEL_76;
      }

      sub_1D1741A30(v54, &qword_1EC6437E0, &unk_1D1E96B80);
LABEL_4:
      v52 = v184 + 1;
      if (v184 + 1 == v180)
      {
        return v187;
      }
    }

    v159 = *(v185 + 8);
    v158 = v56;
    if ((v56 & 0xC000000000000001) != 0)
    {

      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      sub_1D18BE688();
      sub_1D1E681BC();
      result = v197;
      v61 = v198;
      v62 = v199;
      v63 = v200;
      v64 = v201;
    }

    else
    {
      v65 = -1 << *(v56 + 32);
      v61 = v56 + 56;
      v62 = ~v65;
      v66 = -v65;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v64 = v67 & *(v56 + 56);

      v63 = 0;
    }

    v157 = v62;
    v190 = result;
    if (result < 0)
    {
      goto LABEL_24;
    }

LABEL_18:
    v68 = v63;
    v69 = v64;
    v70 = v63;
    if (v64)
    {
LABEL_22:
      v165 = v63;
      v64 = (v69 - 1) & v69;
      v71 = *(*(result + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v69)))));
      if (v71)
      {
        while (1)
        {
          v73 = [v71 service];
          v74 = [v73 accessory];

          v75 = [v74 home];
          if (v75)
          {
            break;
          }

          v63 = v70;
          v53 = v195;
          v54 = v181;
          result = v190;
          if ((v190 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_24:
          v72 = sub_1D1E6877C();
          if (!v72)
          {
            goto LABEL_29;
          }

          v196 = v72;
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v71 = v202;
          swift_unknownObjectRelease();
          v165 = v63;
          v70 = v63;
          if (!v71)
          {
            goto LABEL_69;
          }
        }

        sub_1D1716918();
        v134 = [v71 service];
        v54 = v181;
        if (v134)
        {
          v135 = v134;
          v136 = [v134 accessory];

          v11 = v169;
          v19 = v168;
          v24 = v167;
          v53 = v195;
          a3 = v162;
          if (v136)
          {
            v137 = [v136 home];

            if (v137)
            {
              v138 = [v137 uniqueIdentifier];

              sub_1D1E66A5C();
              (*v176)(v24, 0, 1, v53);
              v77 = v158;
              v78 = v159;
              goto LABEL_32;
            }
          }

          v76 = v159;
LABEL_31:
          (*v176)(v24, 1, 1, v53);
          v77 = v158;
          v78 = v76;
LABEL_32:
          sub_1D1AC373C(v77, v78, 0);
          v26 = v170;
          goto LABEL_33;
        }

        v11 = v169;
        v19 = v168;
        v24 = v167;
        v53 = v195;
LABEL_30:
        v76 = v159;
        a3 = v162;
        goto LABEL_31;
      }

LABEL_69:
      v53 = v195;
      v54 = v181;
    }

    else
    {
      while (1)
      {
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          __break(1u);
          return result;
        }

        if (v70 >= ((v62 + 64) >> 6))
        {
          break;
        }

        v69 = *(v61 + 8 * v70);
        ++v68;
        if (v69)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_29:
    sub_1D1716918();
    v11 = v169;
    v19 = v168;
    v24 = v167;
    goto LABEL_30;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D1AC25F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1D1E67CBC())
  {
    sub_1D1E68BDC();
    v13 = sub_1D1E68BCC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D1E67CBC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1D1E67C9C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D1E688AC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D1ABF278(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1D1AC2938(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  _s24SnapshotUpdateControllerC13UpdateRequestVMa();
  result = sub_1D1E67F2C();
  if (v5 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_1D1E67EEC();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of HomeState.Stream.SnapshotUpdateController.performAndWait(_:snapshotCoverageConfig:setResultImmediately:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D1AC3C3C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeState.Stream.StateSnapshotUpdateController.performAndWait(_:snapshotCoverageConfig:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D19C8EA0;

  return v10(a1, a2);
}

uint64_t sub_1D1AC2DB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1AC2E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1AC2E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1D1AC2EA0(uint64_t a1)
{
  sub_1D1AC2FEC();
  if (v2 <= 0x3F)
  {
    sub_1D1E66A7C();
    v3 = *(a1 + 24);
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E6769C();
    sub_1D1E67D7C();
    sub_1D1E685AC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1AC2FEC()
{
  if (!qword_1EC64A638[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EC64A638);
    }
  }
}

uint64_t sub_1D1AC303C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[4];
    result = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1AC30F4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return updated;
}

uint64_t sub_1D1AC317C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for MatterStateSnapshot();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D1E66A7C();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D0, &qword_1D1E92BD8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_1D1AC031C(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_1D1AC3BD0(&v20[v28], v57, type metadata accessor for MatterStateSnapshot);
    v30 = *a5;
    v32 = sub_1D1742188(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173A304();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_1D1AC36D4(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for MatterStateSnapshot);
      a4 = 1;
    }

    else
    {
      sub_1D172AA04(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_1D1742188(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_1D1AC3BD0(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for MatterStateSnapshot);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1AC359C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1AC35E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1E5D0C4(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D1AC36D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AC373C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  if (a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1D1AC3798(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D1AC3828(uint64_t result, uint64_t a2, char a3)
{
  if (result)
  {

    return sub_1D186145C(a2, a3);
  }

  return result;
}

uint64_t sub_1D1AC3884@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D1ABE64C(a1, a2);
}

uint64_t sub_1D1AC38BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1AB5714(a1, a2, v6, v7, v8);
}

uint64_t sub_1D1AC3980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AB59A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AC3A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AB5E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AC3B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AC3B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AC3BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D1AC3C48()
{
  v1 = sub_1D1E677EC();
  v2 = [v0 _beginActiveAssertionWithReason_];

  return v2;
}

uint64_t static HomeState.Stream.isSupported.getter()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v0 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  return v0 & 1;
}

void *sub_1D1AC3D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19 - v4;
  v6 = *v0;
  v7 = *(*v0 + 128);
  if (!*(v0 + v7))
  {
    v8 = sub_1D1E67E7C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v11 = sub_1D1B1DFC0(0, 0, v5, &unk_1D1E96DC0, v10);
    sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v12 = *(v0 + v7);
    *(v0 + v7) = v11;

    v6 = *v0;
  }

  v13 = *(v6 + 136);
  if (!*(v0 + v13))
  {
    result = (*(v6 + 216))(&v19, result);
    if (v20)
    {
      sub_1D16EEE20(&v19, v21);
      v14 = sub_1D1E67E7C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_1D17419CC(v21, &v19);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      sub_1D16EEE20(&v19, (v16 + 4));
      v16[9] = v15;
      v17 = sub_1D1B1DFC0(0, 0, v5, &unk_1D1E96DD0, v16);
      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v18 = *(v0 + v13);
      *(v0 + v13) = v17;
    }
  }

  return result;
}

void *sub_1D1AC3FD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19 - v4;
  v6 = *v0;
  v7 = *(*v0 + 128);
  if (!*(v0 + v7))
  {
    v8 = sub_1D1E67E7C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v11 = sub_1D1B1DFC0(0, 0, v5, &unk_1D1E96C98, v10);
    sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v12 = *(v0 + v7);
    *(v0 + v7) = v11;

    v6 = *v0;
  }

  v13 = *(v6 + 136);
  if (!*(v0 + v13))
  {
    result = (*(v6 + 216))(&v19, result);
    if (v20)
    {
      sub_1D16EEE20(&v19, v21);
      v14 = sub_1D1E67E7C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_1D17419CC(v21, &v19);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      sub_1D16EEE20(&v19, (v16 + 4));
      v16[9] = v15;
      v17 = sub_1D1B1DFC0(0, 0, v5, &unk_1D1E96CE8, v16);
      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v18 = *(v0 + v13);
      *(v0 + v13) = v17;
    }
  }

  return result;
}

uint64_t sub_1D1AC42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C0, &qword_1D1E96CF0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v8 = *(v7 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C8, &qword_1D1E96CF8);
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D0, &qword_1D1E96D00);
  v4[30] = v11;
  v4[31] = *(*(v11 - 8) + 64);
  v4[32] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  v4[33] = v12;
  v13 = *(v12 - 8);
  v4[34] = v13;
  v14 = *(v13 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7D8, &qword_1D1E96D08);
  v4[37] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC4520, 0, 0);
}

uint64_t sub_1D1AC4520()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[38];
    v3 = v0[39];
    v5 = v0[37];
    v6 = v0[34];
    v30 = v0[36];
    v31 = v0[35];
    v7 = v0[32];
    v8 = v0[33];
    v35 = v7;
    __n = v0[31];
    v9 = v0[29];
    v32 = v0[28];
    v33 = v0[30];
    v39 = v0[18];
    v10 = *(v6 + 16);
    v10(v4, Strong + *(*Strong + 112), v8);

    *(v4 + *(v5 + 36)) = 0;
    sub_1D1741A90(v4, v3, &qword_1EC64A7D8, &qword_1D1E96D08);
    v10(v30, v3, v8);
    LOBYTE(v5) = *(v3 + *(v5 + 36));
    v10(v31, v30, v8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E0, &qword_1D1E96D10);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v0[40] = v14;
    *(v9 + *(v32 + 36)) = 0;
    *(v9 + *(v32 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7E8, &qword_1D1E96D18);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F0, &qword_1D1E96D20) + 36)) = v5;
    *v35 = 0;
    v15 = *(v33 + 28);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7F8, &qword_1D1E96D28);
    bzero(v35 + v15, *(*(v16 - 8) + 64));
    sub_1D1741A90(v9, v35 + v15, &qword_1EC64A7C8, &qword_1D1E96CF8);
    memcpy((v14 + *(*v14 + 96)), v35, __n);
    (*(v6 + 32))(v14 + *(*v14 + 104), v31, v8);
    (*(v6 + 8))(v30, v8);
    swift_beginAccess();
    swift_beginAccess();
    v17 = swift_task_alloc();
    v0[41] = v17;
    *v17 = v0;
    v17[1] = sub_1D1AC4924;
    v18 = v0[40];

    return sub_1D1ACDCB4();
  }

  else
  {
    v20 = v0[38];
    v21 = v0[39];
    v23 = v0[35];
    v22 = v0[36];
    v24 = v0[32];
    v25 = v0[29];
    v27 = v0[26];
    v26 = v0[27];
    v28 = v0[25];
    v34 = v0[24];
    v36 = v0[23];
    __na = v0[20];
    v40 = v0[19];
    sub_1D1AB648C();

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D1AC4924(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_1D1AC52E0;
  }

  else
  {
    v5 = sub_1D1AC4A38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D1AC4A54()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 352) = v2;
    v74 = v2;
    if (v2)
    {
      v3 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      v71 = v1;
      while (v3 < *(v1 + 16))
      {
        v4 = *(v0 + 216);
        v6 = *(v0 + 168);
        v5 = *(v0 + 176);
        v7 = *(v0 + 160);
        v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v9 = *(v5 + 72);
        sub_1D1741C08(v1 + v8 + v9 * v3, v4, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741C08(v4 + *(v6 + 44), v7, &qword_1EC64A7C0, &qword_1D1E96CF0);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
        v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
        v12 = *(v0 + 216);
        if (v11 == 1)
        {
          sub_1D1741A30(*(v0 + 216), &qword_1EC643318, &qword_1D1E71770);
        }

        else
        {
          v13 = *(v0 + 208);
          sub_1D1741A30(*(v0 + 160), &qword_1EC64A7C0, &qword_1D1E96CF0);
          sub_1D1741A90(v12, v13, &qword_1EC643318, &qword_1D1E71770);
          v14 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 120) = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178DAB0(0, *(v78 + 16) + 1, 1);
            v14 = *(v0 + 120);
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D178DAB0(v16 > 1, v17 + 1, 1);
            v14 = *(v0 + 120);
          }

          v18 = *(v0 + 208);
          *(v14 + 16) = v17 + 1;
          v78 = v14;
          sub_1D1741A90(v18, v14 + v8 + v17 * v9, &qword_1EC643318, &qword_1D1E71770);
        }

        ++v3;
        v1 = v71;
        if (v74 == v3)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_49;
    }

    v78 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + 360) = v78;
    v31 = *(v0 + 144);
    Strong = swift_weakLoadStrong();
    *(v0 + 368) = Strong;
    if (Strong)
    {
      v33 = swift_task_alloc();
      *(v0 + 376) = v33;
      *v33 = v0;
      v33[1] = sub_1D1AC536C;

      sub_1D1AC8570(v78);
    }

    else
    {

      if (*(v0 + 352))
      {
        v34 = 0;
        v80 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v35 = *(v0 + 336);
          if (v34 >= *(v35 + 16))
          {
            break;
          }

          v36 = *(v0 + 200);
          v38 = *(v0 + 168);
          v37 = *(v0 + 176);
          v39 = *(v0 + 152);
          v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v41 = *(v37 + 72);
          sub_1D1741C08(v35 + v40 + v41 * v34, v36, &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741C08(v36 + *(v38 + 44), v39, &qword_1EC64A7C0, &qword_1D1E96CF0);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
          v43 = (*(*(v42 - 8) + 48))(v39, 1, v42);
          v44 = *(v0 + 200);
          if (v43 == 1)
          {
            sub_1D1741A90(*(v0 + 200), *(v0 + 192), &qword_1EC643318, &qword_1D1E71770);
            v45 = v80;
            v46 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 128) = v80;
            if ((v46 & 1) == 0)
            {
              sub_1D178DAB0(0, *(v80 + 16) + 1, 1);
              v45 = *(v0 + 128);
            }

            v48 = *(v45 + 16);
            v47 = *(v45 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_1D178DAB0(v47 > 1, v48 + 1, 1);
              v45 = *(v0 + 128);
            }

            v49 = *(v0 + 192);
            *(v45 + 16) = v48 + 1;
            v80 = v45;
            sub_1D1741A90(v49, v45 + v40 + v48 * v41, &qword_1EC643318, &qword_1D1E71770);
          }

          else
          {
            sub_1D1741A30(*(v0 + 152), &qword_1EC64A7C0, &qword_1D1E96CF0);
            sub_1D1741A30(v44, &qword_1EC643318, &qword_1D1E71770);
          }

          if (++v34 == *(v0 + 352))
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      v80 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v50 = *(v0 + 336);
      v51 = *(v0 + 144);

      v52 = swift_weakLoadStrong();
      *(v0 + 384) = v52;
      if (v52)
      {
        v53 = v52;
        v54 = *(v80 + 16);
        if (v54)
        {
          v73 = v52;
          v55 = *(v0 + 176);
          *(v0 + 136) = MEMORY[0x1E69E7CC0];
          sub_1D178DA58(0, v54, 0);
          v56 = 0;
          v57 = *(v0 + 136);
          v58 = v80;
          v76 = v80 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
          while (v56 < *(v58 + 16))
          {
            v59 = *(v0 + 184);
            sub_1D1741C08(v76 + *(*(v0 + 176) + 72) * v56, v59, &qword_1EC643318, &qword_1D1E71770);
            v60 = *v59;
            v61 = *(v59 + 8);
            v62 = *(v59 + 16);
            sub_1D1A28388(*v59, v61, v62);
            sub_1D1741A30(v59, &qword_1EC643318, &qword_1D1E71770);
            *(v0 + 136) = v57;
            v64 = *(v57 + 16);
            v63 = *(v57 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_1D178DA58((v63 > 1), v64 + 1, 1);
              v57 = *(v0 + 136);
            }

            ++v56;
            *(v57 + 16) = v64 + 1;
            v65 = v57 + 24 * v64;
            *(v65 + 32) = v60;
            *(v65 + 40) = v61;
            *(v65 + 48) = v62;
            v58 = v80;
            if (v54 == v56)
            {

              v53 = v73;
              goto LABEL_45;
            }
          }

          goto LABEL_50;
        }

        v57 = MEMORY[0x1E69E7CC0];
LABEL_45:
        *(v0 + 392) = v57;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 88) = 0;
        v77 = (*v53 + 272);
        v81 = (*v77 + **v77);
        v68 = (*v77)[1];
        v69 = swift_task_alloc();
        *(v0 + 400) = v69;
        *v69 = v0;
        v69[1] = sub_1D1AC59AC;

        v81(v57, v0 + 88);
      }

      else
      {

        v66 = swift_task_alloc();
        *(v0 + 328) = v66;
        *v66 = v0;
        v66[1] = sub_1D1AC4924;
        v67 = *(v0 + 320);

        sub_1D1ACDCB4();
      }
    }
  }

  else
  {
    v20 = *(v0 + 312);
    v19 = *(v0 + 320);

    sub_1D1741A30(v20, &qword_1EC64A7D8, &qword_1D1E96D08);
    v21 = *(v0 + 304);
    v22 = *(v0 + 312);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 256);
    v26 = *(v0 + 232);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 200);
    v70 = *(v0 + 192);
    v72 = *(v0 + 184);
    v75 = *(v0 + 160);
    v79 = *(v0 + 152);
    sub_1D1AB648C();

    v30 = *(v0 + 8);

    v30();
  }
}

uint64_t sub_1D1AC52E0()
{
  *(v0 + 112) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D1AC536C()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC54A0, 0, 0);
}

void sub_1D1AC54A0()
{
  if (*(v0 + 352))
  {
    v1 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v2 = *(v0 + 336);
      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v3 = *(v0 + 200);
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);
      v6 = *(v0 + 152);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1D1741C08(v2 + v7 + v8 * v1, v3, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v3 + *(v5 + 44), v6, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
      v11 = *(v0 + 200);
      if (v10 == 1)
      {
        sub_1D1741A90(*(v0 + 200), *(v0 + 192), &qword_1EC643318, &qword_1D1E71770);
        v12 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178DAB0(0, *(v40 + 16) + 1, 1);
          v12 = *(v0 + 128);
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178DAB0(v14 > 1, v15 + 1, 1);
          v12 = *(v0 + 128);
        }

        v16 = *(v0 + 192);
        *(v12 + 16) = v15 + 1;
        v40 = v12;
        sub_1D1741A90(v16, v12 + v7 + v15 * v8, &qword_1EC643318, &qword_1D1E71770);
      }

      else
      {
        sub_1D1741A30(*(v0 + 152), &qword_1EC64A7C0, &qword_1D1E96CF0);
        sub_1D1741A30(v11, &qword_1EC643318, &qword_1D1E71770);
      }

      if (++v1 == *(v0 + 352))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v17 = *(v0 + 336);
  v18 = *(v0 + 144);

  Strong = swift_weakLoadStrong();
  *(v0 + 384) = Strong;
  if (Strong)
  {
    v20 = Strong;
    v21 = *(v40 + 16);
    if (v21)
    {
      v37 = Strong;
      v22 = *(v0 + 176);
      *(v0 + 136) = MEMORY[0x1E69E7CC0];
      sub_1D178DA58(0, v21, 0);
      v23 = 0;
      v24 = *(v0 + 136);
      v25 = v40;
      v38 = v40 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      while (v23 < *(v25 + 16))
      {
        v26 = *(v0 + 184);
        sub_1D1741C08(v38 + *(*(v0 + 176) + 72) * v23, v26, &qword_1EC643318, &qword_1D1E71770);
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        sub_1D1A28388(*v26, v28, v29);
        sub_1D1741A30(v26, &qword_1EC643318, &qword_1D1E71770);
        *(v0 + 136) = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D178DA58((v30 > 1), v31 + 1, 1);
          v24 = *(v0 + 136);
        }

        ++v23;
        *(v24 + 16) = v31 + 1;
        v32 = v24 + 24 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v28;
        *(v32 + 48) = v29;
        v25 = v40;
        if (v21 == v23)
        {

          v20 = v37;
          goto LABEL_25;
        }
      }

LABEL_29:
      __break(1u);
      return;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *(v0 + 392) = v24;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 88) = 0;
    v39 = (*v20 + 272);
    v41 = (*v39 + **v39);
    v35 = (*v39)[1];
    v36 = swift_task_alloc();
    *(v0 + 400) = v36;
    *v36 = v0;
    v36[1] = sub_1D1AC59AC;

    v41(v24, v0 + 88);
  }

  else
  {

    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    *v33 = v0;
    v33[1] = sub_1D1AC4924;
    v34 = *(v0 + 320);

    sub_1D1ACDCB4();
  }
}

uint64_t sub_1D1AC59AC()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *v0;

  v6 = swift_task_alloc();
  *(v1 + 328) = v6;
  *v6 = v5;
  v6[1] = sub_1D1AC4924;
  v7 = *(v1 + 320);

  return sub_1D1ACDCB4();
}

uint64_t sub_1D1AC5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v4[19] = v5;
  v6 = *(v5 + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A868, &qword_1D1E96DD8) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A870, &qword_1D1E96DE0);
  v4[30] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A878, &qword_1D1E96DE8);
  v4[32] = v13;
  v4[33] = *(*(v13 - 8) + 64);
  v4[34] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  v4[35] = v14;
  v15 = *(v14 - 8);
  v4[36] = v15;
  v16 = *(v15 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A880, &qword_1D1E96DF0);
  v4[39] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC5E20, 0, 0);
}

uint64_t sub_1D1AC5E20()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[40];
    v3 = v0[41];
    v5 = v0[39];
    v6 = v0[36];
    v30 = v0[38];
    v31 = v0[37];
    v7 = v0[34];
    v8 = v0[35];
    v36 = v7;
    __n = v0[33];
    v9 = v0[31];
    v32 = v0[30];
    v34 = v0[32];
    v40 = v0[18];
    v10 = *(v6 + 16);
    v10(v4, Strong + *(*Strong + 112), v8);

    *(v4 + *(v5 + 36)) = 0;
    sub_1D1741A90(v4, v3, &qword_1EC64A880, &qword_1D1E96DF0);
    v10(v30, v3, v8);
    LOBYTE(v5) = *(v3 + *(v5 + 36));
    v10(v31, v30, v8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A888, &qword_1D1E96DF8);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    v0[42] = v14;
    *(v9 + *(v32 + 36)) = 0;
    *(v9 + *(v32 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A890, &qword_1D1E96E00);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A898, &qword_1D1E96E08) + 36)) = v5;
    *v36 = 0;
    v15 = *(v34 + 28);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8A0, &qword_1D1E96E10);
    bzero(v36 + v15, *(*(v16 - 8) + 64));
    sub_1D1741A90(v9, v36 + v15, &qword_1EC64A870, &qword_1D1E96DE0);
    memcpy((v14 + *(*v14 + 96)), v36, __n);
    (*(v6 + 32))(v14 + *(*v14 + 104), v31, v8);
    (*(v6 + 8))(v30, v8);
    swift_beginAccess();
    swift_beginAccess();
    v17 = swift_task_alloc();
    v0[43] = v17;
    *v17 = v0;
    v17[1] = sub_1D1AC6234;
    v18 = v0[42];

    return sub_1D1ACDF04();
  }

  else
  {
    v20 = v0[40];
    v21 = v0[41];
    v23 = v0[37];
    v22 = v0[38];
    v24 = v0[34];
    v25 = v0[31];
    v27 = v0[28];
    v26 = v0[29];
    v28 = v0[27];
    v33 = v0[26];
    v35 = v0[25];
    v37 = v0[22];
    __na = v0[21];
    v41 = v0[20];
    sub_1D1AB648C();

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1D1AC6234(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_1D1AC6C28;
  }

  else
  {
    v5 = sub_1D1AC6348;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D1AC6364()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 368) = v2;
    v74 = v2;
    if (v2)
    {
      v3 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      v72 = v1;
      while (v3 < *(v1 + 16))
      {
        v4 = *(v0 + 232);
        v6 = *(v0 + 184);
        v5 = *(v0 + 192);
        v7 = *(v0 + 176);
        v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v9 = *(v5 + 72);
        sub_1D1741C08(v1 + v8 + v9 * v3, v4, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1741C08(v4 + *(v6 + 44), v7, &qword_1EC64A868, &qword_1D1E96DD8);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
        v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
        v12 = *(v0 + 232);
        if (v11 == 1)
        {
          sub_1D1741A30(*(v0 + 232), &unk_1EC64A270, &qword_1D1E71780);
        }

        else
        {
          v13 = *(v0 + 224);
          sub_1D1741A30(*(v0 + 176), &qword_1EC64A868, &qword_1D1E96DD8);
          sub_1D1741A90(v12, v13, &unk_1EC64A270, &qword_1D1E71780);
          v14 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 120) = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178DAF0(0, *(v78 + 16) + 1, 1);
            v14 = *(v0 + 120);
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1D178DAF0(v16 > 1, v17 + 1, 1);
            v14 = *(v0 + 120);
          }

          v18 = *(v0 + 224);
          *(v14 + 16) = v17 + 1;
          v78 = v14;
          sub_1D1741A90(v18, v14 + v8 + v17 * v9, &unk_1EC64A270, &qword_1D1E71780);
        }

        ++v3;
        v1 = v72;
        if (v74 == v3)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_49;
    }

    v78 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v0 + 376) = v78;
    v31 = *(v0 + 144);
    Strong = swift_weakLoadStrong();
    *(v0 + 384) = Strong;
    if (Strong)
    {
      v33 = swift_task_alloc();
      *(v0 + 392) = v33;
      *v33 = v0;
      v33[1] = sub_1D1AC6CB4;

      sub_1D1AC9EC0(v78);
    }

    else
    {

      if (*(v0 + 368))
      {
        v34 = 0;
        v80 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v35 = *(v0 + 352);
          if (v34 >= *(v35 + 16))
          {
            break;
          }

          v36 = *(v0 + 216);
          v38 = *(v0 + 184);
          v37 = *(v0 + 192);
          v39 = *(v0 + 168);
          v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v41 = *(v37 + 72);
          sub_1D1741C08(v35 + v40 + v41 * v34, v36, &unk_1EC64A270, &qword_1D1E71780);
          sub_1D1741C08(v36 + *(v38 + 44), v39, &qword_1EC64A868, &qword_1D1E96DD8);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
          v43 = (*(*(v42 - 8) + 48))(v39, 1, v42);
          v44 = *(v0 + 216);
          if (v43 == 1)
          {
            sub_1D1741A90(*(v0 + 216), *(v0 + 208), &unk_1EC64A270, &qword_1D1E71780);
            v45 = v80;
            v46 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 128) = v80;
            if ((v46 & 1) == 0)
            {
              sub_1D178DAF0(0, *(v80 + 16) + 1, 1);
              v45 = *(v0 + 128);
            }

            v48 = *(v45 + 16);
            v47 = *(v45 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_1D178DAF0(v47 > 1, v48 + 1, 1);
              v45 = *(v0 + 128);
            }

            v49 = *(v0 + 208);
            *(v45 + 16) = v48 + 1;
            v80 = v45;
            sub_1D1741A90(v49, v45 + v40 + v48 * v41, &unk_1EC64A270, &qword_1D1E71780);
          }

          else
          {
            sub_1D1741A30(*(v0 + 168), &qword_1EC64A868, &qword_1D1E96DD8);
            sub_1D1741A30(v44, &unk_1EC64A270, &qword_1D1E71780);
          }

          if (++v34 == *(v0 + 368))
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

      v80 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v50 = *(v0 + 352);
      v51 = *(v0 + 144);

      v52 = swift_weakLoadStrong();
      *(v0 + 400) = v52;
      if (v52)
      {
        v53 = v52;
        v54 = *(v80 + 16);
        if (v54)
        {
          v76 = v52;
          v55 = *(v0 + 192);
          *(v0 + 136) = MEMORY[0x1E69E7CC0];
          sub_1D178D7B4(0, v54, 0);
          v56 = 0;
          v57 = *(v0 + 136);
          v58 = v80;
          v59 = v80 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
          while (v56 < *(v58 + 16))
          {
            v60 = *(v0 + 200);
            v61 = *(v0 + 160);
            sub_1D1741C08(v59 + *(*(v0 + 192) + 72) * v56, v60, &unk_1EC64A270, &qword_1D1E71780);
            sub_1D1AD7678(v60, v61, type metadata accessor for StateSnapshot.UpdateType);
            sub_1D1741A30(v60, &unk_1EC64A270, &qword_1D1E71780);
            *(v0 + 136) = v57;
            v63 = *(v57 + 16);
            v62 = *(v57 + 24);
            if (v63 >= v62 >> 1)
            {
              sub_1D178D7B4(v62 > 1, v63 + 1, 1);
              v57 = *(v0 + 136);
            }

            v65 = *(v0 + 152);
            v64 = *(v0 + 160);
            ++v56;
            *(v57 + 16) = v63 + 1;
            sub_1D1AD76E0(v64, v57 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v63, type metadata accessor for StateSnapshot.UpdateType);
            v58 = v80;
            if (v54 == v56)
            {

              v53 = v76;
              goto LABEL_45;
            }
          }

          goto LABEL_50;
        }

        v57 = MEMORY[0x1E69E7CC0];
LABEL_45:
        *(v0 + 408) = v57;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 88) = 0;
        v77 = (*v53 + 272);
        v81 = (*v77 + **v77);
        v68 = (*v77)[1];
        v69 = swift_task_alloc();
        *(v0 + 416) = v69;
        *v69 = v0;
        v69[1] = sub_1D1AC731C;

        v81(v57, v0 + 88);
      }

      else
      {

        v66 = swift_task_alloc();
        *(v0 + 344) = v66;
        *v66 = v0;
        v66[1] = sub_1D1AC6234;
        v67 = *(v0 + 336);

        sub_1D1ACDF04();
      }
    }
  }

  else
  {
    v20 = *(v0 + 328);
    v19 = *(v0 + 336);

    sub_1D1741A30(v20, &qword_1EC64A880, &qword_1D1E96DF0);
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 272);
    v26 = *(v0 + 248);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);
    v70 = *(v0 + 208);
    v71 = *(v0 + 200);
    v73 = *(v0 + 176);
    v75 = *(v0 + 168);
    v79 = *(v0 + 160);
    sub_1D1AB648C();

    v30 = *(v0 + 8);

    v30();
  }
}

uint64_t sub_1D1AC6C28()
{
  *(v0 + 112) = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1D1AC6CB4()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC6DE8, 0, 0);
}

void sub_1D1AC6DE8()
{
  if (*(v0 + 368))
  {
    v1 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v2 = *(v0 + 352);
      if (v1 >= *(v2 + 16))
      {
        break;
      }

      v3 = *(v0 + 216);
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 168);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1D1741C08(v2 + v7 + v8 * v1, v3, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v3 + *(v5 + 44), v6, &qword_1EC64A868, &qword_1D1E96DD8);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
      v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
      v11 = *(v0 + 216);
      if (v10 == 1)
      {
        sub_1D1741A90(*(v0 + 216), *(v0 + 208), &unk_1EC64A270, &qword_1D1E71780);
        v12 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 128) = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178DAF0(0, *(v39 + 16) + 1, 1);
          v12 = *(v0 + 128);
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178DAF0(v14 > 1, v15 + 1, 1);
          v12 = *(v0 + 128);
        }

        v16 = *(v0 + 208);
        *(v12 + 16) = v15 + 1;
        v39 = v12;
        sub_1D1741A90(v16, v12 + v7 + v15 * v8, &unk_1EC64A270, &qword_1D1E71780);
      }

      else
      {
        sub_1D1741A30(*(v0 + 168), &qword_1EC64A868, &qword_1D1E96DD8);
        sub_1D1741A30(v11, &unk_1EC64A270, &qword_1D1E71780);
      }

      if (++v1 == *(v0 + 368))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v17 = *(v0 + 352);
  v18 = *(v0 + 144);

  Strong = swift_weakLoadStrong();
  *(v0 + 400) = Strong;
  if (Strong)
  {
    v20 = Strong;
    v21 = *(v39 + 16);
    if (v21)
    {
      v37 = Strong;
      v22 = *(v0 + 192);
      *(v0 + 136) = MEMORY[0x1E69E7CC0];
      sub_1D178D7B4(0, v21, 0);
      v23 = 0;
      v24 = *(v0 + 136);
      v25 = v39;
      v26 = v39 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      while (v23 < *(v25 + 16))
      {
        v27 = *(v0 + 200);
        v28 = *(v0 + 160);
        sub_1D1741C08(v26 + *(*(v0 + 192) + 72) * v23, v27, &unk_1EC64A270, &qword_1D1E71780);
        sub_1D1AD7678(v27, v28, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1741A30(v27, &unk_1EC64A270, &qword_1D1E71780);
        *(v0 + 136) = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D178D7B4(v29 > 1, v30 + 1, 1);
          v24 = *(v0 + 136);
        }

        v32 = *(v0 + 152);
        v31 = *(v0 + 160);
        ++v23;
        *(v24 + 16) = v30 + 1;
        sub_1D1AD76E0(v31, v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, type metadata accessor for StateSnapshot.UpdateType);
        v25 = v39;
        if (v21 == v23)
        {

          v20 = v37;
          goto LABEL_25;
        }
      }

LABEL_29:
      __break(1u);
      return;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *(v0 + 408) = v24;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 88) = 0;
    v38 = (*v20 + 272);
    v40 = (*v38 + **v38);
    v35 = (*v38)[1];
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    *v36 = v0;
    v36[1] = sub_1D1AC731C;

    v40(v24, v0 + 88);
  }

  else
  {

    v33 = swift_task_alloc();
    *(v0 + 344) = v33;
    *v33 = v0;
    v33[1] = sub_1D1AC6234;
    v34 = *(v0 + 336);

    sub_1D1ACDF04();
  }
}

uint64_t sub_1D1AC731C()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 400);
  v5 = *v0;

  v6 = swift_task_alloc();
  *(v1 + 344) = v6;
  *v6 = v5;
  v6[1] = sub_1D1AC6234;
  v7 = *(v1 + 336);

  return sub_1D1ACDF04();
}

uint64_t sub_1D1AC74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for MatterStateSnapshot();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC75B8, 0, 0);
}

uint64_t sub_1D1AC75B8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1D1E6801C();

  swift_beginAccess();
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AC7784;
  v11 = v0[15];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0);
}

uint64_t sub_1D1AC7784()
{
  v2 = *(*v1 + 128);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AC7894, 0, 0);
  }

  return result;
}

uint64_t sub_1D1AC7894()
{
  v1 = v0[15];
  v2 = (*(v0[13] + 48))(v1, 1, v0[12]);
  v3 = v0[14];
  if (v2 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[11];
    sub_1D1AD76E0(v1, v0[14], type metadata accessor for MatterStateSnapshot);
    Strong = swift_weakLoadStrong();
    v0[17] = Strong;
    if (Strong)
    {
      v8 = *(*Strong + 280);
      v16 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[18] = v10;
      *v10 = v0;
      v10[1] = sub_1D1AC7B20;
      v11 = v0[14];

      return v16(v11);
    }

    else
    {
      sub_1D1AD7050(v0[14], type metadata accessor for MatterStateSnapshot);
      v12 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
      v13 = *(MEMORY[0x1E69E85B0] + 4);
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = sub_1D1AC7784;
      v15 = v0[15];

      return MEMORY[0x1EEE6D8D0](v15, 0, 0);
    }
  }
}

uint64_t sub_1D1AC7B20()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC7C38, 0, 0);
}

uint64_t sub_1D1AC7C38()
{
  sub_1D1AD7050(v0[14], type metadata accessor for MatterStateSnapshot);
  v1 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1D1AC7784;
  v4 = v0[15];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0);
}

uint64_t sub_1D1AC7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for StateSnapshot(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC7E10, 0, 0);
}

uint64_t sub_1D1AC7E10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1D1E6801C();

  swift_beginAccess();
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AC7FDC;
  v11 = v0[15];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0);
}

uint64_t sub_1D1AC7FDC()
{
  v2 = *(*v1 + 128);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1AC80EC, 0, 0);
  }

  return result;
}

uint64_t sub_1D1AC80EC()
{
  v1 = v0[15];
  v2 = (*(v0[13] + 48))(v1, 1, v0[12]);
  v3 = v0[14];
  if (v2 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[11];
    sub_1D1AD76E0(v1, v0[14], type metadata accessor for StateSnapshot);
    Strong = swift_weakLoadStrong();
    v0[17] = Strong;
    if (Strong)
    {
      v8 = *(*Strong + 280);
      v16 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[18] = v10;
      *v10 = v0;
      v10[1] = sub_1D1AC8378;
      v11 = v0[14];

      return v16(v11);
    }

    else
    {
      sub_1D1AD7050(v0[14], type metadata accessor for StateSnapshot);
      v12 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
      v13 = *(MEMORY[0x1E69E85B0] + 4);
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = sub_1D1AC7FDC;
      v15 = v0[15];

      return MEMORY[0x1EEE6D8D0](v15, 0, 0);
    }
  }
}

uint64_t sub_1D1AC8378()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC8490, 0, 0);
}

uint64_t sub_1D1AC8490()
{
  sub_1D1AD7050(v0[14], type metadata accessor for StateSnapshot);
  v1 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1D1AC7FDC;
  v4 = v0[15];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0);
}

uint64_t sub_1D1AC8570(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A800, &qword_1D1E96D40) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v4 = *(type metadata accessor for MatterStateSnapshot() - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7C0, &qword_1D1E96CF0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
  v2[24] = v11;
  v12 = *(v11 - 8);
  v2[25] = v12;
  v13 = *(v12 + 64) + 15;
  v2[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v2[27] = v14;
  v15 = *(v14 - 8);
  v2[28] = v15;
  v16 = *(v15 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AC880C, 0, 0);
}

uint64_t sub_1D1AC880C()
{
  v1 = *(*(v0 + 104) + 16);
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 224);
    *(v0 + 92) = *(v3 + 80);
    *(v0 + 248) = *(v3 + 72);
    while (1)
    {
      *(v0 + 256) = v2;
      v4 = *(v0 + 232);
      v5 = *(v0 + 216);
      v6 = *(v0 + 192);
      v7 = *(v0 + 200);
      v8 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v2, v4, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v4 + *(v5 + 44), v8, &qword_1EC64A7C0, &qword_1D1E96CF0);
      if ((*(v7 + 48))(v8, 1, v6) != 1)
      {
        break;
      }

      v9 = *(v0 + 184);
      sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741A30(v9, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v2 = *(v0 + 256) + 1;
      if (v2 == *(v0 + 240))
      {
        goto LABEL_5;
      }
    }

    v20 = *(v0 + 232);
    v21 = *(v0 + 208);
    v22 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 184), v21, &qword_1EC645C58, &qword_1D1E7C010);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
    inited = swift_initStackObject();
    *(v0 + 264) = inited;
    *(inited + 16) = xmmword_1D1E739C0;
    v24 = *v20;
    v25 = *(v20 + 8);
    v26 = *(v20 + 16);
    *(inited + 32) = *v20;
    *(inited + 40) = v25;
    *(inited + 48) = v26;
    v27 = *v21;
    v28 = *(v21 + 8);
    v29 = *(v21 + 16);
    *(v0 + 72) = *v21;
    *(v0 + 80) = v28;
    *(v0 + 88) = v29;
    v30 = *(*v22 + 272);
    sub_1D1A28388(v24, v25, v26);
    sub_1D1AC3828(v27, v28, v29);
    v34 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 272) = v32;
    *v32 = v0;
    v32[1] = sub_1D1AC8B84;
    v33 = *(v0 + 112);

    return v34(inited, v0 + 72);
  }

  else
  {
LABEL_5:
    v10 = *(v0 + 232);
    v11 = *(v0 + 208);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D1AC8B84(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v8 = *v1;
  *(v3 + 280) = a1;

  swift_setDeallocating();
  v6 = *(v5 + 16);
  swift_arrayDestroy();
  sub_1D1AD7288(*(v2 + 72), *(v2 + 80), *(v3 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1D1AC8CF4, 0, 0);
}

uint64_t sub_1D1AC8CF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  if (*(v1 + *(v2 + 48)))
  {
    v3 = *(v0 + 280);
    v4 = *(v3 + 32);
    *(v0 + 89) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_9:
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v71 = (v7 - 1) & v7;
      v17 = __clz(__rbit64(v7)) | (v8 << 6);
      (*(v14 + 16))(v12, *(v3 + 48) + *(v14 + 72) * v17, v13);
      sub_1D1AD7678(*(v3 + 56) + *(v16 + 72) * v17, v15, type metadata accessor for MatterStateSnapshot);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      v19 = *(v18 + 48);
      (*(v14 + 32))(v11, v12, v13);
      sub_1D1AD76E0(v15, v11 + v19, type metadata accessor for MatterStateSnapshot);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v20 = v71;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = ((63 - v6) >> 6) - 1;
      while (v10 != v9)
      {
        v8 = v9 + 1;
        v7 = *(v3 + 72 + 8 * v9++);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      v67 = *(v0 + 168);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
      v20 = 0;
    }

    *(v0 + 288) = v20;
    *(v0 + 296) = v10;
    v21 = *(v0 + 176);
    sub_1D1741A90(*(v0 + 168), v21, &qword_1EC645410, &unk_1D1E799A0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v48 = *(v0 + 112);
      sub_1D1AD76E0(*(v0 + 176) + *(v22 + 48), *(v0 + 136), type metadata accessor for MatterStateSnapshot);
      v69 = (*v48 + 280);
      v72 = (*v69 + **v69);
      v49 = (*v69)[1];
      v50 = swift_task_alloc();
      *(v0 + 304) = v50;
      *v50 = v0;
      v50[1] = sub_1D1AC9550;
      v51 = *(v0 + 136);
      v52 = *(v0 + 112);

      return v72(v51);
    }

    v23 = *(v0 + 280);

    v1 = *(v0 + 208);
    v2 = *(v0 + 192);
  }

  v24 = *(v0 + 120);
  sub_1D1741C08(v1 + *(v2 + 44), v24, &qword_1EC64A800, &qword_1D1E96D40);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 120);
  if (v27 == 1)
  {

    sub_1D1741A30(v29, &qword_1EC645C58, &qword_1D1E7C010);
    sub_1D1741A30(v28, &qword_1EC643318, &qword_1D1E71770);
    sub_1D1741A30(v30, &qword_1EC64A800, &qword_1D1E96D40);
  }

  else
  {
    *(v0 + 96) = *(v0 + 280);
    sub_1D1E67D6C();
    sub_1D1741A30(v29, &qword_1EC645C58, &qword_1D1E7C010);
    sub_1D1741A30(v28, &qword_1EC643318, &qword_1D1E71770);
    (*(v26 + 8))(v30, v25);
  }

  v31 = *(v0 + 256) + 1;
  if (v31 == *(v0 + 240))
  {
LABEL_18:
    v38 = *(v0 + 232);
    v39 = *(v0 + 208);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v43 = *(v0 + 160);
    v42 = *(v0 + 168);
    v44 = *(v0 + 136);
    v45 = *(v0 + 120);

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    while (1)
    {
      *(v0 + 256) = v31;
      v32 = *(v0 + 232);
      v33 = *(v0 + 216);
      v34 = *(v0 + 192);
      v35 = *(v0 + 200);
      v36 = *(v0 + 184);
      sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v31, v32, &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741C08(v32 + *(v33 + 44), v36, &qword_1EC64A7C0, &qword_1D1E96CF0);
      if ((*(v35 + 48))(v36, 1, v34) != 1)
      {
        break;
      }

      v37 = *(v0 + 184);
      sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
      sub_1D1741A30(v37, &qword_1EC64A7C0, &qword_1D1E96CF0);
      v31 = *(v0 + 256) + 1;
      if (v31 == *(v0 + 240))
      {
        goto LABEL_18;
      }
    }

    v53 = *(v0 + 232);
    v54 = *(v0 + 208);
    v55 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 184), v54, &qword_1EC645C58, &qword_1D1E7C010);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
    inited = swift_initStackObject();
    *(v0 + 264) = inited;
    *(inited + 16) = xmmword_1D1E739C0;
    v57 = *v53;
    v58 = *(v53 + 8);
    v59 = *(v53 + 16);
    *(inited + 32) = *v53;
    *(inited + 40) = v58;
    *(inited + 48) = v59;
    v60 = *v54;
    v61 = *(v54 + 8);
    v62 = *(v54 + 16);
    *(v0 + 72) = *v54;
    *(v0 + 80) = v61;
    *(v0 + 88) = v62;
    v63 = *(*v55 + 272);
    sub_1D1A28388(v57, v58, v59);
    sub_1D1AC3828(v60, v61, v62);
    v70 = (v63 + *v63);
    v64 = v63[1];
    v65 = swift_task_alloc();
    *(v0 + 272) = v65;
    *v65 = v0;
    v65[1] = sub_1D1AC8B84;
    v66 = *(v0 + 112);

    return v70(inited, v0 + 72);
  }
}

uint64_t sub_1D1AC9550()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AC964C, 0, 0);
}

uint64_t sub_1D1AC964C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_1D1AD7050(*(v0 + 136), type metadata accessor for MatterStateSnapshot);
  result = (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  if (v5)
  {
    v7 = *(v0 + 280);
LABEL_11:
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v71 = (v5 - 1) & v5;
    v18 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v18, v14);
    sub_1D1AD7678(*(v7 + 56) + *(v17 + 72) * v18, v16, type metadata accessor for MatterStateSnapshot);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v20 = *(v19 + 48);
    (*(v15 + 32))(v13, v12, v14);
    sub_1D1AD76E0(v16, v13 + v20, type metadata accessor for MatterStateSnapshot);
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    v21 = v71;
    v10 = v6;
LABEL_12:
    *(v0 + 288) = v21;
    *(v0 + 296) = v10;
    v22 = *(v0 + 176);
    sub_1D1741A90(*(v0 + 168), v22, &qword_1EC645410, &unk_1D1E799A0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      v24 = *(v0 + 280);

      v25 = *(v0 + 120);
      sub_1D1741C08(*(v0 + 208) + *(*(v0 + 192) + 44), v25, &qword_1EC64A800, &qword_1D1E96D40);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v25, 1, v26);
      v29 = *(v0 + 232);
      v30 = *(v0 + 208);
      v31 = *(v0 + 120);
      if (v28 == 1)
      {

        sub_1D1741A30(v30, &qword_1EC645C58, &qword_1D1E7C010);
        sub_1D1741A30(v29, &qword_1EC643318, &qword_1D1E71770);
        sub_1D1741A30(v31, &qword_1EC64A800, &qword_1D1E96D40);
      }

      else
      {
        *(v0 + 96) = *(v0 + 280);
        sub_1D1E67D6C();
        sub_1D1741A30(v30, &qword_1EC645C58, &qword_1D1E7C010);
        sub_1D1741A30(v29, &qword_1EC643318, &qword_1D1E71770);
        (*(v27 + 8))(v31, v26);
      }

      v37 = *(v0 + 256) + 1;
      if (v37 == *(v0 + 240))
      {
LABEL_22:
        v44 = *(v0 + 232);
        v45 = *(v0 + 208);
        v47 = *(v0 + 176);
        v46 = *(v0 + 184);
        v49 = *(v0 + 160);
        v48 = *(v0 + 168);
        v50 = *(v0 + 136);
        v51 = *(v0 + 120);

        v52 = *(v0 + 8);

        return v52();
      }

      else
      {
        while (1)
        {
          *(v0 + 256) = v37;
          v38 = *(v0 + 232);
          v39 = *(v0 + 216);
          v40 = *(v0 + 192);
          v41 = *(v0 + 200);
          v42 = *(v0 + 184);
          sub_1D1741C08(*(v0 + 104) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 248) * v37, v38, &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741C08(v38 + *(v39 + 44), v42, &qword_1EC64A7C0, &qword_1D1E96CF0);
          if ((*(v41 + 48))(v42, 1, v40) != 1)
          {
            break;
          }

          v43 = *(v0 + 184);
          sub_1D1741A30(*(v0 + 232), &qword_1EC643318, &qword_1D1E71770);
          sub_1D1741A30(v43, &qword_1EC64A7C0, &qword_1D1E96CF0);
          v37 = *(v0 + 256) + 1;
          if (v37 == *(v0 + 240))
          {
            goto LABEL_22;
          }
        }

        v55 = *(v0 + 232);
        v56 = *(v0 + 208);
        v57 = *(v0 + 112);
        sub_1D1741A90(*(v0 + 184), v56, &qword_1EC645C58, &qword_1D1E7C010);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
        inited = swift_initStackObject();
        *(v0 + 264) = inited;
        *(inited + 16) = xmmword_1D1E739C0;
        v59 = *v55;
        v60 = *(v55 + 8);
        v61 = *(v55 + 16);
        *(inited + 32) = *v55;
        *(inited + 40) = v60;
        *(inited + 48) = v61;
        v62 = *v56;
        v63 = *(v56 + 8);
        v64 = *(v56 + 16);
        *(v0 + 72) = *v56;
        *(v0 + 80) = v63;
        *(v0 + 88) = v64;
        v65 = *(*v57 + 272);
        sub_1D1A28388(v59, v60, v61);
        sub_1D1AC3828(v62, v63, v64);
        v70 = (v65 + *v65);
        v66 = v65[1];
        v67 = swift_task_alloc();
        *(v0 + 272) = v67;
        *v67 = v0;
        v67[1] = sub_1D1AC8B84;
        v68 = *(v0 + 112);

        return v70(inited, v0 + 72);
      }
    }

    else
    {
      v32 = *(v0 + 112);
      sub_1D1AD76E0(*(v0 + 176) + *(v23 + 48), *(v0 + 136), type metadata accessor for MatterStateSnapshot);
      v69 = (*v32 + 280);
      v72 = (*v69 + **v69);
      v33 = (*v69)[1];
      v34 = swift_task_alloc();
      *(v0 + 304) = v34;
      *v34 = v0;
      v34[1] = sub_1D1AC9550;
      v35 = *(v0 + 136);
      v36 = *(v0 + 112);

      return v72(v35);
    }
  }

  else
  {
    v8 = ((1 << *(v0 + 89)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 89)) + 63) >> 6;
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
        v53 = *(v0 + 168);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v21 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 280);
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

uint64_t sub_1D1AC9EC0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A8A8, &qword_1D1E96E28) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A868, &qword_1D1E96DD8) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1ACA15C, 0, 0);
}

uint64_t sub_1D1ACA15C()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 168);
    *(v0 + 36) = *(v3 + 80);
    *(v0 + 192) = *(v3 + 72);
    while (1)
    {
      *(v0 + 200) = v2;
      v4 = *(v0 + 176);
      v5 = *(v0 + 160);
      v6 = *(v0 + 136);
      v7 = *(v0 + 144);
      v8 = *(v0 + 128);
      sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v2, v4, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v4 + *(v5 + 44), v8, &qword_1EC64A868, &qword_1D1E96DD8);
      if ((*(v7 + 48))(v8, 1, v6) != 1)
      {
        break;
      }

      v9 = *(v0 + 128);
      sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741A30(v9, &qword_1EC64A868, &qword_1D1E96DD8);
      v2 = *(v0 + 200) + 1;
      if (v2 == *(v0 + 184))
      {
        goto LABEL_5;
      }
    }

    v20 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 56);
    sub_1D1741A90(*(v0 + 128), v21, &qword_1EC649DC8, &qword_1D1E96508);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
    updated = type metadata accessor for StateSnapshot.UpdateType(0);
    *(v0 + 208) = updated;
    v24 = *(*(updated - 8) + 72);
    v25 = *(*(updated - 8) + 80);
    *(v0 + 264) = v25;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    *(v0 + 216) = v27;
    *(v27 + 16) = xmmword_1D1E739C0;
    sub_1D1AD7678(v20, v27 + v26, type metadata accessor for StateSnapshot.UpdateType);
    v28 = *v21;
    v29 = *(v21 + 8);
    v30 = *(v21 + 16);
    *(v0 + 16) = *v21;
    *(v0 + 24) = v29;
    *(v0 + 32) = v30;
    v31 = *(*v22 + 272);
    sub_1D1AC3828(v28, v29, v30);
    v35 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 224) = v33;
    *v33 = v0;
    v33[1] = sub_1D1ACA540;
    v34 = *(v0 + 56);

    return v35(v27, v0 + 16);
  }

  else
  {
LABEL_5:
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D1ACA540(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 264);
  v7 = *(*v1 + 208);
  v10 = *v1;
  *(v3 + 232) = a1;

  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D1AD7288(*(v2 + 16), *(v2 + 24), *(v3 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1D1ACA6E4, 0, 0);
}

uint64_t sub_1D1ACA6E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  if (*(v1 + *(v2 + 48)))
  {
    v3 = *(v0 + 232);
    v4 = *(v3 + 32);
    *(v0 + 33) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_9:
      v12 = *(v0 + 104);
      v11 = *(v0 + 112);
      v13 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v72 = (v7 - 1) & v7;
      v17 = __clz(__rbit64(v7)) | (v8 << 6);
      (*(v14 + 16))(v12, *(v3 + 48) + *(v14 + 72) * v17, v13);
      sub_1D1AD7678(*(v3 + 56) + *(v16 + 72) * v17, v15, type metadata accessor for StateSnapshot);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      v19 = *(v18 + 48);
      (*(v14 + 32))(v11, v12, v13);
      sub_1D1AD76E0(v15, v11 + v19, type metadata accessor for StateSnapshot);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v20 = v72;
      v10 = v8;
    }

    else
    {
      v9 = 0;
      v10 = ((63 - v6) >> 6) - 1;
      while (v10 != v9)
      {
        v8 = v9 + 1;
        v7 = *(v3 + 72 + 8 * v9++);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      v68 = *(v0 + 112);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
      (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
      v20 = 0;
    }

    *(v0 + 240) = v20;
    *(v0 + 248) = v10;
    v21 = *(v0 + 120);
    sub_1D1741A90(*(v0 + 112), v21, &qword_1EC645430, &qword_1D1E799C0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v48 = *(v0 + 56);
      sub_1D1AD76E0(*(v0 + 120) + *(v22 + 48), *(v0 + 80), type metadata accessor for StateSnapshot);
      v70 = (*v48 + 280);
      v73 = (*v70 + **v70);
      v49 = (*v70)[1];
      v50 = swift_task_alloc();
      *(v0 + 256) = v50;
      *v50 = v0;
      v50[1] = sub_1D1ACAFAC;
      v51 = *(v0 + 80);
      v52 = *(v0 + 56);

      return v73(v51);
    }

    v23 = *(v0 + 232);

    v1 = *(v0 + 152);
    v2 = *(v0 + 136);
  }

  v24 = *(v0 + 64);
  sub_1D1741C08(v1 + *(v2 + 44), v24, &qword_1EC64A8A8, &qword_1D1E96E28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 64);
  if (v27 == 1)
  {

    sub_1D1741A30(v29, &qword_1EC649DC8, &qword_1D1E96508);
    sub_1D1741A30(v28, &unk_1EC64A270, &qword_1D1E71780);
    sub_1D1741A30(v30, &qword_1EC64A8A8, &qword_1D1E96E28);
  }

  else
  {
    *(v0 + 40) = *(v0 + 232);
    sub_1D1E67D6C();
    sub_1D1741A30(v29, &qword_1EC649DC8, &qword_1D1E96508);
    sub_1D1741A30(v28, &unk_1EC64A270, &qword_1D1E71780);
    (*(v26 + 8))(v30, v25);
  }

  v31 = *(v0 + 200) + 1;
  if (v31 == *(v0 + 184))
  {
LABEL_18:
    v38 = *(v0 + 176);
    v39 = *(v0 + 152);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v44 = *(v0 + 80);
    v45 = *(v0 + 64);

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    while (1)
    {
      *(v0 + 200) = v31;
      v32 = *(v0 + 176);
      v33 = *(v0 + 160);
      v34 = *(v0 + 136);
      v35 = *(v0 + 144);
      v36 = *(v0 + 128);
      sub_1D1741C08(*(v0 + 48) + ((*(v0 + 36) + 32) & ~*(v0 + 36)) + *(v0 + 192) * v31, v32, &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741C08(v32 + *(v33 + 44), v36, &qword_1EC64A868, &qword_1D1E96DD8);
      if ((*(v35 + 48))(v36, 1, v34) != 1)
      {
        break;
      }

      v37 = *(v0 + 128);
      sub_1D1741A30(*(v0 + 176), &unk_1EC64A270, &qword_1D1E71780);
      sub_1D1741A30(v37, &qword_1EC64A868, &qword_1D1E96DD8);
      v31 = *(v0 + 200) + 1;
      if (v31 == *(v0 + 184))
      {
        goto LABEL_18;
      }
    }

    v53 = *(v0 + 176);
    v54 = *(v0 + 152);
    v55 = *(v0 + 56);
    sub_1D1741A90(*(v0 + 128), v54, &qword_1EC649DC8, &qword_1D1E96508);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
    updated = type metadata accessor for StateSnapshot.UpdateType(0);
    *(v0 + 208) = updated;
    v57 = *(*(updated - 8) + 72);
    v58 = *(*(updated - 8) + 80);
    *(v0 + 264) = v58;
    v59 = (v58 + 32) & ~v58;
    v60 = swift_allocObject();
    *(v0 + 216) = v60;
    *(v60 + 16) = xmmword_1D1E739C0;
    sub_1D1AD7678(v53, v60 + v59, type metadata accessor for StateSnapshot.UpdateType);
    v61 = *v54;
    v62 = *(v54 + 8);
    v63 = *(v54 + 16);
    *(v0 + 16) = *v54;
    *(v0 + 24) = v62;
    *(v0 + 32) = v63;
    v64 = *(*v55 + 272);
    sub_1D1AC3828(v61, v62, v63);
    v71 = (v64 + *v64);
    v65 = v64[1];
    v66 = swift_task_alloc();
    *(v0 + 224) = v66;
    *v66 = v0;
    v66[1] = sub_1D1ACA540;
    v67 = *(v0 + 56);

    return v71(v60, v0 + 16);
  }
}