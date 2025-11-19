uint64_t sub_249D36BE0()
{
  v0 = sub_249D733D4();
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || ((v2 = sub_249D733D4(), swift_isClassType()) ? (v3 = v2 == 0) : (v3 = 1), v3))
  {
    sub_249D734E4();
    MEMORY[0x24C201340](0xD000000000000029, 0x8000000249D7A260);
    sub_249D733F4();
    sub_249D73564();
    result = sub_249D735B4();
    __break(1u);
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    LODWORD(result) = [swift_getObjCClassFromMetadata() isSubclassOfClass_];
    if (v2 == v0)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_249D36EB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D36ED8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_249D36F98(void *a1, uint64_t *a2)
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

void *sub_249D36FF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249D37038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D37058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_249D370BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_249D37130()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_249D37170()
{
  swift_getKeyPath();
  sub_249D73514();

  sub_249D39124(&qword_27EF1B090, _s8ObserverCMa);
  sub_249D72874();
}

void sub_249D372D4()
{
  sub_249D37170();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getAtKeyPath();
}

uint64_t sub_249D37338()
{
  v1 = v0 + OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_processToken;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v3 = Strong;
  v4 = *(v1 + 8);
  v5 = Strong + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state;
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state));
  v6 = sub_249D38884(v4, *(v5 + 16));
  if (v6)
  {
    v7 = v6;
    v8 = sub_249D6DA54();
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(v5);

  return v8;
}

id sub_249D373D4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_249D728F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_settingsObservers;
  v9 = objc_opt_self();
  *&v1[v8] = [v9 weakObjectsHashTable];
  v10 = OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_clientSettingsObservers;
  *&v1[v10] = [v9 weakObjectsHashTable];
  sub_249D728A4();
  swift_unknownObjectUnownedInit();
  _s8ObserverC8HandlersCMa();
  v11 = swift_allocObject();
  *(v11 + 16) = [v9 weakObjectsHashTable];
  *(v11 + 24) = [v9 weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] = v11;
  if (qword_27EF1AD18 != -1)
  {
    swift_once();
  }

  v12 = qword_27EF20598;
  v13 = [a1 definition];
  v14 = [v13 clientIdentity];

  v15 = [v14 processIdentity];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v24 = v15;
  v16 = v12 + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state;
  v17 = v15;
  os_unfair_lock_lock(v16);
  [*(v16 + 8) addObject_];
  os_unfair_lock_unlock(v16);

  sub_249D3942C(v23, &v1[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_processToken]);
  v18 = [a1 identity];
  v19 = [v18 description];

  sub_249D73144();
  sub_249D728E4();
  (*(v5 + 32))(&v1[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_logger], v7, v4);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  [a1 addObserver_];

  return v20;
}

id sub_249D3776C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249D3794C(uint64_t a1, void *a2)
{
  *&v4[0] = a2;
  v5 = xmmword_249D751C0;
  v2 = a2;
  sub_249D379B0(v4);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v5;
  v7[3] = v6;
  return sub_249D391D8(v7);
}

void sub_249D379B0(__int128 *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = a1[3];
  v20 = a1[2];
  v21 = v3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_249D3922C(&v18, &v22);
  v5 = Strong;
  v6 = [v5 identifier];
  v7 = sub_249D73144();
  v9 = v8;

  *&v23[8] = v18;
  *&v23[24] = v19;
  *&v23[40] = v20;
  *&v23[56] = v21;
  *&v22 = v5;
  *(&v22 + 1) = v7;
  *v23 = v9;
  v10 = [*(*(v1 + OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers) + 16) allObjects];
  v11 = sub_249D73234();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_249D39288(&v22);
    return;
  }

  v12 = sub_249D73444();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C201690](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v14)
        {
          v15 = *(v14 + 16);
          v16[2] = *&v23[16];
          v16[3] = *&v23[32];
          v16[4] = *&v23[48];
          v17 = *&v23[64];
          v16[0] = v22;
          v16[1] = *v23;
          v15(v16);
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_249D37F88(uint64_t a1, void *a2)
{
  v5 = 0uLL;
  *&v4[0] = a2;
  v2 = a2;
  sub_249D379B0(v4);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v5;
  v7[3] = v6;
  return sub_249D391D8(v7);
}

void sub_249D38008(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_249D39124(&qword_27EF1B090, _s8ObserverCMa);
  v6 = a4;
  v7 = a1;
  sub_249D72864();
}

uint64_t sub_249D38184(uint64_t a1, void *a2)
{
  *&v4[0] = a2;
  v5 = xmmword_249D751D0;
  v2 = a2;
  sub_249D379B0(v4);
  v7[0] = v4[0];
  v7[1] = v4[1];
  v7[2] = v5;
  v7[3] = v6;
  return sub_249D391D8(v7);
}

void sub_249D38380(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v5 = [*(a1 + *a3) allObjects];
  v6 = sub_249D73234();

  if (v6 >> 62)
  {
LABEL_18:
    v7 = sub_249D73444();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C201690](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (v9)
      {
        v11 = [a2 settingsDiff];
        if (v11)
        {
          break;
        }
      }
    }

LABEL_4:
    swift_unknownObjectRelease();
    ++v8;
    if (v10 == v7)
    {
      goto LABEL_19;
    }
  }

  v12 = v11;
  v13 = (v9 + OBJC_IVAR____TtC12DrawingBoard21ObservedSettingsStore_storage);
  os_unfair_lock_lock((v9 + OBJC_IVAR____TtC12DrawingBoard21ObservedSettingsStore_storage));
  sub_249D6CFA8(&v13[2], v12);
  if (!v4)
  {
    v4 = 0;
    os_unfair_lock_unlock(v13);

    goto LABEL_4;
  }

  os_unfair_lock_unlock(v13);
  __break(1u);
}

uint64_t sub_249D38564()
{
  result = swift_slowAlloc();
  qword_27EF1B050 = result;
  return result;
}

id sub_249D3858C()
{
  if (qword_27EF1ACE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF1B050;
  if (objc_getAssociatedObject(v0, qword_27EF1B050))
  {
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_249D39488(v8);
    goto LABEL_10;
  }

  _s8ObserverCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    objc_allocWithZone(_s8ObserverCMa());
    v3 = v0;
    v2 = sub_249D373D4(v3);
    objc_setAssociatedObject(v3, v1, v2, 1);
    return v2;
  }

  return v5;
}

uint64_t FBScene.observed.getter@<X0>(void *a1@<X8>)
{
  v3 = v1;

  return sub_249D610D8(v3, a1);
}

uint64_t _s8ObserverCMa()
{
  result = qword_27EF1B080;
  if (!qword_27EF1B080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D3873C()
{
  result = sub_249D728F4();
  if (v1 <= 0x3F)
  {
    result = sub_249D728B4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_249D38834()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_285CF8A28;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_249D38884(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_249D73594();

    if (v4)
    {
      sub_249D38A20(0, &qword_27EF1B098);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_249D68D10(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_249D38954@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clientSettings];
  *a2 = result;
  return result;
}

id sub_249D389C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 settings];
  *a2 = result;
  return result;
}

uint64_t sub_249D38A20(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_249D38A68()
{
  result = qword_27EF1B0A8;
  if (!qword_27EF1B0A8)
  {
    sub_249D38A20(255, &qword_27EF1B0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B0A8);
  }

  return result;
}

void sub_249D38AD0(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v51[1] = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249D73434();
    sub_249D38A20(0, &qword_27EF1B0A0);
    sub_249D38A68();
    sub_249D732E4();
    v3 = v51[2];
    v5 = v51[3];
    v6 = v51[4];
    v7 = v51[5];
    v8 = v51[6];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = (v12 & *(a1 + 56));

    v6 = v10;
    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  *&v4 = 136446466;
  v42 = v4;
  v45 = v3;
  v46 = v2;
  v43 = v13;
  v44 = v5;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v14 = sub_249D73474();
  if (v14)
  {
    v50 = v14;
    sub_249D38A20(0, &qword_27EF1B0A0);
    swift_dynamicCast();
    v15 = v7;
    v48 = v8;
    for (i = v51[0]; i; i = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v17))))))
    {
      v18 = [*(*(v2 + OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers) + 24) allObjects];
      v19 = sub_249D73234();

      if (v19 >> 62)
      {
        v20 = sub_249D73444();
        if (v20)
        {
LABEL_20:
          v47 = v15;
          v21 = 0;
          v22 = i;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x24C201690](v21, v19);
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_43;
              }
            }

            else
            {
              if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v23 = *(v19 + 8 * v21 + 32);
              swift_unknownObjectRetain();
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
                goto LABEL_45;
              }
            }

            swift_getObjectType();
            if (swift_conformsToProtocol2())
            {
              if (v23)
              {
                v25 = *(*(v23 + 56) + 88);
                swift_getKeyPath();
                v51[0] = v25;
                sub_249D39124(&qword_27EF1B0B0, type metadata accessor for UIPresenterObserver);
                sub_249D72874();

                if (*(v25 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting))
                {
                  v26 = *(v23 + 32);
                  swift_getKeyPath();
                  v51[0] = v23;
                  sub_249D39124(&qword_27EF1B0B8, type metadata accessor for Presentation);
                  sub_249D72874();

                  v27 = *(v23 + 48);
                  v26(&v50);
                  v22 = i;

                  if ((v50 & 1) == 0)
                  {
                    break;
                  }
                }
              }
            }

            swift_unknownObjectRelease();
            ++v21;
            if (v24 == v20)
            {

              v7 = v47;
              v8 = v48;
              v2 = v46;
              goto LABEL_38;
            }
          }

          v28 = i;
          sub_249D4A39C(v51, v28);

          v29 = v28;
          swift_unknownObjectRetain();
          v2 = v46;
          v30 = sub_249D728D4();
          v31 = sub_249D73324();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v50 = v23;
            v51[0] = v33;
            *v32 = v42;
            type metadata accessor for Presentation();
            swift_unknownObjectRetain();
            v34 = sub_249D73154();
            v36 = sub_249D70FF0(v34, v35, v51);

            *(v32 + 4) = v36;
            *(v32 + 12) = 2082;
            v37 = [v29 succinctDescription];

            if (!v37)
            {
              goto LABEL_46;
            }

            v38 = sub_249D73144();
            v40 = v39;

            v41 = sub_249D70FF0(v38, v40, v51);

            *(v32 + 14) = v41;
            _os_log_impl(&dword_249D35000, v30, v31, "%{public}s handled action %{public}s", v32, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C202240](v33, -1, -1);
            MEMORY[0x24C202240](v32, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v7 = v47;
          v8 = v48;
LABEL_38:
          v5 = v44;
          v3 = v45;
          v13 = v43;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_20;
        }
      }

      v7 = v15;
      v8 = v48;
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = v7;
      v17 = v8;
      v15 = v7;
      if (!v8)
      {
        while (1)
        {
          v15 = (v16 + 1);
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            goto LABEL_42;
          }

          v17 = v5[v15];
          ++v16;
          if (v17)
          {
            goto LABEL_17;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

LABEL_17:
      v48 = (v17 - 1) & v17;
    }
  }

LABEL_42:
  sub_249D39114();
}

uint64_t sub_249D39124(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_249D39180@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clientHandle];
  *a2 = result;
  return result;
}

void sub_249D39308()
{
  v0 = 1;
  v1 = 0u;
  v2 = 0u;
  v4 = 0;
  v5 = 0;
  v3 = 0xA000000000000000;
  sub_249D379B0(&v0);
}

void sub_249D39370()
{
  *&v1[0] = [*(v0 + 24) contentState];
  v1[2] = xmmword_249D751E0;
  sub_249D379B0(v1);
}

id sub_249D393DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isValid];
  *a2 = result;
  return result;
}

uint64_t sub_249D39488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1B0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_249D39550(void *a1, uint64_t a2)
{
  if ([isEscapingClosureAtFileLocation isActive])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_249D39A64;
    *(a2 + 24) = v5;
    v15 = sub_249D39A6C;
    v16 = a2;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_249D39898;
    v14 = &block_descriptor_12;
    a1 = _Block_copy(&v11);

    [isEscapingClosureAtFileLocation performUpdate_];
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_249D399D0;
  *(v8 + 24) = v7;
  v15 = sub_249D399D8;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_249D39A00;
  v14 = &block_descriptor;
  v9 = _Block_copy(&v11);

  [isEscapingClosureAtFileLocation updateSettingsWithBlock_];
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249D397D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2);
}

void sub_249D39898(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

uint64_t sub_249D39904(uint64_t a1, void (*a2)(uint64_t, void))
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1, 0);
}

