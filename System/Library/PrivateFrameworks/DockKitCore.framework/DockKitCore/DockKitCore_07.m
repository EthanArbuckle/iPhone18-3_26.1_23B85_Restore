uint64_t sub_2245C3E98()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245C3F58;
  v5 = swift_continuation_init();
  sub_2245711CC(v2, v4, v3, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245C3F58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 136) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245C42E8;
  }

  else
  {
    v2 = sub_2245C4074;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C4074()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  *(v0 + 144) = *(v1 + v2);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C4150, v4, v3);
}

uint64_t sub_2245C4150()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2245C41F0;

  return sub_2245BB528();
}

uint64_t sub_2245C41F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2245C42E8()
{
  *(v0 + 160) = *(v0 + 136);
  *(v0 + 168) = *(*(v0 + 96) + *(v0 + 104));
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C43CC, v2, v1);
}

uint64_t sub_2245C43CC()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245CA424, 0, 0);
}

uint64_t sub_2245C45D4(const void *a1, void *a2, double a3, double a4, double a5)
{
  v5[2] = a2;
  v5[3] = _Block_copy(a1);
  a2;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_224540B08;

  return sub_2245C346C(a3, a4, a5);
}

uint64_t ActuationController.setActuatorVelocities(actuatorNames:velocities:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2245C46C8, 0, 0);
}

uint64_t sub_2245C46C8()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v45 = v0 + 2;
    v4 = 0;
    v5 = v0[5];
    v46 = v0[4];
    v47 = v1;
    v48 = v46 + 32;
    v6 = (v2 + 40);
    v7 = OBJC_IVAR____TtC11DockKitCore6System_components;
    while (1)
    {
      v8 = *(v7 + v5);
      if (*(v8 + 16))
      {
        v9 = *(v6 - 1);
        v10 = *v6;

        v11 = sub_2245096C8(v9, v10);
        v13 = v12;

        if (v13)
        {
          v14 = *(*(v8 + 56) + 8 * v11);

          type metadata accessor for Actuator();
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = v15;
            v49 = v14;
            v17 = v45;
            MEMORY[0x22AA51310]();
            if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_224627EF8();
              v17 = v45;
            }

            sub_224627F08();
            v47 = *v17;
            v18 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
            v19 = *(v16 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

            os_unfair_lock_lock(v19 + 4);

            v20 = OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition;
            v21 = *(v16 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition);
            v22 = *(v16 + v18);

            os_unfair_lock_unlock(v22 + 4);

            v23 = *(v16 + v18);

            os_unfair_lock_lock(v23 + 4);

            v24 = *(v16 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition);
            v25 = *(v16 + v18);

            os_unfair_lock_unlock(v25 + 4);

            if (v21 < v24)
            {
              if (v4 >= *(v46 + 16))
              {
                goto LABEL_39;
              }

              if (*(v48 + 8 * v4) < 0.0)
              {
                goto LABEL_16;
              }
            }

            v26 = *(v16 + v18);

            os_unfair_lock_lock(v26 + 4);

            v27 = *(v16 + v20);
            v28 = *(v16 + v18);

            os_unfair_lock_unlock(v28 + 4);

            v29 = *(v16 + v18);

            os_unfair_lock_lock(v29 + 4);

            v30 = *(v16 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition);
            v31 = *(v16 + v18);

            os_unfair_lock_unlock(v31 + 4);

            v32 = *(v46 + 16);
            if (v30 >= v27)
            {
              goto LABEL_22;
            }

            if (v4 >= v32)
            {
              goto LABEL_40;
            }

            if (*(v48 + 8 * v4) <= 0.0)
            {
LABEL_22:
              if (v4 >= v32)
              {
                __break(1u);
LABEL_39:
                __break(1u);
LABEL_40:
                __break(1u);
LABEL_41:
                v38 = sub_224628478();
                goto LABEL_31;
              }

              v35 = *(v48 + 8 * v4);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
              }

              v37 = *(v1 + 2);
              v36 = *(v1 + 3);
              if (v37 >= v36 >> 1)
              {
                v1 = sub_22452B168((v36 > 1), v37 + 1, 1, v1);
              }

              *(v1 + 2) = v37 + 1;
              *&v1[8 * v37 + 32] = v35;
            }

            else
            {
LABEL_16:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_22452B168(0, *(v1 + 2) + 1, 1, v1);
              }

              v34 = *(v1 + 2);
              v33 = *(v1 + 3);
              if (v34 >= v33 >> 1)
              {
                v1 = sub_22452B168((v33 > 1), v34 + 1, 1, v1);
              }

              *(v1 + 2) = v34 + 1;
              *&v1[8 * v34 + 32] = 0;
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

      ++v4;
      v6 += 2;
      if (v3 == v4)
      {
        goto LABEL_29;
      }
    }
  }

  v47 = v1;
LABEL_29:
  v7 = v44;
  v5 = v47;
  v44[6] = v47;
  if (v47 >> 62)
  {
    goto LABEL_41;
  }

  v38 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v39 = *(v1 + 2);

  if (v38 == v39)
  {
    v40 = swift_task_alloc();
    v7[7] = v40;
    *v40 = v7;
    v40[1] = sub_2245C4BC4;
    v41 = v7[4];

    return ActuationController.setActuatorVelocities(actuators:velocities:)(v5, v41);
  }

  else
  {

    v43 = v7[1];

    return v43();
  }
}

uint64_t sub_2245C4BC4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2245C4CE0;
  }

  else
  {

    v2 = sub_2245CA428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C4CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActuationController.setActuatorVelocities(actuators:velocities:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245C4D68, 0, 0);
}

uint64_t sub_2245C4D68()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[13] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[14] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2245C4E30;

  return v5();
}

uint64_t sub_2245C4E30()
{

  return MEMORY[0x2822009F8](sub_2245C4F48, 0, 0);
}

uint64_t sub_2245C4F48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = sub_2245C50A8;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_22452ECAC();
    v5 = swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x8000000224639AB0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v0[20] = v5;
    v0[21] = *(v0[12] + v0[13]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();
    v9 = v8;
    v2 = sub_2245C43CC;
    v3 = v7;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2245C50A8()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245C5168;
  v5 = swift_continuation_init();
  sub_22456F984(v2, v4, v3, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245C5168()
{
  v1 = *(*v0 + 48);
  *(*v0 + 136) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245C42E8;
  }

  else
  {
    v2 = sub_2245C5284;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245C5284()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  *(v0 + 144) = *(v1 + v2);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C5360, v4, v3);
}

uint64_t sub_2245C5360()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2245CA418;

  return sub_2245BB528();
}

uint64_t sub_2245C5590(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_224627ED8();
  v4[4] = v6;
  v7 = sub_224627ED8();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_2245CA410;

  return ActuationController.setActuatorVelocities(actuatorNames:velocities:)(v6, v7);
}

uint64_t sub_2245C581C(const void *a1, void *a2, double a3, double a4, double a5)
{
  v5[2] = a2;
  v5[3] = _Block_copy(a1);
  a2;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_2245627F4;

  return ActuationController.setRotationalVelocity(yaw:pitch:roll:)(a3, a4, a5);
}

uint64_t sub_2245C58EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D034;

  return sub_2245BB528();
}

void sub_2245C597C(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  (*(v9 + 16))(v11, a2 + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, v8);
  v15 = sub_224627B58();
  v16 = sub_224628058();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = a4;
    v20 = v19;
    v33 = v19;
    *v18 = 136315138;
    v30 = v12;
    v31 = v13;
    v32 = v14;
    v21 = sub_224627D28();
    v23 = sub_224509F28(v21, v22, &v33);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_224507000, v15, v16, "Trajectory progress: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x22AA526D0](v20, -1, -1);
    v24 = v18;
    a3 = v29;
    MEMORY[0x22AA526D0](v24, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (v13 > 3)
  {
    if (v13 == 4)
    {
      v25 = 2;
      goto LABEL_11;
    }

    if (v13 == 5)
    {
      v25 = 3;
      goto LABEL_11;
    }
  }

  else if (v13 == 3)
  {
    v25 = 1;
LABEL_11:
    LOBYTE(v33) = v25;
    goto LABEL_12;
  }

  LOBYTE(v33) = 0;
LABEL_12:
  v26 = objc_allocWithZone(type metadata accessor for TrajectoryProgress());
  v27 = TrajectoryProgress.init(status:statusMessage:)(&v33, 0, 0);
  a3();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActuationController.setActuatorLimits(yaw:pitch:roll:)(DockKitCore::ActuatorLimit_optional *yaw, DockKitCore::ActuatorLimit_optional *pitch, DockKitCore::ActuatorLimit_optional *roll)
{
  object = pitch->value.name._object;
  minPosition = pitch->value.minPosition;
  maxPosition = pitch->value.maxPosition;
  maxSpeed = pitch->value.maxSpeed;
  v8 = roll->value.name._object;
  v10 = roll->value.minPosition;
  v9 = roll->value.maxPosition;
  v11 = roll->value.maxSpeed;
  if (!yaw->value.name._object)
  {
    if (!object)
    {
      if (!v8)
      {
        sub_22452ECAC();
        swift_allocError();
        *v48 = 0xD00000000000001FLL;
        *(v48 + 8) = 0x8000000224639B40;
        v50 = 7;
LABEL_60:
        *(v48 + 16) = v50;
        swift_willThrow();
        return;
      }

      goto LABEL_33;
    }

LABEL_17:
    v30 = *(v3 + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v30 + 16))
    {
      v31 = v3;

      v32 = sub_2245096C8(0x6863746970, 0xE500000000000000);
      if (v33)
      {
        v21 = *(*(v30 + 56) + 8 * v32);

        type metadata accessor for Actuator();
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          v35 = *(v34 + OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition);
          if (minPosition >= v35)
          {
            v36 = *(v34 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition);
            if (v36 >= maxPosition)
            {
              v37 = *(v34 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed) < maxSpeed || v36 < minPosition;
              if (!v37 && maxPosition >= v35)
              {
                v59 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
                v60 = *(v34 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
                v61 = v34;

                os_unfair_lock_lock(v60 + 4);

                *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition) = minPosition;
                v62 = *(v61 + v59);

                os_unfair_lock_unlock(v62 + 4);

                v63 = *(v61 + v59);

                os_unfair_lock_lock(v63 + 4);

                *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition) = maxPosition;
                v64 = *(v61 + v59);

                os_unfair_lock_unlock(v64 + 4);

                v65 = *(v61 + v59);

                os_unfair_lock_lock(v65 + 4);

                *(v61 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed) = maxSpeed;
                v66 = *(v61 + v59);

                os_unfair_lock_unlock(v66 + 4);

                v3 = v31;
                goto LABEL_61;
              }
            }
          }

          v27 = 0x8000000224639BD0;
          sub_22452ECAC();
          swift_allocError();
          v29 = 0xD000000000000021;
LABEL_47:
          *v28 = v29;
          *(v28 + 8) = v27;
          *(v28 + 16) = 22;
          swift_willThrow();

          return;
        }
      }

      else
      {
      }
    }

    v47 = 0x8000000224639BB0;
    sub_22452ECAC();
    swift_allocError();
    v49 = 0xD000000000000012;
LABEL_59:
    *v48 = v49;
    *(v48 + 8) = v47;
    v50 = 9;
    goto LABEL_60;
  }

  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore6System_components);
  if (!*(v12 + 16))
  {
LABEL_50:
    v47 = 0x8000000224639C00;
    sub_22452ECAC();
    swift_allocError();
    v49 = 0xD000000000000010;
    goto LABEL_59;
  }

  v75 = roll->value.minPosition;
  v13 = roll->value.maxPosition;
  v14 = roll->value.maxSpeed;
  v15 = v3;
  v17 = yaw->value.maxPosition;
  v16 = yaw->value.maxSpeed;
  v18 = yaw->value.minPosition;

  v19 = sub_2245096C8(7823737, 0xE300000000000000);
  if ((v20 & 1) == 0)
  {

    goto LABEL_50;
  }

  v21 = *(*(v12 + 56) + 8 * v19);

  type metadata accessor for Actuator();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_50;
  }

  v23 = *(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition);
  if (v18 < v23 || (v24 = *(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition), v24 < v17) || (*(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed) >= v16 ? (v25 = v24 < v18) : (v25 = 1), !v25 ? (v26 = v17 < v23) : (v26 = 1), v26))
  {
    v27 = 0x8000000224639C20;
    sub_22452ECAC();
    swift_allocError();
    v29 = 0xD00000000000001FLL;
    goto LABEL_47;
  }

  v51 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  v52 = *(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
  v53 = v22;

  os_unfair_lock_lock(v52 + 4);

  *(v53 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition) = v18;
  v54 = *(v53 + v51);

  os_unfair_lock_unlock(v54 + 4);

  v55 = *(v53 + v51);

  os_unfair_lock_lock(v55 + 4);

  *(v53 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition) = v17;
  v56 = *(v53 + v51);

  os_unfair_lock_unlock(v56 + 4);

  v57 = *(v53 + v51);

  os_unfair_lock_lock(v57 + 4);

  *(v53 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed) = v16;
  v58 = *(v53 + v51);

  os_unfair_lock_unlock(v58 + 4);

  v3 = v15;
  v11 = v14;
  v9 = v13;
  v10 = v75;
  if (object)
  {
    goto LABEL_17;
  }

LABEL_61:
  if (v8)
  {
LABEL_33:
    v39 = *(v3 + OBJC_IVAR____TtC11DockKitCore6System_components);
    if (*(v39 + 16))
    {

      v40 = sub_2245096C8(1819045746, 0xE400000000000000);
      if (v41)
      {
        v21 = *(*(v39 + 56) + 8 * v40);

        type metadata accessor for Actuator();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v43 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition);
          if (v10 >= v43)
          {
            v44 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition);
            if (v44 >= v9)
            {
              v45 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed) < v11 || v44 < v10;
              if (!v45 && v9 >= v43)
              {
                v67 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
                v68 = *(v42 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);
                v69 = v42;

                os_unfair_lock_lock(v68 + 4);

                *(v69 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition) = v10;
                v70 = *(v69 + v67);

                os_unfair_lock_unlock(v70 + 4);

                v71 = *(v69 + v67);

                os_unfair_lock_lock(v71 + 4);

                *(v69 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition) = v9;
                v72 = *(v69 + v67);

                os_unfair_lock_unlock(v72 + 4);

                v73 = *(v69 + v67);

                os_unfair_lock_lock(v73 + 4);

                *(v69 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed) = v11;
                v74 = *(v69 + v67);

                os_unfair_lock_unlock(v74 + 4);

                return;
              }
            }
          }

          v27 = 0x8000000224639B80;
          sub_22452ECAC();
          swift_allocError();
          v29 = 0xD000000000000020;
          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v47 = 0x8000000224639B60;
    sub_22452ECAC();
    swift_allocError();
    v49 = 0xD000000000000011;
    goto LABEL_59;
  }
}

uint64_t sub_2245C6530(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  type metadata accessor for Actuator();
  v6 = sub_224627ED8();
  v4[4] = v6;
  v7 = sub_224627ED8();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_2245C6628;

  return ActuationController.setActuatorPositions(actuators:positions:)(v6, v7);
}

uint64_t sub_2245C6628()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_224626FA8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_2245C697C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  type metadata accessor for Actuator();
  v6 = sub_224627ED8();
  v4[4] = v6;
  v7 = sub_224627ED8();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_2245CA410;

  return ActuationController.setActuatorVelocities(actuators:velocities:)(v6, v7);
}

uint64_t sub_2245C6C18(int a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  type metadata accessor for Actuator();
  v9 = sub_224627ED8();
  v5[5] = v9;
  swift_unknownObjectRetain();
  a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_2245C6D14;

  return ActuationController.getActuatorFeedback(actuators:delegate:occurrence:)(v9, a2, a3);
}

uint64_t sub_2245C6D14()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_224626FA8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t ActuationController.getCurrentFeedback(actuators:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2245C6EF8, 0, 0);
}

uint64_t sub_2245C6EF8()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[13] = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  v0[14] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2245C6FC0;

  return v5();
}

uint64_t sub_2245C6FC0()
{

  return MEMORY[0x2822009F8](sub_2245C70D8, 0, 0);
}

