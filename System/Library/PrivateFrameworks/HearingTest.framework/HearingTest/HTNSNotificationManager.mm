@interface HTNSNotificationManager
- (void)dealloc;
- (void)handleDidActivate;
- (void)handleDidEnterBackground;
- (void)handleWillDeactivate;
- (void)handleWillTerminate;
- (void)notifyTestResumed;
- (void)updateTimestamp;
@end

@implementation HTNSNotificationManager

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for HTNSNotificationManager();
  [(HTNSNotificationManager *)&v6 dealloc];
}

- (void)handleDidEnterBackground
{
  v2 = self;
  sub_2520A947C();
}

- (void)handleWillDeactivate
{
  v2 = self;
  sub_2520A94E0();
}

- (void)handleDidActivate
{
  v2 = self;
  sub_2520A9720();
}

- (void)handleWillTerminate
{
  v2 = self;
  sub_2520A9784();
}

- (void)notifyTestResumed
{
  v2 = self;
  sub_2520A9AD4();
}

- (void)updateTimestamp
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v56 - v5;
  v7 = objc_opt_self();
  v8 = [v7 processInfo];
  v9 = [v8 processName];

  v10 = sub_252141B9C();
  v12 = v11;

  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v57 = "tat";
  v14 = sub_252141B6C();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = sub_252141B6C();
  v17 = [v15 stringForKey_];

  if (v17)
  {
    v56[1] = 0xD000000000000014;
    v18 = sub_252141B9C();
    v20 = v19;

    if (v10 == v18 && v12 == v20)
    {

      goto LABEL_8;
    }

    v21 = sub_25214247C();

    if (v21)
    {
LABEL_8:
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v22 = sub_25214198C();
      __swift_project_value_buffer(v22, qword_27F4CDE68);
      v23 = sub_25214196C();
      v24 = sub_252141FBC();
      v25 = os_log_type_enabled(v23, v24);
      v56[0] = "HTLastSessionTimestamp";
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v58 = v27;
        *v26 = 136315138;
        v28 = [v7 processInfo];
        v29 = [v28 processName];

        v30 = sub_252141B9C();
        v32 = v31;

        v33 = sub_2520A5448(v30, v32, &v58);

        *(v26 + 4) = v33;
        _os_log_impl(&dword_25207E000, v23, v24, "Updating current session timestamp for %s (deactivated)", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x253099FD0](v27, -1, -1);
        MEMORY[0x253099FD0](v26, -1, -1);
      }

      v34 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v35 = sub_252141B6C();
      v36 = [v34 initWithSuiteName_];

      if (v36)
      {
        sub_25214187C();
        v37 = sub_25214188C();
        v38 = *(v37 - 8);
        (*(v38 + 56))(v6, 0, 1, v37);
        sub_2520AA46C(v6, v3);
        v39 = 0;
        if ((*(v38 + 48))(v3, 1, v37) != 1)
        {
          v39 = sub_25214185C();
          (*(v38 + 8))(v3, v37);
        }

        v40 = sub_252141B6C();
        [v36 setValue:v39 forKey:v40];

        swift_unknownObjectRelease();
        sub_2520AA4DC(v6);
        v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v42 = sub_252141B6C();
        v43 = [v41 initWithSuiteName_];

        if (v43)
        {
          v44 = [v7 processInfo];
          v45 = [v44 processName];

          if (!v45)
          {
            sub_252141B9C();
            v45 = sub_252141B6C();
          }

          v46 = sub_252141B6C();
          [v43 setValue:v45 forKey:v46];

          v47 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v48 = sub_252141B6C();
          v49 = [v47 initWithSuiteName_];

          if (v49)
          {
            sub_2520DC654();
            v50 = sub_252141B6C();

            v51 = sub_252141B6C();
            [v49 setValue:v50 forKey:v51];

            return;
          }

          goto LABEL_30;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v52 = sub_25214198C();
  __swift_project_value_buffer(v52, qword_27F4CDE68);
  v57 = sub_25214196C();
  v53 = sub_252141FAC();
  if (os_log_type_enabled(v57, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_25207E000, v57, v53, "This process should not update a different process timestamp!", v54, 2u);
    MEMORY[0x253099FD0](v54, -1, -1);
  }

  v55 = v57;
}

@end