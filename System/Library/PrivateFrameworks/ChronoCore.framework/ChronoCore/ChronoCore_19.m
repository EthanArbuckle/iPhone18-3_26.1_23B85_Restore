void sub_224BE2A2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v64 = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
    sub_224DAF1F8();
    v3 = v58;
    v4 = v59;
    v5 = v60;
    v6 = v61;
    v7 = v62;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_18;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      sub_224A5EAA4(v63, [v16 copyFilteredToOptions_]);

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_224DAF878();
      if (v17)
      {
        *&v57[0] = v17;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v16 = v63[0];
        v14 = v6;
        v15 = v7;
        if (v63[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  sub_224A3B7E4();
  v11 = v64;
  v18 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
  sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
  sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
  v19 = sub_224DAF1A8();
  v7 = a2;
  v3 = [v18 initWithExtensions:v19 generatedFrom:a2];

  [v3 prepareForEncoding];
  if (qword_2813514B8 == -1)
  {
    goto LABEL_19;
  }

LABEL_52:
  swift_once();
LABEL_19:
  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281364E50);
  v21 = v3;
  v22 = v7;
  v7 = a3;

  v23 = sub_224DAB228();
  v3 = sub_224DAF2A8();

  v51 = v21;
  if (os_log_type_enabled(v23, v3))
  {
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v24 = 136446978;
    v25 = [v22 description];
    v26 = sub_224DAEE18();
    v28 = v27;

    v29 = sub_224A33F74(v26, v28, v63);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v30 = sub_224BDF168(a3);
    v31 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
    v32 = MEMORY[0x22AA5D380](v30, v31);
    v34 = v33;

    v35 = sub_224A33F74(v32, v34, v63);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2050;
    v36 = [v21 sequenceNumber];

    *(v24 + 24) = v36;
    *(v24 + 32) = 2050;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v37 = sub_224DAF838();
    }

    else
    {
      v37 = *(v11 + 16);
    }

    *(v24 + 34) = v37;

    _os_log_impl(&dword_224A2F000, v23, v3, "Sending extensions for options: %{public}s to clients: %{public}s - sequence #: %{public}lu, extensionCount: %{public}ld", v24, 0x2Au);
    v3 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v53, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);

    v7 = a3;
    if ((a3 & 0xC000000000000001) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if ((a3 & 0xC000000000000001) == 0)
    {
LABEL_26:
      v42 = -1 << *(v7 + 32);
      v38 = (v7 + 56);
      v39 = ~v42;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v41 = (v44 & *(v7 + 56));

      v40 = 0;
      goto LABEL_30;
    }
  }

  swift_unknownObjectRetain();
  v3 = sub_224DAF7E8();
  type metadata accessor for ChronoServicesClient();
  sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
  sub_224DAF1F8();
  v7 = v63[0];
  v38 = v63[1];
  v39 = v63[2];
  v40 = v63[3];
  v41 = v63[4];
LABEL_30:
  v11 = &off_27853F000;
  while ((v7 & 0x8000000000000000) == 0)
  {
    v45 = v40;
    v46 = v41;
    v47 = v40;
    if (!v41)
    {
      do
      {
        v47 = (v45 + 1);
        if (__OFADD__(v45, 1))
        {
          goto LABEL_51;
        }

        if (v47 >= ((v39 + 64) >> 6))
        {
          goto LABEL_49;
        }

        v46 = v38[v47];
        ++v45;
      }

      while (!v46);
    }

    v3 = (v46 - 1) & v46;
    v48 = *(*(v7 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
    if (!v48)
    {
      goto LABEL_49;
    }

LABEL_42:
    if ([*&v48[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57[0] = v55;
    v57[1] = v56;
    if (*(&v56 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
      if (swift_dynamicCast())
      {
        [v54 widgetExtensionsDidChange_];
        swift_unknownObjectRelease();
      }
    }

    else
    {

      sub_224A3311C(v57, &qword_27D6F4760, &unk_224DB3680);
    }

    v40 = v47;
    v41 = v3;
  }

  v49 = sub_224DAF878();
  if (v49)
  {
    *&v55 = v49;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v48 = *&v57[0];
    v47 = v40;
    v3 = v41;
    if (*&v57[0])
    {
      goto LABEL_42;
    }
  }

LABEL_49:
  sub_224A3B7E4();
}

uint64_t sub_224BE3210(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
    v7 = *(v6 + 16);
    v8 = result;

    os_unfair_lock_lock(v7);
    v9 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v10 = *&v8[v9];
    v11 = *(v6 + 16);

    os_unfair_lock_unlock(v11);

    sub_224BE1C50(v4, v10, 0xD000000000000012, 0x8000000224DCA870, a3);
  }

  return result;
}

uint64_t sub_224BE3304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_224A3317C(result + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService, v15);
    v6 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v7 = *(*(v6 + 8) + 8);
    v8 = sub_224DACA48();
    if (v8)
    {
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v15);
      v10 = *&v5[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v11 = *(v10 + 16);

      os_unfair_lock_lock(v11);
      v12 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
      swift_beginAccess();
      v13 = *&v5[v12];
      v14 = *(v10 + 16);

      os_unfair_lock_unlock(v14);

      sub_224BE1C50(v9, v13, 0x707520736E6F6369, 0xED00006465746164, a3);
    }

    else
    {

      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return result;
}

void sub_224BE345C()
{
  v100[5] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    v4 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v5 = *&v1[v4];
    v6 = *(v2 + 16);

    os_unfair_lock_unlock(v6);

    v95 = v1;
    v94 = 0;
    v93 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277D84FA0];
      v100[0] = MEMORY[0x277D84FA0];

      sub_224DAF7E8();
      v8 = sub_224DAF878();
      if (v8)
      {
        v9 = v8;
        type metadata accessor for ChronoServicesClient();
        v10 = v9;
        v11 = -1;
        do
        {
          *&v97 = v10;
          swift_dynamicCast();
          v12 = *(*&v99[0] + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
          BSDispatchQueueAssert();
          v13 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
          swift_beginAccess();
          v14 = *(*&v99[0] + v13);
          if (!*(v14 + 16))
          {
            goto LABEL_6;
          }

          v15 = sub_224A5C3D0(2u);
          if ((v16 & 1) == 0)
          {

LABEL_6:

            goto LABEL_7;
          }

          v17 = *(*(v14 + 56) + 8 * v15);

          v18 = *(v17 + 16);

          if (!v18)
          {
            goto LABEL_6;
          }

          v19 = *&v99[0];
          v20 = *(v7 + 16);
          if (*(v7 + 24) <= v20)
          {
            sub_224AE02E0(v20 + 1);
          }

          v7 = v100[0];
          v21 = *(v100[0] + 40);
          v22 = sub_224DAF698();
          v23 = v100[0] + 56;
          v24 = -1 << *(v100[0] + 32);
          v25 = v22 & ~v24;
          v26 = v25 >> 6;
          if (((-1 << v25) & ~*(v100[0] + 56 + 8 * (v25 >> 6))) != 0)
          {
            v27 = __clz(__rbit64((-1 << v25) & ~*(v100[0] + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_23;
          }

          v28 = 0;
          v29 = (63 - v24) >> 6;
          do
          {
            if (++v26 == v29 && (v28 & 1) != 0)
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              swift_once();
LABEL_48:
              v59 = sub_224DAB258();
              __swift_project_value_buffer(v59, qword_281364E50);

              v60 = sub_224DAB228();
              v61 = sub_224DAF2A8();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v100[0] = v63;
                *v62 = 134349570;
                if (v11)
                {
                  v64 = sub_224DAF838();
                }

                else
                {
                  v64 = *(v7 + 16);
                }

                *(v62 + 4) = v64;

                *(v62 + 12) = 2050;
                if (v93)
                {
                  v65 = sub_224DAF838();
                }

                else
                {
                  v65 = *(v5 + 16);
                }

                *(v62 + 14) = v65;

                *(v62 + 22) = 2082;
                v66 = v94;
                v67 = sub_224BDF168(v7);
                v94 = v66;
                v68 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
                v69 = MEMORY[0x22AA5D380](v67, v68);
                v71 = v70;

                v72 = sub_224A33F74(v69, v71, v100);

                *(v62 + 24) = v72;
                _os_log_impl(&dword_224A2F000, v60, v61, "Providing %{public}ld of %{public}ld clients relevance entries: {\n%{public}s\n}", v62, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v63);
                MEMORY[0x22AA5EED0](v63, -1, -1);
                MEMORY[0x22AA5EED0](v62, -1, -1);
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              v73 = sub_224BE64D8();
              [v73 prepareForEncoding];
              if (v11)
              {
                sub_224DAF7E8();
                type metadata accessor for ChronoServicesClient();
                sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
                sub_224DAF1F8();
                v7 = v100[0];
                v74 = v100[1];
                v75 = v100[2];
                v76 = v100[3];
                v77 = v100[4];
              }

              else
              {
                v76 = 0;
                v78 = -1 << *(v7 + 32);
                v74 = v7 + 56;
                v75 = ~v78;
                v79 = -v78;
                if (v79 < 64)
                {
                  v80 = ~(-1 << v79);
                }

                else
                {
                  v80 = -1;
                }

                v77 = v80 & *(v7 + 56);
              }

              v93 = v75;
              v11 = (v75 + 64) >> 6;
              while (1)
              {
                if (v7 < 0)
                {
                  v85 = sub_224DAF878();
                  if (!v85 || (*&v97 = v85, type metadata accessor for ChronoServicesClient(), swift_dynamicCast(), v84 = *&v99[0], v5 = v76, v83 = v77, !*&v99[0]))
                  {
LABEL_82:
                    sub_224A3B7E4();

                    goto LABEL_92;
                  }
                }

                else
                {
                  v81 = v76;
                  v82 = v77;
                  v5 = v76;
                  if (!v77)
                  {
                    while (1)
                    {
                      v5 = v81 + 1;
                      if (__OFADD__(v81, 1))
                      {
                        break;
                      }

                      if (v5 >= v11)
                      {
                        goto LABEL_82;
                      }

                      v82 = *(v74 + 8 * v5);
                      ++v81;
                      if (v82)
                      {
                        goto LABEL_71;
                      }
                    }

                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_71:
                  v83 = (v82 - 1) & v82;
                  v84 = *(*(v7 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v82)))));
                  if (!v84)
                  {
                    goto LABEL_82;
                  }
                }

                if ([*&v84[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
                {
                  sub_224DAF758();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v97 = 0u;
                  v98 = 0u;
                }

                v99[0] = v97;
                v99[1] = v98;
                if (*(&v98 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
                  if (swift_dynamicCast())
                  {
                    [v96 timelineEntryRelevanceDidChange_];
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  sub_224A3311C(v99, &qword_27D6F4760, &unk_224DB3680);
                }

                v76 = v5;
                v77 = v83;
              }
            }

            v30 = v26 == v29;
            if (v26 == v29)
            {
              v26 = 0;
            }

            v28 |= v30;
            v31 = *(v23 + 8 * v26);
          }

          while (v31 == -1);
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
LABEL_23:
          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          *(*(v7 + 48) + 8 * v27) = v19;
          ++*(v7 + 16);
LABEL_7:
          v10 = sub_224DAF878();
        }

        while (v10);
      }

      v11 = v7 & 0xC000000000000001;
      if ((v7 & 0xC000000000000001) == 0)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v32 = *(v5 + 32);
      v33 = v32 & 0x3F;
      v34 = ((1 << v32) + 63) >> 6;
      v35 = 8 * v34;

      if (v33 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v86 = swift_slowAlloc();
          v7 = sub_224BF57EC(v86, v34, v5, sub_224BE3F04, 0);
          v94 = 0;

          MEMORY[0x22AA5EED0](v86, -1, -1);
          v11 = v7 & 0xC000000000000001;
          if ((v7 & 0xC000000000000001) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_46;
        }
      }

      v89 = v34;
      v88[1] = v88;
      MEMORY[0x28223BE20](v36);
      v90 = v88 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v90, v35);
      v91 = 0;
      v11 = 0;
      v37 = v5 + 56;
      v38 = 1 << *(v5 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v7 = v39 & *(v5 + 56);
      v40 = (v38 + 63) >> 6;
      v41 = &qword_27D6F3F98[13];
      v42 = &qword_27D6F3F98[13];
      v92 = v5;
      while (v7)
      {
        v43 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_38:
        v46 = v43 | (v11 << 6);
        v47 = *(*(v5 + 48) + 8 * v46);
        v48 = *&v47[v41[477]];
        v49 = v47;
        BSDispatchQueueAssert();
        v50 = v42[484];
        swift_beginAccess();
        v51 = *&v49[v50];
        if (*(v51 + 16))
        {

          v52 = sub_224A5C3D0(2u);
          if (v53)
          {
            v54 = v42;
            v55 = v41;
            v56 = *(*(v51 + 56) + 8 * v52);

            v57 = *(v56 + 16);

            v41 = v55;
            v42 = v54;
            v5 = v92;

            if (v57)
            {
              *&v90[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
              if (__OFADD__(v91++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v44 = v11;
      while (1)
      {
        v11 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_85;
        }

        if (v11 >= v40)
        {
          break;
        }

        v45 = *(v37 + 8 * v11);
        ++v44;
        if (v45)
        {
          v43 = __clz(__rbit64(v45));
          v7 = (v45 - 1) & v45;
          goto LABEL_38;
        }
      }

      v7 = sub_224B05540(v90, v89, v91, v5);
      v11 = v7 & 0xC000000000000001;
      if ((v7 & 0xC000000000000001) == 0)
      {
LABEL_90:
        if (!*(v7 + 16))
        {
          goto LABEL_91;
        }

        goto LABEL_47;
      }
    }

LABEL_46:
    if (!sub_224DAF838())
    {
LABEL_91:

      goto LABEL_92;
    }

LABEL_47:
    if (qword_2813514B8 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_48;
  }

LABEL_92:
  v87 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224BE3F38()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
    swift_beginAccess();
    sub_224A3796C(v1 + v2, &v13, &unk_27D6F5050, &unk_224DBAE08);
    if (!v14)
    {

      return sub_224A3311C(&v13, &unk_27D6F5050, &unk_224DBAE08);
    }

    sub_224A36F98(&v13, v15);
    v3 = sub_224BE4188(v1);
    v4 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      if (sub_224DAF838())
      {
LABEL_5:
        v5 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = v4;
        v8 = *v5;

        sub_224CFB21C(sub_224BFDD38, v7);

        return __swift_destroy_boxed_opaque_existential_1(v15);
      }
    }

    else if (v3[2])
    {
      goto LABEL_5;
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281364DF0);
    v10 = sub_224DAB228();
    v11 = sub_224DAF278();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, v10, v11, "Devices changed, but no clients around to tell", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

unint64_t *sub_224BE4188(uint64_t a1)
{
  v2 = 0;
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = *(v3 + 16);

  os_unfair_lock_unlock(v7);

  if ((v6 & 0xC000000000000001) == 0)
  {
    v33 = *(v6 + 32);
    v11 = ((1 << v33) + 63) >> 6;
    if ((v33 & 0x3Fu) <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

  v2 = MEMORY[0x277D84FA0];
  v67 = MEMORY[0x277D84FA0];
  v6 = sub_224DAF7E8();
  v9 = sub_224DAF878();
  if (!v9)
  {
LABEL_23:

    goto LABEL_44;
  }

  v10 = v9;
  v11 = type metadata accessor for ChronoServicesClient();
  v12 = v10;
  while (1)
  {
    v65 = v12;
    swift_dynamicCast();
    v13 = *&v66[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
    BSDispatchQueueAssert();
    v14 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
    swift_beginAccess();
    v15 = *&v66[v14];
    if (!*(v15 + 16))
    {
      goto LABEL_5;
    }

    v16 = sub_224A5C3D0(0);
    if (v17)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v12 = sub_224DAF878();
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  v19 = *(v18 + 16);

  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = v66;
  v21 = v2[2];
  if (v2[3] <= v21)
  {
    sub_224AE02E0(v21 + 1);
  }

  v2 = v67;
  v22 = *(v67 + 40);
  v23 = sub_224DAF698();
  v24 = v67 + 56;
  v25 = -1 << *(v67 + 32);
  v26 = v23 & ~v25;
  v27 = v26 >> 6;
  if (((-1 << v26) & ~*(v67 + 56 + 8 * (v26 >> 6))) != 0)
  {
    v28 = __clz(__rbit64((-1 << v26) & ~*(v67 + 56 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(v2[6] + 8 * v28) = v20;
    ++v2[2];
    goto LABEL_6;
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v24 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_46:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_25:
    v61 = v11;
    v60[1] = v2;
    v60[2] = v60;
    MEMORY[0x28223BE20](v8);
    v62 = v60 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v62, v34);
    v63 = 0;
    v64 = v6;
    v35 = 0;
    v36 = v6 + 56;
    v37 = 1 << *(v6 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v11 = v38 & *(v6 + 56);
    v39 = (v37 + 63) >> 6;
    v40 = &qword_27D6F3F98[13];
    v2 = &qword_27D6F3F98[13];
    while (v11)
    {
      v41 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_36:
      v44 = v41 | (v35 << 6);
      v45 = *(*(v6 + 48) + 8 * v44);
      v46 = *&v45[v40[477]];
      v47 = v45;
      BSDispatchQueueAssert();
      v48 = v2[484];
      swift_beginAccess();
      v49 = *&v47[v48];
      if (*(v49 + 16))
      {

        v50 = sub_224A5C3D0(0);
        if (v51)
        {
          v52 = v2;
          v53 = v40;
          v54 = *(*(v49 + 56) + 8 * v50);

          v55 = *(v54 + 16);

          v40 = v53;
          v2 = v52;
          v6 = v64;

          if (v55)
          {
            *&v62[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
            if (__OFADD__(v63++, 1))
            {
              __break(1u);
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v39)
      {
        v2 = sub_224B05540(v62, v61, v63, v6);
        goto LABEL_44;
      }

      v43 = *(v36 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v11 = (v43 - 1) & v43;
        goto LABEL_36;
      }
    }
  }

  v59 = swift_slowAlloc();
  v2 = sub_224BF57EC(v59, v11, v6, sub_224BE46DC, 0);

  MEMORY[0x22AA5EED0](v59, -1, -1);
LABEL_44:
  v57 = *MEMORY[0x277D85DE8];
  return v2;
}

char *sub_224BE4710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *&result[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
    v24 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a1;
    aBlock[4] = sub_224BFDD98;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_309;
    v18 = _Block_copy(aBlock);
    v23 = v10;
    v19 = v18;
    v22 = v16;

    sub_224DAB7E8();
    v25 = MEMORY[0x277D84F90];
    sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    v20 = v22;
    MEMORY[0x22AA5D760](0, v14, v9, v19);
    _Block_release(v19);

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v23);
  }

  return result;
}

void sub_224BE4A34(uint64_t a1)
{
  if (qword_2813514B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_224DAB258();
    __swift_project_value_buffer(v2, qword_281364E50);

    v3 = sub_224DAB228();
    v4 = sub_224DAF2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35[0] = v6;
      *v5 = 134349314;
      v7 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_224DAF838();
      }

      else
      {
        v8 = *(a1 + 16);
      }

      *(v5 + 4) = v8;

      *(v5 + 12) = 2082;
      v9 = sub_224BDF168(a1);
      v10 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
      v11 = MEMORY[0x22AA5D380](v9, v10);
      v13 = v12;

      v14 = sub_224A33F74(v11, v13, v35);

      *(v5 + 14) = v14;
      _os_log_impl(&dword_224A2F000, v3, v4, "Providing %{public}ld clients remote device info: {\n%{public}s\n}", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x22AA5EED0](v6, -1, -1);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }

    else
    {

      v7 = a1 & 0xC000000000000001;
    }

    v15 = objc_allocWithZone(MEMORY[0x277CFA308]);
    sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
    v16 = sub_224DAEFF8();
    v17 = [v15 initWithDevices_];

    [v17 prepareForEncoding];
    if (v7)
    {
      swift_unknownObjectRetain();
      sub_224DAF7E8();
      type metadata accessor for ChronoServicesClient();
      sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
      sub_224DAF1F8();
      a1 = v35[0];
      v18 = v35[1];
      v19 = v35[2];
      v7 = v35[3];
      v20 = v35[4];
    }

    else
    {
      v21 = -1 << *(a1 + 32);
      v18 = a1 + 56;
      v19 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(a1 + 56);
    }

    v24 = (v19 + 64) >> 6;
    while (a1 < 0)
    {
      v30 = sub_224DAF878();
      if (!v30)
      {
        goto LABEL_34;
      }

      *&v32 = v30;
      type metadata accessor for ChronoServicesClient();
      swift_dynamicCast();
      v29 = *&v34[0];
      v27 = v7;
      v28 = v20;
      if (!*&v34[0])
      {
        goto LABEL_34;
      }

LABEL_23:
      if ((v29[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated] & 1) == 0)
      {
        if ([*&v29[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
        {
          sub_224DAF758();
          swift_unknownObjectRelease();
        }

        else
        {
          v32 = 0u;
          v33 = 0u;
        }

        v34[0] = v32;
        v34[1] = v33;
        if (!*(&v33 + 1))
        {

          sub_224A3311C(v34, &qword_27D6F4760, &unk_224DB3680);
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
        if (swift_dynamicCast())
        {
          [v31 nearbyDevicesDidChange_];
          swift_unknownObjectRelease();
        }
      }

LABEL_31:
      v7 = v27;
      v20 = v28;
    }

    v25 = v7;
    v26 = v20;
    v27 = v7;
    if (v20)
    {
      break;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_34;
      }

      v26 = *(v18 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  v28 = (v26 - 1) & v26;
  v29 = *(*(a1 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
  if (v29)
  {
    goto LABEL_23;
  }

LABEL_34:
  sub_224A3B7E4();
}

void sub_224BE4F04(uint64_t a1)
{
  v111[5] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v103 = v1;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
    v5 = *(v4 + 16);
    v6 = Strong;

    os_unfair_lock_lock(v5);
    v7 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
    swift_beginAccess();
    v105 = v6;
    v8 = *&v6[v7];
    v9 = *(v4 + 16);

    os_unfair_lock_unlock(v9);

    v104 = 0;
    LODWORD(v106) = v2;
    v102 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x277D84FA0];
      v111[0] = MEMORY[0x277D84FA0];

      sub_224DAF7E8();
      v11 = sub_224DAF878();
      if (v11)
      {
        v12 = v11;
        type metadata accessor for ChronoServicesClient();
        v13 = v12;
        v14 = -1;
        do
        {
          *&v108 = v13;
          swift_dynamicCast();
          v15 = *(*&v110[0] + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
          BSDispatchQueueAssert();
          v16 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
          swift_beginAccess();
          v17 = *(*&v110[0] + v16);
          if (!*(v17 + 16))
          {
            goto LABEL_6;
          }

          v18 = sub_224A5C3D0(3u);
          if ((v19 & 1) == 0)
          {

LABEL_6:

            goto LABEL_7;
          }

          v20 = *(*(v17 + 56) + 8 * v18);

          v21 = *(v20 + 16);

          if (!v21)
          {
            goto LABEL_6;
          }

          v22 = *&v110[0];
          v23 = *(v10 + 16);
          if (*(v10 + 24) <= v23)
          {
            sub_224AE02E0(v23 + 1);
          }

          v10 = v111[0];
          v24 = *(v111[0] + 40);
          v25 = sub_224DAF698();
          v26 = v111[0] + 56;
          v27 = -1 << *(v111[0] + 32);
          v28 = v25 & ~v27;
          v29 = v28 >> 6;
          if (((-1 << v28) & ~*(v111[0] + 56 + 8 * (v28 >> 6))) != 0)
          {
            v30 = __clz(__rbit64((-1 << v28) & ~*(v111[0] + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_23;
          }

          v31 = 0;
          v32 = (63 - v27) >> 6;
          do
          {
            if (++v29 == v32 && (v31 & 1) != 0)
            {
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              swift_once();
LABEL_48:
              v61 = sub_224DAB258();
              __swift_project_value_buffer(v61, qword_281364E50);

              v62 = sub_224DAB228();
              v63 = sub_224DAF2A8();
              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v111[0] = v65;
                *v64 = 134349570;
                if (v14)
                {
                  v66 = sub_224DAF838();
                }

                else
                {
                  v66 = *(v10 + 16);
                }

                *(v64 + 4) = v66;

                *(v64 + 12) = 2050;
                v67 = v14;
                if (v102)
                {
                  v68 = sub_224DAF838();
                }

                else
                {
                  v68 = *(v8 + 16);
                }

                *(v64 + 14) = v68;

                *(v64 + 22) = 2082;
                v69 = v104;
                v70 = sub_224BDF168(v10);
                v104 = v69;
                v71 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
                v72 = MEMORY[0x22AA5D380](v70, v71);
                v74 = v73;

                v75 = sub_224A33F74(v72, v74, v111);

                *(v64 + 24) = v75;
                _os_log_impl(&dword_224A2F000, v62, v63, "Providing %{public}ld of %{public}ld clients with relevance file handle updates: {\n%{public}s\n}", v64, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v65);
                MEMORY[0x22AA5EED0](v65, -1, -1);
                MEMORY[0x22AA5EED0](v64, -1, -1);

                v14 = v67;
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              if (v106)
              {
                if (v106 == 1)
                {
                  v76 = objc_opt_self();

                  sub_224A3DADC(v77);

                  sub_224DAF538();
                  sub_224A80F90(&unk_2813509A0, MEMORY[0x277CFA140]);
                  v78 = sub_224DAF1A8();

                  v79 = [v76 removeEventWithExtensionIdentities_];
                  goto LABEL_61;
                }

                v106 = [objc_opt_self() reloadEvent];
                if (!v14)
                {
LABEL_64:
                  v83 = 0;
                  v85 = -1 << *(v10 + 32);
                  v8 = v10 + 56;
                  v82 = ~v85;
                  v86 = -v85;
                  if (v86 < 64)
                  {
                    v87 = ~(-1 << v86);
                  }

                  else
                  {
                    v87 = -1;
                  }

                  v84 = v87 & *(v10 + 56);
                  goto LABEL_68;
                }
              }

              else
              {
                v80 = objc_opt_self();

                sub_224AE9634(v81);

                sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
                sub_224A3B758(&qword_281350968, &qword_281350970, 0x277CFA418);
                v78 = sub_224DAF1A8();

                v79 = [v80 addOrUpdateEventWithRelevanceKeys_];
LABEL_61:
                v106 = v79;

                if (!v14)
                {
                  goto LABEL_64;
                }
              }

              sub_224DAF7E8();
              type metadata accessor for ChronoServicesClient();
              sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
              sub_224DAF1F8();
              v10 = v111[0];
              v8 = v111[1];
              v82 = v111[2];
              v83 = v111[3];
              v84 = v111[4];
LABEL_68:
              v103 = v82;
              v88 = (v82 + 64) >> 6;
              v14 = &qword_27D6F3F98[13];
              while (1)
              {
                if ((v10 & 0x8000000000000000) != 0)
                {
                  v94 = sub_224DAF878();
                  if (!v94 || (*&v108 = v94, type metadata accessor for ChronoServicesClient(), swift_dynamicCast(), v93 = *&v110[0], v91 = v83, v92 = v84, !*&v110[0]))
                  {
LABEL_87:
                    sub_224A3B7E4();

                    goto LABEL_97;
                  }
                }

                else
                {
                  v89 = v83;
                  v90 = v84;
                  v91 = v83;
                  if (!v84)
                  {
                    while (1)
                    {
                      v91 = v89 + 1;
                      if (__OFADD__(v89, 1))
                      {
                        break;
                      }

                      if (v91 >= v88)
                      {
                        goto LABEL_87;
                      }

                      v90 = *(v8 + 8 * v91);
                      ++v89;
                      if (v90)
                      {
                        goto LABEL_76;
                      }
                    }

                    __break(1u);
                    goto LABEL_89;
                  }

LABEL_76:
                  v92 = (v90 - 1) & v90;
                  v93 = *(*(v10 + 48) + ((v91 << 9) | (8 * __clz(__rbit64(v90)))));
                  if (!v93)
                  {
                    goto LABEL_87;
                  }
                }

                if ([*&v93[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteTarget])
                {
                  sub_224DAF758();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v108 = 0u;
                  v109 = 0u;
                }

                v110[0] = v108;
                v110[1] = v109;
                if (*(&v109 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
                  if (swift_dynamicCast())
                  {
                    [v107 handleWidgetRelevanceEvent_];
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  sub_224A3311C(v110, &qword_27D6F4760, &unk_224DB3680);
                }

                v83 = v91;
                v84 = v92;
              }
            }

            v33 = v29 == v32;
            if (v29 == v32)
            {
              v29 = 0;
            }

            v31 |= v33;
            v34 = *(v26 + 8 * v29);
          }

          while (v34 == -1);
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
LABEL_23:
          *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          *(*(v10 + 48) + 8 * v30) = v22;
          ++*(v10 + 16);
LABEL_7:
          v13 = sub_224DAF878();
        }

        while (v13);
      }

      v14 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v35 = *(v8 + 32);
      v36 = v35 & 0x3F;
      v10 = ((1 << v35) + 63) >> 6;
      v37 = 8 * v10;

      if (v36 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v95 = swift_slowAlloc();
          v10 = sub_224BF57EC(v95, v10, v8, sub_224BE5B68, 0);
          v104 = 0;

          MEMORY[0x22AA5EED0](v95, -1, -1);
          v14 = v10 & 0xC000000000000001;
          if ((v10 & 0xC000000000000001) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_46;
        }
      }

      v98 = v10;
      v97[1] = v97;
      MEMORY[0x28223BE20](v38);
      v99 = v97 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v99, v37);
      v100 = 0;
      v39 = 0;
      v40 = v8 + 56;
      v41 = 1 << *(v8 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v8 + 56);
      v14 = (v41 + 63) >> 6;
      v44 = &qword_27D6F3F98[13];
      v45 = &qword_27D6F3F98[13];
      v101 = v8;
      while (v43)
      {
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_38:
        v10 = v46 | (v39 << 6);
        v49 = *(*(v8 + 48) + 8 * v10);
        v50 = *&v49[v44[477]];
        v51 = v49;
        BSDispatchQueueAssert();
        v52 = v45[484];
        swift_beginAccess();
        v53 = *&v51[v52];
        if (*(v53 + 16))
        {

          v54 = sub_224A5C3D0(3u);
          if (v55)
          {
            v56 = v45;
            v57 = v44;
            v58 = *(*(v53 + 56) + 8 * v54);

            v59 = *(v58 + 16);

            v44 = v57;
            v45 = v56;
            v8 = v101;

            if (v59)
            {
              *&v99[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
              if (__OFADD__(v100++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v47 = v39;
      while (1)
      {
        v39 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_90;
        }

        if (v39 >= v14)
        {
          break;
        }

        v48 = *(v40 + 8 * v39);
        ++v47;
        if (v48)
        {
          v46 = __clz(__rbit64(v48));
          v43 = (v48 - 1) & v48;
          goto LABEL_38;
        }
      }

      v10 = sub_224B05540(v99, v98, v100, v8);
      v14 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) == 0)
      {
LABEL_95:
        if (!*(v10 + 16))
        {
          goto LABEL_96;
        }

        goto LABEL_47;
      }
    }

LABEL_46:
    if (!sub_224DAF838())
    {
LABEL_96:

      goto LABEL_97;
    }

LABEL_47:
    if (qword_2813514B8 != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_48;
  }

LABEL_97:
  v96 = *MEMORY[0x277D85DE8];
}

void sub_224BE5B9C(uint64_t *a1)
{
  v1 = 0;
  v101 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v91 = *a1;
  v90 = v2;
  v3 = a1[3];
  v89 = a1[2];
  v88 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_79;
  }

  v5 = Strong;
  v6 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients;
  swift_beginAccess();
  v9 = *&v5[v8];
  v10 = *(v6 + 16);

  os_unfair_lock_unlock(v10);

  v86 = v5;
  v84 = 0;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x277D84FA0];
    v96 = MEMORY[0x277D84FA0];
    sub_224DAF7E8();
    v13 = sub_224DAF878();
    if (!v13)
    {
LABEL_24:

      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }

    v14 = v13;
    v9 = type metadata accessor for ChronoServicesClient();
    v15 = v14;
LABEL_8:
    *&v93 = v15;
    swift_dynamicCast();
    v16 = *(*&v95[0] + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    v17 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
    swift_beginAccess();
    v18 = *(*&v95[0] + v17);
    if (!*(v18 + 16))
    {
      goto LABEL_6;
    }

    v19 = sub_224A5C3D0(5u);
    if ((v20 & 1) == 0)
    {

LABEL_6:

      goto LABEL_7;
    }

    v21 = *(*(v18 + 56) + 8 * v19);

    v22 = *(v21 + 16);

    if (!v22)
    {
      goto LABEL_6;
    }

    v1 = *&v95[0];
    v23 = *(v12 + 16);
    if (*(v12 + 24) <= v23)
    {
      sub_224AE02E0(v23 + 1);
    }

    v12 = v96;
    v24 = *(v96 + 40);
    v25 = sub_224DAF698();
    v26 = v96 + 56;
    v27 = -1 << *(v96 + 32);
    v28 = v25 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v96 + 56 + 8 * (v28 >> 6))) != 0)
    {
      v30 = __clz(__rbit64((-1 << v28) & ~*(v96 + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_23;
    }

    v31 = 0;
    v32 = (63 - v27) >> 6;
    while (++v29 != v32 || (v31 & 1) == 0)
    {
      v33 = v29 == v32;
      if (v29 == v32)
      {
        v29 = 0;
      }

      v31 |= v33;
      v34 = *(v26 + 8 * v29);
      if (v34 != -1)
      {
        v30 = __clz(__rbit64(~v34)) + (v29 << 6);
LABEL_23:
        *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        *(*(v12 + 48) + 8 * v30) = v1;
        ++*(v12 + 16);
LABEL_7:
        v15 = sub_224DAF878();
        if (!v15)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    v35 = *(v9 + 32);
    v22 = ((1 << v35) + 63) >> 6;
    if ((v35 & 0x3Fu) <= 0xD)
    {
      goto LABEL_27;
    }
  }

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v63 = swift_slowAlloc();
    v12 = sub_224BF57EC(v63, v22, v9, sub_224BE64A4, 0);
    v84 = v1;

    MEMORY[0x22AA5EED0](v63, -1, -1);
    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_46;
    }

LABEL_52:
    if (*(v12 + 16))
    {
      v61 = 0;
      v64 = -1 << *(v12 + 32);
      v59 = v12 + 56;
      v60 = ~v64;
      v65 = -v64;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      else
      {
        v66 = -1;
      }

      v62 = v66 & *(v12 + 56);
      goto LABEL_57;
    }

LABEL_78:

    goto LABEL_79;
  }

LABEL_27:
  v82 = v22;
  v81 = &v81;
  MEMORY[0x28223BE20](v11);
  v83 = &v81 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v83, v36);
  v85 = 0;
  v37 = 0;
  v38 = v9 + 56;
  v39 = 1 << *(v9 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v9 + 56);
  v42 = (v39 + 63) >> 6;
  v43 = &qword_27D6F3F98[13];
  v44 = &qword_27D6F3F98[13];
  v87 = v9;
  while (v41)
  {
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_38:
    v22 = v45 | (v37 << 6);
    v48 = *(*(v9 + 48) + 8 * v22);
    v49 = *&v48[v43[477]];
    v1 = v48;
    BSDispatchQueueAssert();
    v50 = v44[484];
    swift_beginAccess();
    v51 = *&v1[v50];
    if (*(v51 + 16))
    {

      v52 = sub_224A5C3D0(5u);
      if (v53)
      {
        v54 = v44;
        v55 = v43;
        v56 = *(*(v51 + 56) + 8 * v52);

        v57 = *(v56 + 16);

        v43 = v55;
        v44 = v54;
        v9 = v87;

        if (v57)
        {
          *&v83[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          if (__OFADD__(v85++, 1))
          {
            goto LABEL_81;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v46 = v37;
  while (1)
  {
    v37 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_48;
    }

    if (v37 >= v42)
    {
      break;
    }

    v47 = *(v38 + 8 * v37);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v41 = (v47 - 1) & v47;
      goto LABEL_38;
    }
  }

  v12 = sub_224B05540(v83, v82, v85, v9);
  if ((v12 & 0xC000000000000001) == 0)
  {
    goto LABEL_52;
  }

LABEL_46:
  if (!sub_224DAF838())
  {
    goto LABEL_78;
  }

  sub_224DAF7E8();
  type metadata accessor for ChronoServicesClient();
  sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
  sub_224DAF1F8();
  v12 = v96;
  v59 = v97;
  v60 = v98;
  v61 = v99;
  v62 = v100;
LABEL_57:
  v85 = v60;
  v67 = (v60 + 64) >> 6;
  v68 = &qword_27D6F3F98[13];
  v69 = &off_27853F000;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_67:
  v75 = sub_224DAF878();
  if (v75)
  {
    *&v93 = v75;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v74 = *&v95[0];
    v72 = v61;
    v73 = v62;
    if (*&v95[0])
    {
      while (1)
      {
        if ([*&v74[v68[478]] v69[445]])
        {
          sub_224DAF758();
          swift_unknownObjectRelease();
        }

        else
        {
          v93 = 0u;
          v94 = 0u;
        }

        v95[0] = v93;
        v95[1] = v94;
        if (!*(&v94 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
        if ((swift_dynamicCast() & 1) == 0)
        {

LABEL_60:
          v61 = v72;
          v62 = v73;
          if (v12 < 0)
          {
            goto LABEL_67;
          }

          goto LABEL_61;
        }

        v87 = v73;
        v76 = v68;
        v77 = v92;
        v78 = sub_224DAEDE8();
        v79 = sub_224DAEDE8();
        [v77 activityDidUpdate:v78 payloadID:v79];
        v68 = v76;
        v69 = &off_27853F000;
        swift_unknownObjectRelease();

        v61 = v72;
        v62 = v87;
        if (v12 < 0)
        {
          goto LABEL_67;
        }

LABEL_61:
        v70 = v61;
        v71 = v62;
        v72 = v61;
        if (!v62)
        {
          while (1)
          {
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v72 >= v67)
            {
              goto LABEL_77;
            }

            v71 = *(v59 + 8 * v72);
            ++v70;
            if (v71)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
        }

LABEL_65:
        v73 = (v71 - 1) & v71;
        v74 = *(*(v12 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v71)))));
        if (!v74)
        {
          goto LABEL_77;
        }
      }

      sub_224A3311C(v95, &qword_27D6F4760, &unk_224DB3680);
      goto LABEL_60;
    }
  }

LABEL_77:
  sub_224A3B7E4();

LABEL_79:
  v80 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224BE64D8()
{
  v105 = sub_224DA9878();
  v1 = *(v105 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v105);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v80 - v7;
  v104 = sub_224DAEA68();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v80 - v14;
  v95 = sub_224DAC268();
  v15 = *(v95 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5188, &qword_224DBAEB8);
  v18 = *(*(v87 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v87);
  v86 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v93 = &v80 - v21;
  v22 = *(v0 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService), *(v0 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 24));
  v23 = sub_224DAC7A8();
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v85 = v15 + 16;
  v84 = v15 + 32;
  v102 = (v1 + 8);
  v103 = (v9 + 48);
  v99 = (v9 + 8);
  v100 = (v9 + 32);
  v88 = v15;
  v81 = (v15 + 8);
  v89 = v23;

  v29 = 0;
  v30 = MEMORY[0x277D84F98];
  v83 = v24;
  v82 = v28;
  while (1)
  {
    v97 = v30;
    if (!v27)
    {
      break;
    }

    v33 = v29;
    v34 = v90;
LABEL_12:
    v92 = v27;
    v91 = v33;
    v35 = __clz(__rbit64(v27)) | (v33 << 6);
    v36 = v89;
    v37 = v88;
    v38 = v93;
    v39 = v95;
    (*(v88 + 16))(v93, *(v89 + 48) + *(v88 + 72) * v35, v95);
    v40 = *(*(v36 + 56) + 8 * v35);
    v41 = v87;
    *(v38 + *(v87 + 48)) = v40;
    v42 = v38;
    v43 = v86;
    sub_224A3796C(v42, v86, &qword_27D6F5188, &qword_224DBAEB8);
    v96 = *(v43 + *(v41 + 48));
    (*(v37 + 32))(v94, v43, v39);

    v44 = sub_224DAC248();
    v45 = sub_224DAC258();
    sub_224DAC218();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v34, 1, v46) == 1)
    {
      sub_224A3311C(v34, &qword_27D6F56C0, &unk_224DB3580);
      v48 = 0;
    }

    else
    {
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0);
      sub_224DAEFA8();
      (*(v47 + 8))(v34, v46);
      v48 = sub_224DAEDE8();
    }

    v49 = v97;
    v98 = [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v44 metrics:v45 hostIdentifier:v48];

    v50 = v96;
    v51 = *(v96 + 16);
    if (v51)
    {
      v109 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v52 = v50 + 32;
      do
      {
        sub_224A3317C(v52, &v108);
        sub_224A3317C(&v108, v106);
        __swift_project_boxed_opaque_existential_1(v106, v107);
        sub_224DAE788();
        v56 = v104;
        if ((*v103)(v8, 1, v104) == 1)
        {
          sub_224A3311C(v8, &unk_27D6F50E8, &qword_224DBAE38);
          v53 = objc_allocWithZone(MEMORY[0x277CFA328]);
          __swift_project_boxed_opaque_existential_1(v106, v107);
          sub_224DAE778();
          v54 = sub_224DA9778();
          (*v102)(v4, v105);
          [v53 initWithDate_];
        }

        else
        {
          v57 = v101;
          (*v100)(v101, v8, v56);
          v58 = objc_allocWithZone(MEMORY[0x277CFA328]);
          __swift_project_boxed_opaque_existential_1(v106, v107);
          sub_224DAE778();
          v59 = sub_224DA9778();
          (*v102)(v4, v105);
          sub_224DAEA48();
          v61 = v60;
          sub_224DAEA58();
          [v58 initWithDate:v59 score:v61 duration:v62];

          (*v99)(v57, v56);
        }

        __swift_destroy_boxed_opaque_existential_1(&v108);
        __swift_destroy_boxed_opaque_existential_1(v106);
        sub_224DAF9B8();
        v55 = *(v109 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v52 += 40;
        --v51;
      }

      while (v51);

      v63 = v109;
      v49 = v97;
    }

    else
    {

      v63 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v49;
    v65 = sub_224B0BB34(v98);
    v67 = *(v49 + 16);
    v68 = (v66 & 1) == 0;
    v69 = __OFADD__(v67, v68);
    v70 = v67 + v68;
    if (v69)
    {
      goto LABEL_34;
    }

    v71 = v66;
    if (*(v49 + 24) >= v70)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = v65;
        sub_224B27BC4();
        v65 = v75;
      }
    }

    else
    {
      sub_224B13898(v70, isUniquelyReferenced_nonNull_native);
      v65 = sub_224B0BB34(v98);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_36;
      }
    }

    v24 = v83;
    v28 = v82;
    v27 = (v92 - 1) & v92;
    v30 = v108;
    if (v71)
    {
      v31 = v108[7];
      v32 = *(v31 + 8 * v65);
      *(v31 + 8 * v65) = v63;

      (*v81)(v94, v95);
      sub_224A3311C(v93, &qword_27D6F5188, &qword_224DBAEB8);
    }

    else
    {
      v108[(v65 >> 6) + 8] |= 1 << v65;
      *(v30[6] + 8 * v65) = v98;
      *(v30[7] + 8 * v65) = v63;
      (*v81)(v94, v95);
      sub_224A3311C(v93, &qword_27D6F5188, &qword_224DBAEB8);
      v73 = v30[2];
      v69 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v69)
      {
        goto LABEL_35;
      }

      v30[2] = v74;
    }

    v29 = v91;
  }

  v34 = v90;
  while (1)
  {
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v33 >= v28)
    {

      v76 = objc_allocWithZone(MEMORY[0x277CFA330]);
      sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5190, &qword_224DBAEC0);
      sub_224A3B758(&qword_27D6F5198, &unk_281350B10, 0x277CFA3D8);
      v77 = sub_224DAECC8();

      v78 = [v76 initWithEntries_];

      return v78;
    }

    v27 = *(v24 + 8 * v33);
    ++v29;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BE708C(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 serviceQuality];
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  v8 = [v6 interface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v9;
  v25 = sub_224BFDCF0;
  v26 = v10;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_266;
  v11 = _Block_copy(&v21);
  v12 = a2;

  [a1 setActivationHandler_];
  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v25 = sub_224BFDCF8;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_276;
  v16 = _Block_copy(&v21);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v25 = sub_224BFDD00;
  v26 = v19;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_284;
  v20 = _Block_copy(&v21);

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_224BE7404(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue);
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E50);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono widget service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_224BE815C();
  }
}

void sub_224BE7608(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue);
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364E50);
    v6 = a1;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = [v6 remoteProcess];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = sub_224DAEE18();
        v16 = v15;
      }

      else
      {
        v16 = 0x8000000224DC7B00;
        v14 = 0xD00000000000001ALL;
      }

      v17 = sub_224A33F74(v14, v16, &v23);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v7, v8, "Chrono widget service connection from %{public}s interrupted", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    [v6 invalidate];
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_224BE8240();
      v20 = *&v3[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02474(v19);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));
    }
  }
}

void sub_224BE78BC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue);
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281364E50);
    v6 = a1;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = [v6 remoteProcess];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = sub_224DAEE18();
        v16 = v15;
      }

      else
      {
        v16 = 0x8000000224DC7B00;
        v14 = 0xD00000000000001ALL;
      }

      v17 = sub_224A33F74(v14, v16, &v23);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v7, v8, "Chrono widget service connection from %{public}s invalidated", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_224BE8240();
      v20 = *&v3[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      swift_beginAccess();
      v22 = sub_224B02474(v19);
      swift_endAccess();

      os_unfair_lock_unlock(*(v20 + 16));
    }
  }
}

uint64_t sub_224BE7BF4()
{
  v10 = sub_224DAF3C8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_224DAB848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v11 = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_224DAF418();
  qword_27D6F4DB0 = result;
  return result;
}

uint64_t sub_224BE7E7C()
{
  *v0;
  *v0;
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224BE7F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224BF66C0();
  *a2 = result;
  return result;
}

void sub_224BE7FB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726F74696ELL;
  v4 = 0x6F4D656369766564;
  v5 = 0x8000000224DC45E0;
  v6 = 0xE800000000000000;
  v7 = 0x736C6F72746E6F63;
  if (v2 != 4)
  {
    v7 = 0x6974697669746361;
    v6 = 0xEA00000000007365;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xEA0000000000736ELL;
  v9 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v9 = 0x6F69736E65747865;
  }

  else
  {
    v8 = 0x8000000224DC45C0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_224BE808C()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0x736C6F72746E6F63;
  if (v1 != 4)
  {
    v3 = 0x6974697669746361;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 1)
  {
    v4 = 0x6F69736E65747865;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_224BE815C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if ([*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    return sub_224A3311C(v5, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
  result = swift_dynamicCast();
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_224BE8240()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = v31 - v3;
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated) = 1;
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetHostIdentities;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v32 = (v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService);
  v11 = (v8 + 63) >> 6;
  v31[2] = v1 + 16;
  v34 = v1;
  v31[0] = v0;
  v31[1] = v1 + 8;
  v36 = v6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v35;
      v18 = v33;
      v17 = v34;
      (*(v34 + 16))(v33, *(v36 + 48) + *(v34 + 72) * (v15 | (v14 << 6)), v35);
      v20 = v32[3];
      v19 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v20);
      (*(*(v19 + 8) + 72))(v18, v20);
      result = (*(v17 + 8))(v18, v16);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  v21 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  v22 = v31[0];
  swift_beginAccess();
  v23 = *(v22 + v21);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v26; result = [*(*(v23 + 56) + ((v29 << 9) | (8 * v30))) invalidate])
  {
    v29 = i;
LABEL_19:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      i = v29;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_224BE8550(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_224A5C3D0(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      v9 = *(v8 + 16);

      return v9 != 0;
    }
  }

  return 0;
}

id sub_224BE8638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChronoServicesClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224BE88C0()
{
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  v0 = qword_2813651B0;
  BSDispatchQueueAssertMain();
  v1 = v0[10];
  sub_224CC71CC();
  v2 = v0[72];
  sub_224DAD848();
  v3 = v0[73];
  sub_224DAD848();
  v4 = v0[71];
  return sub_224DAD4F8();
}

uint64_t sub_224BE89EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  sub_224A3796C(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_stuckPairedRelationshipRepairer, v3, &qword_27D6F5180, &unk_224DBAEA8);
  if (!v4)
  {
    return sub_224A3311C(v3, &qword_27D6F5180, &unk_224DBAEA8);
  }

  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_224DAAA58();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_224BE8AF0(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_224DAF9E8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_224A33E0C(i, v6);
    sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_224DAF9B8();
    v4 = *(v7 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_224BE8BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_224A33E0C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_224A3DFD8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_224BE8DA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if ([objc_opt_self() isPreflightFeatureEnabled])
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281365168);
    oslog = sub_224DAB228();
    v7 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v7, "Ignoring request to discover descriptors because device has PDU enabled", v8, 2u);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }
  }

  else
  {
    sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_224DAF938();

    MEMORY[0x22AA5D210](a1, a2);
    sub_224DACA98();

    __swift_destroy_boxed_opaque_existential_1(v14);
    if (qword_281352038 != -1)
    {
      swift_once();
    }

    v9 = *(qword_2813651B0 + 200);
    if (v9)
    {
      swift_beginAccess();
      sub_224A3317C(v9 + 16, v14);
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v12 = *(v11 + 40);

      v12(a1, a2, v10, v11);

      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }
}

uint64_t sub_224BE91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  v12 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  sub_224A3317C(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_224DACAA8();

  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224BE9398(void *a1, uint64_t *a2)
{
  v5 = sub_224DACB98();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();
  v15 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider], *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24]);
  result = sub_224DAA158();
  if (result)
  {
    v57 = a2;
    v59 = v10;
    v17 = [a1 extensionBundleIdentifier];
    sub_224DAEE18();

    sub_224DA9FF8();
    sub_224DAA278();
    v18 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService], *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24]);
    v58 = v13;
    sub_224DAC6C8();
    if (v65)
    {
      sub_224A36F98(&v64, v66);
      sub_224DAE558();
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      sub_224DAE338();
      v19 = [a1 kind];
      sub_224DAEE18();

      v20 = sub_224DAE548();
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v21 = sub_224DAB258();
      __swift_project_value_buffer(v21, qword_281364E50);
      v22 = a1;
      v23 = v20;
      v24 = v2;
      v25 = sub_224DAB228();
      v26 = sub_224DAF2A8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543874;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 1026;
        v29 = v23;
        v30 = [v22 allowCostOverride];

        *(v27 + 14) = v30;
        *(v27 + 18) = 2114;
        BSDispatchQueueAssert();
        v31 = [*&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
        *(v27 + 20) = v31;
        v28[1] = v31;
        _os_log_impl(&dword_224A2F000, v25, v26, "Received request to reload %{public}@ - (allowCostOverride: %{BOOL,public}d) from %{public}@", v27, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v28, -1, -1);
        MEMORY[0x22AA5EED0](v27, -1, -1);
      }

      else
      {

        v25 = v22;
      }

      v46 = *&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32];
      __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
      v47 = swift_allocObject();
      v48 = v23;
      BSDispatchQueueAssert();
      v47[2] = [*&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
      v49 = [v22 reason];
      v50 = sub_224DAEE18();
      v52 = v51;

      v47[3] = v50;
      v47[4] = v52;
      v53 = v60;
      v54 = v61;
      *v60 = v47;
      v55 = v62;
      (*(v54 + 104))(v53, *MEMORY[0x277CF9B90], v62);
      [v22 allowCostOverride];
      sub_224DAC768();

      (*(v54 + 8))(v53, v55);
      (*(v63 + 8))(v58, v59);
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    else
    {
      sub_224A3311C(&v64, &unk_27D6F4700, &unk_224DB3A10);
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v32 = sub_224DAB258();
      __swift_project_value_buffer(v32, qword_281364E50);
      v33 = a1;
      v34 = sub_224DAB228();
      v35 = sub_224DAF288();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v66[0] = v37;
        *v36 = 136446210;
        v38 = [v33 extensionBundleIdentifier];
        v39 = sub_224DAEE18();
        v41 = v40;

        v42 = sub_224A33F74(v39, v41, v66);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_224A2F000, v34, v35, "[ChronoServer] Unable to reload widget for extension bundle identifier [%{public}s] because it is not a valid widget extension identity.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x22AA5EED0](v37, -1, -1);
        MEMORY[0x22AA5EED0](v36, -1, -1);
      }

      v44 = v58;
      v43 = v59;
      v45 = v57;
      if (v57)
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        *v45 = sub_224CBC42C(0x18u, 0, 0);
      }

      return (*(v63 + 8))(v44, v43);
    }
  }

  else if (a2)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    result = sub_224CBC42C(0xAu, 0, 0);
    *a2 = result;
  }

  return result;
}

uint64_t sub_224BE9BB8()
{
  v53[5] = *MEMORY[0x277D85DE8];
  v1 = sub_224DAE4F8();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_224DAB728();
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v45);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v17 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281364E50);
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_224A33F74(0xD00000000000002BLL, 0x8000000224DCA770, v53);
      _os_log_impl(&dword_224A2F000, v29, v30, "%{public}s rejected because not yet unlocked from boot.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    goto LABEL_17;
  }

  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224A3317C(qword_2813651B0 + 16, v53);

  sub_224DA9FF8();
  sub_224DAA278();
  v18 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  sub_224DAC6C8();
  if (!v51)
  {
    sub_224A3311C(&v50, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281364E50);
    v34 = sub_224DAB228();
    v35 = sub_224DAF288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_224A33F74(0xD00000000000002BLL, 0x8000000224DCA770, v52);
      _os_log_impl(&dword_224A2F000, v34, v35, "%{public}s rejected because extension not found.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x22AA5EED0](v37, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    (*(v48 + 8))(v15, v49);
    __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_17:
    result = 0;
    goto LABEL_20;
  }

  sub_224A36F98(&v50, v52);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v19 = sub_224DAE338();
  sub_224DADA58();

  __swift_project_boxed_opaque_existential_1(&v50, v51);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(&v50);
  v20 = v43;
  v21 = v45;
  (*(v43 + 16))(v7, v9, v45);
  v22 = v44;
  sub_224DAE4D8();
  v23 = objc_opt_self();
  v24 = sub_224DAE4C8();
  *&v50 = 0;
  v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v50];

  v26 = v50;
  if (v25)
  {
    v27 = sub_224DA96D8();
  }

  else
  {
    v39 = v26;
    v40 = sub_224DA9528();

    swift_willThrow();
    v27 = 0;
  }

  (*(v46 + 8))(v22, v47);
  (*(v20 + 8))(v9, v21);
  (*(v48 + 8))(v15, v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  result = v27;
LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BEA3D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v46 - v3;
  v53 = sub_224DAA428();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v48 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  v21 = v11[2];
  v21(v18, v20, v10);
  v52 = v9;
  sub_224DAA228();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364E50);
  v49 = v20;
  v21(v15, v20, v10);
  v23 = v0;
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57[0] = v47;
    *v26 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v27 = sub_224DAFD28();
    v29 = v28;
    v30 = v15;
    v31 = v11[1];
    v31(v30, v10);
    v32 = sub_224A33F74(v27, v29, v57);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2114;
    BSDispatchQueueAssert();
    v33 = [*&v23[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v26 + 14) = v33;
    v34 = v46;
    *v46 = v33;
    _os_log_impl(&dword_224A2F000, v24, v25, "Removing widget host with identifier %{public}s for process %{public}@", v26, 0x16u);
    sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    v35 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  else
  {

    v36 = v15;
    v31 = v11[1];
    v31(v36, v10);
  }

  v37 = *&v23[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
  v38 = *&v23[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
  __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService], v37);
  v57[0] = 0;
  v40 = v50;
  v39 = v51;
  v41 = v53;
  (*(v51 + 104))(v50, *MEMORY[0x277CFA038], v53);
  v42 = *(*(v38 + 8) + 56);
  v43 = v52;
  v42(v57, v40, v52, v37);
  (*(v39 + 8))(v40, v41);
  swift_beginAccess();
  v44 = v56;
  sub_224B024C8(v43, v56);
  sub_224A3311C(v44, &qword_27D6F56C0, &unk_224DB3580);
  swift_endAccess();
  (*(v54 + 8))(v43, v55);
  return (v31)(v49, v10);
}

uint64_t sub_224BEA9FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_224DAEE18();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_224BEAA68(void *a1, void *a2)
{
  v74 = a2;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v61 - v5;
  v6 = sub_224DAA428();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v77 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v73 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v66 = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281364E50);
  v71 = v18[2];
  v71(v24, v26, v17);
  v28 = v2;
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  v31 = os_log_type_enabled(v29, v30);
  v80 = v17;
  v75 = v18;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v81[0] = v65;
    *v32 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v63 = v30;
    v33 = v28;
    v34 = sub_224DAFD28();
    v62 = v29;
    v35 = v26;
    v36 = v7;
    v37 = v6;
    v39 = v38;
    v72 = v18[1];
    v72(v24, v80);
    v40 = v34;
    v28 = v33;
    v41 = sub_224A33F74(v40, v39, v81);
    v6 = v37;
    v7 = v36;
    v26 = v35;

    *(v32 + 4) = v41;
    *(v32 + 12) = 2114;
    BSDispatchQueueAssert();
    v42 = [*&v33[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v32 + 14) = v42;
    v43 = v64;
    *v64 = v42;
    v44 = v62;
    _os_log_impl(&dword_224A2F000, v62, v63, "Widget configuration changed for widget host with identifier %{public}s from process %{public}@", v32, 0x16u);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    v45 = v65;
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    v46 = v32;
    v17 = v80;
    MEMORY[0x22AA5EED0](v46, -1, -1);
  }

  else
  {

    v72 = v18[1];
    v72(v24, v17);
  }

  v71(v73, v26, v17);
  v47 = v77;
  sub_224DAA228();
  [v74 unsignedIntegerValue];
  v48 = v76;
  sub_224DAA418();
  if ((*(v7 + 48))(v48, 1, v6) == 1)
  {
    (*(v78 + 8))(v47, v79);
    v72(v26, v17);
    return sub_224A3311C(v48, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v50 = v70;
    (*(v7 + 32))(v70, v48, v6);
    v74 = v6;
    v51 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
    v52 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
    __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService], v51);
    v81[0] = v69;
    v53 = *(v52 + 8);
    v76 = v26;
    v54 = *(v53 + 56);
    v55 = v69;
    v54(v81, v50, v47, v51, v53);

    v57 = v78;
    v56 = v79;
    v58 = v68;
    (*(v78 + 16))(v68, v47, v79);
    swift_beginAccess();
    v59 = v67;
    sub_224A67790(v67, v58);
    v60 = *(v57 + 8);
    v60(v59, v56);
    swift_endAccess();
    (*(v7 + 8))(v50, v74);
    v60(v47, v56);
    return (v72)(v76, v80);
  }
}

uint64_t sub_224BEB284(void *a1)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52[-v4];
  v6 = sub_224DAA428();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v52[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v60 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v52[-v20];
  v57 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364E50);
  v23 = v13[2];
  v61 = v21;
  v23(v19, v21, v12);
  v24 = v1;
  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();

  v27 = os_log_type_enabled(v25, v26);
  v62 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v56 = v6;
    v29 = v28;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v68 = v55;
    *v29 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0);
    v53 = v26;
    v30 = sub_224DAFD28();
    v31 = v12;
    v32 = v23;
    v33 = v24;
    v34 = v5;
    v36 = v35;
    v37 = v19;
    v38 = v31;
    v59 = v13[1];
    v59(v37, v31);
    v39 = sub_224A33F74(v30, v36, &v68);
    v5 = v34;
    v24 = v33;
    v23 = v32;

    *(v29 + 4) = v39;
    *(v29 + 12) = 2114;
    BSDispatchQueueAssert();
    v40 = [*&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v29 + 14) = v40;
    v41 = v54;
    *v54 = v40;
    _os_log_impl(&dword_224A2F000, v25, v53, "Widget activation state changed for widget host with identifier %{public}s from process %{public}@", v29, 0x16u);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    v42 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    v43 = v29;
    v6 = v56;
    MEMORY[0x22AA5EED0](v43, -1, -1);

    v12 = v38;
  }

  else
  {

    v59 = v13[1];
    v59(v19, v12);
  }

  v44 = v61;
  v23(v60, v61, v12);
  v45 = v63;
  sub_224DAA228();
  [v64 unsignedIntegerValue];
  sub_224DAA418();
  v46 = v67;
  if ((*(v67 + 48))(v5, 1, v6) == 1)
  {
    (*(v65 + 8))(v45, v66);
    v59(v44, v12);
    return sub_224A3311C(v5, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v48 = v58;
    (*(v46 + 32))(v58, v5, v6);
    v49 = &v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService];
    v50 = *&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
    v51 = *&v24[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
    __swift_project_boxed_opaque_existential_1(v49, v50);
    (*(*(v51 + 8) + 64))(v48, v45, v50);
    (*(v46 + 8))(v48, v6);
    (*(v65 + 8))(v45, v66);
    return (v59)(v44, v12);
  }
}

uint64_t sub_224BEB984(uint64_t a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5160, &qword_224DBAE90);
  v2 = *(*(v56 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v56);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v52 - v6;
  MEMORY[0x28223BE20](v5);
  v63 = &v52 - v7;
  v64 = sub_224A876C0(MEMORY[0x277D84F90]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v57 = a1;

  v13 = 0;
  v53 = v12;
  v54 = a1 + 64;
  while (v11)
  {
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = v57;
    v19 = *(v57 + 48);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    v21 = *(v20 - 8);
    v22 = v63;
    (*(v21 + 16))(v63, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v25 = v55;
    v24 = v56;
    *(v22 + *(v56 + 48)) = v23;
    sub_224A3796C(v22, v25, &unk_27D6F5160, &qword_224DBAE90);
    v26 = *(v25 + *(v24 + 48));
    v27 = v23;

    v61 = sub_224DA9FE8();
    v29 = v28;
    v58 = *(v21 + 8);
    v59 = v20;
    v58(v25, v20);
    v30 = v62;
    v31 = v29;
    sub_224A3796C(v22, v62, &unk_27D6F5160, &qword_224DBAE90);
    v60 = *(v30 + *(v24 + 48));
    v32 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v32;
    v34 = v61;
    v36 = sub_224A3A40C(v61, v31);
    v37 = *(v32 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_24;
    }

    v40 = v35;
    if (*(v32 + 24) >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v35)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_224B28008();
        if (v40)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_224A87A6C(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_224A3A40C(v34, v31);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_26;
      }

      v36 = v41;
      if (v40)
      {
LABEL_4:

        v64 = v65;
        v14 = v65[7];
        v15 = *(v14 + 8 * v36);
        *(v14 + 8 * v36) = v60;

        sub_224A3311C(v63, &unk_27D6F5160, &qword_224DBAE90);
        goto LABEL_5;
      }
    }

    v43 = v65;
    v65[(v36 >> 6) + 8] |= 1 << v36;
    v44 = (v43[6] + 16 * v36);
    *v44 = v34;
    v44[1] = v31;
    *(v43[7] + 8 * v36) = v60;
    sub_224A3311C(v63, &unk_27D6F5160, &qword_224DBAE90);
    v45 = v43[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_25;
    }

    v64 = v43;
    v43[2] = v47;
LABEL_5:
    v11 &= v11 - 1;
    v58(v62, v59);
    v12 = v53;
    v8 = v54;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
      v49 = sub_224DAECC8();

      v50 = [v48 initWithConfigurationsByHost_];

      return v50;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

void sub_224BEBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      swift_beginAccess();

      sub_224B0279C();
      swift_endAccess();

      swift_beginAccess();
      v12 = *(a4 + 16);
      *(a4 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a5 + 16) == 1)
    {
      if (qword_281351668 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365078);
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "Widget configuration request timed out - notifying!", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v17 = sub_224CBC42C(0xCu, 0, 0);
      a6(0, v17);
    }
  }
}

void sub_224BEC064(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v86 = (v68 - v11);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v12 = *(*(v80 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v80);
  v84 = (v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v81 = v68 - v16;
  MEMORY[0x28223BE20](v15);
  v85 = (v68 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = (v68 - v21);
  if (qword_281351668 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281365078);
  v78 = v19[2];
  v79 = v19 + 2;
  v78(v22, a1, v18);
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v69 = a4;
    v27 = v26;
    v76 = swift_slowAlloc();
    v88[0] = v76;
    *v27 = 136446210;
    sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
    v28 = sub_224DAFD28();
    v82 = isUniquelyReferenced_nonNull_native;
    v29 = a3;
    v30 = a5;
    v32 = v31;
    v83 = v19[1];
    v83(v22, v18);
    v33 = sub_224A33F74(v28, v32, v88);
    a5 = v30;
    a3 = v29;
    isUniquelyReferenced_nonNull_native = v82;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_224A2F000, v24, v25, "Widget configuration received from %{public}s- notifying!", v27, 0xCu);
    v34 = v76;
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    v35 = v27;
    a4 = v69;
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  else
  {

    v83 = v19[1];
    v83(v22, v18);
  }

  swift_beginAccess();
  *(isUniquelyReferenced_nonNull_native + 16) = 0;
  v36 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24);
  v37 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService), v36);
  (*(v37 + 32))(v88, 768, v36, v37);
  if (!v88[5])
  {
    sub_224A3311C(v88, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_29:
    v39 = MEMORY[0x277D84F98];
LABEL_30:
    sub_224A3B79C(0, &qword_281350888, 0x277CFA368);
    v67 = sub_224BEB984(v39);
    a4(v67, 0);

    return;
  }

  a1 = v88;
  v38 = sub_224A86CAC();
  sub_224A699F0(v88);
  if (!v38)
  {
    goto LABEL_29;
  }

  v68[1] = a5;
  v69 = a4;
  v39 = sub_224DA1DE8(MEMORY[0x277D84F90]);
  a5 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v22 = ((v40 + 63) >> 6);
  v82 = v19 + 1;
  v68[2] = v75 + 16;
  v73 = (v75 + 8);
  v76 = v38;

  a3 = 0;
  v74 = a5;
  v72 = v22;
  v71 = v18;
  for (i = v19; ; v19 = i)
  {
    if (!v42)
    {
      while (1)
      {
        v45 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v45 >= v22)
        {

          a4 = v69;
          goto LABEL_30;
        }

        v42 = *(a5 + 8 * v45);
        ++a3;
        if (v42)
        {
          a3 = v45;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_17:
    v46 = __clz(__rbit64(v42)) | (a3 << 6);
    v47 = v76;
    v48 = v76[6] + v19[9] * v46;
    v49 = v85;
    v78(v85, v48, v18);
    v50 = *(v47[7] + 8 * v46);
    a5 = v80;
    v51 = v81;
    *(v49 + *(v80 + 48)) = v50;
    v22 = &qword_27D6F38A8;
    sub_224A3796C(v49, v51, &qword_27D6F38A8, &unk_224DB4650);
    v52 = *(v51 + *(a5 + 48));
    v53 = v50;

    a4 = v86;
    sub_224DAA238();
    v83(v51, v18);
    v54 = v84;
    sub_224A3796C(v49, v84, &qword_27D6F38A8, &unk_224DB4650);
    v19 = *(v54 + *(a5 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v39;
    a1 = v39;
    v55 = sub_224B0BB84(a4);
    v57 = v39[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_32;
    }

    v61 = v56;
    if (v39[3] < v60)
    {
      sub_224B13FB0(v60, isUniquelyReferenced_nonNull_native);
      a1 = v87;
      v55 = sub_224B0BB84(v86);
      a5 = v74;
      v22 = v72;
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      v39 = v87;
      if (v61)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    a5 = v74;
    v22 = v72;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    a1 = &v87;
    v66 = v55;
    sub_224B2801C();
    v55 = v66;
    v39 = v87;
    if (v61)
    {
LABEL_10:
      v43 = v39[7];
      v44 = *(v43 + 8 * v55);
      *(v43 + 8 * v55) = v19;

      (*v73)(v86, v77);
      sub_224A3311C(v85, &qword_27D6F38A8, &unk_224DB4650);
      goto LABEL_11;
    }

LABEL_23:
    v39[(v55 >> 6) + 8] |= 1 << v55;
    isUniquelyReferenced_nonNull_native = v75;
    a1 = v55;
    a4 = v86;
    v63 = v77;
    (*(v75 + 16))(v39[6] + *(v75 + 72) * v55, v86, v77);
    *(v39[7] + 8 * a1) = v19;
    (*(isUniquelyReferenced_nonNull_native + 8))(a4, v63);
    sub_224A3311C(v85, &qword_27D6F38A8, &unk_224DB4650);
    v64 = v39[2];
    v59 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v59)
    {
      break;
    }

    v39[2] = v65;
LABEL_11:
    v42 &= v42 - 1;
    v18 = v71;
    v83(v84, v71);
  }

  __break(1u);
LABEL_35:
  sub_224DAFDD8();
  __break(1u);
}

BOOL sub_224BEC8F8(unsigned __int8 a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  v4 = *(a2 + 16);
  if (v4 < a1)
  {
    *(a2 + 16) = a1;
  }

  v5 = v4 < a1;
  os_unfair_lock_unlock((a2 + 24));
  return v5;
}

void sub_224BEC94C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void, void, unint64_t, id), uint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  if (a2(1))
  {
    if (a1)
    {
      (*(v11 + 16))(v17, a4, v10);
      v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      (*(v11 + 32))(v22 + v20, v17, v10);
      v23 = (v22 + v21);
      v24 = v46;
      *v23 = v45;
      v23[1] = v24;
      *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;
      aBlock[4] = sub_224BFDB78;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BED254;
      aBlock[3] = &block_descriptor_208;
      v25 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();

      [a1 getAppIntentsXPCListenerEndpointWithCompletion_];
      _Block_release(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v35 = sub_224DAB258();
      __swift_project_value_buffer(v35, qword_281364E50);
      (*(v11 + 16))(v19, a4, v10);
      v36 = sub_224DAB228();
      v37 = sub_224DAF2A8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136446210;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
        v40 = sub_224DAFD28();
        v42 = v41;
        (*(v11 + 8))(v19, v10);
        v43 = sub_224A33F74(v40, v42, aBlock);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_224A2F000, v36, v37, "Unable to make session for %{public}s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x22AA5EED0](v39, -1, -1);
        MEMORY[0x22AA5EED0](v38, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v19, v10);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v44 = sub_224CBC42C(0, 0, 0);
      v45(0, 0, 0xF000000000000000, v44);
    }
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364E50);
    (*(v11 + 16))(v14, a4, v10);
    v27 = sub_224DAB228();
    v28 = sub_224DAF2A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
      v31 = sub_224DAFD28();
      v33 = v32;
      (*(v11 + 8))(v14, v10);
      v34 = sub_224A33F74(v31, v33, aBlock);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_224A2F000, v27, v28, "Completion handler for getAppIntentsXPCListener already called for %{public}s while trying to make session", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

void sub_224BECF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, void *a10)
{
  v31 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v32 = *(v16 - 8);
  v33 = v16;
  v17 = *(v32 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  if (a5(2))
  {
    a8(a1, a2, a3, a4);

    [a10 invalidate];
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364E50);
    v21 = v32;
    v22 = v33;
    (*(v32 + 16))(v19, v31, v33);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136446210;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
      v27 = sub_224DAFD28();
      v29 = v28;
      (*(v21 + 8))(v19, v22);
      v30 = sub_224A33F74(v27, v29, &v34);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_224A2F000, v23, v24, "Completion handler for getAppIntentsXPCListener already called for %{public}s while trying to get intents", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v19, v22);
    }
  }
}

uint64_t sub_224BED254(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {

    v9 = a2;
    v10 = v5;
    v5 = sub_224DA96D8();
    v12 = v11;
  }

  else
  {

    v13 = a2;
    v12 = 0xF000000000000000;
  }

  v14 = a4;
  v8(a2, v5, v12, a4);

  sub_224AC1D9C(v5, v12);
}

void sub_224BED334(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v8 = 0;
    if (a4)
    {
LABEL_3:
      v9 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_224DA96B8();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

void sub_224BED3DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_remoteActivityLaunchService, &v27, &qword_27D6F5110, &qword_224DBAE50);
  if (v28)
  {
    sub_224A36F98(&v27, v29);
    sub_224DA9888();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_224A3311C(v12, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281364E50);
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_224A2F000, v19, v20, "Relationship ID is invalid, can't launch remote activity", v21, 2u);
        MEMORY[0x22AA5EED0](v21, -1, -1);
      }
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      v26 = *__swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_224D749E4(a1, a2, v17, a5);
      (*(v14 + 8))(v17, v13);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_224A3311C(&v27, &qword_27D6F5110, &qword_224DBAE50);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281364E50);
    v23 = sub_224DAB228();
    v24 = sub_224DAF288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_224A2F000, v23, v24, "Remote Activity Launch Service not available", v25, 2u);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }
  }
}

void sub_224BED8F0(uint64_t a1, uint64_t a2, void (*a3)(id, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = MEMORY[0x277D84F98];
    v6 = Strong;
    v7 = *__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService), *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService + 24));

    sub_224C5C794(v7, a2, &v11);

    v8 = objc_opt_self();
    sub_224D9F53C(v11);
    v9 = sub_224DAECC8();

    v10 = [v8 boxedValue_];

    a3(v10, 0);
  }
}

uint64_t sub_224BEDA38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v85 = a6;
  v86 = a1;
  v78 = a3;
  v8 = sub_224DAD738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50F8, &qword_224DBAE40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = (&v75 - v20);
  v21 = *(a5 + 64);
  v88 = a5 + 64;
  v22 = 1 << *(a5 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v76 = (v22 + 63) >> 6;
  v79 = v9 + 16;
  v93 = (v9 + 32);
  v81 = v9;
  v82 = a5;
  v84 = (v9 + 8);

  v25 = 0;
  v89 = v19;
  v90 = v13;
  v77 = a2;
  v92 = v8;
  v26 = v88;
  if (v24)
  {
    while (1)
    {
      v27 = a2;
      v28 = v25;
LABEL_13:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v31 | (v28 << 6);
      v33 = v81;
      v34 = (*(v82 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v37 = v80;
      v38 = v92;
      (*(v81 + 16))(v80, *(v82 + 56) + *(v81 + 72) * v32, v92);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
      v40 = *(v39 + 48);
      v41 = v89;
      *v89 = v36;
      *(v41 + 1) = v35;
      v42 = v37;
      v19 = v41;
      (*(v33 + 32))(&v41[v40], v42, v38);
      (*(*(v39 - 8) + 56))(v19, 0, 1, v39);

      v13 = v90;
      a2 = v27;
LABEL_14:
      v43 = v87;
      sub_224BFDA48(v19, v87);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
      {
      }

      v45 = v43[1];
      v91 = *v43;
      v46 = v43 + *(v44 + 48);
      v47 = v92;
      (*v93)(v13, v46, v92);
      v96 = v86;
      v97 = a2;

      v94 = sub_224DAD6F8();
      v95 = v48;
      sub_224AFC154();
      v49 = sub_224DAF748();

      if (v49)
      {
        sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
        v83 = sub_224DAF688();
        v50 = v85;
        v51 = *v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = *v50;
        v53 = v96;
        *v50 = 0x8000000000000000;
        v54 = v45;
        v55 = v91;
        v56 = v54;
        v58 = sub_224A3A40C(v91, v54);
        v59 = v53[2];
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_33;
        }

        v62 = v57;
        if (v53[3] >= v61)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B282F0();
          }
        }

        else
        {
          sub_224B1473C(v61, isUniquelyReferenced_nonNull_native);
          v63 = sub_224A3A40C(v55, v56);
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_35;
          }

          v58 = v63;
        }

        v13 = v90;
        v65 = v96;
        if (v62)
        {
          v66 = v96[7];
          v67 = *(v66 + 8 * v58);
          *(v66 + 8 * v58) = v83;
        }

        else
        {
          v96[(v58 >> 6) + 8] |= 1 << v58;
          v68 = (v65[6] + 16 * v58);
          *v68 = v55;
          v68[1] = v56;
          *(v65[7] + 8 * v58) = v83;
          v69 = v65[2];
          v70 = __OFADD__(v69, 1);
          v71 = v69 + 1;
          if (v70)
          {
            goto LABEL_34;
          }

          v65[2] = v71;
        }

        v72 = v84;
        *v85 = v65;
        (*v72)(v13, v47);
        a2 = v77;
        v19 = v89;
      }

      else
      {
        (*v84)(v13, v47);
      }

      v26 = v88;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v76 <= v25 + 1)
    {
      v29 = v25 + 1;
    }

    else
    {
      v29 = v76;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v28 >= v76)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5100, &qword_224DBAE48);
        (*(*(v73 - 8) + 56))(v19, 1, 1, v73);
        v24 = 0;
        v25 = v30;
        goto LABEL_14;
      }

      v24 = *(v26 + 8 * v28);
      ++v25;
      if (v24)
      {
        v27 = a2;
        v25 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_224DAFDD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_224BEE068(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, id), uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char *a10)
{
  v145 = a8;
  v146 = a7;
  v150 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v138 = &v116 - v16;
  v133 = sub_224DAF3B8();
  v132 = *(v133 - 8);
  v17 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5098, &qword_224DBAE18);
  v135 = *(v136 - 8);
  v19 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v116 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50A0, &unk_224DBAE20);
  v139 = *(v140 - 8);
  v21 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v147 = &v116 - v22;
  v153 = sub_224DAC268();
  v148 = *(v153 - 8);
  v23 = *(v148 + 64);
  v24 = MEMORY[0x28223BE20](v153);
  v152 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v116 - v26;
  v28 = sub_224DAD738();
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v34 = result;
  v142 = a4;

  v141 = a2;
  v149 = a3;
  sub_224DAD718();
  v151 = v34;
  v35 = __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService], *&v34[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService + 24]);
  sub_224DAD6F8();
  v36 = *(*v35 + 24);
  v37 = sub_224DAEDE8();

  v38 = [v36 decrementBudgetForWidgetID:v37 by:1.0];

  if (!v38)
  {
    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v46 = sub_224DAB258();
    __swift_project_value_buffer(v46, qword_281364CE8);
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Budget not found, proceeding with prewarming.";
      goto LABEL_12;
    }

