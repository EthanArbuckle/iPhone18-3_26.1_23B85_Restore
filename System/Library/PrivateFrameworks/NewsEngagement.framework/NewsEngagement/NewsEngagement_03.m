uint64_t sub_25BE95180(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v9 = sub_25BEB4764();
    __swift_project_value_buffer(v9, qword_280E77F40);
    v10 = a2;
    v11 = sub_25BEB4744();
    v12 = sub_25BEB4A54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_25BEB4EA4();
      v17 = sub_25BE60F30(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25BE5A000, v11, v12, "Failed fetching request. %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x25F87FD60](v14, -1, -1);
      MEMORY[0x25F87FD60](v13, -1, -1);
    }

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a2;
    v19 = a2;

    sub_25BEB4734();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F90];
  if (a1)
  {
    v21 = [a1 messageActions];
    if (v21)
    {
      v22 = v21;
      sub_25BE80458(0, &unk_280E76678);
      v23 = sub_25BEB49A4();

      sub_25BE9441C(v23, (v20 + 16));
    }
  }

  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = v20;

  sub_25BEB4734();
}

uint64_t sub_25BE95458(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = [*a1 placementsMap];
  if (v4)
  {
    v5 = v4;
    sub_25BE97774(0, &unk_280E766E0, &qword_280E76688, 0x277CEE4B8, MEMORY[0x277D83940]);
    sub_25BEB4834();

    sub_25BE80458(0, &unk_280E766A0);
    v16 = sub_25BE5CD58();
    v6 = sub_25BEB4844();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = [v3 placementsMap];
  if (v7)
  {
    v8 = v7;
    sub_25BE97774(0, &unk_280E766E0, &qword_280E76688, 0x277CEE4B8, MEMORY[0x277D83940]);
    sub_25BEB4834();

    sub_25BE80458(0, &qword_280E766D0);
    sub_25BE5CD58();
    v9 = sub_25BEB4844();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v10 = sub_25BE7BF30(v9);

  v11 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((result & 1) == 0)
  {
    result = sub_25BE84534(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *a2 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_25BE84534((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
    *a2 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 24 * v14;
  *(v15 + 32) = v10;
  *(v15 + 40) = v6;
  *(v15 + 48) = 2;
  return result;
}

void sub_25BE95740(_BYTE *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  if (*a4 >> 62)
  {
    if (!sub_25BEB4C84())
    {
      goto LABEL_9;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25F87F3D0](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_6:
    v10 = v9;
    v11 = [v9 engagementRequest];
    if (v11)
    {
      v12 = v11;

      v13._countAndFlagsBits = v6;
      v13._object = v7;
      EngagementUIPlacement.init(rawValue:)(v13);

LABEL_10:
      *a2 = v12;
      return;
    }

LABEL_9:
    v12 = 0;
    *a1 = 32;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_25BE9584C(_BYTE *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  if (*a4 >> 62)
  {
    if (!sub_25BEB4C84())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25F87F3D0](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_6:
    v10 = v9;
    v11 = [v9 engagementRequest];
    if (!v11)
    {

      v14._countAndFlagsBits = v6;
      v14._object = v7;
      EngagementUIPlacement.init(rawValue:)(v14);
      v13 = [v10 makeDialogRequest];

      goto LABEL_10;
    }

    v12 = v11;

LABEL_8:
    v13 = 0;
    *a1 = 32;
LABEL_10:
    *a2 = v13;
    return;
  }

  __break(1u);
}

uint64_t sub_25BE95978(void (*a1)(uint64_t, void))
{
  swift_beginAccess();

  a1(v2, 0);
}

void sub_25BE959E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_25BE95A70(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v49 = a1;
  v7 = sub_25BEB47F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v11 = sub_25BEB4AA4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  LOBYTE(a3) = sub_25BEB4814();
  (*(v8 + 8))(v11, v7);
  if (a3)
  {
    if (qword_280E76F20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_26:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_25BEB4764();
  __swift_project_value_buffer(v12, qword_280E77F40);
  v13 = sub_25BEB4744();
  v14 = sub_25BEB4A44();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v48;
  v47 = a2;
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51[0] = v18;
    *v17 = 136315138;
    LOBYTE(v52) = v16;
    v19 = EngagementUIPlacement.rawValue.getter();
    v21 = sub_25BE60F30(v19, v20, v51);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_25BE5A000, v13, v14, "Adding observer for placement [%s]", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x25F87FD60](v18, -1, -1);
    MEMORY[0x25F87FD60](v17, -1, -1);
  }

  v22 = OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_observersStore;
  swift_beginAccess();
  v23 = *(v4 + v22);
  if (!*(v23 + 16) || (v24 = sub_25BE65758(v16), (v25 & 1) == 0))
  {
LABEL_21:
    swift_endAccess();
    goto LABEL_22;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  v52 = v26;
  swift_endAccess();
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {

LABEL_10:
      v28 = 0;
      v16 = v26 & 0xF8;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F87F3D0](v28, v26);
          a2 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          a2 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_20;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();

        if (Strong)
        {
          swift_unknownObjectRelease();
          if (Strong == v49)
          {

            return;
          }
        }

        ++v28;
        if (a2 == v27)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_22;
  }

  if (!sub_25BEB4C84())
  {
LABEL_22:
    v30 = sub_25BEB4744();
    v31 = sub_25BEB4A44();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51[0] = v33;
      *v32 = 136315138;
      LOBYTE(v52) = v16;
      v34 = EngagementUIPlacement.rawValue.getter();
      v36 = sub_25BE60F30(v34, v35, v51);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_25BE5A000, v30, v31, "Adding placement [%s] to AMS", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F87FD60](v33, -1, -1);
      MEMORY[0x25F87FD60](v32, -1, -1);
    }

    sub_25BE8CF30();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_25BEB60F0;
    type metadata accessor for WeakEngagementUIEventObserver();
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v38 + 24) = v47;
    swift_unknownObjectWeakAssign();
    *(v37 + 32) = v38;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v4 + v22);
    *(v4 + v22) = 0x8000000000000000;
    sub_25BE85950(v37, v16, isUniquelyReferenced_nonNull_native);
    *(v4 + v22) = v52;
    swift_endAccess();
    v40 = *(v4 + OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_engagement);
    LOBYTE(v51[0]) = v16;
    EngagementUIPlacement.rawValue.getter();
    v41 = sub_25BEB4874();

    v42 = sub_25BEB4874();
    [v40 addObserver:v4 placement:v41 serviceType:v42];

    return;
  }

  v27 = sub_25BEB4C84();

  if (v27)
  {
    goto LABEL_10;
  }

LABEL_30:
  type metadata accessor for WeakEngagementUIEventObserver();
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v43 + 24) = v47;
  v44 = swift_unknownObjectWeakAssign();
  MEMORY[0x25F87F190](v44);
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25BEB49C4();
  }

  sub_25BEB49D4();
  v45 = v52;
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v4 + v22);
  *(v4 + v22) = 0x8000000000000000;
  sub_25BE85950(v45, v48, v46);
  *(v4 + v22) = v50;
  swift_endAccess();
}

void sub_25BE960D4(unint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v7 = sub_25BEB47F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  sub_25BE80458(0, &qword_280E766B0);
  *v11 = sub_25BEB4AA4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = sub_25BEB4814();
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (qword_280E76F20 != -1)
  {
LABEL_43:
    swift_once();
  }

  v14 = sub_25BEB4764();
  v64 = __swift_project_value_buffer(v14, qword_280E77F40);
  v15 = sub_25BEB4744();
  v16 = sub_25BEB4A44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v66[0] = v19;
    *v18 = 136315138;
    LOBYTE(v65) = v12;
    v20 = EngagementUIPlacement.rawValue.getter();
    v22 = sub_25BE60F30(v20, v21, v66);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_25BE5A000, v15, v16, "Removing observer for placement [%s]", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x25F87FD60](v19, -1, -1);
    v23 = v18;
    v4 = v17;
    MEMORY[0x25F87FD60](v23, -1, -1);
  }

  v24 = OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_observersStore;
  swift_beginAccess();
  v25 = *(v4 + v24);
  if (*(v25 + 16) && (v26 = sub_25BE65758(v12), (v27 & 1) != 0))
  {
    v62 = v4;
    v4 = *(*(v25 + 56) + 8 * v26);
    swift_endAccess();
    v63 = v12;
    v61 = v24;
    if (v4 >> 62)
    {
LABEL_45:
      v28 = sub_25BEB4C84();
    }

    else
    {
      v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28)
    {
      v29 = 0;
      v30 = v4 & 0xC000000000000001;
      v12 = v4 & 0xFFFFFFF8;
      do
      {
        if (v30)
        {
          v31 = MEMORY[0x25F87F3D0](v29, v4);
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        else
        {
          if (v29 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v31 = *(v4 + 8 * v29 + 32);

          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_20;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          swift_unknownObjectRelease();
          if (v34 == a1)
          {
            a1 = 0;
            v66[0] = MEMORY[0x277D84F90];
            do
            {
              if (v30)
              {
                v42 = MEMORY[0x25F87F3D0](a1, v4);
                v43 = a1 + 1;
                if (__OFADD__(a1, 1))
                {
                  goto LABEL_41;
                }
              }

              else
              {
                if (a1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_45;
                }

                v42 = *(v4 + 8 * a1 + 32);

                v43 = a1 + 1;
                if (__OFADD__(a1, 1))
                {
                  goto LABEL_41;
                }
              }

              if (v42 == v31)
              {
              }

              else
              {
                sub_25BEB4C14();
                sub_25BEB4C44();
                sub_25BEB4C54();
                sub_25BEB4C24();
              }

              ++a1;
            }

            while (v43 != v28);

            v44 = v66[0];
            if (v66[0] < 0 || (v66[0] & 0x4000000000000000) != 0)
            {
              v49 = sub_25BEB4C84();
              v45 = v63;
              v46 = v62;
              if (!v49)
              {
                goto LABEL_47;
              }

LABEL_39:
              v47 = v61;
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = *(v46 + v47);
              *(v46 + v47) = 0x8000000000000000;
              sub_25BE85950(v44, v45, isUniquelyReferenced_nonNull_native);
              *(v46 + v47) = v65;
            }

            else
            {
              v45 = v63;
              v46 = v62;
              if (*(v66[0] + 16))
              {
                goto LABEL_39;
              }

LABEL_47:

              v50 = sub_25BEB4744();
              v51 = sub_25BEB4A44();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v66[0] = v53;
                *v52 = 136315138;
                LOBYTE(v65) = v45;
                v54 = EngagementUIPlacement.rawValue.getter();
                v56 = sub_25BE60F30(v54, v55, v66);

                *(v52 + 4) = v56;
                _os_log_impl(&dword_25BE5A000, v50, v51, "Removing placement [%s] from AMS", v52, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v53);
                MEMORY[0x25F87FD60](v53, -1, -1);
                MEMORY[0x25F87FD60](v52, -1, -1);
              }

              v57 = v62;
              v58 = *(v62 + OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_engagement);
              LOBYTE(v66[0]) = v45;
              EngagementUIPlacement.rawValue.getter();
              v59 = sub_25BEB4874();

              v60 = sub_25BEB4874();
              [v58 removeObserver:v57 placement:v59 serviceType:v60];

              swift_beginAccess();
              sub_25BE7B6C0(0, v45);
            }

            swift_endAccess();

            return;
          }
        }

        ++v29;
      }

      while (v32 != v28);
    }

    LOBYTE(v12) = v63;
  }

  else
  {
LABEL_21:
    swift_endAccess();
  }

  v35 = sub_25BEB4744();
  v36 = sub_25BEB4A54();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66[0] = v38;
    *v37 = 136315138;
    LOBYTE(v65) = v12;
    v39 = EngagementUIPlacement.rawValue.getter();
    v41 = sub_25BE60F30(v39, v40, v66);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_25BE5A000, v35, v36, "Cannot remove observer for placement: [%s]", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x25F87FD60](v38, -1, -1);
    MEMORY[0x25F87FD60](v37, -1, -1);
  }
}

void sub_25BE968E4(void *a1, int a2, void *a3, void *a4, void *aBlock, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a4;
  v17 = a1;
  sub_25BE96EC0(a4, a6, a7, a8);
  _Block_release(v14);
}

