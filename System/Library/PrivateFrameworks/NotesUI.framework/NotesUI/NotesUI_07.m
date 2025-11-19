uint64_t sub_1D43496D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D4419444();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D4419484();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE98);
  result = sub_1D4417114();
  if (LOBYTE(aBlock[0]) != 2 && (aBlock[0] & 1) == 0)
  {
    sub_1D41766C0(0, &qword_1EDE33D70);
    v17 = sub_1D441A2C4();
    aBlock[4] = a4;
    aBlock[5] = a3;
    v21 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = a5;
    v20 = _Block_copy(aBlock);

    sub_1D4419464();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D4349E88(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    sub_1D441A814();
    v19 = v20;
    v18 = v21;
    MEMORY[0x1DA6D5D00](0, v15, v11, v20);
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

void sub_1D43499CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong discardPreviewedResult];
  }
}

id ICCalculateRecognitionController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1D4349B88()
{
  v0 = sub_1D4419C14();

  return v0;
}

id sub_1D4349BE4()
{
  v0 = sub_1D4419C14();

  return v0;
}

id sub_1D4349C40()
{
  v0 = sub_1D4419C14();

  return v0;
}

id static NSNotificationName.BaseTextViewWillSetMarkedTextNotification.getter()
{
  if (qword_1EDE32728 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE32738;

  return v1;
}

uint64_t sub_1D4349DA4()
{
  result = sub_1D4419C14();
  qword_1EC7D13A8 = result;
  return result;
}

uint64_t sub_1D4349E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4349ED0()
{
  sub_1D4416E44();

  return sub_1D43DEDC4();
}

uint64_t sub_1D4349F8C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D441A8C4();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1D4391038(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1D441A8C4() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1D441A8C4();
  v2 = sub_1D43C74FC(v5, v6);
LABEL_10:

  return sub_1D438F734(a1, v2);
}

uint64_t ICCollaborationAnalyticsTrackerInternal.track(share:note:)(void *a1, void *a2)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D4419484();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1D434A398;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  v16 = v2;
  sub_1D4419464();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1D434A398()
{
  v1 = *(v0 + 32);
  sub_1D434A3E0(*(v0 + 24), v1);
  return sub_1D434AC2C(v1, 0, 0);
}

uint64_t sub_1D434A3E0(void *a1, void *a2)
{
  v3 = v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF50);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v37 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF58);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v37 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF60);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF68);
  v10 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF70);
  MEMORY[0x1EEE9AC00](v42);
  v51 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF78);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v37 - v14;
  sub_1D434CD38(a2);
  v15 = [a2 objectID];
  type metadata accessor for ShareMetrics();
  swift_allocObject();
  v16 = a1;
  v17 = sub_1D434E264(v15, a1);

  v18 = [a2 objectID];
  v19 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetrics;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if ((v20 & 0xC000000000000001) != 0)
  {
    if (v20 < 0)
    {
      v21 = *(v3 + v19);
    }

    else
    {
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_1D441A8C4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    *(v3 + v19) = sub_1D432D5F4(v21, result + 1);
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v3 + v19);
  sub_1D432E294(v17, v18, isUniquelyReferenced_nonNull_native);
  *(v3 + v19) = v52;

  swift_endAccess();
  v38 = a2;
  v37 = [a2 objectID];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF38);
  sub_1D4418334();
  swift_endAccess();
  swift_beginAccess();
  sub_1D4418334();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  sub_1D4418334();
  swift_endAccess();
  swift_beginAccess();
  sub_1D4418334();
  swift_endAccess();
  sub_1D417645C(&qword_1EC7CAF80, &qword_1EC7CAF68);
  sub_1D417645C(&qword_1EC7CAF88, &qword_1EC7CAF60);
  sub_1D4418234();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF40);
  sub_1D4418334();
  swift_endAccess();
  swift_beginAccess();
  sub_1D4418334();
  swift_endAccess();
  sub_1D417645C(&qword_1EC7CAF90, &qword_1EC7CAF50);
  sub_1D4418214();
  sub_1D417645C(&qword_1EC7CAF98, &qword_1EC7CAF70);
  sub_1D417645C(&qword_1EC7CAFA0, &qword_1EC7CAF58);
  v24 = v44;
  sub_1D4418214();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v27 = v38;
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v17;
  sub_1D417645C(&qword_1EC7CAFA8, &qword_1EC7CAF78);

  v28 = v27;
  v29 = v47;
  v30 = sub_1D4418474();

  (*(v46 + 8))(v24, v29);
  v31 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetricsObservers;
  swift_beginAccess();
  v32 = *(v3 + v31);
  if ((v32 & 0xC000000000000001) == 0)
  {
LABEL_14:
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v3 + v31);
    v35 = v30;
    v36 = v37;
    sub_1D432E254(v35, v37, v34);
    *(v3 + v31) = v52;

    swift_endAccess();
  }

  if (v32 < 0)
  {
    v33 = *(v3 + v31);
  }

  else
  {
    v33 = v32 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1D441A8C4();
  if (!__OFADD__(result, 1))
  {
    *(v3 + v31) = sub_1D432D630(v33, result + 1);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D434AC2C(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a3)
  {
    v8 = *(a3 + 24);
    if (v8)
    {
      v54 = [v8 ic_nonOwnerPendingParticipantsCount];
      v9 = *(v5 + 24);
      if (v9)
      {
        v53 = [v9 ic_nonOwnerAcceptedParticipantsCount];
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    if (aBlock)
    {
      v11 = [aBlock ic_nonOwnerPendingParticipantsCount];
    }

    else
    {
      v12 = *(v5 + 24);
      if (v12)
      {
        v11 = [v12 ic_nonOwnerPendingParticipantsCount];
      }

      else
      {
        v11 = 0;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    if (aBlock)
    {
      v10 = [aBlock ic_nonOwnerAcceptedParticipantsCount];

      v13 = *(v5 + 40);
      if (v13)
      {
LABEL_15:
        v14 = *(v5 + 32);

        v61 = 0;
        v62 = 0;
LABEL_31:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D4418364();

        v24 = aBlock;
        v25 = *(v5 + 56);
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(v5 + 24);
      if (v15)
      {
        v10 = [v15 ic_nonOwnerAcceptedParticipantsCount];
        v13 = *(v5 + 40);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        v13 = *(v5 + 40);
        if (v13)
        {
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v53 = 0;
    v54 = 0;
  }

  sub_1D441A9C4();

  aBlock = 0xD000000000000018;
  v56 = 0x80000001D444F3B0;
  v16 = 0xE800000000000000;
  v17 = 0x6574616974696E69;
  v18 = 0xE500000000000000;
  v19 = 0x6572616873;
  v20 = 0xE600000000000000;
  v21 = 0x6C65636E6163;
  if (a2 != 3)
  {
    v21 = 0x6572756C696166;
    v20 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (a2)
  {
    v17 = 0x616974696E696572;
    v16 = 0xEA00000000006574;
  }

  if (a2 <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (a2 <= 1u)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1DA6D5730](v22, v23);

  v14 = aBlock;
  v13 = v56;
  v61 = 0;
  v62 = 0;
  if (v5)
  {
    goto LABEL_31;
  }

  v25 = 0;
  v24 = 0;
LABEL_33:
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v29 = -1;
    }

    else
    {
      v29 = -2;
    }

    v61 = v29;
    v62 = v29;
  }

  else if (a2 >= 2u && (v24 & 1) != 0)
  {
    switch(v25)
    {
      case 1:
        if (v5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D4418364();

          v5 = aBlock;
          if (aBlock)
          {
            v42 = [aBlock ic_nonCurrentUserParticipants];

            sub_1D41766C0(0, &qword_1EC7CAF48);
            v43 = sub_1D4419E44();

            if (v43 >> 62)
            {
              v5 = sub_1D441A8C4();
            }

            else
            {
              v5 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }
        }

        v62 = v5;
        break;
      case 2:
        if (v5 && (v39 = *(v5 + 24)) != 0)
        {
          v40 = [v39 ic_nonCurrentUserParticipants];
          sub_1D41766C0(0, &qword_1EC7CAF48);
          v41 = sub_1D4419E44();
        }

        else
        {
          v41 = MEMORY[0x1E69E7CC0];
        }

        v44 = sub_1D439190C(v41);

        v52 = v44;
        if (v5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D4418364();

          if (aBlock)
          {
            v45 = [aBlock ic_nonCurrentUserParticipants];

            sub_1D41766C0(0, &qword_1EC7CAF48);
            v46 = sub_1D4419E44();
          }

          else
          {
            v46 = MEMORY[0x1E69E7CC0];
          }

          v44 = v52;
        }

        else
        {
          v46 = MEMORY[0x1E69E7CC0];
        }

        v47 = sub_1D439190C(v46);

        v48 = sub_1D4349F8C(v44, v47);
        if ((v48 & 0xC000000000000001) != 0)
        {
          v49 = sub_1D441A8C4();
          v44 = v52;
        }

        else
        {
          v49 = *(v48 + 16);
        }

        v62 = v49;
        v50 = sub_1D4349F8C(v47, v44);

        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = sub_1D441A8C4();
        }

        else
        {
          v51 = *(v50 + 16);
        }

        v61 = v51;
        break;
      case 3:
        if (!v5)
        {
          goto LABEL_44;
        }

        v26 = *(v5 + 24);
        if (v26)
        {
          v27 = [v26 ic_nonCurrentUserParticipants];
          sub_1D41766C0(0, &qword_1EC7CAF48);
          v28 = sub_1D4419E44();

          if (v28 >> 62)
          {
            v5 = sub_1D441A8C4();
          }

          else
          {
            v5 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

LABEL_44:
          v61 = v5;
          break;
        }

        v61 = 0;
        break;
      default:
        break;
    }
  }

  v30 = [a1 managedObjectContext];
  if (v30)
  {
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v4;
    *(v32 + 24) = a1;
    *(v32 + 32) = v14;
    *(v32 + 40) = v13;
    *(v32 + 48) = v24 & 1;
    *(v32 + 56) = &v62;
    *(v32 + 64) = &v61;
    *(v32 + 72) = v54;
    *(v32 + 80) = v53;
    *(v32 + 88) = v11;
    *(v32 + 96) = v10;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1D434DF10;
    *(v33 + 24) = v32;
    v59 = sub_1D418D6D8;
    v60 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = sub_1D418D6C8;
    v58 = &block_descriptor_109;
    v34 = _Block_copy(&aBlock);
    v35 = v4;
    v36 = a1;

    [v31 performBlockAndWait_];

    _Block_release(v34);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t ICCollaborationAnalyticsTrackerInternal.save(newShare:note:)(void *a1, void *a2)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D4419484();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_1D434BA1C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a2;
  v16 = a1;
  sub_1D4419464();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1D434B7B8(uint64_t a1, id a2, void *a3)
{
  v6 = [a2 objectID];
  v7 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetrics;
  swift_beginAccess();
  v8 = sub_1D4322EA0(v6, *(a1 + v7));

  swift_endAccess();
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = a3;
    sub_1D4418374();
  }

  v10 = [a2 objectID];
  swift_beginAccess();
  v11 = sub_1D4322EA0(v10, *(a1 + v7));

  if (v11)
  {
    swift_endAccess();
    v12 = *(v11 + 24);
    v13 = v12;

    if (v12)
    {

      v14 = [a2 objectID];
      swift_beginAccess();
      v15 = sub_1D4322EA0(v14, *(a1 + v7));

      if (v15)
      {
        swift_endAccess();
        *(v15 + 56) = 2;
        swift_getKeyPath();
        swift_getKeyPath();
        return sub_1D4418374();
      }

      return swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = [a2 objectID];
  swift_beginAccess();
  v17 = sub_1D4322EA0(v16, *(a1 + v7));

  if (v17)
  {
    swift_endAccess();
    *(v17 + 56) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1D4418374();
  }

  return swift_endAccess();
}

uint64_t ICCollaborationAnalyticsTrackerInternal.save(activityType:collaborationSelected:error:completed:note:)(uint64_t a1, uint64_t a2, char a3, void *a4, int a5, void *a6)
{
  v25 = a5;
  v12 = sub_1D4419444();
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1D4419484();
  v15 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *&v6[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = v25;
  aBlock[4] = sub_1D434C128;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_12_0;
  v19 = _Block_copy(aBlock);
  v20 = v6;
  v21 = a6;

  v22 = a4;
  sub_1D4419464();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v17, v14, v19);
  _Block_release(v19);
  (*(v28 + 8))(v14, v12);
  (*(v15 + 8))(v17, v27);
}

uint64_t sub_1D434BDB8(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v12 = [a2 objectID];
  v13 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetrics;
  swift_beginAccess();
  v14 = sub_1D4322EA0(v12, *(a1 + v13));

  swift_endAccess();
  if (v14)
  {
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418374();
  }

  v15 = [a2 objectID];
  swift_beginAccess();
  v16 = sub_1D4322EA0(v15, *(a1 + v13));

  swift_endAccess();
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418374();
  }

  v17 = [a2 objectID];
  swift_beginAccess();
  v18 = sub_1D4322EA0(v17, *(a1 + v13));

  if (!v18)
  {
    swift_endAccess();
    v21 = a7;
    if (a6)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  swift_endAccess();
  v19 = *(v18 + 48);
  *(v18 + 48) = a6;
  v20 = a6;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418374();
  v21 = a7;
  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_10:
  v22 = [a2 objectID];
  swift_beginAccess();
  v23 = sub_1D4322EA0(v22, *(a1 + v13));

  swift_endAccess();
  if (v23)
  {
    *(v23 + 56) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418374();
  }

LABEL_12:
  v24 = [a2 objectID];
  swift_beginAccess();
  v25 = sub_1D4322EA0(v24, *(a1 + v13));

  if (!v25)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1D4418374();
}

uint64_t ICCollaborationAnalyticsTrackerInternal.unshare(note:)(void *a1)
{
  v3 = sub_1D4419444();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D4419484();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D434C5AC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_18_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_1D4419464();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1D434C4D8(uint64_t a1, id a2)
{
  v3 = [a2 objectID];
  v4 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetrics;
  swift_beginAccess();
  v5 = sub_1D4322EA0(v3, *(a1 + v4));

  if (!v5)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  *(v5 + 56) = 3;
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1D4418374();
}

id ICCollaborationAnalyticsTrackerInternal.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetricsObservers;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_1D441AB74() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = (v5 + 64) >> 6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v12;
    v15 = v6;
    v16 = v12;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_18:
      sub_1D419FA48();

      v21.receiver = v1;
      v21.super_class = ObjectType;
      return objc_msgSendSuper2(&v21, sel_dealloc);
    }

    while (1)
    {
      sub_1D44182C4();

      v12 = v16;
      v6 = v17;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D441ABA4())
      {
        swift_unknownObjectRelease();
        sub_1D44182D4();
        swift_dynamicCast();
        v16 = v12;
        v17 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D434C8A8(void *a1, uint64_t a2)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D4419484();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v2[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v2;
  v12[4] = a1;
  aBlock[4] = sub_1D434E5EC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_121;
  v13 = _Block_copy(aBlock);

  v14 = v2;
  v15 = a1;
  sub_1D4419464();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

void sub_1D434CB90(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (v11 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    if (v10 != 2)
    {
      if ((v10 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1D4418364(), , , v9 == 1))
      {
        if (v11)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
        }

        if (a1[6])
        {
          v6 = 4;
        }

        else
        {
          v6 = v5;
        }

        sub_1D434AC2C(a3, v6, a1);
        if ((v11 & 1) != 0 || a1[6] || !a1[5])
        {
          sub_1D434CD38(a3);
        }

        else
        {
          sub_1D434AC2C(a3, 1u, 0);
          v7 = a1[3];
          v8 = v7;
          sub_1D434A3E0(v7, a3);
        }
      }
    }
  }
}

uint64_t sub_1D434CD38(void *a1)
{
  v3 = [a1 objectID];
  v4 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetricsObservers;
  swift_beginAccess();
  v5 = sub_1D4322E88(v3, *(v1 + v4));

  swift_endAccess();
  if (v5)
  {
    sub_1D44182C4();
  }

  v6 = [a1 objectID];
  swift_beginAccess();
  sub_1D434E0F4(v6, sub_1D4322DD0, sub_1D42D55B8, sub_1D432D630);
  swift_endAccess();

  v7 = [a1 objectID];
  swift_beginAccess();
  sub_1D434E0F4(v7, sub_1D4322DD0, sub_1D42D55A4, sub_1D432D5F4);
  swift_endAccess();
}

void sub_1D434CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v15 = *(a1 + OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_delegate);
  v16 = sub_1D4419C14();
  [v15 trackShareActionForNote:a2 activityType:v16 collaborationSelected:a5 & 1 countOfCollaboratorsAdded:*a6 countOfCollaboratorsRemoved:*a7 startInvitedCount:a8 startAcceptedCount:a9 endInvitedCount:a10 endAcceptedCount:?];
}

void sub_1D434CFB8(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != 2)
  {
    v5 = a1[1];
    v7 = v5 == 2 || a1[2] == 0 || a1[3] == 0;
    if (!v7 && ((v4 & 1) == 0 || (v5 & 1) == 0 || ((*(a1 + 1) != 0) & a1[16]) != 0))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = a4;
        v12 = Strong;
        sub_1D434C8A8(a3, v11);
      }
    }
  }
}

id ICCollaborationAnalyticsTrackerInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D434D1A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D434D214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D434D29C()
{
  v1 = v0;
  sub_1D441A9C4();
  MEMORY[0x1DA6D5730](0xD00000000000001DLL, 0x80000001D444F2B0);
  v2 = [*(v0 + 16) description];
  v3 = sub_1D4419C54();
  v5 = v4;

  MEMORY[0x1DA6D5730](v3, v5);

  MEMORY[0x1DA6D5730](0xD000000000000010, 0x80000001D444F2D0);
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF18);
  v7 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v7);

  MEMORY[0x1DA6D5730](0xD000000000000014, 0x80000001D444F2F0);
  v19 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
  v8 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v8);

  MEMORY[0x1DA6D5730](0xD000000000000019, 0x80000001D444F310);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (v19)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v19)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1DA6D5730](v9, v10);

  MEMORY[0x1DA6D5730](0x727265202020200ALL, 0xED0000203D20726FLL);
  v20 = *(v1 + 48);
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF28);
  v12 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v12);

  MEMORY[0x1DA6D5730](0xD000000000000012, 0x80000001D444F330);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (v20)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v20)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1DA6D5730](v13, v14);

  MEMORY[0x1DA6D5730](0xD000000000000011, 0x80000001D444F350);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A18);
  v15 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v15);

  MEMORY[0x1DA6D5730](0xD00000000000001ELL, 0x80000001D444F370);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v16 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v16);

  MEMORY[0x1DA6D5730](0xD000000000000011, 0x80000001D444F390);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v17 = sub_1D4419C74();
  MEMORY[0x1DA6D5730](v17);

  return 0;
}