uint64_t sub_2245C70D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = sub_2245C7238;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_22452ECAC();
    v5 = swift_allocError();
    *v6 = 0xD000000000000019;
    *(v6 + 8) = 0x8000000224639AB0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v0[20] = v5;
    v0[21] = *(v0[12] + v0[13]);
    sub_2246274B8();
    sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

    v7 = sub_224627F28();
    v9 = v8;
    v2 = sub_2245C29AC;
    v3 = v7;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2245C7238()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245C72F0;
  v4 = swift_continuation_init();
  sub_224571D00(v2, v3, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245C72F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 136) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245C75D0;
  }

  else
  {
    *(v1 + 144) = *(v1 + 80);
    v3 = sub_2245C7414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245C7414()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  *(v0 + 152) = *(v2 + v3);
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);
  v4 = v1;

  v6 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C74F8, v6, v5);
}

uint64_t sub_2245C74F8()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245C7568, 0, 0);
}

uint64_t sub_2245C7568()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_2245C75D0()
{
  *(v0 + 160) = *(v0 + 136);
  *(v0 + 168) = *(*(v0 + 96) + *(v0 + 104));
  sub_2246274B8();
  sub_2245C8558(&qword_280C51570, MEMORY[0x277D213A8]);

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245C29AC, v2, v1);
}

uint64_t sub_2245C783C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for Actuator();
  v5 = sub_224627ED8();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2245C7914;

  return ActuationController.getCurrentFeedback(actuators:)(v5);
}

uint64_t sub_2245C7914(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_224626FA8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2245C7C44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627F4;

  return ActuationController.stopActuatorFeedback()();
}

Swift::Void __swiftcall ActuationController.encode(with:)(NSCoder with)
{
  v2 = sub_224628008();
  v3 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  sub_2245B3BA4(with.super.isa);
}

id ActuationController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  sub_224627B68();
  sub_224627088();
  sub_224627088();
  v8 = OBJC_IVAR____TtC11DockKitCore19ActuationController_feedbackLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + v8) = v9;
  *(v1 + OBJC_IVAR____TtC11DockKitCore19ActuationController_yawOffset) = 0;
  *(v1 + OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle) = 0;
  v10 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress;
  type metadata accessor for TrajectoryCommand.StampedProgress(0);
  v11 = swift_allocObject();
  *(v11 + 18) = 0;
  *(v11 + 16) = 1536;
  sub_224627088();
  v12 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v11 + v12) = v13;
  *(v1 + v10) = v11;
  v14 = OBJC_IVAR____TtC11DockKitCore19ActuationController_imu;
  type metadata accessor for StandOrientationMonitor();
  swift_allocObject();
  *(v1 + v14) = sub_22460AC58();
  v15 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  sub_2246274B8();
  *(v1 + v15) = sub_2246274A8();
  v16 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  v23[0] = 0;
  sub_224627568();
  (*(v5 + 32))(v2 + v16, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22462C8F0;
  *(v17 + 32) = sub_22450950C(0, &unk_27D0C89A0);
  sub_2246281B8();

  if (!v24)
  {
    sub_2245098A0(v23, &qword_27D0CA3B0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v18 = v22;
  if (v22 != 2)
  {
    v18 = v22 == 1;
  }

LABEL_8:
  *(v2 + OBJC_IVAR____TtC11DockKitCore19ActuationController_motionModel) = v18;
  swift_unknownObjectWeakInit();
  v19 = sub_2245B4A54();

  return v19;
}

uint64_t sub_2245C821C()
{
  v1 = OBJC_IVAR____TtC11DockKitCore19ActuationController_logger;
  v2 = sub_224627B78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackTime;
  v4 = sub_224627118();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackRequest, v4);

  v6 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t sub_2245C84E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2245C8558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2245C85A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_2245C58EC();
}

id sub_2245C8674()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22462F9E0;
  v3 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v2 + 32) = v3;
  v4 = sub_22450950C(0, &unk_27D0C89A0);
  *(v2 + 40) = v4;
  sub_2246281B8();

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DF0);
    if (swift_dynamicCast())
    {
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v13, &qword_27D0CA3B0);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_6:
  *&v0[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_positions] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22462F9E0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  sub_2246281B8();

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DF0);
    if (swift_dynamicCast())
    {
      v7 = v11;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245098A0(v13, &qword_27D0CA3B0);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_11:
  *&v0[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_velocities] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22462C8F0;
  *(v8 + 32) = v4;
  sub_2246281B8();

  if (!v14)
  {
    sub_2245098A0(v13, &qword_27D0CA3B0);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v11;
LABEL_16:
  *&v0[OBJC_IVAR____TtC11DockKitCore16ActuatorFeedback_timestamp] = v9;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init, 2, 4);
}

uint64_t sub_2245C894C(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v56 = a6;
  v57 = a5;
  v55 = a4;
  v58 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  sub_224627B68();
  sub_224627088();
  sub_224627088();
  v14 = OBJC_IVAR____TtC11DockKitCore19ActuationController_feedbackLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v6[v14] = v15;
  *&v6[OBJC_IVAR____TtC11DockKitCore19ActuationController_yawOffset] = 0;
  *&v6[OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle] = 0;
  v16 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress;
  type metadata accessor for TrajectoryCommand.StampedProgress(0);
  v17 = swift_allocObject();
  *(v17 + 18) = 0;
  *(v17 + 16) = 1536;
  sub_224627088();
  v18 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v17 + v18) = v19;
  *&v6[v16] = v17;
  v20 = OBJC_IVAR____TtC11DockKitCore19ActuationController_imu;
  type metadata accessor for StandOrientationMonitor();
  swift_allocObject();
  *&v6[v20] = sub_22460AC58();
  v21 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  sub_2246274B8();
  *&v6[v21] = sub_2246274A8();
  v22 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  LOBYTE(v59) = 0;
  sub_224627568();
  (*(v11 + 32))(&v7[v22], v13, v10);
  *&v7[OBJC_IVAR____TtC11DockKitCore19ActuationController_motionModel] = a3;
  swift_unknownObjectWeakInit();
  v23 = &OBJC_IVAR____TtC11DockKitCore6System_components;
  *&v7[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  *&v7[OBJC_IVAR____TtC11DockKitCore6System_type] = 0;
  v24 = &v7[OBJC_IVAR____TtC11DockKitCore6System_name];
  v25 = v57;
  *v24 = v55;
  v24[1] = v25;
  v26 = type metadata accessor for System();
  v60.receiver = v7;
  v60.super_class = v26;
  v27 = v58;
  v28 = v56;
  v29 = objc_msgSendSuper2(&v60, sel_init);
  swift_unknownObjectWeakAssign();

  if (v28 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224628478())
  {
    v31 = 0;
    v58 = *v23;
    v54 = v28 & 0xFFFFFFFFFFFFFF8;
    v55 = v28 & 0xC000000000000001;
    while (v55)
    {
      v35 = MEMORY[0x22AA517F0](v31, v28);
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v57 = v36;
      v38 = *&v35[OBJC_IVAR____TtC11DockKitCore9Component_name];
      v37 = *&v35[OBJC_IVAR____TtC11DockKitCore9Component_name + 8];
      v39 = v35;

      v40 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *&v40[v29];
      v28 = v59;
      v23 = v29;
      *&v40[v29] = 0x8000000000000000;
      v42 = sub_2245096C8(v38, v37);
      v44 = *(v28 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_23;
      }

      v29 = v43;
      if (*(v28 + 24) < v47)
      {
        sub_22458DA04(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_2245096C8(v38, v37);
        if ((v29 & 1) != (v48 & 1))
        {
          result = sub_2246286D8();
          __break(1u);
          return result;
        }

LABEL_17:
        if (v29)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v52 = v42;
      sub_22458F8A8();
      v42 = v52;
      if (v29)
      {
LABEL_4:
        v32 = v42;

        v28 = v59;
        v33 = v59[7];
        v34 = *(v33 + 8 * v32);
        *(v33 + 8 * v32) = v39;

        goto LABEL_5;
      }

LABEL_18:
      v28 = v59;
      v59[(v42 >> 6) + 8] |= 1 << v42;
      v49 = (*(v28 + 48) + 16 * v42);
      *v49 = v38;
      v49[1] = v37;
      *(*(v28 + 56) + 8 * v42) = v39;

      v50 = *(v28 + 16);
      v46 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v46)
      {
        goto LABEL_24;
      }

      *(v28 + 16) = v51;
LABEL_5:
      v29 = v23;
      *&v58[v23] = v28;

      ++v31;
      v28 = v56;
      if (v57 == i)
      {
        return v29;
      }
    }

    if (v31 >= *(v54 + 16))
    {
      goto LABEL_25;
    }

    v35 = *(v28 + 8 * v31 + 32);
    v36 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return v29;
}

id sub_2245C8E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a4;
  v28 = a5;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9D40);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  sub_224627B68();
  sub_224627088();
  sub_224627088();
  v13 = OBJC_IVAR____TtC11DockKitCore19ActuationController_feedbackLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v5[v13] = v14;
  *&v5[OBJC_IVAR____TtC11DockKitCore19ActuationController_yawOffset] = 0;
  *&v5[OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle] = 0;
  v15 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress;
  type metadata accessor for TrajectoryCommand.StampedProgress(0);
  v16 = swift_allocObject();
  *(v16 + 18) = 0;
  *(v16 + 16) = 1536;
  sub_224627088();
  v17 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v16 + v17) = v18;
  *&v5[v15] = v16;
  v19 = OBJC_IVAR____TtC11DockKitCore19ActuationController_imu;
  type metadata accessor for StandOrientationMonitor();
  swift_allocObject();
  *&v5[v19] = sub_22460AC58();
  v20 = OBJC_IVAR____TtC11DockKitCore19ActuationController__actuationLock;
  sub_2246274B8();
  *&v5[v20] = sub_2246274A8();
  v21 = OBJC_IVAR____TtC11DockKitCore19ActuationController__feedbackStarted;
  v31 = 0;
  sub_224627568();
  (*(v10 + 32))(&v6[v21], v12, v9);
  *&v6[OBJC_IVAR____TtC11DockKitCore19ActuationController_motionModel] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  *&v6[OBJC_IVAR____TtC11DockKitCore6System_type] = a3;
  v22 = &v6[OBJC_IVAR____TtC11DockKitCore6System_name];
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  v24 = type metadata accessor for System();
  v30.receiver = v6;
  v30.super_class = v24;
  v25 = objc_msgSendSuper2(&v30, sel_init);
  swift_unknownObjectWeakAssign();
  return v25;
}

uint64_t sub_2245C91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_224627118();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v62 = OBJC_IVAR____TtC11DockKitCore19ActuationController_lastFeedbackTime;
  if (v13)
  {
    v14 = 0;
    v54 = OBJC_IVAR____TtC11DockKitCore19ActuationController_yawOffset;
    v52 = OBJC_IVAR____TtC11DockKitCore19ActuationController_logger;
    v53 = OBJC_IVAR____TtC11DockKitCore19ActuationController_rotateCameraAngle;
    v57 = (v61 + 16);
    v58 = OBJC_IVAR____TtC11DockKitCore19ActuationController_imu;
    v56 = (v61 + 8);
    v51 = (v8 + 16);
    v50 = (v8 + 8);
    v49 = "_feedbackStarted";
    v60 = v66 + 32;
    v15 = (a1 + 40);
    *&v11 = 136315394;
    v48 = v11;
    v65 = a2;
    v55 = v7;
    v59 = v10;
    do
    {
      v16 = *(v4 + OBJC_IVAR____TtC11DockKitCore6System_components);
      if (*(v16 + 16))
      {
        v18 = *(v15 - 1);
        v17 = *v15;

        v19 = sub_2245096C8(v18, v17);
        if (v20)
        {
          v21 = *(*(v16 + 56) + 8 * v19);

          type metadata accessor for Actuator();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            if (v14 >= *(a2 + 16))
            {
            }

            else
            {
              v24 = *(a2 + 8 * v14 + 32);
              v25 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
              v26 = *(v22 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

              os_unfair_lock_lock(v26 + 4);

              *(v23 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition) = v24;
              v27 = *(v23 + v25);

              os_unfair_lock_unlock(v27 + 4);

              if (v18 == 7823737 && v17 == 0xE300000000000000)
              {

                a2 = v65;
                goto LABEL_15;
              }

              v28 = sub_224628688();

              a2 = v65;
              if (v28)
              {
LABEL_15:
                sub_22460B464(*&v24, 0, 0, 1, 0, 1);
                v29 = v63;
                v30 = v64;
                (*v57)(v63, v4 + v62, v64);
                sub_2246270B8();
                v32 = v31;
                (*v56)(v29, v30);
                if (fabs(v32) > 1.0)
                {
                  v33 = v55;
                  (*v51)(v59, v4 + v52, v55);

                  v34 = sub_224627B58();
                  v35 = sub_224628058();

                  if (os_log_type_enabled(v34, v35))
                  {
                    v36 = swift_slowAlloc();
                    v37 = swift_slowAlloc();
                    v67 = v37;
                    *v36 = v48;
                    *(v36 + 4) = sub_224509F28(0xD000000000000047, v49 | 0x8000000000000000, &v67);
                    *(v36 + 12) = 2048;
                    *(v36 + 14) = v24;
                    _os_log_impl(&dword_224507000, v34, v35, "%s Setting actuator start position to %f", v36, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1Tm(v37);
                    v38 = v37;
                    a2 = v65;
                    MEMORY[0x22AA526D0](v38, -1, -1);
                    MEMORY[0x22AA526D0](v36, -1, -1);

                    (*v50)(v59, v55);
                  }

                  else
                  {

                    (*v50)(v59, v33);
                  }

                  v39 = v53;
                  *(v4 + v54) = v24;
                  v40 = *(v4 + v39);
                  if (v40 != 0.0)
                  {
                    v41 = v53;
                    *(v4 + v54) = v24 + v40;
                    *(v4 + v41) = 0;
                  }
                }
              }
            }

            if (v14 < *(v66 + 16))
            {
              v42 = *(v60 + 8 * v14);
              v43 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
              v44 = *(v23 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

              os_unfair_lock_lock(v44 + 4);

              *(v23 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity) = v42;
              v45 = *(v23 + v43);
              a2 = v65;

              os_unfair_lock_unlock(v45 + 4);
            }

            goto LABEL_4;
          }
        }

        else
        {
        }
      }

LABEL_4:
      ++v14;
      v15 += 2;
    }

    while (v13 != v14);
  }

  v46 = v63;
  sub_224627108();
  return (*(v61 + 40))(v4 + v62, v46, v64);
}

uint64_t sub_2245C9794(void *a1)
{
  v3 = sub_224627118();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = TrajectoryCommand.Progress.init(nsdata:)(a1, &v14);
  v8 = v14 | (v15 << 16);
  if ((v14 & 0xFF00) != 0x600)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore19ActuationController_lastTrajectoryProgress);
    v10 = OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock;
    v11 = *(v9 + OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_lock);

    os_unfair_lock_lock(v11 + 4);

    *(v9 + 18) = BYTE2(v8);
    *(v9 + 16) = v8;
    sub_224627108();
    (*(v4 + 40))(v9 + OBJC_IVAR____TtCV11DockKitCore17TrajectoryCommand15StampedProgress_stamp, v6, v3);
    v12 = *(v9 + v10);

    os_unfair_lock_unlock(v12 + 4);
  }

  return result;
}

uint64_t _s11DockKitCore19ActuationControllerC12disconnected3errys5Error_pSg_tF_0()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore19ActuationController_logger, v1);
  v5 = sub_224627B58();
  v6 = sub_224628058();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224507000, v5, v6, "Actuation controller: got notification of disconnect", v7, 2u);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_2245C9A58()
{
  result = qword_27D0C9F80;
  if (!qword_27D0C9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9F80);
  }

  return result;
}

unint64_t sub_2245C9AB0()
{
  result = qword_27D0C9F88;
  if (!qword_27D0C9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9F88);
  }

  return result;
}