LABEL_13:
    v125 = v32;
    v126 = v29;
    v127 = v28;
    goto LABEL_14;
  }

  v39 = [v38 successful];

  v40 = qword_2813513E8 == -1;
  if (v39)
  {
    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v41 = sub_224DAB258();
    __swift_project_value_buffer(v41, qword_281364CE8);
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Budget was available, proceeding with prewarming.";
LABEL_12:
      _os_log_impl(&dword_224A2F000, v42, v43, v45, v44, 2u);
      v125 = v32;
      v126 = v29;
      v127 = v28;
      MEMORY[0x22AA5EED0](v44, -1, -1);
LABEL_14:
      v124 = a10;
      v123 = a9;

      v47 = a6;
      v48 = v146;
      v130 = v27;
      v128 = v47;
      sub_224DAC238();
      v146 = swift_allocObject();
      v49 = v151;
      *(v146 + 2) = sub_224BFA2A0(v27, v145);
      v50 = &v49[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService];
      v51 = v49;
      v52 = *&v49[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32];
      __swift_project_boxed_opaque_existential_1(&v49[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v49[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
      v53 = *(v52 + 64);
      sub_224DAD7C8();
      v54 = swift_allocObject();
      v145 = v54;
      v54[16] = 0;
      v122 = v54 + 16;
      v144 = swift_allocObject();
      *(v144 + 16) = 1;
      v55 = swift_allocObject();
      v143 = v55;
      *(v55 + 16) = 0;
      v121 = (v55 + 16);
      v56 = *(v50 + 4);
      __swift_project_boxed_opaque_existential_1(v50, *(v50 + 3));
      v57 = *(v56 + 16);
      v120 = sub_224DAD7A8();
      *&aBlock = v120;
      v58 = v131;
      sub_224DAF388();
      v129 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
      v159 = *&v51[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
      v59 = v159;
      v60 = sub_224DAF358();
      v61 = *(v60 - 8);
      v118 = *(v61 + 56);
      v119 = v61 + 56;
      v62 = v138;
      v118(v138, 1, 1, v60);
      v117 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
      v63 = v134;
      sub_224DAB458();
      sub_224A3311C(v62, &qword_27D6F5090, &qword_224DB5C30);

      (*(v132 + 8))(v58, v133);

      *&aBlock = *&v151[v129];
      v64 = aBlock;
      v118(v62, 1, 1, v60);
      sub_224A33088(&qword_27D6F50C0, &qword_27D6F5098, &qword_224DBAE18);
      v65 = v64;
      v66 = v136;
      sub_224DAB448();
      sub_224A3311C(v62, &qword_27D6F5090, &qword_224DB5C30);

      (*(v135 + 8))(v63, v66);
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      v68[2] = v146;
      v68[3] = v67;
      v69 = v128;
      v68[4] = v144;
      v68[5] = v69;
      v70 = v149;
      v68[6] = v141;
      v68[7] = v70;
      v71 = v143;
      v68[8] = v145;
      v68[9] = v71;
      v72 = v150;
      v68[10] = v142;
      v68[11] = v72;
      v135 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = v148;
      v74 = *(v148 + 16);
      v136 = v148 + 16;
      v138 = v74;
      (v74)(v152, v130, v153);
      sub_224A3317C(&v160, &aBlock);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v133 = *(v73 + 80);
      v137 += 7;
      v76 = (v137 + v75) & 0xFFFFFFFFFFFFFFF8;
      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v132 = (v81 + 47) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v135;
      *(v82 + 16) = v146;
      *(v82 + 24) = v83;
      v84 = *(v73 + 32);
      v134 = (v73 + 32);
      v135 = v84;
      v84(v82 + v75, v152, v153);
      v85 = v128;
      *(v82 + v76) = v128;
      v86 = (v82 + v77);
      v87 = v149;
      *v86 = v141;
      v86[1] = v87;
      *(v82 + v78) = v144;
      *(v82 + v79) = v145;
      *(v82 + v80) = v143;
      sub_224A36F98(&aBlock, v82 + v81);
      v88 = (v82 + v132);
      v89 = v150;
      *v88 = v142;
      v88[1] = v89;
      sub_224A33088(&unk_27D6F50C8, &unk_27D6F50A0, &unk_224DBAE20);
      swift_bridgeObjectRetain_n();
      v90 = v85;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v91 = v90;
      v92 = v140;
      v93 = v147;
      v94 = sub_224DAB408();

      (*(v139 + 8))(v93, v92);
      v95 = v121;
      swift_beginAccess();
      v96 = *v95;
      *v95 = v94;
      v97 = v95;

      v98 = v151;
      v99 = v152;
      v100 = *&v151[v129];
      v101 = v130;
      v102 = v153;
      (v138)(v152, v130, v153);
      v103 = (v133 + 40) & ~v133;
      v104 = (v137 + v103) & 0xFFFFFFFFFFFFFFF8;
      v105 = swift_allocObject();
      v106 = v122;
      v105[2] = v97;
      v105[3] = v106;
      v105[4] = v98;
      (v135)(v105 + v103, v99, v102);
      v107 = (v105 + v104);
      v32 = v124;
      *v107 = v123;
      v107[1] = v32;
      v108 = swift_allocObject();
      *(v108 + 16) = sub_224BFD990;
      *(v108 + 24) = v105;
      v157 = sub_224A8A838;
      v158 = v108;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v155 = sub_224A9B6F8;
      v156 = &block_descriptor_180;
      v109 = _Block_copy(&aBlock);
      v29 = v158;
      v28 = v98;

      dispatch_sync(v100, v109);
      _Block_release(v109);
      __swift_destroy_boxed_opaque_existential_1(&v160);
      (*(v148 + 8))(v101, v102);
      (*(v126 + 8))(v125, v127);

      LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

      if ((v100 & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_16:
  v110 = v142;
  if (!v40)
  {
    swift_once();
  }

  v111 = sub_224DAB258();
  __swift_project_value_buffer(v111, qword_281364CE8);
  v112 = sub_224DAB228();
  v113 = sub_224DAF2A8();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_224A2F000, v112, v113, "Insufficient budget for suggestion, not prewarming.", v114, 2u);
    MEMORY[0x22AA5EED0](v114, -1, -1);
  }

  v115 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CFA188] code:3 userInfo:0];
  v110(0, 0, v115);

  return (*(v29 + 8))(v32, v28);
}

void sub_224BEF140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, id))
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v16 = *(a2 + 16);

    sub_224DADCC8();
  }

  swift_beginAccess();
  v17 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    swift_beginAccess();
    if (*(a4 + 16) == 1)
    {
      if (qword_2813513E8 != -1)
      {
        swift_once();
      }

      v21 = a10;
      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281364CE8);
      v23 = a5;

      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v26 = 138543618;
        v29 = [v23 extensionIdentity];
        *(v26 + 4) = v29;
        *v27 = v29;
        *(v26 + 12) = 2082;
        *(v26 + 14) = sub_224A33F74(a6, a7, &v33);
        _os_log_impl(&dword_224A2F000, v24, v25, "Suggested widget %{public}@ for stack %{public}s request timed out - notifying!", v26, 0x16u);
        sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
        v30 = v27;
        v21 = a10;
        MEMORY[0x22AA5EED0](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x22AA5EED0](v28, -1, -1);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      swift_beginAccess();
      *(a8 + 16) = 1;
      swift_beginAccess();
      if (*(a9 + 16))
      {
        swift_beginAccess();

        sub_224B0279C();
        swift_endAccess();

        swift_beginAccess();
        v31 = *(a9 + 16);
        *(a9 + 16) = 0;
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v32 = sub_224CBC42C(0xCu, 0, 0);
      v21(0, 0, v32);
    }
  }
}