void sub_249D39A00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_249D39AA8(id a1, id a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1;
  v10 = *a3;
  v11 = *(a3 + 4);
  if (!a1)
  {
    v21 = 0;
    v14 = *v6;
    if (*v6)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v12 = [a1 uiPresentationManager];
  v13 = v12;
  v14 = *v5;
  if (!*v5)
  {
    if (v12)
    {
      v21 = v12;
      goto LABEL_22;
    }

    a1 = *v5;
    v21 = *v5;
LABEL_13:
    if (v6[1] != a2)
    {
      goto LABEL_20;
    }

    v22 = *(v6 + 4);
    if (*(v6 + 20) == 1)
    {
      if (v22)
      {
        if (v10)
        {
          v23 = v11;
        }

        else
        {
          v23 = 0;
        }

        if (v23 != 1)
        {
          goto LABEL_20;
        }

LABEL_31:

        return swift_unknownObjectRetain();
      }

      if (v10)
      {
        v46 = 0;
      }

      else
      {
        v46 = v11;
      }

      if (v46)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v22 == v10)
      {
        v32 = v11;
      }

      else
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_20:
    v14 = a1;
    if (v21)
    {
      v13 = v21;
      goto LABEL_22;
    }

LABEL_24:

    *v6 = v21;
    v6[1] = a2;
    *(v6 + 4) = v10;
    *(v6 + 20) = v11;
    swift_unknownObjectRelease();
    result = 0;
    v6[3] = 0;
    return result;
  }

  if (!v12)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v49 = a4;
  v15 = v11;
  v16 = v10;
  v17 = a2;
  sub_249D38A20(0, &qword_27EF1B108);
  v18 = v14;
  v19 = v13;
  v20 = sub_249D73374();

  if (v20)
  {
    a1 = v14;
    v21 = v13;
    a2 = v17;
    v10 = v16;
    v11 = v15;
    a4 = v49;
    goto LABEL_13;
  }

  v21 = v13;
  v13 = v19;
  a2 = v17;
  v10 = v16;
  v11 = v15;
  a4 = v49;
LABEL_22:
  v24 = v21;
  if ([v13 isInvalidated])
  {

    goto LABEL_24;
  }

  v47 = v24;
  v48 = v21;
  if (v9)
  {
    v26 = v10;
    v27 = a2;
    v28 = [v9 identifier];
    v29 = sub_249D73144();
    v31 = v30;

    a2 = v27;
    v10 = v26;
  }

  else
  {
    v31 = 0xEA00000000005D65;
    v29 = 0x6E656373206F6E5BLL;
  }

  v53 = v29;
  v54 = v31;
  MEMORY[0x24C201340](95, 0xE100000000000000);
  v33 = sub_249D73664();
  MEMORY[0x24C201340](v33);

  MEMORY[0x24C201340](95, 0xE100000000000000);
  v50 = v11;
  if (v11)
  {
    if (v10)
    {
      v34 = 0x6472616F6279656BLL;
    }

    else
    {
      v34 = 0x726579614C6C6C61;
    }

    if (v10)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v35 = 0xE900000000000073;
    }
  }

  else
  {
    v36 = sub_249D73664();
    MEMORY[0x24C201340](v36);

    v34 = 0x3A747865746E6F63;
    v35 = 0xE800000000000000;
  }

  v37 = v10;
  MEMORY[0x24C201340](v34, v35);

  MEMORY[0x24C201340](95, 0xE100000000000000);
  MEMORY[0x24C201340](a4, a5);
  v38 = type metadata accessor for LayerTarget._UILayerTarget();
  v39 = objc_allocWithZone(v38);
  if (v10)
  {
    v40 = 0;
  }

  else
  {
    v40 = v50;
  }

  if (v40)
  {
    swift_deallocPartialClassInstance();
    v41 = sub_249D73134();

    v42 = [v13 createPresenterWithIdentifier:v41 priority:a2];

    swift_unknownObjectRetain();
    *v6 = v48;
    v6[1] = a2;
    *(v6 + 4) = 0;
    *(v6 + 20) = 1;
  }

  else
  {
    v43 = &v39[OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target];
    *v43 = v10;
    v43[4] = v50;
    v52.receiver = v39;
    v52.super_class = v38;
    v44 = objc_msgSendSuper2(&v52, sel_init);
    v45 = sub_249D73134();

    v42 = [v13 createPresenterForLayerTarget:v44 identifier:v45 priority:a2];

    swift_unknownObjectRetain();
    *v6 = v48;
    v6[1] = a2;
    *(v6 + 4) = v37;
    *(v6 + 20) = v50;
  }

  swift_unknownObjectRelease();
  result = v42;
  v6[3] = v42;
  return result;
}

id sub_249D39F64()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  swift_unknownObjectRetain();
  sub_249D72874();

  v2 = *(v0 + 64);
  swift_getKeyPath();
  v3 = v2;
  sub_249D72874();

  v4 = *(v0 + 72);
  swift_getKeyPath();
  sub_249D72874();

  v5 = *(v0 + 84);
  v11 = *(v0 + 80);
  v12 = v5;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  swift_beginAccess();
  v8 = sub_249D39AA8(v2, v4, &v11, v6, v7);
  swift_endAccess();

  if (v1)
  {
    if (v8 && v1 == v8)
    {
LABEL_8:
      swift_unknownObjectRelease();
      return v8;
    }

    [v1 invalidate];
LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D3B170(&qword_27EF1B0B0, type metadata accessor for UIPresenterObserver);
    swift_unknownObjectRetain();
    sub_249D72864();

    swift_unknownObjectRelease();
    if (v8)
    {
      [swift_unknownObjectRetain() activate];
      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  return v8;
}

id sub_249D3A22C()
{
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_249D3A2DC()
{
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  return *(v0 + 72);
}

uint64_t sub_249D3A37C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  v4 = *(v1 + 84);
  *a1 = *(v1 + 80);
  *(a1 + 4) = v4;
  return result;
}

id sub_249D3A42C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_249D3A4E4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  sub_249D38A20(0, &qword_27EF1B0F8);
  v5 = v4;
  v6 = sub_249D73374();

  if (v6)
  {
    v7 = *(v2 + 64);
    *(v2 + 64) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
    sub_249D72864();
  }
}

uint64_t sub_249D3A650(uint64_t result)
{
  if (*(v1 + 72) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
    sub_249D72864();
  }

  return result;
}

uint64_t sub_249D3A75C(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 4);
  v4 = *(v1 + 80);
  if (*(v1 + 84) == 1)
  {
    if (v4)
    {
      if (v2)
      {
        v5 = *(result + 4);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0)
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
        sub_249D72864();
      }
    }

    else
    {
      if (v2)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(result + 4);
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    if (v4 == v2)
    {
      v7 = *(result + 4);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_7;
    }
  }

  *(v1 + 80) = v2;
  *(v1 + 84) = v3;
  return result;
}

uint64_t sub_249D3A8A4(uint64_t result, uint64_t a2)
{
  *(result + 80) = a2;
  *(result + 84) = BYTE4(a2) & 1;
  return result;
}

id sub_249D3A8B4()
{
  v1 = v0;
  result = sub_249D39F64();
  if (result)
  {
    v3 = sub_249D728D4();
    v4 = sub_249D73324();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_249D35000, v3, v4, "Activating UI driver.", v5, 2u);
      MEMORY[0x24C202240](v5, -1, -1);
    }

    swift_getKeyPath();
    v11[0] = v1;
    sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
    sub_249D72874();

    v6 = *(v1 + 64);
    sub_249D38A20(0, &unk_27EF1B120);
    [v6 addExtension_];
    swift_getObjectType();
    v7 = sub_249D73334();
    if (v7)
    {
      v8 = v7;
      swift_getKeyPath();
      v11[0] = v1;
      sub_249D72874();

      v9 = *(v1 + 64);
      v11[3] = sub_249D72914();
      v11[4] = MEMORY[0x277D74D10];
      v11[0] = v8;
      v10 = v9;

      sub_249D73344();
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_249D3AAC0()
{
  v1 = v0;
  v2 = sub_249D728D4();
  v3 = sub_249D73324();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249D35000, v2, v3, "Deactivating UI driver.", v4, 2u);
    MEMORY[0x24C202240](v4, -1, -1);
  }

  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  v5 = *(v1 + 64);
  sub_249D38A20(0, &unk_27EF1B120);
  return [v5 removeExtension_];
}

uint64_t sub_249D3AC08()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12DrawingBoard23UISceneHostingViewModel_logger;
  v2 = sub_249D728F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12DrawingBoard23UISceneHostingViewModel___observationRegistrar;
  v4 = sub_249D728B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for UISceneHostingViewModel()
{
  result = qword_27EF1B0E0;
  if (!qword_27EF1B0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D3AD64()
{
  result = sub_249D728F4();
  if (v1 <= 0x3F)
  {
    result = sub_249D728B4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249D3AE68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_249D3AEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_249D3AF30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0B0, type metadata accessor for UIPresenterObserver);
  sub_249D72874();

  *a2 = *(v3 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter);
  return swift_unknownObjectRetain();
}

uint64_t sub_249D3AFE4()
{
  swift_getKeyPath();
  sub_249D3B170(&qword_27EF1B0B0, type metadata accessor for UIPresenterObserver);
  sub_249D72864();
}

void sub_249D3B0B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 84) = v2;
}

void sub_249D3B114()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

uint64_t sub_249D3B170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D3B1B8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_249D73194();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_249D3B254(void *a1, uint64_t a2, int *a3)
{
  v4 = v3;
  v37 = a2;
  v7 = sub_249D728F4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249D72854();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = *(a3 + 4);
  sub_249D72844();
  v16 = sub_249D72834();
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v20 = sub_249D3B1B8(8, v16, v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = MEMORY[0x24C201310](v20, v22, v24, v26);
  v29 = v28;

  *(v4 + 16) = v27;
  *(v4 + 24) = v29;
  sub_249D728A4();
  v30 = v37;
  *(v4 + 64) = a1;
  *(v4 + 72) = v30;
  *(v4 + 80) = v14;
  *(v4 + 84) = v15;
  v31 = objc_allocWithZone(type metadata accessor for UIPresenterObserver());
  v32 = a1;
  *(v4 + 88) = [v31 init];
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 52) = 1;
  *(v4 + 56) = 0;
  v33 = [v32 identityToken];
  v34 = [v33 stringRepresentation];

  sub_249D73144();
  v40 = 0xD000000000000016;
  v41 = 0x8000000249D7A540;
  MEMORY[0x24C201340](46, 0xE100000000000000);
  MEMORY[0x24C201340](0x726576697264, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B110);
  sub_249D3B580();
  sub_249D736C4();
  sub_249D728E4();
  (*(v38 + 32))(v4 + OBJC_IVAR____TtC12DrawingBoard23UISceneHostingViewModel_logger, v9, v39);
  return v4;
}

unint64_t sub_249D3B580()
{
  result = qword_27EF1B118;
  if (!qword_27EF1B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B118);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_249D3B690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_249D3B6D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D3B740@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B130);
  MEMORY[0x28223BE20]();
  v8 = &v18[-v7];
  swift_getKeyPath();
  v21 = a2;
  sub_249D3C3CC(&qword_27EF1B138, type metadata accessor for SnapshotSource);

  sub_249D72874();

  v21 = a2[2];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v19 = a1;
  v20 = a2;
  v10 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B140);
  sub_249D3C078();
  sub_249D72E64();

  v11 = sub_249D72A84();
  v12 = sub_249D72DC4();
  v13 = &v8[*(v6 + 36)];
  *v13 = v11;
  v13[8] = v12;
  v21 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = v10;

  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B160);
  sub_249D3C178();
  sub_249D3C254();
  sub_249D72EF4();

  sub_249D3C354(v8);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B180);
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_249D3BA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_249D3C3CC(&qword_27EF1B138, type metadata accessor for SnapshotSource);
  sub_249D72874();

  v4 = *(a3 + 24);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_249D3858C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_249D73514();

  sub_249D3C3CC(&qword_27EF1B090, _s8ObserverCMa);
  sub_249D72874();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = [Strong contentState];

  if (v8 != 2)
  {
    goto LABEL_8;
  }

  if ((sub_249D72964() & 1) == 0)
  {
    if (sub_249D72974())
    {
    }

    MEMORY[0x24C201200](0.3, 1.0, 0.0);
LABEL_8:
    sub_249D72984();
  }
}

uint64_t sub_249D3BC80@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B140);
  MEMORY[0x28223BE20]();
  v8 = &v17 - v7;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v18 = a2;
  sub_249D3C3CC(&qword_27EF1B138, type metadata accessor for SnapshotSource);
  sub_249D72874();

  v9 = a2[3];
  if (v9)
  {
    v10 = v9;
    v11 = sub_249D3858C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_249D73514();

    v18 = v11;
    sub_249D3C3CC(&qword_27EF1B090, _s8ObserverCMa);
    sub_249D72874();

    Strong = swift_unknownObjectUnownedLoadStrong();
    v13 = [Strong contentState];

    if (v13 == 2)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v14 = 1.0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B158);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  *&v8[*(v6 + 36)] = v14;
  sub_249D3C414(v8, a3);
}

uint64_t sub_249D3BF7C(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v2;
  sub_249D6F5F4(v2);
}

unint64_t sub_249D3C078()
{
  result = qword_27EF1B148;
  if (!qword_27EF1B148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B140);
    sub_249D3C4C8(&qword_27EF1B150, &qword_27EF1B158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B148);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_249D3C178()
{
  result = qword_27EF1B168;
  if (!qword_27EF1B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B140);
    sub_249D3C078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B168);
  }

  return result;
}

unint64_t sub_249D3C254()
{
  result = qword_27EF1B170;
  if (!qword_27EF1B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B160);
    sub_249D3C3CC(&qword_27EF1B178, sub_249D3C308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B170);
  }

  return result;
}

unint64_t sub_249D3C308()
{
  result = qword_27EF1B0F8;
  if (!qword_27EF1B0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B0F8);
  }

  return result;
}

uint64_t sub_249D3C354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D3C3CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D3C414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D3C4C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249D3C630()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LocalSceneSpecification();
  v1 = objc_msgSendSuper2(&v8, sel_defaultExtensions);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B190);
    v3 = sub_249D73234();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_249D3C8A8(0, *(v3 + 16) + 1, 1, v3);
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_249D3C8A8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = type metadata accessor for LocalSceneExtension();
  *(v3 + 16) = v5 + 1;
  *(v3 + 8 * v5 + 32) = v6;
  return v3;
}