uint64_t type metadata accessor for ActuationController()
{
  result = qword_27D0C9F90;
  if (!qword_27D0C9F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2245C9BDC()
{
  sub_224627B78();
  if (v0 <= 0x3F)
  {
    sub_224627118();
    if (v1 <= 0x3F)
    {
      sub_2245C9D38();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2245C9D38()
{
  if (!qword_27D0C9FA0)
  {
    v0 = sub_224627598();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0C9FA0);
    }
  }
}

uint64_t sub_2245C9D88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245C7C44(v2, v3);
}

uint64_t sub_2245C9E34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245C783C(v2, v3, v4);
}

uint64_t sub_2245C9EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D030;

  return sub_2245C6C18(v2, v3, v4, v5, v6);
}

uint64_t sub_2245C9FB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245C697C(v2, v3, v5, v4);
}

uint64_t sub_2245CA070()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245C6530(v2, v3, v5, v4);
}

uint64_t sub_2245CA130()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D030;

  return sub_2245C581C(v5, v6, v2, v3, v4);
}

uint64_t objectdestroy_81Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2245CA248()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245C5590(v2, v3, v5, v4);
}

uint64_t objectdestroy_111Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2245CA348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D034;

  return sub_2245C45D4(v5, v6, v2, v3, v4);
}

uint64_t sub_2245CA42C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D034;

  return sub_2245CA8C4(a1, a2, 0, 0);
}

uint64_t sub_2245CA668(const void *a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  v7 = swift_allocObject();
  v3[4] = v7;
  *(v7 + 16) = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2245CA768;

  return sub_2245CA8C4(sub_2245D337C, v7, 0, 0);
}

uint64_t sub_2245CA768()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2245CA8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_224627B78();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245CA9B0, 0, 0);
}

uint64_t sub_2245CA9B0()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = OBJC_IVAR___SystemEventsAgent_logger;
  v0[21] = OBJC_IVAR___SystemEventsAgent_logger;
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_224627B58();
  v8 = sub_224628028();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224507000, v7, v8, "registering system events agent", v9, 2u);
    MEMORY[0x22AA526D0](v9, -1, -1);
  }

  v10 = v0[20];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];

  v14 = *(v12 + 8);
  v0[24] = v14;
  v14(v10, v11);
  v15 = OBJC_IVAR___SystemEventsAgent_lock;
  v0[25] = OBJC_IVAR___SystemEventsAgent_lock;
  v0[26] = *(v13 + v15);
  v18 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v16 = swift_task_alloc();
  v0[27] = v16;
  *v16 = v0;
  v16[1] = sub_2245CAB50;

  return v18();
}

uint64_t sub_2245CAB50()
{

  return MEMORY[0x2822009F8](sub_2245CAC68, 0, 0);
}

uint64_t sub_2245CAC68()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = (v2 + OBJC_IVAR___SystemEventsAgent_callback);
  v6 = *(v2 + OBJC_IVAR___SystemEventsAgent_callback);
  *v5 = *(v0 + 80);
  v5[1] = v3;

  sub_224512308(v6);
  v7 = OBJC_IVAR___SystemEventsAgent_connectedCallback;
  *(v0 + 224) = OBJC_IVAR___SystemEventsAgent_connectedCallback;
  v8 = (v2 + v7);
  v9 = *v8;
  *v8 = v4;
  v8[1] = v1;
  sub_2245122DC(v4);
  sub_224512308(v9);
  v10 = OBJC_IVAR___SystemEventsAgent_manager;
  *(v0 + 232) = OBJC_IVAR___SystemEventsAgent_manager;
  v11 = *(v2 + v10);
  v12 = *(v0 + 112);
  if (v11)
  {
LABEL_2:
    v13 = v11;
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v12, &protocol witness table for SystemEventsAgent, 1);

    v12 = *(v0 + 112);
LABEL_8:
    (*(v0 + 176))(*(v0 + 144), v12 + *(v0 + 168), *(v0 + 120));
    v34 = sub_224627B58();
    v35 = sub_224628058();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_224507000, v34, v35, "registered for state events", v36, 2u);
      MEMORY[0x22AA526D0](v36, -1, -1);
    }

    v37 = *(v0 + 200);
    v38 = *(v0 + 112);
    (*(v0 + 192))(*(v0 + 144), *(v0 + 120));
    *(v0 + 296) = *(v38 + v37);
    sub_2246274B8();
    sub_2245D2018();

    v40 = sub_224627F28();

    return MEMORY[0x2822009F8](sub_2245CC0A4, v40, v39);
  }

  v14 = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];
  v15 = *(v2 + v10);
  *(v2 + v10) = v14;
  v16 = v14;

  type metadata accessor for DKPanoramaController();
  swift_allocObject();
  v17 = sub_22450D878();

  *(v12 + OBJC_IVAR___SystemEventsAgent_panoramaController) = v17;

  v18 = type metadata accessor for DeviceNotification();
  v19 = objc_allocWithZone(v18);
  v20 = DeviceNotification.init(name:)(0xD000000000000022, 0x8000000224637730);
  v21 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v22 = *&v20[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v22 + 4);

  v23 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v20[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v20[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v24 = *&v20[v23];
  v25 = *&v20[v21];

  os_unfair_lock_unlock(v25 + 4);

  v26 = objc_allocWithZone(v18);
  v27 = DeviceNotification.init(name:)(0xD000000000000027, 0x8000000224639700);
  v28 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v29 = *&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v27[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  *(v0 + 240) = *&v27[v30];
  v31 = *&v27[v28];

  os_unfair_lock_unlock(v31 + 4);

  if (v24 != 1)
  {
    v12 = *(v0 + 112);
    v11 = *(v12 + *(v0 + 232));
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

  v32 = swift_task_alloc();
  *(v0 + 248) = v32;
  *v32 = v0;
  v32[1] = sub_2245CB1A8;

  return sub_2245CF1DC();
}

uint64_t sub_2245CB1A8(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_2245CB2A8, 0, 0);
}

uint64_t sub_2245CB2A8()
{
  v1 = *(v0 + 256);
  if (!v1)
  {
    goto LABEL_10;
  }

  (*(v0 + 176))(*(v0 + 152), *(v0 + 112) + *(v0 + 168), *(v0 + 120));
  v2 = sub_224627B58();
  v3 = sub_224628058();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_224507000, v2, v3, "starting system events", v4, 2u);
    MEMORY[0x22AA526D0](v4, -1, -1);
  }

  v5 = *(v0 + 256);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v9 = *(v0 + 112);

  v6(v7, v8);
  v10 = OBJC_IVAR___SystemEventsAgent_tracker;
  *(v0 + 264) = OBJC_IVAR___SystemEventsAgent_tracker;
  v11 = *(v9 + v10);
  *(v9 + v10) = v5;
  v12 = v1;

  v13 = *(v9 + v10);
  if (!v13)
  {

LABEL_10:
    if (*(v0 + 240) == 1)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 112);
      *(v18 + OBJC_IVAR___SystemEventsAgent_connectedTracking) = 1;
      v19 = *(v18 + v17);
      if (v19)
      {

        v19(1);
        sub_224512308(v19);
      }
    }

    v20 = *(v0 + 112);
    v21 = *(v20 + *(v0 + 232));
    if (v21)
    {
      v22 = v21;
      DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v20, &protocol witness table for SystemEventsAgent, 1);

      v20 = *(v0 + 112);
    }

    (*(v0 + 176))(*(v0 + 144), v20 + *(v0 + 168), *(v0 + 120));
    v27 = sub_224627B58();
    v28 = sub_224628058();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224507000, v27, v28, "registered for state events", v29, 2u);
      MEMORY[0x22AA526D0](v29, -1, -1);
    }

    v30 = *(v0 + 200);
    v31 = *(v0 + 112);
    (*(v0 + 192))(*(v0 + 144), *(v0 + 120));
    *(v0 + 296) = *(v31 + v30);
    sub_2246274B8();
    sub_2245D2018();

    v32 = sub_224627F28();
    v34 = v33;
    v24 = sub_2245CC0A4;
    v25 = v32;
    v26 = v34;
    goto LABEL_19;
  }

  v14 = *&v13[OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController];
  *(v0 + 272) = v14;
  if (v14)
  {
    v14;
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_2245CB75C;

    return sub_2245BB528();
  }

  *(v0 + 288) = v13;
  v23 = v13;
  v24 = sub_2245CBBB8;
  v25 = 0;
  v26 = 0;
LABEL_19:

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2245CB75C()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x2822009F8](sub_2245CB870, 0, 0);
}

uint64_t sub_2245CB870()
{
  v1 = *(*(v0 + 112) + *(v0 + 264));
  if (v1)
  {
    *(v0 + 288) = v1;
    v2 = v1;
    v3 = sub_2245CBBB8;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    if (*(v0 + 240) == 1)
    {
      v6 = *(v0 + 224);
      v7 = *(v0 + 112);
      *(v7 + OBJC_IVAR___SystemEventsAgent_connectedTracking) = 1;
      v8 = *(v7 + v6);
      if (v8)
      {

        v8(1);
        sub_224512308(v8);
      }
    }

    v9 = *(v0 + 112);
    v10 = *(v9 + *(v0 + 232));
    if (v10)
    {
      v11 = v10;
      DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v9, &protocol witness table for SystemEventsAgent, 1);

      v9 = *(v0 + 112);
    }

    (*(v0 + 176))(*(v0 + 144), v9 + *(v0 + 168), *(v0 + 120));
    v12 = sub_224627B58();
    v13 = sub_224628058();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_224507000, v12, v13, "registered for state events", v14, 2u);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    v15 = *(v0 + 200);
    v16 = *(v0 + 112);
    (*(v0 + 192))(*(v0 + 144), *(v0 + 120));
    *(v0 + 296) = *(v16 + v15);
    sub_2246274B8();
    sub_2245D2018();

    v17 = sub_224627F28();
    v19 = v18;
    v3 = sub_2245CC0A4;
    v4 = v17;
    v5 = v19;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2245CBBB8()
{
  v1 = v0[36];
  v2 = v0[14];
  v0[2] = v0;
  v0[3] = sub_2245CBC64;
  v3 = swift_continuation_init();
  sub_22457CFF8(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245CBC64()
{
  v1 = *(*v0 + 48);
  if (v1)
  {
    swift_willThrow();

    v2 = sub_2245CBD8C;
  }

  else
  {
    v2 = sub_2245D3378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245CBD8C()
{
  v1 = *(v0 + 256);

  if (*(v0 + 240) == 1)
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 112);
    *(v3 + OBJC_IVAR___SystemEventsAgent_connectedTracking) = 1;
    v4 = *(v3 + v2);
    if (v4)
    {

      v4(1);
      sub_224512308(v4);
    }
  }

  v5 = *(v0 + 112);
  v6 = *(v5 + *(v0 + 232));
  if (v6)
  {
    v7 = v6;
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v5, &protocol witness table for SystemEventsAgent, 1);

    v5 = *(v0 + 112);
  }

  (*(v0 + 176))(*(v0 + 144), v5 + *(v0 + 168), *(v0 + 120));
  v8 = sub_224627B58();
  v9 = sub_224628058();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224507000, v8, v9, "registered for state events", v10, 2u);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  v11 = *(v0 + 200);
  v12 = *(v0 + 112);
  (*(v0 + 192))(*(v0 + 144), *(v0 + 120));
  *(v0 + 296) = *(v12 + v11);
  sub_2246274B8();
  sub_2245D2018();

  v14 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CC0A4, v14, v13);
}

uint64_t sub_2245CC0A4()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245CC2E4(const void *a1, const void *a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = _Block_copy(a1);
  v9 = _Block_copy(a2);
  v4[3] = _Block_copy(a3);
  v10 = swift_allocObject();
  v4[4] = v10;
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_2245D3384;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v9;
  v4[6] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[7] = v12;
  *v12 = v4;
  v12[1] = sub_2245CC43C;

  return sub_2245CA8C4(sub_2245B5DEC, v10, v9, v11);
}

uint64_t sub_2245CC43C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  sub_224512308(v1);

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2245CC5D4()
{
  v1[10] = v0;
  v2 = sub_224627B78();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245CC694, 0, 0);
}

uint64_t sub_2245CC694()
{
  (*(v0[12] + 16))(v0[13], v0[10] + OBJC_IVAR___SystemEventsAgent_logger, v0[11]);
  v1 = sub_224627B58();
  v2 = sub_224628028();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "de-registering system events agent", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR___SystemEventsAgent_lock;
  v0[14] = OBJC_IVAR___SystemEventsAgent_lock;
  v0[15] = *(v7 + v8);
  v11 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2245CC818;

  return v11();
}

uint64_t sub_2245CC818()
{

  return MEMORY[0x2822009F8](sub_2245CC930, 0, 0);
}

uint64_t sub_2245CC930()
{
  v1 = v0[10];
  v2 = OBJC_IVAR___SystemEventsAgent_manager;
  v0[17] = OBJC_IVAR___SystemEventsAgent_manager;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification];
    if (v4)
    {
      *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification] = 0;
      v5 = v3;
    }

    else
    {
      v6 = v3;
    }

    v7 = *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification];
    if (v7)
    {
      *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification] = 0;

      v3 = v7;
    }

    v1 = v0[10];
  }

  v8 = OBJC_IVAR___SystemEventsAgent_tracker;
  v0[18] = OBJC_IVAR___SystemEventsAgent_tracker;
  v9 = *(v1 + v8);
  v0[19] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = sub_2245CCB20;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = *(v1 + v0[17]);
    if (v14)
    {
      v15 = v14;
      DockCoreManager.disconnect()();

      v8 = v0[18];
      v1 = v0[10];
      v16 = *(v1 + v8);
      if (v16)
      {
        v17 = v16;
        sub_2245697B8(0);

        v8 = v0[18];
        v1 = v0[10];
      }
    }

    v18 = v0[17];
    v19 = v0[14];
    v20 = *(v1 + v18);
    *(v1 + v18) = 0;

    v21 = *(v1 + v8);
    *(v1 + v8) = 0;

    v22 = (v1 + OBJC_IVAR___SystemEventsAgent_callback);
    v23 = *(v1 + OBJC_IVAR___SystemEventsAgent_callback);
    *v22 = 0;
    v22[1] = 0;
    sub_224512308(v23);
    v24 = (v1 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
    v25 = *(v1 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
    *v24 = 0;
    v24[1] = 0;
    sub_224512308(v25);
    *(v1 + OBJC_IVAR___SystemEventsAgent_panoramaController) = 0;

    v0[20] = *(v1 + v19);
    sub_2246274B8();
    sub_2245D2018();

    v26 = sub_224627F28();
    v28 = v27;
    v11 = sub_2245CCE3C;
    v12 = v26;
    v13 = v28;
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2245CCB20()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_2245CCBBC;
  v2 = swift_continuation_init();
  sub_224573864(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245CCBBC()
{
  v1 = *(*v0 + 48);
  if (v1)
  {
    swift_willThrow();

    v2 = sub_2245D3374;
  }

  else
  {
    v2 = sub_2245CCCE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245CCCE4()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + *(v0 + 136));
  if (v2)
  {
    v3 = v2;
    DockCoreManager.disconnect()();

    v1 = *(v0 + 80);
  }

  v4 = *(v0 + 144);
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    sub_2245697B8(0);

    v4 = *(v0 + 144);
    v1 = *(v0 + 80);
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v1 + v7);
  *(v1 + v7) = 0;

  v10 = *(v1 + v4);
  *(v1 + v4) = 0;

  v11 = (v1 + OBJC_IVAR___SystemEventsAgent_callback);
  v12 = *(v1 + OBJC_IVAR___SystemEventsAgent_callback);
  *v11 = 0;
  v11[1] = 0;
  sub_224512308(v12);
  v13 = (v1 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  v14 = *(v1 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  *v13 = 0;
  v13[1] = 0;
  sub_224512308(v14);
  *(v1 + OBJC_IVAR___SystemEventsAgent_panoramaController) = 0;

  *(v0 + 160) = *(v1 + v8);
  sub_2246274B8();
  sub_2245D2018();

  v16 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CCE3C, v16, v15);
}

uint64_t sub_2245CCE3C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245CD024(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245466C4;

  return sub_2245CC5D4();
}

uint64_t sub_2245CD0FC()
{
  v35 = sub_224627B88();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v2 = (&v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_224627BE8();
  v32 = *(v34 - 8);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_224627B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v31 = v0;
  v14(v13, &v0[OBJC_IVAR___SystemEventsAgent_logger], v10);
  v15 = sub_224627B58();
  v16 = sub_224628028();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224507000, v15, v16, "de-registering system events agent synchronously", v17, 2u);
    MEMORY[0x22AA526D0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = sub_224627F78();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v31;
  v20[4] = v31;
  v20[5] = v18;
  v22 = v21;
  v23 = v18;
  sub_224536440(0, 0, v9, &unk_224632858, v20);

  sub_224627BD8();
  *v2 = 5;
  v24 = v33;
  v25 = v35;
  (*(v33 + 104))(v2, *MEMORY[0x277D85188], v35);
  v26 = v30;
  MEMORY[0x22AA51090](v5, v2);
  (*(v24 + 8))(v2, v25);
  v27 = *(v32 + 8);
  v28 = v34;
  v27(v5, v34);
  sub_224628068();

  return (v27)(v26, v28);
}

uint64_t sub_2245CD520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_2245CD5B4;

  return sub_2245CC5D4();
}

uint64_t sub_2245CD5B4()
{

  return MEMORY[0x2822009F8](sub_2245CD6B0, 0, 0);
}

uint64_t sub_2245CD6B0()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id SystemEventsAgent.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR___SystemEventsAgent_logger], v2);
  v6 = sub_224627B58();
  v7 = sub_224628028();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "de-initing system events agent", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR___SystemEventsAgent_manager;
  v10 = *&v1[OBJC_IVAR___SystemEventsAgent_manager];
  if (v10)
  {
    v11 = v10;
    DockCoreManager.disconnect()();
  }

  v12 = OBJC_IVAR___SystemEventsAgent_tracker;
  v13 = *&v1[OBJC_IVAR___SystemEventsAgent_tracker];
  if (v13)
  {
    v14 = v13;
    sub_2245697B8(0);
  }

  v15 = *&v1[v9];
  *&v1[v9] = 0;

  v16 = *&v1[v12];
  *&v1[v12] = 0;

  v17 = &v1[OBJC_IVAR___SystemEventsAgent_callback];
  v18 = *&v1[OBJC_IVAR___SystemEventsAgent_callback];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_224512308(v18);
  v19 = &v1[OBJC_IVAR___SystemEventsAgent_connectedCallback];
  v20 = *&v1[OBJC_IVAR___SystemEventsAgent_connectedCallback];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_224512308(v20);
  v21 = type metadata accessor for SystemEventsAgent();
  v23.receiver = v1;
  v23.super_class = v21;
  return objc_msgSendSuper2(&v23, sel_dealloc);
}