uint64_t sub_224BEF4C8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), void *a5, void (**a6)(char *, uint64_t), void (**a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void, void, void), uint64_t a13)
{
  v120 = a5;
  v121 = a8;
  v127 = a7;
  v125 = a6;
  v130 = a4;
  v134 = sub_224DA9878();
  v14 = *(v134 - 8);
  v15 = *(v14 + 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v114 - v19;
  v132 = sub_224DAEA68();
  v118 = *(v132 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v132);
  v128 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DA9908();
  v123 = *(v22 - 8);
  v124 = v22;
  v23 = v123[8];
  MEMORY[0x28223BE20](v22);
  v122 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAC268();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DABE18();
  v126 = *(v30 - 8);
  v31 = *(v126 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v131 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v129 = &v114 - v34;
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v35 = *(a2 + 16);

    sub_224DADCC8();
  }

  swift_beginAccess();
  v36 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = result;
    v117 = v14;
    v39 = v30;
    v116 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
    v40 = *(result + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    v42 = v129;
    MEMORY[0x22AA5BB00](v41);
    (*(v26 + 16))(v29, v130, v25);
    v43 = v131;
    sub_224DABD88();
    v44 = MEMORY[0x22AA5A130](v42, v43);
    v119 = v39;
    if ((v44 & 1) == 0)
    {

      v86 = v126;
LABEL_31:
      v112 = *(v86 + 8);
      v113 = v119;
      v112(v131, v119);
      return (v112)(v129, v113);
    }

    if (qword_2813513E8 != -1)
    {
      swift_once();
    }

    v115 = a10;
    v45 = sub_224DAB258();
    __swift_project_value_buffer(v45, qword_281364CE8);
    v46 = v120;

    v47 = sub_224DAB228();
    v48 = sub_224DAF2A8();

    v49 = os_log_type_enabled(v47, v48);
    v120 = v46;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v137 = v52;
      *v50 = 138543618;
      v53 = [v46 extensionIdentity];
      *(v50 + 4) = v53;
      *v51 = v53;
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_224A33F74(v125, v127, &v137);
      _os_log_impl(&dword_224A2F000, v47, v48, "Suggested widget %{public}@ for stack %{public}s completed!", v50, 0x16u);
      sub_224A3311C(v51, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x22AA5EED0](v52, -1, -1);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    v54 = v117;
    v55 = v124;
    v56 = v121;
    swift_beginAccess();
    *(v56 + 16) = 0;
    swift_beginAccess();
    *(a9 + 16) = 1;
    v57 = v115;
    swift_beginAccess();
    if (*(v57 + 16))
    {
      swift_beginAccess();

      sub_224B0279C();
      swift_endAccess();

      swift_beginAccess();
      v58 = *(v57 + 16);
      *(v57 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a2 + 16))
    {
      v59 = *(a2 + 16);

      sub_224DADCC8();
    }

    v121 = a13;
    v124 = a12;
    swift_beginAccess();
    v60 = *(a2 + 16);
    *(a2 + 16) = 0;

    v137 = sub_224DABD98();
    v138 = v61;

    MEMORY[0x22AA5D210](58, 0xE100000000000000);

    v63 = v137;
    v62 = v138;
    v64 = v122;
    v65 = sub_224DA98F8();
    v66 = MEMORY[0x22AA57C10](v65);
    v68 = v67;
    (v123[1])(v64, v55);
    v137 = v63;
    v138 = v62;

    MEMORY[0x22AA5D210](v66, v68);

    v69 = v137;
    v70 = v138;
    sub_224A3317C(a11, &v143);
    v71 = swift_allocObject();
    v72 = v120;
    v71[2] = v38;
    v71[3] = v72;
    v73 = v127;
    v71[4] = v125;
    v71[5] = v73;
    sub_224A36F98(&v143, (v71 + 6));
    v71[11] = v69;
    v71[12] = v70;
    v141 = sub_224BFDA28;
    v142 = v71;
    v137 = MEMORY[0x277D85DD0];
    v138 = 1107296256;
    v139 = sub_224A3837C;
    v140 = &block_descriptor_186;
    v74 = _Block_copy(&v137);
    v75 = objc_opt_self();
    v76 = v72;

    v77 = v38;
    v78 = [v75 responderWithHandler_];
    _Block_release(v74);

    [v78 setQueue_];
    v79 = objc_allocWithZone(MEMORY[0x277CF0B58]);
    v80 = v78;
    v123 = [v79 initWithInfo:0 responder:v80];
    v81 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders;
    swift_beginAccess();
    v82 = *&v77[v81];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v143 = *&v77[v81];
    *&v77[v81] = 0x8000000000000000;
    sub_224B21930(v80, v69, v70, isUniquelyReferenced_nonNull_native);

    *&v77[v81] = v143;
    swift_endAccess();
    v84 = *&v77[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32];
    __swift_project_boxed_opaque_existential_1(&v77[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService], *&v77[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24]);
    v85 = sub_224DAC738();
    v86 = v126;
    if (v85)
    {
      v87 = v85;
      sub_224DABE68();
      if (v144)
      {
        sub_224A36F98(&v143, &v137);
        __swift_project_boxed_opaque_existential_1(&v137, v140);
        v88 = sub_224DAEAC8();
        v89 = *(v88 + 16);
        if (v89)
        {
          v117 = v87;
          v120 = v80;
          v122 = v77;
          v136 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v116 = v88;
          v90 = v88 + 32;
          v91 = (v118 + 48);
          v127 = (v118 + 32);
          v130 = (v54 + 8);
          v125 = (v118 + 8);
          v92 = v135;
          v93 = v132;
          do
          {
            sub_224A3317C(v90, &v143);
            __swift_project_boxed_opaque_existential_1(&v143, v144);
            sub_224DAE788();
            if ((*v91)(v92, 1, v93) == 1)
            {
              sub_224A3311C(v92, &unk_27D6F50E8, &qword_224DBAE38);
              __swift_project_boxed_opaque_existential_1(&v143, v144);
              v94 = v133;
              sub_224DAE778();
              v95 = objc_allocWithZone(CHDProactiveEntry);
              v96 = sub_224DA9778();
              [v95 initWithDate_];

              (*v130)(v94, v134);
            }

            else
            {
              v98 = v128;
              (*v127)(v128, v92, v93);
              __swift_project_boxed_opaque_existential_1(&v143, v144);
              v99 = v133;
              sub_224DAE778();
              sub_224DAEA48();
              v101 = v100;
              sub_224DAEA58();
              v103 = v102;
              v104 = objc_allocWithZone(CHDProactiveEntry);
              v105 = sub_224DA9778();
              [v104 initWithDate:v105 score:v101 duration:v103];

              (*v130)(v99, v134);
              (*v125)(v98, v93);
            }

            __swift_destroy_boxed_opaque_existential_1(&v143);
            sub_224DAF9B8();
            v97 = *(v136 + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            v90 += 40;
            --v89;
            v92 = v135;
          }

          while (v89);

          v86 = v126;
          v77 = v122;
          v80 = v120;
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(&v137);
        sub_224A3B79C(0, &qword_281350A98, &off_27853D6A8);
        v106 = v123;
        v109 = v123;
        v108 = sub_224DAEFF8();

        goto LABEL_27;
      }

      sub_224A3311C(&v143, &unk_27D6F3CB0, &unk_224DB7860);
    }

    v106 = v123;
    v107 = v123;
    v108 = 0;
LABEL_27:
    v110 = CHDCreateATXInfoTimelineEntries(v108);

    if (v110)
    {
      v111 = sub_224DAF008();
    }

    else
    {
      v111 = 0;
    }

    v124(v106, v111, 0);

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_224BF0240(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_2813513E8 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281364CE8);
  v16 = a3;

  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v29 = a7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = a8;
    v22 = a4;
    v23 = swift_slowAlloc();
    v30 = v23;
    *v19 = 138543618;
    v24 = [v16 extensionIdentity];
    *(v19 + 4) = v24;
    *v20 = v24;
    *(v19 + 12) = 2082;
    v25 = v22;
    a8 = v21;
    *(v19 + 14) = sub_224A33F74(v25, a5, &v30);
    _os_log_impl(&dword_224A2F000, v17, v18, "Suggested widget %{public}@ for stack %{public}s assertion invalidated.", v19, 0x16u);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v26 = v19;
    a7 = v29;
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  v27 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_224DAE1F8();
  swift_beginAccess();

  sub_224B08BC0(0, a7, a8);
  return swift_endAccess();
}

uint64_t sub_224BF04A8(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *a1;
  if (v7)
  {
    result = swift_beginAccess();
    if ((*a2 & 1) == 0)
    {
      swift_beginAccess();
      swift_retain_n();
      sub_224ADC248(&v9, v7);
      swift_endAccess();

      v8 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32);
      __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
      sub_224DAC7F8();
    }
  }

  return result;
}

void sub_224BF06A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_224DAEFF8();
    if (a3)
    {
LABEL_3:
      v8 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

void sub_224BF0754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364E50);
    (*(v7 + 16))(v10, a3, v6);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a3;
      v18 = v17;
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v18 = 136446210;
      sub_224A80F90(&qword_281351A00, MEMORY[0x277CC95F0]);
      v19 = sub_224DAFD28();
      v21 = v20;
      (*(v7 + 8))(v10, v6);
      v22 = sub_224A33F74(v19, v21, v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_224A2F000, v15, v16, "Invalidating lifetime assertion %{public}s", v18, 0xCu);
      v23 = v27;
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v23, -1, -1);
      v24 = v18;
      a3 = v28;
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    swift_beginAccess();
    v25 = sub_224B3E1E0(a3);
    swift_endAccess();

    swift_beginAccess();
    if (*(a4 + 40))
    {
      sub_224A3317C(a4 + 16, v29);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_224DAE1F8();

      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
    }
  }
}