id LocalSceneSpecification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalSceneSpecification.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalSceneSpecification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalSceneSpecification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalSceneSpecification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_249D3C8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1A8);
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

void *sub_249D3C9AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249D3CAE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1B0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL sub_249D3CBE4(uint64_t a1)
{
  sub_249D3CC68(a1, v5);
  if (!v6)
  {
    sub_249D39488(v5);
    goto LABEL_5;
  }

  type metadata accessor for LocalSceneSpecification();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  v1 = v4;
LABEL_6:
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_249D3CC68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1B0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_249D3CCF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_249D3CD50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_249D3CDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v18 = *v2;
  v19 = v2[1];
  *v20 = v2[2];
  *&v20[16] = *(v2 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1B8);
  sub_249D72F74();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1C0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1C8) + 36);
  *v7 = KeyPath;
  *(v7 + 24) = v15;
  *(v7 + 8) = v14;
  *(v7 + 40) = v16;
  *(v7 + 48) = v17;
  sub_249D72F84();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1D0) + 36));
  *v8 = v18;
  v8[1] = v19;
  v8[2] = *v20;
  *(v8 + 41) = *&v20[9];
  type metadata accessor for WindowPropertiesReader(0);
  MEMORY[0x24C201340](46, 0xE100000000000000);
  MEMORY[0x24C201340](0x726576697264, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B110);
  sub_249D3C4C8(&qword_27EF1B118, &qword_27EF1B110);
  sub_249D736C4();
  sub_249D728E4();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1D8) + 36)) = 0;
  v9 = sub_249D73054();
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1E0);
  v13 = (v8 + *(result + 36));
  *v13 = v9;
  v13[1] = v11;
  return result;
}

unint64_t sub_249D3D0F4()
{
  result = qword_27EF1B1E8;
  if (!qword_27EF1B1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B1D0);
    sub_249D3D1AC();
    sub_249D3C4C8(&qword_27EF1B210, &qword_27EF1B1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B1E8);
  }

  return result;
}

unint64_t sub_249D3D1AC()
{
  result = qword_27EF1B1F0;
  if (!qword_27EF1B1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B1C8);
    sub_249D3C4C8(&qword_27EF1B1F8, &qword_27EF1B1C0);
    sub_249D3C4C8(&qword_27EF1B200, &qword_27EF1B208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B1F0);
  }

  return result;
}

uint64_t sub_249D3D298@<X0>(unint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v10[0] = &KeyPath;
  v8 = swift_getKeyPath();
  v10[1] = &v8;
  v7 = swift_getKeyPath();
  v10[2] = &v7;
  v6 = swift_getKeyPath();
  v10[3] = &v6;
  v5 = swift_getKeyPath();
  v10[4] = &v5;
  v4 = swift_getKeyPath();
  v10[5] = &v4;
  v3 = swift_getKeyPath();
  v10[6] = &v3;
  return sub_249D3D370(v10, a1);
}

uint64_t sub_249D3D370@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_249D73444())
  {
    v4 = sub_249D4C1AC(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = 0;
  v10 = v4;
  do
  {
    if (v5)
    {
      v6 = &qword_27EF1B230;
    }

    else
    {
      v6 = &qword_27EF1B228;
    }

    sub_249D38A20(0, v6);
    v7 = **(a1 + 8 * v5);

    sub_249D4A5B4(&v9, v7);

    ++v5;
  }

  while (v5 != 7);
  *a2 = v10;
  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B230);

  sub_249D38A20(0, &qword_27EF1B228);
}

uint64_t sub_249D3D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_249D3D7DC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.propagatedSettings.getter()
{
  sub_249D3D63C();

  return sub_249D72B44();
}

unint64_t sub_249D3D63C()
{
  result = qword_27EF1B218;
  if (!qword_27EF1B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B218);
  }

  return result;
}

uint64_t (*EnvironmentValues.propagatedSettings.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_249D3D63C();
  sub_249D72B44();
  return sub_249D3D730;
}

uint64_t sub_249D3D730(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_249D72B54();
  }

  sub_249D72B54();
}

unint64_t sub_249D3D7DC()
{
  result = qword_27EF1B220;
  if (!qword_27EF1B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B220);
  }

  return result;
}

id sub_249D3D83C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayConfiguration];
  *a2 = result;
  return result;
}

id sub_249D3D8F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deactivationReasons];
  *a2 = result;
  return result;
}

id sub_249D3D938@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enhancedWindowingEnabled];
  *a2 = result;
  return result;
}

id sub_249D3D980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hostReferenceAngleMode];
  *a2 = result;
  return result;
}

id sub_249D3D9C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 angleFromHostReferenceUprightDirection];
  *a2 = v4;
  return result;
}

id sub_249D3DA10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenReferenceDisplayModeStatus];
  *a2 = result;
  return result;
}

id sub_249D3DA58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userInterfaceStyle];
  *a2 = result;
  return result;
}

uint64_t sub_249D3DAA0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = a5;
  v9 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - v11;
  v14 = *v13;
  (*(v10 + 16))(&v18 - v11);
  v15 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  *(v16 + 5) = a4;
  *(v16 + 6) = a1;
  (*(v10 + 32))(&v16[v15], v12, v9);

  View.transformSceneSettings<A>(_:_:)(v14, sub_249D3F050, v16, a2, v14, a3);
}

uint64_t sub_249D3DC48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v10 = sub_249D73394();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = *(v9 - 8);
  (*(v13 + 16))(&v16 - v11, a3, v9);
  (*(v13 + 56))(v12, 0, 1, v9);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B2C0);
  return SceneSettings.subscript.setter(v12, a2, v14, a6);
}

id sub_249D3DDBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 underLock];
  *a2 = result;
  return result;
}

id sub_249D3DE4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusBarStyleOverridesToSuppress];
  *a2 = result;
  return result;
}

uint64_t sub_249D3DED0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = sub_249D3ECC0(a3, a4);
  sub_249D3DAA0(KeyPath, a1, a2, v11, a5);
}

id sub_249D3DF74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deactivationReasons];
  *a2 = result;
  return result;
}

id sub_249D3DFF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userInterfaceStyle];
  *a2 = result;
  return result;
}

uint64_t View.sceneForcedStatusBarStyle(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_249D3E14C();
  v9 = sub_249D73354();
  v7 = sub_249D3E198();
  sub_249D3DAA0(KeyPath, a1, a2, v7, a3);
}

id sub_249D3E0FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 forcedStatusBarStyle];
  *a2 = result;
  return result;
}

unint64_t sub_249D3E14C()
{
  result = qword_27EF1B250;
  if (!qword_27EF1B250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B250);
  }

  return result;
}

unint64_t sub_249D3E198()
{
  result = qword_27EF1B258;
  if (!qword_27EF1B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B260);
    sub_249D3ECC0(&qword_27EF1B268, sub_249D3E14C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B258);
  }

  return result;
}

id sub_249D3E264@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forcedStatusBarForegroundTransparent];
  *a2 = result;
  return result;
}

id sub_249D3E2C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canShowAlerts];
  *a2 = result;
  return result;
}

id sub_249D3E324@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 idleModeEnabled];
  *a2 = result;
  return result;
}

id sub_249D3E384@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 statusBarDisabled];
  *a2 = result;
  return result;
}

uint64_t View.scenePeripheryInsets(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_249D3ECC0(&qword_27EF1B270, type metadata accessor for UIEdgeInsets);
  sub_249D3DAA0(KeyPath, a1, a2, v7, a3);
}

id sub_249D3E4A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 peripheryInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_249D3E534@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusBarParts];
  *a2 = result;
  return result;
}

uint64_t View.sceneStatusBarAvoidanceFrame(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_249D3ECC0(&qword_27EF1B280, type metadata accessor for CGRect);
  sub_249D3DAA0(KeyPath, a1, a2, v7, a3);
}

id sub_249D3E658@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusBarAvoidanceFrame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_249D3E6C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusBarHeight];
  *a2 = v4;
  return result;
}

unint64_t sub_249D3E710()
{
  result = qword_27EF1B288;
  if (!qword_27EF1B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B288);
  }

  return result;
}

id sub_249D3E77C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 systemMinimumMargin];
  *a2 = v4;
  return result;
}

id sub_249D3E7DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 homeAffordanceOverlayAllowance];
  *a2 = v4;
  return result;
}

id sub_249D3E86C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceOrientation];
  *a2 = result;
  return result;
}

id sub_249D3E8D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 artworkSubtype];
  *a2 = result;
  return result;
}

uint64_t View.sceneHostContextIdentifierForSnapshotting(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_249D3DAA0(KeyPath, a1, a2, MEMORY[0x277D84CE0], a3);
}

id sub_249D3E9A4@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 hostContextIdentifierForSnapshotting];
  *a2 = result;
  return result;
}

uint64_t sub_249D3EA00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_249D3DAA0(KeyPath, a1, a2, a3, a4);
}

id sub_249D3EA8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scenePresenterRenderIdentifierForSnapshotting];
  *a2 = result;
  return result;
}

id sub_249D3EB1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessibilityContrast];
  *a2 = result;
  return result;
}

id sub_249D3EBA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenReferenceDisplayModeStatus];
  *a2 = result;
  return result;
}

id sub_249D3EBF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enhancedWindowingEnabled];
  *a2 = result;
  return result;
}

id sub_249D3EC78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hostReferenceAngleMode];
  *a2 = result;
  return result;
}

uint64_t sub_249D3ECC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D3ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_249D3E710();
  sub_249D3DAA0(KeyPath, a1, a2, v7, a3);
}

id sub_249D3ED98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 angleFromHostReferenceUprightDirection];
  *a2 = v4;
  return result;
}

uint64_t sub_249D3EDEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_249D3DAA0(KeyPath, a1, a2, MEMORY[0x277D839C8], a3);
}

id sub_249D3EE70@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inLiveResize];
  *a2 = result;
  return result;
}

uint64_t sub_249D3EEB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B2B0);
  sub_249D72A74();
  sub_249D3EF30();
  return swift_getWitnessTable();
}

unint64_t sub_249D3EF30()
{
  result = qword_27EF1B2B8;
  if (!qword_27EF1B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B2B8);
  }

  return result;
}

uint64_t sub_249D3EF94()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D3F0A8()
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF1ACE8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = off_27EF1B2D0;
    v1 = *(off_27EF1B2D0 + 2);

    if (!v1)
    {
      break;
    }

    v2 = 0;
    v3 = (v0 + 5);
    while (v2 < v0[2])
    {
      v4 = *(v3 - 1);

      sub_249D73264();
      sub_249D73254();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      ++v2;
      v4();

      v3 += 16;
      if (v1 == v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:

  off_27EF1B2D0 = MEMORY[0x277D84F90];
}

uint64_t sub_249D3F28C()
{
  v0 = MEMORY[0x24C201AB0]();
  sub_249D3F0A8();

  return MEMORY[0x2821F9378](v0);
}

void _sSo9NSRunLoopC12DrawingBoardE20waitForSwiftUILayoutyyyycFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = CFRunLoopGetCurrent();
  if (!qword_27EF1B2C8)
  {
    v5 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, sub_249D3F28C, 0);
    v6 = qword_27EF1B2C8;
    qword_27EF1B2C8 = v5;
    v7 = v5;

    if (!v7)
    {
      goto LABEL_18;
    }

    CFRunLoopAddObserver(v4, v7, *MEMORY[0x277CBF048]);
  }

  v8 = CFRunLoopCopyCurrentMode(v4);
  if (v8)
  {
    if (qword_27EF1B2C8)
    {
      v9 = v8;
      if (CFRunLoopContainsObserver(v4, qword_27EF1B2C8, v8))
      {
LABEL_9:

        goto LABEL_10;
      }

      if (qword_27EF1B2C8)
      {
        CFRunLoopAddObserver(v4, qword_27EF1B2C8, v9);
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (qword_27EF1ACE8 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  v11 = off_27EF1B2D0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_27EF1B2D0 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_249D3C9AC(0, v11[2] + 1, 1, v11);
    off_27EF1B2D0 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_249D3C9AC((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_249D3F51C;
  v15[5] = v10;
  off_27EF1B2D0 = v11;
  swift_endAccess();
}

uint64_t sub_249D3F4E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D3F544()
{
  swift_getKeyPath();
  v0 = sub_249D73514();

  return v0;
}

uint64_t sub_249D3F5B4@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a1 = result;
  return result;
}

void sub_249D3F5EC()
{
  swift_getObjectType();
  sub_249D3F544();
  sub_249D3FFD4();
  sub_249D72874();

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getAtKeyPath();
}

id sub_249D3F6F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCE12DrawingBoardCSo8FBSScene8Observer_settingsObservers;
  v5 = objc_opt_self();
  *&v1[v4] = [v5 weakObjectsHashTable];
  v6 = OBJC_IVAR____TtCE12DrawingBoardCSo8FBSScene8Observer_clientSettingsObservers;
  *&v1[v6] = [v5 weakObjectsHashTable];
  sub_249D728A4();
  swift_unknownObjectUnownedInit();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [a1 addObserver_];

  return v7;
}

void sub_249D3F9A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_249D3FFD4();
  v6 = a4;
  v7 = a1;
  sub_249D72864();
}

uint64_t sub_249D3FA60()
{
  result = swift_slowAlloc();
  qword_27EF1B2E0 = result;
  return result;
}

uint64_t sub_249D3FA88()
{
  result = swift_slowAlloc();
  qword_27EF1B2E8 = result;
  return result;
}

id sub_249D3FAB0()
{
  if (qword_27EF1ACF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF1B2E0;
  if (objc_getAssociatedObject(v0, qword_27EF1B2E0))
  {
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_249D39488(v8);
    goto LABEL_10;
  }

  _s8ObserverCMa_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    objc_allocWithZone(_s8ObserverCMa_0());
    v3 = v0;
    v2 = sub_249D3F6F0(v3);
    objc_setAssociatedObject(v3, v1, v2, 1);
    return v2;
  }

  return v5;
}

double FBSScene.observed.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_27EF1ACF8 != -1)
  {
    swift_once();
  }

  v4 = qword_27EF1B2E8;
  if (objc_getAssociatedObject(v2, qword_27EF1B2E8))
  {
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v23[0] = v11;
  v23[1] = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B2F8);
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_249D39488(v23);
  }

  v5 = v2;
  sub_249D61270(v5, &v17);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  sub_249D3FD84(&v17, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B2F8);
  v6 = sub_249D736D4();
  objc_setAssociatedObject(v5, v4, v6, 1);
  swift_unknownObjectRelease();