uint64_t sub_2245CDA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a2;
  v11[6] = a4;
  v12 = v4;
  sub_224536440(0, 0, v9, &unk_224632868, v11);
}

uint64_t sub_2245CDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_224627B78();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245CDC60, 0, 0);
}

uint64_t sub_2245CDC60()
{
  v1 = v0[18];
  v2 = OBJC_IVAR___SystemEventsAgent_lock;
  v0[27] = OBJC_IVAR___SystemEventsAgent_lock;
  v0[28] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2245CDD28;

  return v5();
}

uint64_t sub_2245CDD28()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 240) = v3;
  *v3 = v2;
  v3[1] = sub_2245CDE84;

  return sub_2245CF1DC();
}

uint64_t sub_2245CDE84(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_2245CDF84, 0, 0);
}

uint64_t sub_2245CDF84()
{
  v1 = v0[19];
  v2 = v0[18];
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0[20] == 1;
  }

  v4 = v3;
  *(v2 + OBJC_IVAR___SystemEventsAgent_connectedTracking) = v4;
  v5 = OBJC_IVAR___SystemEventsAgent_tracker;
  v0[32] = OBJC_IVAR___SystemEventsAgent_tracker;
  v6 = *(v2 + v5);
  v0[33] = v6;
  v7 = v0[31];
  if (v6)
  {
    if (!v7 && v0[19] == 1)
    {
      v8 = v0[26];
      v9 = v0[21];
      v10 = v0[22];
      v11 = v0[18];
      v12 = OBJC_IVAR___SystemEventsAgent_logger;
      v0[34] = OBJC_IVAR___SystemEventsAgent_logger;
      v13 = *(v10 + 16);
      v0[35] = v13;
      v0[36] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v13(v8, v11 + v12, v9);
      v14 = v6;
      v15 = sub_224627B58();
      v16 = sub_224628058();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_224507000, v15, v16, "stopping system events", v17, 2u);
        MEMORY[0x22AA526D0](v17, -1, -1);
      }

      v18 = v0[26];
      v19 = v0[21];
      v20 = v0[22];

      v21 = *(v20 + 8);
      v0[37] = v21;
      v21(v18, v19);
      v22 = sub_2245CE374;
      goto LABEL_13;
    }

LABEL_16:
    v0[47] = *(v0[18] + v0[27]);
    sub_2246274B8();
    sub_2245D2018();

    v25 = sub_224627F28();
    v27 = v26;
    v22 = sub_2245CEFC0;
    v23 = v25;
    v24 = v27;
    goto LABEL_17;
  }

  if (!v7 || v1)
  {
    goto LABEL_16;
  }

  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[22];
  v31 = v0[18];
  v32 = OBJC_IVAR___SystemEventsAgent_logger;
  v0[39] = OBJC_IVAR___SystemEventsAgent_logger;
  v33 = *(v30 + 16);
  v0[40] = v33;
  v0[41] = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v28, v31 + v32, v29);
  v34 = v7;
  v35 = sub_224627B58();
  v36 = sub_224628058();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_224507000, v35, v36, "starting system events", v37, 2u);
    MEMORY[0x22AA526D0](v37, -1, -1);
  }

  v38 = v0[31];
  v39 = v0[24];
  v40 = v0[21];
  v41 = v0[22];

  v42 = *(v41 + 8);
  v0[42] = v42;
  v42(v39, v40);
  v43 = *(v2 + v5);
  *(v2 + v5) = v38;
  v44 = v34;

  v45 = *(v2 + v5);
  if (!v45)
  {
    v48 = *(v0[18] + OBJC_IVAR___SystemEventsAgent_connectedCallback);
    v49 = v0[31];
    if (v48)
    {

      v48(1);

      sub_224512308(v48);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v46 = *&v45[OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController];
  v0[43] = v46;
  if (!v46)
  {
    v0[45] = v45;
    v50 = v45;
    v22 = sub_2245CEAD0;
LABEL_13:
    v23 = 0;
    v24 = 0;
LABEL_17:

    return MEMORY[0x2822009F8](v22, v23, v24);
  }

  v46;
  v47 = swift_task_alloc();
  v0[44] = v47;
  *v47 = v0;
  v47[1] = sub_2245CE894;

  return sub_2245BB528();
}

uint64_t sub_2245CE374()
{
  v1 = v0[33];
  v0[10] = v0;
  v0[11] = sub_2245CE410;
  v2 = swift_continuation_init();
  sub_224573864(v1, v2);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245CE410()
{
  v1 = *(*v0 + 112);
  *(*v0 + 304) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245CE64C;
  }

  else
  {
    v2 = sub_2245CE52C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245CE52C()
{
  v1 = v0[32];
  v2 = v0[18];
  v3 = *(v2 + v1);
  if (v3)
  {
    v4 = v3;
    sub_2245697B8(0);

    v3 = *(v2 + v1);
    v1 = v0[32];
    v2 = v0[18];
  }

  *(v2 + v1) = 0;

  v5 = *(v2 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  v6 = v0[33];
  if (v5)
  {

    v5(0);
    sub_224512308(v5);
  }

  v0[47] = *(v0[18] + v0[27]);
  sub_2246274B8();
  sub_2245D2018();

  v8 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CEFC0, v8, v7);
}

uint64_t sub_2245CE64C()
{
  v1 = *(v0 + 304);
  (*(v0 + 280))(*(v0 + 200), *(v0 + 144) + *(v0 + 272), *(v0 + 168));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628058();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 304);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_224507000, v3, v4, "error stopping system events data: %@", v7, 0xCu);
    sub_2245BA66C(v8);
    MEMORY[0x22AA526D0](v8, -1, -1);
    MEMORY[0x22AA526D0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 296))(*(v0 + 200), *(v0 + 168));
  v11 = *(v0 + 256);
  v12 = *(v0 + 144);
  v13 = *(v12 + v11);
  if (v13)
  {
    v14 = v13;
    sub_2245697B8(0);

    v13 = *(v12 + v11);
    v11 = *(v0 + 256);
    v12 = *(v0 + 144);
  }

  *(v12 + v11) = 0;

  v15 = *(v12 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  v16 = *(v0 + 264);
  if (v15)
  {

    v15(0);
    sub_224512308(v15);
  }

  *(v0 + 376) = *(*(v0 + 144) + *(v0 + 216));
  sub_2246274B8();
  sub_2245D2018();

  v18 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CEFC0, v18, v17);
}

uint64_t sub_2245CE894()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_2245CE9A8, 0, 0);
}

uint64_t sub_2245CE9A8()
{
  v1 = v0[18];
  v2 = *(v1 + v0[32]);
  if (v2)
  {
    v0[45] = v2;
    v3 = v2;
    v4 = sub_2245CEAD0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR___SystemEventsAgent_connectedCallback);
    v8 = v0[31];
    if (v7)
    {

      v7(1);

      sub_224512308(v7);
    }

    else
    {
    }

    v0[47] = *(v0[18] + v0[27]);
    sub_2246274B8();
    sub_2245D2018();

    v9 = sub_224627F28();
    v11 = v10;
    v4 = sub_2245CEFC0;
    v5 = v9;
    v6 = v11;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2245CEAD0()
{
  v1 = v0[45];
  v2 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2245CEB7C;
  v3 = swift_continuation_init();
  sub_22457CFF8(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245CEB7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245CED94;
  }

  else
  {
    v2 = sub_2245CEC98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245CEC98()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  v2 = *(v0 + 248);
  if (v1)
  {

    v1(1);

    sub_224512308(v1);
  }

  else
  {
  }

  *(v0 + 376) = *(*(v0 + 144) + *(v0 + 216));
  sub_2246274B8();
  sub_2245D2018();

  v4 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CEFC0, v4, v3);
}

uint64_t sub_2245CED94()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 312);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628058();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 368);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_224507000, v8, v9, "error starting system events data: %@", v12, 0xCu);
    sub_2245BA66C(v13);
    MEMORY[0x22AA526D0](v13, -1, -1);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 336))(*(v0 + 184), *(v0 + 168));
  v16 = *(*(v0 + 144) + OBJC_IVAR___SystemEventsAgent_connectedCallback);
  v17 = *(v0 + 248);
  if (v16)
  {

    v16(1);

    sub_224512308(v16);
  }

  else
  {
  }

  *(v0 + 376) = *(*(v0 + 144) + *(v0 + 216));
  sub_2246274B8();
  sub_2245D2018();

  v19 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245CEFC0, v19, v18);
}

uint64_t sub_2245CEFC0()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_2245CF030, 0, 0);
}

uint64_t sub_2245CF030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245CF1DC()
{
  v1[11] = v0;
  v2 = sub_224627B78();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245CF2B4, 0, 0);
}

uint64_t sub_2245CF2B4()
{
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR___SystemEventsAgent_manager);
  v0[17] = v2;
  if (v2)
  {
    v3 = v2;

    return MEMORY[0x2822009F8](sub_2245CF450, 0, 0);
  }

  else
  {
    (*(v0[13] + 16))(v0[14], v1 + OBJC_IVAR___SystemEventsAgent_logger, v0[12]);
    v4 = sub_224627B58();
    v5 = sub_224628058();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_224507000, v4, v5, "manager is nil, can't get/set tracker", v10, 2u);
      MEMORY[0x22AA526D0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_2245CF450()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245CF4F4;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245CF4F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245CF7FC;
  }

  else
  {
    *(v1 + 152) = *(v1 + 80);
    v3 = sub_2245CF618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245CF618()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    type metadata accessor for TrackingStand();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      (*(*(v0 + 104) + 16))(*(v0 + 120), *(v0 + 88) + OBJC_IVAR___SystemEventsAgent_logger, *(v0 + 96));
      v4 = v1;
      v5 = sub_224627B58();
      v6 = sub_224628058();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 136);
      if (v7)
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v3;
        *v10 = v3;
        v11 = v4;
        _os_log_impl(&dword_224507000, v5, v6, "daemon connected %@", v9, 0xCu);
        sub_2245BA66C(v10);
        MEMORY[0x22AA526D0](v10, -1, -1);
        MEMORY[0x22AA526D0](v9, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
      goto LABEL_10;
    }

    v12 = *(v0 + 136);
  }

  else
  {
  }

  v3 = 0;
LABEL_10:

  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_2245CF7FC()
{
  v1 = v0[18];
  (*(v0[13] + 16))(v0[16], v0[11] + OBJC_IVAR___SystemEventsAgent_logger, v0[12]);
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628048();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[17];
  v6 = v0[18];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224507000, v3, v4, "Failed fetching connected accessory: %@", v8, 0xCu);
    sub_2245BA66C(v9);
    MEMORY[0x22AA526D0](v9, -1, -1);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[16], v0[12]);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2245CFB28(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_224549534;

  return sub_2245CF1DC();
}

void sub_2245CFBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___SystemEventsAgent_callback);
  if (v3)
  {

    v3(a2);

    sub_224512308(v3);
  }
}

uint64_t sub_2245CFD14()
{
  v1 = *(v0[2] + OBJC_IVAR___SystemEventsAgent_panoramaController);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_2245CFDF8;

    return sub_2245B6F94(0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2245CFDF8()
{

  return MEMORY[0x2822009F8](sub_2245CFEF4, 0, 0);
}

uint64_t sub_2245CFEF4()
{
  *(*(v0 + 24) + 26) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245D00D0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245D0148, 0, 0);
}

uint64_t sub_2245D0148()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR___SystemEventsAgent_panoramaController];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_2245D024C;

    return sub_2245B6F94(0);
  }

  else
  {

    v5 = v0[3];
    v5[2](v5);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2245D024C()
{

  return MEMORY[0x2822009F8](sub_2245D0348, 0, 0);
}

uint64_t sub_2245D0348()
{
  v1 = *(v0 + 32);

  *(v1 + 26) = 1;

  v2 = *(v0 + 24);
  v2[2](v2);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245D03F8()
{
  v1 = *(v0[2] + OBJC_IVAR___SystemEventsAgent_panoramaController);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_2245D04DC;

    return sub_2245B6F94(1);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2245D04DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2245D0760(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245D07D8, 0, 0);
}

uint64_t sub_2245D07D8()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR___SystemEventsAgent_panoramaController];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_2245D08DC;

    return sub_2245B6F94(1);
  }

  else
  {
    v5 = v0[3];

    v5[2](v5);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2245D08DC()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 24);

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2245D0A3C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___SystemEventsAgent_panoramaController);
  if (v2)
  {
    *(v2 + 26) = result;
  }

  return result;
}

uint64_t sub_2245D0A6C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_2245D0A94, 0, 0);
}