void sub_224BF0A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281364E50);
      v16 = a4;
      v17 = sub_224DAB228();
      v18 = sub_224DAF2A8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        v21 = [v16 extensionIdentity];
        *(v19 + 4) = v21;
        *v20 = v21;
        _os_log_impl(&dword_224A2F000, v17, v18, "Lifetime assertion prewarm request for widget %{public}@ timed out - notifying!", v19, 0xCu);
        sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v20, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      swift_beginAccess();
      *(a5 + 16) = 1;
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_beginAccess();

        sub_224B0279C();
        swift_endAccess();

        swift_beginAccess();
        v22 = *(a6 + 16);
        *(a6 + 16) = 0;
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v23 = sub_224CBC42C(0xCu, 0, 0);
      a7(0, v23);
    }
  }
}

uint64_t sub_224BF0D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id, void), uint64_t a11)
{
  v74 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v76 = sub_224DA9908();
  v75 = *(v76 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAC268();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DABE18();
  v77 = *(v78 - 8);
  v21 = *(v77 + 64);
  v22 = MEMORY[0x28223BE20](v78);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v70 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue;
    v29 = *(result + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
    BSDispatchQueueAssert();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v30);
    (*(v17 + 16))(v20, a3, v16);
    sub_224DABD88();
    if (MEMORY[0x22AA5A130](v26, v24))
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v31 = sub_224DAB258();
      __swift_project_value_buffer(v31, qword_281364E50);
      v32 = a4;
      v33 = sub_224DAB228();
      v34 = sub_224DAF2A8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        v37 = [v32 extensionIdentity];
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&dword_224A2F000, v33, v34, "Lifetime assertion prewarm request for widget %{public}@ completed!", v35, 0xCu);
        sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v36, -1, -1);
        MEMORY[0x22AA5EED0](v35, -1, -1);
      }

      v68 = a11;
      v69 = a10;

      v38 = v71;
      swift_beginAccess();
      *(v38 + 16) = 0;
      v39 = v72;
      swift_beginAccess();
      *(v39 + 16) = 1;
      v40 = v73;
      swift_beginAccess();
      if (*(v40 + 16))
      {
        swift_beginAccess();

        sub_224B0279C();
        swift_endAccess();

        swift_beginAccess();
        v41 = *(v40 + 16);
        *(v40 + 16) = 0;
      }

      sub_224A3796C(v74, &aBlock, &qword_27D6F3AE8, &unk_224DB9600);
      v67 = v32;
      if (v83)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v83);
        sub_224DAE1F8();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_224A3311C(&aBlock, &qword_27D6F3AE8, &unk_224DB9600);
      }

      aBlock = sub_224DABD98();
      v81 = v42;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v44 = aBlock;
      v43 = v81;
      v45 = sub_224DA98F8();
      v46 = MEMORY[0x22AA57C10](v45);
      v48 = v47;
      (*(v75 + 8))(v15, v76);
      aBlock = v44;
      v81 = v43;

      MEMORY[0x22AA5D210](v46, v48);

      v50 = aBlock;
      v49 = v81;
      v51 = swift_allocObject();
      v52 = v67;
      v51[2] = v28;
      v51[3] = v52;
      v51[4] = a9;
      v51[5] = v50;
      v51[6] = v49;
      v84 = sub_224BFD808;
      v85 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_224A3837C;
      v83 = &block_descriptor_147;
      v53 = _Block_copy(&aBlock);
      v54 = objc_opt_self();
      v55 = v52;
      v56 = v28;

      v57 = [v54 responderWithHandler_];
      _Block_release(v53);

      [v57 setQueue_];
      v58 = objc_allocWithZone(MEMORY[0x277CF0B58]);
      v59 = v57;
      v60 = [v58 initWithInfo:0 responder:v59];
      v61 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders;
      swift_beginAccess();
      v62 = *&v56[v61];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *&v56[v61];
      *&v56[v61] = 0x8000000000000000;
      sub_224B21930(v59, v50, v49, isUniquelyReferenced_nonNull_native);

      *&v56[v61] = v79;
      swift_endAccess();
      v28 = v60;
      v69(v60, 0);
    }

    v64 = *(v77 + 8);
    v65 = v78;
    v64(v24, v78);
    return (v64)(v26, v65);
  }

  return result;
}