void sub_25BE96994(unint64_t a1, void *a2, char a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25BEB4C84())
  {
    v5 = 0;
    v16 = v3 & 0xFFFFFFFFFFFFFF8;
    v17 = v3 & 0xC000000000000001;
    while (v17)
    {
      v6 = MEMORY[0x25F87F3D0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = v3;
        v9 = *(v6 + 24);
        ObjectType = swift_getObjectType();
        v19 = a2;
        v20 = -126;
        v18 = a3;
        v11 = *(v9 + 8);
        v12 = a2;
        v13 = v9;
        v3 = v8;
        v11(&v19, &v18, ObjectType, v13);

        swift_unknownObjectRelease();
        sub_25BE779B0(v19, v20);
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *(v16 + 16))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

unint64_t sub_25BE96BEC(unint64_t result, uint64_t a2, char a3, char a4)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F87F3D0](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          v15 = a2;
          v16 = a3;
          v14 = a4;
          (*(v10 + 8))(&v15, &v14, ObjectType, v10);
          swift_unknownObjectRelease();
        }

        ++v7;
        if (v9 == v6)
        {
          return result;
        }
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_25BEB4C84();
      v6 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_25BE96DEC()
{
  result = qword_280E76BA8;
  if (!qword_280E76BA8)
  {
    type metadata accessor for EngagementEventProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E76BA8);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BE96E6C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_25BE96EC0(void *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v8 = sub_25BEB4764();
  __swift_project_value_buffer(v8, qword_280E77F40);
  v9 = a1;
  oslog = sub_25BEB4744();
  v10 = sub_25BEB4A54();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_25BE97774(0, a2, a3, a4, MEMORY[0x277D83D88]);
    v13 = sub_25BEB4AD4();
    v15 = sub_25BE60F30(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25BE5A000, oslog, v10, "request: [%s] not handled", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x25F87FD60](v12, -1, -1);
    MEMORY[0x25F87FD60](v11, -1, -1);
  }

  else
  {
  }
}

void sub_25BE97080(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v12 = sub_25BEB4764();
  __swift_project_value_buffer(v12, qword_280E77F40);
  v13 = a1;

  v14 = sub_25BEB4744();
  v15 = sub_25BEB4A44();

  if (os_log_type_enabled(v14, v15))
  {
    v37 = a5;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v16 = 136315394;
    sub_25BE97774(0, &unk_27FBE43C0, &unk_280E766A0, 0x277CEE4C8, MEMORY[0x277D83D88]);
    v17 = sub_25BEB4AD4();
    v19 = a1;
    v20 = v13;
    v21 = a4;
    v22 = a2;
    v23 = sub_25BE60F30(v17, v18, v38);

    *(v16 + 4) = v23;
    a2 = v22;
    a4 = v21;
    v13 = v20;
    a1 = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_25BE60F30(a2, a3, v38);
    _os_log_impl(&dword_25BE5A000, v14, v15, "engagement didUpdate request: [%s] placement: [%s]", v16, 0x16u);
    swift_arrayDestroy();
    v6 = v5;
    MEMORY[0x25F87FD60](v36, -1, -1);
    v24 = v16;
    a5 = v37;
    MEMORY[0x25F87FD60](v24, -1, -1);
  }

  if (a1)
  {
    v25 = v13;

    v26._countAndFlagsBits = a2;
    v26._object = a3;
    EngagementUIPlacement.init(rawValue:)(v26);
    if (LOBYTE(v38[0]) != 32 && (a4 == 1937204590 && a5 == 0xE400000000000000 || (sub_25BEB4E64() & 1) != 0))
    {

      v27._countAndFlagsBits = a2;
      v27._object = a3;
      EngagementUIPlacement.init(rawValue:)(v27);
      v28 = v38[0];
      if (LOBYTE(v38[0]) != 32)
      {
        v29 = OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_observersStore;
        swift_beginAccess();
        v30 = *(v6 + v29);
        if (*(v30 + 16))
        {
          v31 = sub_25BE65758(v28);
          if (v32)
          {
            v33 = *(*(v30 + 56) + 8 * v31);
            swift_endAccess();
            v34 = swift_allocObject();
            *(v34 + 16) = v33;
            *(v34 + 24) = v25;
            *(v34 + 32) = v28;
            v35 = v25;

            sub_25BEB4734();

            return;
          }
        }

        swift_endAccess();
      }
    }
  }
}

void sub_25BE973D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v12 = sub_25BEB4764();
  __swift_project_value_buffer(v12, qword_280E77F40);
  v13 = a1;

  v14 = sub_25BEB4744();
  v15 = sub_25BEB4A44();

  v34 = v13;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35[0] = v33;
    *v16 = 136315394;
    sub_25BE97774(0, &qword_280E766C0, &qword_280E766D0, 0x277CEE488, MEMORY[0x277D83D88]);
    v17 = sub_25BEB4AD4();
    v19 = sub_25BE60F30(v17, v18, v35);

    *(v16 + 4) = v19;
    v6 = v5;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_25BE60F30(a2, a3, v35);
    _os_log_impl(&dword_25BE5A000, v14, v15, "engagement didUpdate request: [%s] placement: [%s]", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F87FD60](v33, -1, -1);
    MEMORY[0x25F87FD60](v16, -1, -1);
  }

  v20._countAndFlagsBits = a2;
  v20._object = a3;
  EngagementUIPlacement.init(rawValue:)(v20);
  v21 = LOBYTE(v35[0]);
  if (LOBYTE(v35[0]) != 32)
  {
    if (a4 == 1937204590 && a5 == 0xE400000000000000)
    {
      if (LOBYTE(v35[0]) - 1 > 0x1E)
      {
        return;
      }
    }

    else
    {
      v22 = sub_25BEB4E64();
      if ((v21 - 1) > 0x1E || (v22 & 1) == 0)
      {
        return;
      }
    }

    if (a1)
    {
      v23 = 66;
    }

    else
    {
      a1 = 2;
      v23 = 0;
    }

    v24 = v34;

    v25._countAndFlagsBits = a2;
    v25._object = a3;
    EngagementUIPlacement.init(rawValue:)(v25);
    v26 = v35[0];
    if (LOBYTE(v35[0]) != 32)
    {
      v27 = OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_observersStore;
      swift_beginAccess();
      v28 = *(v6 + v27);
      if (*(v28 + 16))
      {
        v29 = sub_25BE65758(v26);
        if (v30)
        {
          v31 = *(*(v28 + 56) + 8 * v29);
          swift_endAccess();
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          *(v32 + 24) = a1;
          *(v32 + 32) = v23;
          *(v32 + 33) = v26;

          sub_25BE779E4(a1, v23);
          sub_25BEB4734();
          sub_25BE779B0(a1, v23);

          return;
        }
      }

      swift_endAccess();
    }

    sub_25BE779B0(a1, v23);
  }
}

void sub_25BE97774(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25BE80458(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25BE977F4()
{
  sub_25BEB48C4();
}

unint64_t sub_25BE97958(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v2 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000023;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000021;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25BE97A94()
{
  sub_25BEB4F04();
  sub_25BE977F4();
  return sub_25BEB4F24();
}

uint64_t sub_25BE97AE4()
{
  sub_25BEB4F04();
  sub_25BE977F4();
  return sub_25BEB4F24();
}

uint64_t sub_25BE97B28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BE992A0();
  *a1 = result;
  return result;
}

unint64_t sub_25BE97B58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BE97958(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BE97BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BE992A0();
  *a1 = result;
  return result;
}

uint64_t sub_25BE97BD4(uint64_t a1)
{
  v2 = sub_25BE985EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE97C10(uint64_t a1)
{
  v2 = sub_25BE985EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *EngagementUpsellPlacement.init(version:forceBaseConfiguration:baseBannerConfiguration:newsPlusBannerConfiguration:savingsBannerConfiguration:priceReductionBannerConfiguration:bestValueBannerConfiguration:suggestionBannerConfiguration:newsPlusViaOfferBannerConfiguration:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, char a3@<W1>, char a4@<W2>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11)
{
  if (a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  v17 = a4 & 1;
  memcpy(&v19[7], __src, 0x138uLL);
  *a9 = v16;
  *(a9 + 8) = v17;
  memcpy((a9 + 9), v19, 0x13FuLL);
  memcpy((a9 + 328), a5, 0x138uLL);
  memcpy((a9 + 640), a6, 0x138uLL);
  memcpy((a9 + 952), a7, 0x138uLL);
  memcpy((a9 + 1264), a8, 0x138uLL);
  memcpy((a9 + 1576), a10, 0x138uLL);

  return memcpy((a9 + 1888), a11, 0x138uLL);
}

uint64_t EngagementUpsellPlacement.baseBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x138uLL);
  memcpy(a1, (v1 + 16), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t sub_25BE97DB0(uint64_t a1, uint64_t a2)
{
  sub_25BE97E14();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25BE97E14()
{
  if (!qword_280E76BB0)
  {
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76BB0);
    }
  }
}

uint64_t EngagementUpsellPlacement.newsPlusBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 328), 0x138uLL);
  memcpy(a1, (v1 + 328), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.savingsBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 640), 0x138uLL);
  memcpy(a1, (v1 + 640), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.priceReductionBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 952), 0x138uLL);
  memcpy(a1, (v1 + 952), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.bestValueBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1264), 0x138uLL);
  memcpy(a1, (v1 + 1264), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.suggestionBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1576), 0x138uLL);
  memcpy(a1, (v1 + 1576), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.newsPlusViaOfferBannerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1888), 0x138uLL);
  memcpy(a1, (v1 + 1888), 0x138uLL);
  return sub_25BE97DB0(__dst, v4);
}

uint64_t EngagementUpsellPlacement.encode(to:)(uint64_t a1, uint64_t a2)
{
  v35 = v3;
  v4 = MEMORY[0x28223BE20](a1, a2);
  sub_25BE98CE4(0, &qword_27FBE43D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v13[1] = v2[8];
  memcpy(v28, v2 + 16, sizeof(v28));
  memcpy(v29, v2 + 328, sizeof(v29));
  memcpy(v30, v2 + 640, sizeof(v30));
  memcpy(v31, v2 + 952, sizeof(v31));
  memcpy(v32, v2 + 1264, sizeof(v32));
  memcpy(v33, v2 + 1576, sizeof(v33));
  memcpy(v34, v2 + 1888, 0x138uLL);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BE985EC();
  sub_25BEB4F44();
  v27[0] = 0;
  v11 = v35;
  sub_25BEB4E24();
  if (!v11)
  {
    v27[0] = 1;
    sub_25BEB4E04();
    memcpy(v27, v28, sizeof(v27));
    v26[319] = 2;
    sub_25BE97DB0(v28, v26);
    sub_25BE98640();
    sub_25BEB4DE4();
    memcpy(v26, v27, 0x138uLL);
    sub_25BE98694(v26);
    memcpy(v25, v29, sizeof(v25));
    v24[319] = 3;
    sub_25BE97DB0(v29, v24);
    sub_25BEB4DE4();
    memcpy(v24, v25, 0x138uLL);
    sub_25BE98694(v24);
    memcpy(v23, v30, sizeof(v23));
    v22[319] = 4;
    sub_25BE97DB0(v30, v22);
    sub_25BEB4DE4();
    memcpy(v22, v23, 0x138uLL);
    sub_25BE98694(v22);
    memcpy(v21, v31, sizeof(v21));
    v20[319] = 5;
    sub_25BE97DB0(v31, v20);
    sub_25BEB4DE4();
    memcpy(v20, v21, 0x138uLL);
    sub_25BE98694(v20);
    memcpy(v19, v32, sizeof(v19));
    v18[319] = 6;
    sub_25BE97DB0(v32, v18);
    sub_25BEB4DE4();
    memcpy(v18, v19, 0x138uLL);
    sub_25BE98694(v18);
    memcpy(v17, v33, sizeof(v17));
    v16[319] = 7;
    sub_25BE97DB0(v33, v16);
    sub_25BEB4DE4();
    memcpy(v16, v17, 0x138uLL);
    sub_25BE98694(v16);
    memcpy(v15, v34, sizeof(v15));
    v14[319] = 8;
    sub_25BE97DB0(v34, v14);
    sub_25BEB4DE4();
    memcpy(v14, v15, 0x138uLL);
    sub_25BE98694(v14);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_25BE985EC()
{
  result = qword_27FBE43D8;
  if (!qword_27FBE43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE43D8);
  }

  return result;
}

unint64_t sub_25BE98640()
{
  result = qword_27FBE43E0;
  if (!qword_27FBE43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE43E0);
  }

  return result;
}

uint64_t sub_25BE98694(uint64_t a1)
{
  sub_25BE97E14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EngagementUpsellPlacement.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  sub_25BE98CE4(0, &qword_27FBE43E8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - v10;
  v12 = v3[3];
  v35 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v12);
  sub_25BE985EC();
  sub_25BEB4F34();
  if (!v2)
  {
    v34[0] = 0;
    v13 = sub_25BEB4D34();
    v19 = v14;
    v20 = v13;
    v34[0] = 1;
    v18 = sub_25BEB4D14();
    v33[319] = 2;
    sub_25BE98D48();
    sub_25BEB4D44();
    memcpy(v33, v34, 0x138uLL);
    v31[319] = 3;
    sub_25BEB4D44();
    memcpy(v31, v32, 0x138uLL);
    v29[319] = 4;
    sub_25BEB4D44();
    memcpy(v29, v30, 0x138uLL);
    v27[319] = 5;
    sub_25BEB4D44();
    memcpy(v27, v28, 0x138uLL);
    v25[319] = 6;
    sub_25BEB4D44();
    memcpy(v25, v26, 0x138uLL);
    v23[319] = 7;
    sub_25BEB4D44();
    memcpy(v23, v24, 0x138uLL);
    v21[319] = 8;
    sub_25BEB4D44();
    (*(v8 + 8))(v11, v7);
    if (v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = v20;
    }

    v17 = v18 & 1;
    memcpy(&v21[7], v33, 0x138uLL);
    *v5 = v16;
    *(v5 + 8) = v17;
    memcpy((v5 + 9), v21, 0x13FuLL);
    memcpy((v5 + 328), v31, 0x138uLL);
    memcpy((v5 + 640), v29, 0x138uLL);
    memcpy((v5 + 952), v27, 0x138uLL);
    memcpy((v5 + 1264), v25, 0x138uLL);
    memcpy((v5 + 1576), v23, 0x138uLL);
    memcpy((v5 + 1888), v22, 0x138uLL);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

void sub_25BE98CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BE985EC();
    v7 = a3(a1, &type metadata for EngagementUpsellPlacement.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BE98D48()
{
  result = qword_27FBE43F0;
  if (!qword_27FBE43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE43F0);
  }

  return result;
}

uint64_t sub_25BE98DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 2200) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 2200) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUpsellPlacement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementUpsellPlacement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BE9919C()
{
  result = qword_27FBE43F8;
  if (!qword_27FBE43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE43F8);
  }

  return result;
}

unint64_t sub_25BE991F4()
{
  result = qword_27FBE4400;
  if (!qword_27FBE4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4400);
  }

  return result;
}

unint64_t sub_25BE9924C()
{
  result = qword_27FBE4408;
  if (!qword_27FBE4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4408);
  }

  return result;
}

uint64_t sub_25BE992A0()
{
  v0 = sub_25BEB4CD4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE992EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25BE99334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static EngagementUpsellCondition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v3 >> 60 != 6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v4 != 7)
        {
          if (v3 >> 60 == 8)
          {
            v18 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v23 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v24 = v18;

            goto LABEL_31;
          }

LABEL_41:
          v17 = 0;
          return v17 & 1;
        }

        if (v3 >> 60 != 7)
        {
          goto LABEL_41;
        }
      }

      v8 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v9 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *(v8 + 24);
      v11 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v23 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v9;

      if (static EngagementUpsellCondition.== infix(_:_:)(&v24, &v23))
      {
        v23 = v11;
        v24 = v10;
LABEL_31:
        v17 = static EngagementUpsellCondition.== infix(_:_:)(&v24, &v23);

        return v17 & 1;
      }

      goto LABEL_41;
    }

    if (v4 == 4)
    {
      if (v3 >> 60 != 4)
      {
        goto LABEL_41;
      }
    }

    else if (v3 >> 60 != 5)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 60 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v3 >> 60 != 3)
    {
      goto LABEL_41;
    }

LABEL_33:
    v19 = (v2 & 0xFFFFFFFFFFFFFFFLL);
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v3 &= 0xFFFFFFFFFFFFFFFuLL;
    goto LABEL_34;
  }

  if (v4)
  {
    if (v3 >> 60 != 1)
    {
      goto LABEL_41;
    }

    v12 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v13 = *(v12 + 32);
    v14 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v15 = *(v14 + 32);
    v16 = *(v12 + 16) == *(v14 + 16) && *(v12 + 24) == *(v14 + 24);
    if (!v16 && (sub_25BEB4E64() & 1) == 0)
    {
      goto LABEL_41;
    }

    v17 = v13 ^ v15 ^ 1;
    return v17 & 1;
  }

  if (v3 >> 60)
  {
    goto LABEL_41;
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
LABEL_34:
  v20 = *(v3 + 32);
  v21 = v5 == *(v3 + 16) && v6 == *(v3 + 24);
  if (!v21 && (sub_25BEB4E64() & 1) == 0)
  {
    goto LABEL_41;
  }

  v17 = v7 == v20;
  return v17 & 1;
}