LABEL_11:
  v7 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v7;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  result = *&v17;
  v9 = v18;
  *a1 = v17;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_249D3FD84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void EnvironmentValues.hostingScene.getter(uint64_t a1@<X8>)
{
  v2 = sub_249D72AF4();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    v5 = [v2 scene];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _FBSScene];
      FBSScene.observed.getter(v13);

      v3 = v13[0];
      v8 = v13[1];
      v9 = v13[2];
      v10 = v13[3];
      v11 = v13[4];
      v12 = v14;
    }

    else
    {

      v12 = 0;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v12 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
}

uint64_t _s8ObserverCMa_0()
{
  result = qword_27EF1B328;
  if (!qword_27EF1B328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D3FF28()
{
  result = sub_249D728B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_249D3FFD4()
{
  result = qword_27EF1B3A0;
  if (!qword_27EF1B3A0)
  {
    _s8ObserverCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B3A0);
  }

  return result;
}

uint64_t sub_249D4002C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a1 = result;
  return result;
}

id sub_249D40064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 clientSettings];
  *a2 = result;
  return result;
}

id sub_249D400C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 settings];
  *a2 = result;
  return result;
}

id sub_249D40130@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hostHandle];
  *a2 = result;
  return result;
}

uint64_t View.isSceneForeground(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_249D401F4(KeyPath, a1, a2, MEMORY[0x277D839C8], a3);
}

uint64_t sub_249D401F4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = a5;
  v9 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - v11;
  v14 = *v13;
  (*(v10 + 16))(&v18 - v11);
  v15 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v9;
  *(v16 + 4) = a3;
  *(v16 + 5) = a4;
  *(v16 + 6) = a1;
  (*(v10 + 32))(&v16[v15], v12, v9);

  View.transformSceneSettings<A>(_:_:)(v14, sub_249D40AC4, v16, a2, v14, a3);
}

uint64_t sub_249D4039C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v10 = sub_249D73394();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = *(v9 - 8);
  (*(v13 + 16))(&v16 - v11, a3, v9);
  (*(v13 + 56))(v12, 0, 1, v9);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B3D8);
  return SceneSettings.subscript.setter(v12, a2, v14, a6);
}

id sub_249D404F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isForeground];
  *a2 = result;
  return result;
}

uint64_t View.sceneDisplayConfiguration(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = sub_249D40668();
  v10 = a1;
  sub_249D401F4(KeyPath, a2, a3, v9, a4);
}

id sub_249D405D8()
{
  v1 = [v0 displayConfiguration];

  return v1;
}

id sub_249D40610@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayConfiguration];
  *a2 = result;
  return result;
}

void *sub_249D4064C(void *result, id *a2)
{
  if (*result)
  {
    return [*a2 setDisplayConfiguration_];
  }

  return result;
}

unint64_t sub_249D40668()
{
  result = qword_27EF1B3B0;
  if (!qword_27EF1B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B3B8);
    sub_249D40948(&qword_27EF1B3C0, sub_249D4071C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B3B0);
  }

  return result;
}

unint64_t sub_249D4071C()
{
  result = qword_27EF1B3C8;
  if (!qword_27EF1B3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B3C8);
  }

  return result;
}

uint64_t View.sceneLevel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_249D3E710();
  sub_249D401F4(KeyPath, a1, a2, v7, a3);
}

id sub_249D407FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 level];
  *a2 = v4;
  return result;
}

uint64_t View.sceneInterruptionPolicy(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = sub_249D40948(&qword_27EF1B3D0, type metadata accessor for FBSSceneInterruptionPolicy);
  sub_249D401F4(KeyPath, a1, a2, v7, a3);
}

id sub_249D40900@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interruptionPolicy];
  *a2 = result;
  return result;
}

uint64_t sub_249D40948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D40990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B2B0);
  sub_249D72A74();
  sub_249D3EF30();
  return swift_getWitnessTable();
}

uint64_t sub_249D40A08()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D40B04()
{
  swift_getKeyPath();
  sub_249D41540();
  sub_249D72874();

  return *(v0 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
}

uint64_t sub_249D40B7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D41540();
  sub_249D72874();

  *a2 = *(v3 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
  return result;
}

uint64_t sub_249D40C24(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D41540();
    sub_249D72864();
  }

  return result;
}

id sub_249D40D0C(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_249D41540();
  sub_249D72874();

  v5 = OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter;
  v6 = *(v1 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter);
  if (!v6)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v6 == a1)
  {
    return result;
  }

  if (a1)
  {
LABEL_6:
    [a1 removeObserver_];
  }

  swift_getKeyPath();
  sub_249D72874();

  v7 = *(v1 + v5);
  if (v7)
  {
    [v7 addObserver_];
  }

  swift_getKeyPath();
  sub_249D72874();

  result = *(v1 + v5);
  if (result)
  {
    result = [result isHosting];
    v8 = result;
    v9 = (v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
    if (result != *(v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting))
    {
LABEL_11:
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      sub_249D72864();
    }
  }

  else
  {
    v8 = 0;
    v9 = (v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
    if (*(v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting))
    {
      goto LABEL_11;
    }
  }

  *v9 = v8;
  return result;
}

uint64_t sub_249D40F0C()
{
  swift_getKeyPath();
  sub_249D41540();
  sub_249D72874();

  return swift_unknownObjectRetain();
}

uint64_t sub_249D40F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter);
  *(a1 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter) = a2;
  swift_unknownObjectRetain();
  sub_249D40D0C(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_249D40FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  sub_249D73274();
  *(v5 + 32) = sub_249D73264();
  v7 = sub_249D73254();

  return MEMORY[0x2822009F8](sub_249D4107C, v7, v6);
}

uint64_t sub_249D4107C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v1 == *(v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting))
  {
    *(v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting) = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_249D41540();
    sub_249D72864();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t type metadata accessor for UIPresenterObserver()
{
  result = qword_27EF1B460;
  if (!qword_27EF1B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D41494()
{
  result = sub_249D728B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_249D41540()
{
  result = qword_27EF1B0B0;
  if (!qword_27EF1B0B0)
  {
    type metadata accessor for UIPresenterObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B0B0);
  }

  return result;
}

uint64_t sub_249D415DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_249D4161C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249D416E0;

  return sub_249D40FE0(a1, v4, v5, v6, v7);
}

uint64_t sub_249D416E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_249D417EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

uint64_t sub_249D41820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_249D4493C(a3, v25 - v10);
  v12 = sub_249D73294();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_249D44B88(v11, &unk_27EF1C1A0);
  }

  else
  {
    sub_249D73284();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_249D73254();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_249D73164() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_249D44B88(a3, &unk_27EF1C1A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249D44B88(a3, &unk_27EF1C1A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_249D41B10()
{
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  return *(v0 + 56);
}

uint64_t sub_249D41BB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_249D41C58(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72864();
  }

  return result;
}

double sub_249D41D5C()
{
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  return *(v0 + 64);
}

double sub_249D41DFC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

void sub_249D41EA4(double a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72864();
  }
}

uint64_t sub_249D41FBC()
{
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  return *(v0 + 72);
}

uint64_t sub_249D4205C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
  sub_249D72874();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_249D42104(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72864();
  }

  return result;
}

uint64_t sub_249D42214()
{

  v1 = OBJC_IVAR____TtC12DrawingBoard20ActivatedPolicyModel_activationLogger;
  v2 = sub_249D728F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12DrawingBoard20ActivatedPolicyModel___observationRegistrar;
  v4 = sub_249D728B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for ActivatedPolicyModel()
{
  result = qword_27EF1B480;
  if (!qword_27EF1B480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D42354()
{
  result = sub_249D728F4();
  if (v1 <= 0x3F)
  {
    result = sub_249D728B4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249D42468()
{
  v1 = v0;
  v2 = sub_249D4C498(&unk_285CF5E68);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  if (v4 & 1) == 0 && (swift_getKeyPath(), sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel), sub_249D72874(), , *(v0 + 56) >= v3) || (swift_getKeyPath(), sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel), sub_249D72874(), , (*(v0 + 72)) || (v5 = sub_249D3858C(), swift_getKeyPath(), swift_getKeyPath(), sub_249D73514(), , sub_249D44C34(&qword_27EF1B090, _s8ObserverCMa), sub_249D72874(), , Strong = swift_unknownObjectUnownedLoadStrong(), v7 = [Strong isActive], , v5, Strong, (v7))
  {
    v8 = 0;
  }

  else
  {
    v13 = sub_249D3858C();
    v14 = sub_249D37338();

    v8 = sub_249D42928(v14, v2);
  }

  swift_retain_n();

  v9 = sub_249D728D4();
  v10 = sub_249D732F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67110144;
    v12 = 0;
    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
      sub_249D72874();

      if (*(v1 + 56) >= v3)
      {
        v12 = 1;
      }
    }

    *(v11 + 4) = v12;

    *(v11 + 8) = 1024;
    swift_getKeyPath();
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72874();

    *(v11 + 10) = *(v1 + 72);

    *(v11 + 14) = 1024;
    *(v11 + 16) = [*(v1 + 16) isActive];

    *(v11 + 20) = 1024;
    v15 = sub_249D3858C();
    v16 = sub_249D37338();

    LOBYTE(v15) = sub_249D42928(v16, v2);

    *(v11 + 22) = v15 & 1;

    *(v11 + 26) = 1024;
    *(v11 + 28) = v8 & 1;
    _os_log_impl(&dword_249D35000, v9, v10, "reachedMaximumAttempts: %{BOOL}d\ninCooldown: %{BOOL}d\nisActive: %{BOOL}d\nignorePrevent: %{BOOL}d\nshouldAttempt: %{BOOL}d", v11, 0x20u);
    MEMORY[0x24C202240](v11, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v8 & 1;
}

uint64_t sub_249D42928(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_249D73774(), sub_249D73184(), , v4 = sub_249D737A4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v22 = ~v5;
    v7 = 0x6F69747265737361;
    v8 = 0x656E6563536F6ELL;
    v9 = 0xE400000000000000;
    v10 = 0xE700000000000000;
    while (1)
    {
      v11 = *(*(a2 + 48) + v6);
      if (v11 <= 1)
      {
        if (*(*(a2 + 48) + v6))
        {
          v12 = v7;
        }

        else
        {
          v12 = 1701736302;
        }

        if (*(*(a2 + 48) + v6))
        {
          v13 = 0xED0000646C65486ELL;
        }

        else
        {
          v13 = 0xE400000000000000;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0xD000000000000011;
        v13 = 0x8000000249D7A200;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x6E776F6E6B6E75;
        }

        v13 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0x6E776F6E6B6E75;
      }

      if (a1 == 2)
      {
        v14 = 0xD000000000000011;
        v10 = 0x8000000249D7A200;
      }

      if (a1)
      {
        v15 = v7;
      }

      else
      {
        v15 = 1701736302;
      }

      if (a1)
      {
        v9 = 0xED0000646C65486ELL;
      }

      v16 = a1 <= 1u ? v15 : v14;
      v17 = a1 <= 1u ? v9 : v10;
      if (v12 == v16 && v13 == v17)
      {
        break;
      }

      v18 = v8;
      v19 = v7;
      v20 = sub_249D736A4();

      if ((v20 & 1) == 0)
      {
        v6 = (v6 + 1) & v22;
        v7 = v19;
        v8 = v18;
        v9 = 0xE400000000000000;
        v10 = 0xE700000000000000;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_249D42BE8(uint64_t a1, uint64_t a2)
{
  result = sub_249D42468();
  if (result)
  {
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v2;
    swift_getKeyPath();
    sub_249D447C8(a1);
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);

    sub_249D72874();

    v13[0] = v2;
    swift_getKeyPath();
    sub_249D72894();

    v7 = *(v2 + 56);
    v8 = __CFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 56) = v9;
      v13[0] = v2;
      swift_getKeyPath();
      sub_249D72884();

      sub_249D42E34();
      v10 = *(v2 + 16);
      v11 = swift_allocObject();
      *(v11 + 16) = sub_249D44740;
      *(v11 + 24) = v6;
      v13[4] = sub_249D399D8;
      v13[5] = v11;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_249D39A00;
      v13[3] = &block_descriptor_0;
      v12 = _Block_copy(v13);

      [v10 activate_];
      _Block_release(v12);
    }
  }

  return result;
}

uint64_t sub_249D42E34()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v0;
    LOBYTE(v12[-1]) = 1;
    v12[1] = v0;
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72864();
  }

  v7 = sub_249D73294();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_249D73274();

  v8 = sub_249D73264();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  v9[5] = v2;
  sub_249D41820(0, 0, v5, &unk_249D76700, v9);
}

uint64_t sub_249D43098()
{
  v0 = sub_249D3858C();
  v1 = sub_249D37338();

  if (v1 == 1)
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_249D736A4();

    v3 = v2 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_249D431A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_249D73544();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_249D73274();
  v4[22] = sub_249D73264();
  v7 = sub_249D73254();
  v4[23] = v7;
  v4[24] = v6;

  return MEMORY[0x2822009F8](sub_249D43294, v7, v6);
}

uint64_t sub_249D43294()
{
  v1 = 3.0;
  if (sub_249D43098())
  {
    v2 = v0[18];
    swift_getKeyPath();
    v0[15] = v2;
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72874();

    v3 = *(v2 + 64);
    v4 = v3 + 1.0;
    if (v3 == v3 + 1.0)
    {
      *(v2 + 64) = v4;
    }

    else
    {
      v5 = v0[18];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v0[16] = v5;
      sub_249D72864();
    }

    v7 = v0[18];
    swift_getKeyPath();
    v0[17] = v7;
    sub_249D72874();

    v1 = exp2(*(v2 + 64)) * 0.01;
  }

  v0[25] = OBJC_IVAR____TtC12DrawingBoard20ActivatedPolicyModel_activationLogger;
  v8 = sub_249D728D4();
  v9 = sub_249D73324();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v1;
    _os_log_impl(&dword_249D35000, v8, v9, "cooldown: %f seconds.", v10, 0xCu);
    MEMORY[0x24C202240](v10, -1, -1);
  }

  v11 = sub_249D737D4();
  v13 = v12;
  sub_249D73724();
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_249D43578;

  return sub_249D43D14(v11, v13, 0, 0, 1);
}

uint64_t sub_249D43578()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2[21], v2[19]);
  v4 = v2[23];
  v5 = v2[24];
  if (v0)
  {
    v6 = sub_249D439DC;
  }

  else
  {
    v6 = sub_249D436DC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_249D436DC()
{
  v1 = *(v0 + 144);

  sub_249D610D8(*(v1 + 16), (v0 + 16));
  KeyPath = swift_getKeyPath();
  v3 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(KeyPath, MEMORY[0x277D839B0], ObjectType, v3);

  sub_249D44B88(v0 + 16, &qword_27EF1B4A8);
  if (*(v0 + 224))
  {
    v5 = sub_249D728D4();
    v6 = sub_249D732F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_249D35000, v5, v6, "resetting cooldown interval as scene is still active.", v7, 2u);
      MEMORY[0x24C202240](v7, -1, -1);
    }

    v8 = *(v0 + 144);

    if (*(v8 + 64) == 0.0)
    {
      *(v8 + 64) = 0;
    }

    else
    {
      v13 = *(v0 + 144);
      swift_getKeyPath();
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v0 + 112) = v13;
      sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
      sub_249D72864();
    }
  }

  v9 = *(v0 + 144);
  if (*(v9 + 72))
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v0 + 104) = v9;
    sub_249D44C34(&qword_27EF1B4A0, type metadata accessor for ActivatedPolicyModel);
    sub_249D72864();
  }

  else
  {
    *(v9 + 72) = 0;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_249D439DC()
{

  v1 = sub_249D728D4();
  v2 = sub_249D73304();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_249D35000, v1, v2, "task cancelled during sleep for cooldown.", v5, 2u);
    MEMORY[0x24C202240](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_249D43B1C(uint64_t a1)
{
  result = sub_249D44C34(&qword_27EF1B490, type metadata accessor for ActivatedPolicyModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249D43B74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F69747265737361;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xED0000646C65486ELL;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000249D7A200;
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 3)
    {
      v4 = 0x656E6563536F6ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6F69747265737361;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a2)
    {
      v7 = 0xED0000646C65486ELL;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656E6563536F6ELL;
    if (a2 != 3)
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0x8000000249D7A200;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_249D736A4();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_249D43D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_249D73534();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_249D43E14, 0, 0);
}

uint64_t sub_249D43E14()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_249D73544();
  v5 = sub_249D44C34(&qword_27EF1B4B0, MEMORY[0x277D85928]);
  sub_249D73704();
  sub_249D44C34(qword_27EF1B4B8, MEMORY[0x277D858F8]);
  sub_249D73554();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_249D43FA4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_249D43FA4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_249D44160, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_249D44160()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_249D441CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249D442C4;

  return v6(a1);
}

uint64_t sub_249D442C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE **sub_249D443BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_249D443CC(uint64_t a1, uint64_t a2)
{
  sub_249D446AC();
  if ((sub_249D73374() & 1) == 0)
  {
    return 0;
  }

  result = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a1 + 24) == *(a2 + 24)) & ~result;
  }

  return result;
}