id *sub_1D434D76C()
{

  v1 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__activityTypeAssigned;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__errorAssigned, v2);
  v4 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__completed;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF38);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__collaborationSelected, v5);
  v7 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__newShare;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF40);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__shareOperationAssigned, v2);
  return v0;
}

uint64_t sub_1D434D904()
{
  sub_1D434D76C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareMetrics()
{
  result = qword_1EC7CAEF0;
  if (!qword_1EC7CAEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D434D9AC()
{
  sub_1D434DB10();
  if (v0 <= 0x3F)
  {
    sub_1D4306168(319, &qword_1EC7CAF08, &qword_1EC7C9A18);
    if (v1 <= 0x3F)
    {
      sub_1D4306168(319, &qword_1EC7CAF10, &qword_1EC7CAF18);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D434DB10()
{
  if (!qword_1EC7CAF00)
  {
    v0 = sub_1D4418384();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CAF00);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityStream.Item.SelectionStyles(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityStream.Item.SelectionStyles(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D434DCB4()
{
  result = qword_1EC7CAF20;
  if (!qword_1EC7CAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAF20);
  }

  return result;
}

uint64_t sub_1D434DD2C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  return result;
}

uint64_t sub_1D434DDA8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t sub_1D434DE18@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  return result;
}

uint64_t sub_1D434DE98(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1D4418374();
}

uint64_t sub_1D434DF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D417DAA4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D42D4338();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D4417494();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
    v20 = *(v13 - 8);
    sub_1D417E588(v12 + *(v20 + 72) * v7, a2);
    sub_1D432209C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D434E0F4(void *a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v14 = a3;
    v18 = sub_1D42D04F8(a1);
    if (v19)
    {
      v7 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v22 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v13 + 56) + 8 * v7);
        a2(v7, v13);
        goto LABEL_11;
      }

LABEL_15:
      (v14)();
      v13 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_1D441AB94();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v12 = sub_1D441A8C4();
  v13 = a4(v9, v12);

  v14 = sub_1D42D04F8(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  a2(v14, v13);

LABEL_11:
  *v6 = v13;
  return v17;
}

uint64_t sub_1D434E264(uint64_t a1, void *a2)
{
  v31 = a1;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF40);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF30);
  v27 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  v13 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__activityTypeAssigned;
  v38 = 0;
  sub_1D4418324();
  v14 = *(v10 + 32);
  v14(v2 + v13, v12, v9);
  v15 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__errorAssigned;
  v37 = 0;
  sub_1D4418324();
  v14(v2 + v15, v12, v9);
  v16 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__completed;
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A18);
  sub_1D4418324();
  v17 = *(v6 + 32);
  v17(v2 + v16, v8, v5);
  v18 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__collaborationSelected;
  v35 = 2;
  sub_1D4418324();
  v17(v2 + v18, v8, v5);
  v19 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__newShare;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAF18);
  v20 = v28;
  sub_1D4418324();
  (*(v29 + 32))(v2 + v19, v20, v30);
  v21 = OBJC_IVAR____TtC7NotesUIP33_7B61C87D5F1EF51EE56142734628054A12ShareMetrics__shareOperationAssigned;
  v33 = 0;
  sub_1D4418324();
  v14(v2 + v21, v12, v27);
  v22 = *(v2 + 24);
  v23 = v32;
  *(v2 + 16) = v31;
  *(v2 + 24) = v23;
  v24 = v23;

  return v2;
}

void sub_1D434E620()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EC7CAFB0);
  swift_endAccess();
  if (v1)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1D41766C0(0, &qword_1EC7C99C8);
    if (swift_dynamicCast())
    {
      [v2 UIEdgeInsetsValue];
    }
  }

  else
  {
    sub_1D418D074(v5);
  }
}

uint64_t sub_1D434E754(void *a1)
{
  v1 = a1;
  v2 = UIViewController.shouldHideModeButtonWhenPresented.getter();

  return v2 & 1;
}

id sub_1D434E794(const void *a1)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, a1);
  swift_endAccess();
  if (v3)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1D41766C0(0, &qword_1EDE33950);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1D418D074(v9);
  }

  return 0;
}

void sub_1D434E88C(void *a1)
{
  sub_1D41766C0(0, &qword_1EDE33950);
  v2 = a1;
  v3 = sub_1D441A5C4();
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_1EC7CAFB2, v3, 1);
  swift_endAccess();
}

void UIViewController.shouldHideModeButtonWhenPresented.setter()
{
  v1 = v0;
  sub_1D41766C0(0, &qword_1EDE33950);
  v2 = sub_1D441A5C4();
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_1EC7CAFB2, v2, 1);
  swift_endAccess();
}

Swift::Void __swiftcall UIViewController.hostedNotesUpdateAdditionalSafeAreaInsets(_:isModeButtonHidden:)(UIEdgeInsets _, Swift::Bool isModeButtonHidden)
{
  v3 = v2;
  right = _.right;
  bottom = _.bottom;
  left = _.left;
  top = _.top;
  sub_1D434E620();
  v15 = v12 == top && v9 == left && v10 == bottom && v11 == right;
  if (!v15 || (sub_1D434E794(&unk_1EC7CAFB1) & 1) != isModeButtonHidden)
  {
    v16 = [objc_opt_self() valueWithUIEdgeInsets_];
    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_1EC7CAFB0, v16, 1);
    swift_endAccess();

    sub_1D41766C0(0, &qword_1EDE33950);
    v17 = sub_1D441A5C4();
    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_1EC7CAFB1, v17, 1);
    swift_endAccess();

    v18 = [objc_opt_self() _currentAnimationSettings];
    if (!v18)
    {
      v18 = [objc_opt_self() settingsWithMass:3.0 stiffness:1000.0 damping:500.0];
    }

    v19 = [v3 view];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 window];

      if (v21 && (v22 = [v21 windowScene], v21, v22))
      {
        v23 = [v22 _synchronizedDrawingFence];
      }

      else
      {
        v23 = 0;
      }

      sub_1D4417EC4();
      v24 = v23;
      v25 = v18;
      v26 = sub_1D4417EB4();
      v27 = [v3 _hostedWindowScene];
      if (v27)
      {
        v28 = v27;
        [v27 sendAction_];

        v26 = v28;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D434ECC4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, Swift::Bool a7)
{
  v12 = a1;
  v14.top = a2;
  v14.left = a3;
  v14.bottom = a4;
  v14.right = a5;
  UIViewController.hostedNotesUpdateAdditionalSafeAreaInsets(_:isModeButtonHidden:)(v14, a7);
}

Swift::Void __swiftcall UIViewController.hostedNotesUpdateCalculatorMode(_:)(Swift::Int a1)
{
  sub_1D4417E84();
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_1D4417EA4();
    v5 = sub_1D4417E94();
    v3 = [v1 _hostedWindowScene];
    if (v3)
    {
      v4 = v3;
      [v3 sendAction_];
    }
  }
}

void sub_1D434EDF0(void *a1)
{
  v5 = a1;
  sub_1D4417E84();
  if (v1)
  {
    __break(1u);
  }

  else
  {
    sub_1D4417EA4();
    v2 = sub_1D4417E94();
    v3 = [v5 _hostedWindowScene];
    if (v3)
    {
      v4 = v3;
      [v3 sendAction_];
    }
  }
}

uint64_t ActivityStreamControlling.isItemEnabled(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = *(a3 + 48);
  v29 = a2;
  v30 = a3;
  v14(a2, a3);
  v15 = type metadata accessor for ActivityStream.Item(0);
  v16 = *(*(v15 - 8) + 48);
  LODWORD(a2) = v16(v13, 1, v15);
  sub_1D41769C4(v13, &qword_1EC7CA640);
  if (a2 != 1)
  {
    v20 = *v31;
    v21 = v31[1];
    v14(v29, v30);
    if (v16(v11, 1, v15))
    {
      v18 = &qword_1EC7CA640;
      v19 = v11;
      goto LABEL_6;
    }

    v25 = *v11;
    v24 = *(v11 + 1);

    sub_1D41769C4(v11, &qword_1EC7CA640);
    if (v20 == v25 && v21 == v24)
    {
    }

    else
    {
      v27 = sub_1D441AD84();

      v22 = 0;
      if ((v27 & 1) == 0)
      {
        return v22 & 1;
      }
    }
  }

  sub_1D434F190(v31 + *(v15 + 44), v7);
  v17 = type metadata accessor for ActivityStream.Destinations();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
  {
    v22 = sub_1D43D08BC();
    sub_1D43501A8(v7, type metadata accessor for ActivityStream.Destinations);
    return v22 & 1;
  }

  v18 = &qword_1EC7CAFB8;
  v19 = v7;
LABEL_6:
  sub_1D41769C4(v19, v18);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1D434F190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStreamControlling.press(_:isPressed:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  if (a2)
  {
    result = (*(a4 + 72))(a1, a3, a4);
    if ((result & 1) == 0)
    {
      return result;
    }

    sub_1D4350140(a1, v13, type metadata accessor for ActivityStream.Item);
    v15 = type metadata accessor for ActivityStream.Item(0);
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    return (*(a4 + 56))(v13, a3, a4);
  }

  v16 = *a1;
  v17 = a1[1];
  (*(a4 + 48))(a3, a4);
  v18 = type metadata accessor for ActivityStream.Item(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18))
  {
    return sub_1D41769C4(v11, &qword_1EC7CA640);
  }

  v26 = v17;
  v20 = v16;
  v21 = *v11;
  v22 = v11[1];

  sub_1D41769C4(v11, &qword_1EC7CA640);
  if (v20 == v21 && v26 == v22)
  {

    goto LABEL_13;
  }

  v24 = sub_1D441AD84();

  if (v24)
  {
LABEL_13:
    (*(v19 + 56))(v13, 1, 1, v18);
    return (*(a4 + 56))(v13, a3, a4);
  }

  return result;
}