unint64_t sub_25BE99590(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x496F546C61757165;
    v6 = 0x5472657461657267;
    if (a1 != 2)
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      v5 = 0x426F546C61757165;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 29295;
    v2 = 6581857;
    if (a1 != 7)
    {
      v2 = 7630702;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6168547373656CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25BE996BC(uint64_t a1)
{
  v2 = sub_25BE9ACFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE996F8(uint64_t a1)
{
  v2 = sub_25BE9ACFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE9973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE9D68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE99764(uint64_t a1)
{
  v2 = sub_25BE9AF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE997A0(uint64_t a1)
{
  v2 = sub_25BE9AF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE997DC(uint64_t a1)
{
  v2 = sub_25BE9AEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99818(uint64_t a1)
{
  v2 = sub_25BE9AEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE99854(uint64_t a1)
{
  v2 = sub_25BE9AF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99890(uint64_t a1)
{
  v2 = sub_25BE9AF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE998CC(uint64_t a1)
{
  v2 = sub_25BE9AEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99908(uint64_t a1)
{
  v2 = sub_25BE9AEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE99944(uint64_t a1)
{
  v2 = sub_25BE9AE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99980(uint64_t a1)
{
  v2 = sub_25BE9AE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE999BC(uint64_t a1)
{
  v2 = sub_25BE9ADF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE999F8(uint64_t a1)
{
  v2 = sub_25BE9ADF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE99A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_25BEB4E64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25BEB4E64();

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

uint64_t sub_25BE99B0C(uint64_t a1)
{
  v2 = sub_25BE9ADA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99B48(uint64_t a1)
{
  v2 = sub_25BE9ADA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE99B84()
{
  sub_25BEB4F04();
  MEMORY[0x25F87F720](0);
  return sub_25BEB4F24();
}

uint64_t sub_25BE99BF0()
{
  sub_25BEB4F04();
  MEMORY[0x25F87F720](0);
  return sub_25BEB4F24();
}

uint64_t sub_25BE99C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25BEB4E64();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25BE99CDC(uint64_t a1)
{
  v2 = sub_25BE9ACA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99D18(uint64_t a1)
{
  v2 = sub_25BE9ACA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE99D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v5 || (sub_25BEB4E64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25BEB4E64();

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

uint64_t sub_25BE99E2C(uint64_t a1)
{
  v2 = sub_25BE9AD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE99E68(uint64_t a1)
{
  v2 = sub_25BE9AD50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellCondition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84538];
  sub_25BE9C740(0, &qword_27FBE4410, sub_25BE9ACA8, &type metadata for EngagementUpsellCondition.NotCodingKeys, MEMORY[0x277D84538]);
  v99 = v5;
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v97 = &v81 - v7;
  sub_25BE9C740(0, &qword_27FBE4420, sub_25BE9ACFC, &type metadata for EngagementUpsellCondition.AndCodingKeys, v4);
  v100 = v8;
  v89 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v98 = &v81 - v10;
  sub_25BE9C740(0, &qword_27FBE4430, sub_25BE9AD50, &type metadata for EngagementUpsellCondition.OrCodingKeys, v4);
  v96 = v11;
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v95 = &v81 - v13;
  sub_25BE9C740(0, &qword_27FBE4440, sub_25BE9ADA4, &type metadata for EngagementUpsellCondition.LessThanOrEqualToIntCodingKeys, v4);
  v94 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v93 = &v81 - v16;
  sub_25BE9C740(0, &qword_27FBE4450, sub_25BE9ADF8, &type metadata for EngagementUpsellCondition.LessThanIntCodingKeys, v4);
  v92 = v17;
  v85 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v91 = &v81 - v19;
  sub_25BE9C740(0, &qword_27FBE4460, sub_25BE9AE4C, &type metadata for EngagementUpsellCondition.GreaterThanOrEqualToIntCodingKeys, v4);
  v105 = v20;
  v83 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v104 = &v81 - v22;
  sub_25BE9C740(0, &qword_27FBE4470, sub_25BE9AEA0, &type metadata for EngagementUpsellCondition.GreaterThanIntCodingKeys, v4);
  v90 = v23;
  v84 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v103 = &v81 - v25;
  sub_25BE9C740(0, &qword_27FBE4480, sub_25BE9AEF4, &type metadata for EngagementUpsellCondition.EqualToBoolCodingKeys, v4);
  v102 = v26;
  v82 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v101 = &v81 - v28;
  sub_25BE9C740(0, &qword_27FBE4490, sub_25BE9AF48, &type metadata for EngagementUpsellCondition.EqualToIntCodingKeys, v4);
  v30 = v29;
  v81 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v81 - v32;
  sub_25BE9C740(0, &qword_27FBE44A0, sub_25BE9AF9C, &type metadata for EngagementUpsellCondition.CodingKeys, v4);
  v35 = v34;
  v106 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v81 - v37;
  v39 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE9AF9C();
  v108 = v38;
  sub_25BEB4F44();
  v40 = v39 >> 60;
  if ((v39 >> 60) <= 3)
  {
    v50 = v30;
    v52 = v101;
    v51 = v102;
    v54 = v103;
    v53 = v104;
    v55 = v105;
    if (v40 > 1)
    {
      v59 = v108;
      if (v40 != 2)
      {
        LOBYTE(v110) = 3;
        sub_25BE9AE4C();
        sub_25BEB4DA4();
        LOBYTE(v110) = 0;
        v71 = v107;
        sub_25BEB4DF4();
        if (!v71)
        {
          LOBYTE(v110) = 1;
          sub_25BEB4E24();
        }

        (*(v83 + 8))(v53, v55);
        return (*(v106 + 8))(v59, v35);
      }

      LOBYTE(v110) = 2;
      sub_25BE9AEA0();
      sub_25BEB4DA4();
      LOBYTE(v110) = 0;
      v60 = v90;
      v61 = v107;
      sub_25BEB4DF4();
      if (!v61)
      {
        v78 = v35;
        v79 = v59;
        v80 = v78;
        LOBYTE(v110) = 1;
        sub_25BEB4E24();
        (*(v84 + 8))(v54, v60);
        return (*(v106 + 8))(v79, v80);
      }

      (*(v84 + 8))(v54, v60);
    }

    else
    {
      if (!v40)
      {
        LOBYTE(v110) = 0;
        sub_25BE9AF48();
        v56 = v108;
        sub_25BEB4DA4();
        LOBYTE(v110) = 0;
        v57 = v107;
        sub_25BEB4DF4();
        if (!v57)
        {
          LOBYTE(v110) = 1;
          sub_25BEB4E24();
        }

        (*(v81 + 8))(v33, v50);
        return (*(v106 + 8))(v56, v35);
      }

      LOBYTE(v110) = 1;
      sub_25BE9AEF4();
      v59 = v108;
      sub_25BEB4DA4();
      LOBYTE(v110) = 0;
      v70 = v107;
      sub_25BEB4DF4();
      if (!v70)
      {
        LOBYTE(v110) = 1;
        sub_25BEB4E04();
        (*(v82 + 8))(v52, v51);
        return (*(v106 + 8))(v108, v35);
      }

      (*(v82 + 8))(v52, v51);
    }

    return (*(v106 + 8))(v59, v35);
  }

  if (v40 > 5)
  {
    v41 = v35;
    v42 = v108;
    if (v40 == 6)
    {
      v66 = v39 & 0xFFFFFFFFFFFFFFFLL;
      v67 = *((v39 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *(v66 + 24);
      LOBYTE(v110) = 6;
      sub_25BE9AD50();
      v46 = v95;
      sub_25BEB4DA4();
      v110 = v67;
      v109 = 0;
      sub_25BE9AFF0();
      v47 = v96;
      v69 = v107;
      sub_25BEB4E34();
      if (!v69)
      {
        v110 = v68;
        v109 = 1;
        sub_25BEB4E34();
      }

      v49 = v87;
    }

    else
    {
      if (v40 != 7)
      {
        v72 = *((v39 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v110) = 8;
        sub_25BE9ACA8();
        v73 = v97;
        sub_25BEB4DA4();
        v110 = v72;
        sub_25BE9AFF0();
        v74 = v99;
        sub_25BEB4E34();
        (*(v88 + 8))(v73, v74);
        return (*(v106 + 8))(v42, v41);
      }

      v43 = v39 & 0xFFFFFFFFFFFFFFFLL;
      v44 = *((v39 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *(v43 + 24);
      LOBYTE(v110) = 7;
      sub_25BE9ACFC();
      v46 = v98;
      sub_25BEB4DA4();
      v110 = v44;
      v109 = 0;
      sub_25BE9AFF0();
      v47 = v100;
      v48 = v107;
      sub_25BEB4E34();
      if (!v48)
      {
        v110 = v45;
        v109 = 1;
        sub_25BEB4E34();
      }

      v49 = v89;
    }

    (*(v49 + 8))(v46, v47);
    return (*(v106 + 8))(v42, v41);
  }

  v62 = v35;
  v63 = v108;
  if (v40 == 4)
  {
    LOBYTE(v110) = 4;
    sub_25BE9ADF8();
    v75 = v91;
    sub_25BEB4DA4();
    LOBYTE(v110) = 0;
    v76 = v92;
    v64 = v107;
    sub_25BEB4DF4();
    if (!v64)
    {
      LOBYTE(v110) = 1;
      sub_25BEB4E24();
    }

    v65 = &v111;
  }

  else
  {
    LOBYTE(v110) = 5;
    sub_25BE9ADA4();
    v75 = v93;
    sub_25BEB4DA4();
    LOBYTE(v110) = 0;
    v76 = v94;
    v77 = v107;
    sub_25BEB4DF4();
    if (!v77)
    {
      LOBYTE(v110) = 1;
      sub_25BEB4E24();
    }

    v65 = &v112;
  }

  (*(*(v65 - 32) + 8))(v75, v76);
  return (*(v106 + 8))(v63, v62);
}

unint64_t sub_25BE9ACA8()
{
  result = qword_27FBE4418;
  if (!qword_27FBE4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4418);
  }

  return result;
}

unint64_t sub_25BE9ACFC()
{
  result = qword_27FBE4428;
  if (!qword_27FBE4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4428);
  }

  return result;
}

unint64_t sub_25BE9AD50()
{
  result = qword_27FBE4438;
  if (!qword_27FBE4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4438);
  }

  return result;
}

unint64_t sub_25BE9ADA4()
{
  result = qword_27FBE4448;
  if (!qword_27FBE4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4448);
  }

  return result;
}

unint64_t sub_25BE9ADF8()
{
  result = qword_27FBE4458;
  if (!qword_27FBE4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4458);
  }

  return result;
}

unint64_t sub_25BE9AE4C()
{
  result = qword_27FBE4468;
  if (!qword_27FBE4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4468);
  }

  return result;
}

unint64_t sub_25BE9AEA0()
{
  result = qword_27FBE4478;
  if (!qword_27FBE4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4478);
  }

  return result;
}

unint64_t sub_25BE9AEF4()
{
  result = qword_27FBE4488;
  if (!qword_27FBE4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4488);
  }

  return result;
}

unint64_t sub_25BE9AF48()
{
  result = qword_27FBE4498;
  if (!qword_27FBE4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4498);
  }

  return result;
}

unint64_t sub_25BE9AF9C()
{
  result = qword_27FBE44A8;
  if (!qword_27FBE44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE44A8);
  }

  return result;
}

unint64_t sub_25BE9AFF0()
{
  result = qword_27FBE44B0;
  if (!qword_27FBE44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE44B0);
  }

  return result;
}

uint64_t EngagementUpsellCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v142 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_25BE9C740(0, &qword_27FBE44B8, sub_25BE9ACA8, &type metadata for EngagementUpsellCondition.NotCodingKeys, MEMORY[0x277D844C8]);
  v141 = v4;
  v131 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v136 = &v114 - v6;
  sub_25BE9C740(0, &qword_27FBE44C0, sub_25BE9ACFC, &type metadata for EngagementUpsellCondition.AndCodingKeys, v3);
  v128 = v7;
  v132 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v137 = &v114 - v9;
  sub_25BE9C740(0, &qword_27FBE44C8, sub_25BE9AD50, &type metadata for EngagementUpsellCondition.OrCodingKeys, v3);
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v140 = &v114 - v12;
  sub_25BE9C740(0, &qword_27FBE44D0, sub_25BE9ADA4, &type metadata for EngagementUpsellCondition.LessThanOrEqualToIntCodingKeys, v3);
  v126 = *(v13 - 8);
  v127 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v135 = &v114 - v15;
  sub_25BE9C740(0, &qword_27FBE44D8, sub_25BE9ADF8, &type metadata for EngagementUpsellCondition.LessThanIntCodingKeys, v3);
  v124 = *(v16 - 8);
  v125 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v139 = &v114 - v18;
  sub_25BE9C740(0, &qword_27FBE44E0, sub_25BE9AE4C, &type metadata for EngagementUpsellCondition.GreaterThanOrEqualToIntCodingKeys, v3);
  v123 = v19;
  v122 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v133 = &v114 - v21;
  sub_25BE9C740(0, &qword_27FBE44E8, sub_25BE9AEA0, &type metadata for EngagementUpsellCondition.GreaterThanIntCodingKeys, v3);
  v121 = v22;
  v120 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v138 = &v114 - v24;
  sub_25BE9C740(0, &qword_27FBE44F0, sub_25BE9AEF4, &type metadata for EngagementUpsellCondition.EqualToBoolCodingKeys, v3);
  v119 = v25;
  v118 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v134 = &v114 - v27;
  sub_25BE9C740(0, &qword_27FBE44F8, sub_25BE9AF48, &type metadata for EngagementUpsellCondition.EqualToIntCodingKeys, v3);
  v29 = v28;
  v117 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v114 - v31;
  sub_25BE9C740(0, &qword_27FBE4500, sub_25BE9AF9C, &type metadata for EngagementUpsellCondition.CodingKeys, v3);
  v34 = v33;
  v35 = *(v33 - 1);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v114 - v37;
  v39 = a1;
  v40 = a1[3];
  v144 = v39;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  sub_25BE9AF9C();
  v41 = v143;
  sub_25BEB4F34();
  if (v41)
  {
    goto LABEL_13;
  }

  v42 = v32;
  v114 = v29;
  v44 = v138;
  v43 = v139;
  v45 = v140;
  v115 = 0;
  v143 = v35;
  v46 = v141;
  v47 = v142;
  v116 = v38;
  v48 = sub_25BEB4D94();
  if (*(v48 + 16) != 1 || (v49 = *(v48 + 32), v49 == 9))
  {
    v53 = sub_25BEB4BF4();
    swift_allocError();
    v55 = v54;
    sub_25BE9C7A8();
    *v55 = &type metadata for EngagementUpsellCondition;
    v50 = v116;
    sub_25BEB4CF4();
    sub_25BEB4BD4();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v48 + 32) <= 3u)
  {
    if (*(v48 + 32) <= 1u)
    {
      v57 = v115;
      if (*(v48 + 32))
      {
        v145 = 1;
        sub_25BE9AEF4();
        v75 = v134;
        v50 = v116;
        sub_25BEB4CE4();
        if (!v57)
        {
          v76 = v34;
          v77 = swift_allocObject();
          v145 = 0;
          v78 = v119;
          v79 = sub_25BEB4D54();
          v80 = v75;
          v81 = v143;
          *(v77 + 16) = v79;
          *(v77 + 24) = v102;
          v145 = 1;
          v113 = sub_25BEB4D64();
          (*(v118 + 8))(v80, v78);
          (*(v81 + 8))(v116, v76);
          swift_unknownObjectRelease();
          *(v77 + 32) = v113 & 1;
          v60 = (v77 | 0x1000000000000000);
          v92 = v144;
          goto LABEL_40;
        }
      }

      else
      {
        v145 = 0;
        sub_25BE9AF48();
        v58 = v42;
        v50 = v116;
        sub_25BEB4CE4();
        if (!v57)
        {
          v59 = v34;
          v60 = swift_allocObject();
          v145 = 0;
          v61 = v114;
          v60[2] = sub_25BEB4D54();
          v60[3] = v96;
          v145 = 1;
          v97 = sub_25BEB4D74();
          v98 = (v143 + 8);
          v112 = v97;
          (*(v117 + 8))(v58, v61);
          (*v98)(v116, v59);
          swift_unknownObjectRelease();
          v60[4] = v112;
LABEL_39:
          v92 = v144;
          goto LABEL_40;
        }
      }

LABEL_11:
      (*(v143 + 8))(v50, v34);
LABEL_12:
      swift_unknownObjectRelease();
LABEL_13:
      v92 = v144;
      return __swift_destroy_boxed_opaque_existential_0Tm(v92);
    }

    v62 = v115;
    if (v49 == 2)
    {
      v145 = 2;
      sub_25BE9AEA0();
      v63 = v44;
      v64 = v116;
      sub_25BEB4CE4();
      if (!v62)
      {
        v65 = swift_allocObject();
        v145 = 0;
        v66 = v121;
        *(v65 + 16) = sub_25BEB4D54();
        *(v65 + 24) = v99;
        v145 = 1;
        v100 = sub_25BEB4D74();
        v101 = (v143 + 8);
        (*(v120 + 8))(v63, v66);
        (*v101)(v64, v34);
        swift_unknownObjectRelease();
        *(v65 + 32) = v100;
        v60 = (v65 | 0x2000000000000000);
LABEL_38:
        v92 = v144;
        goto LABEL_40;
      }
    }

    else
    {
      v145 = 3;
      sub_25BE9AE4C();
      v82 = v133;
      v64 = v116;
      sub_25BEB4CE4();
      if (!v62)
      {
        v90 = swift_allocObject();
        v145 = 0;
        v91 = v123;
        *(v90 + 16) = sub_25BEB4D54();
        *(v90 + 24) = v103;
        v145 = 1;
        v104 = sub_25BEB4D74();
        v105 = (v143 + 8);
        (*(v122 + 8))(v82, v91);
        (*v105)(v64, v34);
        swift_unknownObjectRelease();
        *(v90 + 32) = v104;
        v60 = (v90 | 0x3000000000000000);
        goto LABEL_38;
      }
    }

    (*(v143 + 8))(v64, v34);
    goto LABEL_12;
  }

  v50 = v116;
  if (*(v48 + 32) <= 5u)
  {
    if (v49 == 4)
    {
      v145 = 4;
      sub_25BE9ADF8();
      v67 = v43;
      v68 = v115;
      sub_25BEB4CE4();
      if (!v68)
      {
        v69 = v50;
        v70 = swift_allocObject();
        v145 = 0;
        v71 = v125;
        *(v70 + 16) = sub_25BEB4D54();
        *(v70 + 24) = v106;
        v145 = 1;
        v107 = sub_25BEB4D74();
        v108 = (v143 + 8);
        (*(v124 + 8))(v67, v71);
        (*v108)(v69, v34);
        swift_unknownObjectRelease();
        *(v70 + 32) = v107;
        v60 = (v70 | 0x4000000000000000);
        goto LABEL_39;
      }
    }

    else
    {
      v145 = 5;
      sub_25BE9ADA4();
      v85 = v135;
      v86 = v115;
      sub_25BEB4CE4();
      if (!v86)
      {
        v87 = v50;
        v88 = swift_allocObject();
        v145 = 0;
        v89 = v127;
        *(v88 + 16) = sub_25BEB4D54();
        *(v88 + 24) = v109;
        v145 = 1;
        v110 = sub_25BEB4D74();
        v111 = (v143 + 8);
        (*(v126 + 8))(v85, v89);
        (*v111)(v87, v34);
        swift_unknownObjectRelease();
        *(v88 + 32) = v110;
        v60 = (v88 | 0x5000000000000000);
        goto LABEL_39;
      }
    }

    goto LABEL_11;
  }

  if (v49 == 6)
  {
    v145 = 6;
    sub_25BE9AD50();
    v72 = v115;
    sub_25BEB4CE4();
    if (!v72)
    {
      v73 = swift_allocObject();
      v145 = 0;
      sub_25BE9C864();
      v74 = v130;
      sub_25BEB4D84();
      v145 = 1;
      sub_25BEB4D84();
      (*(v129 + 8))(v45, v74);
      (*(v143 + 8))(v50, v34);
      swift_unknownObjectRelease();
      v60 = (v73 | 0x6000000000000000);
      v92 = v144;
      goto LABEL_40;
    }

    goto LABEL_11;
  }

  if (v49 != 7)
  {
    v145 = 8;
    sub_25BE9ACA8();
    v83 = v136;
    v84 = v115;
    sub_25BEB4CE4();
    if (v84)
    {
      goto LABEL_9;
    }

    v140 = v34;
    v95 = swift_allocObject();
    sub_25BE9C864();
    sub_25BEB4D84();
    (*(v131 + 8))(v83, v46);
    (*(v143 + 8))(v50, v140);
    swift_unknownObjectRelease();
    v60 = (v95 | 0x8000000000000000);
    v92 = v144;
LABEL_40:
    *v47 = v60;
    return __swift_destroy_boxed_opaque_existential_0Tm(v92);
  }

  v145 = 7;
  sub_25BE9ACFC();
  v51 = v137;
  v52 = v115;
  sub_25BEB4CE4();
  if (!v52)
  {
    v140 = v34;
    v93 = swift_allocObject();
    v145 = 0;
    sub_25BE9C864();
    v94 = v128;
    sub_25BEB4D84();
    v145 = 1;
    sub_25BEB4D84();
    (*(v132 + 8))(v51, v94);
    (*(v143 + 8))(v116, v140);
    swift_unknownObjectRelease();
    v60 = (v93 | 0x7000000000000000);
    goto LABEL_39;
  }

LABEL_9:
  (*(v143 + 8))(v50, v34);
  swift_unknownObjectRelease();
  v92 = v144;
  return __swift_destroy_boxed_opaque_existential_0Tm(v92);
}

void sub_25BE9C740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_25BE9C7A8()
{
  if (!qword_27FBE4508)
  {
    sub_25BE9C818();
    sub_25BEB4BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE4508);
    }
  }
}

unint64_t sub_25BE9C818()
{
  result = qword_27FBE4510;
  if (!qword_27FBE4510)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27FBE4510);
  }

  return result;
}

unint64_t sub_25BE9C864()
{
  result = qword_27FBE4518;
  if (!qword_27FBE4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4518);
  }

  return result;
}

uint64_t EngagementUpsellCondition.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      v7 = v2 & 0xFFFFFFFFFFFFFFFLL;
      if (v3 == 2)
      {
        v17 = *(v7 + 16);

        v6 = 2113056;
        v8 = 0xE300000000000000;
LABEL_27:
        MEMORY[0x25F87F0E0](v6, v8);
        v12 = sub_25BEB4E44();
LABEL_28:
        MEMORY[0x25F87F0E0](v12, v14);

        return v17;
      }

      v17 = *(v7 + 16);

      v6 = 540884512;
    }

    else
    {
      if (v3)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v11 = *(v10 + 32);
        v17 = *(v10 + 16);

        MEMORY[0x25F87F0E0](540884256, 0xE400000000000000);
        if (v11)
        {
          v12 = 1702195828;
        }

        else
        {
          v12 = 0x65736C6166;
        }

        if (v11)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        v14 = v13;
        goto LABEL_28;
      }

      v17 = *(v2 + 16);

      v6 = 540884256;
    }

LABEL_26:
    v8 = 0xE400000000000000;
    goto LABEL_27;
  }

  v4 = v2 & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v17 = *(v4 + 16);

      v6 = 2112544;
      v8 = 0xE300000000000000;
      goto LABEL_27;
    }

    v17 = *(v4 + 16);

    v6 = 540884000;
    goto LABEL_26;
  }

  if (v3 == 6)
  {
    v5 = 2650735;
  }

  else
  {
    if (v3 != 7)
    {
      v17 = 678719342;
      goto LABEL_24;
    }

    v5 = 677670497;
  }

  v17 = v5;
  v9 = (EngagementUpsellCondition.debugDescription.getter)();
  MEMORY[0x25F87F0E0](v9);

  a1 = MEMORY[0x25F87F0E0](8236, 0xE200000000000000);
LABEL_24:
  v15 = EngagementUpsellCondition.debugDescription.getter(a1);
  MEMORY[0x25F87F0E0](v15);

  MEMORY[0x25F87F0E0](41, 0xE100000000000000);
  return v17;
}

unint64_t sub_25BE9CC40()
{
  result = qword_27FBE4520;
  if (!qword_27FBE4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4520);
  }

  return result;
}

unint64_t sub_25BE9CC98()
{
  result = qword_27FBE4528;
  if (!qword_27FBE4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4528);
  }

  return result;
}