uint64_t sub_249D4443C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_249D728F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  sub_249D728A4();
  if ((a3 & 1) != 0 || a2)
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    *(v6 + 32) = a3 & 1;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    v16 = a1;

    v17 = [v16 identityToken];
    v18 = [v17 stringRepresentation];

    sub_249D73144();
    v20[0] = 0xD000000000000016;
    v20[1] = 0x8000000249D7A540;
    MEMORY[0x24C201340](46, 0xE100000000000000);
    MEMORY[0x24C201340](0x6974617669746361, 0xEA00000000006E6FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B110);
    sub_249D3B580();
    sub_249D736C4();
    sub_249D728E4();
    (*(v13 + 32))(v6 + OBJC_IVAR____TtC12DrawingBoard20ActivatedPolicyModel_activationLogger, v15, v12);
    return v6;
  }

  else
  {
    result = sub_249D735B4();
    __break(1u);
  }

  return result;
}

unint64_t sub_249D446AC()
{
  result = qword_27EF1B498;
  if (!qword_27EF1B498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B498);
  }

  return result;
}

uint64_t sub_249D446F8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D44740(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3)
  {
    v3(*(v4 + 16), a1);
  }

  return (*(v4 + 40))(*(v4 + 16), a1);
}

uint64_t sub_249D447C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249D4483C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249D4487C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249D416E0;

  return sub_249D431A0(a1, v4, v5, v6);
}

uint64_t sub_249D4493C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D449AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D449E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249D44C98;

  return sub_249D441CC(a1, v4);
}

uint64_t sub_249D44A9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249D416E0;

  return sub_249D441CC(a1, v4);
}

id sub_249D44B54@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

uint64_t sub_249D44B88(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_249D44C14()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

uint64_t sub_249D44C34(unint64_t *a1, void (*a2)(uint64_t))
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

void ObservedSettings.subscript.getter()
{
  v1 = (*v0)();
  swift_getAtKeyPath();
  sub_249D6CF30();
}

id sub_249D44D2C(void *a1)
{
  v1 = [a1 settings];

  return v1;
}

id sub_249D44D60(void *a1)
{
  v1 = [a1 clientSettings];

  return v1;
}

void ObservedSettings.as<A>(_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = v3;
  v9 = *v3;
  v8 = *(v3 + 8);
  v10 = *(v4 + 16);
  v11 = v9();
  v12 = swift_dynamicCastUnknownClass();

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 2) = *(a1 + 16);
    *(v13 + 3) = a2;
    *(v13 + 4) = v9;
    *(v13 + 5) = v8;
    *(v13 + 6) = v10;
    v14 = v10;

    v15 = v14;
    v16 = sub_249D450F8;
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v10 = 0;
  }

  *a3 = v16;
  a3[1] = v13;
  a3[2] = v10;
}

{
  v4 = v3;
  v9 = *v3;
  v8 = *(v3 + 8);
  v10 = *(v4 + 16);
  v11 = v9();
  v12 = swift_dynamicCastUnknownClass();

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 2) = *(a1 + 16);
    *(v13 + 3) = a2;
    *(v13 + 4) = v9;
    *(v13 + 5) = v8;
    *(v13 + 6) = v10;
    v14 = v10;

    v15 = v14;
    v16 = sub_249D44F78;
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v10 = 0;
  }

  *a3 = v16;
  a3[1] = v13;
  a3[2] = v10;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249D44F7C()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 32))();

  return MEMORY[0x2821FE968](v2, v1, 0, 0, 0);
}

uint64_t sub_249D44FC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_249D45024(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_249D4506C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_249D4514C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_27EF1B540] = 0;
  *&v4[qword_27EF1B548] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_249D451CC(double a1, double a2, double a3, double a4)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_249D4514C(a1, a2, a3, a4);

  return v8;
}

void sub_249D45298()
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_249D4562C();
}

uint64_t sub_249D4531C(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void sub_249D45344()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v2 = qword_27EF1B548;
  v3 = *&v0[qword_27EF1B548];
  v4 = qword_27EF1B540;
  v5 = *&v0[qword_27EF1B540];
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_5:
    v9 = [v3 presenter];
    if (v9)
    {
      [v9 invalidate];
      swift_unknownObjectRelease();
    }

    v10 = *&v1[v2];
    if (v10)
    {
      [v10 removeFromSuperview];
    }

LABEL_9:
    if (!*&v1[v4])
    {
      v11 = 0;
LABEL_13:
      v12 = *&v1[v2];
      *&v1[v2] = v11;
      v13 = v11;

      v14 = *&v1[v2];
      if (v14)
      {
        v15 = [v14 presenter];
        if (v15)
        {
          [v15 activate];
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_16;
    }

LABEL_12:
    [v1 addSubview_];
    v11 = *&v1[v4];
    goto LABEL_13;
  }

  v6 = v5;
  v7 = v3;
  v8 = sub_249D73374();

  if ((v8 & 1) == 0)
  {
    v3 = *&v1[v2];
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_16:
  v16 = *&v1[v4];
  if (v16)
  {
    v17 = v16;
    [v1 bounds];
    [v17 setFrame_];
  }
}

void sub_249D45510(void *a1)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_249D45344();
}

void sub_249D455C8(uint64_t a1)
{
  v2 = *(a1 + qword_27EF1B548);
}

void sub_249D4562C()
{
  *(v0 + qword_27EF1B540) = 0;
  *(v0 + qword_27EF1B548) = 0;
  sub_249D735B4();
  __break(1u);
}

uint64_t sub_249D456A4()
{
  v0 = sub_249D728F4();
  __swift_allocate_value_buffer(v0, qword_27EF1B5D0);
  __swift_project_value_buffer(v0, qword_27EF1B5D0);
  return sub_249D728E4();
}

uint64_t sub_249D45728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_249D45CDC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

id sub_249D4578C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 userInterfaceIdiom];
  *a2 = result;
  return result;
}

uint64_t sub_249D45808()
{
  sub_249D45984();
  sub_249D72B24();
  return v1;
}

uint64_t sub_249D45844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_249D3E710();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

id sub_249D458A8@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  result = [a1 displayCornerRadius];
  if (v4 == *MEMORY[0x277D77600])
  {
    v4 = 0.0;
  }

  *a2 = v4;
  return result;
}

double sub_249D458F4()
{
  sub_249D45930();
  sub_249D72B24();
  return v1;
}

unint64_t sub_249D45930()
{
  result = qword_27EF1B5E8;
  if (!qword_27EF1B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B5E8);
  }

  return result;
}

unint64_t sub_249D45984()
{
  result = qword_27EF1B5F0;
  if (!qword_27EF1B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B5F0);
  }

  return result;
}

unint64_t sub_249D459FC()
{
  result = qword_27EF1B5F8;
  if (!qword_27EF1B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B5F8);
  }

  return result;
}

unint64_t sub_249D45A54()
{
  result = qword_27EF1B600;
  if (!qword_27EF1B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B600);
  }

  return result;
}

void sub_249D45AA8()
{
  if (qword_27EF1AD00 != -1)
  {
    swift_once();
  }

  v0 = sub_249D728F4();
  __swift_project_value_buffer(v0, qword_27EF1B5D0);
  oslog = sub_249D728D4();
  v1 = sub_249D73304();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_249D70FF0(0xD000000000000042, 0x8000000249D7A960, &v5);
    _os_log_impl(&dword_249D35000, oslog, v1, "%s writing to read-only displayCornerRadius key.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x24C202240](v3, -1, -1);
    MEMORY[0x24C202240](v2, -1, -1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
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

unint64_t sub_249D45CDC()
{
  result = qword_27EF1B608;
  if (!qword_27EF1B608)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B608);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249D45D54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_249D45D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_249D45DFC()
{
  result = qword_27EF1B610;
  if (!qword_27EF1B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B610);
  }

  return result;
}

uint64_t sub_249D45E50(char *a1)
{
  v20 = sub_249D72B14();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249D39F64();
  v7 = v6;
  if (!v6)
  {
    v13 = 0;
LABEL_5:
    v14 = *&a1[qword_27EF1B540];
    *&a1[qword_27EF1B540] = v6;
    v15 = v6;

    [a1 setNeedsLayout];
    LOBYTE(v23) = *(v1 + 24);
    v16 = *(v1 + 16);
    aBlock = v16;
    if (v23 == 1)
    {
      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {

      sub_249D73314();
      v17 = sub_249D72DB4();
      sub_249D728C4();

      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D46604(&aBlock);
      (*(v3 + 8))(v5, v20);
      if (v21[0])
      {
        goto LABEL_17;
      }
    }

    if (v7)
    {
      v18 = [v7 isHosting];
      if ((*(v1 + 8) & 1) == 0)
      {
        if (v18)
        {
          sub_249D3A8B4();
        }

        goto LABEL_17;
      }

      if (v18)
      {
LABEL_17:
        swift_unknownObjectRelease();
        return sub_249D4666C(v13);
      }
    }

    else if ((*(v1 + 8) & 1) == 0)
    {
      return sub_249D4666C(v13);
    }

    sub_249D3AAC0();
    goto LABEL_17;
  }

  v30 = *(v1 + 16);
  v31 = *(v1 + 24);
  v28 = *(v1 + 32);
  v29 = *(v1 + 40);
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_249D466D8;
  *(v10 + 24) = v8;
  v26 = sub_249D399D8;
  v27 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_249D39A00;
  v25 = &block_descriptor_1;
  v11 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  sub_249D46708(&v30, v21);
  sub_249D46708(&v28, v21);

  [v7 modifyPresentationContext_];
  swift_unknownObjectRelease();
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v6 = [v7 presentationView];
    v13 = sub_249D466D8;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_249D461FC(void *a1, uint64_t a2)
{
  v4 = sub_249D72B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setAppearanceStyle_];
  [a1 setClippingDisabled_];
  [a1 setPresentedLayerTypes_];
  v13 = *(a2 + 40);
  v8 = *(a2 + 32);
  v12 = v8;
  if (v13 != 1)
  {

    sub_249D73314();
    v9 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D46604(&v12);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v11[15];
  }

  [a1 setResizesHostedContext_];
}

id sub_249D46408()
{
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B628));

  return [v0 initWithFrame_];
}

uint64_t sub_249D464C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249D465B0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_249D46524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249D465B0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_249D46588()
{
  sub_249D465B0();
  sub_249D72C74();
  __break(1u);
}

unint64_t sub_249D465B0()
{
  result = qword_27EF1B618;
  if (!qword_27EF1B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B618);
  }

  return result;
}