uint64_t sub_224BF152C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364E50);
  v12 = a3;
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = [v12 extensionIdentity];
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_224A2F000, v13, v14, "Lifetime assertion for widget %{public}@ invalidated.", v15, 0xCu);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  swift_beginAccess();
  if (*(a4 + 40))
  {
    sub_224A3317C(a4 + 16, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_224DAE1F8();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  swift_beginAccess();

  sub_224B08BC0(0, a5, a6);
  return swift_endAccess();
}

uint64_t sub_224BF1818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v180 = a3;
  v170 = sub_224DA9908();
  v169 = *(v170 - 8);
  v4 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v156[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v167 = sub_224DA9878();
  v166 = *(v167 - 8);
  v6 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v156[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v175 = &v156[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v164 = type metadata accessor for ExtensionTask.Identifier(0);
  v11 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v174 = &v156[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v173 = &v156[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v177 = *(v16 - 8);
  v178 = v16;
  v17 = v177[8];
  MEMORY[0x28223BE20](v16);
  v176 = &v156[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v163 = &v156[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v172 = &v156[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v156[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v156[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v156[-v32];
  v34 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v179 = v3;
  v35 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281364E50);
    v53 = sub_224DAB228();
    v54 = sub_224DAF288();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v185 = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v185);
      _os_log_impl(&dword_224A2F000, v53, v54, "%{public}s rejected because not yet unlocked from boot.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x22AA5EED0](v56, -1, -1);
      MEMORY[0x22AA5EED0](v55, -1, -1);
    }

    return 0;
  }

  sub_224DA9FF8();
  v36 = v33;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v37 = sub_224DAB258();
  v38 = __swift_project_value_buffer(v37, qword_281364DF0);
  v39 = v20[2];
  v161 = v20 + 2;
  v160 = v39;
  v39(v31, v33, v19);
  v171 = v38;
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v185 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v185);
    *(v42 + 12) = 2082;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v44 = sub_224DAFD28();
    v45 = v19;
    v47 = v46;
    v48 = v31;
    v49 = v45;
    v162 = v20[1];
    v162(v48, v45);
    v50 = sub_224A33F74(v44, v47, &v185);

    *(v42 + 14) = v50;
    _os_log_impl(&dword_224A2F000, v40, v41, "%{public}s - bundle identifier: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    v51 = v43;
    v36 = v33;
    MEMORY[0x22AA5EED0](v51, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    v57 = v31;
    v49 = v19;
    v162 = v20[1];
    v162(v57, v19);
  }

  v59 = sub_224BFBD94(v58);
  v61 = v60;
  v157 = v59;
  v158 = v62;

  v63 = sub_224DAB228();
  v64 = sub_224DAF268();

  v65 = os_log_type_enabled(v63, v64);
  v180 = v61;
  v159 = v20;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v185 = v67;
    *v66 = 136446466;
    *(v66 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v185);
    *(v66 + 12) = 2082;
    v68 = sub_224BF305C(v157 & 1, v158, v61);
    v70 = sub_224A33F74(v68, v69, &v185);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_224A2F000, v63, v64, "%{public}s - info: [%{public}s]", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v67, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  v71 = v179;
  v72 = *(v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32);
  __swift_project_boxed_opaque_existential_1((v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v73 = v160;
  v160(v28, v36, v49);
  v74 = v36;
  v75 = v176;
  sub_224DAA278();
  sub_224DAC6C8();
  (v177[1])(v75, v178);
  if (!v184)
  {

    sub_224A3311C(&v183, &unk_27D6F4700, &unk_224DB3A10);
    v132 = v163;
    v73(v163, v74, v49);
    v133 = sub_224DAB228();
    v134 = sub_224DAF288();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v185 = v136;
      *v135 = 136446466;
      *(v135 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v185);
      *(v135 + 12) = 2082;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
      v137 = sub_224DAFD28();
      v139 = v138;
      v140 = v132;
      v141 = v162;
      v162(v140, v49);
      v142 = sub_224A33F74(v137, v139, &v185);

      *(v135 + 14) = v142;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v136, -1, -1);
      MEMORY[0x22AA5EED0](v135, -1, -1);

      v141(v74, v49);
    }

    else
    {

      v154 = v162;
      v162(v132, v49);
      v154(v74, v49);
    }

    return 0;
  }

  v178 = v49;
  sub_224A36F98(&v183, &v185);
  sub_224A3317C(v71 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService, &v183);
  __swift_project_boxed_opaque_existential_1(&v183, v184);
  __swift_project_boxed_opaque_existential_1(&v185, v186);
  v76 = sub_224DAE338();
  v77 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v78 = v173;
  sub_224A3796C(v76 + v77, v173, &unk_27D6F5060, &qword_224DB5620);

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v80 = *(v79 - 8);
  result = (*(v80 + 48))(v78, 1, v79);
  if (result != 1)
  {
    v82 = sub_224DAC808();
    (*(v80 + 8))(v78, v79);
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v83 = v172;
    v84 = v74;
    if (v82 >> 62)
    {
      v85 = sub_224DAF838();
    }

    else
    {
      v85 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v85)
    {
      v177 = [objc_allocWithZone(MEMORY[0x277CFA348]) init];
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      v86 = sub_224DAE338();
      v87 = v174;
      *v174 = v86;
      swift_storeEnumTagMultiPayload();
      __swift_project_boxed_opaque_existential_1(&v185, v186);
      v88 = sub_224DAE338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
      v89 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
      v90 = *(v89 + 72);
      v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_224DB3100;
      v93 = sub_224DAE8B8();
      (*(*(v93 - 8) + 56))(v92 + v91, 3, 5, v93);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
      v95 = v175;
      (*(*(v94 - 8) + 56))(v175, 1, 1, v94);
      v96 = type metadata accessor for ExtensionTask(0);
      v97 = objc_allocWithZone(v96);
      sub_224DAE908();
      v98 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      *&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
      v99 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
      v100 = sub_224DAC938();
      (*(*(v100 - 8) + 56))(&v97[v99], 1, 1, v100);
      v101 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
      *v101 = 0;
      v101[1] = 0;
      v102 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      *v102 = 0;
      v102[1] = 0;
      v103 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      *v103 = 0;
      v103[1] = 0;
      v104 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
      *v104 = 0;
      v104[1] = 0;
      v105 = v165;
      sub_224DA9868();
      (*(v166 + 32))(&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v105, v167);
      *&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v88;
      v176 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
      sub_224A3F63C(v95, &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
      swift_beginAccess();
      v106 = *&v97[v98];
      *&v97[v98] = v92;
      v172 = v88;

      v107 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
      *v107 = 1;
      v107[8] = 0;
      v171 = type metadata accessor for ExtensionTask.Identifier;
      sub_224A3F63C(v87, &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
      v108 = v168;
      sub_224DA98F8();
      v109 = v169;
      v110 = v170;
      (*(v169 + 16))(&v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v108, v170);
      v182 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v111 = sub_224A3D19C(8);
      v173 = v84;
      v113 = v112;
      v115 = v114;
      v117 = v116;

      v118 = MEMORY[0x22AA5D1C0](v111, v113, v115, v117);
      v120 = v119;

      v121 = &v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      *v121 = v118;
      v121[1] = v120;
      v97[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
      v181.receiver = v97;
      v181.super_class = v96;
      v122 = objc_msgSendSuper2(&v181, sel_init);

      (*(v109 + 8))(v108, v110);
      sub_224A3D238(v175, v176);
      sub_224A3D238(v174, v171);
      v123 = swift_allocObject();
      v124 = v177;
      *(v123 + 16) = v177;
      *(v123 + 24) = v157 & 1;
      v125 = v180;
      *(v123 + 32) = v158;
      *(v123 + 40) = v125;
      v126 = &v122[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      v127 = *&v122[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      v128 = *&v122[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
      *v126 = sub_224BFD5B8;
      v126[1] = v123;
      v129 = v124;
      sub_224A3D418(v127);
      v130 = *(v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService + 24);
      v131 = *(v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService + 32);
      __swift_project_boxed_opaque_existential_1((v179 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService), v130);
      (*(v131 + 16))(v122, v130, v131);

      (v159[1])(v173, v178);
      __swift_destroy_boxed_opaque_existential_1(&v185);
      return v129;
    }

    v143 = v178;
    v160(v83, v74, v178);
    v144 = sub_224DAB228();
    v145 = sub_224DAF288();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v183 = v147;
      *v146 = 136446466;
      *(v146 + 4) = sub_224A33F74(0xD00000000000003ELL, 0x8000000224DCA650, &v183);
      *(v146 + 12) = 2082;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
      v148 = sub_224DAFD28();
      v150 = v149;
      v151 = v83;
      v152 = v162;
      v162(v151, v143);
      v153 = sub_224A33F74(v148, v150, &v183);

      *(v146 + 14) = v153;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v147, -1, -1);
      MEMORY[0x22AA5EED0](v146, -1, -1);

      v152(v74, v143);
    }

    else
    {

      v155 = v162;
      v162(v83, v143);
      v155(v74, v143);
    }

    __swift_destroy_boxed_opaque_existential_1(&v185);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_224BF305C(char a1, uint64_t a2, uint64_t a3)
{
  sub_224DAF938();

  strcpy(v9, "identifier: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x22AA5D210](a2, a3);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DCA690);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v6, v7);

  return v9[0];
}

void sub_224BF3140(uint64_t a1, void (*a2)(void), uint64_t a3, id a4)
{
  if ([a4 isValid])
  {
    sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
      if (swift_dynamicCast())
      {
        v7 = v22;
        v8 = swift_allocObject();
        v8[2] = v7;
        v8[3] = a2;
        v8[4] = a3;
        swift_unknownObjectRetain();

        v9 = sub_224DAEDE8();
        v10 = swift_allocObject();
        *(v10 + 16) = sub_224BFD61C;
        *(v10 + 24) = v8;
        v20 = sub_224BFDE18;
        v21 = v10;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224BC6D2C;
        v19 = &block_descriptor_111;
        v11 = _Block_copy(aBlock);

        [v7 handleURLSessionEventsFor:v9 completion:v11];
        _Block_release(v11);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
    }

    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364DF0);
    v13 = sub_224DAB228();
    v14 = sub_224DAF288();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224A2F000, v13, v14, "unable to obtain widget extension session", v15, 2u);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    sub_224BFD5C8();
    v16 = swift_allocError();
    *v17 = 0;
    v17[1] = 0;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

id sub_224BF34DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v0 + v2, &v8, &unk_27D6F5050, &unk_224DBAE08);
  if (v9)
  {
    sub_224A36F98(&v8, v10);
    v3 = *__swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_224BDFC24();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_224A3311C(&v8, &unk_27D6F5050, &unk_224DBAE08);
  }

  v4 = objc_allocWithZone(MEMORY[0x277CFA308]);
  sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
  v5 = sub_224DAEFF8();

  v6 = [v4 initWithDevices_];

  return v6;
}

uint64_t sub_224BF3664(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_224BF3708()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v0 + v2, &v5, &unk_27D6F5050, &unk_224DBAE08);
  if (v6)
  {
    sub_224A36F98(&v5, v7);
    v3 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_224CFBE00();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_224A3311C(&v5, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(0x12u, 0, 0);
    return swift_willThrow();
  }
}

uint64_t sub_224BF39A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(v0 + v2, &v5, &unk_27D6F5050, &unk_224DBAE08);
  if (v6)
  {
    sub_224A36F98(&v5, v7);
    v3 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_224CFC354();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_224A3311C(&v5, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(0x12u, 0, 0);
    return swift_willThrow();
  }
}

id sub_224BF3B28()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider;
  swift_beginAccess();
  sub_224A3317C(v0 + v2, v15);
  v3 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v4 = *v3;
  v5 = *(*v3 + 56);
  v6 = *(*v3 + 64);

  LOBYTE(v5) = v5(v7);

  if (v5)
  {
    goto LABEL_5;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isiPhoneWidgetsOnMacAllowed];

    if (v10)
    {
      v11 = *(v4 + 72);
      v12 = *(v4 + 80);

      v14 = v11(v13);

LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(v15);
      return (v14 & 1);
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_224BF3CCC(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_224BF3D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC0, &unk_224DBADD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v51 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  (*(v13 + 16))(v17, v19, v12);
  sub_224DAA278();
  v20 = v4;
  v21 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  sub_224DAC6C8();
  if (*(&v61 + 1))
  {
    v56 = v11;
    v57 = v8;
    v58 = v12;
    v59 = v19;
    sub_224A36F98(&v60, &v63);
    __swift_project_boxed_opaque_existential_1(&v63, v65);
    v22 = sub_224DAE268();
    if (v22 && (v23 = v22, v24 = [v22 canKeepAlive], v23, v24))
    {
      __swift_project_boxed_opaque_existential_1(&v63, v65);
      v25 = sub_224DAE8B8();
      v26 = v55;
      (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v27 = sub_224DAE258();
      sub_224A3311C(&v60, &qword_27D6F4FC8, &unk_224DBADE8);
      sub_224A3311C(v26, &qword_27D6F4FC0, &unk_224DBADD8);
      v28 = v66;
      v29 = v59;
      if (v27)
      {
        if ([v27 respondsToSelector_])
        {
          v55 = v27;
          v30 = [objc_opt_self() targetWithPid_];
          v31 = *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider + 24);
          v32 = *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider + 32);
          __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider), v31);
          v33 = v56;
          v34 = v54;
          v35 = (*(v32 + 8))(v56, v30, v51, v52, v53, v31, v32);
          v36 = v57;
          if (!v34)
          {
            v20 = v35;

            [v55 invalidate];
            swift_unknownObjectRelease();
            (*(v28 + 8))(v33, v36);
            (*(v13 + 8))(v59, v58);
            __swift_destroy_boxed_opaque_existential_1(&v63);
            return v20;
          }

          [v55 invalidate];
          swift_unknownObjectRelease();
          (*(v28 + 8))(v33, v36);
          (*(v13 + 8))(v59, v58);
          goto LABEL_14;
        }

        v55 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        v47 = *MEMORY[0x277CFA188];
        sub_224DAEE18();
        *&v60 = 0;
        *(&v60 + 1) = 0xE000000000000000;
        sub_224DAF938();

        *&v60 = 0xD000000000000016;
        *(&v60 + 1) = 0x8000000224DCA5C0;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
        v38 = v58;
        v48 = sub_224DAFD28();
        v20 = v27;
        MEMORY[0x22AA5D210](v48);

        MEMORY[0x22AA5D210](0x206F6E2073616820, 0xEB00000000646970);
        sub_224DAF648();
        swift_willThrow();
        [v27 invalidate];
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        v45 = *MEMORY[0x277CFA188];
        sub_224DAEE18();
        *&v60 = 0;
        *(&v60 + 1) = 0xE000000000000000;
        sub_224DAF938();

        *&v60 = 0xD000000000000025;
        *(&v60 + 1) = 0x8000000224DCA590;
        sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
        v38 = v58;
        v46 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v46);

        sub_224DAF648();
        swift_willThrow();
      }

      (*(v28 + 8))(v56, v57);
      v41 = *(v13 + 8);
      v42 = v29;
    }

    else
    {
      v20 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v37 = *MEMORY[0x277CFA188];
      sub_224DAEE18();
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_224DAF938();

      *&v60 = 0x6F69736E65747845;
      *(&v60 + 1) = 0xEA0000000000206ELL;
      sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
      v38 = v58;
      v39 = v59;
      v40 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v40);

      MEMORY[0x22AA5D210](0xD000000000000025, 0x8000000224DCA560);
      sub_224DAF648();
      swift_willThrow();
      (*(v66 + 8))(v56, v57);
      v41 = *(v13 + 8);
      v42 = v39;
    }

    v41(v42, v38);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(&v63);
    return v20;
  }

  sub_224A3311C(&v60, &unk_27D6F4700, &unk_224DB3A10);
  v20 = sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v43 = *MEMORY[0x277CFA188];
  v59 = sub_224DAEE18();
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_224DAF938();

  v63 = 0xD000000000000019;
  v64 = 0x8000000224DCA540;
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
  v44 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v44);

  sub_224DAF648();
  swift_willThrow();
  (*(v66 + 8))(v11, v8);
  (*(v13 + 8))(v19, v12);
  return v20;
}

unint64_t sub_224BF49E8()
{
  result = qword_28135CCE0;
  if (!qword_28135CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCE0);
  }

  return result;
}

uint64_t sub_224BF4A3C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_224CB24FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_224BF4AB8(v6);
  return sub_224DAF9C8();
}

void sub_224BF4AB8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_224DAFD18();
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
        sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
        v6 = sub_224DAF058();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_224BF4D04(v8, v9, a1, v4);
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
    sub_224BF4BCC(0, v2, 1, a1);
  }
}

void sub_224BF4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = [v11 pairingState];
      v14 = [v12 pairingState];
      if (v14 == 2)
      {
LABEL_4:

LABEL_5:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      if (v13 == 2)
      {
        goto LABEL_13;
      }

      if (v14 == 1)
      {
        goto LABEL_4;
      }

      if (v13 == 1)
      {
        goto LABEL_13;
      }

      if (v14 == 3)
      {
        goto LABEL_4;
      }

      if (v13 == 3)
      {
LABEL_13:
      }

      else
      {
        if (!v14)
        {
          goto LABEL_4;
        }

        if (v13)
        {
          goto LABEL_5;
        }
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_224BF4D04(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_127:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_165;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_129:
      v99 = *(v9 + 2);
      if (v99 >= 2)
      {
        do
        {
          v100 = *v6;
          if (!*v6)
          {
            goto LABEL_163;
          }

          v6 = (v99 - 1);
          v101 = *&v9[16 * v99];
          v102 = *&v9[16 * v99 + 24];
          sub_224BF5490((v100 + 8 * v101), (v100 + 8 * *&v9[16 * v99 + 16]), (v100 + 8 * v102), v10);
          if (v5)
          {
            break;
          }

          if (v102 < v101)
          {
            goto LABEL_152;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_224CB23F0(v9);
          }

          if (v99 - 2 >= *(v9 + 2))
          {
            goto LABEL_153;
          }

          v103 = &v9[16 * v99];
          *v103 = v101;
          *(v103 + 1) = v102;
          sub_224CB2364(v99 - 1);
          v99 = *(v9 + 2);
          v6 = a3;
        }

        while (v99 > 1);
      }

LABEL_137:

      return;
    }

LABEL_159:
    v9 = sub_224CB23F0(v9);
    goto LABEL_129;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 >= v7)
  {
    goto LABEL_48;
  }

  v109 = v7;
  v12 = *v6;
  v13 = *(*v6 + 8 * v11);
  v14 = *(*v6 + 8 * v10);
  v15 = v13;
  v16 = v14;
  v17 = [v15 pairingState];
  v18 = [v16 pairingState];
  if (v18 == 2)
  {
    goto LABEL_6;
  }

  if (v17 == 2)
  {
LABEL_8:
    v112 = 1;
    goto LABEL_9;
  }

  if (v18 != 1)
  {
    if (v17 == 1)
    {
      goto LABEL_8;
    }

    if (v18 != 3)
    {
      if (v17 != 3)
      {
        v28 = v18;

        if (v28)
        {
          v29 = v17 == 0;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v112 = v30;
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

LABEL_6:
  v112 = 0;
LABEL_9:

LABEL_10:
  v11 = v10 + 2;
  if (v10 + 2 >= v109)
  {
    goto LABEL_40;
  }

  v105 = v10;
  v19 = (v12 + 8 * v10 + 16);
  do
  {
    v20 = v11;
    v21 = *(v19 - 1);
    v22 = *v19;
    v23 = v21;
    v6 = a3;
    v24 = v23;
    v25 = [v22 pairingState];
    v26 = [v24 pairingState];
    if (v26 == 2)
    {
      goto LABEL_12;
    }

    if (v25 == 2)
    {
      goto LABEL_16;
    }

    if (v26 == 1)
    {
      goto LABEL_12;
    }

    if (v25 == 1)
    {
      goto LABEL_16;
    }

    if (v26 == 3)
    {
LABEL_12:

      if (v112)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v25 == 3)
      {
LABEL_16:

        if ((v112 & 1) == 0)
        {
          v10 = v105;
          goto LABEL_48;
        }

        goto LABEL_13;
      }

      v27 = v26;

      if (v27)
      {
        v6 = a3;
        if ((v112 ^ (v25 == 0)))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v6 = a3;
        if (v112)
        {
LABEL_26:
          v10 = v105;
          goto LABEL_41;
        }
      }
    }

LABEL_13:
    ++v11;
    ++v19;
  }

  while (v109 != v20 + 1);
  v11 = v109;
LABEL_39:
  v10 = v105;
LABEL_40:
  if (v112)
  {
LABEL_41:
    if (v11 < v10)
    {
      goto LABEL_156;
    }

    if (v10 < v11)
    {
      v31 = 8 * v11 - 8;
      v32 = 8 * v10;
      v33 = v11;
      v34 = v10;
      do
      {
        if (v34 != --v33)
        {
          v35 = *v6;
          if (!*v6)
          {
            goto LABEL_162;
          }

          v36 = *(v35 + v32);
          *(v35 + v32) = *(v35 + v31);
          *(v35 + v31) = v36;
        }

        v34 = (v34 + 1);
        v31 -= 8;
        v32 += 8;
      }

      while (v34 < v33);
    }
  }

LABEL_48:
  v37 = v6[1];
  if (v11 >= v37)
  {
    goto LABEL_76;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_155;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_76;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_157;
  }

  if (v10 + a4 >= v37)
  {
    v38 = v6[1];
  }

  else
  {
    v38 = v10 + a4;
  }

  if (v38 < v10)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v11 == v38)
  {
    goto LABEL_76;
  }

  v104 = v5;
  v39 = v10;
  v40 = *v6;
  v41 = *v6 + 8 * v11 - 8;
  v106 = v39;
  v42 = v39 - v11;
  v110 = v38;
  while (2)
  {
    v113 = v11;
    v43 = *(v40 + 8 * v11);
    v44 = v42;
    v45 = v41;
LABEL_61:
    v46 = *v45;
    v47 = v43;
    v48 = v46;
    v49 = [v47 pairingState];
    v50 = [v48 pairingState];
    if (v50 == 2)
    {
LABEL_58:

LABEL_59:
      v11 = v113 + 1;
      v41 += 8;
      --v42;
      if ((v113 + 1) != v110)
      {
        continue;
      }

      v11 = v110;
      v5 = v104;
      v6 = a3;
      v10 = v106;
LABEL_76:
      if (v11 < v10)
      {
        goto LABEL_154;
      }

      v114 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_224AD92E0(0, *(v9 + 2) + 1, 1, v9);
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v9 = sub_224AD92E0((v53 > 1), v54 + 1, 1, v9);
      }

      *(v9 + 2) = v55;
      v56 = &v9[16 * v54];
      *(v56 + 4) = v10;
      *(v56 + 5) = v11;
      v57 = *a1;
      if (!*a1)
      {
        goto LABEL_164;
      }

      if (!v54)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v114;
        if (v114 >= v7)
        {
          goto LABEL_127;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v9 + 4);
          v60 = *(v9 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_96:
          if (v62)
          {
            goto LABEL_143;
          }

          v75 = &v9[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_146;
          }

          v81 = &v9[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_149;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_150;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_117;
          }

          goto LABEL_110;
        }

        v85 = &v9[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_110:
        if (v80)
        {
          goto LABEL_145;
        }

        v88 = &v9[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_148;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_117:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
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
          goto LABEL_158;
        }

        if (!*v6)
        {
          goto LABEL_161;
        }

        v97 = *&v9[16 * v96 + 32];
        v10 = *&v9[16 * v58 + 40];
        sub_224BF5490((*v6 + 8 * v97), (*v6 + 8 * *&v9[16 * v58 + 32]), (*v6 + 8 * v10), v57);
        if (v5)
        {
          goto LABEL_137;
        }

        if (v10 < v97)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_224CB23F0(v9);
        }

        if (v96 >= *(v9 + 2))
        {
          goto LABEL_140;
        }

        v98 = &v9[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v10;
        sub_224CB2364(v58);
        v55 = *(v9 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v9[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_141;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_142;
      }

      v70 = &v9[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_144;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_147;
      }

      if (v74 >= v66)
      {
        v92 = &v9[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_151;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_117;
      }

      goto LABEL_96;
    }

    break;
  }

  if (v49 == 2)
  {
    goto LABEL_67;
  }

  if (v50 == 1)
  {
    goto LABEL_58;
  }

  if (v49 == 1)
  {
    goto LABEL_67;
  }

  if (v50 == 3)
  {
    goto LABEL_58;
  }

  if (v49 == 3)
  {
LABEL_67:
  }

  else
  {
    if (!v50)
    {
      goto LABEL_58;
    }

    if (v49)
    {
      goto LABEL_59;
    }
  }

  if (v40)
  {
    v51 = *v45;
    v43 = *(v45 + 8);
    *v45 = v43;
    *(v45 + 8) = v51;
    v45 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

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
}

uint64_t sub_224BF5490(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_59;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      v18 = [v16 pairingState];
      v19 = [v17 pairingState];
      if (v19 == 2)
      {
        break;
      }

      if (v18 == 2)
      {
        goto LABEL_19;
      }

      if (v19 == 1)
      {
        break;
      }

      if (v18 == 1)
      {
        goto LABEL_19;
      }

      if (v19 == 3)
      {
        break;
      }

      if (v18 == 3)
      {
LABEL_19:
      }

      else
      {
        v36 = v19;

        if (!v36 || v18)
        {
          goto LABEL_13;
        }
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_59;
      }
    }

LABEL_13:
    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v20;
    goto LABEL_15;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v35 = v4;
    while (1)
    {
      v22 = v6 - 1;
      --v5;
      v23 = v14;
      while (1)
      {
        v37 = v14;
        v24 = v6;
        v25 = *--v23;
        v26 = v22;
        v27 = *v22;
        v28 = v25;
        v29 = v27;
        v30 = [v28 pairingState];
        v31 = [v29 pairingState];
        if (v31 == 2)
        {
          goto LABEL_43;
        }

        if (v30 == 2)
        {
          break;
        }

        if (v31 == 1)
        {
          goto LABEL_43;
        }

        if (v30 == 1)
        {
          break;
        }

        if (v31 == 3)
        {
LABEL_43:

          goto LABEL_44;
        }

        if (v30 == 3)
        {
          break;
        }

        v32 = v31;

        if (v32 && !v30)
        {
          goto LABEL_51;
        }

LABEL_44:
        v6 = v24;
        v22 = v26;
        if (v5 + 1 != v37)
        {
          *v5 = *v23;
        }

        --v5;
        v14 = v23;
        v4 = v35;
        if (v23 <= v35)
        {
          v14 = v23;
          goto LABEL_59;
        }
      }

LABEL_51:
      v33 = v26;
      if (v5 + 1 != v24)
      {
        *v5 = *v26;
      }

      v14 = v37;
      v4 = v35;
      if (v37 > v35)
      {
        v6 = v33;
        if (v33 > v7)
        {
          continue;
        }
      }

      v6 = v33;
      break;
    }
  }

LABEL_59:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_224BF57EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06E54(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_224BF587C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_224DAF838();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_224A869E4(v3, 0);
  sub_224B43614(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_224BF5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v17[3] = type metadata accessor for ConcreteManagedConfigurationPrimitives();
  v17[4] = &off_2838304D8;
  v17[0] = a1;
  a6[7] = a2;
  a6[8] = a3;
  a6[9] = a4;
  a6[10] = a5;
  sub_224A3317C(v17, (a6 + 2));
  swift_beginAccess();
  v12 = a6[5];
  v13 = a6[6];
  __swift_mutable_project_boxed_opaque_existential_1((a6 + 2), v12);
  v14 = *(v13 + 16);

  v14(v15, &off_283834AC0, v12, v13);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a6;
}

uint64_t sub_224BF5A0C(void *a1)
{
  v76 = a1;
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService], v77);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_taskService], v99);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService], v98);
  v2 = type metadata accessor for ConcreteManagedConfigurationPrimitives();
  v3 = [objc_allocWithZone(v2) init];
  v97[3] = v2;
  v97[4] = &off_2838304D8;
  v97[0] = v3;
  v4 = type metadata accessor for RemoteWidgetsEnablementProvider();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v97, v2);
  v7 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_224BF5910(*v9, sub_224D16170, 0, sub_224D161C0, 0, v5);
  __swift_destroy_boxed_opaque_existential_1(v97);
  v12 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
  swift_beginAccess();
  sub_224A3796C(&v1[v12], v97, &unk_27D6F5050, &unk_224DBAE08);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_extensionService], v96);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetHostService], v95);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider], v94);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_powerlogSuggestionService], v93);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_duetService], v91);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_stuckPairedRelationshipRepairer], v90, &qword_27D6F5180, &unk_224DBAEA8);
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keepAliveAssertionProvider], v89);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], v88, &unk_27D6F4FB0, &unk_224DBADC8);
  sub_224A3796C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_remoteActivityLaunchService], v87, &qword_27D6F5110, &qword_224DBAE50);
  v74[0] = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
  v13 = v92;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v85 = v4;
  v86 = &off_283834AD0;
  v84[0] = v11;
  v74[1] = v11;
  v20 = type metadata accessor for _DuetBudgetServiceImpl();
  v82 = v20;
  v83 = &off_283830A00;
  v81[0] = v19;
  v75 = type metadata accessor for ChronoServicesClient();
  v21 = objc_allocWithZone(v75);
  v22 = v85;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = v82;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v26;
  v35 = *v32;
  v80[3] = v4;
  v80[4] = &off_283834AD0;
  v79[4] = &off_283830A00;
  v80[0] = v34;
  v79[3] = v20;
  v79[0] = v35;
  v74[2] = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__server;
  swift_unknownObjectWeakInit();
  v36 = &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService];
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  v37 = &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = MEMORY[0x277D84FA0];
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetHostIdentities] = MEMORY[0x277D84FA0];
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetFetchSubscriptions] = v38;
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadSubscriptions] = v38;
  v39 = MEMORY[0x277D84F98];
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetTimelineLoadActionResponders] = MEMORY[0x277D84F98];
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetLifetimeAssertionResponders] = v39;
  v40 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  v41 = v74[0];

  v42 = MEMORY[0x277D84F90];
  *&v21[v40] = sub_224DA1AE0(MEMORY[0x277D84F90]);
  v43 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  *&v21[v43] = sub_224DA1BD4(v42);
  v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_invalidated] = 0;
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_subscriptions] = v38;
  v44 = v76;
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] = v76;
  sub_224A3317C(v77, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService]);
  sub_224A3317C(v99, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_taskService]);
  sub_224A3317C(v98, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService]);
  sub_224A3317C(v80, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider]);
  swift_beginAccess();
  v45 = v44;
  sub_224BFDC78(v97, v36);
  swift_endAccess();
  sub_224A3317C(v96, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService]);
  sub_224A3317C(v95, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService]);
  sub_224A3317C(v94, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider]);
  sub_224A3317C(v93, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService]);
  sub_224A3317C(v79, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__duetServiceQueue_duetService]);
  sub_224A3796C(v90, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_stuckPairedRelationshipRepairer], &qword_27D6F5180, &unk_224DBAEA8);
  sub_224A3317C(v89, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keepAliveAssertionProvider]);
  sub_224A3796C(v88, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
  sub_224A3796C(v87, &v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_remoteActivityLaunchService], &qword_27D6F5110, &qword_224DBAE50);
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue] = v41;
  swift_unknownObjectWeakAssign();
  v46 = objc_allocWithZone(MEMORY[0x277CFA3C0]);
  v47 = v41;
  v48 = [v46 initWithWidgetsPredicate:0 controlsPredicate:0 includeIntents:0];
  *&v21[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions] = v48;
  v78.receiver = v21;
  v78.super_class = v75;
  v49 = objc_msgSendSuper2(&v78, sel_init);

  sub_224A3311C(v87, &qword_27D6F5110, &qword_224DBAE50);
  sub_224A3311C(v88, &unk_27D6F4FB0, &unk_224DBADC8);
  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_224A3311C(v90, &qword_27D6F5180, &unk_224DBAEA8);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v96);
  sub_224A3311C(v97, &unk_27D6F5050, &unk_224DBAE08);
  __swift_destroy_boxed_opaque_existential_1(v98);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v91);
  v50 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
  swift_beginAccess();
  sub_224A3796C(&v1[v50], v77, &unk_27D6F4FD0, &qword_224DB75F0);
  v51 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService;
  swift_beginAccess();
  sub_224A838C0(v77, v49 + v51, &unk_27D6F4FD0, &qword_224DB75F0);
  swift_endAccess();
  v52 = swift_allocObject();
  *(v52 + 16) = v1;
  *(v52 + 24) = v49;
  v53 = swift_allocObject();
  v53[2] = sub_224BFDCE8;
  v53[3] = v52;
  v77[4] = sub_224A75AA4;
  v77[5] = v53;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 1107296256;
  v77[2] = sub_224A37E38;
  v77[3] = &block_descriptor_259;
  v54 = _Block_copy(v77);
  v55 = v1;
  v56 = v49;

  v57 = v45;
  [v45 configureConnection_];
  _Block_release(v54);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v53 = [v45 remoteProcess];
  v58 = sub_224DAEDE8();
  v59 = [v53 hasEntitlement_];

  if (v59)
  {
    v60 = *&v55[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock];
    v61 = *(v60 + 16);

    os_unfair_lock_lock(v61);
    swift_beginAccess();
    sub_224ADC20C(v98, v56);
    swift_endAccess();

    os_unfair_lock_unlock(*(v60 + 16));

    v62 = &selRef_activate;
    goto LABEL_8;
  }

  if (qword_2813514B8 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v63 = sub_224DAB258();
  __swift_project_value_buffer(v63, qword_281364E50);
  v64 = v53;
  v65 = sub_224DAB228();
  v66 = sub_224DAF2A8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76 = v57;
    v77[0] = v69;
    v70 = v69;
    *v67 = 138543618;
    *(v67 + 4) = v64;
    *v68 = v64;
    *(v67 + 12) = 2082;
    v71 = v64;
    *(v67 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, v77);
    _os_log_impl(&dword_224A2F000, v65, v66, "Chrono widget service connection from %{public}@ failed to authenticate <entitled: %{public}s>", v67, 0x16u);
    sub_224A3311C(v68, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v72 = v70;
    v57 = v76;
    MEMORY[0x22AA5EED0](v72, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  v62 = &selRef_invalidate;
LABEL_8:
  [v57 *v62];
}

uint64_t sub_224BF66C0()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_224BF670C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  _Block_copy(a3);
  BSDispatchQueueAssert();
  v8 = sub_224BE8AF0(a1);
  if (v8)
  {
    v9 = v8;
    BSDispatchQueueAssert();
    v10 = [*(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
    v11 = sub_224DAEDE8();
    v12 = [v10 valueForEntitlement_];

    if (v12)
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
      sub_224A33E0C(v63, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      if (swift_dynamicCast())
      {
        v58 = a2;
        v59 = v6;
        v61 = v62[6];
        v13 = v9 & 0xFFFFFFFFFFFFFF8;
        v57 = a3;
        if (v9 >> 62)
        {
          v14 = sub_224DAF838();
          if (v14)
          {
LABEL_6:
            a3 = 0;
            v60 = v9 & 0xC000000000000001;
            while (1)
            {
              if (v60)
              {
                v15 = MEMORY[0x22AA5DCC0](a3, v9);
              }

              else
              {
                if (a3 >= *(v13 + 16))
                {
                  goto LABEL_35;
                }

                v15 = *(v9 + 8 * a3 + 32);
              }

              v16 = v15;
              v17 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              v18 = v9;
              v19 = [v15 extensionBundleIdentifier];
              v20 = sub_224DAEE18();
              v22 = v21;

              v62[0] = v20;
              v62[1] = v22;
              MEMORY[0x28223BE20](v23);
              v56[2] = v62;
              LOBYTE(v20) = sub_224B3E818(sub_224AC2330, v56, v61);

              if ((v20 & 1) == 0)
              {
                break;
              }

              ++a3;
              v9 = v18;
              if (v17 == v14)
              {
                goto LABEL_38;
              }
            }

            v41 = v18;
            if (qword_2813514B8 != -1)
            {
              swift_once();
            }

            v42 = sub_224DAB258();
            __swift_project_value_buffer(v42, qword_281364E50);

            v43 = sub_224DAB228();
            v44 = sub_224DAF288();

            v45 = os_log_type_enabled(v43, v44);
            v46 = v57;
            if (v45)
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v62[0] = v48;
              *v47 = 136446210;
              v49 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
              v50 = MEMORY[0x22AA5D380](v41, v49);
              v52 = v51;

              v53 = sub_224A33F74(v50, v52, v62);

              *(v47 + 4) = v53;
              _os_log_impl(&dword_224A2F000, v43, v44, "Client not authorized to modify descriptor enablement for requests (mismatching request identifiers): %{public}s", v47, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v48);
              MEMORY[0x22AA5EED0](v48, -1, -1);
              MEMORY[0x22AA5EED0](v47, -1, -1);
            }

            else
            {
            }

            sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
            v54 = sub_224CBC42C(3u, 0, 0);
            v55 = sub_224DA9518();
            (*(v46 + 16))(v46, v55);

            __swift_destroy_boxed_opaque_existential_1(v63);
            goto LABEL_39;
          }
        }

        else
        {
          v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_6;
          }
        }

LABEL_38:

        sub_224A3317C(v58 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v62);
        __swift_project_boxed_opaque_existential_1(v62, v62[3]);
        sub_224DACA68();

        __swift_destroy_boxed_opaque_existential_1(v63);
        __swift_destroy_boxed_opaque_existential_1(v62);
LABEL_39:

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    if (qword_2813514B8 != -1)
    {
LABEL_36:
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281364E50);

    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62[0] = v33;
      *v32 = 136446210;
      v34 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
      v35 = MEMORY[0x22AA5D380](v9, v34);
      v37 = v36;

      v38 = sub_224A33F74(v35, v37, v62);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_224A2F000, v30, v31, "Client not authorized to modify descriptor enablement for requests: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v39 = sub_224CBC42C(3u, 0, 0);
    v40 = sub_224DA9518();
    (*(a3 + 16))(a3, v40);
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281364E50);
    v25 = sub_224DAB228();
    v26 = sub_224DAF288();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_224A2F000, v25, v26, "Client requested descriptor modification, but couldn't understand types", v27, 2u);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v28 = sub_224CBC42C(2u, 0, 0);
    v61 = sub_224DA9518();
    (*(a3 + 16))(a3, v61);
  }
}

void sub_224BF6EFC(char *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v103 - v6;
  v120 = sub_224DAF3B8();
  v119 = *(v120 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v112 = *(v114 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v103 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F64F0, &unk_224DC0270);
  v113 = *(v115 - 8);
  v12 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v111 = &v103 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5130, &unk_224DBAE70);
  v122 = *(v127 - 1);
  v14 = *(v122 + 8);
  MEMORY[0x28223BE20](v127);
  v117 = &v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6500, &unk_224DC0280);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v128 = &v103 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v123 = *(v124 - 8);
  v20 = *(v123 + 8);
  MEMORY[0x28223BE20](v124);
  v132 = &v103 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v22 = *(*(v126 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v126);
  v130 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v125 = &v103 - v26;
  MEMORY[0x28223BE20](v25);
  v131 = &v103 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  v29 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  v109 = a2;
  _Block_copy(a2);
  BSDispatchQueueAssert();
  v30 = &a1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService];
  v31 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24];
  v32 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService], v31);
  (*(v32 + 32))(v134, 768, v31, v32);
  v118 = v28;
  if (!v134[5])
  {
    sub_224A3311C(v134, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_26:
    if (qword_281351668 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  v33 = sub_224A86CAC();
  sub_224A699F0(v134);
  if (!v33)
  {
    goto LABEL_26;
  }

  a1 = sub_224DA1DE8(MEMORY[0x277D84F90]);
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v16 = v36 & *(v33 + 64);
  v37 = (v35 + 63) >> 6;
  v117 = v123 + 16;
  v122 = v123 + 8;

  v17 = 0;
  v120 = v33 + 64;
  v119 = v37;
  v121 = v33;
  v29 = v131;
  while (v16)
  {
    v129 = a1;
LABEL_14:
    v41 = __clz(__rbit64(v16)) | (v17 << 6);
    v42 = *(v33 + 48);
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v43 = *(a1 - 1);
    (*(v43 + 16))(v29, v42 + *(v43 + 72) * v41, a1);
    v44 = *(*(v33 + 56) + 8 * v41);
    v46 = v125;
    v45 = v126;
    *&v29[*(v126 + 48)] = v44;
    sub_224A3796C(v29, v46, &qword_27D6F38A8, &unk_224DB4650);
    v47 = *(v46 + *(v45 + 48));
    v48 = v44;

    v30 = v132;
    sub_224DAA238();
    v127 = *(v43 + 8);
    v128 = a1;
    v127(v46, a1);
    v49 = v130;
    sub_224A3796C(v29, v130, &qword_27D6F38A8, &unk_224DB4650);
    v7 = *(v49 + *(v45 + 48));
    v50 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134[0] = v50;
    v52 = sub_224B0BB84(v30);
    v54 = *(v50 + 16);
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_33;
    }

    v30 = v53;
    if (*(v50 + 24) < v57)
    {
      sub_224B13FB0(v57, isUniquelyReferenced_nonNull_native);
      v52 = sub_224B0BB84(v132);
      if ((v30 & 1) != (v58 & 1))
      {

        _Block_release(v109);
        sub_224DAFDD8();
        __break(1u);
        return;
      }

LABEL_19:
      a1 = v134[0];
      if (v30)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v64 = v52;
    sub_224B2801C();
    v52 = v64;
    a1 = v134[0];
    if (v30)
    {
LABEL_6:
      v38 = *(a1 + 7);
      v39 = *(v38 + 8 * v52);
      *(v38 + 8 * v52) = v7;

      (*v122)(v132, v124);
      sub_224A3311C(v131, &qword_27D6F38A8, &unk_224DB4650);
      goto LABEL_7;
    }

LABEL_20:
    *&a1[8 * (v52 >> 6) + 64] |= 1 << v52;
    v30 = v123;
    v59 = v52;
    v60 = v132;
    v61 = v124;
    (*(v123 + 2))(*(a1 + 6) + *(v123 + 9) * v52, v132, v124);
    *(*(a1 + 7) + 8 * v59) = v7;
    (*(v30 + 8))(v60, v61);
    sub_224A3311C(v131, &qword_27D6F38A8, &unk_224DB4650);
    v62 = *(a1 + 2);
    v56 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v56)
    {
      goto LABEL_34;
    }

    *(a1 + 2) = v63;
LABEL_7:
    v16 &= v16 - 1;
    v127(v130, v128);
    v33 = v121;
    v34 = v120;
    v37 = v119;
  }

  while (1)
  {
    v40 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      sub_224A3B79C(0, &qword_281350888, 0x277CFA368);
      v65 = sub_224BEB984(a1);
      (*(v109 + 2))(v109, v65, 0);

      return;
    }

    v16 = *(v34 + 8 * v40);
    ++v17;
    if (v16)
    {
      v129 = a1;
      v17 = v40;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_27:
  v124 = v17;
  v125 = v16;
  v126 = a1;
  v66 = sub_224DAB258();
  __swift_project_value_buffer(v66, qword_281365078);
  v67 = sub_224DAB228();
  v68 = sub_224DAF2A8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_224A2F000, v67, v68, "Widget configuration requested before it's available to the server... waiting.", v69, 2u);
    MEMORY[0x22AA5EED0](v69, -1, -1);
  }

  v70 = swift_allocObject();
  v108 = v70;
  *(v70 + 16) = 0;
  v121 = (v70 + 16);
  v71 = swift_allocObject();
  v109 = v71;
  v71[16] = 0;
  v123 = v71 + 16;
  v132 = swift_allocObject();
  *(v132 + 16) = 1;
  v72 = *(v30 + 24);
  v73 = *(v30 + 32);
  __swift_project_boxed_opaque_existential_1(v30, v72);
  v107 = (*(*(v73 + 8) + 40))(768, v72);
  v134[0] = v107;
  v74 = v116;
  sub_224DAF388();
  v133[1] = v29;
  v130 = sub_224DAF358();
  v75 = *(v130 - 8);
  v76 = *(v75 + 56);
  v131 = (v75 + 56);
  v76(v7, 1, 1, v130);
  v105 = v76;
  v104 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v129 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  v77 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v78 = v110;
  v106 = v77;
  sub_224DAB468();
  sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);
  v79 = *(v119 + 8);
  v80 = v120;
  v79(v74, v120);

  sub_224DAF388();
  v81 = v104;
  v134[0] = v104;
  v76(v7, 1, 1, v130);
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60);
  v82 = v111;
  v83 = v114;
  sub_224DAB458();
  sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

  v79(v74, v80);
  v84 = v78;
  v85 = v108;
  (*(v112 + 8))(v84, v83);
  sub_224A33088(&unk_27D6F6520, &unk_27D6F64F0, &unk_224DC0270);
  v86 = v117;
  v87 = v115;
  sub_224DAB418();
  (*(v113 + 8))(v82, v87);
  v134[0] = v81;
  v105(v7, 1, 1, v130);
  sub_224A33088(&unk_27D6F5150, &unk_27D6F5130, &unk_224DBAE70);
  v88 = v127;
  v89 = v128;
  sub_224DAB448();
  v90 = v7;
  v91 = v109;
  sub_224A3311C(v90, &qword_27D6F5090, &qword_224DB5C30);

  (*(v122 + 1))(v86, v88);
  v92 = swift_allocObject();
  v93 = v126;
  swift_unknownObjectWeakInit();
  v94 = swift_allocObject();
  v94[2] = v92;
  v94[3] = v91;
  v95 = v132;
  v94[4] = v85;
  v94[5] = v95;
  v96 = v118;
  v94[6] = sub_224A5A398;
  v94[7] = v96;
  v97 = swift_allocObject();
  v97[2] = v95;
  v97[3] = v93;
  v97[4] = sub_224A5A398;
  v97[5] = v96;
  sub_224A33088(&unk_27D6F6530, &unk_27D6F6500, &unk_224DC0280);
  swift_retain_n();
  swift_retain_n();

  v93;
  v98 = v125;
  v99 = sub_224DAB408();

  (*(v124 + 8))(v89, v98);
  v100 = v121;
  swift_beginAccess();
  v101 = *v100;
  *v100 = v99;

  v102 = v123;
  swift_beginAccess();
  if (*v102 != 1)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_224ADC248(v133, v99);
    swift_endAccess();
  }
}