uint64_t ActivityStreamControlling.select(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityStream(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ActivityStream.Destinations();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a3 + 72))(a1, a2, a3);
  if (result)
  {
    v17 = v15;
    v18 = type metadata accessor for ActivityStream.Item(0);
    sub_1D434F190(a1 + *(v18 + 44), v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1D41769C4(v11, &qword_1EC7CAFB8);
    }

    else
    {
      v39 = v17;
      sub_1D434FAE8(v11, v17);
      (*(a3 + 24))(a2, a3);
      v19 = sub_1D43E2964();
      sub_1D43501A8(v8, type metadata accessor for ActivityStream);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFC0);
      v21 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
      v37 = *(*(v18 - 8) + 72);
      v38 = v20;
      v22 = swift_allocObject();
      v36 = xmmword_1D4435D40;
      *(v22 + 16) = xmmword_1D4435D40;
      sub_1D4350140(a1, v22 + v21, type metadata accessor for ActivityStream.Item);
      v23 = sub_1D434FBF4(v19, v22, type metadata accessor for ActivityStream.Item, type metadata accessor for ActivityStream.Item, _s7NotesUI14ActivityStreamV4ItemV2eeoiySbAE_AEtFZ_0, type metadata accessor for ActivityStream.Item);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v24 = *(a3 + 40);
      if (v23)
      {
        v25 = *(a3 + 40);
        v26 = v24(v40, a2, a3);
        v27 = MEMORY[0x1E69E7CC0];
        sub_1D43E2B98(MEMORY[0x1E69E7CC0]);
        v26(v40, 0);
        v28 = v25(v40, a2, a3);
        sub_1D43E2BB0(v27);
        v28(v40, 0);
        v29 = v25(v40, a2, a3);
        ActivityStream.updateDividers()();
        v29(v40, 0);
        [(*(a3 + 16))(a2 a3)];
        swift_unknownObjectRelease();
        return sub_1D43501A8(v39, type metadata accessor for ActivityStream.Destinations);
      }

      else
      {
        v30 = *(a3 + 40);
        v31 = v24(v40, a2, a3);
        sub_1D43E2B98(MEMORY[0x1E69E7CC0]);
        v31(v40, 0);
        v32 = swift_allocObject();
        *(v32 + 16) = v36;
        sub_1D4350140(a1, v32 + v21, type metadata accessor for ActivityStream.Item);
        v33 = v30(v40, a2, a3);
        sub_1D43E2BB0(v32);
        v33(v40, 0);
        v34 = v30(v40, a2, a3);
        ActivityStream.updateDividers()();
        v34(v40, 0);
        (*(a3 + 16))(a2, a3);
        swift_getObjectType();
        v35 = v39;
        ICActivityStreamCoordinating.show(_:resolver:)(v39, sub_1D43D755C);
        sub_1D43501A8(v35, type metadata accessor for ActivityStream.Destinations);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D434FAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Destinations();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D434FBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1D4350140(v20, v17, a4);
        sub_1D4350140(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_1D43501A8(v14, a6);
        sub_1D43501A8(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1D434FE10(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1D41766C0(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1DA6D6410](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1DA6D6410](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1D441A5E4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1D441A5E4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1D441A8C4();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1D441A8C4();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D4350140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43501A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D4350208()
{
  v0 = ICUIFrameworkBundleIdentifier();
  if (!v0)
  {
    sub_1D4419C54();
    v0 = sub_1D4419C14();
  }

  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1EDE32400 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D435028C()
{
  if (qword_1EDE323F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE32400;
  v1 = sub_1D4419C14();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {

    v3 = v2;
  }

  else
  {
    __break(1u);
  }
}

void static UIImage.thumbnailBar.getter()
{
  if (qword_1EDE323F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE32400;
  v1 = sub_1D4419C14();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_1D4350424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D4419C14();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_1D441AD64();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:v6 locale:v12 arguments:a4];

  swift_unknownObjectRelease();
  return v13;
}

BOOL sub_1D43505E4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1D435AF58(a4, a5);
  }

  while ((sub_1D4419BE4() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1D43506EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D441AB44();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = sub_1D441AB34();
    sub_1D4358D50();
    v29[3] = sub_1D44174B4();
    __swift_allocate_boxed_opaque_existential_0Tm(v29);

    sub_1D44174A4();
    v25 = sub_1D4350424(a2, a3, v29, v24);
    v26 = sub_1D4419C54();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = sub_1D441AF74();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_1D441AB24();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D4350924(uint64_t a1)
{
  v2 = sub_1D4417C64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69B72B8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = v5[1];
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D4320054();
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    v16 = v12;
    v17 = v14;
    v18 = inited;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69B72B0] && v6 != *MEMORY[0x1E69B72C0] && v6 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v20 = objc_opt_self();
    v21 = sub_1D4419C14();
    v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

    v23 = sub_1D4419C54();
    v25 = v24;

    v18 = MEMORY[0x1E69E7CC0];
    v16 = v23;
    v17 = v25;
  }

  return Text.init(format:_:)(v16, v17, v18);
}

uint64_t sub_1D4350C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D435129C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43518FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4351F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43525B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4352C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4353270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v48 = a2;
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, v47, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:0];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D44364A0;
      *(inited + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v31 = MEMORY[0x1E69E65A8];
      *(inited + 96) = MEMORY[0x1E69E6530];
      *(inited + 104) = v31;
      v32 = v48;
      *(inited + 64) = v30;
      *(inited + 72) = v32;
      v33 = v26;
      v34 = v28;
      v35 = inited;
      return Text.init(format:_:)(v33, v34, v35);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, v47, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, v47, v4);
    v37 = (*(v5 + 88))(v11, v4);
    if (v37 == *MEMORY[0x1E69B71D0] || v37 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v38 = objc_opt_self();
      v39 = sub_1D4419C14();
      v40 = [v38 localizedFrameworkStringForKey:v39 value:0 table:0 allowSiri:0];

      v41 = sub_1D4419C54();
      v43 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      v35 = swift_initStackObject();
      v44 = MEMORY[0x1E69E6530];
      *(v35 + 16) = xmmword_1D4435D40;
      v45 = MEMORY[0x1E69E65A8];
      *(v35 + 56) = v44;
      *(v35 + 64) = v45;
      *(v35 + 32) = v48;
      v33 = v41;
      v34 = v43;
      return Text.init(format:_:)(v33, v34, v35);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43539CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D435402C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4354688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4354CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4355344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43559A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4356004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4356664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4356CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, a1, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v30 = v26;
      v31 = v28;
      v32 = inited;
      return Text.init(format:_:)(v30, v31, v32);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, a1, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, a1, v4);
    v34 = (*(v5 + 88))(v11, v4);
    if (v34 == *MEMORY[0x1E69B71D0] || v34 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v35 = objc_opt_self();
      v36 = sub_1D4419C14();
      v37 = [v35 localizedFrameworkStringForKey:v36 value:0 table:0 allowSiri:1];

      v38 = sub_1D4419C54();
      v40 = v39;

      v32 = MEMORY[0x1E69E7CC0];
      v30 = v38;
      v31 = v40;
      return Text.init(format:_:)(v30, v31, v32);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D435731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v48 = a2;
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = sub_1D4417C64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69B72B8])
  {
    (*(v15 + 96))(v17, v14);
    v20 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v8, v47, v4);
    v21 = (*(v5 + 88))(v8, v4);
    if (v21 == *MEMORY[0x1E69B71D0] || v21 == *MEMORY[0x1E69B71C8])
    {
      v23 = objc_opt_self();
      v24 = sub_1D4419C14();
      v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:0];

      v26 = sub_1D4419C54();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D44364A0;
      *(inited + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1D4320054();
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      v31 = MEMORY[0x1E69E65A8];
      *(inited + 96) = MEMORY[0x1E69E6530];
      *(inited + 104) = v31;
      v32 = v48;
      *(inited + 64) = v30;
      *(inited + 72) = v32;
      v33 = v26;
      v34 = v28;
      v35 = inited;
      return Text.init(format:_:)(v33, v34, v35);
    }

    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x1E69B72B0])
  {
    (*(v5 + 16))(v13, v47, v4);
    v22 = (*(v5 + 88))(v13, v4);
    if (v22 == *MEMORY[0x1E69B71D0] || v22 == *MEMORY[0x1E69B71C8])
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E69B72C0] && v18 != *MEMORY[0x1E69B72A8])
    {
      goto LABEL_22;
    }

    (*(v5 + 16))(v11, v47, v4);
    v37 = (*(v5 + 88))(v11, v4);
    if (v37 == *MEMORY[0x1E69B71D0] || v37 == *MEMORY[0x1E69B71C8])
    {
LABEL_19:
      v38 = objc_opt_self();
      v39 = sub_1D4419C14();
      v40 = [v38 localizedFrameworkStringForKey:v39 value:0 table:0 allowSiri:0];

      v41 = sub_1D4419C54();
      v43 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
      v35 = swift_initStackObject();
      v44 = MEMORY[0x1E69E6530];
      *(v35 + 16) = xmmword_1D4435D40;
      v45 = MEMORY[0x1E69E65A8];
      *(v35 + 56) = v44;
      *(v35 + 64) = v45;
      *(v35 + 32) = v48;
      v33 = v41;
      v34 = v43;
      return Text.init(format:_:)(v33, v34, v35);
    }
  }

LABEL_21:
  sub_1D441AD74();
  __break(1u);
LABEL_22:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4357A78(uint64_t a1, void (**a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v174 = a7;
  v171 = a6;
  v164 = a2;
  v165 = a3;
  v17 = sub_1D4417C64();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v170 = v152 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v163 = v152 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v152 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v152 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = *(a1 + 16);
  if (!v33)
  {

    return Text.init(format:_:)(a4, a5, MEMORY[0x1E69E7CC0]);
  }

  v156 = a4;
  v157 = a5;
  *&v162 = a8;
  v169 = v33;
  v34 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v160 = v152 - v32;
  v161 = v34;
  v35 = a1 + v34;
  v175 = *(v18 + 16);
  *&v176 = v18 + 16;
  v175();
  v36 = *MEMORY[0x1E69B72A8];
  v37 = *MEMORY[0x1E69B72A8];
  v166 = *(v18 + 104);
  v167 = v18 + 104;
  v166(v31, v37, v17);
  v158 = a1;
  v38 = sub_1D43505E4(v31, a1, MEMORY[0x1E69B72C8], &qword_1EC7CAFD0, MEMORY[0x1E69B72C8]);
  v159 = v18;
  v39 = *(v18 + 8);
  v168 = v31;
  v172 = v18 + 8;
  v173 = v39;
  v39(v31, v17);
  if (v38)
  {
    v40 = a9;
    v41 = v162;
    if (!a9)
    {
      v40 = v157;

      v41 = v156;
    }

    v42 = Text.init(format:_:)(v41, v40, MEMORY[0x1E69E7CC0]);
    v43 = v160;
    v44 = v17;
    goto LABEL_6;
  }

  if (v169 != 1)
  {
    v54 = v169;
    v156 = a13;
    v155 = a12;
    v154 = a11;
    v153 = a10;
    v55 = objc_opt_self();
    v56 = sub_1D4419C14();
    v157 = v55;
    v57 = [v55 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:1];

    v164 = sub_1D4419C54();
    v165 = v58;

    v174 = *(v159 + 72);
    v59 = MEMORY[0x1E69E7CC0];
    v60 = v35;
    v171 = v17;
    v61 = v173;
    do
    {
      (v175)(v28, v60, v17);
      v63 = sub_1D4417C54();
      v65 = v64;
      v61(v28, v17);
      if (v65)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1D438D2B4(0, *(v59 + 2) + 1, 1, v59);
        }

        v67 = *(v59 + 2);
        v66 = *(v59 + 3);
        if (v67 >= v66 >> 1)
        {
          v59 = sub_1D438D2B4((v66 > 1), v67 + 1, 1, v59);
        }

        *(v59 + 2) = v67 + 1;
        v62 = &v59[16 * v67];
        *(v62 + 4) = v63;
        *(v62 + 5) = v65;
        v17 = v171;
        v61 = v173;
      }

      v60 += v174;
      --v54;
    }

    while (v54);
    v178 = v59;

    v68 = 0;
    sub_1D43CE734(&v178);
    v69 = v163;
    v152[1] = 0;

    v70 = v178;
    v71 = *(v178 + 2);
    if (v71)
    {
      v178 = MEMORY[0x1E69E7CC0];
      sub_1D418BC38(0, v71, 0);
      v68 = v178;
      v152[2] = v70;
      v72 = (v70 + 40);
      v162 = xmmword_1D4435D40;
      do
      {
        v74 = *(v72 - 1);
        v73 = *v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
        v75 = swift_allocObject();
        *(v75 + 16) = v162;
        *(v75 + 56) = MEMORY[0x1E69E6158];
        *(v75 + 64) = sub_1D4320054();
        *(v75 + 32) = v74;
        *(v75 + 40) = v73;
        swift_bridgeObjectRetain_n();
        v76 = sub_1D4419C24();
        v78 = v77;

        v178 = v68;
        v80 = v68[2];
        v79 = v68[3];
        if (v80 >= v79 >> 1)
        {
          sub_1D418BC38((v79 > 1), v80 + 1, 1);
          v68 = v178;
        }

        v68[2] = (v80 + 1);
        v81 = &v68[2 * v80];
        v81[4] = v76;
        v81[5] = v78;
        v72 += 2;
        --v71;
      }

      while (v71);
      *&v162 = v68;

      v17 = v171;
      v69 = v163;
    }

    else
    {

      *&v162 = MEMORY[0x1E69E7CC0];
    }

    v86 = 0;
    LODWORD(v165) = *MEMORY[0x1E69B72C0];
    v164 = (v159 + 32);
    v87 = MEMORY[0x1E69E7CC0];
    do
    {
      (v175)(v69, v35, v17);
      v89 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);

        __break(1u);
        goto LABEL_70;
      }

      v90 = v168;
      v166(v168, v165, v17);
      v91 = v69;
      v92 = MEMORY[0x1DA6D3650](v69, v90);
      v93 = v90;
      v94 = v173;
      v173(v93, v17);
      if (v92)
      {
        v95 = v17;
        v96 = *v164;
        (*v164)(v170, v91, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = v87;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF31C(0, *(v87 + 2) + 1, 1);
          v87 = v178;
        }

        v68 = &selRef_isCalculateGraphExpressionAttachment;
        v88 = v174;
        v99 = *(v87 + 2);
        v98 = *(v87 + 3);
        if (v99 >= v98 >> 1)
        {
          sub_1D43CF31C(v98 > 1, v99 + 1, 1);
          v87 = v178;
        }

        *(v87 + 2) = v99 + 1;
        v100 = &v87[v161 + v99 * v88];
        v101 = v171;
        v96(v100, v170, v171);
        v17 = v101;
        v69 = v163;
      }

      else
      {
        v94(v91, v17);
        v68 = &selRef_isCalculateGraphExpressionAttachment;
        v69 = v91;
        v88 = v174;
      }

      ++v86;
      v35 += v88;
    }

    while (v89 != v169);
    v102 = *(v87 + 2);

    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    v104 = MEMORY[0x1E69E6530];
    v105 = MEMORY[0x1E69E65A8];
    v176 = xmmword_1D4435D40;
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = v104;
    *(inited + 64) = v105;
    *(inited + 32) = v102;
    v106 = v171;
    v107 = sub_1D4419C14();
    v108 = v157;
    v109 = [v157 v68[302]];

    v110 = sub_1D4419C54();
    v112 = v111;

    v113 = sub_1D43506EC(inited, v110, v112);
    v115 = v114;
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFC8);
    swift_arrayDestroy();
    v116 = v68;
    v117 = v168;
    LODWORD(v174) = *MEMORY[0x1E69B72B0];
    (v166)(v168);
    v118 = sub_1D43505E4(v117, v158, MEMORY[0x1E69B72C8], &qword_1EC7CAFD0, MEMORY[0x1E69B72C8]);
    v173(v117, v106);
    if (v118)
    {
      v119 = sub_1D4419C14();
      v120 = [v108 v116 + 297];

      v121 = sub_1D4419C54();
      v123 = v122;
    }

    else
    {
      v121 = 0;
      v123 = 0xE000000000000000;
    }

    v124 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v125 = swift_initStackObject();
    *(v125 + 16) = v176;
    *(v125 + 32) = v121;
    *(v125 + 40) = v123;
    v177 = v125;
    sub_1D42EFE18(v124);
    v126 = swift_initStackObject();
    *(v126 + 16) = v176;
    *(v126 + 32) = v113;
    *(v126 + 40) = v115;
    sub_1D42EFE18(v126);
    v127 = 0;
    v68 = v177;
    v128 = *(v177 + 16);
    v129 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v130 = &v68[2 * v127 + 5];
    while (v128 != v127)
    {
      if (v127 >= v68[2])
      {
        goto LABEL_69;
      }

      ++v127;
      v132 = *(v130 - 1);
      v131 = *v130;
      v130 += 2;
      v133 = (v131 >> 56) & 0xF;
      if ((v131 & 0x2000000000000000) == 0)
      {
        v133 = v132 & 0xFFFFFFFFFFFFLL;
      }

      if (v133)
      {

        v134 = swift_isUniquelyReferenced_nonNull_native();
        v178 = v129;
        if ((v134 & 1) == 0)
        {
          sub_1D418BC38(0, *(v129 + 2) + 1, 1);
          v129 = v178;
        }

        v136 = *(v129 + 2);
        v135 = *(v129 + 3);
        if (v136 >= v135 >> 1)
        {
          sub_1D418BC38((v135 > 1), v136 + 1, 1);
          v129 = v178;
        }

        *(v129 + 2) = v136 + 1;
        v137 = &v129[16 * v136];
        *(v137 + 4) = v132;
        *(v137 + 5) = v131;
        v106 = v171;
        goto LABEL_42;
      }
    }

    v138 = objc_opt_self();
    v139 = MEMORY[0x1E69E6158];
    v140 = sub_1D4419E24();

    v141 = [v138 localizedStringByJoiningStrings_];

    v142 = sub_1D4419C54();
    v144 = v143;

    v145 = v168;
    v166(v168, v174, v106);
    LOBYTE(v140) = sub_1D43505E4(v145, v158, MEMORY[0x1E69B72C8], &qword_1EC7CAFD0, MEMORY[0x1E69B72C8]);
    v146 = v173;
    v173(v145, v106);
    v147 = (v140 & 1) == 0;
    if (v140)
    {
      v148 = v156;
    }

    else
    {
      v148 = v154;
    }

    if (v147)
    {
      v149 = v153;
    }

    else
    {
      v149 = v155;
    }

    v150 = swift_initStackObject();
    *(v150 + 16) = v176;
    *(v150 + 56) = v139;
    *(v150 + 64) = sub_1D4320054();
    *(v150 + 32) = v142;
    *(v150 + 40) = v144;
    v42 = Text.init(format:_:)(v149, v148, v150);
    v146(v160, v106);
    return v42;
  }

  v46 = v160;
  (v175)(v21, v160, v17);
  v47 = v159;
  v48 = (*(v159 + 88))(v21, v17);
  if (v48 == *MEMORY[0x1E69B72B8])
  {
    (*(v47 + 96))(v21, v17);
    v49 = v17;
    v50 = *v21;
    v51 = v21[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1D4435D40;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = sub_1D4320054();
    *(v52 + 32) = v50;
    *(v52 + 40) = v51;
    v53 = v174;

    v42 = Text.init(format:_:)(v171, v53, v52);
    v43 = v46;
    v44 = v49;
LABEL_6:
    v173(v43, v44);
    return v42;
  }

  v82 = v173;
  if (v48 == *MEMORY[0x1E69B72B0])
  {
    v83 = v165;

    v84 = MEMORY[0x1E69E7CC0];
    v85 = v164;
LABEL_66:
    v42 = Text.init(format:_:)(v85, v83, v84);
    v82(v160, v17);
    return v42;
  }

  if (v48 == *MEMORY[0x1E69B72C0])
  {
    v83 = v157;

    v84 = MEMORY[0x1E69E7CC0];
    v85 = v156;
    goto LABEL_66;
  }

  if (v48 == v36)
  {
    v83 = a9;
    v151 = v162;
    if (!a9)
    {
      v151 = v156;
    }

    v84 = MEMORY[0x1E69E7CC0];
    v85 = v151;
    goto LABEL_66;
  }

LABEL_70:
  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43588D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = *MEMORY[0x1E69B71D0];
  v46 = a2;
  if (v8 == v9)
  {
    v43 = 0xD000000000000014;
    v44 = "%@ joined the folder";
    v45 = "%@ (people) joined the folder";
    v41 = "**%@** joined the folder";
    v42 = 0xD000000000000027;
LABEL_5:
    v10 = objc_opt_self();
    v11 = sub_1D4419C14();
    v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

    v13 = sub_1D4419C54();
    v39 = v14;
    v40 = v13;

    v15 = sub_1D4419C14();
    v16 = [v10 localizedFrameworkStringForKey:v15 value:0 table:0 allowSiri:1];

    v38 = sub_1D4419C54();
    v18 = v17;

    v19 = sub_1D4419C14();
    v20 = [v10 localizedFrameworkStringForKey:v19 value:0 table:0 allowSiri:1];

    v21 = sub_1D4419C54();
    v23 = v22;

    v24 = sub_1D4419C14();
    v25 = sub_1D4419C14();
    v26 = [v10 localizedFrameworkStringForKey:v24 value:v25 table:0 allowSiri:1];

    v27 = sub_1D4419C54();
    v29 = v28;

    v30 = sub_1D4419C14();
    v31 = sub_1D4419C14();
    v32 = [v10 localizedFrameworkStringForKey:v30 value:v31 table:0 allowSiri:1];

    v33 = sub_1D4419C54();
    v35 = v34;

    v36 = sub_1D4357A78(v46, v40, v39, v38, v18, v21, v23, 0, 0, v27, v29, v33, v35);

    return v36;
  }

  if (v8 == *MEMORY[0x1E69B71C8])
  {
    v44 = "%@ joined the note";
    v45 = "%@ (people) joined the note";
    v41 = "**%@** joined the note";
    v42 = 0xD000000000000025;
    v43 = 0xD000000000000012;
    goto LABEL_5;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

unint64_t sub_1D4358D50()
{
  result = qword_1EDE323D8;
  if (!qword_1EDE323D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE323D8);
  }

  return result;
}

uint64_t sub_1D4358D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = *MEMORY[0x1E69B71D0];
  v44 = a2;
  if (v8 == v9)
  {
    v42 = "%@ were added to the folder";
    v43 = 0xD00000000000001BLL;
    v41 = 0xD00000000000002ELL;
LABEL_5:
    v10 = objc_opt_self();
    v11 = sub_1D4419C14();
    v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

    v13 = sub_1D4419C54();
    v39 = v14;
    v40 = v13;

    v15 = sub_1D4419C14();
    v16 = [v10 localizedFrameworkStringForKey:v15 value:0 table:0 allowSiri:1];

    v38 = sub_1D4419C54();
    v18 = v17;

    v19 = sub_1D4419C14();
    v20 = [v10 localizedFrameworkStringForKey:v19 value:0 table:0 allowSiri:1];

    v21 = sub_1D4419C54();
    v23 = v22;

    v24 = sub_1D4419C14();
    v25 = sub_1D4419C14();
    v26 = [v10 localizedFrameworkStringForKey:v24 value:v25 table:0 allowSiri:1];

    v27 = sub_1D4419C54();
    v29 = v28;

    v30 = sub_1D4419C14();
    v31 = sub_1D4419C14();
    v32 = [v10 localizedFrameworkStringForKey:v30 value:v31 table:0 allowSiri:1];

    v33 = sub_1D4419C54();
    v35 = v34;

    v36 = sub_1D4357A78(v44, v40, v39, v38, v18, v21, v23, 0, 0, v27, v29, v33, v35);

    return v36;
  }

  if (v8 == *MEMORY[0x1E69B71C8])
  {
    v41 = 0xD00000000000002CLL;
    v42 = "%@ were added to the note";
    v43 = 0xD000000000000019;
    goto LABEL_5;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D43591F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = *MEMORY[0x1E69B71D0];
  v46 = a2;
  if (v8 == v9)
  {
    v43 = 0xD000000000000012;
    v44 = "%@ left the folder";
    v45 = "%@ (people) left the folder";
    v41 = "**%@** left the folder";
    v42 = 0xD000000000000025;
LABEL_5:
    v10 = objc_opt_self();
    v11 = sub_1D4419C14();
    v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

    v13 = sub_1D4419C54();
    v39 = v14;
    v40 = v13;

    v15 = sub_1D4419C14();
    v16 = [v10 localizedFrameworkStringForKey:v15 value:0 table:0 allowSiri:1];

    v38 = sub_1D4419C54();
    v18 = v17;

    v19 = sub_1D4419C14();
    v20 = [v10 localizedFrameworkStringForKey:v19 value:0 table:0 allowSiri:1];

    v21 = sub_1D4419C54();
    v23 = v22;

    v24 = sub_1D4419C14();
    v25 = sub_1D4419C14();
    v26 = [v10 localizedFrameworkStringForKey:v24 value:v25 table:0 allowSiri:1];

    v27 = sub_1D4419C54();
    v29 = v28;

    v30 = sub_1D4419C14();
    v31 = sub_1D4419C14();
    v32 = [v10 localizedFrameworkStringForKey:v30 value:v31 table:0 allowSiri:1];

    v33 = sub_1D4419C54();
    v35 = v34;

    v36 = sub_1D4357A78(v46, v40, v39, v38, v18, v21, v23, 0, 0, v27, v29, v33, v35);

    return v36;
  }

  if (v8 == *MEMORY[0x1E69B71C8])
  {
    v44 = "%@ left the note";
    v45 = "%@ (people) left the note";
    v41 = "**%@** left the note";
    v42 = 0xD000000000000023;
    v43 = 0xD000000000000010;
    goto LABEL_5;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4359674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417954();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = *MEMORY[0x1E69B71D0];
  v44 = a2;
  if (v8 == v9)
  {
    v42 = "%@ were removed from the folder";
    v43 = 0xD00000000000001FLL;
    v41 = 0xD000000000000032;
LABEL_5:
    v10 = objc_opt_self();
    v11 = sub_1D4419C14();
    v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:1];

    v13 = sub_1D4419C54();
    v39 = v14;
    v40 = v13;

    v15 = sub_1D4419C14();
    v16 = [v10 localizedFrameworkStringForKey:v15 value:0 table:0 allowSiri:1];

    v38 = sub_1D4419C54();
    v18 = v17;

    v19 = sub_1D4419C14();
    v20 = [v10 localizedFrameworkStringForKey:v19 value:0 table:0 allowSiri:1];

    v21 = sub_1D4419C54();
    v23 = v22;

    v24 = sub_1D4419C14();
    v25 = sub_1D4419C14();
    v26 = [v10 localizedFrameworkStringForKey:v24 value:v25 table:0 allowSiri:1];

    v27 = sub_1D4419C54();
    v29 = v28;

    v30 = sub_1D4419C14();
    v31 = sub_1D4419C14();
    v32 = [v10 localizedFrameworkStringForKey:v30 value:v31 table:0 allowSiri:1];

    v33 = sub_1D4419C54();
    v35 = v34;

    v36 = sub_1D4357A78(v44, v40, v39, v38, v18, v21, v23, 0, 0, v27, v29, v33, v35);

    return v36;
  }

  if (v8 == *MEMORY[0x1E69B71C8])
  {
    v41 = 0xD000000000000030;
    v42 = "%@ were removed from the note";
    v43 = 0xD00000000000001DLL;
    goto LABEL_5;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D4359AD0(uint64_t a1)
{
  v2 = sub_1D4417C64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69B72B8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = v5[1];
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D4320054();
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    v16 = v12;
    v17 = v14;
    v18 = inited;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69B72B0] && v6 != *MEMORY[0x1E69B72C0] && v6 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v20 = objc_opt_self();
    v21 = sub_1D4419C14();
    v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

    v23 = sub_1D4419C54();
    v25 = v24;

    v18 = MEMORY[0x1E69E7CC0];
    v16 = v23;
    v17 = v25;
  }

  return Text.init(format:_:)(v16, v17, v18);
}

uint64_t sub_1D4359DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417C64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69B72B8])
  {
    (*(v5 + 96))(v7, v4);
    v9 = *v7;
    v10 = v7[1];
    v11 = objc_opt_self();
    v12 = sub_1D4419C14();
    v13 = [v11 localizedFrameworkStringForKey:v12 value:0 table:0 allowSiri:0];

    v14 = sub_1D4419C54();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D44364A0;
    *(inited + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1D4320054();
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    v19 = MEMORY[0x1E69E65A8];
    *(inited + 96) = MEMORY[0x1E69E6530];
    *(inited + 104) = v19;
    *(inited + 64) = v18;
    *(inited + 72) = a2;
    v20 = v14;
    v21 = v16;
    v22 = inited;
  }

  else
  {
    if (v8 != *MEMORY[0x1E69B72B0] && v8 != *MEMORY[0x1E69B72C0] && v8 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v24 = objc_opt_self();
    v25 = sub_1D4419C14();
    v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:0];

    v27 = sub_1D4419C54();
    v29 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v22 = swift_initStackObject();
    v30 = MEMORY[0x1E69E6530];
    *(v22 + 16) = xmmword_1D4435D40;
    v31 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = v30;
    *(v22 + 64) = v31;
    *(v22 + 32) = a2;
    v20 = v27;
    v21 = v29;
  }

  return Text.init(format:_:)(v20, v21, v22);
}