uint64_t sub_249D46604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D4666C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249D4667C()
{

  sub_249D466CC(*(v0 + 32), *(v0 + 40));
  sub_249D466CC(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_249D466CC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249D46708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SceneActionResult.hashValue.getter()
{
  v1 = *v0;
  sub_249D73774();
  MEMORY[0x24C201920](v1);
  return sub_249D737A4();
}

uint64_t sub_249D4681C()
{
  v1 = *v0;
  sub_249D73774();
  MEMORY[0x24C201920](v1);
  return sub_249D737A4();
}

uint64_t sub_249D46890()
{
  v1 = *v0;
  sub_249D73774();
  MEMORY[0x24C201920](v1);
  return sub_249D737A4();
}

unint64_t sub_249D468D8()
{
  result = qword_27EF1B630;
  if (!qword_27EF1B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B630);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneActionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneActionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t (*FBSScene.contentBuilder.getter())()
{
  type metadata accessor for LocalSceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for LocalSceneExtension.ClientComponent();
  if ([v0 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {
    swift_dynamicCastClassUnconditional();
    v2 = sub_249D52330();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EF1AD10 != -1)
    {
      swift_once();
    }

    v3 = sub_249D728F4();
    __swift_project_value_buffer(v3, qword_27EF20578);
    v4 = sub_249D728D4();
    v5 = sub_249D73304();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_249D35000, v4, v5, "couldn't get LocalSceneExtension.ClientComponent", v6, 2u);
      MEMORY[0x24C202240](v6, -1, -1);
    }

    return sub_249D46C20;
  }

  return v2;
}

uint64_t sub_249D46C34(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_249D46C80()
{
  v1 = sub_249D72B14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 80);
  v45[2] = *(v0 + 64);
  v45[3] = v5;
  *v46 = *(v0 + 96);
  *&v46[9] = *(v0 + 105);
  v6 = *(v0 + 48);
  v45[0] = *(v0 + 32);
  v45[1] = v6;
  v7 = *(v0 + 128);
  v28 = *(v0 + 136);
  v29 = v7;
  v8 = *(v0 + 144);
  v26 = *(v0 + 152);
  v27 = v8;
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v30 = *(v0 + 169);
  if (v46[24])
  {
    v11 = *(v0 + 80);
    v41 = *(v0 + 64);
    v42 = v11;
    v43 = *(v0 + 96);
    v44 = *(v0 + 112);
    v12 = *(v0 + 48);
    v39 = *(v0 + 32);
    v40 = v12;
    v13 = *(v0 + 105);
    v37 = v11;
    v38[0] = v43;
    *(v38 + 9) = v13;
    v35 = v12;
    v36 = v41;
    v34 = v39;
    sub_249D498F0(&v34, &v31);
  }

  else
  {

    sub_249D73314();
    v14 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D44B88(v45, &qword_27EF1B650);
    (*(v2 + 8))(v4, v1);
  }

  v37 = v42;
  v38[0] = v43;
  *&v38[1] = v44;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  if (v39)
  {
    HIDWORD(v24) = v10;
    v25 = v9;
    v15 = *(&v37 + 1);
    v16 = *(&v36 + 1);

    v17 = v15;
    sub_249D44B88(&v34, &qword_27EF1B658);
    KeyPath = swift_getKeyPath();
    v19 = v16();
    v20 = [v19 displayConfiguration];
    sub_249D62DCC(KeyPath);

    if (v20)
    {
      if (v30)
      {
        if ((v24 & 0x100000000) == 0)
        {
          v21 = v25 - 3;
          if (v25 >= 3)
          {
LABEL_16:
            if (v21 > 1)
            {
              sub_249D735B4();
              __break(1u);
              return;
            }

            [v20 bounds];
            [v20 bounds];
            goto LABEL_14;
          }
        }
      }

      else
      {
        v22 = v29;

        sub_249D73314();
        v23 = sub_249D72DB4();
        sub_249D728C4();

        sub_249D72B04();
        swift_getAtKeyPath();
        sub_249D47BE8(v22, v28, v27, v26, v25, HIDWORD(v24), 0);
        (*(v2 + 8))(v4, v1);
        if ((v33 & 1) == 0)
        {
          v21 = v32 - 3;
          if (v32 >= 3)
          {
            goto LABEL_16;
          }
        }
      }

      [v20 bounds];
LABEL_14:
    }
  }
}

__n128 sub_249D470B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v68 = a2;
  v3 = sub_249D72B14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(v2 + 8);
  v136 = v8;
  v135[0] = *(v2 + 9);
  *(v135 + 3) = *(v2 + 12);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v132 = *(v2 + 73);
  v133 = *(v2 + 89);
  v134[0] = *(v2 + 105);
  *(v134 + 15) = *(v2 + 120);
  v129 = *(v2 + 25);
  v130 = *(v2 + 41);
  v131 = *(v2 + 57);
  v11 = *(v2 + 128);
  v79 = *(v2 + 144);
  v80 = v11;
  v78 = *(v2 + 160);
  v76 = *(v2 + 168);
  v65 = *(v2 + 169);
  v127 = *(v2 + 170);
  v128 = *(v2 + 174);
  v12 = *(v2 + 176);
  v126 = *(v2 + 184);
  v125[0] = *(v2 + 185);
  *(v125 + 3) = *(v2 + 188);
  v13 = *(v2 + 192);
  v70 = v12;
  v71 = v13;
  v124 = *(v2 + 200);
  *(v123 + 3) = *(v2 + 204);
  v123[0] = *(v2 + 201);
  v14 = *(v2 + 208);
  v72 = *(v2 + 216);
  v73 = v14;
  v122 = *(v2 + 224);
  *(v121 + 3) = *(v2 + 228);
  v121[0] = *(v2 + 225);
  v15 = *(v2 + 240);
  v77 = *(v2 + 232);
  v120 = *(v2 + 248);
  LODWORD(v13) = *(v2 + 249);
  *(v119 + 3) = *(v2 + 252);
  v119[0] = v13;
  v16 = *(v2 + 256);
  HIDWORD(v64) = v10;
  v74 = v16;
  v75 = v15;
  v69 = v4;
  if (v10)
  {
    v17 = v3;
    v18 = v16;
    v66 = v9;
    if ((v8 & 1) == 0)
    {
LABEL_3:

      sub_249D73314();
      v19 = sub_249D72DB4();
      sub_249D728C4();

      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D466CC(v7, 0);
      v20 = v17;
      (*(v69 + 8))(v6, v17);
      v21 = v88;
      v22 = v78;
      v23 = v75;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = v16;
    sub_249D47BDC(v9, 0);
    sub_249D73314();
    v25 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D466CC(v9, 0);
    v26 = *(v4 + 8);
    v17 = v3;
    v26(v6, v3);
    v66 = v88;
    if (v136 != 1)
    {
      goto LABEL_3;
    }
  }

  v21 = v7;
  v22 = v78;
  v23 = v75;
  v20 = v17;
LABEL_6:
  v27 = v76;
  v88 = v7;
  v89 = v136;
  *v90 = v135[0];
  *&v90[3] = *(v135 + 3);
  v91 = v9;
  v92 = BYTE4(v64);
  v96 = v132;
  v97 = v133;
  *v98 = v134[0];
  v93 = v129;
  v94 = v130;
  v95 = v131;
  *&v98[23] = v80;
  *&v98[39] = v79;
  *&v98[15] = *(v134 + 15);
  v99 = v22;
  v100 = v76;
  v28 = v65;
  v101 = v65;
  v102 = v127;
  v103 = v128;
  v29 = v70;
  v104 = v70;
  v30 = v126;
  v105 = v126;
  *v106 = v125[0];
  *&v106[3] = *(v125 + 3);
  v107 = v71;
  v108 = v124;
  *&v109[3] = *(v123 + 3);
  *v109 = v123[0];
  v110 = v73;
  v111 = v72;
  v112 = v122;
  *&v113[3] = *(v121 + 3);
  *v113 = v121[0];
  v114 = v77;
  v115 = v23;
  v116 = v120;
  *&v117[3] = *(v119 + 3);
  *v117 = v119[0];
  v118 = v74;
  v31 = v22;
  sub_249D46C80();
  v33 = v32;
  v35 = v34;
  if ((v28 & 1) == 0)
  {
    v37 = v80.n128_u64[0];

    sub_249D73314();
    v38 = sub_249D72DB4();
    sub_249D728C4();

    v29 = v70;
    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D47BE8(v37, v80.n128_i64[1], v79, *(&v79 + 1), v31, v27, 0);
    v36 = v69;
    (*(v69 + 8))(v6, v20);
    v79 = v85;
    v80 = v84;
    v78 = v86;
    v76 = v87;
    if (v126)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v36 = v69;
  if ((v30 & 1) == 0)
  {
LABEL_10:

    sub_249D73314();
    v39 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D466CC(v29, 0);
    (*(v36 + 8))(v6, v20);
    v29 = v84;
  }

LABEL_11:
  v40 = v77;
  v42 = v72;
  v41 = v73;
  if (v124 == 1)
  {
    v43 = v71;
  }

  else
  {
    v44 = v36;
    v45 = v29;
    v46 = v20;
    v47 = v71;

    sub_249D73314();
    v48 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    v49 = v47;
    v20 = v46;
    v29 = v45;
    v36 = v44;
    v40 = v77;
    sub_249D466CC(v49, 0);
    (*(v36 + 8))(v6, v20);
    v43 = v84;
  }

  if (v122 == 1)
  {
  }

  else
  {

    sub_249D73314();
    v50 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D47BF4();
    (*(v36 + 8))(v6, v20);
    v42 = *(&v84 + 1);
    v41 = v84;
  }

  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  *(v51 + 24) = v42;
  if (v120 == 1)
  {
    v52 = v75;
    *&v84 = v40;
    *(&v84 + 1) = v75;
    sub_249D49874(v40, v75, 1);
  }

  else
  {
    v53 = v75;
    sub_249D49874(v40, v75, 0);
    sub_249D73314();
    v54 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D49894(v40, v53, 0);
    (*(v36 + 8))(v6, v20);
    v52 = *(&v84 + 1);
    v40 = v84;
  }

  type metadata accessor for SceneGeometryUpdateSeed();
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v81 = v55;
  sub_249D72F64();
  v56 = v82;
  v57 = v83;
  v58 = v66 & 1;
  v59 = v76 & 1;
  LOBYTE(v82) = v76 & 1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B640);
  v61 = v68;
  (*(*(v60 - 8) + 16))(v68, v67, v60);
  v62 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B648) + 36);
  *v62 = v56;
  *(v62 + 8) = v57;
  *(v62 + 16) = v74;
  *(v62 + 24) = v58;
  *(v62 + 32) = v21;
  *(v62 + 40) = v33;
  *(v62 + 48) = v35;
  result = v80;
  *(v62 + 72) = v79;
  *(v62 + 56) = result;
  *(v62 + 88) = v78;
  *(v62 + 96) = v59;
  *(v62 + 104) = v29;
  *(v62 + 112) = v43;
  *(v62 + 120) = sub_249D4986C;
  *(v62 + 128) = v51;
  *(v62 + 136) = v40;
  *(v62 + 144) = v52;
  return result;
}

uint64_t sub_249D47A28()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B638);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_12DrawingBoard13ObservedSceneVySo8FBSSceneCGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12DrawingBoard28SceneGeometryCoordinateSpaceV7Storage33_CF953D3348821A573BD32152F9A63079LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_249D47AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 264))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 256);
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

uint64_t sub_249D47B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 256) = a2;
    }
  }

  return result;
}