unint64_t sub_25BE9CCF0()
{
  result = qword_27FBE4530;
  if (!qword_27FBE4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4530);
  }

  return result;
}

unint64_t sub_25BE9CD48()
{
  result = qword_27FBE4538;
  if (!qword_27FBE4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4538);
  }

  return result;
}

unint64_t sub_25BE9CDA0()
{
  result = qword_27FBE4540;
  if (!qword_27FBE4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4540);
  }

  return result;
}

unint64_t sub_25BE9CDF8()
{
  result = qword_27FBE4548;
  if (!qword_27FBE4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4548);
  }

  return result;
}

unint64_t sub_25BE9CE50()
{
  result = qword_27FBE4550;
  if (!qword_27FBE4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4550);
  }

  return result;
}

unint64_t sub_25BE9CEA8()
{
  result = qword_27FBE4558;
  if (!qword_27FBE4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4558);
  }

  return result;
}

unint64_t sub_25BE9CF00()
{
  result = qword_27FBE4560;
  if (!qword_27FBE4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4560);
  }

  return result;
}

unint64_t sub_25BE9CF58()
{
  result = qword_27FBE4568;
  if (!qword_27FBE4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4568);
  }

  return result;
}

unint64_t sub_25BE9CFB0()
{
  result = qword_27FBE4570;
  if (!qword_27FBE4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4570);
  }

  return result;
}

unint64_t sub_25BE9D008()
{
  result = qword_27FBE4578;
  if (!qword_27FBE4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4578);
  }

  return result;
}

unint64_t sub_25BE9D060()
{
  result = qword_27FBE4580;
  if (!qword_27FBE4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4580);
  }

  return result;
}

unint64_t sub_25BE9D0B8()
{
  result = qword_27FBE4588;
  if (!qword_27FBE4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4588);
  }

  return result;
}

unint64_t sub_25BE9D110()
{
  result = qword_27FBE4590;
  if (!qword_27FBE4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4590);
  }

  return result;
}

unint64_t sub_25BE9D168()
{
  result = qword_27FBE4598;
  if (!qword_27FBE4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4598);
  }

  return result;
}

unint64_t sub_25BE9D1C0()
{
  result = qword_27FBE45A0;
  if (!qword_27FBE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45A0);
  }

  return result;
}

unint64_t sub_25BE9D218()
{
  result = qword_27FBE45A8;
  if (!qword_27FBE45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45A8);
  }

  return result;
}

unint64_t sub_25BE9D270()
{
  result = qword_27FBE45B0;
  if (!qword_27FBE45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45B0);
  }

  return result;
}

unint64_t sub_25BE9D2C8()
{
  result = qword_27FBE45B8;
  if (!qword_27FBE45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45B8);
  }

  return result;
}

unint64_t sub_25BE9D320()
{
  result = qword_27FBE45C0;
  if (!qword_27FBE45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45C0);
  }

  return result;
}

unint64_t sub_25BE9D378()
{
  result = qword_27FBE45C8;
  if (!qword_27FBE45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45C8);
  }

  return result;
}

unint64_t sub_25BE9D3D0()
{
  result = qword_27FBE45D0;
  if (!qword_27FBE45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45D0);
  }

  return result;
}

unint64_t sub_25BE9D428()
{
  result = qword_27FBE45D8;
  if (!qword_27FBE45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45D8);
  }

  return result;
}

unint64_t sub_25BE9D480()
{
  result = qword_27FBE45E0;
  if (!qword_27FBE45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45E0);
  }

  return result;
}

unint64_t sub_25BE9D4D8()
{
  result = qword_27FBE45E8;
  if (!qword_27FBE45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45E8);
  }

  return result;
}

unint64_t sub_25BE9D530()
{
  result = qword_27FBE45F0;
  if (!qword_27FBE45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45F0);
  }

  return result;
}

unint64_t sub_25BE9D588()
{
  result = qword_27FBE45F8;
  if (!qword_27FBE45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE45F8);
  }

  return result;
}

unint64_t sub_25BE9D5E0()
{
  result = qword_27FBE4600;
  if (!qword_27FBE4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4600);
  }

  return result;
}

unint64_t sub_25BE9D638()
{
  result = qword_27FBE4608;
  if (!qword_27FBE4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4608);
  }

  return result;
}

uint64_t sub_25BE9D68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496F546C61757165 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_25BEB4E64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426F546C61757165 && a2 == 0xEB000000006C6F6FLL || (sub_25BEB4E64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5472657461657267 && a2 == 0xEE00746E496E6168 || (sub_25BEB4E64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BEBB5E0 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6168547373656CLL && a2 == 0xEB00000000746E49 || (sub_25BEB4E64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BEBB600 == a2 || (sub_25BEB4E64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_25BEB4E64() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_25BEB4E64() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_25BEB4E64();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25BE9D98C(uint64_t a1)
{
  sub_25BE9D9E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BE9D9E8()
{
  if (!qword_280E76598)
  {
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76598);
    }
  }
}

uint64_t sub_25BE9DA3C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t EngagementUIPlacement.tipSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 > 0x11)
  {
    goto LABEL_10;
  }

  if (*v1 > 6u)
  {
    if (v3 - 9 >= 9)
    {
      if (v3 == 7)
      {
        if (qword_280E767D0 != -1)
        {
          swift_once();
        }

        v4 = sub_25BEB4784();
        v5 = v4;
        v6 = qword_280E767D8;
      }

      else
      {
        if (qword_280E767A8 != -1)
        {
          swift_once();
        }

        v4 = sub_25BEB4784();
        v5 = v4;
        v6 = qword_280E767B0;
      }

      goto LABEL_36;
    }

    goto LABEL_10;
  }

  if (*v1 <= 2u)
  {
    if (*v1)
    {
      if (v3 == 1)
      {
        if (qword_280E76820 != -1)
        {
          swift_once();
        }

        v4 = sub_25BEB4784();
        v5 = v4;
        v6 = qword_280E76828;
      }

      else
      {
        if (qword_280E76788 != -1)
        {
          swift_once();
        }

        v4 = sub_25BEB4784();
        v5 = v4;
        v6 = qword_280E76790;
      }

      goto LABEL_36;
    }

LABEL_10:
    v7 = sub_25BEB4784();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 1;
    goto LABEL_37;
  }

  if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      if (qword_280E76760 != -1)
      {
        swift_once();
      }

      v4 = sub_25BEB4784();
      v5 = v4;
      v6 = qword_280E76768;
    }

    else
    {
      if (qword_280E767F8 != -1)
      {
        swift_once();
      }

      v4 = sub_25BEB4784();
      v5 = v4;
      v6 = qword_280E76800;
    }
  }

  else if (v3 == 3)
  {
    if (qword_280E76740 != -1)
    {
      swift_once();
    }

    v4 = sub_25BEB4784();
    v5 = v4;
    v6 = qword_280E76748;
  }

  else
  {
    if (qword_280E76848 != -1)
    {
      swift_once();
    }

    v4 = sub_25BEB4784();
    v5 = v4;
    v6 = qword_280E76850;
  }