uint64_t sub_1D435A198(uint64_t a1)
{
  v2 = sub_1D4417C64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69B72B8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = v5[1];
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D4320054();
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    v16 = v12;
    v17 = v14;
    v18 = inited;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69B72B0] && v6 != *MEMORY[0x1E69B72C0] && v6 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v20 = objc_opt_self();
    v21 = sub_1D4419C14();
    v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

    v23 = sub_1D4419C54();
    v25 = v24;

    v18 = MEMORY[0x1E69E7CC0];
    v16 = v23;
    v17 = v25;
  }

  return Text.init(format:_:)(v16, v17, v18);
}

uint64_t sub_1D435A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4417C64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x1E69B72B8])
  {
    (*(v7 + 96))(v9, v6);
    v11 = *v9;
    v12 = v9[1];
    v13 = objc_opt_self();
    v14 = sub_1D4419C14();
    v15 = [v13 localizedFrameworkStringForKey:v14 value:0 table:0 allowSiri:1];

    v16 = sub_1D4419C54();
    v18 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D44364A0;
    v20 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1D4320054();
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    *(inited + 96) = v20;
    *(inited + 104) = v21;
    *(inited + 64) = v21;
    *(inited + 72) = a2;
    *(inited + 80) = a3;
  }

  else
  {
    if (v10 != *MEMORY[0x1E69B72B0] && v10 != *MEMORY[0x1E69B72C0] && v10 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v23 = objc_opt_self();
    v24 = sub_1D4419C14();
    v25 = [v23 localizedFrameworkStringForKey:v24 value:0 table:0 allowSiri:1];

    v16 = sub_1D4419C54();
    v18 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D4320054();
    *(inited + 32) = a2;
    *(inited + 40) = a3;
  }

  return Text.init(format:_:)(v16, v18, inited);
}