uint64_t sub_249D47BDC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_249D47BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_249D47C00()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_249D73274();
    v2 = v1;
    sub_249D73264();
    sub_249D73254();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v3 = [v2 identityToken];
    v4 = [v3 stringRepresentation];

    sub_249D73144();
  }

  MEMORY[0x24C201340](46, 0xE100000000000000);
  MEMORY[0x24C201340](0x726576697264, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B110);
  sub_249D3C4C8(&qword_27EF1B118, &qword_27EF1B110);
  sub_249D736C4();
  return sub_249D728E4();
}

uint64_t sub_249D47DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_249D73684();
  v86 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_249D72CC4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249D72CB4();
  v82 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249D72CD4();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 96))
  {
    LOBYTE(v96) = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 89) = 0u;
    *(a2 + 105) = 1;
    return result;
  }

  v75 = v5;
  v17 = *(v2 + 40);
  v73 = *(v2 + 32);
  v18 = *(v2 + 48);
  v81 = *(v2 + 88);
  v19 = *(v2 + 112);
  v72 = *(v2 + 104);
  v78 = v19;
  v20 = *(v2 + 144);
  v71 = *(v2 + 136);
  v21 = *(v2 + 72);
  v76 = *(v2 + 80);
  sub_249D72D14();
  sub_249D72A04();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v70 = *(v13 + 8);
  v70(v16, v12);
  if (sub_249D50C68(v23, v25, v27, v29))
  {
    v96 = 0.0;
    v97 = -2.68156159e154;
    sub_249D734E4();
    v87 = v96;
    v88 = *&v97;
    MEMORY[0x24C201340](0xD000000000000028, 0x8000000249D7AC90);
    v96 = v23;
    v97 = v25;
    v98 = v27;
    v99 = v29;
    type metadata accessor for CGRect(0);
    sub_249D73564();
LABEL_35:
    result = sub_249D735B4();
    __break(1u);
    return result;
  }

  v80 = a1;
  sub_249D729F4();
  v32 = v30;
  v33 = v31;
  if ((~*&v30 & 0x7FF0000000000000) == 0 && (*&v30 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&v31 & 0x7FF0000000000000) == 0 && (*&v31 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v96 = 0.0;
    v97 = -2.68156159e154;
    sub_249D734E4();
    MEMORY[0x24C201340](0xD000000000000027, 0x8000000249D7AB50);
    v87 = v32;
    v88 = *&v33;
    type metadata accessor for CGSize(0);
    sub_249D73564();
    goto LABEL_35;
  }

  v79 = v29;
  v77 = v21;
  v74 = v27;
  if (*&v20 == 0.0)
  {
    sub_249D72CF4();
    sub_249D72A04();
    v35 = v38;
    v37 = v39;
    (*(v82 + 8))(v11, v9);
    goto LABEL_12;
  }

  if (v20 == 1)
  {
    sub_249D72D14();
    sub_249D72A04();
    v35 = v34;
    v37 = v36;
    v70(v16, v12);
LABEL_12:
    v40 = v86;
    v41 = v85;
    v42 = *&v71;
    goto LABEL_14;
  }

  v43 = *&v71;
  v96 = v71;
  v97 = *&v20;
  sub_249D49880(*&v71, v20);
  sub_249D72D04();
  v44 = v84;
  sub_249D72A04();
  v35 = v45;
  v37 = v46;
  (*(v83 + 8))(v8, v44);
  v42 = v43;
  v40 = v86;
  v41 = v85;
LABEL_14:
  sub_249D498A0(v42, v20);
  v47 = v73;
  v48 = v75;
  (*(v40 + 104))(v41, *MEMORY[0x277D84678], v75);
  v96 = v32;
  v87 = v33;
  sub_249D49500(v41, 1.0 / v47);
  sub_249D49500(v41, 1.0 / v47);
  (*(v40 + 8))(v41, v48);
  v49 = v96;
  v50 = v87;
  v96 = v35;
  v97 = v37;
  v98 = v49;
  v99 = v87;
  if (sub_249D50C68(v35, v37, v49, v87))
  {
    v87 = 0.0;
    v88 = 0xE000000000000000;
    sub_249D734E4();
    v91 = v87;
    v92 = v88;
    MEMORY[0x24C201340](0xD000000000000059, 0x8000000249D7AC10);
    v87 = v35;
    v88 = *&v37;
    v89 = v49;
    v90 = v50;
    type metadata accessor for CGRect(0);
    sub_249D73564();
    MEMORY[0x24C201340](0xD000000000000010, 0x8000000249D7AC70);
    v68 = sub_249D732A4();
    MEMORY[0x24C201340](v68);

    goto LABEL_35;
  }

  v51 = v81;
  v52 = v17;
  sub_249D71D3C(v81, v17, v18);
  v54 = v96;
  v53 = v97;
  v56 = v98;
  v55 = v99;
  if (sub_249D50C68(v96, v97, v98, v99))
  {
    v87 = 0.0;
    v88 = 0xE000000000000000;
    sub_249D734E4();
    v91 = v87;
    v92 = v88;
    MEMORY[0x24C201340](0xD00000000000004FLL, 0x8000000249D7AB80);
    v87 = v54;
    v88 = *&v53;
    v89 = v56;
    v90 = v55;
    type metadata accessor for CGRect(0);
    sub_249D73564();
    MEMORY[0x24C201340](0xD000000000000018, 0x8000000249D7ABD0);
    v87 = *&v51;
    type metadata accessor for BSInterfaceOrientation(0);
    sub_249D73564();
    MEMORY[0x24C201340](0xD000000000000016, 0x8000000249D7ABF0);
    v87 = v52;
    v88 = *&v18;
    type metadata accessor for CGSize(0);
    sub_249D73564();
    goto LABEL_35;
  }

  result = sub_249D729E4();
  if (v72)
  {
    v61 = v60;
    v62 = v59;
    v63 = v58;
    v64 = v74;
    v65 = v77;
  }

  else
  {
    v64 = v74;
    v65 = v77;
    switch(v51)
    {
      case 4:
        v61 = v59;
        v62 = v58;
        v63 = v57;
        v57 = v60;
        break;
      case 3:
        v61 = v57;
        v62 = v60;
        v63 = v59;
        v57 = v58;
        break;
      case 2:
        v61 = v58;
        v62 = v57;
        v63 = v60;
        v57 = v59;
        break;
      default:
        v61 = v60;
        v62 = v59;
        v63 = v58;
        break;
    }
  }

  LOBYTE(v91) = 0;
  v95 = 0;
  v94 = 0;
  v66 = v79 == v76 && v64 == v65;
  v67 = v78;
  if (!v66)
  {
    v67 = 0;
  }

  v93 = 0;
  LOBYTE(v87) = 0;
  *a2 = v54;
  *(a2 + 8) = v53;
  *(a2 + 16) = v56;
  *(a2 + 24) = v55;
  *(a2 + 32) = 0;
  *(a2 + 40) = v57;
  *(a2 + 48) = v63;
  *(a2 + 56) = v62;
  *(a2 + 64) = v61;
  *(a2 + 72) = 0;
  *(a2 + 80) = v67;
  *(a2 + 88) = 0;
  *(a2 + 96) = *&v51;
  *(a2 + 104) = 0;
  return result;
}

__n128 sub_249D487BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 24))
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = a3;
      v7 = v3;
      sub_249D47DDC(a1, v11);
      if ((v13 & 1) == 0)
      {
        v18 = v11[4];
        v19[0] = *v12;
        *(v19 + 9) = *&v12[9];
        v14 = v11[0];
        v15 = v11[1];
        v16 = v11[2];
        v17 = v11[3];
        (*(a2 + 120))(v7, &v14);

        v9 = v19[0];
        *(v4 + 64) = v18;
        *(v4 + 80) = v9;
        *(v4 + 89) = *(v19 + 9);
        v10 = v15;
        *v4 = v14;
        *(v4 + 16) = v10;
        result = v17;
        *(v4 + 32) = v16;
        *(v4 + 48) = result;
        *(v4 + 105) = 0;
        return result;
      }

      a3 = v4;
    }
  }

  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 89) = 0u;
  *(a3 + 105) = 1;
  return result;
}

uint64_t sub_249D488EC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1[5];
  v37 = a1[4];
  v38[0] = v4;
  *(v38 + 10) = *(a1 + 90);
  v5 = a1[1];
  v33 = *a1;
  v34 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a2[1];
  v39 = *a2;
  v40 = v7;
  v8 = a2[2];
  v9 = a2[3];
  *(v44 + 9) = *(a2 + 89);
  v10 = a2[5];
  v43 = a2[4];
  v44[0] = v10;
  v41 = v8;
  v42 = v9;
  v11 = *(a2 + 105);
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a3 + 16);
  if (v12 && (v11 & 1) == 0)
  {
    v31[0] = *a3;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6A0);
    sub_249D72F74();
    add_explicit = atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);

    v16 = add_explicit + 1;
    v17 = swift_allocObject();
    v18 = *(a3 + 112);
    *(v17 + 112) = *(a3 + 96);
    *(v17 + 128) = v18;
    *(v17 + 144) = *(a3 + 128);
    v19 = *(a3 + 144);
    v20 = *(a3 + 48);
    *(v17 + 48) = *(a3 + 32);
    *(v17 + 64) = v20;
    v21 = *(a3 + 80);
    *(v17 + 80) = *(a3 + 64);
    *(v17 + 96) = v21;
    v22 = *(a3 + 16);
    *(v17 + 16) = *a3;
    *(v17 + 32) = v22;
    *(v17 + 160) = v19;
    *(v17 + 168) = v16;
    v23 = v38[0];
    *(v17 + 240) = v37;
    *(v17 + 256) = v23;
    *(v17 + 266) = *(v38 + 10);
    v24 = v34;
    *(v17 + 176) = v33;
    *(v17 + 192) = v24;
    v25 = v36;
    *(v17 + 208) = v35;
    *(v17 + 224) = v25;
    v26 = v40;
    *(v17 + 288) = v39;
    *(v17 + 304) = v26;
    v27 = v41;
    v28 = v42;
    *(v17 + 377) = *(v44 + 9);
    v29 = v44[0];
    *(v17 + 352) = v43;
    *(v17 + 368) = v29;
    *(v17 + 320) = v27;
    *(v17 + 336) = v28;
    *(v17 + 400) = v14;
    v30 = v14;
    sub_249D49BF0(a3, v31);
    _sSo9NSRunLoopC12DrawingBoardE20waitForSwiftUILayoutyyyycFZ_0(sub_249D49D04, v17);
  }

  else
  {
  }
}

uint64_t sub_249D48B2C(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, void *a5)
{
  v10 = sub_249D728F4();
  MEMORY[0x28223BE20](v10);
  sub_249D49D1C();
  v11 = swift_allocObject();
  v12 = *(a1 + 112);
  *(v11 + 112) = *(a1 + 96);
  *(v11 + 128) = v12;
  *(v11 + 144) = *(a1 + 128);
  v13 = *(a1 + 144);
  v14 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v14;
  v15 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v15;
  v16 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v16;
  *(v11 + 160) = v13;
  *(v11 + 168) = a2;
  v17 = a3[5];
  *(v11 + 240) = a3[4];
  *(v11 + 256) = v17;
  *(v11 + 266) = *(a3 + 90);
  v18 = a3[1];
  *(v11 + 176) = *a3;
  *(v11 + 192) = v18;
  v19 = a3[3];
  *(v11 + 208) = a3[2];
  *(v11 + 224) = v19;
  v20 = a4[1];
  *(v11 + 288) = *a4;
  *(v11 + 304) = v20;
  v21 = a4[2];
  v22 = a4[3];
  *(v11 + 377) = *(a4 + 89);
  v23 = a4[5];
  *(v11 + 352) = a4[4];
  *(v11 + 368) = v23;
  *(v11 + 320) = v21;
  *(v11 + 336) = v22;
  *(v11 + 400) = a5;
  sub_249D49BF0(a1, &v26);
  v24 = a5;
  return sub_249D61D94(2, sub_249D49DD0, v11);
}

uint64_t sub_249D48E94(__int128 *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v49[1] = a5;
  v9 = a4[5];
  v81 = a4[4];
  v82[0] = v9;
  *(v82 + 9) = *(a4 + 89);
  v10 = a4[1];
  v77 = *a4;
  v78 = v10;
  v11 = a4[3];
  v79 = a4[2];
  v80 = v11;
  v12 = sub_249D728F4();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - v16;
  v67 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6A0);
  sub_249D72F74();
  v18 = *(v59 + 16);

  if (v18 == a2)
  {
    v19 = a1[7];
    v73 = a1[6];
    v74 = v19;
    v75 = a1[8];
    v76 = *(a1 + 18);
    v20 = a1[3];
    v69 = a1[2];
    v70 = v20;
    v21 = a1[5];
    v71 = a1[4];
    v72 = v21;
    v22 = a1[1];
    v67 = *a1;
    v68 = v22;
    sub_249D47C00();
    v23 = sub_249D728D4();
    v24 = sub_249D732F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v65 = v26;
      *v25 = 136315138;
      v27 = a3[5];
      v63 = a3[4];
      v64[0] = v27;
      *(v64 + 10) = *(a3 + 90);
      v28 = a3[1];
      v59 = *a3;
      v60 = v28;
      v29 = a3[3];
      v61 = a3[2];
      v62 = v29;
      v56 = v81;
      *v57 = v82[0];
      *&v57[9] = *(v82 + 9);
      v52 = v77;
      v53 = v78;
      v54 = v79;
      v55 = v80;
      v66 = 0;
      v58 = 0;
      v30 = sub_249D5BB24(&v59, &v52);
      v32 = sub_249D70FF0(v30, v31, &v65);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_249D35000, v23, v24, "Applying update: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x24C202240](v26, -1, -1);
      MEMORY[0x24C202240](v25, -1, -1);
    }

    v33 = (*(v50 + 8))(v17, v51);
    MEMORY[0x28223BE20](v33);
    v49[-2] = a4;
    return sub_249D39550(sub_249D49ED0, &v49[-4]);
  }

  else
  {
    v35 = a1[7];
    v73 = a1[6];
    v74 = v35;
    v75 = a1[8];
    v76 = *(a1 + 18);
    v36 = a1[3];
    v69 = a1[2];
    v70 = v36;
    v37 = a1[5];
    v71 = a1[4];
    v72 = v37;
    v38 = a1[1];
    v67 = *a1;
    v68 = v38;
    sub_249D47C00();
    v39 = sub_249D728D4();
    v40 = sub_249D732F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65 = v42;
      *v41 = 136315138;
      v43 = a3[5];
      v63 = a3[4];
      v64[0] = v43;
      *(v64 + 10) = *(a3 + 90);
      v44 = a3[1];
      v59 = *a3;
      v60 = v44;
      v45 = a3[3];
      v61 = a3[2];
      v62 = v45;
      v56 = v81;
      *v57 = v82[0];
      *&v57[9] = *(v82 + 9);
      v52 = v77;
      v53 = v78;
      v54 = v79;
      v55 = v80;
      v66 = 0;
      v58 = 0;
      v46 = sub_249D5BB24(&v59, &v52);
      v48 = sub_249D70FF0(v46, v47, &v65);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_249D35000, v39, v40, "Seed changed, not applying update: %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x24C202240](v42, -1, -1);
      MEMORY[0x24C202240](v41, -1, -1);
    }

    return (*(v50 + 8))(v15, v51);
  }
}