uint64_t sub_2245D0A94()
{
  v1 = *(v0 + 32);
  if (*(v1 + OBJC_IVAR___SystemEventsAgent_connectedTracking) == 1 && (v2 = *(v1 + OBJC_IVAR___SystemEventsAgent_tracker), (*(v0 + 40) = v2) != 0) && (v3 = *(v1 + OBJC_IVAR___SystemEventsAgent_panoramaController), (*(v0 + 48) = v3) != 0))
  {
    v4 = v2;

    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_2245D0BBC;
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 64);

    return sub_2245B74A4(v4, v8, v6, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2245D0BBC()
{

  return MEMORY[0x2822009F8](sub_2245B90CC, 0, 0);
}

uint64_t sub_2245D0E6C(char a1, void *aBlock, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = _Block_copy(aBlock);
  v4[3] = _Block_copy(a3);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_2245D2F48;
  }

  else
  {
    v9 = 0;
  }

  v4[4] = v8;
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2245D0F8C;

  return sub_2245D0A6C(a1, v8, v9);
}

uint64_t sub_2245D0F8C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  sub_224512308(v1);

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2245D1120()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR___SystemEventsAgent_connectedTracking) == 1 && (v2 = *(v1 + OBJC_IVAR___SystemEventsAgent_tracker), (v0[3] = v2) != 0) && (v3 = *(v1 + OBJC_IVAR___SystemEventsAgent_panoramaController), (v0[4] = v3) != 0))
  {
    v4 = v2;

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2245D1244;

    return DKPanoramaController.stopPanorama(for:)(v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2245D1244()
{

  return MEMORY[0x2822009F8](sub_2245D135C, 0, 0);
}

uint64_t sub_2245D135C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245D1530(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2245627E0;

  return sub_2245D1100();
}

uint64_t sub_2245D15D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_224627F78();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_224536440(0, 0, v3, &unk_224632898, v5);
}

uint64_t sub_2245D16FC()
{
  v1 = v0[10];
  v2 = OBJC_IVAR___SystemEventsAgent_lock;
  v0[11] = OBJC_IVAR___SystemEventsAgent_lock;
  v0[12] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2245D17C4;

  return v5();
}

uint64_t sub_2245D17C4()
{

  return MEMORY[0x2822009F8](sub_2245D18DC, 0, 0);
}

uint64_t sub_2245D18DC()
{
  v1 = v0[10];
  v2 = *(v1 + OBJC_IVAR___SystemEventsAgent_tracker);
  v0[14] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_2245D19BC;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v0[15] = *(v1 + v0[11]);
    sub_2246274B8();
    sub_2245D2018();

    v7 = sub_224627F28();
    v9 = v8;
    v4 = sub_2245D1C2C;
    v5 = v7;
    v6 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2245D19BC()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_2245D1A58;
  v2 = swift_continuation_init();
  sub_224573864(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D1A58()
{
  v1 = *(*v0 + 48);
  if (v1)
  {
    swift_willThrow();

    v2 = sub_2245D3380;
  }

  else
  {
    v2 = sub_2245D1B80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D1B80()
{
  *(v0 + 120) = *(*(v0 + 80) + *(v0 + 88));
  sub_2246274B8();
  sub_2245D2018();

  v2 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245D1C2C, v2, v1);
}

uint64_t sub_2245D1C2C()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

id SystemEventsAgent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemEventsAgent.init()()
{
  *&v0[OBJC_IVAR___SystemEventsAgent_manager] = 0;
  sub_224627B68();
  v1 = OBJC_IVAR___SystemEventsAgent_lock;
  sub_2246274B8();
  *&v0[v1] = sub_2246274A8();
  *&v0[OBJC_IVAR___SystemEventsAgent_tracker] = 0;
  v2 = &v0[OBJC_IVAR___SystemEventsAgent_callback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___SystemEventsAgent_connectedCallback];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR___SystemEventsAgent_connectedTracking] = 0;
  *&v0[OBJC_IVAR___SystemEventsAgent_kMAX_TIMEOUT_SECONDS] = 5;
  *&v0[OBJC_IVAR___SystemEventsAgent_panoramaController] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SystemEventsAgent();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2245D1F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = a2;
  v11[6] = a4;
  v12 = v4;
  sub_224536440(0, 0, v9, &unk_224632A60, v11);
}

unint64_t sub_2245D2018()
{
  result = qword_280C51570;
  if (!qword_280C51570)
  {
    sub_2246274B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C51570);
  }

  return result;
}

uint64_t sub_2245D2070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22450D030;

  return sub_2245CD520(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for SystemEventsAgent()
{
  result = qword_280C51670;
  if (!qword_280C51670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2245D217C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245CDB78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2245D2244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D030;

  return sub_2245D16DC(a1, v4, v5, v6);
}

uint64_t sub_2245D2300()
{
  result = sub_224627B78();
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

uint64_t dispatch thunk of SystemEventsAgent.register(callback:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x158);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D030;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SystemEventsAgent.register(callback:connectedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x160);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22450D030;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SystemEventsAgent.deregister()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x168);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D034;

  return v5();
}

uint64_t dispatch thunk of SystemEventsAgent.initializePanorama()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x198);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t dispatch thunk of SystemEventsAgent.deinitializePanorama()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1A0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t dispatch thunk of SystemEventsAgent.startPanoramaCapture(orientation:finishedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x1B0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D030;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SystemEventsAgent.stopPanoramaCapture()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t sub_2245D2DD8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245D1530(v2, v3);
}

uint64_t sub_2245D2E84()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245D0E6C(v5, v2, v3, v4);
}

uint64_t sub_2245D2F50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245D0760(v2, v3);
}

uint64_t sub_2245D2FFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245D00D0(v2, v3);
}

uint64_t sub_2245D30A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245CFB28(v2, v3);
}

uint64_t sub_2245D3154()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245CD024(v2, v3);
}

uint64_t sub_2245D3200()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245CC2E4(v2, v3, v5, v4);
}

uint64_t sub_2245D32C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245CA668(v2, v3, v4);
}

Swift::Void __swiftcall DockCoreManager.disconnect()()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_expectingDisconnect) = 1;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v2);
  v6 = sub_224627B58();
  v7 = sub_224628058();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "Asked to disconnect, invalidating any XPC connections", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection;
  v12 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  if (v12)
  {
    [v12 invalidate];
    v13 = *(v1 + v11);
    *(v1 + v11) = 0;
  }

  v14 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug;
  v15 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
  if (v15)
  {
    [v15 invalidate];
    v16 = *(v1 + v14);
    *(v1 + v14) = 0;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug) = 0;
  }

  v17 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture;
  v18 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  if (v18)
  {
    [v18 invalidate];
    v17 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture;
    v19 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + v17) = 0;

  v20 = *(v1 + v9);

  os_unfair_lock_unlock(v20 + 4);

  sub_2245D4DE0();
  sub_2245D4C5C();
  v21 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  if (v21)
  {
    *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = 0;
  }

  v22 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  if (v22)
  {
    *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = 0;
  }
}

id DockCoreManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DockCoreManager.setRectOfInterest(rect:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 112) = v4;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2245D3654, 0, 0);
}

uint64_t sub_2245D3654()
{
  v1 = *(v0 + 14);
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_2245804E0;
  v6 = swift_continuation_init();
  sub_2245D9E80(v1, v6, v5, v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t DockCoreManager.getClientConfigurationUpdates(delegate:appID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_2245D373C, 0, 0);
}

uint64_t sub_2245D373C()
{
  v1 = v0 + 2;
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_getObjectType();
  sub_2245F90F8(v5, v4, v3, sub_2245804EC, v7, v2);

  return MEMORY[0x282200938](v1);
}

uint64_t DockCoreManager.getTrackerDebugNotifications(delegate:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245D3864, 0, 0);
}

uint64_t sub_2245D3864()
{
  v1 = v0 + 2;
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_getObjectType();
  sub_2245F9CA8(v3, sub_2245803FC, v5, v2);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245D3974()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v2 = swift_continuation_init();
  sub_2245E72B4(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t DockCoreManager.getSystemTrackingEnabled(appID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245D3A34, 0, 0);
}

uint64_t sub_2245D3A34()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_22460AC44;
  v4 = swift_continuation_init();
  sub_2245E1170(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D3B0C()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D3BD0()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224572A58;
  v2 = swift_continuation_init();
  sub_2245DDB30(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t DockCoreManager.updateCameraSession(session:new:)(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2245D3C98, 0, 0);
}

uint64_t sub_2245D3C98()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9498);
  *v3 = v0;
  v3[1] = sub_2245D3DAC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x8000000224637E10, sub_2245625A8, v2, v4);
}

uint64_t sub_2245D3DAC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2245D3EC8;
  }

  else
  {

    v2 = sub_22460AC54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D3EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DockCoreManager.updateTrackingSummaryDebug(summary:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245D3F4C, 0, 0);
}

uint64_t sub_2245D3F4C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v1[2] = v2;
  v1[7] = v1 + 12;
  v1[3] = sub_22460AC48;
  v4 = swift_continuation_init();
  v5 = sub_2246272D8();
  if (v5)
  {
    v6 = v5;
    sub_2245DF7BC(v5, v1[11], v4);
  }

  else
  {
    **(*(v4 + 64) + 40) = 0;
    swift_continuation_throwingResume();
  }

  return MEMORY[0x282200938](v3);
}

uint64_t DockCoreManager.updateTrackingSummary(summary:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2245D4058, 0, 0);
}

uint64_t sub_2245D4058()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2245D4148;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 56, 0, 0, 0xD00000000000001FLL, 0x8000000224637E40, sub_2245625B4, v1, v3);
}

uint64_t sub_2245D4148()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2245D4280;
  }

  else
  {

    v2 = sub_2245D4264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D4280()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2245D42E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2245D4378(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v5(a2, a3);
}

void sub_2245D43DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t DockCoreManager.setSystemTrackingEnabled(enabled:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = a1;
  return MEMORY[0x2822009F8](sub_2245D4478, 0, 0);
}

uint64_t sub_2245D4478()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245E07A0(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

Swift::Void __swiftcall DockCoreManager.stopStateEvents()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification) = 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification);
  if (v2)
  {
    *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification) = 0;
  }
}

uint64_t DockCoreManager.connectionDelegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*DockCoreManager.connectionDelegate.modify(uint64_t *a1))()
{
  v2 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectionDelegate;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2245D4670;
}

uint64_t sub_2245D4670()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id DockCoreManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_224627B78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v3);
  v7 = sub_224627B58();
  v8 = sub_224628058();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224507000, v7, v8, "DockCoreManager deinit", v9, 2u);
    MEMORY[0x22AA526D0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_2245D4C5C();
  sub_2245D4DE0();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void sub_2245D4C5C()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v2);
  v6 = sub_224627B58();
  v7 = sub_224628058();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "Clearing all saved objects", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
  *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = 0;

  *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState) = 2;
}

uint64_t sub_2245D4DE0()
{
  swift_unknownObjectWeakAssign();
  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_accessoryDescriptionFeedbackDelegates) = sub_22450A730(MEMORY[0x277D84F90]);

  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_diagnosticsFeedbackDelegates) = sub_22450AD08(v1);

  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackDelegates) = sub_22450AD08(v1);

  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_haltFeedbackDelegates) = sub_22450AD08(v1);

  *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_rebootFeedbackDelegates) = sub_22450AD08(v1);
}

uint64_t sub_2245D53F8()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v6 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection;
  v8 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = v0;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v1);
  v10 = sub_224627B58();
  v11 = sub_224628058();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224507000, v10, v11, "dockkit: creating XPC connection", v12, 2u);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_224627CB8();
  v15 = [v13 initWithMachServiceName:v14 options:4096];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  sub_22450950C(0, &qword_27D0C96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_224632A70;
  v20 = type metadata accessor for DockCoreAccessory();
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E8);
  *(v19 + 32) = v20;
  v21 = type metadata accessor for System();
  *(v19 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96F0);
  *(v19 + 64) = v21;
  v22 = type metadata accessor for Actuator();
  *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96F8);
  *(v19 + 96) = v22;
  v23 = type metadata accessor for DockCoreInfo(0);
  *(v19 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9700);
  *(v19 + 128) = v23;
  v24 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v19 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9720);
  *(v19 + 160) = v24;
  v25 = sub_22450950C(0, &unk_27D0C89A0);
  *(v19 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9730);
  *(v19 + 192) = v25;
  v26 = sub_22450950C(0, &unk_27D0C8D40);
  *(v19 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9738);
  *(v19 + 224) = v26;
  v27 = sub_22450950C(0, &qword_27D0C9740);
  *(v19 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9748);
  *(v19 + 256) = v27;
  v28 = sub_22450950C(0, &qword_27D0C9698);
  *(v19 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9750);
  *(v19 + 288) = v28;
  v29 = sub_22450950C(0, &qword_27D0C9E90);
  *(v19 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9760);
  *(v19 + 320) = v29;
  v30 = sub_22450950C(0, &qword_27D0C9768);
  *(v19 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9770);
  *(v19 + 352) = v30;
  v31 = sub_22450950C(0, &qword_27D0C9778);
  *(v19 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9780);
  *(v19 + 384) = v31;
  v32 = type metadata accessor for CameraSessionInformation();
  *(v19 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0C8);
  *(v19 + 416) = v32;
  v33 = MEMORY[0x22AA515F0](v19);
  aBlock = 0;
  result = sub_224627FE8();
  if (aBlock)
  {

    v35 = [v15 remoteObjectInterface];
    v0 = v9;
    if (v35)
    {
      v36 = v35;
      v37 = sub_224627FD8();
      [v36 setClasses:v37 forSelector:sel_getPairedWithCompletion_ argumentIndex:0 ofReply:1];
    }

    v38 = [v15 remoteObjectInterface];
    if (v38)
    {
      v39 = v38;
      v40 = sub_224627FD8();
      [v39 setClasses:v40 forSelector:sel_getConnectedWithCompletion_ argumentIndex:0 ofReply:1];
    }

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v15 setExportedObject_];

    v54 = sub_224608188;
    v55 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_224580D44;
    v53 = &block_descriptor_82;
    v43 = _Block_copy(&aBlock);

    [v15 setInterruptionHandler_];
    _Block_release(v43);
    v54 = sub_224608190;
    v55 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_224580D44;
    v53 = &block_descriptor_85;
    v44 = _Block_copy(&aBlock);

    [v15 setInvalidationHandler_];
    _Block_release(v44);
    v45 = *(v9 + v7);
    *(v9 + v7) = v15;
    v46 = v15;

    [*(v9 + v7) resume];
    if (!swift_unknownObjectWeakLoadStrong())
    {

LABEL_13:

      v8 = *(v9 + v7);
      if (!v8)
      {
        v48 = *(v9 + v5);
        goto LABEL_15;
      }

LABEL_14:
      v48 = *(v0 + v5);
      v49 = v8;
LABEL_15:

      os_unfair_lock_unlock(v48 + 4);

      return v8;
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v47 = result;

      [v47 xpcConnected];

      swift_unknownObjectRelease();
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2245D5C74()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);

      [v7 invalidate];
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
      if (v10)
      {
        v11 = v10;

        [v11 setExportedObject_];
        v9 = v11;
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *&v12[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection];
      *&v12[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection] = 0;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
      v16 = v14;

      os_unfair_lock_lock(v15 + 4);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_22452ECAC();
      v19 = swift_allocError();
      *v20 = xmmword_22462FF80;
      *(v20 + 16) = 1;
      v21 = *&v18[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
      *&v18[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = v19;
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
      v24 = v22;

      os_unfair_lock_unlock(v23 + 4);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    (*(v1 + 16))(v3, result + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v0);

    v27 = sub_224627B58();
    v28 = sub_224628058();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224507000, v27, v28, "dockkit: Manager Connection interrupted", v29, 2u);
      MEMORY[0x22AA526D0](v29, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_2245D5F60()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v6 = Strong;

    os_unfair_lock_lock(v5 + 4);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);

      [v10 invalidate];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
      if (v13)
      {
        v14 = v13;

        [v14 setExportedObject_];
        v12 = v14;
      }
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = *&v15[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection];
      *&v15[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection] = 0;
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_22452ECAC();
      v19 = swift_allocError();
      *v20 = xmmword_22462FF90;
      *(v20 + 16) = 2;
      v21 = *&v18[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
      *&v18[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = v19;
    }
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    (*(v1 + 16))(v3, v22 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v0);

    v24 = sub_224627B58();
    v25 = sub_224628058();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_224507000, v24, v25, "dockkit: Manager Connection invalidated", v26, 2u);
      MEMORY[0x22AA526D0](v26, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v29 = v27;

    os_unfair_lock_unlock(v28 + 4);
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    sub_2245D62DC();
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v34 = swift_unknownObjectWeakLoadStrong();

    if (v34)
    {
      swift_unknownObjectRelease();
      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = v35;
        v37 = swift_unknownObjectWeakLoadStrong();

        if (v37)
        {
          [v37 xpcDisconnected];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_2245D62DC()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_expectingDisconnect;
  if (v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_expectingDisconnect] == 1)
  {
    (*(v3 + 16))(&v24 - v7, &v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v2);
    v10 = sub_224627B58();
    v11 = sub_224628058();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224507000, v10, v11, "Expecting disconnect, ignoring", v12, 2u);
      MEMORY[0x22AA526D0](v12, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v1[v9] = 0;
  }

  else
  {
    v25 = 0;
    v13 = *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock];

    os_unfair_lock_lock(v13 + 5);
    sub_2245D6EB4(&v13[4], v1, &v25);
    os_unfair_lock_unlock(v13 + 5);

    v14 = v25;
    if (v25)
    {
      (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v2);
      v15 = sub_224627B58();
      v16 = sub_224628058();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_224507000, v15, v16, "Unexpectedly disconnected, forcing state event for %@", v17, 0xCu);
        sub_2245098A0(v18, &qword_27D0C9660);
        MEMORY[0x22AA526D0](v18, -1, -1);
        MEMORY[0x22AA526D0](v17, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v20 = &v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        swift_getObjectType();
        v22 = *(v21 + 8);
        v23 = v14;
        v22();

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_2245D6690()
{
  v1 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  if (v3)
  {

    return sub_2245D6734();
  }

  else
  {

    return sub_2245D53F8();
  }
}

uint64_t sub_2245D6734()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v6 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture;
  v8 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = v0;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v1);
  v10 = sub_224627B58();
  v11 = sub_224628058();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224507000, v10, v11, "dockkit: creating camera capture XPC connection", v12, 2u);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_224627CB8();
  v15 = [v13 initWithMachServiceName:v14 options:4096];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  sub_22450950C(0, &qword_27D0C96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_224632A80;
  v20 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9720);
  *(v19 + 32) = v20;
  v21 = sub_22450950C(0, &unk_27D0C89A0);
  *(v19 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9730);
  *(v19 + 64) = v21;
  v22 = sub_22450950C(0, &unk_27D0C8D40);
  *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9738);
  *(v19 + 96) = v22;
  v23 = sub_22450950C(0, &qword_27D0C9740);
  *(v19 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9748);
  *(v19 + 128) = v23;
  v24 = sub_22450950C(0, &qword_27D0C9698);
  *(v19 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9750);
  *(v19 + 160) = v24;
  v25 = sub_22450950C(0, &qword_27D0C9E90);
  *(v19 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9760);
  *(v19 + 192) = v25;
  v26 = sub_22450950C(0, &qword_27D0C9768);
  *(v19 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9770);
  *(v19 + 224) = v26;
  v27 = sub_22450950C(0, &qword_27D0C9778);
  *(v19 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9780);
  *(v19 + 256) = v27;
  v28 = type metadata accessor for CameraSessionInformation();
  *(v19 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0C8);
  *(v19 + 288) = v28;
  v29 = MEMORY[0x22AA515F0](v19);
  aBlock = 0;
  result = sub_224627FE8();
  if (aBlock)
  {

    v31 = [v15 remoteObjectInterface];
    v0 = v9;
    if (v31)
    {
      v32 = v31;
      v33 = sub_224627FD8();

      [v32 setClasses:v33 forSelector:sel_updateCameraSessionWithSession_new_completion_ argumentIndex:0 ofReply:1];
    }

    else
    {
    }

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v15 setExportedObject_];

    v47 = sub_224608CB8;
    v48 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_224580D44;
    v46 = &block_descriptor_544_0;
    v36 = _Block_copy(&aBlock);

    [v15 setInterruptionHandler_];
    _Block_release(v36);
    v47 = sub_224608CEC;
    v48 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_224580D44;
    v46 = &block_descriptor_547;
    v37 = _Block_copy(&aBlock);

    [v15 setInvalidationHandler_];
    _Block_release(v37);
    v38 = *(v9 + v7);
    *(v9 + v7) = v15;
    v39 = v15;

    v40 = *(v9 + v7);
    [v40 resume];

    v8 = *(v9 + v7);
    if (!v8)
    {
      v41 = *(v9 + v5);
      goto LABEL_10;
    }

LABEL_9:
    v41 = *(v0 + v5);
    v42 = v8;
LABEL_10:

    os_unfair_lock_unlock(v41 + 4);

    return v8;
  }

  __break(1u);
  return result;
}