uint64_t sub_1D435A85C(uint64_t a1)
{
  v2 = sub_1D4417C64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69B72B8])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = v5[1];
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D4320054();
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    v16 = v12;
    v17 = v14;
    v18 = inited;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69B72B0] && v6 != *MEMORY[0x1E69B72C0] && v6 != *MEMORY[0x1E69B72A8])
    {
      result = sub_1D441AD74();
      __break(1u);
      return result;
    }

    v20 = objc_opt_self();
    v21 = sub_1D4419C14();
    v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

    v23 = sub_1D4419C54();
    v25 = v24;

    v18 = MEMORY[0x1E69E7CC0];
    v16 = v23;
    v17 = v25;
  }

  return Text.init(format:_:)(v16, v17, v18);
}

uint64_t sub_1D435AB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = sub_1D4417C64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-v12];
  v14 = *(v8 + 104);
  v23 = *MEMORY[0x1E69B72A8];
  v14(&v22[-v12]);
  v15 = sub_1D43505E4(v13, a2, MEMORY[0x1E69B72C8], &qword_1EC7CAFD0, MEMORY[0x1E69B72C8]);
  (*(v8 + 8))(v13, v7);
  if (v15)
  {
    return sub_1D435A85C(a1);
  }

  v17 = *(a2 + 16);
  if (v17 >= 2)
  {
    v18 = a1;
    return sub_1D4359DE8(v18, v17);
  }

  sub_1D4419E64();
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    (v14)(v11, *MEMORY[0x1E69B72C0], v7);
    if (v19(v6, 1, v7) != 1)
    {
      sub_1D435AEF0(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  v20 = (*(v8 + 88))(v11, v7);
  if (v20 == *MEMORY[0x1E69B72B8])
  {
    (*(v8 + 96))(v11, v7);
    v21 = sub_1D435A4AC(a1, *v11, v11[1]);

    return v21;
  }

  else if (v20 == *MEMORY[0x1E69B72B0])
  {
    return sub_1D435A198(a1);
  }

  else
  {
    if (v20 == *MEMORY[0x1E69B72C0])
    {
      v18 = a1;
      v17 = 1;
      return sub_1D4359DE8(v18, v17);
    }

    if (v20 == v23)
    {
      return sub_1D435A85C(a1);
    }

    result = sub_1D441AD74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D435AEF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D435AF58(unint64_t *a1, void (*a2)(uint64_t))
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

NotesUI::NotePreviewProviderErrors_optional __swiftcall NotePreviewProviderErrors.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D435AFFC()
{
  result = qword_1EC7CAFE8;
  if (!qword_1EC7CAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAFE8);
  }

  return result;
}

void *sub_1D435B050@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D435B07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D435B180();
  v5 = sub_1D42CBEA4();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for ActivityStream.Item.Styles(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1D435B180()
{
  result = qword_1EC7CAFF0;
  if (!qword_1EC7CAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAFF0);
  }

  return result;
}

uint64_t View.ic_frame(size:)()
{
  sub_1D4419364();

  return sub_1D44190E4();
}

uint64_t sub_1D435B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_1D44185F4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v41 = &WitnessTable - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB088);
  sub_1D4418614();
  v35 = *(a1 + 24);
  v9 = v35;
  v45 = sub_1D435C12C();
  v64 = v9;
  v65 = v45;
  v47 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D44185A4();
  v38 = sub_1D4418614();
  v39 = sub_1D4418614();
  v11 = sub_1D4418614();
  v42 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v37 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &WitnessTable - v14;
  (*(v7 + 16))(&WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 16) = v36;
  *(v16 + 24) = v17;
  (*(v7 + 32))(v16 + v15, &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *&v66[0] = sub_1D4418594();
  *(&v66[0] + 1) = v18;
  v19 = (v2 + *(a1 + 36));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = swift_getWitnessTable();
  View.ic_frame(_:)(v20, v21, v22, v23, v10, v24);

  v56 = v61;
  v57 = v62;
  v58 = v63;
  v54 = v59;
  v55 = v60;
  swift_getKeyPath();
  v26 = v43;
  v25 = v44;
  v27 = v41;
  (*(v43 + 104))(v41, *MEMORY[0x1E697E7D0], v44);
  v52 = v24;
  v53 = MEMORY[0x1E697E040];
  v50 = swift_getWitnessTable();
  v51 = MEMORY[0x1E697E8E8];
  v28 = v39;
  v29 = swift_getWitnessTable();
  v30 = v37;
  sub_1D4418FE4();

  (*(v26 + 8))(v27, v25);
  v66[2] = v56;
  v66[3] = v57;
  v66[4] = v58;
  v66[0] = v54;
  v66[1] = v55;
  (*(*(v28 - 8) + 8))(v66, v28);
  v48 = v29;
  v49 = v45;
  swift_getWitnessTable();
  v31 = v40;
  sub_1D43EE934(v30);
  v32 = *(v42 + 8);
  v32(v30, v11);
  sub_1D43EE934(v31);
  return (v32)(v31, v11);
}

uint64_t sub_1D435B77C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = sub_1D44185F4();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB088);
  v13 = sub_1D4418614();
  v25 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = type metadata accessor for AbsoluteView();
  (*(a1 + *(v19 + 40)))();
  swift_getKeyPath();
  sub_1D435C254(&qword_1EC7CB098, MEMORY[0x1E697E7E0], v10);
  sub_1D4418FE4();

  (*(v26 + 8))(v10, v27);
  (*(v24 + 8))(v12, a2);
  v20 = sub_1D435C12C();
  v29 = a3;
  v30 = v20;
  swift_getWitnessTable();
  sub_1D43EE934(v16);
  v21 = *(v25 + 8);
  v21(v16, v13);
  sub_1D43EE934(v18);
  return (v21)(v18, v13);
}

uint64_t sub_1D435BAA8(uint64_t a1)
{
  v2 = sub_1D44185F4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D4418764();
}

uint64_t View.ic_frame(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D4418614();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  sub_1D4419364();
  sub_1D44190E4();
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetWidth(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetHeight(v18);
  v16[0] = a6;
  v16[1] = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1D4419124();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D435BD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB098);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AbsoluteView();
  v15 = (a3 + *(result + 36));
  *v15 = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v16 = (a3 + *(result + 40));
  *v16 = a1;
  v16[1] = a2;
  return result;
}

uint64_t View.ic_frame(absolute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v17, a1);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v14 + 32))(v19 + v18, v16, a1);
  return sub_1D435BD38(sub_1D435BF6C, v19, a3, a4, a5, a6, a7);
}

void sub_1D435BFCC()
{
  sub_1D435C090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1D4309684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D435C090()
{
  if (!qword_1EC7CB080)
  {
    sub_1D44185F4();
    v0 = sub_1D44184F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CB080);
    }
  }
}

unint64_t sub_1D435C12C()
{
  result = qword_1EC7CB090;
  if (!qword_1EC7CB090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB090);
  }

  return result;
}

uint64_t sub_1D435C190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AbsoluteView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1D435B77C(v6, v3, v4, a1);
}

uint64_t sub_1D435C254@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1D44188B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1D417CF94(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1D441A174();
    v17 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1D435C460(uint64_t a1)
{
  v2 = sub_1D435C51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D435C49C(uint64_t a1)
{
  v2 = sub_1D435C51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D435C51C()
{
  result = qword_1EC7CB0A8;
  if (!qword_1EC7CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0A8);
  }

  return result;
}

uint64_t sub_1D435C5BC(uint64_t a1)
{
  v2 = sub_1D435C798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D435C5F8(uint64_t a1)
{
  v2 = sub_1D435C798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D435C678(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D441AF94();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D435C798()
{
  result = qword_1EC7CB0B8;
  if (!qword_1EC7CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0B8);
  }

  return result;
}

uint64_t sub_1D435C894(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1D441AF94();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D435CA24()
{
  result = qword_1EC7CB0C0;
  if (!qword_1EC7CB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0C0);
  }

  return result;
}

unint64_t sub_1D435CA7C()
{
  result = qword_1EC7CB0C8;
  if (!qword_1EC7CB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0C8);
  }

  return result;
}

unint64_t sub_1D435CAD4()
{
  result = qword_1EC7CB0D0;
  if (!qword_1EC7CB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0D0);
  }

  return result;
}

unint64_t sub_1D435CB2C()
{
  result = qword_1EC7CB0D8;
  if (!qword_1EC7CB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0D8);
  }

  return result;
}

unint64_t sub_1D435CB84()
{
  result = qword_1EC7CB0E0;
  if (!qword_1EC7CB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0E0);
  }

  return result;
}

unint64_t sub_1D435CBDC()
{
  result = qword_1EC7CB0E8;
  if (!qword_1EC7CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0E8);
  }

  return result;
}

unint64_t sub_1D435CC74()
{
  result = qword_1EC7CB0F0;
  if (!qword_1EC7CB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0F0);
  }

  return result;
}

unint64_t sub_1D435CCCC()
{
  result = qword_1EC7CB0F8;
  if (!qword_1EC7CB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB0F8);
  }

  return result;
}

unint64_t sub_1D435CD24()
{
  result = qword_1EC7CB100;
  if (!qword_1EC7CB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB100);
  }

  return result;
}

unint64_t sub_1D435CD7C()
{
  result = qword_1EC7CB108;
  if (!qword_1EC7CB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB108);
  }

  return result;
}

id AudioRecordingLiveActivityBannerViewController.__allocating_init(recordingManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1D435EEBC(a1, v2, ObjectType, a2);
}

uint64_t sub_1D435CE60()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB110);
  __swift_project_value_buffer(v0, qword_1EC7CB110);
  return sub_1D4418134();
}

id sub_1D435CEAC()
{
  v1 = OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView;
  v2 = *(v0 + OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView);
  }

  else
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    v5 = [objc_allocWithZone(ICPlatterLeadingWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
    [v5 setStyle_];
    swift_unknownObjectRelease();
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D435CF9C()
{
  v1[2] = v0;
  v2 = sub_1D441AAF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1D4419404();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1D44193E4();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_1D4419F54();
  v1[14] = sub_1D4419F44();
  v1[15] = sub_1D4419F44();
  v6 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D435D164, v6, v5);
}

uint64_t sub_1D435D164()
{

  v2 = sub_1D4419F04();
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D435D1E8, v2, v1);
}