uint64_t sub_249D49310()
{
  v1 = *(v0 + 112);
  v17[6] = *(v0 + 96);
  v17[7] = v1;
  v17[8] = *(v0 + 128);
  v18 = *(v0 + 144);
  v2 = *(v0 + 48);
  v17[2] = *(v0 + 32);
  v17[3] = v2;
  v3 = *(v0 + 80);
  v17[4] = *(v0 + 64);
  v17[5] = v3;
  v4 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B678);
  v5 = swift_allocObject();
  v6 = *(v0 + 112);
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(v0 + 128);
  *(v5 + 160) = *(v0 + 144);
  v7 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v7;
  v8 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v8;
  v9 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v9;
  v10 = swift_allocObject();
  v11 = *(v0 + 112);
  *(v10 + 112) = *(v0 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(v0 + 128);
  *(v10 + 160) = *(v0 + 144);
  v12 = *(v0 + 48);
  *(v10 + 48) = *(v0 + 32);
  *(v10 + 64) = v12;
  v13 = *(v0 + 80);
  *(v10 + 80) = *(v0 + 64);
  *(v10 + 96) = v13;
  v14 = *(v0 + 16);
  *(v10 + 16) = *v0;
  *(v10 + 32) = v14;
  sub_249D49BF0(v17, v16);
  sub_249D49BF0(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B680);
  sub_249D3C4C8(&qword_27EF1B688, &qword_27EF1B680);
  sub_249D49C28();
  sub_249D72E94();
}

uint64_t sub_249D49500(uint64_t a1, double a2)
{
  v5 = sub_249D73684();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  if (a2 != 1.0)
  {
    v14 = *v2 / a2;
    *v2 = v14;
    (*(v6 + 16))(v9, a1, v5);
    result = (*(v6 + 88))(v9, v5);
    if (result == *MEMORY[0x277D84678])
    {
      v15 = round(v14);
    }

    else if (result == *MEMORY[0x277D84670])
    {
      v15 = rint(v14);
    }

    else if (result == *MEMORY[0x277D84680])
    {
      v15 = ceil(v14);
    }

    else if (result == *MEMORY[0x277D84688])
    {
      v15 = floor(v14);
    }

    else if (result == *MEMORY[0x277D84660])
    {
      v15 = trunc(v14);
    }

    else if (result == *MEMORY[0x277D84668])
    {
      v15 = ceil(v14);
      v17 = floor(v14);
      if (v14 < 0.0)
      {
        v15 = v17;
      }
    }

    else
    {
      sub_249D732B4();
      result = (*(v6 + 8))(v9, v5);
      v15 = *v2;
    }

    v13 = v15 * a2;
    goto LABEL_34;
  }

  (*(v6 + 16))(&v18 - v10, a1, v5);
  result = (*(v6 + 88))(v11, v5);
  if (result != *MEMORY[0x277D84678])
  {
    if (result == *MEMORY[0x277D84670])
    {
      v13 = rint(*v2);
      goto LABEL_34;
    }

    if (result == *MEMORY[0x277D84680])
    {
      v16 = *v2;
LABEL_12:
      v13 = ceil(v16);
      goto LABEL_34;
    }

    if (result == *MEMORY[0x277D84688])
    {
      v16 = *v2;
    }

    else
    {
      if (result == *MEMORY[0x277D84660])
      {
        v13 = trunc(*v2);
        goto LABEL_34;
      }

      if (result != *MEMORY[0x277D84668])
      {
        sub_249D732B4();
        return (*(v6 + 8))(v11, v5);
      }

      v16 = *v2;
      if ((*v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = floor(v16);
    goto LABEL_34;
  }

  v13 = round(*v2);
LABEL_34:
  *v2 = v13;
  return result;
}

uint64_t sub_249D49834()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D49874(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_249D49880(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_249D49880(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_249D49894(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_249D498A0(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_249D498A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_249D498B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_249D498F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_249D49994(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_249D499DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_249D49A54()
{
  result = qword_27EF1B660;
  if (!qword_27EF1B660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B648);
    sub_249D3C4C8(&qword_27EF1B668, &qword_27EF1B640);
    sub_249D49B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B660);
  }

  return result;
}

unint64_t sub_249D49B0C()
{
  result = qword_27EF1B670;
  if (!qword_27EF1B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B670);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  if (*(v0 + 160) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

unint64_t sub_249D49C28()
{
  result = qword_27EF1B690;
  if (!qword_27EF1B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B678);
    sub_249D49CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B690);
  }

  return result;
}

unint64_t sub_249D49CAC()
{
  result = qword_27EF1B698;
  if (!qword_27EF1B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B698);
  }

  return result;
}

unint64_t sub_249D49D1C()
{
  result = qword_27EF1B6A8;
  if (!qword_27EF1B6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B6A8);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  if (*(v0 + 160) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 408, 7);
}

uint64_t sub_249D49E04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B678);
  sub_249D3C4C8(&qword_27EF1B688, &qword_27EF1B680);
  sub_249D49C28();
  return swift_getOpaqueTypeConformance2();
}

unint64_t PropagatedSceneSettings.init<each A>(_:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_249D73444())
  {
    result = sub_249D4C1AC(MEMORY[0x277D84F90]);
    v12 = result;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x277D84FA0];
    v12 = MEMORY[0x277D84FA0];
    if (!a2)
    {
LABEL_10:
      *a3 = result;
      return result;
    }
  }

  v7 = a1;
  v8 = a2;
  do
  {
    v9 = *v7++;
    v10 = *v9;

    sub_249D4A5B4(&v11, v10);

    --v8;
  }

  while (v8);
  *a3 = v12;
  do
  {

    --a2;
  }

  while (a2);
  return result;
}

unint64_t PropagatedSceneSettings.init()@<X0>(unint64_t *a1@<X8>)
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_249D73444())
    {
      result = sub_249D4C1AC(MEMORY[0x277D84F90]);
    }

    else
    {
      result = MEMORY[0x277D84FA0];
    }

    *a1 = result;
  }

  else
  {
    result = MEMORY[0x277D84FA0];
    *a1 = MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t PropagatedSceneSettings.insert<A>(_:)(uint64_t a1)
{

  sub_249D4A5B4(&v3, a1);
}

uint64_t PropagatedSceneSettings.remove<A>(_:)(uint64_t a1)
{
  sub_249D4BE78(a1, v1);
}

uint64_t sub_249D4A0FC(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:

          v19 = sub_249D730C4();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while ((sub_249D73124() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_249D4BD74(v8, v7);
}

uint64_t sub_249D4A39C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_249D73454();

    if (v9)
    {

      sub_249D4C7F4();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_249D73444();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_249D4A808(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_249D4ABF4();
    }

    v18 = v8;
    sub_249D4B084(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_249D4C7F4();
  v11 = sub_249D73364();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_249D4B1C0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_249D73374();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_249D4A5B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_249D73454();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_249D73444();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_249D4A9E8(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_249D4AE1C();
    }

    sub_249D4B108(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
  v10 = sub_249D730C4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_249D4B320(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_249D73124() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_249D4A808(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B8);
    v2 = sub_249D734B4();
    v14 = v2;
    sub_249D73434();
    if (sub_249D73474())
    {
      sub_249D4C7F4();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_249D4ABF4();
        }

        v2 = v14;
        result = sub_249D73364();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_249D73474());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_249D4A9E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1B6C8);
    v2 = sub_249D734B4();
    v14 = v2;
    sub_249D73434();
    for (; sub_249D73474(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_249D4AE1C();
        v2 = v14;
      }

      result = sub_249D730C4();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v9 = 0;
        v10 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v10 && (v9 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v11 = v7 == v10;
          if (v7 == v10)
          {
            v7 = 0;
          }

          v9 |= v11;
          v12 = *(v4 + 8 * v7);
        }

        while (v12 == -1);
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v13;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_249D4ABF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B8);
  result = sub_249D734A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_249D73364();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_249D4AE1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1B6C8);
  result = sub_249D734A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
      result = sub_249D730C4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_249D4B084(uint64_t a1, uint64_t a2)
{
  sub_249D73364();
  result = sub_249D73424();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_249D4B108(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
  sub_249D730C4();
  result = sub_249D73424();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_249D4B1C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_249D4ABF4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_249D4B4B4();
      goto LABEL_12;
    }

    sub_249D4B754();
  }

  v8 = *v3;
  v9 = sub_249D73364();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_249D4C7F4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_249D73374();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_249D736E4();
  __break(1u);
}

uint64_t sub_249D4B320(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_249D4AE1C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_249D4B604();
      goto LABEL_12;
    }

    sub_249D4B968();
  }

  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
  result = sub_249D730C4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_249D73124();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_249D736E4();
  __break(1u);
  return result;
}

id sub_249D4B4B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B8);
  v2 = *v0;
  v3 = sub_249D73494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_249D4B604()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1B6C8);
  v2 = *v0;
  v3 = sub_249D73494();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_249D4B754()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B8);
  result = sub_249D734A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_249D73364();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_249D4B968()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1B6C8);
  result = sub_249D734A4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
      result = sub_249D730C4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_249D4BBA8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249D73414();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
        v10 = sub_249D730C4() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249D4BD74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_249D73444();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_249D73484();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249D4BE78(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_249D73484();

    if (v6)
    {
      v7 = sub_249D4C02C(v5, a1, a2);

      return v7;
    }

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
  v9 = sub_249D730C4();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while ((sub_249D73124() & 1) == 0)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a2;
  v16 = *a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249D4B604();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_249D4BBA8(v11);
  result = v15;
  *a2 = v16;
  return result;
}

uint64_t sub_249D4C02C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v4 = sub_249D73444();
  v5 = swift_unknownObjectRetain();
  v6 = sub_249D4A9E8(v5, v4);
  v13 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
  v7 = sub_249D730C4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while ((sub_249D73124() & 1) == 0)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v11 = *(*(v6 + 48) + 8 * v9);
  sub_249D4BBA8(v9);
  result = sub_249D73124();
  if (result)
  {
    *a3 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_249D4C1AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_249D73444();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1B6C8);
      result = sub_249D734C4();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_249D73444();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C201690](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0);
    result = sub_249D730C4();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_249D73124();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_249D4C404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_249D4C44C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D4C498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B0);
    v3 = sub_249D734C4();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = *(v24 + v4);
      v25 = v4 + 1;
      sub_249D73774();
      sub_249D73184();

      result = sub_249D737A4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x6F69747265737361;
            }

            else
            {
              v14 = 1701736302;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xED0000646C65486ELL;
            }

            else
            {
              v15 = 0xE400000000000000;
            }

            if (v6 > 1)
            {
LABEL_20:
              v16 = 0x6E776F6E6B6E75;
              if (v6 == 3)
              {
                v16 = 0x656E6563536F6ELL;
              }

              if (v6 == 2)
              {
                v17 = 0xD000000000000011;
              }

              else
              {
                v17 = v16;
              }

              if (v6 == 2)
              {
                v18 = 0x8000000249D7A200;
              }

              else
              {
                v18 = 0xE700000000000000;
              }

              if (v14 != v17)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0xD000000000000011;
            v15 = 0x8000000249D7A200;
            if (v6 > 1)
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x656E6563536F6ELL;
            }

            else
            {
              v14 = 0x6E776F6E6B6E75;
            }

            v15 = 0xE700000000000000;
            if (v6 > 1)
            {
              goto LABEL_20;
            }
          }

          if (v6)
          {
            v18 = 0xED0000646C65486ELL;
            if (v14 != 0x6F69747265737361)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v18 = 0xE400000000000000;
            if (v14 != 1701736302)
            {
              goto LABEL_36;
            }
          }

LABEL_35:
          if (v15 == v18)
          {

            goto LABEL_4;
          }

LABEL_36:
          v19 = sub_249D736A4();

          if (v19)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      v4 = v25;
      if (v25 == v23)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}