LABEL_36:
  v12 = __swift_project_value_buffer(v4, v6);
  v14 = *(v5 - 8);
  (*(v14 + 16))(a1, v12, v5);
  v8 = *(v14 + 56);
  v10 = a1;
  v11 = 0;
  v9 = v5;
LABEL_37:

  return v8(v10, v11, 1, v9);
}

uint64_t sub_25BE9DE60()
{
  sub_25BEB4F04();
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

unint64_t sub_25BE9DFC8()
{
  result = qword_27FBE4610;
  if (!qword_27FBE4610)
  {
    sub_25BE9E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4610);
  }

  return result;
}

void sub_25BE9E020()
{
  if (!qword_27FBE4618)
  {
    v0 = sub_25BEB49E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4618);
    }
  }
}

unint64_t sub_25BE9E074()
{
  result = qword_27FBE4620;
  if (!qword_27FBE4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4620);
  }

  return result;
}

unint64_t sub_25BE9E0CC()
{
  result = qword_27FBE4628;
  if (!qword_27FBE4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4628);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EngagementUIPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___EGAssembly_assemblies;
  sub_25BE5BFA0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BEB60E0;
  v4 = type metadata accessor for EngagementAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_25BE5C080();
  *(v3 + 32) = v5;
  *&v0[v2] = v3;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EngagementUpsellBannerPropertiesResult.error.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for EngagementUpsellBannerPropertiesResult() + 20));
  *a1 = v3;

  return sub_25BE5EC10(v3);
}

uint64_t EngagementUpsellBannerPropertiesResult.trigger.getter()
{
  v1 = *(v0 + *(type metadata accessor for EngagementUpsellBannerPropertiesResult() + 24));

  return v1;
}