uint64_t sub_1D435D1E8()
{
  v1 = sub_1D4362670();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D43601B8();
    v4 = [v3 imageView];

    if (v4)
    {
      v6 = v0[11];
      v5 = v0[12];
      v7 = v0[9];
      v8 = v0[10];
      v10 = v0[7];
      v9 = v0[8];
      v15 = v0[6];
      sub_1D44193D4();
      sub_1D44193C4();
      v11 = *(v8 + 8);
      v11(v5, v7);
      sub_1D44193F4();
      sub_1D435F52C();
      sub_1D441A124();

      (*(v10 + 8))(v9, v15);
      v11(v6, v7);
    }

    else
    {
    }
  }

  v12 = sub_1D43601B8();
  [v12 setUserInteractionEnabled_];

  sub_1D441AE14();
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1D435D3D8;

  return sub_1D43679A0(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D435D3D8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1D435F58C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1D435D56C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D435D56C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D435D600()
{
  v1 = v0;
  v2 = sub_1D44178A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  sub_1D435FDAC();
  v9 = [objc_opt_self() sharedStyleProvider];
  v10 = *&v0[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  (*(v10 + 16))(ObjectType, v10);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B7168], v2);
  LOBYTE(v10) = sub_1D4417894();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  v13 = sub_1D4360198();
  if (v10)
  {
    v14 = [v9 platterStatusMessageStateTimeLabelColor];
    [v13 setTextColor_];

    v15 = sub_1D435CEAC();
    v16 = [v9 platterWaveformStatusMessageSliceColor];
    [v15 setSliceColor_];
  }

  else
  {
    v17 = [v9 platterDefaultTimeLabelColor];
    [v13 setTextColor_];

    v18 = sub_1D435CEAC();
    v19 = [v9 platterWaveformActiveSliceColor];
    [v18 setSliceColor_];

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D435F524;
    *(v22 + 24) = v21;
    aBlock[4] = sub_1D418D6D8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D418D6C8;
    aBlock[3] = &block_descriptor_22;
    v23 = _Block_copy(aBlock);
    v24 = v1;

    [v20 performWithoutAnimation_];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1D435D9DC(uint64_t a1)
{
  v2 = sub_1D435CEAC();
  v3 = *(a1 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  (*(*(v3 + 8) + 24))(ObjectType);
  [v2 updateSliceFramesForRecordingTime_];
}

id AudioRecordingLiveActivityBannerViewController.init(recordingManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1D435EF14(a1, v2, ObjectType, a2);
}

uint64_t sub_1D435DB58()
{
}

id AudioRecordingLiveActivityBannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AudioRecordingLiveActivityBannerViewController.viewDidLoad()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setHitTestsAsOpaque_];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleTap_];
      [v5 addGestureRecognizer_];

      sub_1D435DE54();
      v7 = sub_1D43601B8();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12[4] = sub_1D435EFB4;
      v12[5] = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1D4315880;
      v12[3] = &block_descriptor_11;
      v9 = _Block_copy(v12);

      [v7 setConfigurationUpdateHandler_];
      _Block_release(v9);

      v10 = sub_1D4360198();
      v11 = [objc_opt_self() monospacedDigitSystemFontOfSize:20.0 weight:*MEMORY[0x1E69DB970]];
      [v10 setFont_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D435DE54()
{
  v1 = v0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4438D80;
  *(inited + 32) = sub_1D4360198();
  *(inited + 40) = sub_1D435CEAC();
  *(inited + 48) = sub_1D43601B8();
  v3 = OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView;
  v4 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1DA6D6410](0, inited))
  {
    v6 = i;
    v7 = [v1 view];
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = v7;
    [v7 addSubview_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *&v1[v3];
    sub_1D41766C0(0, &qword_1EDE32428);
    v10 = v9;
    LOBYTE(v8) = sub_1D441A5E4();

    if ((v8 & 1) == 0)
    {
      LODWORD(v11) = 1148846080;
      [v6 setContentCompressionResistancePriority:0 forAxis:v11];
    }

    if (v4)
    {
      v12 = MEMORY[0x1DA6D6410](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_24;
      }

      v12 = *(inited + 40);
    }

    v13 = v12;
    v14 = [v1 view];
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = v14;
    [v14 addSubview_];

    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = *&v1[v3];
    sub_1D41766C0(0, &qword_1EDE32428);
    v17 = v16;
    LOBYTE(v15) = sub_1D441A5E4();

    if ((v15 & 1) == 0)
    {
      LODWORD(v18) = 1148846080;
      [v13 setContentCompressionResistancePriority:0 forAxis:v18];
    }

    if (v4)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v19 = *(inited + 48);
      goto LABEL_16;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v19 = MEMORY[0x1DA6D6410](2, inited);
LABEL_16:
  v20 = v19;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = v21;
  [v21 addSubview_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *&v1[v3];
  sub_1D41766C0(0, &qword_1EDE32428);
  v24 = v23;
  LOBYTE(v22) = sub_1D441A5E4();

  if ((v22 & 1) == 0)
  {
    LODWORD(v25) = 1148846080;
    [v20 setContentCompressionResistancePriority:0 forAxis:v25];
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = [objc_opt_self() sharedStyleProvider];
  [v26 platterCustomLeadingViewHeightMultiplier];
  v28 = v27;

  v29 = [v1 view];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = [v29 layoutMarginsGuide];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D4439720;
  v33 = [*&v1[v3] leadingAnchor];
  v34 = [v31 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:8.0];

  *(v32 + 32) = v35;
  v36 = [*&v1[v3] heightAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v38 = v37;
  v39 = [v37 heightAnchor];

  v40 = [v36 constraintEqualToAnchor:v39 multiplier:v28];
  *(v32 + 40) = v40;
  v41 = [*&v1[v3] centerYAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v42;
  v44 = [v42 centerYAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v32 + 48) = v45;
  v46 = OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel;
  v47 = [*&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] topAnchor];
  v48 = [v31 &selRef_undoHelper];
  v49 = [v47 constraintEqualToAnchor:v48 constant:8.0];

  *(v32 + 56) = v49;
  v50 = [*&v1[v46] leadingAnchor];
  v51 = [*&v1[v3] trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:8.0];

  *(v32 + 64) = v52;
  v53 = [*&v1[v46] bottomAnchor];
  v54 = [v31 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-8.0];

  *(v32 + 72) = v55;
  v56 = OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
  v57 = [*&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] &selRef_isSystemPaperUI + 1];
  v58 = [*&v1[v46] trailingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:8.0];

  *(v32 + 80) = v59;
  v60 = [*&v1[v56] trailingAnchor];
  v61 = [v31 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v32 + 88) = v62;
  v63 = [*&v1[v56] topAnchor];
  v64 = [v31 topAnchor];
  v65 = [v63 constraintGreaterThanOrEqualToAnchor:v64 constant:8.0];

  *(v32 + 96) = v65;
  v66 = [*&v1[v56] centerYAnchor];
  v67 = [v1 view];
  if (v67)
  {
    v68 = v67;
    v69 = objc_opt_self();
    v70 = [v68 centerYAnchor];

    v71 = [v66 constraintEqualToAnchor_];
    *(v32 + 104) = v71;
    sub_1D41766C0(0, &qword_1EDE32740);
    v72 = sub_1D4419E24();

    [v69 activateConstraints_];

    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1D435E718(int a1, NSObject *a2)
{
  if (!a2)
  {
    if (qword_1EC7C91D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D44181B4();
    __swift_project_value_buffer(v11, qword_1EC7CB110);
    oslog = sub_1D44181A4();
    v12 = sub_1D441A154();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D4171000, oslog, v12, "Opened Notes from lock screen banner", v13, 2u);
      MEMORY[0x1DA6D8690](v13, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a2;
  if (qword_1EC7C91D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D44181B4();
  __swift_project_value_buffer(v4, qword_1EC7CB110);
  v5 = a2;
  oslog = sub_1D44181A4();
  v6 = sub_1D441A164();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4171000, oslog, v6, "Error opening Notes banner URL {error: %@}", v7, 0xCu);
    sub_1D41769C4(v8, &qword_1EC7C9918);
    MEMORY[0x1DA6D8690](v8, -1, -1);
    MEMORY[0x1DA6D8690](v7, -1, -1);

LABEL_10:
    v14 = oslog;

    goto LABEL_12;
  }

  v14 = a2;

LABEL_12:
}

uint64_t sub_1D435E96C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D4419B64();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1D435EA70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB3E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = sub_1D43601B8();
  sub_1D441A6B4();

  v12 = sub_1D441A694();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v10, 1, v12))
  {
    v14 = v10;
LABEL_3:
    sub_1D41769C4(v14, &unk_1EC7CB3E0);
    return;
  }

  v15 = sub_1D441A664();
  sub_1D41769C4(v10, &unk_1EC7CB3E0);
  if (v15)
  {
    v16 = [v15 symbolConfiguration];
    if (!v16)
    {

      return;
    }

    v17 = v16;
    sub_1D41766C0(0, &qword_1EDE32418);
    v18 = v17;
    v19 = sub_1D4419E24();
    v20 = [objc_opt_self() configurationWithPaletteColors_];

    v21 = [v18 configurationByApplyingConfiguration_];
    v22 = *(v1 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton);
    sub_1D441A6B4();
    if (!v13(v8, 1, v12))
    {
      v23 = [v15 imageByApplyingSymbolConfiguration_];
      sub_1D441A674();
      sub_1D441A6C4();

      return;
    }

    sub_1D417CF94(v8, v5, &unk_1EC7CB3E0);
    sub_1D441A6C4();

    v14 = v8;
    goto LABEL_3;
  }
}

void sub_1D435ED5C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() sharedStyleProvider];
    v5 = [a1 traitCollection];
    v6 = [v5 _backlightLuminance];

    if (v6 == 2)
    {
      if (qword_1EC7C91E0 != -1)
      {
        swift_once();
      }

      sub_1D435EA70();
    }

    else if (v6 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D4438490;
      *(v7 + 32) = [v4 platterWaveformInactiveSliceColor];
      sub_1D435EA70();
    }
  }
}

id sub_1D435EEBC(uint64_t a1, Class a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(a2);

  return sub_1D435EF14(a1, v7, a3, a4);
}

id sub_1D435EF14(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView] = 0;
  v4 = &a2[OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v5 = &a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v5 = a1;
  *(v5 + 1) = a4;
  v7.receiver = a2;
  v7.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D435EFE0(void *a1)
{
  v2 = sub_1D4417234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4416EF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  result = [a1 state];
  if (result == 3)
  {
    v34 = v5;
    sub_1D4416EE4();
    v17 = ICNotesAppURLScheme();
    sub_1D4419C54();

    sub_1D4416EC4();
    sub_1D4416EA4();
    (*(v7 + 8))(v9, v6);
    sub_1D417CF94(v15, v13, &qword_1EC7C9908);
    if ((*(v3 + 48))(v13, 1, v2) == 1)
    {
      sub_1D41769C4(v13, &qword_1EC7C9908);
      if (qword_1EC7C91D0 != -1)
      {
        swift_once();
      }

      v18 = sub_1D44181B4();
      __swift_project_value_buffer(v18, qword_1EC7CB110);
      v19 = sub_1D44181A4();
      v20 = sub_1D441A164();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D4171000, v19, v20, "could not generate notes URL for live activity", v21, 2u);
        MEMORY[0x1DA6D8690](v21, -1, -1);
      }
    }

    else
    {
      v22 = v34;
      (*(v3 + 32))(v34, v13, v2);
      v23 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
      [v23 setSensitive_];
      v24 = sub_1D4419C54();
      v26 = v25;
      v37 = MEMORY[0x1E69E6370];
      LOBYTE(aBlock) = 1;
      sub_1D417CF84(&aBlock, v41);
      v27 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v27;
      sub_1D432DECC(v41, v24, v26, isUniquelyReferenced_nonNull_native);

      v29 = sub_1D4419B54();
      [v23 setFrontBoardOptions_];

      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = result;

      v31 = sub_1D44171C4();
      v38 = sub_1D435E718;
      v39 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v36 = sub_1D435E96C;
      v37 = &block_descriptor_13;
      v32 = _Block_copy(&aBlock);
      v33 = v23;
      [v30 openURL:v31 configuration:v33 completionHandler:v32];
      _Block_release(v32);

      (*(v3 + 8))(v22, v2);
    }

    return sub_1D41769C4(v15, &qword_1EC7C9908);
  }

  return result;
}

unint64_t sub_1D435F52C()
{
  result = qword_1EC7CB138;
  if (!qword_1EC7CB138)
  {
    sub_1D44193E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB138);
  }

  return result;
}

void AudioRecordingManager.amplitudeForSlice(with:fullTimeRangeSampled:)(_BYTE *a1, double a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_waveformProcessor);
  [v7 recordingStartTime];
  v9 = v8;
  [v7 punchInTime];
  v12 = 0.0;
  *a1 = [v7 getAmplitudes:&v12 count:1 startTime:v9 + a2 - v10 + -0.1 endTime:v9 + a3 - v10 + -0.1];
  if (v12 != 0.0)
  {
    [v7 runningAverage];
    powf(1.0 - v11, 3.0);
  }
}

uint64_t sub_1D435F724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D4362958(a3, v25 - v10);
  v12 = sub_1D4419F94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D43629C8(v11);
  }

  else
  {
    sub_1D4419F84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D4419F04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D4419CA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B40);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1D43629C8(a3);

      return v22;
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

  sub_1D43629C8(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B40);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D435F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D4362958(a3, v25 - v10);
  v12 = sub_1D4419F94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D43629C8(v11);
  }

  else
  {
    sub_1D4419F84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D4419F04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D4419CA4() + 32;
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

      sub_1D43629C8(a3);

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

  sub_1D43629C8(a3);
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

uint64_t sub_1D435FCB8()
{
  sub_1D4419F54();
  *(v0 + 16) = sub_1D4419F44();
  v2 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D435FD4C, v2, v1);
}

uint64_t sub_1D435FD4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D435FDAC()
{
  v1 = v0;
  v2 = sub_1D44178A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager);
  v10 = *(v0 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 16))(ObjectType, v10);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B7168], v2);
  sub_1D4362764();
  v12 = sub_1D4419BE4();
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  if ((v12 & 1) == 0)
  {
    v14 = sub_1D4360198();
    v29 = v9;
    v15 = *(v10 + 8);
    v16 = *(v15 + 24);
    v16(ObjectType, v15);
    if (qword_1EC7C91E8 != -1)
    {
      v28 = v17;
      swift_once();
      v17 = v28;
    }

    v18 = &selRef_setReservedForCollaborationColorManager_;
    v19 = [qword_1EC7CB140 stringFromTimeInterval_];
    if (v19)
    {
      v20 = v19;
      sub_1D4419C54();

      v18 = &selRef_setReservedForCollaborationColorManager_;
      v21 = sub_1D4419C14();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText_];

    v22 = *(v1 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel);
    v29 = v9;
    v23 = v22;
    v16(ObjectType, v15);
    if (qword_1EC7C91F0 != -1)
    {
      v28 = v24;
      swift_once();
      v24 = v28;
    }

    v25 = [qword_1EC7CB148 v18[511]];
    if (v25)
    {
      v26 = v25;
      sub_1D4419C54();

      v27 = sub_1D4419C14();
    }

    else
    {
      v27 = 0;
    }

    [v23 setAccessibilityValue_];
  }
}

id AudioRecordingLiveActivityViewController.init(recordingManager:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v3 = &v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D43601D8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1D4360384(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1D4360410(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1D43604A4()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.894117647 green:0.68627451 blue:0.0392156863 alpha:1.0];
  qword_1EC7D13B0 = result;
  return result;
}

id sub_1D43604F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D44397A0;
  if (qword_1EC7C91D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7D13B0;
  *(v0 + 32) = qword_1EC7D13B0;
  v2 = objc_opt_self();
  v3 = v1;
  result = [v2 systemGrayColor];
  *(v0 + 40) = result;
  qword_1EC7D13B8 = v0;
  return result;
}

id AudioRecordingLiveActivityViewController.__allocating_init(recordingManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&v5[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&v5[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v6 = &v5[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1D43607F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D4419F54();
  *(v4 + 24) = sub_1D4419F44();
  v6 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4360890, v6, v5);
}

id sub_1D4360890()
{
  result = [*(v0 + 16) view];
  if (result)
  {
    v2 = result;

    [v2 setNeedsLayout];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D43609C0(uint64_t a1)
{
  type metadata accessor for LabelAccessoryView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = qword_1EC7C91D8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setTextColor_];
  v5 = *(a1 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = *(v7 + 24);
  v8(ObjectType, v7);
  if (qword_1EC7C91E8 != -1)
  {
    v20 = v9;
    swift_once();
    v9 = v20;
  }

  v10 = [qword_1EC7CB140 stringFromTimeInterval_];
  if (v10)
  {
    v11 = v10;
    sub_1D4419C54();

    v12 = sub_1D4419C14();
  }

  else
  {
    v12 = 0;
  }

  [v4 setText_];

  v13 = v4;
  v8(ObjectType, v7);
  if (qword_1EC7C91F0 != -1)
  {
    v21 = v14;
    swift_once();
    v14 = v21;
  }

  v15 = [qword_1EC7CB148 stringFromTimeInterval_];
  if (v15)
  {
    v16 = v15;
    sub_1D4419C54();

    v17 = sub_1D4419C14();
  }

  else
  {
    v17 = 0;
  }

  [v13 setAccessibilityValue_];

  v18 = [objc_opt_self() sbui:5 systemAperturePreferredFontForTextStyle:?];
  [v13 setFont_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  return v13;
}

id sub_1D4360C90(uint64_t a1)
{
  v36 = a1;
  v1 = sub_1D44174B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D4419C04();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D441A644();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D441A694();
  v8 = *(v37 - 8);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  sub_1D441A684();
  if (qword_1EC7C91E0 != -1)
  {
    swift_once();
  }

  sub_1D41766C0(0, &qword_1EDE32418);
  v14 = sub_1D4419E24();
  v15 = objc_opt_self();
  v16 = [v15 configurationWithPaletteColors_];

  v17 = [v15 configurationWithPointSize:5 weight:0 scale:40.0];
  v18 = v16;
  v19 = sub_1D4419C14();
  v20 = [objc_opt_self() systemImageNamed:v19 withConfiguration:v18];

  sub_1D441A674();
  v34 = v17;
  sub_1D441A624();
  v21 = [objc_opt_self() clearColor];
  v22 = sub_1D441A634();
  sub_1D44181D4();
  v22(v40, 0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v35);
  sub_1D441A654();
  sub_1D41766C0(0, &qword_1EDE323D0);
  *(swift_allocObject() + 24) = *(v36 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  swift_unknownObjectWeakInit();
  v23 = sub_1D441A614();
  type metadata accessor for ButtonAccessoryView();
  v24 = v37;
  (*(v8 + 16))(v11, v13, v37);
  v25 = v23;
  v26 = sub_1D441A6A4();
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v26 imageView];
  v28 = v24;
  if (v27)
  {
    v29 = v27;
    [v27 setContentMode_];
  }

  v30 = v26;
  sub_1D4419BF4();
  sub_1D44174A4();
  sub_1D4419C64();
  v31 = sub_1D4419C14();

  [v30 setAccessibilityLabel_];

  (*(v8 + 8))(v13, v28);
  return v30;
}

uint64_t sub_1D4361214(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1D4419F94();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D4419F54();

  v7 = sub_1D4419F44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1D42F0870(0, 0, v5, &unk_1D44398B8, v8);
}

uint64_t sub_1D4361338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D4419F54();
  v4[7] = sub_1D4419F44();
  v6 = sub_1D4419F04();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D43613D0, v6, v5);
}

uint64_t sub_1D43613D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 48) + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v2 + 48) + **(v2 + 48));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1D4361574;

    return v7(0, ObjectType, v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D4361574()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D4361708;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D4361690;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D4361690()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4361708()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

id AudioRecordingLiveActivityViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D4419C14();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1D4361868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D436190C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D44178A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  (*(v9 + 16))(ObjectType, v9);
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x1E69B7168])
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask;
  v12 = *&a1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask];
  if (!v12)
  {
    v13 = sub_1D4419F94();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_1D4419F54();
    v14 = a1;
    v15 = sub_1D4419F44();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v12 = sub_1D435F9F8(0, 0, v4, &unk_1D44398A0, v16);
  }

  *&a1[v11] = v12;
}