void sub_2245D6EB4(uint64_t a1, void *a2, void **a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);
  v9 = a2;
  v10 = sub_224627B58();
  v11 = sub_224628058();

  v12 = &OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v26 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *&v9[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected];
    *(v14 + 4) = v16;
    *v15 = v16;
    v17 = v16;
    _os_log_impl(&dword_224507000, v10, v11, "handleUnexpectedDisconnect: _connected is %@", v14, 0xCu);
    sub_2245098A0(v15, &qword_27D0C9660);
    v18 = v15;
    v12 = &OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification;
    MEMORY[0x22AA526D0](v18, -1, -1);
    a3 = v26;
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v19 = v12[20];
  v20 = *&v9[v19];
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
    v22 = *a3;
    *a3 = v21;
    v23 = v21;

    v24 = *&v9[v19];
    *&v9[v19] = 0;

    *&v9[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState] = 2;
  }
}

uint64_t sub_2245D71A8()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v2 = swift_continuation_init();
  sub_2245D724C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D724C(uint64_t a1, char *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v37 = a2;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460A2F8;
    v19[4] = v8;
    v42 = sub_22460A984;
    v43 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1789;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v4 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_22460A2F8;
      *(v5 + 24) = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_22460A924;
      *(a1 + 24) = v5;
      v42 = sub_22460A928;
      v43 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D7D80;
      v41 = &block_descriptor_1800;
      v7 = _Block_copy(&aBlock);
      v17 = v43;

      swift_unknownObjectRetain();

      [v4 getPairedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v7;
    v33 = v32;
    *v31 = 138412290;
    v34 = v25;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_224507000, v29, v30, "failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v33, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v36 = v25;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245D79F4(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245D7A6C, 0, 0);
}

uint64_t sub_2245D7A6C()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245D7B10;
  v2 = swift_continuation_init();
  sub_2245D724C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D7B10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245D7CE0;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_2245D7C34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245D7C34()
{
  type metadata accessor for DockCoreAccessory();
  v1 = sub_224627EB8();

  v2 = *(v0 + 96);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245D7CE0()
{
  v1 = *(v0 + 104);

  v2 = sub_224626FA8();
  v3 = *(v0 + 96);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245D7D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for DockCoreAccessory();
  v5 = sub_224627ED8();
  v6 = a3;
  v4(v5, a3);
}

uint64_t DockCoreManager.selectSubjects(_:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245D7E3C, 0, 0);
}

uint64_t sub_2245D7E3C()
{
  v1 = v0 + 2;
  v2 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v4 = swift_continuation_init();
  v5 = v3;
  sub_2245FAFA4(v2, v5, v5, v4);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245D7EF8(uint64_t a1, void *a2)
{
  result = sub_2245AD530();
  if (!v5)
  {
    return result;
  }

  if (result != 0xD000000000000018 || v5 != 0x8000000224637E60)
  {
    v30 = result;
    v31 = v5;
    if ((sub_224628688() & 1) == 0)
    {
      v6 = v2;
      if (a2)
      {
        *&v39[0] = a2;
        v7 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
        if (swift_dynamicCast())
        {
          v28 = *(&v40 + 1);
          v29 = v40;
          v8 = v41;
        }

        else
        {
          swift_getErrorValue();
          v9 = sub_2246286F8();
          v28 = v10;
          v29 = v9;
          v8 = 16;
        }
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v8 = -1;
      }

      v11 = sub_224627A38();
      v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected;
      v13 = *(v2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
      if (v13 && *(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion + 8))
      {
        v14 = *(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion);
      }

      else
      {

        v13 = *(v6 + v12);
        v14 = 0x6E776F6E6B6E55;
        v15 = 0xE700000000000000;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (*(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8))
      {
        v27 = v15;
        v16 = *(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model);
        v17 = *(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model + 8);

        goto LABEL_20;
      }

LABEL_19:
      v27 = v15;

      v13 = *(v6 + v12);
      v18 = 0x6E776F6E6B6E55;
      v17 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E55;
      v19 = 0xE700000000000000;
      if (!v13)
      {
LABEL_21:
        sub_224513D30(0, 0, 0xFFu);
        LOBYTE(v34) = v11;
        *(&v34 + 1) = v29;
        *&v35 = v28;
        BYTE8(v35) = v8;
        BYTE9(v35) = 4;
        *&v36 = v14;
        *(&v36 + 1) = v27;
        *&v37 = v16;
        *(&v37 + 1) = v17;
        *&v38 = v18;
        *(&v38 + 1) = v19;
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v40 = v34;
        v41 = v35;
        v21 = sub_224513D5C(v30, v31);
        sub_224513E98(&v34, v39);

        v39[2] = v42;
        v39[3] = v43;
        v39[4] = v44;
        v39[0] = v40;
        v39[1] = v41;
        sub_224513ED0(v39);
        LOBYTE(v40) = v11;
        *(&v40 + 1) = v29;
        *&v41 = v28;
        BYTE8(v41) = v8;
        BYTE9(v41) = v21;
        *&v42 = v14;
        *(&v42 + 1) = v27;
        *&v43 = v16;
        *(&v43 + 1) = v17;
        *&v44 = v18;
        *(&v44 + 1) = v19;
        v22 = sub_224627CB8();
        v23 = swift_allocObject();
        v24 = v43;
        v23[3] = v42;
        v23[4] = v24;
        v23[5] = v44;
        v25 = v41;
        v23[1] = v40;
        v23[2] = v25;
        aBlock[4] = sub_224514314;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224513B14;
        aBlock[3] = &block_descriptor_1760;
        v26 = _Block_copy(aBlock);
        sub_224513E98(&v40, v32);

        AnalyticsSendEventLazy();
        _Block_release(v26);

        return sub_224513ED0(&v40);
      }

LABEL_20:
      v20 = (*(v13 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
      v18 = *v20;
      v19 = v20[1];

      goto LABEL_21;
    }
  }
}

uint64_t sub_2245D8490(int a1, void *aBlock, void *a3)
{
  v3[10] = a3;
  v3[11] = _Block_copy(aBlock);
  v3[12] = sub_224627ED8();
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245D8524, 0, 0);
}

uint64_t sub_2245D8524()
{
  v1 = v0 + 2;
  v2 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245D85EC;
  v4 = swift_continuation_init();
  v5 = v3;
  sub_2245FAFA4(v2, v5, v5, v4);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245D85EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245D8784;
  }

  else
  {
    v2 = sub_2245D8708;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D8708()
{
  v1 = *(v0 + 88);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 88));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2245D8784()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = sub_224626FA8();
  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 88));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245D88B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_224626FA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t DockCoreManager.selectSubject(at:)(double a1, double a2)
{
  *(v3 + 96) = v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2245D8940, 0, 0);
}

uint64_t sub_2245D8940()
{
  v1 = v0 + 2;
  v2 = *(v0 + 12);
  v4 = v0[10];
  v3 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_2245804E0;
  v5 = swift_continuation_init();
  v6 = v2;
  sub_2245FBBA0(v6, v6, v5, v4, v3);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245D8A00(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = sub_224627A48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *a4, v6);
  sub_2245D7EF8(v9, a1);
  (*(v7 + 8))(v9, v6);
  if (!a1)
  {
    return swift_continuation_throwingResume();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v10 = a1;
  v11 = a1;
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245D8CE4(const void *a1, void *a2, double a3, double a4)
{
  *(v4 + 96) = a2;
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  *(v4 + 104) = _Block_copy(a1);
  v6 = a2;

  return MEMORY[0x2822009F8](sub_2245D8D60, 0, 0);
}

uint64_t sub_2245D8D60()
{
  v1 = v0 + 2;
  v2 = *(v0 + 12);
  v4 = v0[10];
  v3 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_2245D8E20;
  v5 = swift_continuation_init();
  v6 = v2;
  sub_2245FBBA0(v6, v6, v5, v4, v3);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245D8E20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245D8FB8;
  }

  else
  {
    v2 = sub_2245D8F3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D8F3C()
{
  v1 = *(v0 + 104);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 104));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2245D8FB8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 104));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245D9058(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, "error from remote proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(a1);
}

uint64_t DockCoreManager.setFramingMode(mode:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245D92FC, 0, 0);
}

uint64_t sub_2245D92FC()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245D93A4(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_224580004;
    *(v17 + 4) = v10;
    v42 = sub_22460A98C;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1725;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_224580004;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A930;
      *(a2 + 24) = v7;
      v42 = sub_22460A920;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D4378;
      v41 = &block_descriptor_1736;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      swift_unknownObjectRetain();

      [v6 setFramingModeWithMode:v36 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245D9B0C(uint64_t a1, void *aBlock, void *a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245D9B88, 0, 0);
}

uint64_t sub_2245D9B88()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245D9C30;
  v3 = swift_continuation_init();
  sub_2245D93A4(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245D9C30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245D9DC8;
  }

  else
  {
    v2 = sub_2245D9D4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245D9D4C()
{
  v1 = *(v0 + 96);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 96));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2245D9DC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 96));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245D9E80(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_224627B78();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v18 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v18 + 4);

  v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v20 = *(a1 + v17);

  os_unfair_lock_unlock(v20 + 4);

  v21 = sub_2245D53F8();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v21 && (v43 = a2, v23 = swift_allocObject(), v23[2] = v22, v23[3] = sub_2245804EC, v23[4] = v16, v48 = sub_22460A98C, v49 = v23, aBlock = MEMORY[0x277D85DD0], v45 = 1107296256, v46 = sub_2245D42E8, v47 = &block_descriptor_2031, v24 = _Block_copy(&aBlock), v25 = v21, , , , v26 = [v25 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v24), v25, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798), swift_dynamicCast()))
  {
    v27 = aBlock;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_2245804EC;
    *(v28 + 24) = v16;
    v48 = sub_22460A930;
    v49 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D43DC;
    v47 = &block_descriptor_2038;
    v29 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v27 setRectOfInterestWithRect:v29 completion:{a3, a4, a5, a6}];
    _Block_release(v29);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v31 = swift_allocError();
    *v32 = xmmword_22462FFB0;
    *(v32 + 16) = 4;
    swift_willThrow();

    (*(v13 + 16))(v15, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v12);
    v33 = v31;
    v34 = v31;
    v35 = sub_224627B58();
    v36 = sub_224628048();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v16;
      v39 = v38;
      *v37 = 138412290;
      v40 = v31;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_224507000, v35, v36, "dockkit: failed getting sync connection, can't send xpc %@", v37, 0xCu);
      sub_2245098A0(v39, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v39, -1, -1);
      MEMORY[0x22AA526D0](v37, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v42 = v31;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245DA5B8(const void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 112) = a2;
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 120) = _Block_copy(a1);
  v8 = a2;

  return MEMORY[0x2822009F8](sub_2245DA638, 0, 0);
}

uint64_t sub_2245DA638()
{
  v1 = *(v0 + 14);
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_2245DA6FC;
  v6 = swift_continuation_init();
  sub_2245D9E80(v1, v6, v5, v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245DA6FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245DA894;
  }

  else
  {
    v2 = sub_2245DA818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245DA818()
{
  v1 = *(v0 + 120);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 120));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2245DA894()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 120));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245DA9D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2245D53F8();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v10)
  {
    v26 = a2;
    v12 = v6;
    aBlock[4] = sub_22460A28C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2245D42E8;
    aBlock[3] = &block_descriptor_1714;
    v13 = _Block_copy(aBlock);
    v14 = v10;

    v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v13);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      [aBlock[0] reportAPIUsageWithType:a1 error:v26];

      swift_unknownObjectRelease();
      return;
    }

    v6 = v12;
  }

  sub_22452ECAC();
  v16 = swift_allocError();
  *v17 = xmmword_22462FFB0;
  *(v17 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v18 = v16;
  v19 = v16;
  v20 = sub_224627B58();
  v21 = sub_224628048();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v16;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_224507000, v20, v21, "dockkit: failed getting sync connection, can't send xpc %@", v22, 0xCu);
    sub_2245098A0(v23, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v23, -1, -1);
    MEMORY[0x22AA526D0](v22, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
}

uint64_t sub_2245DAF90(uint64_t a1, int a2, void *aBlock, void *a4)
{
  v4[10] = a1;
  v4[11] = a4;
  v4[12] = _Block_copy(aBlock);
  v4[13] = sub_224627CD8();
  v4[14] = v6;
  swift_unknownObjectRetain();
  v7 = a4;

  return MEMORY[0x2822009F8](sub_2245DB030, 0, 0);
}