uint64_t sub_224BF8024(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC0, &unk_224DBADD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v64 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = &v60 - v22;
  v69 = swift_allocObject();
  *(v69 + 16) = a4;
  v24 = *&a3[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
  v62 = a4;
  _Block_copy(a4);
  v63 = v24;
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364E50);
  v66 = v14[2];
  v66(v20, v23, v13);
  v26 = a3;
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();

  v29 = os_log_type_enabled(v27, v28);
  v73 = v12;
  v70 = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v61 = v23;
    v32 = v31;
    v60 = swift_slowAlloc();
    v77[0] = v60;
    *v30 = 136446466;
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v33 = v26;
    v34 = sub_224DAFD28();
    v35 = v14;
    v37 = v36;
    v67 = v35[1];
    v67(v20, v13);
    v38 = sub_224A33F74(v34, v37, v77);

    *(v30 + 4) = v38;
    v26 = v33;
    *(v30 + 12) = 2114;
    BSDispatchQueueAssert();
    v39 = [*&v33[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v30 + 14) = v39;
    *v32 = v39;
    _os_log_impl(&dword_224A2F000, v27, v28, "Getting an App Intents listener endpoint for %{public}s for process %{public}@", v30, 0x16u);
    sub_224A3311C(v32, &unk_27D6F69F0, &unk_224DB3900);
    v40 = v32;
    v23 = v61;
    MEMORY[0x22AA5EED0](v40, -1, -1);
    v41 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    v12 = v73;
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    v67 = v14[1];
    v67(v20, v13);
  }

  v42 = v68;
  v43 = v66;
  v66(v68, v23, v13);
  sub_224DAA278();
  v44 = *&v26[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32];
  __swift_project_boxed_opaque_existential_1(&v26[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService], *&v26[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24]);
  sub_224DAC6C8();
  if (*(&v75 + 1))
  {
    sub_224A36F98(&v74, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5118, &qword_224DBAE58);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    *(v45 + 16) = 0;
    v63 = v78;
    v68 = v79;
    v62 = __swift_project_boxed_opaque_existential_1(v77, v78);
    v46 = *MEMORY[0x277CE3D18];
    v47 = v43;
    v48 = sub_224DAE8B8();
    v49 = *(v48 - 8);
    v50 = v65;
    (*(v49 + 104))(v65, v46, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v47(v42, v23, v13);
    v51 = v70;
    v52 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v53 = (v64 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_224BFDAC0;
    *(v54 + 24) = v45;
    (v51[4])(v54 + v52, v42, v13);
    v55 = (v54 + v53);
    v56 = v69;
    *v55 = sub_224BFDAB8;
    v55[1] = v56;
    swift_retain_n();

    sub_224DAE2A8();

    sub_224A3311C(&v74, &qword_27D6F4FC8, &unk_224DBADE8);
    sub_224A3311C(v50, &qword_27D6F4FC0, &unk_224DBADD8);
    (*(v71 + 8))(v73, v72);
    v67(v23, v13);
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    sub_224A3311C(&v74, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v57 = sub_224CBC42C(0, 0, 0);
    v58 = sub_224DA9518();
    (v62[2])(v62, 0, 0, v58);

    (*(v71 + 8))(v12, v72);
    v67(v23, v13);
  }
}

void sub_224BF886C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  isUniquelyReferenced_nonNull_native = sub_224DAD738();
  v71 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v58 - v10;
  v11 = sub_224DAB7B8();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB848();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v66 = a2;
  v20 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  _Block_copy(a3);
  BSDispatchQueueAssert();
  v21 = [a1 value];
  if (!v21 || (v22 = v21, v23 = sub_224DAF008(), v22, v24 = sub_224BE8BFC(v23), , !v24))
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v46 = 2;
LABEL_23:
    v47 = sub_224CBC42C(v46, 0, 0);
    v73 = sub_224DA9518();
    (a3)[2](a3, 0, v73);

LABEL_24:
    v48 = v73;

    return;
  }

  v69 = v24;
  v63 = v15;
  if (qword_2813513E8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364CE8);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_224A2F000, v26, v27, "Suggested budgets requested.", v28, 2u);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  v29 = *(v66 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(v66 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v46 = 10;
    goto LABEL_23;
  }

  v30 = v69;
  v68 = *(v69 + 16);
  if (!v68)
  {

    v56 = objc_opt_self();
    sub_224D9F53C(MEMORY[0x277D84F98]);
    v57 = sub_224DAECC8();

    v73 = [v56 boxedValue_];

    (a3)[2](a3, v73, 0);

    goto LABEL_24;
  }

  v59 = v16;
  v60 = v12;
  v58 = a3;
  v61 = v11;
  v62 = v19;
  v19 = 0;
  v72 = (v71 + 32);
  v67 = v71 + 40;
  v31 = (v69 + 40);
  v32 = MEMORY[0x277D84F98];
  do
  {
    if (v19 >= *(v30 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v33 = *(v31 - 1);
    a3 = *v31;
    swift_bridgeObjectRetain_n();
    v34 = v70;
    sub_224DAD718();
    v11 = *v72;
    v16 = isUniquelyReferenced_nonNull_native;
    (*v72)(v73, v34, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v32;
    v12 = sub_224A3A40C(v33, a3);
    v36 = v32[2];
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_32;
    }

    v39 = v35;
    if (v32[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28040();
      }
    }

    else
    {
      sub_224B14390(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_224A3A40C(v33, a3);
      if ((v39 & 1) != (v41 & 1))
      {

        _Block_release(v58);
        sub_224DAFDD8();
        __break(1u);
        return;
      }

      v12 = v40;
    }

    isUniquelyReferenced_nonNull_native = v16;
    v32 = aBlock[0];
    if (v39)
    {
      (*(v71 + 40))(*(aBlock[0] + 56) + *(v71 + 72) * v12, v73, v16);
    }

    else
    {
      *(aBlock[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
      v42 = (v32[6] + 16 * v12);
      *v42 = v33;
      v42[1] = a3;
      (v11)(v32[7] + *(v71 + 72) * v12, v73, v16);
      v43 = v32[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_33;
      }

      v32[2] = v45;
    }

    ++v19;
    v31 += 2;
    v30 = v69;
  }

  while (v68 != v19);

  if (qword_27D6F2CC8 != -1)
  {
    swift_once();
  }

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v32;
  v51 = v62;
  v50[4] = sub_224A5A37C;
  v50[5] = v51;
  aBlock[4] = sub_224BFDA3C;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_196;
  v52 = _Block_copy(aBlock);

  v53 = v64;
  sub_224DAB7E8();
  v74 = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v54 = v63;
  v55 = v61;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v53, v54, v52);
  _Block_release(v52);
  (*(v60 + 8))(v54, v55);
  (*(v65 + 8))(v53, v59);
}

uint64_t sub_224BF915C(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = a1;

    return v5;
  }

  v6 = a4;
  if (!a4)
  {
    return 0;
  }

  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
    goto LABEL_44;
  }

  v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  v10 = 0;
  v51 = (v6 + 32);
  v52 = v6 & 0xC000000000000001;
  v47 = v8;
  v48 = v6;
  v46 = v9;
  while (1)
  {
    if (v52)
    {
      v12 = MEMORY[0x22AA5DCC0](v10, v6);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_43;
      }

      v12 = *&v51[8 * v10];
    }

    v11 = v12;
    if (__OFADD__(v10++, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v9 = sub_224DAF838();
      if (!v9)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if ([v12 isStack])
    {
      break;
    }

LABEL_10:

    v5 = 0;
    if (v10 == v9)
    {
      return v5;
    }
  }

  v6 = [v11 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v14 = sub_224DAF008();

  v49 = v10;
  v50 = v11;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v15 = sub_224DAF838();
  if (!v15)
  {
LABEL_9:

    v10 = v49;
    v11 = v50;
    v8 = v47;
    v6 = v48;
    v9 = v46;
    goto LABEL_10;
  }

LABEL_18:
  v16 = 0;
  v54 = v14 & 0xFFFFFFFFFFFFFF8;
  v55 = v14 & 0xC000000000000001;
  v53 = v14;
  while (1)
  {
    if (v55)
    {
      v17 = MEMORY[0x22AA5DCC0](v16, v14);
    }

    else
    {
      if (v16 >= *(v54 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v6 = v17;
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v8 = &off_27853F000;
    v19 = [v6 extensionIdentity];
    v20 = [a3 extensionIdentity];
    v21 = sub_224DAF6A8();

    if ((v21 & 1) == 0)
    {

      goto LABEL_20;
    }

    v22 = v15;
    v23 = [v6 kind];
    v24 = sub_224DAEE18();
    v26 = v25;

    v27 = a3;
    v28 = [a3 kind];
    v29 = sub_224DAEE18();
    v31 = v30;

    if (v24 == v29 && v26 == v31)
    {
      break;
    }

    v8 = sub_224DAFD88();

    a3 = v27;
    v15 = v22;
    v14 = v53;
    if (v8)
    {

      goto LABEL_35;
    }

LABEL_20:
    ++v16;
    if (v18 == v15)
    {
      goto LABEL_9;
    }
  }

  a3 = v27;
LABEL_35:
  v32 = [v50 uniqueIdentifier];
  v5 = sub_224DAEE18();
  v34 = v33;

  v35 = qword_2813513E8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281364CE8);

  v37 = a3;
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v42;
    *v40 = 138543618;
    *(v40 + 4) = v37;
    *v41 = v37;
    *(v40 + 12) = 2082;
    v43 = v37;
    v44 = sub_224A33F74(v5, v34, &v56);

    *(v40 + 14) = v44;
    _os_log_impl(&dword_224A2F000, v38, v39, "%{public}@ resolved prewarm stack identifier to %{public}s", v40, 0x16u);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {
  }

  return v5;
}