uint64_t sub_1D4361B68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = sub_1D4419F54();
  v4[3] = sub_1D4419F44();
  v4[4] = sub_1D4419F44();
  v6 = *((*MEMORY[0x1E69E7D40] & *a4) + 0xA8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1D4361CB8;

  return v9();
}

uint64_t sub_1D4361CB8()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v4;
  v2[1] = sub_1D4361DF4;

  return sub_1D4363680();
}

uint64_t sub_1D4361DF4()
{

  v1 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4361F30, v1, v0);
}

uint64_t sub_1D4361F30()
{

  v1 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4361FB4, v1, v0);
}

uint64_t sub_1D4361FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D43620B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D4419F94();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1D4419F54();
    v10 = v8;
    v11 = sub_1D4419F44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_1D435F9F8(0, 0, v6, a3, v12);
  }
}

uint64_t sub_1D4362208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D4419F54();
  *(v4 + 24) = sub_1D4419F44();
  v6 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D43622A0, v6, v5);
}

uint64_t sub_1D43622A0()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_1D4417DB4();

  v2 = *(v0 + 8);

  return v2();
}

id sub_1D4362378()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setZeroFormattingBehavior_];
  [v0 setAllowedUnits_];
  result = [v0 setUnitsStyle_];
  qword_1EC7CB140 = v0;
  return result;
}

id sub_1D43623F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setUnitsStyle_];
  qword_1EC7CB148 = v0;
  return result;
}

uint64_t sub_1D4362468(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D436255C;

  return v5(v2 + 32);
}

uint64_t sub_1D436255C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1D4362670()
{
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 platterStatusMessageStateTimeLabelColor];
  v2 = sub_1D4419C14();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithTintColor:v1 renderingMode:1];
  }

  else
  {

    return 0;
  }

  return v4;
}

unint64_t sub_1D4362764()
{
  result = qword_1EC7CB170;
  if (!qword_1EC7CB170)
  {
    sub_1D44178A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB170);
  }

  return result;
}

void (*sub_1D4362810())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D436286C;
}

uint64_t sub_1D43628A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D4177CAC;

  return sub_1D43607F8(a1, v4, v5, v6);
}

uint64_t sub_1D4362958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43629C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4362A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D4177CAC;

  return sub_1D4362208(a1, v4, v5, v6);
}

void (*sub_1D4362B1C())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D4362A30;
}

uint64_t sub_1D4362B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D41775C8;

  return sub_1D4361B68(a1, v4, v5, v6);
}

uint64_t sub_1D4362C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D41775C8;

  return sub_1D4361338(a1, v4, v5, v6);
}

uint64_t sub_1D4362CE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return sub_1D4362468(a1, v4);
}

uint64_t static AudioRecordingLiveActivityManager.stopLiveActivity()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D41775C8;

  return sub_1D4363680();
}

uint64_t sub_1D4362E50()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB178);
  __swift_project_value_buffer(v0, qword_1EC7CB178);
  return sub_1D4418134();
}

uint64_t sub_1D4362E9C()
{
  v1 = sub_1D44176A4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v0[5] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB1A0);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  sub_1D4419F54();
  v0[9] = sub_1D4419F44();
  v4 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D436302C, v4, v3);
}

uint64_t sub_1D436302C()
{
  v39 = v0;

  sub_1D4417644();
  swift_allocObject();
  sub_1D4417634();
  v1 = sub_1D4417624();

  if (v1)
  {
    if (qword_1EC7C91F8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D44181B4();
    __swift_project_value_buffer(v2, qword_1EC7CB178);
    v3 = sub_1D44181A4();
    v4 = sub_1D441A154();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v38[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1D42E9410(0xD000000000000020, 0x80000001D4450FD0, v38);
      _os_log_impl(&dword_1D4171000, v3, v4, "%s Requesting begin activity", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1DA6D8690](v6, -1, -1);
      MEMORY[0x1DA6D8690](v5, -1, -1);
    }

    v7 = v0[5];
    v8 = sub_1D4417434();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1D435CAD4();
    sub_1D435CB2C();
    sub_1D435CB84();
    sub_1D44176B4();
    LODWORD(v7) = SBUIIsSystemApertureEnabled();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB1A8);
    v9 = sub_1D4417674();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D44364A0;
    v14 = *(v10 + 104);
    v15 = MEMORY[0x1E6959C08];
    v16 = v13 + v12;
    if (!v7)
    {
      v15 = MEMORY[0x1E6959C10];
    }

    v14(v16, *v15, v9);
    v14(v16 + v11, *MEMORY[0x1E6959C00], v9);
    sub_1D4417684();
    sub_1D4417694();
    v17 = ICNotesAppBundleIdentifier();
    sub_1D4419C54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB198);
    sub_1D4417614();

    v24 = sub_1D44181A4();
    v25 = sub_1D441A154();
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D42E9410(0xD000000000000020, 0x80000001D4450FD0, v38);
      _os_log_impl(&dword_1D4171000, v24, v25, "%s Requested an activity successfully", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1DA6D8690](v28, -1, -1);
      MEMORY[0x1DA6D8690](v27, -1, -1);
    }

    v30 = v0[7];
    v29 = v0[8];
    v31 = v0[6];
    v33 = v0[3];
    v32 = v0[4];
    v34 = v0[2];
    v22 = sub_1D4417604();
    v23 = v35;

    (*(v33 + 8))(v32, v34);
    (*(v30 + 8))(v29, v31);
  }

  else
  {
    if (qword_1EC7C91F8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D44181B4();
    __swift_project_value_buffer(v18, qword_1EC7CB178);
    v19 = sub_1D44181A4();
    v20 = sub_1D441A184();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D4171000, v19, v20, "Live activities aren't enabeld.", v21, 2u);
      MEMORY[0x1DA6D8690](v21, -1, -1);
    }

    v22 = 0;
    v23 = 0;
  }

  v36 = v0[1];

  return v36(v22, v23);
}

uint64_t sub_1D4363680()
{
  v1 = sub_1D4417664();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB190);
  v0[5] = swift_task_alloc();
  sub_1D4419F54();
  v0[6] = sub_1D4419F44();
  v3 = sub_1D4419F04();
  v0[7] = v3;
  v0[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D43637A8, v3, v2);
}

uint64_t sub_1D43637A8()
{
  if (qword_1EC7C91F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D44181B4();
  __swift_project_value_buffer(v1, qword_1EC7CB178);
  v2 = sub_1D44181A4();
  v3 = sub_1D441A154();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D4171000, v2, v3, "Stopping live activity", v4, 2u);
    MEMORY[0x1DA6D8690](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB198);
  v5 = sub_1D44175F4();
  v6 = v5;
  if (v5 >> 62)
  {
    result = sub_1D441A8C4();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_14:

    v14 = sub_1D44181A4();
    v15 = sub_1D441A164();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D4171000, v14, v15, "Trying to stop activity but one hasn't started yet", v16, 2u);
      MEMORY[0x1DA6D8690](v16, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6D6410](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  v0[9] = v8;
  v9 = v0[5];

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB1A0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D4417654();
  v18 = (*MEMORY[0x1E6959B68] + MEMORY[0x1E6959B68]);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1D4363AC0;
  v12 = v0[4];
  v13 = v0[5];

  return v18(v13, v12);
}

uint64_t sub_1D4363AC0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);

  (*(v4 + 8))(v3, v5);
  sub_1D4363CEC(v2);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D4363C60, v7, v6);
}

uint64_t sub_1D4363C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4363CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D4363D54(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1D4367E58(a1, v2, ObjectType, a2);
}

uint64_t sub_1D4363DA4()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CB1B0);
  __swift_project_value_buffer(v0, qword_1EC7CB1B0);
  return sub_1D4418134();
}

void sub_1D4363E54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode;
  v3 = *(v1 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode);
  *(v1 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode) = a1;
  if (v3 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D441A1A4();

    if (*(v1 + v2) == 4)
    {
      v7 = MEMORY[0x1E69792B8];
    }

    else
    {
      if (qword_1EC7C9208 != -1)
      {
        swift_once();
      }

      v7 = &dword_1EC7CB1C8;
    }

    LODWORD(v5) = v7[1];
    LODWORD(v6) = v7[2];
    LODWORD(v4) = *v7;
    [v8 setPreferredFrameRateRange_];
  }
}

uint64_t sub_1D4363F4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D441A1A4();

  return v1;
}

id sub_1D4363FC0()
{
  v1 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView;
  v2 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView);
  }

  else
  {
    v16 = &unk_1F503C5D0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    v5 = [objc_allocWithZone(ICPlatterLeadingWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
    swift_unknownObjectRelease();
    [v5 setStyle_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB460);
    v7 = objc_allocWithZone(v6);
    v7[qword_1EC7CB298] = 0;
    *&v7[qword_1EC7CB290] = v5;
    v15.receiver = v7;
    v15.super_class = v6;
    v8 = v5;
    v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = v8;
    v11 = v9;
    [v11 addSubview_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1D436417C()
{
  v1 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView;
  v2 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView);
  }

  else
  {
    v16 = &unk_1F503C5D0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    v5 = [objc_allocWithZone(ICPlatterMinimalWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
    swift_unknownObjectRelease();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB450);
    v7 = objc_allocWithZone(v6);
    v7[qword_1EC7CB298] = 0;
    *&v7[qword_1EC7CB290] = v5;
    v15.receiver = v7;
    v15.super_class = v6;
    v8 = v5;
    v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = v8;
    v11 = v9;
    [v11 addSubview_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1D4364324()
{
  v1 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView;
  v2 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView);
  }

  else
  {
    type metadata accessor for ImageAccessoryView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = sub_1D4362670();
    [v4 setImage_];

    v6 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:3];
    [v4 setPreferredSymbolConfiguration_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1D436441C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D441A1A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1D436449C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_1D441A1B4();
}

void sub_1D4364514()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() updateLinkForView_];

    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v0;
    sub_1D441A1B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D441A1A4();

    if (qword_1EC7C9208 != -1)
    {
      swift_once();
    }

    LODWORD(v5) = dword_1EC7CB1C8;
    LODWORD(v6) = dword_1EC7CB1CC;
    LODWORD(v7) = dword_1EC7CB1D0;
    [v3 setPreferredFrameRateRange_];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D441A1A4();

    [v3 setEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D4364740()
{
  v1[2] = v0;
  v2 = sub_1D441AAF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1D4419F54();
  v1[7] = sub_1D4419F44();
  v1[8] = sub_1D4419F44();
  v4 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4364844, v4, v3);
}

uint64_t sub_1D4364844()
{

  v2 = sub_1D4419F04();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D43648C8, v2, v1);
}

uint64_t sub_1D43648C8()
{
  [objc_msgSend(*(v0 + 16) systemApertureElementContext)];
  swift_unknownObjectRelease();
  sub_1D441AE14();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D43649CC;

  return sub_1D43679A0(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D43649CC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D43682C8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D4364B60;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4364B60()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D4364BCC()
{
  v1 = v0;
  sub_1D435FDAC();
  v2 = sub_1D4363FC0();
  v3 = *&v2[qword_1EC7CB290];

  v4 = *(v1 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = *(v6 + 24);
  v7(ObjectType, v6);
  [v3 updateSliceFramesForRecordingTime_];

  v8 = sub_1D436417C();
  v9 = *&v8[qword_1EC7CB290];

  v7(ObjectType, v6);
  [v9 updateSliceFramesForRecordingTime_];
}

id sub_1D4364CE4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] = 0;
  *&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView] = 0;
  *&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView] = 0;
  sub_1D41766C0(0, &qword_1EC7CA1B8);
  sub_1D441A1C4();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1D4364DE8()
{

  v1 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController__updateLink;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB468);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for AudioRecordingDynamicIslandViewController()
{
  result = qword_1EC7CB210;
  if (!qword_1EC7CB210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4364FA8()
{
  sub_1D4365064();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4365064()
{
  if (!qword_1EC7CB220)
  {
    sub_1D41766C0(255, &qword_1EC7CA1B8);
    v0 = sub_1D441A1D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CB220);
    }
  }
}

void sub_1D4365170()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ICSystemApertureAccessoryView();
  objc_msgSendSuper2(&v17, sel_updateConstraints);
  if ((v0[qword_1EC7CB298] & 1) == 0)
  {
    v1 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D4437270;
    v3 = *&v0[qword_1EC7CB290];
    v4 = [v3 leadingAnchor];
    v5 = [v0 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v6;
    v7 = [v3 trailingAnchor];
    v8 = [v0 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v2 + 40) = v9;
    v10 = [v3 topAnchor];
    v11 = [v0 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v2 + 48) = v12;
    v13 = [v3 bottomAnchor];
    v14 = [v0 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v2 + 56) = v15;
    sub_1D41766C0(0, &qword_1EDE32740);
    v16 = sub_1D4419E24();

    [v1 activateConstraints_];

    v0[qword_1EC7CB298] = 1;
  }
}

void sub_1D4365418(void *a1)
{
  v1 = a1;
  sub_1D4365170();
}

id sub_1D4365488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSystemApertureAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D4365594()
{
  v1 = sub_1D44178A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(ObjectType, v8);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B7168], v1);
  v10 = sub_1D4417894();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v11(v7, v1);
  if (v10)
  {
    return sub_1D43601B8();
  }

  else
  {
    return sub_1D4360198();
  }
}

id sub_1D4365760()
{
  v1 = sub_1D44178A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(ObjectType, v8);
  (*(v2 + 104))(v5, *MEMORY[0x1E69B7168], v1);
  v10 = sub_1D4417894();
  v11 = *(v2 + 8);
  v11(v5, v1);
  v11(v7, v1);
  if (v10)
  {
    return sub_1D4364324();
  }

  else
  {
    return sub_1D436417C();
  }
}

void sub_1D4365970()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode);
    if (v2 >= 5)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0x201000303uLL >> (8 * v2);
    }

    sub_1D43659F0(v3);
  }
}