uint64_t sub_2245DB030()
{
  v1 = v0 + 2;
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245DB13C;
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_getObjectType();
  sub_2245F90F8(v5, v3, v2, sub_2245804EC, v7, v4);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245DB13C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245DB258;
  }

  else
  {
    v2 = sub_22460A904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245DB258()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_unknownObjectRelease();

  v4 = sub_224626FA8();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 96));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245DB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectWeakAssign();
    }
  }

  return a5(a2);
}

void *DockCoreManager.setFramingModeEvent(mode:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result setFramingModeEventWithMode_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall DockCoreManager.selectSubjectAtEvent(x:y:)(NSNumber x, NSNumber y)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong selectSubjectAtEventWithX:x.super.super.isa y:y.super.super.isa];

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall DockCoreManager.selectSubjectsEvent(_:)(Swift::OpaquePointer a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = sub_224627EB8();
      [v2 selectSubjectsEvent_];

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall DockCoreManager.setRectOfInterestEvent(rect:)(__C::CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setRectOfInterestEventWithRect_];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t DockCoreManager.sendCommandEvent(command:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      v2 = sub_224627028();
      [v1 sendCommandEventWithCommand_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2245DBB6C(char *a1, char *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];

  os_unfair_lock_lock(v10 + 4);

  v11 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v12 = *&a1[v9];

  os_unfair_lock_unlock(v12 + 4);

  v13 = *&a1[v9];

  os_unfair_lock_lock(v13 + 4);

  v14 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture];
  v15 = *&a1[v9];

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v38 = a2;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_224580400;
    v19[4] = v8;
    v43 = sub_22460A9A4;
    v44 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2245D42E8;
    v42 = &block_descriptor_1921;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = sub_224580400;
      *(v5 + 32) = v8;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_22460A960;
      *(v4 + 24) = v5;
      v43 = sub_22460A92C;
      v44 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_22460AC1C;
      v42 = &block_descriptor_1932;
      v17 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v23 = a1;

      [v7 getConnectedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = 0xD000000000000026;
  *(v27 + 8) = 0x800000022463AF60;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, &a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v4);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v7;
    v34 = v33;
    *v32 = 138412290;
    v35 = v26;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v34, &qword_27D0C9660);
    v7 = v38;
    MEMORY[0x22AA526D0](v34, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v37 = v26;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245DC32C(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245DC3A4, 0, 0);
}

uint64_t sub_2245DC3A4()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245DC448;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245DC448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22460A91C;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_22460AC40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245DC56C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v8 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);

  os_unfair_lock_lock(v8 + 5);
  sub_2245E30D4(&v8[4], a3, a1, "3 setting _connected to %@");
  os_unfair_lock_unlock(v8 + 5);

  return a4(a1, a2);
}

void sub_2245DC628()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v7 = *(v0 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v9 = *(v1 + v6);

  os_unfair_lock_unlock(v9 + 4);

  v10 = *(v1 + v6);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v12 = *(v1 + v6);

  os_unfair_lock_unlock(v12 + 4);

  if (v11)
  {
    v13 = sub_2245D6734();
  }

  else
  {
    v13 = sub_2245D53F8();
  }

  v14 = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v14 && (aBlock[4] = sub_22460A268, aBlock[5] = v15, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_2245D42E8, aBlock[3] = &block_descriptor_1710, v16 = _Block_copy(aBlock), v17 = v14, , , v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v16), v17, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0F0), (swift_dynamicCast() & 1) != 0))
  {
    [aBlock[0] disconnectTrackingActivityScene];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_22452ECAC();
    v19 = swift_allocError();
    *v20 = 0xD000000000000026;
    *(v20 + 8) = 0x800000022463AF60;
    *(v20 + 16) = 4;
    swift_willThrow();

    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v2);
    v21 = v19;
    v22 = v19;
    v23 = sub_224627B58();
    v24 = sub_224628048();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v19;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_224507000, v23, v24, "dockkit: failed getting sync connection, can't send xpc %@", v25, 0xCu);
      sub_2245098A0(v26, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v26, -1, -1);
      MEMORY[0x22AA526D0](v25, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  }
}

uint64_t sub_2245DCA7C(void *a1, uint64_t a2, const char *a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    (*(v6 + 16))(v8, result + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, a3, v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2245DCC84()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v2 = swift_continuation_init();
  sub_2245DCD28(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245DCD28(uint64_t a1, char *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v37 = a2;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22457FE40;
    v19[4] = v8;
    v42 = sub_22460A988;
    v43 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1695;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v4 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_22457FE40;
      *(v5 + 24) = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_2245803F8;
      *(a1 + 24) = v5;
      v42 = sub_22460A92C;
      v43 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_22460AC1C;
      v41 = &block_descriptor_1706;
      v7 = _Block_copy(&aBlock);
      v17 = v43;

      swift_unknownObjectRetain();

      [v4 getDockedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v7;
    v33 = v32;
    *v31 = 138412290;
    v34 = v25;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v33, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v36 = v25;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245DD4D0(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245DD548, 0, 0);
}

uint64_t sub_2245DD548()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245DD5EC;
  v2 = swift_continuation_init();
  sub_2245DCD28(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245DD5EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245DD798;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_2245DD710;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245DD710()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245DD798()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = sub_224626FA8();
  (v1)[2](v1, 0, v3);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245DD83C(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_224627B78();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = a5;
    v29 = a3;
    v17 = Strong;
    (*(v13 + 16))(v15, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v12);

    v18 = a1;
    v19 = sub_224627B58();
    v20 = sub_224628048();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27[1] = a7;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_224507000, v19, v20, v28, v22, 0xCu);
      sub_2245098A0(v23, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v23, -1, -1);
      MEMORY[0x22AA526D0](v22, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    a3 = v29;
  }

  return a3(a6, a1);
}

uint64_t sub_2245DDA70(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2245DDB30(uint64_t a1, char *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v37 = a2;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460A4F4;
    v19[4] = v8;
    v42 = sub_22460A9A0;
    v43 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1899;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v4 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_22460A4F4;
      *(v5 + 24) = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_22460A93C;
      *(a1 + 24) = v5;
      v42 = sub_22460A940;
      v43 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245DE634;
      v41 = &block_descriptor_1910;
      v7 = _Block_copy(&aBlock);
      v17 = v43;

      [v4 getTrackingButtonStateWithCompletion_];
      swift_unknownObjectRelease();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v7;
    v33 = v32;
    *v31 = 138412290;
    v34 = v25;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v33, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v36 = v25;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245DE2CC(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245DE344, 0, 0);
}

uint64_t sub_2245DE344()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245DE3E8;
  v2 = swift_continuation_init();
  sub_2245DDB30(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245DE3E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245DE590;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_2245DE50C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245DE50C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 96));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245DE590()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 96));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245DE634(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v5(a2, a3);
}

void sub_2245DE6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_224626FA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2245DE720(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA100);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_2245DE904(a3, a4, sub_22460A434, v12);
}

uint64_t sub_2245DE880(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA100);
    return sub_224627F38();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA100);
    return sub_224627F48();
  }
}

void sub_2245DE904(uint64_t a1, int a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  LODWORD(v43) = a2;
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(v4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(v5 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(v5 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(v5 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245D6734();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v41 = a1;
    v42 = v9;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a3;
    v19[4] = a4;
    v48 = sub_22460A984;
    v49 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D42E8;
    v47 = &block_descriptor_980;
    v20 = _Block_copy(&aBlock);
    v21 = a3;
    v22 = v17;

    v23 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v24 = aBlock;
      v25 = swift_allocObject();
      *(v25 + 16) = v21;
      *(v25 + 24) = a4;
      v48 = sub_22460A924;
      v49 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2245DF5EC;
      v47 = &block_descriptor_987;
      v26 = _Block_copy(&aBlock);

      [v24 updateCameraSessionWithSession:v41 new:v43 & 1 completion:v26];
      _Block_release(v26);

      swift_unknownObjectRelease();
      return;
    }

    a3 = v21;
    v9 = v42;
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(v10 + 16))(v12, v5 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v9);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v10;
    v35 = a3;
    v36 = v34;
    *v33 = 138412290;
    v37 = v27;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    v39 = v36;
    a3 = v35;
    v10 = v43;
    MEMORY[0x22AA526D0](v39, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v40 = v27;
  a3(MEMORY[0x277D84F90], v27);
}

uint64_t sub_2245DEFBC(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 72) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  *(v4 + 40) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245DF04C, 0, 0);
}

uint64_t sub_2245DF04C()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9498);
  *v3 = v0;
  v3[1] = sub_2245DF160;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x8000000224637E10, sub_22460A990, v2, v4);
}

uint64_t sub_2245DF160()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2245DF32C;
  }

  else
  {

    v2 = sub_2245DF27C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245DF27C()
{
  v1 = *(v0 + 24);

  type metadata accessor for CameraSessionInformation();
  v2 = sub_224627EB8();

  v3 = *(v0 + 40);
  (v3)[2](v3, v2, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245DF32C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = sub_224626FA8();

  v4 = *(v0 + 40);
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245DF3E4(void *a1, uint64_t a2, uint64_t (*a3)(void, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, "error from remote proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(MEMORY[0x277D84F90], a1);
}

void sub_2245DF5EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for CameraSessionInformation();
  v5 = sub_224627ED8();

  v6 = a3;
  v4(v5, a3);
}

void sub_2245DF720(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  v6 = sub_224627EB8();
  if (a2)
  {
    v7 = sub_224626FA8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a3 + 16))(a3, v6);
}

uint64_t sub_2245DF7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D6734();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15 && (v38 = a1, v39 = a3, v17 = swift_allocObject(), v17[2] = v16, v17[3] = sub_22460A958, v17[4] = v10, v44 = sub_22460A980, v45 = v17, aBlock = MEMORY[0x277D85DD0], v41 = 1107296256, v42 = sub_2245D42E8, v43 = &block_descriptor_1836, v18 = _Block_copy(&aBlock), v19 = v15, , , , v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v18), v19, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0), swift_dynamicCast()))
  {
    v21 = aBlock;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_22460A958;
    *(v22 + 24) = v10;
    v44 = sub_2245803F4;
    v45 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_2245D43DC;
    v43 = &block_descriptor_1843;
    v23 = _Block_copy(&aBlock);

    [v21 updateTrackingSummaryDebugWithData:v38 completion:v23];
    _Block_release(v23);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22452ECAC();
    v25 = swift_allocError();
    *v26 = xmmword_22462FFB0;
    *(v26 + 16) = 4;
    swift_willThrow();

    (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
    v27 = v25;
    v28 = v25;
    v29 = sub_224627B58();
    v30 = sub_224628048();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v10;
      v33 = v32;
      *v31 = 138412290;
      v34 = v25;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
      sub_2245098A0(v33, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v33, -1, -1);
      MEMORY[0x22AA526D0](v31, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v36 = v25;
    swift_continuation_throwingResumeWithError();
  }
}

void sub_2245DFD3C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_224626FA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_2245DFDAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-v4];
  v6 = sub_224566878();
  if (v7 >> 60 == 15)
  {
    v13[15] = 0;
    sub_224627F48();
  }

  else
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_224627028();
    (*(v3 + 16))(v5, a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, v5, v2);
    sub_2245DFFD8(v10, sub_22460A314, v12);
    sub_2245687AC(v8, v9);
  }
}

uint64_t sub_2245DFF54(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0F8);
    return sub_224627F38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0F8);
    return sub_224627F48();
  }
}

void sub_2245DFFD8(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(v4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(v4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(v4 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D6734();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v41 = a1;
    v42 = v8;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a2;
    v18[4] = a3;
    v47 = sub_22460A980;
    v48 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_932;
    v19 = a2;
    v20 = _Block_copy(&aBlock);
    v21 = v16;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v23 = aBlock;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = a3;
      v47 = sub_2245803F4;
      v48 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2245D43DC;
      v46 = &block_descriptor_939;
      v25 = _Block_copy(&aBlock);

      [v23 updateTrackingSummaryWithData:v41 completion:v25];
      _Block_release(v25);

      swift_unknownObjectRelease();
      return;
    }

    a2 = v19;
    v8 = v42;
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = xmmword_22462FFB0;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v9;
    v34 = a2;
    v35 = v33;
    *v32 = 138412290;
    v36 = v26;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    a2 = v34;
    v9 = v42;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v39 = v26;
  a2(0, v26);
}

uint64_t sub_2245E04F0(void *a1, uint64_t a2, uint64_t (*a3)(void, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, "error from remote proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(0, a1);
}

void sub_2245E070C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_2245E07A0(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_2245803FC;
    *(v17 + 4) = v10;
    v42 = sub_22460A980;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1811;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2245803FC;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = v7;
      v42 = sub_22460A920;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D4378;
      v41 = &block_descriptor_1822;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      swift_unknownObjectRetain();

      [v6 setSystemTrackingEnabledWithEnabled:v36 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245E0F10(char a1, void *aBlock, void *a3)
{
  *(v3 + 80) = a3;
  *(v3 + 104) = a1;
  *(v3 + 88) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245E0F90, 0, 0);
}

uint64_t sub_2245E0F90()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245E103C;
  v3 = swift_continuation_init();
  sub_2245E07A0(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245E103C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 96) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22460A944;
  }

  else
  {
    v2 = sub_22460AC18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245E1170(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v38 = a1;
  v7 = sub_224627B78();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(isEscapingClosureAtFileLocation + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D6734();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v37[0] = a2;
    v37[1] = a4;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A958;
    v18[4] = v11;
    v43 = sub_22460A980;
    v44 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2245D42E8;
    v42 = &block_descriptor_1943;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      swift_unknownObjectRetain();
      v7 = sub_224627CB8();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_22460A958;
      *(v23 + 24) = v11;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_2245803F4;
      *(v8 + 24) = v23;
      v43 = sub_22460A920;
      v44 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_2245D4378;
      v42 = &block_descriptor_1954;
      v10 = _Block_copy(&aBlock);

      [v22 getSystemTrackingEnabledWithAppID:v7 completion:v10];

      swift_unknownObjectRelease_n();
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v8;
    v33 = v32;
    *v31 = 138412290;
    v34 = v25;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v33, &qword_27D0C9660);
    v8 = v38;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v36 = v25;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245E18F4(int a1, void *aBlock, void *a3)
{
  v3[10] = a3;
  v3[11] = _Block_copy(aBlock);
  v3[12] = sub_224627CD8();
  v3[13] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](sub_2245E1980, 0, 0);
}

uint64_t sub_2245E1980()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_2245E1A40;
  v4 = swift_continuation_init();
  sub_2245E1170(v2, v1, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E1A40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245E1BE8;
  }

  else
  {
    *(v1 + 121) = *(v1 + 120);
    v3 = sub_2245E1B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245E1B64()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 88);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 88));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245E1BE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  v3 = sub_224626FA8();
  (*(v2 + 16))(v2, 0, v3);

  _Block_release(*(v0 + 88));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245E1D20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_224600358();
  }
}

uint64_t sub_2245E1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = sub_224627B78();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245E1E40, 0, 0);
}

uint64_t sub_2245E1E40()
{
  (*(v0[22] + 16))(v0[23], v0[20] + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v0[21]);
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "Syncing state with daemon", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2245E1F5C, 0, 0);
}

uint64_t sub_2245E1F5C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2245E2000;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E2000()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 192) = *(*v0 + 144);

    return MEMORY[0x2822009F8](sub_2245E2160, 0, 0);
  }
}