uint64_t EngagementUpsellBannerPropertiesResult.init(bannerProperties:error:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_25BE9E564(a1, a5);
  result = type metadata accessor for EngagementUpsellBannerPropertiesResult();
  *(a5 + *(result + 20)) = v8;
  v10 = (a5 + *(result + 24));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t sub_25BE9E564(uint64_t a1, uint64_t a2)
{
  sub_25BE5E748();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BE9E5C8()
{
  v0 = type metadata accessor for EngagementUpsellBannerPropertiesResult();
  __swift_allocate_value_buffer(v0, qword_280E76880);
  v1 = __swift_project_value_buffer(v0, qword_280E76880);
  v2 = type metadata accessor for EngagementUpsellBannerProperties(0);
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + *(v0 + 20)) = 11;
  v4 = (v1 + *(v0 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t static EngagementUpsellBannerPropertiesResult.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E76878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for EngagementUpsellBannerPropertiesResult();
  v3 = __swift_project_value_buffer(v2, qword_280E76880);
  return sub_25BE5E8D8(v3, a1, type metadata accessor for EngagementUpsellBannerPropertiesResult);
}

NewsEngagement::EngagementDebugPlacementQuiescenceInterval_optional __swiftcall EngagementDebugPlacementQuiescenceInterval.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EngagementDebugPlacementQuiescenceInterval.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    v1 = 0x74726F6873;
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

unint64_t sub_25BE9EA98()
{
  result = qword_27FBE4670;
  if (!qword_27FBE4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4670);
  }

  return result;
}

uint64_t sub_25BE9EAEC()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BE9EBA0()
{
  sub_25BEB48C4();
}

uint64_t sub_25BE9EC40()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

void sub_25BE9ECFC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973736573;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x74726F6873;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25BE9ED6C(uint64_t a1)
{
  v2 = sub_25BEA7E0C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_25BE9EDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BEA7E0C();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_25BE9EE1C(uint64_t a1)
{
  v2 = sub_25BEA7E0C();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

void sub_25BE9EE80(_BYTE *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  LOBYTE(v8) = *a1;
  if (sub_25BE9F090(&v8) & 1) != 0 || (a2)
  {
    switch(v5)
    {
      case 1:
        sub_25BEA00B8(&v8);
        break;
      case 2:
        sub_25BEA04AC(&v8);
        break;
      case 3:
        sub_25BEA07EC(&v8);
        break;
      case 4:
        sub_25BEA0B30(&v8);
        break;
      case 5:
        sub_25BEA0E6C(&v8);
        break;
      case 6:
        sub_25BEA11B0(&v8);
        break;
      case 7:
        sub_25BEA14EC(&v8);
        break;
      case 8:
        sub_25BEA182C(&v8);
        break;
      case 9:
        sub_25BEA1B6C(&v8);
        break;
      case 10:
        sub_25BEA225C(&v8);
        break;
      case 11:
        sub_25BEA2718(&v8);
        break;
      case 12:
        sub_25BEA2A54(&v8);
        break;
      case 13:
        sub_25BEA35CC(&v8);
        break;
      case 14:
        sub_25BEA3160(&v8);
        break;
      case 15:
        sub_25BEA3C48(&v8);
        break;
      case 16:
        sub_25BEA432C(&v8);
        break;
      case 17:
        sub_25BEA4930(&v8);
        break;
      case 18:
        sub_25BEA6498(&v8);
        break;
      case 19:
        sub_25BEA503C(&v8);
        break;
      case 20:
        sub_25BEA5378(&v8);
        break;
      case 21:
        sub_25BEA56B4(&v8);
        break;
      case 22:
        sub_25BEA59F8(&v8);
        break;
      case 23:
        sub_25BEA5D30(&v8);
        break;
      case 24:
      case 25:
        sub_25BEA5F48(&v8);
        break;
      case 26:
        sub_25BEA6280(&v8);
        break;
      case 27:
        sub_25BEA69F4(&v8);
        break;
      case 28:
        sub_25BEA6D30(&v8);
        break;
      case 29:
        sub_25BEA7078(&v8);
        break;
      case 30:
        sub_25BEA73B4(&v8);
        break;
      case 31:
        sub_25BEA76F0(&v8);
        break;
      default:
        sub_25BE9FBF0(&v8);
        break;
    }

    v6 = v8;
    v7 = v9;
  }

  else
  {
    v6 = 0;
    v7 = -1;
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 11;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
}

uint64_t sub_25BE9F090(char *a1)
{
  v2 = v1;
  sub_25BEA7D54(0, &qword_280E76E58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v45[-v6];
  v8 = *a1;
  sub_25BEA7D54(0, &qword_27FBE4168, sub_25BE8A86C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BEB8C70;
  *(inited + 32) = 0;
  if (qword_27FBE3D38 != -1)
  {
    swift_once();
  }

  *(inited + 40) = qword_27FBE41F8;
  *(inited + 48) = 1;
  v10 = qword_27FBE3D40;

  if (v10 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_27FBE4200;
  *(inited + 64) = 3;
  v11 = qword_27FBE3D50;

  if (v11 != -1)
  {
    swift_once();
  }

  *(inited + 72) = qword_27FBE4210;
  *(inited + 80) = 2;
  v12 = qword_27FBE3D48;

  if (v12 != -1)
  {
    swift_once();
  }

  *(inited + 88) = qword_27FBE4208;
  *(inited + 96) = 4;
  v13 = qword_27FBE3D58;

  if (v13 != -1)
  {
    swift_once();
  }

  *(inited + 104) = qword_27FBE4218;
  *(inited + 112) = 5;
  v14 = qword_27FBE3D60;

  if (v14 != -1)
  {
    swift_once();
  }

  *(inited + 120) = qword_27FBE4220;
  *(inited + 128) = 6;
  v15 = qword_27FBE3D68;

  if (v15 != -1)
  {
    swift_once();
  }

  *(inited + 136) = qword_27FBE4228;
  *(inited + 144) = 7;
  v16 = qword_27FBE3D70;

  if (v16 != -1)
  {
    swift_once();
  }

  *(inited + 152) = qword_27FBE4230;
  *(inited + 160) = 8;
  v17 = qword_27FBE3D78;

  if (v17 != -1)
  {
    swift_once();
  }

  *(inited + 168) = qword_27FBE4238;
  *(inited + 176) = 18;
  v18 = qword_27FBE3D80;

  if (v18 != -1)
  {
    swift_once();
  }

  *(inited + 184) = qword_27FBE4240;
  *(inited + 192) = 15;
  v19 = qword_27FBE3D88;

  if (v19 != -1)
  {
    swift_once();
  }

  *(inited + 200) = qword_27FBE4248;
  *(inited + 208) = 16;
  v20 = qword_27FBE3D90;

  if (v20 != -1)
  {
    swift_once();
  }

  *(inited + 216) = qword_27FBE4250;
  *(inited + 224) = 17;
  v21 = qword_27FBE3D98;

  if (v21 != -1)
  {
    swift_once();
  }

  *(inited + 232) = qword_27FBE4258;
  *(inited + 240) = 19;
  v22 = qword_27FBE3DA0;

  if (v22 != -1)
  {
    swift_once();
  }

  *(inited + 248) = qword_27FBE4260;
  *(inited + 256) = 20;
  v23 = qword_27FBE3DA8;

  if (v23 != -1)
  {
    swift_once();
  }

  *(inited + 264) = qword_27FBE4268;
  *(inited + 272) = 21;
  v24 = qword_27FBE3DB0;

  if (v24 != -1)
  {
    swift_once();
  }

  *(inited + 280) = qword_27FBE4270;
  *(inited + 288) = 24;
  v25 = qword_27FBE3DB8;

  if (v25 != -1)
  {
    swift_once();
  }

  *(inited + 296) = qword_27FBE4278;
  *(inited + 304) = 25;
  v26 = qword_27FBE3DC0;

  if (v26 != -1)
  {
    swift_once();
  }

  *(inited + 312) = qword_27FBE4280;
  *(inited + 320) = 26;
  v27 = qword_27FBE3DC8;

  if (v27 != -1)
  {
    swift_once();
  }

  *(inited + 328) = qword_27FBE4288;
  *(inited + 336) = 22;
  v28 = qword_27FBE3DD0;

  if (v28 != -1)
  {
    swift_once();
  }

  *(inited + 344) = qword_27FBE4290;
  *(inited + 352) = 23;
  v29 = qword_27FBE3DE0;

  if (v29 != -1)
  {
    swift_once();
  }

  *(inited + 360) = qword_27FBE42A0;
  *(inited + 368) = 27;
  v30 = qword_27FBE3DE8;

  if (v30 != -1)
  {
    swift_once();
  }

  *(inited + 376) = qword_27FBE42A8;
  *(inited + 384) = 28;
  v31 = qword_27FBE3DF0;

  if (v31 != -1)
  {
    swift_once();
  }

  *(inited + 392) = qword_27FBE42B0;
  *(inited + 400) = 29;
  v32 = qword_27FBE3DF8;

  if (v32 != -1)
  {
    swift_once();
  }

  *(inited + 408) = qword_27FBE42B8;
  *(inited + 416) = 30;
  v33 = qword_27FBE3E00;

  if (v33 != -1)
  {
    swift_once();
  }

  *(inited + 424) = qword_27FBE42C0;
  *(inited + 432) = 31;
  v34 = qword_27FBE3E08;

  if (v34 != -1)
  {
    swift_once();
  }

  *(inited + 440) = qword_27FBE42C8;
  *(inited + 448) = 9;
  v35 = qword_27FBE3E10;

  if (v35 != -1)
  {
    swift_once();
  }

  *(inited + 456) = qword_27FBE42D0;
  *(inited + 464) = 10;
  v36 = qword_27FBE3E18;

  if (v36 != -1)
  {
    swift_once();
  }

  *(inited + 472) = qword_27FBE42D8;
  *(inited + 480) = 11;
  v37 = qword_27FBE3E20;

  if (v37 != -1)
  {
    swift_once();
  }

  *(inited + 488) = qword_27FBE42E0;
  *(inited + 496) = 12;
  v38 = qword_27FBE3E28;

  if (v38 != -1)
  {
    swift_once();
  }

  *(inited + 504) = qword_27FBE42E8;
  *(inited + 512) = 14;
  v39 = qword_27FBE3E38;

  if (v39 != -1)
  {
    swift_once();
  }

  *(inited + 520) = qword_27FBE42F8;
  *(inited + 528) = 13;
  v40 = qword_27FBE3E30;

  if (v40 != -1)
  {
    swift_once();
  }

  *(inited + 536) = qword_27FBE42F0;

  v41 = sub_25BE8A92C(inited);
  swift_setDeallocating();
  sub_25BE8A86C();
  swift_arrayDestroy();
  if (*(v41 + 16) && (sub_25BE65758(v8), (v42 & 1) != 0))
  {

    if (sub_25BEA7A38(v2, v8))
    {
      sub_25BEB43B4();
      v43 = sub_25BEB43C4();
      (*(*(v43 - 8) + 56))(v7, 0, 1, v43);
      swift_beginAccess();
      sub_25BE7B3B0(v7, v8);
      swift_endAccess();
      sub_25BEA7DB8();
      sub_25BEB4424();

      return v45[8];
    }
  }

  else
  {
  }

  return 0;
}

void sub_25BE9FBF0(uint64_t a1@<X8>)
{
  v29[17] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v28 - v4;
  v6 = sub_25BEB48B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEB48A4();
  v11 = sub_25BEB4894();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v13 >> 60 == 15)
  {
    v14 = sub_25BE8AAA8(MEMORY[0x277D84F90]);
    goto LABEL_9;
  }

  v15 = objc_opt_self();
  v16 = sub_25BEB4384();
  v29[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v29];

  if (!v17)
  {
    v19 = v29[0];
    v20 = sub_25BEB42E4();

    swift_willThrow();
    goto LABEL_7;
  }

  v18 = v29[0];
  sub_25BEB4AF4();
  swift_unknownObjectRelease();
  sub_25BEA7C80();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = sub_25BE8AAA8(MEMORY[0x277D84F90]);
    goto LABEL_8;
  }

  v14 = v28[0];
LABEL_8:
  sub_25BEA7D40(v11, v13);
LABEL_9:
  v21 = [objc_allocWithZone(MEMORY[0x277CEE4C8]) init];
  [v21 setFailOnDismiss_];
  [v21 setSilentlyCheckURL_];
  [v21 setPresentationStyle_];
  sub_25BEB4324();
  v22 = sub_25BEB4334();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    __break(1u);
  }

  v24 = sub_25BEB42F4();
  (*(v23 + 8))(v5, v22);
  [v21 setURL_];

  sub_25BEA7D54(0, &qword_27FBE4678, sub_25BE8B2FC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BEB60E0;
  strcpy(v29, "engagementItem");
  HIBYTE(v29[1]) = -18;
  sub_25BEB4B54();
  sub_25BEA7C80();
  *(inited + 96) = v26;
  *(inited + 72) = v14;
  sub_25BE8AAA8(inited);
  swift_setDeallocating();
  sub_25BEA7CE4(inited + 32);
  v27 = sub_25BEB4824();

  [v21 setClientData_];

  *a1 = v21;
  *(a1 + 8) = 1;
}

void sub_25BEA00B8(void *a1@<X8>)
{
  v25 = a1;
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v12 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v13 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v14 = sub_25BEB4874();

  v15 = sub_25BEB4874();

  v16 = [v13 initWithTitle:v14 message:v15];

  v17 = [objc_opt_self() actionWithTitle:0 style:0];
  sub_25BEB4324();
  v18 = sub_25BEB4334();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v8, 1, v18) != 1)
  {
    v21 = sub_25BEB42F4();
    (*(v19 + 8))(v8, v18);
  }

  [v17 setDeepLink_];

  [v16 addButtonAction_];
  [v16 setStyle_];
  sub_25BEB4324();
  if (v20(v5, 1, v18) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_25BEB42F4();
    (*(v19 + 8))(v5, v18);
  }

  [v16 setIconURL_];

  v23 = v25;
  *v25 = v16;
  *(v23 + 8) = 0;
}

void sub_25BEA04AC(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA07EC(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA0B30(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA0E6C(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA11B0(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA14EC(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA182C(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA1B6C(void *a1@<X8>)
{
  v46 = a1;
  v48[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v44 = v43 - v6;
  v7 = sub_25BEB48B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v43[1] = sub_25BEB42D4();

  v15 = [v13 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v16 = sub_25BEB4894();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  v19 = 0;
  if (v18 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = objc_opt_self();
  v21 = sub_25BEB4384();
  v48[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v48];

  if (v22)
  {
    v23 = v48[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v16, v18);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v19 = v47;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v48[0];
    v25 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v16, v18);
  }

  v19 = 0;
LABEL_7:
  v26 = sub_25BEB4874();

  v27 = sub_25BEB4874();

  if (v19)
  {
    v28 = sub_25BEB4824();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v26 message:v27 appearanceInfo:v28];

  v30 = [v13 bundleForClass_];
  sub_25BEB42D4();

  v31 = sub_25BEB4874();

  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:v31 style:0];

  v34 = v44;
  sub_25BEB4324();
  v35 = sub_25BEB4334();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = 0;
  if (v37(v34, 1, v35) != 1)
  {
    v38 = sub_25BEB42F4();
    (*(v36 + 8))(v34, v35);
  }

  [v33 setDeepLink_];

  [v29 addButtonAction_];
  v39 = [v32 actionWithTitle:0 style:2];
  [v29 addButtonAction_];
  v40 = v45;
  sub_25BEB4324();
  v41 = 0;
  if (v37(v40, 1, v35) != 1)
  {
    v41 = sub_25BEB42F4();
    (*(v36 + 8))(v40, v35);
  }

  [v29 setIconURL_];

  v42 = v46;
  *v46 = v29;
  *(v42 + 8) = 0;
}

void sub_25BEA225C(void *a1@<X8>)
{
  v29 = a1;
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v28 - v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v12 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v13 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v14 = sub_25BEB4874();

  v15 = sub_25BEB4874();

  v16 = [v13 initWithTitle:v14 message:v15 appearanceInfo:0];

  v17 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v18 = sub_25BEB4874();

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v18 style:0];

  sub_25BEB4324();
  v21 = sub_25BEB4334();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v8, 1, v21) != 1)
  {
    v24 = sub_25BEB42F4();
    (*(v22 + 8))(v8, v21);
  }

  [v20 setDeepLink_];

  [v16 addButtonAction_];
  v25 = [v19 actionWithTitle:0 style:2];
  [v16 addButtonAction_];
  sub_25BEB4324();
  v26 = 0;
  if (v23(v5, 1, v21) != 1)
  {
    v26 = sub_25BEB42F4();
    (*(v22 + 8))(v5, v21);
  }

  [v16 setIconURL_];

  v27 = v29;
  *v29 = v16;
  *(v27 + 8) = 0;
}

void sub_25BEA2718(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA2A54(void *a1@<X8>)
{
  v48 = a1;
  v50[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v47 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v44 = v43 - v6;
  v7 = sub_25BEB48B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v43[1] = sub_25BEB42D4();

  v45 = v13;
  v46 = ObjCClassFromMetadata;
  v15 = [v13 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v16 = sub_25BEB4894();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  v19 = 0;
  if (v18 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = objc_opt_self();
  v21 = sub_25BEB4384();
  v50[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v50];

  if (v22)
  {
    v23 = v50[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v16, v18);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v19 = v49;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v50[0];
    v25 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v16, v18);
  }

  v19 = 0;
LABEL_7:
  v26 = sub_25BEB4874();

  v27 = sub_25BEB4874();

  if (v19)
  {
    v28 = sub_25BEB4824();
  }

  else
  {
    v28 = 0;
  }

  v29 = v47;
  v30 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v26 message:v27 appearanceInfo:v28];

  [v30 setStyle_];
  v31 = v44;
  sub_25BEB4324();
  v32 = sub_25BEB4334();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v31, 1, v32) != 1)
  {
    v35 = sub_25BEB42F4();
    (*(v33 + 8))(v31, v32);
  }

  [v30 setIconURL_];

  v36 = [v45 bundleForClass_];
  sub_25BEB42D4();

  v37 = sub_25BEB4874();

  v38 = objc_opt_self();
  v39 = [v38 actionWithTitle:v37 style:0];

  sub_25BEB4324();
  v40 = 0;
  if (v34(v29, 1, v32) != 1)
  {
    v40 = sub_25BEB42F4();
    (*(v33 + 8))(v29, v32);
  }

  [v39 setDeepLink_];

  [v30 addButtonAction_];
  v41 = [v38 actionWithTitle:0 style:2];
  [v30 addButtonAction_];

  v42 = v48;
  *v48 = v30;
  *(v42 + 8) = 0;
}

void sub_25BEA3160(void *a1@<X8>)
{
  v31 = a1;
  v33[4] = *MEMORY[0x277D85DE8];
  v1 = sub_25BEB48B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v30[0] = sub_25BEB42D4();
  v30[1] = v9;

  v10 = [v7 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v11 = sub_25BEB4894();
  v13 = v12;
  (*(v2 + 8))(v5, v1);
  v14 = 0;
  if (v13 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v15 = objc_opt_self();
  v16 = sub_25BEB4384();
  v33[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v33];

  if (v17)
  {
    v18 = v33[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v11, v13);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v14 = v32;
      goto LABEL_7;
    }
  }

  else
  {
    v19 = v33[0];
    v20 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v11, v13);
  }

  v14 = 0;
LABEL_7:
  v21 = sub_25BEB4874();

  v22 = sub_25BEB4874();

  if (v14)
  {
    v23 = sub_25BEB4824();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CEE8F8]) initWithTitle:v21 message:v22 appearanceInfo:v23];

  v25 = v24;
  [v25 setStyle_];
  type metadata accessor for Images();
  sub_25BE9432C();
  v27 = v26;
  [v25 setIconImage_];

  v28 = [objc_opt_self() actionWithTitle:0 style:2];
  [v25 addButtonAction_];

  v29 = v31;
  *v31 = v25;
  *(v29 + 8) = 0;
}

void sub_25BEA35CC(void *a1@<X8>)
{
  v42 = a1;
  v44[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v41 = &v40 - v3;
  v4 = sub_25BEB48B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v40 = sub_25BEB42D4();

  v12 = [v10 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v13 = sub_25BEB4894();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = 0;
  if (v15 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v17 = objc_opt_self();
  v18 = sub_25BEB4384();
  v44[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v44];

  if (v19)
  {
    v20 = v44[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v13, v15);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v16 = v43;
      goto LABEL_7;
    }
  }

  else
  {
    v21 = v44[0];
    v22 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v13, v15);
  }

  v16 = 0;
LABEL_7:
  v23 = sub_25BEB4874();

  v24 = sub_25BEB4874();

  if (v16)
  {
    v25 = sub_25BEB4824();
  }

  else
  {
    v25 = 0;
  }

  v26 = v41;
  v27 = [objc_allocWithZone(MEMORY[0x277CEE8F8]) initWithTitle:v23 message:v24 appearanceInfo:v25];

  v28 = v27;
  [v28 setStyle_];
  type metadata accessor for Images();
  sub_25BE9432C();
  v30 = v29;
  [v28 setIconImage_];

  v31 = [v10 bundleForClass_];
  sub_25BEB42D4();

  v32 = sub_25BEB4874();

  v33 = objc_opt_self();
  v34 = [v33 actionWithTitle:v32 style:0];

  sub_25BEB4324();
  v35 = sub_25BEB4334();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v26, 1, v35) != 1)
  {
    v37 = sub_25BEB42F4();
    (*(v36 + 8))(v26, v35);
  }

  [v34 setDeepLink_];

  [v28 addButtonAction_];
  v38 = [v33 actionWithTitle:0 style:2];
  [v28 addButtonAction_];

  v39 = v42;
  *v42 = v28;
  *(v39 + 8) = 0;
}

void sub_25BEA3C48(void *a1@<X8>)
{
  v46 = a1;
  v48[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v44 = v43 - v6;
  v7 = sub_25BEB48B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v43[1] = sub_25BEB42D4();

  v15 = [v13 bundleForClass_];
  v43[0] = sub_25BEB42D4();

  sub_25BEB48A4();
  v16 = sub_25BEB4894();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  v19 = 0;
  if (v18 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = objc_opt_self();
  v21 = sub_25BEB4384();
  v48[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v48];

  if (v22)
  {
    v23 = v48[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v16, v18);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v19 = v47;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v48[0];
    v25 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v16, v18);
  }

  v19 = 0;
LABEL_7:
  v26 = sub_25BEB4874();

  v27 = sub_25BEB4874();

  if (v19)
  {
    v28 = sub_25BEB4824();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v26 message:v27 appearanceInfo:v28];

  v30 = [v13 bundleForClass_];
  sub_25BEB42D4();

  v31 = sub_25BEB4874();

  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:v31 style:0];

  v34 = v44;
  sub_25BEB4324();
  v35 = sub_25BEB4334();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = 0;
  if (v37(v34, 1, v35) != 1)
  {
    v38 = sub_25BEB42F4();
    (*(v36 + 8))(v34, v35);
  }

  [v33 setDeepLink_];

  [v29 addButtonAction_];
  v39 = [v32 actionWithTitle:0 style:2];
  [v29 addButtonAction_];
  v40 = v45;
  sub_25BEB4324();
  v41 = 0;
  if (v37(v40, 1, v35) != 1)
  {
    v41 = sub_25BEB42F4();
    (*(v36 + 8))(v40, v35);
  }

  [v29 setIconURL_];

  v42 = v46;
  *v46 = v29;
  *(v42 + 8) = 0;
}

void sub_25BEA432C(void *a1@<X8>)
{
  v42 = a1;
  v44[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v41 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v40 = v39 - v6;
  v7 = sub_25BEB48B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v39[1] = sub_25BEB42D4();

  v15 = [v13 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v16 = sub_25BEB4894();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  v19 = 0;
  if (v18 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = objc_opt_self();
  v21 = sub_25BEB4384();
  v44[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v44];

  if (v22)
  {
    v23 = v44[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v16, v18);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v19 = v43;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v44[0];
    v25 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v16, v18);
  }

  v19 = 0;
LABEL_7:
  v26 = sub_25BEB4874();

  v27 = sub_25BEB4874();

  if (v19)
  {
    v28 = sub_25BEB4824();
  }

  else
  {
    v28 = 0;
  }

  v29 = v40;
  v30 = v41;
  v31 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v26 message:v27 appearanceInfo:v28];

  sub_25BEB4324();
  v32 = sub_25BEB4334();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v29, 1, v32) != 1)
  {
    v35 = sub_25BEB42F4();
    (*(v33 + 8))(v29, v32);
  }

  [v31 setIconURL_];

  v36 = [objc_opt_self() actionWithTitle:0 style:0];
  sub_25BEB4324();
  v37 = 0;
  if (v34(v30, 1, v32) != 1)
  {
    v37 = sub_25BEB42F4();
    (*(v33 + 8))(v30, v32);
  }

  [v36 setDeepLink_];

  [v31 addButtonAction_];
  v38 = v42;
  *v42 = v31;
  *(v38 + 8) = 0;
}

void sub_25BEA4930(void *a1@<X8>)
{
  v48 = a1;
  v50[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v47 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v44 = v43 - v6;
  v7 = sub_25BEB48B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v43[1] = sub_25BEB42D4();

  v45 = v13;
  v46 = ObjCClassFromMetadata;
  v15 = [v13 bundleForClass_];
  sub_25BEB42D4();

  sub_25BEB48A4();
  v16 = sub_25BEB4894();
  v18 = v17;
  (*(v8 + 8))(v11, v7);
  v19 = 0;
  if (v18 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v20 = objc_opt_self();
  v21 = sub_25BEB4384();
  v50[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v50];

  if (v22)
  {
    v23 = v50[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v16, v18);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v19 = v49;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v50[0];
    v25 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v16, v18);
  }

  v19 = 0;
LABEL_7:
  v26 = sub_25BEB4874();

  v27 = sub_25BEB4874();

  if (v19)
  {
    v28 = sub_25BEB4824();
  }

  else
  {
    v28 = 0;
  }

  v29 = v47;
  v30 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v26 message:v27 appearanceInfo:v28];

  [v30 setStyle_];
  v31 = v44;
  sub_25BEB4324();
  v32 = sub_25BEB4334();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v31, 1, v32) != 1)
  {
    v35 = sub_25BEB42F4();
    (*(v33 + 8))(v31, v32);
  }

  [v30 setIconURL_];

  v36 = [v45 bundleForClass_];
  sub_25BEB42D4();

  v37 = sub_25BEB4874();

  v38 = objc_opt_self();
  v39 = [v38 actionWithTitle:v37 style:0];

  sub_25BEB4324();
  v40 = 0;
  if (v34(v29, 1, v32) != 1)
  {
    v40 = sub_25BEB42F4();
    (*(v33 + 8))(v29, v32);
  }

  [v39 setDeepLink_];

  [v30 addButtonAction_];
  v41 = [v38 actionWithTitle:0 style:2];
  [v30 addButtonAction_];

  v42 = v48;
  *v48 = v30;
  *(v42 + 8) = 0;
}

void sub_25BEA503C(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA5378(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA56B4(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA59F8(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA5D30(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_25BEB42D4();

  v5 = [v3 bundleForClass_];
  sub_25BEB42D4();

  v6 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v7 = sub_25BEB4874();

  v8 = sub_25BEB4874();

  v9 = [v6 initWithTitle:v7 message:{v8, 0x800000025BEBD500}];

  [v9 setStyle_];
  v10 = [objc_opt_self() actionWithTitle:0 style:2];
  [v9 addButtonAction_];

  *a1 = v9;
  *(a1 + 8) = 0;
}

void sub_25BEA5F48(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA6280(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_25BEB42D4();

  v5 = [v3 bundleForClass_];
  sub_25BEB42D4();

  v6 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v7 = sub_25BEB4874();

  v8 = sub_25BEB4874();

  v9 = [v6 initWithTitle:v7 message:{v8, 0x800000025BEBD650}];

  [v9 setStyle_];
  v10 = [objc_opt_self() actionWithTitle:0 style:2];
  [v9 addButtonAction_];

  *a1 = v9;
  *(a1 + 8) = 0;
}

void sub_25BEA6498(void *a1@<X8>)
{
  v39 = a1;
  v41[4] = *MEMORY[0x277D85DE8];
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37 - v6;
  v8 = sub_25BEB48B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEB48A4();
  v13 = sub_25BEB4894();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v16 = 0;
  if (v15 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v17 = objc_opt_self();
  v18 = sub_25BEB4384();
  v41[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v41];

  if (v19)
  {
    v20 = v41[0];
    sub_25BEB4AF4();
    sub_25BEA7D40(v13, v15);
    swift_unknownObjectRelease();
    sub_25BEA7C80();
    if (swift_dynamicCast())
    {
      v16 = v40;
      goto LABEL_7;
    }
  }

  else
  {
    v21 = v41[0];
    v22 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BEA7D40(v13, v15);
  }

  v16 = 0;
LABEL_7:
  v23 = sub_25BEB4874();
  v24 = sub_25BEB4874();
  if (v16)
  {
    v25 = sub_25BEB4824();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v23 message:v24 appearanceInfo:v25];

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:0 style:2];
  [v26 addButtonAction_];
  sub_25BEB4324();
  v29 = sub_25BEB4334();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = 0;
  if (v31(v7, 1, v29) != 1)
  {
    v32 = sub_25BEB42F4();
    (*(v30 + 8))(v7, v29);
  }

  [v26 setIconURL_];

  v33 = [v27 actionWithTitle:0 style:0];
  v34 = v38;
  sub_25BEB4324();
  v35 = 0;
  if (v31(v34, 1, v29) != 1)
  {
    v35 = sub_25BEB42F4();
    (*(v30 + 8))(v34, v29);
  }

  [v33 setDeepLink_];

  [v26 setDefaultAction_];
  [v26 setStyle_];

  v36 = v39;
  *v39 = v26;
  *(v36 + 8) = 0;
}

void sub_25BEA69F4(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA6D30(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA7078(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA73B4(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

void sub_25BEA76F0(uint64_t a1@<X8>)
{
  sub_25BEA7D54(0, &qword_280E77530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v9 = [v7 bundleForClass_];
  sub_25BEB42D4();

  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_25BEB4874();

  v12 = sub_25BEB4874();

  v13 = [v10 initWithTitle:v11 message:v12];

  [v13 setStyle_];
  sub_25BEB4324();
  v14 = sub_25BEB4334();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_25BEB42F4();
    (*(v15 + 8))(v5, v14);
  }

  [v13 setIconURL_];

  v17 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  *a1 = v13;
  *(a1 + 8) = 0;
}

BOOL sub_25BEA7A38(uint64_t a1, char a2)
{
  v4 = sub_25BEB43C4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;
  swift_beginAccess();
  v13 = *(a1 + 16);
  if (!*(v13 + 16) || (v14 = sub_25BE65758(a2), (v15 & 1) == 0))
  {
    swift_endAccess();
    return 1;
  }

  (*(v5 + 16))(v9, *(v13 + 56) + *(v5 + 72) * v14, v4);
  (*(v5 + 32))(v12, v9, v4);
  swift_endAccess();
  sub_25BEB4394();
  v17 = v16;
  if (qword_27FBE3D28 != -1)
  {
    swift_once();
  }

  type metadata accessor for EngagementDebugRequestFactory();
  sub_25BEA7DB8();
  sub_25BEB4424();
  (*(v5 + 8))(v12, v4);
  if (v21 <= 1u)
  {
    if (v21)
    {
      v18 = -5.0;
      return v17 < v18;
    }

    return 1;
  }

  if (v21 == 2)
  {
    v18 = -20.0;
    return v17 < v18;
  }

  return 0;
}

void sub_25BEA7C80()
{
  if (!qword_27FBE4680)
  {
    v0 = sub_25BEB4854();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE4680);
    }
  }
}

uint64_t sub_25BEA7CE4(uint64_t a1)
{
  sub_25BE8B2FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BEA7D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BE672C8(a1, a2);
  }

  return a1;
}

void sub_25BEA7D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25BEA7DB8()
{
  result = qword_27FBE4688;
  if (!qword_27FBE4688)
  {
    type metadata accessor for EngagementDebugRequestFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4688);
  }

  return result;
}

unint64_t sub_25BEA7E0C()
{
  result = qword_27FBE4690;
  if (!qword_27FBE4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4690);
  }

  return result;
}

uint64_t EngagementViewControllerPresentationError.hashValue.getter()
{
  v1 = *v0;
  sub_25BEB4F04();
  MEMORY[0x25F87F720](v1);
  return sub_25BEB4F24();
}

unint64_t sub_25BEA7EF4()
{
  result = qword_27FBE4698;
  if (!qword_27FBE4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4698);
  }

  return result;
}

_BYTE *EngagementPlacementInfo.init(placement:context:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_25BEA7F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25BEA7FC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t EngagementInlineViewError.description.getter()
{
  v1 = *v0;
  if (*v0 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        return 0xD000000000000015;
      }

      if (v1 == 7)
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      switch(v1)
      {
        case 8:
          return 0xD000000000000010;
        case 9:
          return 0xD000000000000013;
        case 10:
          return 0x6F4364656C696166;
      }
    }

    return 0x6576697463416F6ELL;
  }

  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (v1 == 2)
    {
      return 0xD000000000000018;
    }

    return 0x6576697463416F6ELL;
  }

  if (v1 == 3)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 != 4)
  {
    if (v1 == 5)
    {
      return 0xD00000000000001CLL;
    }

    return 0x6576697463416F6ELL;
  }

  return 0xD00000000000001CLL;
}

NewsEngagement::EngagementUpsellTriggerFailureReason_optional __swiftcall EngagementUpsellTriggerFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EngagementUpsellTriggerFailureReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64657269707865;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_25BEA831C()
{
  sub_25BEB48C4();
}

void sub_25BEA8430(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657269707865;
  v5 = 0x800000025BEB9F90;
  v6 = 0xD000000000000010;
  v7 = 0xD000000000000016;
  v8 = 0x800000025BEB9FB0;
  if (v2 != 4)
  {
    v7 = 0xD000000000000012;
    v8 = 0x800000025BEB9FD0;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000025BEB9F70;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000025BEB9F50;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t EngagementUpsellTriggerFailureInfo.triggerName.getter()
{
  v1 = *v0;

  return v1;
}

NewsEngagement::EngagementUpsellTriggerFailureInfo __swiftcall EngagementUpsellTriggerFailureInfo.init(triggerName:reason:)(NewsEngagement::EngagementUpsellTriggerFailureInfo triggerName, NewsEngagement::EngagementUpsellTriggerFailureReason reason)
{
  v3 = *reason;
  *v2 = triggerName.triggerName;
  *(v2 + 16) = v3;
  triggerName.reason = reason;
  return triggerName;
}

unint64_t sub_25BEA8550()
{
  result = qword_27FBE46A0;
  if (!qword_27FBE46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46A0);
  }

  return result;
}

uint64_t sub_25BEA85A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

void *sub_25BEA85F4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_25BEA8634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25BEA867C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NewsEngagement::EngagementPlacementSource_optional __swiftcall EngagementPlacementSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4CD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EngagementPlacementSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7972756372656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6D6F6F727377656ELL;
  }

  if (*v0)
  {
    v1 = 0x6775626564;
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

unint64_t sub_25BEA87A0()
{
  result = qword_27FBE46A8;
  if (!qword_27FBE46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46A8);
  }

  return result;
}

uint64_t sub_25BEA87F4()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEA88B4()
{
  sub_25BEB48C4();
}

uint64_t sub_25BEA8960()
{
  sub_25BEB4F04();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

void sub_25BEA8A28(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x7972756372656DLL;
  if (*v1 != 2)
  {
    v5 = 0x6D6F6F727377656ELL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6775626564;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

NewsEngagement::EngagementBannerLayout __swiftcall EngagementBannerLayout.init(size:)(NewsEngagement::EngagementBannerLayout size)
{
  *v1 = size.size.width;
  v1[1] = size.size.height;
  return size;
}

uint64_t EngagementBannerLayout.description.getter()
{
  MEMORY[0x25F87F0E0](0x203A657A6973, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_25BEB4C64();
  return 0;
}

uint64_t sub_25BEA8B44()
{
  MEMORY[0x25F87F0E0](0x203A657A6973, 0xE600000000000000);
  type metadata accessor for CGSize(0);
  sub_25BEB4C64();
  return 0;
}

unint64_t sub_25BEA8BD4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x67696C4564696170;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0x6F697469646E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001DLL;
    if (a1 != 5)
    {
      v7 = 0x6E656D6563616C70;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x567377654E6E696DLL;
    v2 = 0x6E6F697461727564;
    v3 = 0xD000000000000018;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x567377654E78616DLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25BEA8D40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25BEA8BD4(*a1);
  v5 = v4;
  if (v3 == sub_25BEA8BD4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25BEB4E64();
  }

  return v8 & 1;
}

uint64_t sub_25BEA8DC8()
{
  v1 = *v0;
  sub_25BEB4F04();
  sub_25BEA8BD4(v1);
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEA8E2C()
{
  sub_25BEA8BD4(*v0);
  sub_25BEB48C4();
}

uint64_t sub_25BEA8E80()
{
  v1 = *v0;
  sub_25BEB4F04();
  sub_25BEA8BD4(v1);
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BEA8EE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BEADAB4();
  *a1 = result;
  return result;
}

unint64_t sub_25BEA8F10@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BEA8BD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BEA8F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BEADAB4();
  *a1 = result;
  return result;
}

uint64_t sub_25BEA8F8C(uint64_t a1)
{
  v2 = sub_25BEABAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEA8FC8(uint64_t a1)
{
  v2 = sub_25BEABAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellTrigger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v121[4] = *MEMORY[0x277D85DE8];
  v116 = sub_25BEB4714();
  v112 = *(v116 - 8);
  v4 = MEMORY[0x28223BE20](v116, v3);
  v109 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v108 = &v88 - v7;
  v8 = sub_25BEB4524();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v115 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for EngagementUpsellTrigger();
  MEMORY[0x28223BE20](v113, v11);
  v114 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE63CCC(0, &qword_280E76DE8, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v111 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v110 = &v88 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v88 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v88 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v88 - v33;
  sub_25BEAC7B8(0, &qword_27FBE46B0, MEMORY[0x277D844C8]);
  v36 = v35;
  v117 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v88 - v38;
  v40 = a1[3];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_25BEABAA0();
  v41 = v118;
  sub_25BEB4F34();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v119);
  }

  v105 = v27;
  v106 = v23;
  v118 = v31;
  LOBYTE(v121[0]) = 0;
  sub_25BEAC81C(&qword_27FBE46C0);
  v42 = v116;
  sub_25BEB4D44();
  LOBYTE(v121[0]) = 1;
  sub_25BEB4D44();
  LOBYTE(v121[0]) = 2;
  v44 = sub_25BEB4D24();
  v103 = v45;
  v104 = *&v44;
  LOBYTE(v121[0]) = 3;
  v46 = sub_25BEB4D34();
  v101 = v47;
  v102 = v46;
  LOBYTE(v121[0]) = 4;
  v48 = sub_25BEB4D24();
  v99 = v49;
  v100 = v48;
  LOBYTE(v121[0]) = 5;
  v50 = sub_25BEB4D24();
  v97 = v51;
  v98 = v50;
  LOBYTE(v120) = 7;
  sub_25BEABAF4();
  sub_25BEB4D44();
  v96 = LOBYTE(v121[0]);
  v95 = sub_25BEA9E70(6, v52);
  LOBYTE(v121[0]) = 8;
  v94 = sub_25BEB4D34();
  v93 = v53;
  v92 = v34;
  LOBYTE(v121[0]) = 9;
  v91 = v36;
  v90 = v39;
  v89 = sub_25BEB4D04();
  v55 = v54;
  v56 = v105;
  sub_25BE668D0(v92, v105);
  sub_25BE668D0(v118, v106);
  v57 = v113[14];
  sub_25BEB4514();
  sub_25BEB4544();
  swift_allocObject();
  *(v114 + v57) = sub_25BEB4534();
  v58 = v110;
  sub_25BE668D0(v56, v110);
  v59 = *(v112 + 48);
  if (v59(v58, 1, v42) == 1)
  {
    sub_25BEB4704();
    if (v59(v110, 1, v42) != 1)
    {
      sub_25BE66964(v110, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    (*(v112 + 32))(v108, v110, v42);
  }

  v60 = *(v112 + 32);
  v60(v114, v108, v42);
  v61 = v111;
  sub_25BE668D0(v106, v111);
  if (v59(v61, 1, v42) == 1)
  {
    sub_25BEB46F4();
    if (v59(v111, 1, v42) != 1)
    {
      sub_25BE66964(v111, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    v60(v109, v111, v42);
  }

  v63 = v113;
  v62 = v114;
  v60(v114 + v113[5], v109, v42);
  v64 = v104;
  if (v103)
  {
    v64 = 1.79769313e308;
  }

  *(v62 + v63[6]) = v64;
  v65 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v101 & 1) == 0)
  {
    v65 = v102;
  }

  *(v62 + v63[7]) = v65;
  *(v62 + v63[13]) = v95;
  v66 = v62 + v63[9];
  *v66 = v100;
  *(v66 + 8) = v99 & 1;
  v67 = v62 + v63[8];
  *v67 = v98;
  *(v67 + 8) = v97 & 1;
  v68 = v96;
  if (v96 == 4)
  {
    v68 = 0;
  }

  *(v62 + v63[10]) = v68;
  v69 = v94;
  if (v93)
  {
    v69 = 0;
  }

  *(v62 + v63[11]) = v69;
  if (!v55)
  {
    v78 = MEMORY[0x277D6CF38];
    sub_25BE66964(v106, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    sub_25BE66964(v105, &qword_280E76DE8, v78);
    sub_25BE66964(v118, &qword_280E76DE8, v78);
    sub_25BE66964(v92, &qword_280E76DE8, v78);
    (*(v117 + 8))(v90, v91);
    *(v114 + v113[12]) = 0xF000000000000007;
    goto LABEL_26;
  }

  v70 = sub_25BE669D4(v89, v55);
  v72 = v71;
  v73 = objc_opt_self();
  v74 = sub_25BEB4384();
  v121[0] = 0;
  v75 = [v73 JSONObjectWithData:v74 options:8 error:v121];

  if (!v75)
  {
    v79 = v121[0];
    v80 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BE672C8(v70, v72);

    goto LABEL_29;
  }

  v76 = v121[0];
  sub_25BEB4AF4();
  swift_unknownObjectRelease();
  sub_25BE63D30(0, &qword_280E76F18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25BE672C8(v70, v72);
    goto LABEL_29;
  }

  sub_25BE67480(v121, v120);
  sub_25BE672C8(v70, v72);
  if ((~v121[0] & 0xF000000000000007) == 0)
  {
LABEL_29:
    *(v114 + v113[12]) = 0xF000000000000007;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v81 = sub_25BEB4764();
    __swift_project_value_buffer(v81, qword_280E77F40);

    v82 = sub_25BEB4744();
    v83 = sub_25BEB4A54();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v121[0] = v85;
      *v84 = 136315138;
      v86 = sub_25BE60F30(v89, v55, v121);

      *(v84 + 4) = v86;
      _os_log_impl(&dword_25BE5A000, v82, v83, "Failed parsing EngagementUpsellTrigger: invalid condition %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x25F87FD60](v85, -1, -1);
      MEMORY[0x25F87FD60](v84, -1, -1);
    }

    else
    {
    }

    sub_25BEABB48();
    swift_allocError();
    swift_willThrow();
    v87 = MEMORY[0x277D6CF38];
    sub_25BE66964(v106, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    sub_25BE66964(v105, &qword_280E76DE8, v87);
    sub_25BE66964(v118, &qword_280E76DE8, v87);
    sub_25BE66964(v92, &qword_280E76DE8, v87);
    (*(v117 + 8))(v90, v91);
    sub_25BE66870(v114, type metadata accessor for EngagementUpsellTrigger);
    return __swift_destroy_boxed_opaque_existential_0Tm(v119);
  }

  *(v114 + v113[12]) = v121[0];

  v77 = MEMORY[0x277D6CF38];
  sub_25BE66964(v106, &qword_280E76DE8, MEMORY[0x277D6CF38]);
  sub_25BE66964(v105, &qword_280E76DE8, v77);
  sub_25BE66964(v118, &qword_280E76DE8, v77);
  sub_25BE66964(v92, &qword_280E76DE8, v77);
  (*(v117 + 8))(v90, v91);
LABEL_26:
  sub_25BE66EF8(v114, v107);
  return __swift_destroy_boxed_opaque_existential_0Tm(v119);
}

uint64_t sub_25BEA9E70(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x28223BE20](a1, a2);
  v5 = sub_25BEB4BE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_25BE63D30(0, &qword_27FBE46D8);
  sub_25BEAC7B8(0, &qword_27FBE46B0, MEMORY[0x277D844C8]);
  v11 = v10;
  sub_25BEABB9C();
  sub_25BEB4D84();
  if (!v3)
  {
    v46[0] = v11;
    v46[1] = v2;
    v49 = v5;
    v50 = 0;
    v47 = v9;
    v48 = v6;
    v12 = 0;
    v14 = v55[0] + 64;
    v13 = *(v55[0] + 64);
    v52 = v55[0];
    v15 = 1 << *(v55[0] + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    v2 = MEMORY[0x277D84F98];
    v51 = v18;
    if ((v16 & v13) != 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_8:
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        result = sub_25BEB4E94();
        __break(1u);
        return result;
      }

      if (v20 >= v18)
      {

        return v2;
      }

      v17 = *(v14 + 8 * v20);
      ++v12;
    }

    while (!v17);
    while (1)
    {
      v21 = __clz(__rbit64(v17)) | (v20 << 6);
      v22 = (*(v52 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      memcpy(v55, (*(v52 + 56) + 2200 * v21), 0x898uLL);

      sub_25BE68BBC(v55, v54);
      v25._countAndFlagsBits = v23;
      v25._object = v24;
      EngagementUIPlacement.init(rawValue:)(v25);
      v26 = v53;
      if (v53 == 32)
      {
        break;
      }

      v27 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v2;
      v30 = sub_25BE65758(v26);
      v31 = v2[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_26;
      }

      v34 = v29;
      if (v2[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BEAC5D8(v33, v29);
        }
      }

      else
      {
        sub_25BE66340(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_25BE65758(v26);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_28;
        }

        v30 = v35;
      }

      v14 = v27;
      v17 &= v17 - 1;
      v18 = v51;
      if (v34)
      {
        v2 = v53;
        v19 = (v53[7] + 2200 * v30);
        memcpy(v54, v19, sizeof(v54));
        memcpy(v19, v55, 0x898uLL);
        sub_25BEABC80(v54);
        v12 = v20;
        if (!v17)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v2 = v53;
        v53[(v30 >> 6) + 8] |= 1 << v30;
        *(v2[6] + v30) = v26;
        memcpy((v2[7] + 2200 * v30), v55, 0x898uLL);
        v37 = v2[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_27;
        }

        v2[2] = v39;
        v12 = v20;
        if (!v17)
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      v20 = v12;
    }

    sub_25BEABC80(v55);
    sub_25BEB4CF4();
    v41 = v47;
    sub_25BEB4BD4();
    v2 = sub_25BEB4BF4();
    swift_allocError();
    v43 = v42;
    v45 = v48;
    v44 = v49;
    (*(v48 + 16))(v42, v41, v49);
    (*(*(v2 - 1) + 104))(v43, *MEMORY[0x277D84168], v2);
    swift_willThrow();

    (*(v45 + 8))(v41, v44);
  }

  return v2;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = sub_25BEB4BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE63D30(0, &qword_27FBE46D8);
  sub_25BEABB9C();
  sub_25BEB4D84();
  if (!v3)
  {
    v48 = v6;
    v49 = 0;
    v45[1] = v5;
    v45[2] = v2;
    v46 = v10;
    v47 = v7;
    v11 = 0;
    v13 = v53[0] + 64;
    v12 = *(v53[0] + 64);
    v51 = v53[0];
    v14 = 1 << *(v53[0] + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v2 = MEMORY[0x277D84F98];
    v50 = v17;
    if ((v15 & v12) != 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_8:
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        result = sub_25BEB4E94();
        __break(1u);
        return result;
      }

      if (v19 >= v17)
      {

        return v2;
      }

      v16 = *(v13 + 8 * v19);
      ++v11;
    }

    while (!v16);
    while (1)
    {
      v20 = __clz(__rbit64(v16)) | (v19 << 6);
      v21 = (*(v51 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      memcpy(v53, (*(v51 + 56) + 2200 * v20), 0x898uLL);

      sub_25BE68BBC(v53, v52);
      v24._countAndFlagsBits = v22;
      v24._object = v23;
      EngagementUIPlacement.init(rawValue:)(v24);
      v25 = v54;
      if (v54 == 32)
      {
        break;
      }

      v26 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v2;
      v29 = sub_25BE65758(v25);
      v30 = v2[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_26;
      }

      v33 = v28;
      if (v2[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BEAC5D8(v32, v28);
        }
      }

      else
      {
        sub_25BE66340(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_25BE65758(v25);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_28;
        }

        v29 = v34;
      }

      v13 = v26;
      v16 &= v16 - 1;
      v17 = v50;
      if (v33)
      {
        v2 = v54;
        v18 = (v54[7] + 2200 * v29);
        memcpy(v52, v18, sizeof(v52));
        memcpy(v18, v53, 0x898uLL);
        sub_25BEABC80(v52);
        v11 = v19;
        if (!v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v2 = v54;
        v54[(v29 >> 6) + 8] |= 1 << v29;
        *(v2[6] + v29) = v25;
        memcpy((v2[7] + 2200 * v29), v53, 0x898uLL);
        v36 = v2[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_27;
        }

        v2[2] = v38;
        v11 = v19;
        if (!v16)
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      v19 = v11;
    }

    sub_25BEABC80(v53);
    sub_25BEB4CF4();
    v40 = v46;
    sub_25BEB4BD4();
    v2 = sub_25BEB4BF4();
    swift_allocError();
    v42 = v41;
    v44 = v47;
    v43 = v48;
    (*(v47 + 16))(v41, v40, v48);
    (*(*(v2 - 1) + 104))(v42, *MEMORY[0x277D84168], v2);
    swift_willThrow();

    (*(v44 + 8))(v40, v43);
  }

  return v2;
}

uint64_t EngagementUpsellTrigger.condition.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for EngagementUpsellTrigger() + 48));
  *a1 = v3;

  return sub_25BEAC7A0(v3);
}

uint64_t EngagementUpsellTrigger.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEAC7B8(0, &qword_27FBE46F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEABAA0();
  sub_25BEB4F44();
  LOBYTE(v15) = 0;
  sub_25BEB4714();
  sub_25BEAC81C(&qword_27FBE46F8);
  sub_25BEB4E34();
  if (!v2)
  {
    v11 = type metadata accessor for EngagementUpsellTrigger();
    LOBYTE(v15) = 1;
    sub_25BEB4E34();
    LOBYTE(v15) = 2;
    sub_25BEB4E14();
    LOBYTE(v15) = 3;
    sub_25BEB4E24();
    LOBYTE(v15) = 4;
    sub_25BEB4DD4();
    LOBYTE(v15) = 5;
    sub_25BEB4DD4();
    v15 = *(v3 + v11[13]);
    v14 = 6;
    sub_25BE61E38(0, &qword_280E76718, &type metadata for EngagementUpsellPlacement, MEMORY[0x277D834F8]);
    sub_25BEAC860();
    sub_25BEB4E34();
    LOBYTE(v15) = *(v3 + v11[10]);
    v14 = 7;
    sub_25BEAC9AC();
    sub_25BEB4E34();
    LOBYTE(v15) = 8;
    sub_25BEB4E24();
    v15 = *(v3 + v11[12]);
    v14 = 9;
    sub_25BEAC7A0(v15);
    sub_25BE9AFF0();
    sub_25BEB4DE4();
    sub_25BE9DA3C(v15);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25BEAABB4(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_25BEB43C4();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v6);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_25BEADB9C();
  v38 = a2;
  result = sub_25BEB4CA4();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v39 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + v22);
      v24 = *(v5 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        (*v39)(v40, v25, v41);
      }

      else
      {
        (*v36)(v40, v25, v41);
      }

      sub_25BEB4F04();
      v42 = v23;
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      result = (*v39)(*(v10 + 56) + v24 * v18, v40, v41);
      ++*(v10 + 16);
      v5 = v37;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25BEAAF34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25BE61E38(0, &qword_280E76638, &type metadata for EngagementRequest, MEMORY[0x277D84460]);
  v33 = a2;
  result = sub_25BEB4CA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v34 = *(v22 + 8);
      if ((v33 & 1) == 0)
      {
        v24 = v23;
      }

      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25BEAB20C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25BE6998C(0, &qword_280E76610);
  result = sub_25BEB4CA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_25BE5F500((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_25BE7B0AC(v23, &v36);
        sub_25BE60ED4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_25BEB4B34();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_25BE5F500(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
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
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25BEAB4DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25BEADB00();
  v30 = a2;
  result = sub_25BEB4CA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25BEAB780(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25BE61E38(0, &qword_280E76640, &type metadata for EngagementInlineViewManager.Placement, MEMORY[0x277D84460]);
  v38 = a2;
  result = sub_25BEB4CA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 40 * v20);
      v39 = *v23;
      v24 = *(v23 + 2);
      v40 = *(v23 + 1);
      v25 = *(v23 + 3);
      v26 = v23[32];
      if ((v38 & 1) == 0)
      {
        v27 = v40;
        sub_25BE86988(v24, v25, v26);
      }

      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v39;
      *(v16 + 8) = v40;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_25BEABAA0()
{
  result = qword_27FBE46B8;
  if (!qword_27FBE46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46B8);
  }

  return result;
}

unint64_t sub_25BEABAF4()
{
  result = qword_27FBE46C8;
  if (!qword_27FBE46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46C8);
  }

  return result;
}

unint64_t sub_25BEABB48()
{
  result = qword_27FBE46D0;
  if (!qword_27FBE46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46D0);
  }

  return result;
}

unint64_t sub_25BEABB9C()
{
  result = qword_27FBE46E0;
  if (!qword_27FBE46E0)
  {
    sub_25BE63D30(255, &qword_27FBE46D8);
    sub_25BEABC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46E0);
  }

  return result;
}

unint64_t sub_25BEABC2C()
{
  result = qword_27FBE46E8;
  if (!qword_27FBE46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE46E8);
  }

  return result;
}

uint64_t sub_25BEABCD4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_25BEB43C4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_25BEABD80(unint64_t result, char a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_25BEABDD0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_25BE5F500(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_25BEABE4C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

unint64_t sub_25BEABE90(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_25BEABEE8()
{
  v1 = v0;
  v28 = sub_25BEB43C4();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v2);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEADB9C();
  v4 = *v0;
  v5 = sub_25BEB4C94();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26[0] = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v30;
        v22 = *(v30 + 72) * v19;
        v24 = v27;
        v23 = v28;
        (*(v30 + 16))(v27, *(v4 + 56) + v22, v28);
        v25 = v29;
        *(*(v29 + 48) + v19) = v20;
        result = (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
        v14 = v31;
      }

      while (v31);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26[0];
        v6 = v29;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v31 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

id sub_25BEAC144()
{
  v1 = v0;
  sub_25BE61E38(0, &qword_280E76638, &type metadata for EngagementRequest, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_25BEB4C94();
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v20 = *(v4 + 56) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
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

void *sub_25BEAC2CC()
{
  v1 = v0;
  sub_25BE6998C(0, &qword_280E76610);
  v2 = *v0;
  v3 = sub_25BEB4C94();
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
        v18 = 40 * v17;
        sub_25BE7B0AC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25BE60ED4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25BE5F500(v22, (*(v4 + 56) + v17));
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

void *sub_25BEAC488()
{
  v1 = v0;
  sub_25BEADB00();
  v2 = *v0;
  v3 = sub_25BEB4C94();
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

void *sub_25BEAC5D8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  sub_25BE61E38(0, &qword_280E76648, &type metadata for EngagementUpsellPlacement, MEMORY[0x277D84460]);
  v4 = *v2;
  v5 = sub_25BEB4C94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; result = sub_25BE68BBC(__dst, v20))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v18 = v15 | (v10 << 6);
      v19 = *(*(v4 + 48) + v18);
      memcpy(__dst, (*(v4 + 56) + 2200 * v18), 0x898uLL);
      *(*(v6 + 48) + v18) = v19;
      memcpy((*(v6 + 56) + 2200 * v18), __dst, 0x898uLL);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v4 + 64 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_25BEAC7A0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_25BEAC7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEABAA0();
    v7 = a3(a1, &type metadata for EngagementUpsellTrigger.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEAC81C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25BEB4714();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BEAC860()
{
  result = qword_27FBE4700;
  if (!qword_27FBE4700)
  {
    sub_25BE61E38(255, &qword_280E76718, &type metadata for EngagementUpsellPlacement, MEMORY[0x277D834F8]);
    sub_25BEAC904();
    sub_25BEAC958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4700);
  }

  return result;
}

unint64_t sub_25BEAC904()
{
  result = qword_27FBE4708;
  if (!qword_27FBE4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4708);
  }

  return result;
}

unint64_t sub_25BEAC958()
{
  result = qword_27FBE4710;
  if (!qword_27FBE4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4710);
  }

  return result;
}

unint64_t sub_25BEAC9AC()
{
  result = qword_27FBE4718;
  if (!qword_27FBE4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4718);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUpsellTrigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementUpsellTrigger.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BEACB64()
{
  result = qword_27FBE4720;
  if (!qword_27FBE4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4720);
  }

  return result;
}

unint64_t sub_25BEACBBC()
{
  result = qword_27FBE4728;
  if (!qword_27FBE4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4728);
  }

  return result;
}

unint64_t sub_25BEACC14()
{
  result = qword_27FBE4730;
  if (!qword_27FBE4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4730);
  }

  return result;
}

unint64_t sub_25BEACC6C()
{
  result = qword_27FBE4738;
  if (!qword_27FBE4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE4738);
  }

  return result;
}

void *sub_25BEACCC0()
{
  v1 = v0;
  v2 = type metadata accessor for EngagementUpsellTrigger();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE6862C();
  v5 = *v0;
  v6 = sub_25BEB4C94();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_25BE5F510(*(v5 + 56) + v27, v31, type metadata accessor for EngagementUpsellTrigger);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_25BE66EF8(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_21;
      }

      v20 = *(v5 + 64 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}