void sub_1D43659F0(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB3E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - v7;
  v9 = sub_1D441A694();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D44178A4();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v16;
  if (qword_1EC7C9200 != -1)
  {
    swift_once();
  }

  v62 = v8;
  v17 = sub_1D44181B4();
  __swift_project_value_buffer(v17, qword_1EC7CB1B0);
  v18 = sub_1D44181A4();
  v19 = sub_1D441A154();
  v20 = os_log_type_enabled(v18, v19);
  v64 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v70 = v22;
    *v21 = 136315138;
    v69 = v3;
    v23 = sub_1D4419C74();
    v25 = v10;
    v26 = v9;
    v27 = v3;
    v3 = v2;
    v28 = sub_1D42E9410(v23, v24, &v70);

    *(v21 + 4) = v28;
    v2 = v3;
    LODWORD(v3) = v27;
    v9 = v26;
    v10 = v25;
    _os_log_impl(&dword_1D4171000, v18, v19, "Transitioning to layout mode %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1DA6D8690](v22, -1, -1);
    MEMORY[0x1DA6D8690](v21, -1, -1);
  }

  sub_1D4366314(v3);
  v29 = sub_1D4363FC0();
  v30 = *&v29[qword_1EC7CB290];

  [v30 setStyle_];
  v31 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  v33 = v65;
  (*(v31 + 16))(ObjectType, v31);
  v35 = v66;
  v34 = v67;
  v36 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x1E69B7168], v68);
  LOBYTE(v29) = sub_1D4417894();
  v37 = *(v34 + 8);
  v37(v35, v36);
  v37(v33, v36);
  if (v29)
  {
    LODWORD(v68) = v3;
    v3 = [objc_opt_self() sharedStyleProvider];
    v38 = sub_1D43601B8();
    v39 = v62;
    sub_1D441A6B4();

    v40 = *(v10 + 48);
    if (v40(v39, 1, v9) == 1)
    {
      v41 = v64;
      sub_1D441A684();
      if (v40(v39, 1, v9) != 1)
      {
        sub_1D4366BD4(v39);
      }
    }

    else
    {
      v41 = v64;
      (*(v10 + 32))(v64, v39, v9);
    }

    sub_1D4362670();
    sub_1D441A674();
    v42 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:3];
    sub_1D441A624();
    v43 = OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
    v44 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton];
    v45 = v63;
    (*(v10 + 16))(v63, v41, v9);
    (*(v10 + 56))(v45, 0, 1, v9);
    v46 = v44;
    sub_1D441A6C4();

    [*&v2[v43] setUserInteractionEnabled_];
    v47 = [v3 platterStatusMessageStateTimeLabelColor];
    v48 = sub_1D4360198();
    [v48 setTextColor_];

    v49 = v41;
    v50 = [v3 platterWaveformStatusMessageSliceColor];
    [*(*&v2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] + qword_1EC7CB290) setSliceColor_];
    v51 = sub_1D436417C();
    v52 = *&v51[qword_1EC7CB290];

    [v52 setSliceColor_];
    (*(v10 + 8))(v49, v9);
    LOBYTE(v3) = v68;
  }

  sub_1D4366878(v3);
  v54 = v53;
  v55 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeConstraints;
  v56 = *&v2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeConstraints];

  v57 = sub_1D434FDFC(v54, v56);

  if (v57)
  {
  }

  else
  {
    v58 = objc_opt_self();
    sub_1D41766C0(0, &qword_1EDE32740);

    v59 = sub_1D4419E24();

    [v58 deactivateConstraints_];

    *&v2[v55] = v54;

    v60 = sub_1D4419E24();

    [v58 activateConstraints_];
  }
}

uint64_t sub_1D436615C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D43662C8()
{
  result = sub_1D441A194();
  dword_1EC7CB1C8 = v1;
  dword_1EC7CB1CC = v2;
  dword_1EC7CB1D0 = v3;
  return result;
}

void sub_1D4366314(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1;
  v5 = sub_1D44178A4();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v12 = 14.0;
  if (v4 == 2)
  {
    v13 = sub_1D43601B8();
    v14 = [v13 superview];

    if (!v14)
    {
      v15 = [v2 view];
      if (!v15)
      {
        __break(1u);
        return;
      }

      v14 = v15;
      [v15 addSubview_];
    }

    v12 = 20.0;
  }

  v16 = sub_1D4360198();
  v17 = [objc_opt_self() monospacedDigitSystemFontOfSize:v12 weight:*MEMORY[0x1E69DB970]];
  [v16 setFont_];

  v18 = sub_1D43601B8();
  v19 = MEMORY[0x1E69B7168];
  if (v4 == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(ObjectType, v21);
    v23 = *v19;
    v24 = v62;
    v25 = v63;
    (*(v63 + 104))(v9, v23, v62);
    v26 = sub_1D4417894();
    v27 = *(v25 + 8);
    v27(v9, v24);
    v27(v11, v24);
    v20 = v26 ^ 1;
  }

  v28 = &selRef_setContactsChangedObserverToken_;
  [v18 setHidden_];

  v29 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel];
  if (v3)
  {
    v30 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
    v31 = v3;
    v32 = swift_getObjectType();
    v61 = v2;
    v33 = *(v30 + 16);
    v34 = v29;
    v35 = v32;
    v3 = v31;
    v33(v35, v30);
    v36 = v62;
    v37 = v63;
    v2 = v61;
    v38 = MEMORY[0x1E69B7168];
    (*(v63 + 104))(v9, *MEMORY[0x1E69B7168], v62);
    v39 = sub_1D4417894();
    v40 = *(v37 + 8);
    v40(v9, v36);
    v41 = v36;
    v28 = &selRef_setContactsChangedObserverToken_;
    v40(v11, v41);
  }

  else
  {
    v34 = v29;
    v39 = 1;
    v38 = MEMORY[0x1E69B7168];
  }

  [v34 v28[191]];

  v42 = sub_1D4363FC0();
  [v42 v28[191]];

  v43 = sub_1D436417C();
  if (v3)
  {
    v44 = 1;
  }

  else
  {
    v45 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
    v46 = swift_getObjectType();
    (*(v45 + 16))(v46, v45);
    v47 = *v38;
    v48 = v62;
    v49 = v63;
    (*(v63 + 104))(v9, v47, v62);
    v44 = sub_1D4417894();
    v50 = *(v49 + 8);
    v50(v9, v48);
    v50(v11, v48);
  }

  [v43 v28[191]];

  v51 = sub_1D4364324();
  if (v3)
  {
    v52 = 1;
  }

  else
  {
    v53 = v28;
    v54 = *&v2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
    v55 = swift_getObjectType();
    (*(v54 + 16))(v55, v54);
    v57 = v62;
    v56 = v63;
    (*(v63 + 104))(v9, *MEMORY[0x1E69B7168], v62);
    v58 = sub_1D4417894();
    v59 = *(v56 + 8);
    v59(v9, v57);
    v59(v11, v57);
    v28 = v53;
    v52 = v58 ^ 1;
  }

  [v51 v28[191]];
}

void sub_1D4366878(unsigned __int8 a1)
{
  v3 = sub_1D44178A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {

      sub_1D43672B4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D44397A0;
      v18 = sub_1D4363FC0();
      v19 = [v18 leadingAnchor];

      v20 = [v1 view];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 leadingAnchor];

        v23 = [v19 constraintEqualToAnchor_];
        *(v17 + 32) = v23;
        v24 = v1;
        v25 = sub_1D4360198();
        v26 = [v25 trailingAnchor];

        v27 = [v24 view];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 trailingAnchor];

          v30 = [v26 constraintEqualToAnchor_];
          *(v17 + 40) = v30;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else if (a1)
  {

    sub_1D4366C3C();
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
    v12 = v8;
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    (*(v4 + 104))(v7, *MEMORY[0x1E69B7168], v12);
    v14 = sub_1D4417894();
    v15 = *(v4 + 8);
    v15(v7, v12);
    v15(v10, v12);
    if (v14)
    {
      v16 = sub_1D4364324();
    }

    else
    {
      v16 = sub_1D436417C();
    }

    v31 = v16;
    sub_1D4368048(v16, 20.0);
  }
}

uint64_t sub_1D4366BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D4366C3C()
{
  v1 = v0;
  v54 = sub_1D44178A4();
  v2 = *(v54 - 8);
  v3 = MEMORY[0x1EEE9AC00](v54);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v53 - v6;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D4438D80;
  v9 = sub_1D4363FC0();
  v10 = [v9 leadingAnchor];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = result;
  v13 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  v14 = [v13 leadingAnchor];
  v15 = [v10 constraintEqualToAnchor_];

  *(v8 + 32) = v15;
  v16 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView;
  v17 = [*&v1[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] heightAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = result;
  v19 = [result heightAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 multiplier:0.53];
  *(v8 + 40) = v20;
  v21 = [*&v1[v16] widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v8 + 48) = v22;
  v55 = v8;
  v23 = *&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  (*(v23 + 16))(ObjectType, v23);
  v25 = v54;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B7168], v54);
  LOBYTE(v21) = sub_1D4417894();
  v26 = *(v2 + 8);
  v26(v5, v25);
  v26(v7, v25);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D44397A0;
  v28 = sub_1D43601B8();
  v29 = [v28 centerXAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = result;
  v31 = &selRef_SBUISA_systemApertureTrailingConcentricContentLayoutGuide;
  v32 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v33 = [v32 centerXAnchor];
  v34 = [v29 constraintEqualToAnchor_];

  *(inited + 32) = v34;
  v35 = [*&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] centerYAnchor];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_7:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D44397A0;
    v36 = sub_1D4360198();
    v37 = [v36 trailingAnchor];

    result = [v1 view];
    if (result)
    {
      v38 = result;
      v31 = &selRef_SBUISA_systemApertureLegibleContentLayoutMarginsGuide;
      v39 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

      v40 = [v39 trailingAnchor];
      v41 = [v37 constraintEqualToAnchor_];

      *(inited + 32) = v41;
      v35 = [*&v1[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] centerYAnchor];
      result = [v1 view];
      if (result)
      {
        goto LABEL_9;
      }

LABEL_27:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  v42 = result;
  v43 = [result *v31];

  v44 = [v43 centerYAnchor];
  v45 = [v35 constraintEqualToAnchor_];

  *(inited + 40) = v45;
  sub_1D42EFF0C(inited);
  v46 = v55;
  if (v55 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D441A8C4())
  {
    for (j = 0; ; ++j)
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1DA6D6410](j, v46);
      }

      else
      {
        if (j >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v49 = *(v46 + 8 * j + 32);
      }

      v51 = v49;
      v52 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      LODWORD(v50) = 1144750080;
      [v49 setPriority_];

      if (v52 == i)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return v46;
}

void sub_1D43672B4()
{
  v1 = [v0 view];
  if (!v1)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D4439720;
  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v7 = [v5 widthAnchor];

  v8 = [v3 widthAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v4 + 32) = v9;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  v15 = [v13 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v16 = [v15 bottomAnchor];
  v17 = [v12 constraintEqualToAnchor_];

  *(v4 + 40) = v17;
  v18 = sub_1D4363FC0();
  v19 = [v18 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v20;
  v69 = v3;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:18.0];
  *(v4 + 48) = v23;
  v24 = OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView;
  v25 = [*&v0[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] heightAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v27 = v26;
  v28 = [v26 heightAnchor];

  v29 = [v25 constraintEqualToAnchor:v28 multiplier:0.55];
  *(v4 + 56) = v29;
  v30 = [*&v0[v24] centerYAnchor];
  v31 = sub_1D43601B8();
  v32 = [v31 centerYAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v4 + 64) = v33;
  v34 = [*&v0[v24] trailingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = v35;
  v37 = [v35 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v38 = [v37 centerXAnchor];
  v39 = [v34 constraintEqualToAnchor_];

  *(v4 + 72) = v39;
  v40 = sub_1D4360198();
  v41 = [v40 trailingAnchor];

  v42 = OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
  v43 = [*&v0[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] leadingAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v44;
  [v44 SBUISA_standardInteritemPadding];
  v47 = v46;

  v48 = [v41 constraintEqualToAnchor:v43 constant:-v47];
  *(v4 + 80) = v48;
  v49 = [*&v0[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] centerYAnchor];
  v50 = [*&v0[v42] centerYAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v4 + 88) = v51;
  v52 = [*&v0[v42] centerXAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v54 = v53;
  v55 = [v53 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v56 = [v55 centerXAnchor];
  v57 = [v52 &selRef_currentFilter + 5];

  *(v4 + 96) = v57;
  v58 = [*&v0[v42] centerYAnchor];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v60 = v59;
  v61 = [v59 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v62 = [v61 centerYAnchor];
  v63 = [v58 &selRef_currentFilter + 5];

  *(v4 + 104) = v63;
  v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
    v65 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x1DA6D6410](v65, v4);
      }

      else
      {
        if (v65 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v66 = *(v4 + 8 * v65 + 32);
      }

      v68 = v66;
      ++v65;
      LODWORD(v67) = 1144750080;
      [v66 setPriority_];
    }

    while (v64 != v65);
  }
}

uint64_t sub_1D43679A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D441AAE4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D4367AA0, 0, 0);
}

uint64_t sub_1D4367AA0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D441AAF4();
  v5 = sub_1D4368218(&qword_1EC7CB470, MEMORY[0x1E69E8820]);
  sub_1D441ADF4();
  sub_1D4368218(&qword_1EC7CB478, MEMORY[0x1E69E87E8]);
  sub_1D441AB04();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D4367C30;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D4367C30()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D4367DEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}