uint64_t sub_2245E2160()
{
  v1 = v0[20];
  v0[10] = v0;
  v0[15] = v0 + 19;
  v0[11] = sub_2245E2204;
  v2 = swift_continuation_init();
  sub_2245DDB30(v1, v2);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245E2204()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 200) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245E2424;
  }

  else
  {
    *(v1 + 208) = *(v1 + 152);
    v3 = sub_2245E2328;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245E2328()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[20];
  v4 = *(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock);

  os_unfair_lock_lock(v4 + 5);
  sub_2245E2490(&v4[4], v3, v2, v1);
  v5 = v0[24];
  os_unfair_lock_unlock(v4 + 5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2245E2424()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2245E2490(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v35 = a2;
  v12(v11, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v13 = a3;
  v14 = sub_224627B58();
  v15 = sub_224628058();

  if (!os_log_type_enabled(v14, v15))
  {

    (*(v9 + 8))(v11, v8);
LABEL_10:
    v25 = v35;
    v26 = *(v35 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
    *(v35 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = a3;
    v27 = v13;

    *(v25 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState) = a4;
    return;
  }

  v34 = v4;
  v31 = v8;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v37 = v18;
  *v16 = 138412546;
  *(v16 + 4) = v13;
  v32 = a3;
  v33 = a4;
  v30 = v17;
  *v17 = a3;
  *(v16 + 12) = 2080;
  switch(a4)
  {
    case 2:
      v19 = v18;
      v20 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E55;
      goto LABEL_9;
    case 1:
      v19 = v18;
      v20 = 0xE200000000000000;
      v21 = 28239;
LABEL_9:
      v22 = v13;
      v23 = sub_224509F28(v21, v20, &v37);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_224507000, v14, v15, "1 setting _connected to %@, button to %s", v16, 0x16u);
      v24 = v30;
      sub_2245098A0(v30, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x22AA526D0](v19, -1, -1);
      MEMORY[0x22AA526D0](v16, -1, -1);

      (*(v9 + 8))(v11, v31);
      a4 = v33;
      a3 = v32;
      goto LABEL_10;
    case 0:
      v19 = v18;
      v20 = 0xE300000000000000;
      v21 = 6710863;
      goto LABEL_9;
  }

  v36 = v33;
  v28 = v13;
  sub_2246286B8();
  __break(1u);
}

uint64_t sub_2245E2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_224562284(a3, v22 - v9);
  v11 = sub_224627F78();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2245098A0(v10, &qword_27D0C9408);
  }

  else
  {
    sub_224627F68();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_224627F28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_224627D48() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2245098A0(a3, &qword_27D0C9408);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2245098A0(a3, &qword_27D0C9408);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_2245E2AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = sub_224627F78();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v10;
      v12[5] = a3;
      v12[6] = a4;

      sub_2245E2798(0, 0, v8, &unk_2246331A0, v12);
    }
  }

  return result;
}

uint64_t sub_2245E2CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x2822009F8](sub_2245E2CD4, 0, 0);
}

uint64_t sub_2245E2CD4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_2245E2D8C;
  v4 = swift_continuation_init();
  sub_2245E1170(v2, v1, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E2D8C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 105) = *(*v0 + 104);

    return MEMORY[0x2822009F8](sub_2245E2ED8, 0, 0);
  }
}

uint64_t sub_2245E2ED8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 105);
    v4 = sub_224627CB8();
    [v2 trackingEnabledWithEnabled:v3 appID:v4];
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_2245E30D4(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v21 = a4;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v22 = a3;
  v11 = a3;
  v12 = sub_224627B58();
  v13 = sub_224628058();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v4;
    v16 = v15;
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v22;
    v17 = v11;
    _os_log_impl(&dword_224507000, v12, v13, v21, v14, 0xCu);
    sub_2245098A0(v16, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v16, -1, -1);
    MEMORY[0x22AA526D0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v18 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = v22;
  v19 = v11;
}

uint64_t sub_2245E3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = sub_224627B78();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2245E34E4, 0, 0);
}

uint64_t sub_2245E34E4()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateEventsLock;
  v0[29] = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateEventsLock;
  v0[30] = *(v1 + v2);
  v5 = (*MEMORY[0x277D21398] + MEMORY[0x277D21398]);

  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_2245E35AC;

  return v5();
}

uint64_t sub_2245E35AC(char a1)
{
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_2245E36CC, 0, 0);
}

uint64_t sub_2245E36CC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger;
  *(v0 + 256) = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger;
  v5 = *(v3 + 16);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6 = *(v0 + 176);
  if (v1)
  {
    v5(*(v0 + 216), v6 + v4, v2);
    v7 = sub_224627B58();
    v8 = sub_224628058();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224507000, v7, v8, "checking local vs daemon states for event generation", v9, 2u);
      MEMORY[0x22AA526D0](v9, -1, -1);
    }

    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);

    v14 = *(v12 + 8);
    *(v0 + 280) = v14;
    v14(v10, v11);
    *(v0 + 144) = 0;
    v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock;
    *(v0 + 288) = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock;
    v16 = *(v13 + v15);

    os_unfair_lock_lock(v16 + 5);
    sub_2245E458C(&v16[4], v13, (v0 + 144));
    *(v0 + 296) = 0;
    os_unfair_lock_unlock(v16 + 5);

    return MEMORY[0x2822009F8](sub_2245E398C, 0, 0);
  }

  else
  {
    v5(*(v0 + 224), v6 + v4, v2);
    v17 = sub_224627B58();
    v18 = sub_224628058();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 224);
    v21 = *(v0 + 184);
    v22 = *(v0 + 192);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v17, v18, "State sync serialized, ignore duplicate", v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_2245E398C()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_2245E3A30;
  v2 = swift_continuation_init();
  sub_2245DBB6C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E3A30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245E3D1C;
  }

  else
  {
    *(v1 + 312) = *(v1 + 152);
    v3 = sub_2245E3B54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245E3B54()
{
  v1 = v0[22];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_2245E3BF8;
  v2 = swift_continuation_init();
  sub_2245DDB30(v1, v2);

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2245E3BF8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245E42D4;
  }

  else
  {
    *(v1 + 328) = *(v1 + 160);
    v3 = sub_2245E3F38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245E3D1C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628048();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_224507000, v8, v9, "Failed syncing state: %@", v10, 0xCu);
    sub_2245098A0(v11, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v11, -1, -1);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0 + 280))(*(v0 + 200), *(v0 + 184));
  *(v0 + 336) = *(*(v0 + 176) + *(v0 + 232));
  sub_2246274B8();
  sub_2245095E4(&qword_280C51570, MEMORY[0x277D213A8]);

  v15 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245E44F8, v15, v14);
}

void sub_2245E3F38()
{
  v29 = v0;
  v1 = *(v0 + 312);
  (*(v0 + 264))(*(v0 + 208), *(v0 + 176) + *(v0 + 256), *(v0 + 184));
  v2 = v1;
  v3 = sub_224627B58();
  v4 = sub_224628058();

  if (!os_log_type_enabled(v3, v4))
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);

    v12(v13, v14);
    goto LABEL_10;
  }

  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v28 = v9;
  *v7 = 138412546;
  *(v7 + 4) = v2;
  *v8 = v6;
  *(v7 + 12) = 2080;
  switch(v5)
  {
    case 2:
      v10 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E55;
      goto LABEL_9;
    case 1:
      v10 = 0xE200000000000000;
      v11 = 28239;
      goto LABEL_9;
    case 0:
      v10 = 0xE300000000000000;
      v11 = 6710863;
LABEL_9:
      v26 = *(v0 + 208);
      v27 = *(v0 + 280);
      v25 = *(v0 + 184);
      v15 = v2;
      v16 = sub_224509F28(v11, v10, &v28);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_224507000, v3, v4, "syncing state: connected %@ tracking button state %s", v7, 0x16u);
      sub_2245098A0(v8, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x22AA526D0](v9, -1, -1);
      MEMORY[0x22AA526D0](v7, -1, -1);

      v27(v26, v25);
LABEL_10:
      v17 = *(v0 + 328);
      v18 = *(v0 + 312);
      v19 = *(v0 + 296);
      v20 = *(v0 + 176);
      v21 = *&v20[*(v0 + 288)];

      os_unfair_lock_lock(v21 + 5);
      sub_2245E471C(&v21[4], (v0 + 144), v18, v20, v17);
      os_unfair_lock_unlock(v21 + 5);
      if (!v19)
      {

        *(v0 + 336) = *(*(v0 + 176) + *(v0 + 232));
        sub_2246274B8();
        sub_2245095E4(&qword_280C51570, MEMORY[0x277D213A8]);

        v23 = sub_224627F28();

        MEMORY[0x2822009F8](sub_2245E44F8, v23, v22);
      }

      return;
  }

  *(v0 + 168) = *(v0 + 328);
  v24 = v2;

  sub_2246286B8();
}

uint64_t sub_2245E42D4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_224627B58();
  v9 = sub_224628048();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_224507000, v8, v9, "Failed syncing state: %@", v10, 0xCu);
    sub_2245098A0(v11, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v11, -1, -1);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0 + 280))(*(v0 + 200), *(v0 + 184));
  *(v0 + 336) = *(*(v0 + 176) + *(v0 + 232));
  sub_2246274B8();
  sub_2245095E4(&qword_280C51570, MEMORY[0x277D213A8]);

  v15 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_2245E44F8, v15, v14);
}

uint64_t sub_2245E44F8()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

void sub_2245E458C(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);
  v9 = sub_224627B58();
  v10 = sub_224628058();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_224507000, v9, v10, "Copying _connected to a local before checking daemon connected", v11, 2u);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
  v13 = *a3;
  *a3 = v12;
  v14 = v12;
}

uint64_t sub_2245E471C(uint64_t a1, void **a2, char *a3, char *a4, uint64_t a5)
{
  v83 = a5;
  v90 = sub_224627B78();
  v91 = *(v90 - 8);
  v8 = MEMORY[0x28223BE20](v90);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v89 = v77 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v88 = v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v77 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v77 - v18;
  v20 = *a2;
  v81 = a3;
  if (v20)
  {
    if (!a3)
    {
      v87 = &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState];
      v24 = 1;
      goto LABEL_8;
    }

    type metadata accessor for DockCoreAccessory();
    v21 = v20;
    v22 = a3;
    v23 = sub_2246281E8();

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v87 = &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState];
    v27 = v22;
    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v87 = &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState];
    if (a3)
    {
      v24 = 0;
LABEL_17:
      v25 = 0;
      v22 = a3;
      v26 = v24;
      v27 = a3;
      goto LABEL_18;
    }

    v24 = 1;
  }

  if (*v87 == v83)
  {
    v28 = v91;
    v29 = &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger];
    v30 = v90;
    (*(v91 + 16))(v10, v29, v90);
    v31 = sub_224627B58();
    v32 = sub_224628058();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "Nothing to sync", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    return (*(v28 + 8))(v10, v30);
  }

  v35 = v90;
  if (v20)
  {
    a3 = v81;
    goto LABEL_17;
  }

  v20 = *a2;
  a3 = v81;
  if (*a2)
  {
LABEL_8:
    v27 = v20;
    v25 = 1;
    v22 = a3;
    v26 = v24;
LABEL_18:
    v77[1] = v26;
    v78 = v25;
    v82 = v27;
    v36 = *(v91 + 16);
    v84 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger;
    v85 = v36;
    v36(v17, &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v90);
    v79 = v22;
    v37 = a4;
    v38 = sub_224627B58();
    v39 = sub_224628058();
    v40 = os_log_type_enabled(v38, v39);
    v86 = a4;
    if (v40)
    {
      v41 = swift_slowAlloc();
      *v41 = 67109120;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v42 = 1;
      }

      else
      {
        v42 = 0;
      }

      *(v41 + 4) = v42;

      _os_log_impl(&dword_224507000, v38, v39, "syncing state: calling delegate %{BOOL}d", v41, 8u);
      MEMORY[0x22AA526D0](v41, -1, -1);
    }

    else
    {

      v38 = v37;
    }

    v43 = *(v91 + 8);
    v44 = v90;
    v91 += 8;
    v80 = v43;
    v43(v17, v90);
    v45 = v37 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v47 = v83;
    if (Strong)
    {
      v48 = *(v45 + 1);
      v49 = *(&v82->isa + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
      swift_getObjectType();
      v50 = *(v48 + 8);
      v51 = v49;
      v50();

      v44 = v90;
      swift_unknownObjectRelease();
    }

    v52 = *(&v37->isa + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected);
    v53 = v81;
    v78 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected;
    *(&v37->isa + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected) = v81;
    v54 = v79;

    v55 = v86;
    *v87 = v47;
    v85(v88, &v55[v84], v44);
    v56 = v54;
    v57 = sub_224627B58();
    v58 = sub_224628058();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412546;
      *(v59 + 4) = v56;
      *v60 = v53;
      *(v59 + 12) = 2048;
      *(v59 + 14) = v47;
      v61 = v56;
      _os_log_impl(&dword_224507000, v57, v58, "syncing state: newconnected %@, tracking button state %ld", v59, 0x16u);
      sub_2245098A0(v60, &qword_27D0C9660);
      v62 = v60;
      v44 = v90;
      MEMORY[0x22AA526D0](v62, -1, -1);
      MEMORY[0x22AA526D0](v59, -1, -1);
    }

    v63 = v80;
    v80(v88, v44);
    v85(v89, &v86[v84], v44);
    v64 = v37;
    v65 = sub_224627B58();
    v66 = sub_224628058();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412546;
      v69 = *(&v37->isa + v78);
      *(v67 + 4) = v69;
      *v68 = v69;
      *(v67 + 12) = 2048;
      v70 = *v87;
      v71 = v69;

      *(v67 + 14) = v70;
      _os_log_impl(&dword_224507000, v65, v66, "after sync: connected %@, tracking button state %ld", v67, 0x16u);
      sub_2245098A0(v68, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v68, -1, -1);
      MEMORY[0x22AA526D0](v67, -1, -1);
      v72 = v82;
    }

    else
    {

      v72 = v64;
      v65 = v64;
    }

    return v63(v89, v44);
  }

  v73 = v91;
  (*(v91 + 16))(v19, &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v90);
  v74 = sub_224627B58();
  v75 = sub_224628048();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_224507000, v74, v75, "All accessories are nil, we should never come here", v76, 2u);
    MEMORY[0x22AA526D0](v76, -1, -1);
  }

  return (*(v73 + 8))(v19, v35);
}

void *sub_2245E4F94()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug;
  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug);
  if (v9)
  {
    goto LABEL_5;
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v2);
  v10 = sub_224627B58();
  v11 = sub_224628058();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224507000, v10, v11, "dockkit: creating debug XPC connection", v12, 2u);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_224627CB8();
  v15 = [v13 initWithMachServiceName:v14 options:4096];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v15 setExportedObject_];

  v33 = sub_22460824C;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_224580D44;
  v32 = &block_descriptor_122;
  v21 = _Block_copy(&aBlock);

  [v15 setInterruptionHandler_];
  _Block_release(v21);
  v33 = sub_224608280;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_224580D44;
  v32 = &block_descriptor_125;
  v22 = _Block_copy(&aBlock);

  [v15 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v1 + v8);
  *(v1 + v8) = v15;
  v24 = v15;

  v25 = *(v1 + v8);
  [v25 resume];

  v9 = *(v1 + v8);
  if (v9)
  {
LABEL_5:
    v26 = *(v1 + v6);
    v27 = v9;
  }

  else
  {
    v26 = *(v1 + v6);
  }

  os_unfair_lock_unlock(v26 + 4);

  return v9;
}

uint64_t DockCoreManager.setDockAccessoryState(info:docked:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245E549C, 0, 0);
}

uint64_t sub_2245E549C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22457723C;
  v4 = swift_continuation_init();
  sub_2245E554C(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245E554C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a3 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E4F94();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_22457FDC0;
    v20[4] = v12;
    v41 = sub_22460A980;
    v42 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D42E8;
    v40 = &block_descriptor_1673;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v8 = v36[2];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_22457FDC0;
    *(v9 + 24) = v12;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_2245803F4;
    *(a3 + 24) = v9;
    v41 = sub_22460A920;
    v42 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D4378;
    v40 = &block_descriptor_1684;
    v11 = _Block_copy(&aBlock);
    a4 = v42;

    swift_unknownObjectRetain();

    [v8 setDockAccessoryStateWithInfo:a1 docked:a2 completion:v11];

    swift_unknownObjectRelease_n();
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v24 = swift_allocError();
  *v25 = xmmword_22462FFB0;
  *(v25 + 16) = 4;
  swift_willThrow();
  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v26 = v24;
  v27 = v24;
  v28 = sub_224627B58();
  v29 = sub_224628048();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36[1] = a4;
    v32 = v31;
    *v30 = 138412290;
    v33 = v24;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v28, v29, "dockkit: failed getting sync debug connection, can't send xpc %@", v30, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v32, -1, -1);
    MEMORY[0x22AA526D0](v30, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v35 = v24;
  swift_continuation_throwingResumeWithError();
}