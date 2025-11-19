uint64_t sub_1A396E3A8()
{
  sub_1A38E805C(0, &qword_1EB0FF648);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660);
  v5 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681B0;
  *(v6 + 32) = v5;
  return sub_1A3A31CB0();
}

uint64_t sub_1A396E630()
{
  v25 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A791B0;
  *(inited + 32) = xmmword_1A3A681A0;
  v1 = (inited + 32);
  *(inited + 48) = 0;
  v24 = inited;
  v2 = [objc_opt_self() capabilities];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 isLivePhotoAutoModeSupported];

  if ((v4 & 1) == 0)
  {
    if (*v1 == 2)
    {
      v5 = 0;
    }

    else if (*(inited + 40) == 2)
    {
      v5 = 1;
    }

    else
    {
      v6 = *(inited + 48);
      if (v6 != 2)
      {
LABEL_23:
        v7 = *(inited + 16);
        if (v7 < 3)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v5 = 3;
LABEL_25:
        v6 = v5;
        if (!__OFADD__(v7, v5 - v7))
        {
          v24 = inited;
          if (v5 <= *(inited + 24) >> 1)
          {
LABEL_27:
            sub_1A395B4F4(v5, v7, 0);
            goto LABEL_28;
          }

LABEL_42:
          if (v7 > v6)
          {
            v6 = v7;
          }

          v18 = v5;
          v19 = v7;
          v20 = sub_1A39562D0(1, v6, 1, inited);
          v7 = v19;
          inited = v20;
          v5 = v18;
          v24 = inited;
          goto LABEL_27;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v5 = 2;
    }

    v6 = v5 + 1;
    v7 = *(inited + 16);
    if (v5 + 1 != v7)
    {
      v8 = (inited + 8 * v5 + 40);
      while (v6 < v7)
      {
        if (*v8 != 2)
        {
          if (v6 != v5)
          {
            if (v5 >= v7)
            {
              __break(1u);
LABEL_20:
              if (v7 < v5)
              {
                goto LABEL_40;
              }

              if (v5 < 0)
              {
                __break(1u);
                goto LABEL_23;
              }

              goto LABEL_25;
            }

            v9 = v1[v5];
            v1[v5] = *v8;
            *v8 = v9;
            v7 = *(inited + 16);
          }

          ++v5;
        }

        ++v6;
        ++v8;
        if (v6 == v7)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_38;
    }

    v7 = v5 + 1;
    goto LABEL_25;
  }

LABEL_28:
  v10 = *(inited + 16);
  if (v10)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3A31FD0();
    v11 = 0;
    while (v11 < *(inited + 16))
    {
      v21 = *(inited + 8 * v11 + 32);
      sub_1A396C040(&v21, &v22);
      ++v11;
      sub_1A3A31FA0();
      sub_1A3A31FE0();
      sub_1A3A31FF0();
      sub_1A3A31FB0();
      if (v10 == v11)
      {

        v12 = v23;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_1A38E805C(0, &qword_1EB0FF640);
    sub_1A3A2EA50();
    sub_1A3A32080();

    goto LABEL_36;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v13 = sub_1A3A31810();
  v14 = CAMLocalizedFrameworkString(v13, 0);

  sub_1A3A31850();
  v15 = sub_1A3A31810();
  v16 = [objc_opt_self() systemImageNamed_];

  sub_1A3A31810();
  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  sub_1A3A2EA50();
  sub_1A3A321D0();
  sub_1A38E805C(0, &qword_1EB0FF640);
LABEL_36:

  sub_1A38E805C(0, &qword_1EB0FF690);
  return sub_1A3A31CB0();
}

uint64_t sub_1A396EAA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF668);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v44 = &v41 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - v3;
  v42 = sub_1A3A2EB90();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1A3A31FD0();
  v7 = 0;
  v8 = (v4 + 8);
  v45 = ".menus.livePhotoMode";
  while (1)
  {
    v9 = *(&unk_1F1655030 + v7 + 32);
    if ((v9 - 1) < 3)
    {
      break;
    }

    if (v9)
    {
      goto LABEL_22;
    }

    v15 = sub_1A3A31810();
    v16 = CAMLocalizedFrameworkString(v15, 0);

    sub_1A3A31850();
LABEL_9:
    strcpy(v49, "menuIdentifier");
    v49[15] = -18;
    v17 = sub_1A3A31810();
    type metadata accessor for Identifier(0);
    v50 = v17;
    v51 = v18;
    v52[0] = 0x65756C6176;
    v52[1] = 0xE500000000000000;
    v52[5] = MEMORY[0x1E69E6530];
    v52[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678);
    v19 = sub_1A3A320E0();
    sub_1A3A2EA60();
    sub_1A396F6F0(v49, &v46);
    v20 = v46;
    v21 = v47;
    v22 = sub_1A3A1B864(v46, v47);
    if (v23)
    {
      goto LABEL_18;
    }

    *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v22;
    v24 = (v19[6] + 16 * v22);
    *v24 = v20;
    v24[1] = v21;
    sub_1A3924CD4(v48, (v19[7] + 32 * v22));
    v25 = v19[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v19[2] = v27;
    sub_1A396F6F0(v52, &v46);
    v28 = v46;
    v29 = v47;
    v30 = sub_1A3A1B864(v46, v47);
    if (v31)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1A38E805C(0, &qword_1EB0FF640);
      sub_1A3A2EA50();
      sub_1A3A32080();

LABEL_17:

      sub_1A38E805C(0, &qword_1EB0FF690);
      return sub_1A3A31CB0();
    }

    *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
    v32 = (v19[6] + 16 * v30);
    *v32 = v28;
    v32[1] = v29;
    sub_1A3924CD4(v48, (v19[7] + 32 * v30));
    v33 = v19[2];
    v26 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v19[2] = v34;
    sub_1A38E805C(0, &qword_1EB0FF688);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680);
    swift_arrayDestroy();
    *(&v48[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
    v46 = v19;
    sub_1A3A31DC0();
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    sub_1A3A31FB0();
    v7 += 8;
    if (v7 == 32)
    {
      v35 = v53;
      v36 = sub_1A3A31810();
      v37 = CAMLocalizedFrameworkString(v36, 0);

      sub_1A3A31850();
      v38 = sub_1A3A31810();
      v39 = [objc_opt_self() systemImageNamed_];

      sub_1A3A31810();
      if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
      {
        goto LABEL_20;
      }

      sub_1A3A2EA50();
      sub_1A3A321D0();
      sub_1A38E805C(0, &qword_1EB0FF640);
      goto LABEL_17;
    }
  }

  CAMSecondsForTimerDuration(*(&unk_1F1655030 + v7 + 32));
  v10 = sub_1A3A2ED50();
  (*(*(v10 - 8) + 56))(v43, 1, 1, v10);
  v11 = sub_1A3A2ED90();
  (*(*(v11 - 8) + 56))(v44, 1, 1, v11);
  sub_1A3A2EB80();
  if (qword_1EB0FC1A8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB101B18;
  v13 = sub_1A3A2EB70();
  v14 = [v12 stringFromDateComponents_];

  if (v14)
  {
    sub_1A3A31850();

    (*v8)(v6, v42);
    goto LABEL_9;
  }

  __break(1u);
LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000019, 0x80000001A3AA5C60);
  v52[6] = v9;
  type metadata accessor for CAMTimerDuration(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A396F35C()
{
  sub_1A38E805C(0, &qword_1EB0FF648);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660);
  return sub_1A3A31C00();
}

BOOL sub_1A396F548(void *a1, uint64_t a2)
{
  if ([a1 propertyList])
  {
    sub_1A3A31E60();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638);
    if (swift_dynamicCast())
    {
      if (*(v6 + 16) && (v3 = sub_1A3A1B864(0x65756C6176, 0xE500000000000000), (v4 & 1) != 0))
      {
        sub_1A395ADE0(*(v6 + 56) + 32 * v3, v9);

        if (swift_dynamicCast())
        {
          return v7 == a2;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A388F740(v9, &qword_1EB0FE508);
  }

  return 0;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A396F6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CAMSecondsForTimerDuration(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A3A791F8[a1 - 1];
  }
}

unint64_t sub_1A396F784()
{
  result = qword_1EB0FF6A0;
  if (!qword_1EB0FF6A0)
  {
    sub_1A38E805C(255, &qword_1ED998538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF6A0);
  }

  return result;
}

__n128 sub_1A396F7F4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

__n128 sub_1A396F8C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 224);
  v5 = *(v3 + 240);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void *sub_1A396F998(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1A397BDBC(*(a1 + 16), 0, a2);
  v5 = sub_1A397D670(&v7, v4 + 4, v3, a1);
  sub_1A397D770();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

__n128 sub_1A396FA30@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

char *sub_1A396FB04(uint64_t a1)
{
  v24 = sub_1A3A2ED60();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A2ED80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF730);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = MEMORY[0x1E6969B50];
  sub_1A397E370(&qword_1ED998860, MEMORY[0x1E6969B50]);
  sub_1A3A31930();
  sub_1A397E370(&qword_1ED998868, v12);
  v13 = (v2 + 8);
  for (i = MEMORY[0x1E69E7CC0]; ; *&i[8 * v21 + 32] = v19)
  {
    sub_1A3A31B70();
    sub_1A397E370(&qword_1ED998870, MEMORY[0x1E6969B18]);
    v15 = v24;
    v16 = sub_1A3A31790();
    (*v13)(v4, v15);
    if (v16)
    {
      break;
    }

    v17 = sub_1A3A31BC0();
    v19 = *v18;
    v17(v25, 0);
    sub_1A3A31B80();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1A3956334(0, *(i + 2) + 1, 1, i);
    }

    v21 = *(i + 2);
    v20 = *(i + 3);
    if (v21 >= v20 >> 1)
    {
      i = sub_1A3956334((v20 > 1), v21 + 1, 1, i);
    }

    *(i + 2) = v21 + 1;
  }

  sub_1A388F740(v11, &qword_1EB0FF730);
  return i;
}

uint64_t sub_1A396FF70(void *a1, double a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A397A5B0(*&a2, 0, a1);
}

uint64_t sub_1A3970234@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  swift_beginAccess();
  return sub_1A397BCBC(v1 + v3, a1);
}

uint64_t sub_1A39702A0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39702F8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A39703B0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A3970410(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A397A318(a3, 0, a1);
}

uint64_t sub_1A39704B4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__preserveExposure;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397050C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970564()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39705BC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isImagePickerController;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3970674(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (sub_1A3A318C0() < 1)
    {
      if (qword_1EB0FC1A0 != -1)
      {
        swift_once();
      }

      v5 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v5, qword_1EB0FF6A8);
      v6 = v2;
      v12 = sub_1A3A2F280();
      v7 = sub_1A3A31C10();

      if (os_log_type_enabled(v12, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v6;
        *v9 = a1;
        v11 = v6;
        _os_log_impl(&dword_1A3640000, v12, v7, "Ignoring thumbnail image with missing uuid: %@", v8, 0xCu);
        sub_1A388F740(v9, &qword_1EB0FC4A8);
        MEMORY[0x1A58FAC10](v9, -1, -1);
        MEMORY[0x1A58FAC10](v8, -1, -1);

        v10 = v11;
      }

      else
      {

        v10 = v12;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2EA50();
      sub_1A3A2F070();
    }
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3970B98()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970C10()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970DBC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A3970EB0()
{
  v1 = v0 + OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A39710EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, id), uint64_t a5)
{
  v30[0] = a5;
  v30[1] = a2;
  v31 = a4;
  v30[2] = a3;
  v32 = sub_1A3A2ED60();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2ED80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF730);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  (*(v10 + 16))(v12, a1, v9);
  v16 = MEMORY[0x1E6969B50];
  sub_1A397E370(&qword_1ED998860, MEMORY[0x1E6969B50]);
  sub_1A3A31930();
  sub_1A397E370(&qword_1ED998868, v16);
  v17 = (v6 + 8);
  for (i = MEMORY[0x1E69E7CC0]; ; *(i + 8 * v25 + 32) = v23)
  {
    sub_1A3A31B70();
    sub_1A397E370(&qword_1ED998870, MEMORY[0x1E6969B18]);
    v19 = v32;
    v20 = sub_1A3A31790();
    (*v17)(v8, v19);
    if (v20)
    {
      break;
    }

    v21 = sub_1A3A31BC0();
    v23 = *v22;
    v21(v33, 0);
    sub_1A3A31B80();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = (v30[0])(0, *(i + 16) + 1, 1, i);
    }

    v25 = *(i + 16);
    v24 = *(i + 24);
    if (v25 >= v24 >> 1)
    {
      i = (v30[0])(v24 > 1, v25 + 1, 1, i);
    }

    *(i + 16) = v25 + 1;
  }

  sub_1A388F740(v15, &qword_1EB0FF730);
  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = v30[3];
  return sub_1A397A198(i, v28, KeyPath, v27, v31);
}

uint64_t sub_1A39714EC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971544()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397159C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971674()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39716CC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isFlipSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971724()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isHDRSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39717DC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971834()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isTimerSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39718CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1A3A2ED80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2ED70();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A3971A08(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1A3A320B0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A58F7DC0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v6 integerValue];

    ++v4;
    if (v9 < 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A3956320(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1A3956320((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      v4 = v8;
    }
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  return sub_1A397A198(v5, v15, KeyPath, v13, sub_1A3A07EE8);
}

uint64_t sub_1A3971C3C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971D24()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971E3C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971E94()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971EEC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971F44(void *a1, double a2, double a3, double a4, double a5)
{
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  v8 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A397A444(v7, a1);
}

__n128 sub_1A3971FC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1A3972028()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972080()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39720D8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972130()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__useMessagesUI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972194(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A39721F0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972248()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39722A0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39722F8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972350()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39723A8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972460()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39724B8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39726E4()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v2 = *(v1 + 616);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 16);

  return v3;
}

void sub_1A3972860(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 616);
  sub_1A3A2EA60();
  a4(a3, v9);
}

uint64_t sub_1A3972A74(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3972CA0()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v2 = *(v1 + 624);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1A3972E04(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 17) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3973030(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 18) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397325C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 19) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3973488(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  sub_1A3A2EA60();
  LOBYTE(a1) = sub_1A3A07FD8(a1);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel);
  sub_1A3A2F080();

  if (*(v4 + 20) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A39738C8(void *a1, double a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v7 = a1;
  sub_1A3A2F080();

  v8 = sub_1A3A2EA60();
  a4(v8, a2);
}

uint64_t sub_1A39739C0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3973BEC(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = *(v5 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v6 + 24) != a1 || *(v6 + 32) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3973E2C(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = *(v5 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v6 + 40) != a1 || *(v6 + 48) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397406C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3974294(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39744BC(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 72) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39746EC(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 80) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3974918(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 81) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3974B44(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 82) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A3974E00(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 944);
  sub_1A3A2EA60();
  a4(a3, v9);
}

uint64_t sub_1A3975014(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 944);
  swift_getKeyPath();
  sub_1A397E370(qword_1ED998460, type metadata accessor for ChromeFilterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if ((sub_1A39FCB74(a1, *(v4 + 40)) & 1) == 0)
  {
    v5 = sub_1A3A2EA50();
    sub_1A3905990(v5);
  }
}

void sub_1A39751E4(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 944);
  sub_1A3A2EA60();
  a4(a3, v9);
}

uint64_t sub_1A3975320(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397554C()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v2 = *(v1 + 632);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 33);

  return v3;
}

uint64_t sub_1A39756B0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 33) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39758DC(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3975B0C()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v2 = *(v1 + 632);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 34);

  return v3;
}

uint64_t sub_1A3975C70(uint64_t a1)
{
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v25 = *(a1 + 64);
  v4 = *(a1 + 16);
  v21 = *a1;
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  v16.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath();
  v16.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 120);
  v17 = *(*&v6 + 104);
  v18 = v7;
  v19 = *(*&v6 + 136);
  v20 = *(*&v6 + 152);
  v16 = *(*&v6 + 88);
  if (CAMLiquidShutterShapeEqualToShape(&v21, &v16))
  {
  }

  v8 = *(*&v6 + 120);
  v17 = *(*&v6 + 104);
  v18 = v8;
  v19 = *(*&v6 + 136);
  v20 = *(*&v6 + 152);
  v16 = *(*&v6 + 88);
  v14[2] = v23;
  v14[3] = v24;
  v15 = v25;
  v14[1] = v22;
  v14[0] = v21;
  if (CAMLiquidShutterShapeEqualToShape(&v16, v14))
  {
    *(*&v6 + 88) = *a1;
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    *(*&v6 + 152) = *(a1 + 64);
    *(*&v6 + 136) = v11;
    *(*&v6 + 120) = v10;
    *(*&v6 + 104) = v9;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v16.f64[0] = v6;
  sub_1A3A2F070();
}

uint64_t sub_1A3975F24(uint64_t a1)
{
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v25 = *(a1 + 64);
  v4 = *(a1 + 16);
  v21 = *a1;
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  v16.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath();
  v16.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 48);
  v17 = *(*&v6 + 32);
  v18 = v7;
  v19 = *(*&v6 + 64);
  v20 = *(*&v6 + 80);
  v16 = *(*&v6 + 16);
  if (CAMLiquidShutterShapeEqualToShape(&v21, &v16))
  {
  }

  v8 = *(*&v6 + 48);
  v17 = *(*&v6 + 32);
  v18 = v8;
  v19 = *(*&v6 + 64);
  v20 = *(*&v6 + 80);
  v16 = *(*&v6 + 16);
  v14[2] = v23;
  v14[3] = v24;
  v15 = v25;
  v14[1] = v22;
  v14[0] = v21;
  if (CAMLiquidShutterShapeEqualToShape(&v16, v14))
  {
    *(*&v6 + 16) = *a1;
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    *(*&v6 + 80) = *(a1 + 64);
    *(*&v6 + 48) = v10;
    *(*&v6 + 64) = v11;
    *(*&v6 + 32) = v9;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v16.f64[0] = v6;
  sub_1A3A2F070();
}

uint64_t sub_1A39761CC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v3;
  v27 = *(a1 + 64);
  v4 = *(a1 + 16);
  v23 = *a1;
  v24 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  v18.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath();
  v18.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 192);
  v21 = *(*&v6 + 208);
  v22 = *(*&v6 + 224);
  v8 = *(*&v6 + 160);
  v19 = *(*&v6 + 176);
  v20 = v7;
  v18 = v8;
  if (CAMLiquidShutterShapeEqualToShape(&v23, &v18))
  {
  }

  v9 = *(*&v6 + 192);
  v21 = *(*&v6 + 208);
  v22 = *(*&v6 + 224);
  v10 = *(*&v6 + 160);
  v19 = *(*&v6 + 176);
  v20 = v9;
  v18 = v10;
  v16[2] = v25;
  v16[3] = v26;
  v17 = v27;
  v16[1] = v24;
  v16[0] = v23;
  if (CAMLiquidShutterShapeEqualToShape(&v18, v16))
  {
    *(*&v6 + 160) = *a1;
    v11 = *(a1 + 16);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    *(*&v6 + 224) = *(a1 + 64);
    *(*&v6 + 192) = v12;
    *(*&v6 + 208) = v13;
    *(*&v6 + 176) = v11;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v18.f64[0] = v6;
  sub_1A3A2F070();
}

void sub_1A397646C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v5 = *(a3 + 64);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = v5;
  v8 = a1;
  a4(v9);
}

uint64_t sub_1A39764DC(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 640);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 232) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3976708(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 640);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 240) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3976938(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  sub_1A3A2EA60();
  LOBYTE(a1) = sub_1A38C9108(a1);
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  if (*(v4 + 32) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A3976D7C(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 656);
  sub_1A3A2EA60();
  a4(a3, v9);
}

uint64_t sub_1A3976FA4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3976FFC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977054()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__autoSmartFramingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39770AC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977104()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397715C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39771B4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397720C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977264(void *a1, uint64_t a2, int a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;

  return sub_1A3979DD4(a3, v5);
}

uint64_t sub_1A39772D0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977314(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  KeyPath = &v208 - v5;
  v7 = sub_1A3A2ED80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMarked);
  swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    sub_1A38ECEFC(a1, *v11);
  }

  v12 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValue);
  swift_beginAccess();
  if ((v12[1] & 1) == 0)
  {
    sub_1A38ED040(a1, *v12);
  }

  v13 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMaximum);
  swift_beginAccess();
  if ((v13[1] & 1) == 0)
  {
    sub_1A38FCE38(a1, *v13);
  }

  v14 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMinimum);
  swift_beginAccess();
  if ((v14[1] & 1) == 0)
  {
    sub_1A38FCCF4(a1, *v14);
  }

  v15 = v2 + OBJC_IVAR___CAMChromeConfigurator__aspectRatioCrop;
  swift_beginAccess();
  if ((v15[8] & 1) == 0)
  {
    v16 = sub_1A39A2714(*v15);
    sub_1A38FC55C(v16, a1);
  }

  v17 = OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 != 2)
  {
    sub_1A38FE568(v18 & 1, a1);
  }

  v19 = v2 + OBJC_IVAR___CAMChromeConfigurator___hdrMode;
  swift_beginAccess();
  if ((v19[8] & 1) == 0)
  {
    sub_1A38FD5CC(*v19, a1);
  }

  v20 = OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21 != 2)
  {
    sub_1A38FF0CC(v21 & 1, a1);
  }

  v22 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeControlMode;
  swift_beginAccess();
  if ((v22[8] & 1) == 0)
  {
    if (*v22 >= 3uLL)
    {
      goto LABEL_285;
    }

    sub_1A38FF4A0(0x10002u >> (8 * *v22), a1);
  }

  v23 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeStatus;
  swift_beginAccess();
  if ((v23[8] & 1) == 0)
  {
    sub_1A38FF5E4(*v23, a1);
  }

  v24 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeCaptureState;
  swift_beginAccess();
  if ((v24[8] & 1) == 0)
  {
    sub_1A38FF210(*v24, a1);
  }

  v25 = (v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeDurationMapping);
  swift_beginAccess();
  if ((v25[2] & 1) == 0)
  {
    sub_1A38FF350(a1, *v25, v25[1]);
  }

  v26 = (v2 + OBJC_IVAR___CAMChromeConfigurator__overscanOverlayAlpha);
  swift_beginAccess();
  if ((v26[2] & 1) == 0)
  {
    sub_1A38F87B4(*v26, v26[1]);
  }

  v27 = v2 + OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState;
  swift_beginAccess();
  v28 = *v27;
  if (v28 != 2)
  {
    if (v28)
    {
      v29 = sub_1A399097C(*(v27 + 1));
    }

    else
    {
      v29 = 0;
    }

    sub_1A38FFC34(v29, a1);
  }

  v30 = v2 + OBJC_IVAR___CAMChromeConfigurator__livePhotoMode;
  swift_beginAccess();
  if ((v30[8] & 1) == 0)
  {
    v31 = sub_1A3918700(*v30);
    sub_1A38FEF88(v31, a1);
  }

  v32 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  swift_beginAccess();
  sub_1A397BCBC(v2 + v32, KeyPath);
  v33 = (*(v8 + 48))(KeyPath, 1, v7);
  v216 = v2;
  if (v33 == 1)
  {
    sub_1A388F740(KeyPath, &qword_1EB0FF728);
  }

  else
  {
    (*(v8 + 32))(v10, KeyPath, v7);
    v34 = sub_1A396FB04(v10);
    KeyPath = swift_getKeyPath();
    v234 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (sub_1A3A07EE8(v34, *(a1 + 600)))
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1A38F07B0(v34);
      (*(v8 + 8))(v10, v7);
    }

    v2 = v216;
  }

  v35 = OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring;
  swift_beginAccess();
  v36 = *(v2 + v35);
  if (v36 != 2)
  {
    sub_1A38FCF7C(v36 & 1, a1);
  }

  v37 = OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected;
  v38 = v216;
  swift_beginAccess();
  v39 = *(v38 + v37);
  if (v39 != 2)
  {
    sub_1A38FD0C0(v39 & 1, a1);
  }

  v40 = v216 + OBJC_IVAR___CAMChromeConfigurator__photoEncodingBehavior;
  swift_beginAccess();
  if ((v40[8] & 1) == 0)
  {
    v41 = sub_1A39181EC(*v40);
    sub_1A38FF724(v41, a1);
  }

  v42 = v216 + OBJC_IVAR___CAMChromeConfigurator__defaultPhotoEncodingBehavior;
  swift_beginAccess();
  if ((v42[8] & 1) == 0)
  {
    v43 = sub_1A39181EC(*v42);
    sub_1A38FF868(v43, a1);
  }

  v44 = v216 + OBJC_IVAR___CAMChromeConfigurator__photoResolution;
  swift_beginAccess();
  if ((v44[8] & 1) == 0)
  {
    v45 = sub_1A39182B0(*v44);
    sub_1A38FF9AC(v45, a1);
  }

  v46 = v216 + OBJC_IVAR___CAMChromeConfigurator__defaultPhotoResolution;
  swift_beginAccess();
  if ((v46[8] & 1) == 0)
  {
    v47 = sub_1A39182B0(*v46);
    sub_1A38FFAF0(v47, a1);
  }

  v48 = OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration;
  v2 = v216;
  swift_beginAccess();
  v49 = *(v2 + v48);
  if (v49)
  {
    KeyPath = v49;
    sub_1A38ECB30([KeyPath mode], a1);
    if (*(v2 + v37) == 2 && [KeyPath mode] == 8)
    {
      sub_1A38FD0C0(1, a1);
    }

    v2 = &selRef_videoStabilizationButton;
    v50 = [KeyPath videoStabilizationStrength];
    p_ivar_lyt = &qword_1EB0FF000;
    if (v50 >= 4)
    {
      goto LABEL_286;
    }

    v213 = v44;
    v214 = v40;
    v215 = v27;
    v2 = v216;
    *(v216 + OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled) = 0x1010000u >> (8 * v50);
    sub_1A38FDC1C((0xCu >> (v50 & 0xF)) & 1, a1);
    sub_1A38FDFE8([KeyPath frontRearSimultaneousVideoEnabled], a1);
    v52 = [objc_opt_self() capabilities];
    if (!v52)
    {
      goto LABEL_280;
    }

    v53 = v52;
    v212 = [KeyPath mode];
    v211 = [KeyPath device];
    v210 = [KeyPath videoEncodingBehavior];
    v209 = [KeyPath videoConfiguration];
    v54 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
    swift_beginAccess();
    v55 = OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled;
    v56 = *(v2 + v54);
    v57 = [KeyPath prefersHDR10BitVideo];
    swift_getKeyPath();
    v232 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    LOBYTE(v207) = *(a1 + 755);
    v58 = [v53 resolvedVideoConfigurationForMode:v212 device:v211 videoEncodingBehavior:v210 videoConfiguration:v209 outputToExternalStorage:v56 & 1 prefersHDR10BitVideo:v57 frontRearSimultaneousVideoEnabled:v207];

    v59 = sub_1A38EBD88(v58, *(v2 + v55));
    sub_1A38FFFFC(v59, v60 & 1, a1);
    v61 = sub_1A38EBEE4(v58);
    sub_1A390015C(v61, v62 & 1, a1);
    sub_1A3901394([KeyPath devicePosition], a1);

    v40 = v214;
    v27 = v215;
    v44 = v213;
  }

  v63 = OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator;
  swift_beginAccess();
  v64 = *(v2 + v63);
  if (v64 != 2)
  {
    sub_1A38FDD60(v64 & 1, a1);
  }

  v65 = (v2 + OBJC_IVAR___CAMChromeConfigurator__viewfinderAspectRatio);
  swift_beginAccess();
  p_ivar_lyt = 0x1ED996000;
  if ((v65[1] & 1) == 0)
  {
    sub_1A39006BC(a1, *v65);
  }

  v66 = (v2 + OBJC_IVAR___CAMChromeConfigurator__currentViewportFrame);
  swift_beginAccess();
  if ((v66[4] & 1) == 0)
  {
    sub_1A3900800(a1, *v66, v66[1], v66[2], v66[3]);
  }

  v67 = (v2 + OBJC_IVAR___CAMChromeConfigurator__currentFourThreeViewportFrame);
  swift_beginAccess();
  if ((v67[4] & 1) == 0)
  {
    sub_1A390099C(a1, *v67, v67[1], v67[2], v67[3]);
  }

  v68 = (v2 + OBJC_IVAR___CAMChromeConfigurator__descriptionOverlayTextViewFrame);
  swift_beginAccess();
  if ((v68[4] & 1) == 0)
  {
    sub_1A3900B38(a1, *v68, v68[1], v68[2], v68[3]);
  }

  v69 = (v2 + OBJC_IVAR___CAMChromeConfigurator__buttonPlatterVerticalOffset);
  swift_beginAccess();
  if ((v69[1] & 1) == 0)
  {
    sub_1A3900CEC(a1, *v69);
  }

  v70 = OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge;
  swift_beginAccess();
  v71 = *(v2 + v70);
  if (v71 != 2)
  {
    sub_1A3900E30(v71 & 1, a1);
  }

  v72 = v2 + OBJC_IVAR___CAMChromeConfigurator__videoRecordingState;
  swift_beginAccess();
  if ((v72[8] & 1) == 0)
  {
    sub_1A38FFEBC(*v72, a1);
  }

  v73 = v2 + OBJC_IVAR___CAMChromeConfigurator__controlOrientation;
  swift_beginAccess();
  if ((v73[8] & 1) == 0)
  {
    sub_1A38FD204(*v73, a1);
  }

  v74 = *v27;
  if (v74 != 2)
  {
    if (v74)
    {
      v75 = sub_1A399097C(*(v27 + 1));
    }

    else
    {
      v75 = 0;
    }

    sub_1A38FFC34(v75, a1);
  }

  v76 = v2 + OBJC_IVAR___CAMChromeConfigurator__timerDuration;
  swift_beginAccess();
  if ((v76[8] & 1) == 0)
  {
    v77 = sub_1A39A07F4(*v76);
    sub_1A38FFD78(v77, a1);
  }

  if (v40[8])
  {
    goto LABEL_88;
  }

  if (*v40 >= 3uLL)
  {
    while (1)
    {
LABEL_285:
      sub_1A3A32070();
      __break(1u);

      __break(1u);
LABEL_286:
      v232 = 0;
      v233 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA6240);
      v231 = [KeyPath v2[3]];
      type metadata accessor for CAMVideoStabilizationStrength(0);
      sub_1A3A32060();
    }
  }

  sub_1A38FF724(*v40, a1);
LABEL_88:
  if ((v44[8] & 1) == 0)
  {
    v78 = sub_1A39182B0(*v44);
    sub_1A38FF9AC(v78, a1);
  }

  v79 = OBJC_IVAR___CAMChromeConfigurator__supportedPhotoResolutions;
  swift_beginAccess();
  v2 = *(v2 + v79);
  if (v2)
  {
    v80 = v2[2];
    v81 = MEMORY[0x1E69E7CC0];
    if (v80)
    {
      v215 = a1;
      v227 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v80, sub_1A3956AB0);
      v82 = 0;
      while (v82 < v2[2])
      {
        p_ivar_lyt = v2[v82 + 4];
        if (p_ivar_lyt >= 4)
        {
          goto LABEL_281;
        }

        v81 = v227;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956AB0(0, *(v81 + 16) + 1, 1);
          v81 = v227;
        }

        v84 = *(v81 + 16);
        v83 = *(v81 + 24);
        KeyPath = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          sub_1A3956AB0((v83 > 1), v84 + 1, 1);
          v81 = v227;
        }

        ++v82;
        *(v81 + 16) = KeyPath;
        *(v81 + v84 + 32) = 0x2010000u >> (8 * p_ivar_lyt);
        if (v80 == v82)
        {

          a1 = v215;
          p_ivar_lyt = &ChromeOnboardingViewModel.ivar_lyt;
          goto LABEL_101;
        }
      }

      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      v229 = 0;
      v230 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD00000000000001CLL, 0x80000001A3AA3B20);
      v226 = p_ivar_lyt;
      type metadata accessor for CAMPhotoResolution(0);
      sub_1A3A32060();
      goto LABEL_285;
    }

LABEL_101:
    swift_getKeyPath();
    v229 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (sub_1A3A07EEC(v81, *(a1 + 1056)))
    {
    }

    else
    {
      sub_1A38F42F4(v81);
    }
  }

  v85 = OBJC_IVAR___CAMChromeConfigurator__supportedEncodingBehaviors;
  v86 = v216;
  swift_beginAccess();
  v2 = *(v86 + v85);
  if (v2)
  {
    v87 = v2[2];
    v88 = MEMORY[0x1E69E7CC0];
    if (v87)
    {
      v226 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v87, sub_1A3956A80);
      for (i = 0; i != v87; ++i)
      {
        if (i >= v2[2])
        {
          goto LABEL_277;
        }

        p_ivar_lyt = v2[i + 4];
        if (p_ivar_lyt >= 3)
        {
          v227 = 0;
          v228 = 0xE000000000000000;
          sub_1A3A31F20();
          MEMORY[0x1A58F7770](0xD000000000000028, 0x80000001A3AA3AF0);
          v225 = p_ivar_lyt;
          type metadata accessor for CAMCapturePhotoEncodingBehavior(0);
          sub_1A3A32060();
          goto LABEL_285;
        }

        v88 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956A80(0, *(v88 + 16) + 1, 1);
          v88 = v226;
        }

        v91 = *(v88 + 16);
        v90 = *(v88 + 24);
        KeyPath = v91 + 1;
        if (v91 >= v90 >> 1)
        {
          sub_1A3956A80((v90 > 1), v91 + 1, 1);
          v88 = v226;
        }

        *(v88 + 16) = KeyPath;
        *(v88 + v91 + 32) = p_ivar_lyt;
      }

      p_ivar_lyt = &ChromeOnboardingViewModel.ivar_lyt;
    }

    swift_getKeyPath();
    v227 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (sub_1A3A07EEC(v88, *(a1 + 960)))
    {
    }

    else
    {
      sub_1A38F3AF0(v88);
    }
  }

  v92 = OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported;
  v93 = v216;
  swift_beginAccess();
  v94 = *(v93 + v92);
  if (v94 != 2)
  {
    sub_1A38FE6AC(v94 & 1, a1);
  }

  v95 = OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported;
  swift_beginAccess();
  v96 = *(v93 + v95);
  if (v96 != 2)
  {
    sub_1A38FE7F0(v96 & 1, a1);
  }

  v97 = OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported;
  swift_beginAccess();
  v98 = *(v93 + v97);
  if (v98 != 2)
  {
    sub_1A38FE934(v98 & 1, a1);
  }

  v99 = OBJC_IVAR___CAMChromeConfigurator__preserveExposure;
  swift_beginAccess();
  v100 = *(v93 + v99);
  if (v100 != 2)
  {
    sub_1A38FD344(v100 & 1, a1);
  }

  v101 = v93 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMinimum;
  swift_beginAccess();
  if ((*(v101 + 8) & 1) == 0)
  {
    sub_1A38FC6A0(a1, *v101);
  }

  v102 = v93 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMaximum;
  swift_beginAccess();
  if ((*(v102 + 8) & 1) == 0)
  {
    sub_1A38FC7E4(a1, *v102);
  }

  v103 = v93 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityDefault;
  swift_beginAccess();
  if ((*(v103 + 8) & 1) == 0)
  {
    sub_1A38FC928(a1, *v103);
  }

  v104 = v93 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensity;
  swift_beginAccess();
  if ((*(v104 + 8) & 1) == 0)
  {
    sub_1A38FCA6C(a1, *v104);
  }

  v105 = OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported;
  swift_beginAccess();
  v106 = *(v93 + v105);
  if (v106 != 2)
  {
    sub_1A38FCBB0(v106 & 1, a1);
  }

  v107 = OBJC_IVAR___CAMChromeConfigurator__isFlipSupported;
  swift_beginAccess();
  v108 = *(v93 + v107);
  if (v108 != 2)
  {
    sub_1A38FEA78(v108 & 1, a1);
  }

  v109 = OBJC_IVAR___CAMChromeConfigurator__isHDRSupported;
  swift_beginAccess();
  v110 = *(v93 + v109);
  if (v110 != 2)
  {
    sub_1A38FEBBC(v110 & 1, a1);
  }

  v111 = OBJC_IVAR___CAMChromeConfigurator__supportedLivePhotoModes;
  swift_beginAccess();
  v2 = *(v93 + v111);
  if (v2)
  {
    v112 = v2[2];
    v113 = MEMORY[0x1E69E7CC0];
    if (v112)
    {
      v222 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v112, sub_1A3956A50);
      for (KeyPath = 0; KeyPath != v112; ++KeyPath)
      {
        if (KeyPath >= v2[2])
        {
          goto LABEL_278;
        }

        p_ivar_lyt = v2[KeyPath + 4];
        if (p_ivar_lyt >= 3)
        {
          v223 = 0;
          v224 = 0xE000000000000000;
          sub_1A3A31F20();
          MEMORY[0x1A58F7770](0xD000000000000019, 0x80000001A3AA3B70);
          v221[9] = p_ivar_lyt;
          type metadata accessor for CAMLivePhotoMode(0);
          sub_1A3A32060();
          goto LABEL_285;
        }

        v113 = v222;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956A50(0, *(v113 + 16) + 1, 1);
          v113 = v222;
        }

        v115 = *(v113 + 16);
        v114 = *(v113 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1A3956A50((v114 > 1), v115 + 1, 1);
          v113 = v222;
        }

        *(v113 + 16) = v115 + 1;
        *(v113 + v115 + 32) = 2 - p_ivar_lyt;
      }
    }

    v116 = sub_1A3918430(v113);

    swift_getKeyPath();
    v223 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (sub_1A3A07EEC(v116, *(a1 + 1128)))
    {
    }

    else
    {
      sub_1A38F511C(v116);
    }
  }

  v117 = OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton;
  v118 = v216;
  swift_beginAccess();
  v119 = *(v118 + v117);
  if (v119 != 2)
  {
    sub_1A38FD994(v119 & 1, a1);
  }

  v120 = OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView;
  swift_beginAccess();
  v121 = *(v118 + v120);
  if (v121 != 2)
  {
    sub_1A38FDAD8(v121 & 1, a1);
  }

  v122 = OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar;
  swift_beginAccess();
  v123 = *(v118 + v122);
  if (v123 != 2)
  {
    sub_1A38FED00(v123 & 1, a1);
  }

  v124 = OBJC_IVAR___CAMChromeConfigurator__isTimerSupported;
  swift_beginAccess();
  v125 = *(v118 + v124);
  if (v125 != 2)
  {
    sub_1A38FEE44(v125 & 1, a1);
  }

  v126 = OBJC_IVAR___CAMChromeConfigurator__supportedVideoConfigurations;
  swift_beginAccess();
  v2 = *(v118 + v126);
  if (!v2)
  {
    goto LABEL_211;
  }

  v220 = MEMORY[0x1E69E7CD0];
  v219 = MEMORY[0x1E69E7CD0];
  KeyPath = v2[2];
  v215 = OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled;
  sub_1A3A2EA50();
  if (!KeyPath)
  {
    goto LABEL_205;
  }

  v127 = a1;
  v128 = 0;
  p_ivar_lyt = 30240;
  do
  {
    if (v128 >= v2[2])
    {
      goto LABEL_279;
    }

    v129 = v2[v128 + 4];
    if (v129 <= 0xE)
    {
      if (((1 << v129) & 0x7620) != 0)
      {
        v130 = 0;
        if (*(v216 + v215))
        {
          v131 = 2;
        }

        else
        {
          v131 = 3;
        }

        goto LABEL_182;
      }

      if (((1 << v129) & 0x992) != 0)
      {
        v130 = 0;
        v131 = 1;
        goto LABEL_182;
      }

      if (((1 << v129) & 0x4C) != 0)
      {
        v131 = 0;
        v130 = 0;
        goto LABEL_182;
      }
    }

    if ((v129 - 10000) >= 6)
    {
      if (v129)
      {
LABEL_284:
        v221[0] = 0;
        v221[1] = 0xE000000000000000;
        sub_1A3A31F20();
        MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
        v218 = v129;
        type metadata accessor for CAMCaptureVideoConfiguration(0);
        sub_1A3A32060();
        goto LABEL_285;
      }

      goto LABEL_167;
    }

    v131 = 0;
    v130 = 1;
LABEL_182:
    if (v129 <= 10)
    {
      if (v129 > 4)
      {
        if (v129 < 8)
        {
          v132 = 30;
          goto LABEL_200;
        }

        if (v129 != 8)
        {
          if (v129 == 9)
          {
LABEL_192:
            v132 = 60;
          }

          else
          {
            v132 = 24;
          }

LABEL_200:
          if ((v130 & 1) == 0)
          {
            sub_1A397C6BC(v221, v131, &qword_1EB0FF740);
            sub_1A397C6BC(v221, v132, &qword_1EB0FF738);
          }

          goto LABEL_167;
        }

LABEL_197:
        v132 = 240;
        goto LABEL_200;
      }

      if (v129 > 2)
      {
        if (v129 == 3)
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (v129 == 1)
        {
          goto LABEL_192;
        }

        if (v129 != 2)
        {
          goto LABEL_284;
        }
      }

LABEL_199:
      v132 = 120;
      goto LABEL_200;
    }

    if (v129 <= 9999)
    {
      if ((v129 - 11) < 2)
      {
        v132 = 25;
        goto LABEL_200;
      }

      if (v129 != 13)
      {
        if (v129 != 14)
        {
          goto LABEL_284;
        }

        v132 = 100;
        goto LABEL_200;
      }

      goto LABEL_199;
    }

    if ((v129 - 10000) >= 6)
    {
      goto LABEL_284;
    }

LABEL_167:
    ++v128;
  }

  while (KeyPath != v128);
  a1 = v127;
LABEL_205:

  v133 = sub_1A3A2EA50();
  v221[0] = sub_1A396F998(v133, &qword_1EB0FF300);
  sub_1A3A2EA50();
  sub_1A397BE38(v221, sub_1A395960C);

  v134 = v221[0];
  swift_getKeyPath();
  v221[0] = a1;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (sub_1A3A07EE8(v134, *(a1 + 864)))
  {
  }

  else
  {
    sub_1A38F2C70(v134);
  }

  v135 = sub_1A3A2EA50();
  v221[0] = sub_1A396F998(v135, &qword_1EB0FF338);
  sub_1A3A2EA50();
  sub_1A397BE38(v221, sub_1A39595D4);

  v136 = v221[0];
  swift_getKeyPath();
  v221[0] = a1;
  sub_1A3A2F080();

  if (sub_1A3A07EE8(v136, *(a1 + 872)))
  {
  }

  else
  {
    sub_1A38F2DF4(v136);
  }

LABEL_211:
  v137 = OBJC_IVAR___CAMChromeConfigurator__supportedVideoFormats;
  v138 = v216;
  swift_beginAccess();
  v139 = *(v138 + v137);
  if (v139)
  {
    swift_getKeyPath();
    v220 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2EA50();
    sub_1A3A2F080();

    if (sub_1A3A07EE8(v139, *(a1 + 880)))
    {
    }

    else
    {
      sub_1A38F2F78(v139);
    }
  }

  v140 = OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled;
  v141 = v216;
  swift_beginAccess();
  v142 = *(v141 + v140);
  if (v142 != 2)
  {
    sub_1A38FE424(v142 & 1, a1);
  }

  v143 = v141 + OBJC_IVAR___CAMChromeConfigurator__videoFormat;
  swift_beginAccess();
  if ((*(v143 + 8) & 1) == 0)
  {
    sub_1A38ECDBC(*v143, a1);
  }

  v144 = v141 + OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoEncodingBehavior;
  swift_beginAccess();
  if ((*(v144 + 8) & 1) == 0)
  {
    v145 = *v144;
    v146 = v216 + OBJC_IVAR___CAMChromeConfigurator__explicitProResColorSpace;
    swift_beginAccess();
    v147 = *v146;
    v148 = v146[8];
    v141 = v216;
    v149 = sub_1A38EC10C(v145, v147, v148);
    sub_1A39002BC(v149, a1);
  }

  v150 = v141 + OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoConfiguration;
  swift_beginAccess();
  if ((*(v150 + 8) & 1) == 0)
  {
    v151 = *v150;
    v152 = sub_1A38EBD88(v151, *(v141 + OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled));
    sub_1A39003FC(v152, v153 & 1, a1);
    v154 = sub_1A38EBEE4(v151);
    sub_1A390055C(v154, v155 & 1, a1);
  }

  v156 = OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported;
  swift_beginAccess();
  v157 = *(v141 + v156);
  if (v157 != 2)
  {
    sub_1A38FDEA4(v157 & 1, a1);
  }

  v158 = OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator;
  swift_beginAccess();
  v159 = *(v141 + v158);
  if (v159 != 2)
  {
    sub_1A38FE12C(v159 & 1, a1);
  }

  v160 = v141 + OBJC_IVAR___CAMChromeConfigurator__frontPIPFrame;
  swift_beginAccess();
  if ((*(v160 + 32) & 1) == 0)
  {
    sub_1A38FE270(a1, *v160, *(v160 + 8), *(v160 + 16), *(v160 + 24));
  }

  v161 = OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst;
  swift_beginAccess();
  v162 = *(v141 + v161);
  if (v162 != 2)
  {
    sub_1A3901620(v162 & 1, a1);
  }

  v163 = OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible;
  swift_beginAccess();
  v164 = *(v141 + v163);
  if (v164 != 2)
  {
    sub_1A3901764(v164 & 1, a1);
  }

  v165 = OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer;
  swift_beginAccess();
  v166 = *(v141 + v165);
  if (v166 != 2)
  {
    sub_1A39018A8(v166 & 1, a1);
  }

  v167 = OBJC_IVAR___CAMChromeConfigurator__useMessagesUI;
  swift_beginAccess();
  v168 = *(v141 + v167);
  if (v168 != 2)
  {
    sub_1A39019EC(v168 & 1, a1);
  }

  v169 = v141 + OBJC_IVAR___CAMChromeConfigurator__remainingRecordingTime;
  swift_beginAccess();
  if ((*(v169 + 8) & 1) == 0)
  {
    v170 = *v169;
    swift_getKeyPath();
    v217 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();
    v141 = v216;

    sub_1A3A2EA60();
    sub_1A39149CC(v170);
  }

  v171 = OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive;
  swift_beginAccess();
  v172 = *(v141 + v171);
  if (v172 != 2)
  {
    sub_1A3901B30(v172 & 1, a1);
  }

  v173 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported;
  swift_beginAccess();
  v174 = *(v141 + v173);
  if (v174 != 2)
  {
    sub_1A3902184(v174 & 1, a1);
  }

  v175 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported;
  swift_beginAccess();
  v176 = *(v141 + v175);
  if (v176 != 2)
  {
    sub_1A39022C8(v176 & 1, a1);
  }

  v177 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault;
  swift_beginAccess();
  v178 = *(v141 + v177);
  if (v178 != 2)
  {
    sub_1A3901C74(v178 & 1, a1);
  }

  v179 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault;
  swift_beginAccess();
  v180 = *(v141 + v179);
  if (v180 != 2)
  {
    sub_1A3901DB8(v180 & 1, a1);
  }

  v181 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled;
  swift_beginAccess();
  v182 = *(v141 + v181);
  if (v182 != 2)
  {
    sub_1A3902040(v182 & 1, a1);
  }

  v183 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled;
  swift_beginAccess();
  v184 = *(v141 + v183);
  if (v184 != 2)
  {
    sub_1A3901EFC(v184 & 1, a1);
  }

  v185 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled;
  swift_beginAccess();
  v186 = *(v141 + v185);
  if (v186 != 2)
  {
    sub_1A390240C(v186 & 1, a1);
  }

  v187 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled;
  swift_beginAccess();
  v188 = *(v141 + v187);
  if (v188 != 2)
  {
    sub_1A3902550(v188 & 1, a1);
  }

  v189 = v141 + OBJC_IVAR___CAMChromeConfigurator__exposureBias;
  swift_beginAccess();
  if ((*(v189 + 8) & 1) == 0)
  {
    sub_1A38ED184(a1, *v189);
  }

  v190 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
  swift_beginAccess();
  v191 = *(v141 + v190);
  if (v191 != 2)
  {
    sub_1A38FD488(v191 & 1, a1);
  }

  v192 = OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible;
  swift_beginAccess();
  v193 = *(v141 + v192);
  if (v193 != 2)
  {
    sub_1A38FD70C(v193 & 1, a1);
  }

  v194 = OBJC_IVAR___CAMChromeConfigurator__isImagePickerController;
  swift_beginAccess();
  v195 = *(v141 + v194);
  if (v195 != 2)
  {
    sub_1A38FD850(v195 & 1, a1);
  }

  v196 = OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland;
  swift_beginAccess();
  v197 = *(v141 + v196);
  if (v197 != 2)
  {
    sub_1A3902694(v197 & 1, a1);
  }

  v198 = OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch;
  swift_beginAccess();
  v199 = *(v141 + v198);
  if (v199 != 2)
  {
    sub_1A39027D8(v199 & 1, a1);
  }

  v200 = OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription;
  swift_beginAccess();
  v201 = *(v141 + v200);
  if (v201 != 2)
  {
    sub_1A390291C(v201 & 1, a1);
  }

  v202 = OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled;
  swift_beginAccess();
  v203 = *(v141 + v202);
  if (v203 != 2)
  {
    sub_1A3902A60(v203 & 1, a1);
  }

  v204 = OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported;
  result = swift_beginAccess();
  v206 = *(v141 + v204);
  if (v206 != 2)
  {
    return sub_1A392AC34(v206 & 1);
  }

  return result;
}

void sub_1A3979764(void *a1, void *a2)
{
  v12 = a2;
  v3 = a2;
  swift_getAtKeyPath();

  if (a1)
  {
    if (v13)
    {
      sub_1A38E805C(0, &qword_1ED998880);
      v4 = a1;
      v5 = v13;
      v6 = sub_1A3A31D10();

      if (v6)
      {

        return;
      }
    }

    goto LABEL_7;
  }

  if (v13)
  {

LABEL_7:
    v13 = v3;
    v7 = v3;
    v8 = swift_modifyAtReferenceWritableKeyPath();
    v10 = *v9;
    *v9 = a1;

    v8(&v12, 0);
    v11 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
    v7[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
    if (*&v7[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
    {
      v7[v11] = 0;
      sub_1A3977314(*&v7[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_11:
}

void sub_1A3979908(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v7 = sub_1A3A2ED80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF748);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF750);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  v35 = a2;
  v21 = a2;
  v34 = a4;
  swift_getAtKeyPath();

  v22 = *(v15 + 56);
  v33 = a1;
  sub_1A397BCBC(a1, v17);
  sub_1A397BCBC(v20, &v17[v22]);
  v23 = *(v8 + 48);
  if (v23(v17, 1, v7) == 1)
  {
    v24 = v23(&v17[v22], 1, v7);
    v25 = v33;
    if (v24 == 1)
    {
      sub_1A388F740(v17, &qword_1EB0FF728);
      sub_1A388F740(v20, &qword_1EB0FF728);
LABEL_10:
      sub_1A388F740(v25, &qword_1EB0FF728);

      return;
    }

    goto LABEL_6;
  }

  sub_1A397BCBC(v17, v13);
  if (v23(&v17[v22], 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v25 = v33;
LABEL_6:
    sub_1A388F740(v17, &qword_1EB0FF748);
    sub_1A388F740(v20, &qword_1EB0FF728);
    goto LABEL_7;
  }

  (*(v8 + 32))(v10, &v17[v22], v7);
  sub_1A397E370(&qword_1EB0FF758, MEMORY[0x1E6969B50]);
  v30 = sub_1A3A31790();
  v31 = *(v8 + 8);
  v31(v10, v7);
  v31(v13, v7);
  sub_1A388F740(v17, &qword_1EB0FF728);
  sub_1A388F740(v20, &qword_1EB0FF728);
  v25 = v33;
  if (v30)
  {
    goto LABEL_10;
  }

LABEL_7:
  v36 = v21;
  v26 = v21;
  v27 = swift_modifyAtReferenceWritableKeyPath();
  sub_1A397E300(v25, v28);
  v27(&v35, 0);

  v29 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v26[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v26[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v26[v29] = 0;
    sub_1A3977314(*&v26[OBJC_IVAR___CAMChromeConfigurator_viewModel]);

    sub_1A388F740(v25, &qword_1EB0FF728);
  }

  else
  {

    sub_1A388F740(v25, &qword_1EB0FF728);
  }
}

uint64_t sub_1A3979DD4(int a1, void *a2)
{
  v3 = a1;
  v9 = a2;
  v4 = a2;
  swift_getAtKeyPath();

  if (v3 == 2)
  {
    if (v10 == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v10 != 2 && ((v10 ^ a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v4;
  v4 = v4;
  v5 = swift_modifyAtReferenceWritableKeyPath();
  *v6 = a1;
  v5(&v9, 0);

  v7 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v4[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v4[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v4[v7] = 0;
    sub_1A3977314(*&v4[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:
  }
}

uint64_t sub_1A3979F04(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v14 = a4;
  v7 = a4;
  swift_getAtKeyPath();

  if (a3)
  {
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else if ((v13 & 1) == 0 && v12[0] == *&a1 && v12[1] == *&a2)
  {
    goto LABEL_10;
  }

  v14 = v7;
  v7 = v7;
  v8 = swift_modifyAtReferenceWritableKeyPath();
  *v9 = *&a1;
  *(v9 + 8) = *&a2;
  *(v9 + 16) = a3 & 1;
  v8(v12, 0);

  v10 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v7[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v7[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v7[v10] = 0;
    sub_1A3977314(*&v7[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_10:
  }
}

uint64_t sub_1A397A054(uint64_t a1, uint64_t a2, char *a3)
{
  v11 = a3;
  v5 = a3;
  swift_getAtKeyPath();

  if (a1 == 2)
  {
    if (LOBYTE(v10[0]) == 2)
    {
      goto LABEL_10;
    }
  }

  else if (LOBYTE(v10[0]) != 2 && ((LODWORD(v10[0]) ^ a1) & 1) == 0 && v10[1] == a2)
  {
    goto LABEL_10;
  }

  v11 = v5;
  v5 = v5;
  v6 = swift_modifyAtReferenceWritableKeyPath();
  *v7 = a1;
  v7[1] = a2;
  v6(v10, 0);

  v8 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v5[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v5[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v5[v8] = 0;
    sub_1A3977314(*&v5[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_10:
  }
}

uint64_t sub_1A397A198(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, id))
{
  v14 = a2;
  v7 = a2;
  swift_getAtKeyPath();

  if (a1)
  {
    if (v15)
    {
      v8 = a5(a1, v15);

      if (v8)
      {
      }
    }

    goto LABEL_7;
  }

  if (v15)
  {

LABEL_7:
    v15 = v7;
    v10 = v7;
    v11 = swift_modifyAtReferenceWritableKeyPath();
    *v12 = a1;

    v11(&v14, 0);

    v13 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
    v10[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
    if (*&v10[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
    {
      v10[v13] = 0;
      sub_1A3977314(*&v10[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
    }

    else
    {
    }
  }
}

uint64_t sub_1A397A318(uint64_t a1, char a2, char *a3)
{
  v12 = a3;
  v5 = a3;
  swift_getAtKeyPath();

  if (a2)
  {
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if ((v11 & 1) == 0 && v10 == a1)
  {
    goto LABEL_9;
  }

  v12 = v5;
  v5 = v5;
  v6 = swift_modifyAtReferenceWritableKeyPath();
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  v6(&v10, 0);

  v8 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v5[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v5[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v5[v8] = 0;
    sub_1A3977314(*&v5[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:
  }
}

uint64_t sub_1A397A444(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v15 = a2;
  v7 = a2;
  swift_getAtKeyPath();

  if ((v6 & 1) == 0)
  {
    if (v14)
    {
      goto LABEL_7;
    }

    v16.origin.x = v2;
    v16.origin.y = v3;
    v16.size.width = v4;
    v16.size.height = v5;
    if (!CGRectEqualToRect(v16, v13))
    {
      goto LABEL_7;
    }

LABEL_6:
  }

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = v7;
  v8 = v7;
  v9 = swift_modifyAtReferenceWritableKeyPath();
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6 & 1;
  v9(&v13, 0);

  v11 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v8[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v8[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v8[v11] = 0;
    sub_1A3977314(*&v8[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
  }

  else
  {
  }
}

uint64_t sub_1A397A5B0(uint64_t a1, char a2, char *a3)
{
  v12 = a3;
  v5 = a3;
  swift_getAtKeyPath();

  if (a2)
  {
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else if ((v11 & 1) == 0 && v10 == *&a1)
  {
    goto LABEL_9;
  }

  v12 = v5;
  v5 = v5;
  v6 = swift_modifyAtReferenceWritableKeyPath();
  *v7 = *&a1;
  *(v7 + 8) = a2 & 1;
  v6(&v10, 0);

  v8 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v5[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v5[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v5[v8] = 0;
    sub_1A3977314(*&v5[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:
  }
}

uint64_t sub_1A397A6E0()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1EB0FF6A8);
  __swift_project_value_buffer(v0, qword_1EB0FF6A8);
  return sub_1A3A2F290();
}

id sub_1A397A790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeConfigurator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ChromeConfigurator()
{
  result = qword_1ED9987C8;
  if (!qword_1ED9987C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A397A908()
{
  sub_1A397AAD0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A397AAD0()
{
  if (!qword_1ED9987D8[0])
  {
    sub_1A3A2ED80();
    v0 = sub_1A3A31DE0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9987D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChromeConfigurator.SharedLibraryState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ChromeConfigurator.SharedLibraryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A397ABE4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A397AC54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A397AD94(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1A397AFB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1A397B084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 34);
  return result;
}

__n128 sub_1A397B154@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_1A397B224@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 56);
  return result;
}

double sub_1A397B2F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
  sub_1A3A2F080();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

__n128 sub_1A397B3C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 80);
  result = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A397B47C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2650(v4);
}

__n128 sub_1A397B4C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  result = *(v3 + 104);
  v5 = *(v3 + 136);
  *(a2 + 32) = *(v3 + 120);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(v3 + 152);
  *a2 = *(v3 + 88);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A397B584(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2820(v4);
}

__n128 sub_1A397B5CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  v4 = *(v3 + 208);
  *(a2 + 32) = *(v3 + 192);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 224);
  result = *(v3 + 176);
  *a2 = *(v3 + 160);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A397B684(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2A00(v4);
}

uint64_t sub_1A397B6CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  *a2 = *(v3 + 232);
  return result;
}

double sub_1A397B79C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
  sub_1A3A2F080();

  result = *(v3 + 240);
  *a2 = result;
  return result;
}

uint64_t sub_1A397B86C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a2;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  return a7(v8, v9, v10, KeyPath, v12);
}

uint64_t sub_1A397B8E4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1A397BCBC(a1, &v14 - v8);
  v10 = *a2;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1A397BCBC(v9, v7);
  sub_1A3979908(v7, v10, KeyPath, v12);
  return sub_1A388F740(v9, &qword_1EB0FF728);
}

void sub_1A397BA00(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;

  sub_1A3979764(v2, v5);
}

uint64_t sub_1A397BA74(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A3979F04(v2, v3, v4, v5);
}

uint64_t sub_1A397BAE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;

  return sub_1A397A054(v2, v3, v5);
}

uint64_t sub_1A397BB64(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, id))
{
  v8 = *a1;
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1A3A2EA50();
  return sub_1A397A198(v8, v9, KeyPath, v11, a7);
}

uint64_t sub_1A397BBDC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1A397A444(v5, v3);
}

uint64_t sub_1A397BC50(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1A3979DD4(v3, v4);
}

uint64_t sub_1A397BCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A397BD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void *sub_1A397BDBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

uint64_t sub_1A397BE38(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v19[0] = v4 + 32;
  v19[1] = v5;
  result = sub_1A3A32190();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v4 + 32);
      do
      {
        v13 = *(v4 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (v13 >= *v15)
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v5);
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      v9 = sub_1A3A319E0();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v9 + 32;
    v18[1] = v8;
    sub_1A397BF7C(v18, v20, v19, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A397BF7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A3959204(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1A397C4C8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3955F6C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1A3955F6C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1A397C4C8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A397C4C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A397C6BC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](a2);
  v8 = sub_1A3A32300();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1A397CD4C(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A397C7DC(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1A3A322B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A397CEBC(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A397C8D0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1A3A31F00();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1A3A322C0();
      MEMORY[0x1A58F8150](v18);
      result = sub_1A3A32300();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1A397CB18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760);
  result = sub_1A3A31F00();
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
      result = sub_1A3A322B0();
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

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A397CD4C(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A397C8D0(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1A397CFE8(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1A397D258(v6 + 1, a4);
  }

  v9 = *v4;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v5);
  result = sub_1A3A32300();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A3A32210();
  __break(1u);
  return result;
}

unint64_t sub_1A397CEBC(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1A397CB18();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1A397D118();
      result = v7;
      goto LABEL_12;
    }

    sub_1A397D470();
  }

  v8 = *v3;
  v9 = sub_1A3A322B0();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A3A32210();
  __break(1u);
  return result;
}

void *sub_1A397CFE8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1A3A31EF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A397D118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760);
  v2 = *v0;
  v3 = sub_1A3A31EF0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A397D258(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1A3A31F00();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_1A3A322C0();
      MEMORY[0x1A58F8150](v17);
      result = sub_1A3A32300();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1A397D470()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760);
  result = sub_1A3A31F00();
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
      result = sub_1A3A322B0();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

void *sub_1A397D670(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t CAMLiquidShutterShapeEqualToShape(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1];
  if (v2 && a1[1].f64[0] == a2[1].f64[0] && a1[1].f64[1] == a2[1].f64[1] && a1[4].f64[0] == a2[4].f64[0])
  {
    v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_1A397D9F8(void *a1, void *a2)
{
  v2[OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled] = 0;
  v5 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValue];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMarked];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMaximum];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMinimum];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR___CAMChromeConfigurator__aspectRatioCrop];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  v11 = sub_1A3A2ED80();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v2[OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration] = 0;
  v12 = &v2[OBJC_IVAR___CAMChromeConfigurator__controlOrientation];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v2[OBJC_IVAR___CAMChromeConfigurator__exposureBias];
  *v13 = 0;
  v13[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__preserveExposure] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isImagePickerController] = 2;
  v14 = &v2[OBJC_IVAR___CAMChromeConfigurator___hdrMode];
  *v14 = 0;
  v14[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter] = 2;
  v15 = &v2[OBJC_IVAR___CAMChromeConfigurator__livePhotoMode];
  *v15 = 0;
  v15[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported] = 2;
  v16 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeControlMode];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeStatus];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeCaptureState];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeDurationMapping];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v2[OBJC_IVAR___CAMChromeConfigurator__overscanOverlayAlpha];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState] = xmmword_1A3A6A8C0;
  v21 = &v2[OBJC_IVAR___CAMChromeConfigurator__timerDuration];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v2[OBJC_IVAR___CAMChromeConfigurator__photoEncodingBehavior];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v2[OBJC_IVAR___CAMChromeConfigurator__defaultPhotoEncodingBehavior];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v2[OBJC_IVAR___CAMChromeConfigurator__photoResolution];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v2[OBJC_IVAR___CAMChromeConfigurator__defaultPhotoResolution];
  *v25 = 0;
  v25[8] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedPhotoResolutions] = 0;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedEncodingBehaviors] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported] = 2;
  v26 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMinimum];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMaximum];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityDefault];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensity];
  *v29 = 0;
  v29[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isFlipSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isHDRSupported] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedLivePhotoModes] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isTimerSupported] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedVideoConfigurations] = 0;
  v30 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoEncodingBehavior];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoConfiguration];
  *v31 = 0;
  v31[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled] = 2;
  v32 = &v2[OBJC_IVAR___CAMChromeConfigurator__explicitProResColorSpace];
  *v32 = 0;
  v32[8] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedVideoFormats] = 0;
  v33 = &v2[OBJC_IVAR___CAMChromeConfigurator__videoFormat];
  *v33 = 0;
  v33[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator] = 2;
  v34 = &v2[OBJC_IVAR___CAMChromeConfigurator__videoRecordingState];
  *v34 = 0;
  v34[8] = 1;
  v35 = &v2[OBJC_IVAR___CAMChromeConfigurator__viewfinderAspectRatio];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentViewportFrame];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  v37 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentFourThreeViewportFrame];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v37[32] = 1;
  v38 = &v2[OBJC_IVAR___CAMChromeConfigurator__descriptionOverlayTextViewFrame];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v38[32] = 1;
  v39 = &v2[OBJC_IVAR___CAMChromeConfigurator__buttonPlatterVerticalOffset];
  *v39 = 0;
  v39[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator] = 2;
  v40 = &v2[OBJC_IVAR___CAMChromeConfigurator__frontPIPFrame];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__useMessagesUI] = 2;
  v41 = &v2[OBJC_IVAR___CAMChromeConfigurator__remainingRecordingTime];
  *v41 = 0;
  v41[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__autoSmartFramingEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator_changeDepth] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 0;
  type metadata accessor for ChromeViewModel();
  v42 = swift_allocObject();
  *&v2[OBJC_IVAR___CAMChromeConfigurator_viewModel] = sub_1A3A1D0E8(a1, v42);
  v46.receiver = v2;
  v46.super_class = type metadata accessor for ChromeConfigurator();
  v43 = objc_msgSendSuper2(&v46, sel_init);
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v43;
  sub_1A3979764(a2, v44);
  return v44;
}

uint64_t sub_1A397E04C(uint64_t result, uint64_t a2)
{
  v2 = OBJC_IVAR___CAMChromeConfigurator_changeDepth;
  v3 = *(result + OBJC_IVAR___CAMChromeConfigurator_changeDepth);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  *(result + OBJC_IVAR___CAMChromeConfigurator_changeDepth) = v5;
  result = (*(a2 + 16))(a2);
  v7 = *(v6 + v2);
  v4 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(v6 + v2) = v8;
  if (*(v6 + OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel) == 1 && v8 <= 0)
  {
    *(v6 + OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel) = 0;
    return sub_1A3977314(*(v6 + OBJC_IVAR___CAMChromeConfigurator_viewModel));
  }

  return result;
}

uint64_t keypath_get_471Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return sub_1A3A2EA50();
}

__n128 keypath_get_658Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  return result;
}

__n128 keypath_get_862Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, __n128 *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a3 = *v4;
  a3[1].n128_u8[0] = v5;
  return result;
}

uint64_t keypath_get_506Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1A397E300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A397E370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_get_628Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1A397E428()
{
  swift_getKeyPath();
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 16);
}

uint64_t sub_1A397E498(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397E580()
{
  swift_getKeyPath();
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 17);
}

uint64_t sub_1A397E5F0(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397E6D0()
{
  swift_getKeyPath();
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 18);
}

uint64_t sub_1A397E740(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397E828()
{
  swift_getKeyPath();
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 19);
}

uint64_t sub_1A397E898(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397E980()
{
  swift_getKeyPath();
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 20);
}

uint64_t sub_1A397E9F0(uint64_t result)
{
  if (*(v1 + 20) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397EAD0()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeTorchViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeTorchViewModel()
{
  result = qword_1ED9988B8;
  if (!qword_1ED9988B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A397EBC0()
{
  result = sub_1A3A2F0C0();
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

unint64_t sub_1A397EC6C()
{
  result = qword_1ED998878;
  if (!qword_1ED998878)
  {
    type metadata accessor for ChromeTorchViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998878);
  }

  return result;
}

uint64_t type metadata accessor for ChromeElementIcon()
{
  result = qword_1ED9989D8;
  if (!qword_1ED9989D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A397ED70()
{
  sub_1A397EE98();
  if (v0 <= 0x3F)
  {
    sub_1A397EF44();
    if (v1 <= 0x3F)
    {
      sub_1A397F24C(319, &qword_1EB0FF780);
      if (v2 <= 0x3F)
      {
        sub_1A397EFC4();
        if (v3 <= 0x3F)
        {
          sub_1A397F030(319);
          if (v4 <= 0x3F)
          {
            sub_1A397F19C();
            if (v5 <= 0x3F)
            {
              sub_1A397F21C();
              if (v6 <= 0x3F)
              {
                sub_1A397F24C(319, &qword_1EB0FF7A8);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A397EE98()
{
  if (!qword_1ED9989E8)
  {
    sub_1A397EEE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9989E8);
    }
  }
}

void sub_1A397EEE0()
{
  if (!qword_1ED9989F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF768);
    v0 = type metadata accessor for ValueProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9989F0);
    }
  }
}

void sub_1A397EF44()
{
  if (!qword_1EB0FF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF778);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF770);
    }
  }
}

void sub_1A397EFC4()
{
  if (!qword_1EB0FF788)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF788);
    }
  }
}

void sub_1A397F030(uint64_t a1)
{
  if (!qword_1EB0FF790)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF798);
    sub_1A3A30090();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB0FF790);
    }
  }
}

void sub_1A397F19C()
{
  if (!qword_1EB0FF7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF7A0);
    }
  }
}

uint64_t sub_1A397F21C()
{
  result = qword_1ED9989F8[0];
  if (!qword_1ED9989F8[0])
  {
    result = MEMORY[0x1E69E7DE0];
    atomic_store(MEMORY[0x1E69E7DE0], qword_1ED9989F8);
  }

  return result;
}

void sub_1A397F24C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A397F2A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A397F2E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A397F344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A397F38C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1A397F3DC()
{
  result = qword_1EB0FF7B0;
  if (!qword_1EB0FF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF7B0);
  }

  return result;
}

uint64_t sub_1A397F430(uint64_t a1, uint64_t a2)
{
  v153 = a1;
  v3 = sub_1A3A30090();
  v148 = *(v3 - 8);
  v149 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v146 = &v136[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v147 = &v136[-v6];
  v7 = type metadata accessor for ChromeElementIcon();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v145 = &v136[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v136[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v151 = &v136[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v136[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v150 = &v136[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v136[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v152 = &v136[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v136[-v25];
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v136[-v28];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v136[-v31];
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v136[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB00);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v136[-v37];
  v39 = &v136[*(v36 + 56) - v37];
  sub_1A38907D0(v153, &v136[-v37]);
  sub_1A38907D0(a2, v39);
  v153 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      v42 = v153;
      v48 = v39;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          sub_1A38907D0(v153, v151);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0);
          v50 = swift_projectBox();
          v51 = *(v49 + 48);
          v52 = *(v50 + v51);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            v53 = swift_projectBox();
            v54 = *(v53 + v51);
            v55 = v144;
            sub_1A38907D0(v50, v144);
            v56 = v53;
            v57 = v145;
            sub_1A38907D0(v56, v145);
            v58 = sub_1A397F430(v55, v57);
            sub_1A392BCAC(v57);
            sub_1A392BCAC(v55);

            if (v58)
            {
              v59 = v52 == v54;
              goto LABEL_74;
            }

            goto LABEL_101;
          }

LABEL_59:

          goto LABEL_63;
        }

        if (swift_getEnumCaseMultiPayload() != 9)
        {
LABEL_63:
          sub_1A388F740(v42, &qword_1EB0FFB00);
LABEL_103:
          v123 = 0;
          return v123 & 1;
        }

        goto LABEL_115;
      }

      sub_1A38907D0(v153, v16);
      v79 = *v16;
      v78 = v16[1];
      v81 = v16[2];
      v80 = v16[3];
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v82 = *v39;
        v83 = *(v39 + 1);
        v85 = *(v39 + 2);
        v84 = *(v48 + 3);
        if (v79 == *&v82 && v78 == v83)
        {
        }

        else
        {
          v87 = sub_1A3A321C0();

          if ((v87 & 1) == 0)
          {

            goto LABEL_101;
          }
        }

        if (v81 == v85 && v80 == v84)
        {
        }

        else
        {
          v129 = sub_1A3A321C0();

          if ((v129 & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_115;
      }

LABEL_41:

      goto LABEL_62;
    }

    v42 = v153;
    v61 = v39;
    if (EnumCaseMultiPayload != 5)
    {
      v120 = v150;
      sub_1A38907D0(v153, v150);
      v121 = swift_getEnumCaseMultiPayload();
      if (v121 == 6)
      {
        v59 = *v120 == *v39;
        goto LABEL_74;
      }

      goto LABEL_63;
    }

    sub_1A38907D0(v153, v21);
    v63 = *v21;
    v62 = *(v21 + 1);
    v65 = *(v21 + 2);
    v64 = *(v21 + 3);
    v66 = v21[32];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_41;
    }

    v68 = *(v39 + 2);
    v67 = *(v61 + 3);
    v69 = v61[32];
    if (v63 == *v61 && v62 == *(v61 + 1))
    {
    }

    else
    {
      v71 = sub_1A3A321C0();

      if ((v71 & 1) == 0)
      {

LABEL_98:

        goto LABEL_99;
      }
    }

    if (v64)
    {
      if (!v67)
      {
        goto LABEL_98;
      }

      if (v65 == v68 && v64 == v67)
      {
      }

      else
      {
        v134 = sub_1A3A321C0();

        if ((v134 & 1) == 0)
        {
          goto LABEL_99;
        }
      }
    }

    else if (v67)
    {
      goto LABEL_98;
    }

    v123 = v66 == v69;
    sub_1A392BCAC(v153);
    return v123 & 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v41 = v39;
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v42 = v153;
        sub_1A38907D0(v153, v26);
        v43 = *v26;
        v44 = *(v26 + 1);
        v45 = v26[24];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v46 = *(v39 + 1);
          v47 = v39[24];
          if (v43 == *v41 && v44 == v46)
          {

            goto LABEL_72;
          }

          v124 = sub_1A3A321C0();

          if (v124)
          {
LABEL_72:
            v125 = sub_1A3A30680();

            if (v125)
            {
              v59 = v45 == v47;
LABEL_74:
              v123 = v59;
              goto LABEL_77;
            }

            goto LABEL_101;
          }

LABEL_101:
          v130 = v42;
          goto LABEL_102;
        }

        goto LABEL_59;
      }

      v88 = v152;
      sub_1A38907D0(v153, v152);
      v89 = *v88;
      LODWORD(v151) = v88[8];
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
      v91 = v90[16];
      v92 = v90[20];
      LODWORD(v150) = v88[v92];
      v93 = v90[24];
      LODWORD(v145) = v88[v93];
      v94 = v90[28];
      v95 = v88[v94];
      v96 = v90[32];
      v143 = v88[v96];
      LODWORD(v144) = v95;
      v97 = v90[36];
      v142 = v88[v97];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v148 + 8))(&v88[v91], v149);

        v42 = v153;
        goto LABEL_63;
      }

      v98 = v88;
      v99 = *v39;
      v100 = v39[v92];
      v140 = v39[v93];
      v141 = v100;
      v101 = v39[v94];
      v138 = v39[v96];
      v139 = v101;
      v102 = v39[8];
      v137 = v39[v97];
      v104 = v147;
      v103 = v148;
      v105 = *(v148 + 32);
      v106 = v149;
      v105(v147, &v98[v91], v149);
      v107 = v41 + v91;
      v108 = v146;
      v105(v146, v107, v106);
      v109 = sub_1A39FCC04(v89, v99);

      if (v109)
      {
        v110 = v153;
        if (v151 == v102)
        {
          v132 = sub_1A3A30080();
          v133 = *(v103 + 8);
          v133(v108, v106);
          v133(v104, v106);
          if ((v132 & 1) != 0 && v150 == v141 && v145 == v140 && v144 == v139 && v143 == v138)
          {
            v135 = v142 ^ v137;
            sub_1A392BCAC(v110);
            v123 = v135 ^ 1;
            return v123 & 1;
          }
        }

        else
        {
          v111 = *(v103 + 8);
          v111(v108, v106);
          v111(v104, v106);
        }

        v130 = v110;
        goto LABEL_102;
      }

      v126 = *(v103 + 8);
      v126(v108, v106);
      v126(v104, v106);
LABEL_99:
      v130 = v153;
LABEL_102:
      sub_1A392BCAC(v130);
      goto LABEL_103;
    }

    v42 = v153;
    sub_1A38907D0(v153, v29);
    v73 = *v29;
    v72 = *(v29 + 1);
    v74 = v29[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v75 = v39[16];
      if (v73 == *v39 && v72 == *(v39 + 1))
      {
      }

      else
      {
        v77 = sub_1A3A321C0();

        if ((v77 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      v59 = v74 == v75;
      goto LABEL_74;
    }

LABEL_62:

    goto LABEL_63;
  }

  v60 = v39;
  if (EnumCaseMultiPayload)
  {
    v42 = v153;
    sub_1A38907D0(v153, v32);
    v113 = *v32;
    v112 = *(v32 + 1);
    v114 = v32[16];
    v115 = *(v32 + 3);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A3988C60(v115);
      goto LABEL_62;
    }

    v116 = v39[16];
    v117 = v60[3];
    if (v113 == *v60 && v112 == v60[1])
    {
    }

    else
    {
      v119 = sub_1A3A321C0();

      if ((v119 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    if (v114 != v116)
    {
LABEL_92:
      sub_1A3988C60(v117);
      goto LABEL_93;
    }

    if (v115)
    {
      if (!v117)
      {
LABEL_93:
        v128 = v115;
LABEL_94:
        sub_1A3988C60(v128);
        goto LABEL_101;
      }

      if ((sub_1A3A30D40() & 1) == 0)
      {

        goto LABEL_93;
      }

      v127 = sub_1A3A30D40();

      sub_1A3988C60(v115);
      if ((v127 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    else if (v117)
    {
      v128 = v117;
      goto LABEL_94;
    }

LABEL_115:
    sub_1A392BCAC(v42);
    v123 = 1;
    return v123 & 1;
  }

  v42 = v153;
  sub_1A38907D0(v153, v34);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1A388F740(v34, &qword_1EB0FFA98);
    goto LABEL_63;
  }

  v122 = *(v39 + 1);
  v154[0] = *v39;
  v154[1] = v122;
  v154[2] = *(v39 + 2);
  v155 = *(v39 + 6);
  v123 = MEMORY[0x1A58F7D40](v34, v154);
  sub_1A388F740(v154, &qword_1EB0FFA98);
  sub_1A388F740(v34, &qword_1EB0FFA98);
LABEL_77:
  sub_1A392BCAC(v42);
  return v123 & 1;
}

uint64_t sub_1A3980074@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ChromeElementIcon();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1A38907D0(v4, &v22 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v16 = swift_projectBox();
    sub_1A38907D0(v16, v11);
    sub_1A3980074(a1, a2 & 1);
    sub_1A392BCAC(v11);
  }

  else if (EnumCaseMultiPayload == 9)
  {
    return sub_1A38907D0(v4, a3);
  }

  else
  {
    if (a2)
    {
      sub_1A38907D0(v4, a3);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0);
      v18 = swift_allocBox();
      v20 = v19;
      v21 = *(v17 + 48);
      sub_1A38907D0(v4, v19);
      *(v20 + v21) = a1;
      *a3 = v18;
      swift_storeEnumTagMultiPayload();
    }

    return sub_1A392BCAC(v13);
  }
}

uint64_t sub_1A3980200@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1A39802D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return sub_1A3A2EA60();
}

uint64_t sub_1A39803A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A3A30090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeElementIcon();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - v12;
  sub_1A38907D0(v2, v37 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v35 = *v13;
        MEMORY[0x1A58F8150](7);
        v36 = 0.0;
        if (v35 != 0.0)
        {
          v36 = v35;
        }

        return MEMORY[0x1A58F8170](*&v36);
      }

      v21 = *(v13 + 3);
      v22 = v13[32];
      MEMORY[0x1A58F8150](6);
      sub_1A3A318B0();

      sub_1A3A322E0();
      if (v21)
      {
        sub_1A3A318B0();
      }

      v24 = v22;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        MEMORY[0x1A58F8150](8);
        sub_1A3A318B0();

        sub_1A3A318B0();
      }

      if (EnumCaseMultiPayload == 8)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0);
        v17 = swift_projectBox();
        v18 = *(v17 + *(v16 + 48));
        sub_1A38907D0(v17, v11);
        MEMORY[0x1A58F8150](9);
        sub_1A39803A8(a1);
        MEMORY[0x1A58F8150](v18);
        sub_1A392BCAC(v11);
      }

      v24 = 0;
    }

    return MEMORY[0x1A58F8150](v24);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v33 = v13[16];
      v34 = *(v13 + 3);
      MEMORY[0x1A58F8150](2);
      sub_1A3A318B0();

      MEMORY[0x1A58F8150](v33);
      if (v34)
      {
        sub_1A3A322E0();
        sub_1A3A30D90();
        sub_1A3A30D90();
        return sub_1A3988C60(v34);
      }

      else
      {
        return sub_1A3A322E0();
      }
    }

    else
    {
      v20 = *(v13 + 1);
      v46[0] = *v13;
      v46[1] = v20;
      v46[2] = *(v13 + 2);
      v47 = *(v13 + 6);
      MEMORY[0x1A58F8150](1);
      sub_1A3A31ED0();
      return sub_1A388F740(v46, &qword_1EB0FFA98);
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = v13[16];
    MEMORY[0x1A58F8150](3);
    sub_1A3A318B0();

    v24 = v23;
    return MEMORY[0x1A58F8150](v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v15 = v13[24];
    MEMORY[0x1A58F8150](4);
    sub_1A3A318B0();

    sub_1A3A306A0();
    MEMORY[0x1A58F8150](v15);
  }

  v25 = *v13;
  v37[3] = v13[8];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
  v27 = v26[16];
  v38 = v13[v26[20]];
  v28 = v13[v26[28]];
  v39 = v13[v26[24]];
  v40 = v28;
  v29 = v13[v26[36]];
  v41 = v13[v26[32]];
  v42 = v29;
  v43 = v5;
  v44 = v4;
  (*(v5 + 32))(v7, &v13[v27], v4);
  MEMORY[0x1A58F8150](5);
  MEMORY[0x1A58F8150](*(*&v25 + 16));
  v45 = v25;
  v30 = *(*&v25 + 16);
  if (v30)
  {
    v31 = *&v45 + 72;
    do
    {
      sub_1A3A2EA50();
      sub_1A3A2EA50();
      sub_1A3A2EA50();
      sub_1A3A318B0();
      sub_1A3A318B0();
      sub_1A3A318B0();

      v31 += 48;
      --v30;
    }

    while (v30);
  }

  sub_1A3A322E0();
  sub_1A3988EAC(&qword_1EB0FFB08, MEMORY[0x1E697F6A0]);
  v32 = v44;
  sub_1A3A31760();
  MEMORY[0x1A58F8150](v38);
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  return (*(v43 + 8))(v7, v32);
}

uint64_t sub_1A39809AC()
{
  sub_1A3A322C0();
  sub_1A39803A8(v1);
  return sub_1A3A32300();
}

uint64_t sub_1A39809F0()
{
  sub_1A3A322C0();
  sub_1A39803A8(v1);
  return sub_1A3A32300();
}

uint64_t sub_1A3980A2C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A3A321C0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A3A321C0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A3A321C0();
}

uint64_t sub_1A3980B24()
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  return sub_1A3A32300();
}

uint64_t sub_1A3980BA8()
{
  sub_1A3A318B0();
  sub_1A3A318B0();

  return sub_1A3A318B0();
}

uint64_t sub_1A3980C14()
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  return sub_1A3A32300();
}

uint64_t sub_1A3980C94()
{
  if ((sub_1A3A30D40() & 1) == 0)
  {
    return 0;
  }

  return sub_1A3A30D40();
}

uint64_t sub_1A3980CF0()
{
  sub_1A3A322C0();
  sub_1A3A30D90();
  sub_1A3A30D90();
  return sub_1A3A32300();
}

uint64_t sub_1A3980D44()
{
  sub_1A3A30D90();

  return sub_1A3A30D90();
}

uint64_t sub_1A3980D84()
{
  sub_1A3A322C0();
  sub_1A3A30D90();
  sub_1A3A30D90();
  return sub_1A3A32300();
}

unint64_t sub_1A3980DD8()
{
  result = qword_1EB0FF7B8;
  if (!qword_1EB0FF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF7B8);
  }

  return result;
}

uint64_t sub_1A3980E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v399 = a1;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7C8);
  MEMORY[0x1EEE9AC00](v373);
  v364 = &v330 - v3;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7D0);
  MEMORY[0x1EEE9AC00](v370);
  v372 = (&v330 - v4);
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7D8);
  MEMORY[0x1EEE9AC00](v398);
  v374 = &v330 - v5;
  v6 = sub_1A3A2FC90();
  v338 = *(v6 - 8);
  v339 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v337 = &v330 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7E0);
  v335 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v334 = &v330 - v8;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7E8);
  MEMORY[0x1EEE9AC00](v342);
  v344 = &v330 - v9;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7F0);
  v333 = *(v345 - 8);
  MEMORY[0x1EEE9AC00](v345);
  v332 = &v330 - v10;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7F8);
  MEMORY[0x1EEE9AC00](v347);
  v350 = &v330 - v11;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF800);
  v341 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  v340 = &v330 - v12;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF808);
  MEMORY[0x1EEE9AC00](v349);
  v343 = &v330 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF810);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v348 = &v330 - v15;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF818);
  MEMORY[0x1EEE9AC00](v381);
  v365 = &v330 - v16;
  v17 = sub_1A3A30090();
  v378 = *(v17 - 8);
  v379 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v376 = &v330 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF820);
  MEMORY[0x1EEE9AC00](v386);
  v388 = (&v330 - v19);
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF828);
  MEMORY[0x1EEE9AC00](v375);
  v377 = &v330 - v20;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF830);
  MEMORY[0x1EEE9AC00](v387);
  v380 = &v330 - v21;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF838);
  MEMORY[0x1EEE9AC00](v393);
  v389 = &v330 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF840);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v355 = &v330 - v24;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF848);
  MEMORY[0x1EEE9AC00](v368);
  v369 = (&v330 - v25);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF850);
  MEMORY[0x1EEE9AC00](v385);
  v371 = &v330 - v26;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF858);
  MEMORY[0x1EEE9AC00](v362);
  v336 = (&v330 - v27);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF860);
  MEMORY[0x1EEE9AC00](v360);
  v361 = &v330 - v28;
  v29 = sub_1A3A31620();
  v357 = *(v29 - 8);
  v358 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v353 = &v330 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_1A3A31640();
  v354 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v352 = &v330 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A3A2F1E0();
  v366 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v330 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF868);
  MEMORY[0x1EEE9AC00](v359);
  v36 = (&v330 - v35);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF870);
  MEMORY[0x1EEE9AC00](v367);
  v363 = &v330 - v37;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF878);
  MEMORY[0x1EEE9AC00](v395);
  v397 = &v330 - v38;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF880);
  MEMORY[0x1EEE9AC00](v390);
  v392 = &v330 - v39;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF888);
  MEMORY[0x1EEE9AC00](v382);
  v383 = &v330 - v40;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF890);
  MEMORY[0x1EEE9AC00](v391);
  v384 = &v330 - v41;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF898);
  MEMORY[0x1EEE9AC00](v396);
  v394 = &v330 - v42;
  v43 = type metadata accessor for ChromeElementIcon();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v330 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v330 - v48;
  sub_1A38907D0(v2, &v330 - v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v132 = *v49;
        v131 = *(v49 + 1);
        v133 = *(v49 + 3);
        v134 = v49[32];
        if (v133)
        {
          v135 = *(v49 + 2);
          v136 = sub_1A3A2FF40();
          LOBYTE(v406) = 0;
          sub_1A398612C(v135, v133, *&v132, v131, &v435);
          v402[1] = v436[1];
          v403 = v436[2];
          v404 = v436[3];
          v405 = v436[4];
          v401 = v435;
          v402[0] = v436[0];
          LOBYTE(v416) = v436[4];
          v413 = v436[1];
          v414 = v436[2];
          v415 = v436[3];
          v411 = v435;
          v412 = v436[0];
          sub_1A388F6D8(&v401, &v423, &qword_1EB0FFA88);
          sub_1A388F740(&v411, &qword_1EB0FFA88);

          *(&v400[2] + 7) = v402[1];
          *(&v400[3] + 7) = v403;
          *(&v400[4] + 7) = v404;
          BYTE7(v400[5]) = v405;
          *(v400 + 7) = v401;
          *(&v400[1] + 7) = v402[0];
          v137 = v406;
          v138 = sub_1A3A30600();
          sub_1A3A2F520();
          v140 = v139;
          v142 = v141;
          v144 = v143;
          v146 = v145;
          LOBYTE(v435) = 0;
          sub_1A3A31590();
          v148 = v147;
          v150 = v149;
          type metadata accessor for ChromeViewModel();
          sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
          v151 = sub_1A3A2F650();
          *(&v436[2] + 1) = v400[2];
          *(&v436[3] + 1) = v400[3];
          *(&v436[4] + 1) = v400[4];
          *(v436 + 1) = v400[0];
          v435 = v136;
          LOBYTE(v436[0]) = v137;
          *(&v436[5] + 1) = *&v400[5];
          *(&v436[1] + 1) = v400[1];
          LOBYTE(v437) = v138;
          *(&v437 + 1) = v140;
          *&v438 = v142;
          *(&v438 + 1) = v144;
          *&v439 = v146;
          BYTE8(v439) = 0;
          LOBYTE(v440) = v134;
          *(&v440 + 1) = v148;
          *&v441[0] = v150;
          BYTE8(v441[0]) = 1;
          *&v441[1] = v151;
          BYTE8(v441[1]) = v152 & 1;
          sub_1A3988990(&v435);
          v433 = v440;
          v434[0] = v441[0];
          v153 = *(v441 + 10);
        }

        else
        {
          LODWORD(v385) = v49[32];
          *&v435 = v132;
          *(&v435 + 1) = v131;
          sub_1A389FD78();
          v263 = sub_1A3A308E0();
          v265 = v264;
          v267 = v266;
          if (qword_1EB0FC118 != -1)
          {
            swift_once();
          }

          sub_1A3A30740();
          sub_1A391A414();
          v268 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
          sub_1A3A307B0();
          v269 = sub_1A3A308A0();
          v271 = v270;
          v273 = v272;

          sub_1A389F1B4(v263, v265, v267 & 1);

          v274 = v337;
          sub_1A3A2FC60();
          v275 = sub_1A3A30890();
          v277 = v276;
          v279 = v278;
          v281 = v280;
          sub_1A389F1B4(v269, v271, v273 & 1);

          (*(v338 + 8))(v274, v339);
          LOBYTE(v274) = sub_1A3A30600();
          sub_1A3A2F520();
          v283 = v282;
          v285 = v284;
          v287 = v286;
          v289 = v288;
          LOBYTE(v423) = v279 & 1;
          LOBYTE(v411) = 0;
          sub_1A3A31590();
          v291 = v290;
          v293 = v292;
          type metadata accessor for ChromeViewModel();
          sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
          v294 = sub_1A3A2F650();
          *&v435 = v275;
          *(&v435 + 1) = v277;
          LOBYTE(v436[0]) = v279 & 1;
          *(&v436[0] + 1) = v281;
          LOBYTE(v436[1]) = v274;
          *(&v436[1] + 1) = v283;
          *&v436[2] = v285;
          *(&v436[2] + 1) = v287;
          *&v436[3] = v289;
          BYTE8(v436[3]) = 0;
          LOBYTE(v436[4]) = v385;
          *(&v436[4] + 1) = v291;
          *&v436[5] = v293;
          BYTE8(v436[5]) = 1;
          *&v437 = v294;
          BYTE8(v437) = v295 & 1;
          sub_1A398897C(&v435);
          v433 = v440;
          v434[0] = v441[0];
          v153 = *(v441 + 10);
        }

        *(v434 + 10) = v153;
        v429 = v436[5];
        v430 = v437;
        v432 = v439;
        v431 = v438;
        v425 = v436[1];
        v426 = v436[2];
        v428 = v436[4];
        v427 = v436[3];
        v424 = v436[0];
        v423 = v435;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA68);
        sub_1A3988328();
        sub_1A398846C();
        sub_1A3A301F0();
        v440 = v409[6];
        v441[0] = v410[0];
        *(v441 + 10) = *(v410 + 10);
        v436[5] = v409[2];
        v437 = v409[3];
        v439 = v409[5];
        v438 = v409[4];
        v436[1] = *&v407[16];
        v436[2] = v408;
        v436[4] = v409[1];
        v436[3] = v409[0];
        v436[0] = *v407;
        v435 = v406;
        sub_1A3988988(&v435);
        v421 = v440;
        v422[0] = v441[0];
        *(v422 + 11) = *(v441 + 11);
        v417 = v436[5];
        v418 = v437;
        v420 = v439;
        v419 = v438;
        v413 = v436[1];
        v414 = v436[2];
        v416 = v436[4];
        v415 = v436[3];
        v411 = v435;
        v412 = v436[0];
        v251 = &qword_1EB0FFA48;
        sub_1A388F6D8(&v406, &v423, &qword_1EB0FFA48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA70);
        sub_1A398829C();
        sub_1A3988518();
        sub_1A3A301F0();
        v296 = v434[0];
        v253 = v388;
        v388[10] = v433;
        v253[11] = v296;
        v254 = *(v434 + 11);
      }

      else
      {
        v239 = fmin(*v49, 1.0);
        if (v239 > 0.0)
        {
          v240 = v239;
        }

        else
        {
          v240 = 0.0;
        }

        sub_1A3A2F680();
        v241 = v401;
        v242 = v402[0];
        v243 = *&v402[1];
        sub_1A3A31590();
        v245 = v244;
        v247 = v246;
        type metadata accessor for ChromeViewModel();
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v248 = *(&v401 + 1);
        v249 = sub_1A3A2F650();
        v442 = v250 & 1;
        *&v406 = v240;
        *(&v406 + 1) = v241;
        *v407 = v248;
        *&v407[8] = v242;
        *&v407[24] = v243;
        LOBYTE(v408) = 1;
        *(&v408 + 1) = v444[0];
        DWORD1(v408) = *(v444 + 3);
        *(&v408 + 1) = v245;
        *&v409[0] = v247;
        BYTE8(v409[0]) = 1;
        HIDWORD(v409[0]) = *&v443[3];
        *(v409 + 9) = *v443;
        *&v409[1] = v249;
        BYTE8(v409[1]) = v250 & 1;
        v436[0] = *v407;
        v435 = v406;
        *(&v436[3] + 9) = *(v409 + 9);
        v436[3] = v409[0];
        v436[2] = v408;
        v436[1] = *&v407[16];
        sub_1A3988970(&v435);
        v421 = v440;
        v422[0] = v441[0];
        *(v422 + 11) = *(v441 + 11);
        v417 = v436[5];
        v418 = v437;
        v420 = v439;
        v419 = v438;
        v413 = v436[1];
        v414 = v436[2];
        v416 = v436[4];
        v415 = v436[3];
        v411 = v435;
        v412 = v436[0];
        v251 = &qword_1EB0FFA70;
        sub_1A388F6D8(&v406, &v423, &qword_1EB0FFA70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA70);
        sub_1A398829C();
        sub_1A3988518();
        sub_1A3A301F0();
        v252 = v434[0];
        v253 = v388;
        v388[10] = v433;
        v253[11] = v252;
        v254 = *(v434 + 11);
      }

      *(v253 + 187) = v254;
      v297 = v430;
      v253[6] = v429;
      v253[7] = v297;
      v298 = v432;
      v253[8] = v431;
      v253[9] = v298;
      v299 = v426;
      v253[2] = v425;
      v253[3] = v299;
      v300 = v428;
      v253[4] = v427;
      v253[5] = v300;
      v301 = v424;
      *v253 = v423;
      v253[1] = v301;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40);
      sub_1A3987610();
      sub_1A3988210();
      v302 = v389;
      sub_1A3A301F0();
      sub_1A388F6D8(v302, v392, &qword_1EB0FF838);
      swift_storeEnumTagMultiPayload();
      sub_1A3986FC0();
      sub_1A3987584();
      v170 = v394;
      sub_1A3A301F0();
      sub_1A388F740(v302, &qword_1EB0FF838);
      sub_1A388F6D8(v170, v397, &qword_1EB0FF898);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();
      sub_1A388F740(&v406, v251);
      return sub_1A388F740(v170, &qword_1EB0FF898);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v171 = *(v49 + 1);
      v172 = *(v49 + 2);
      v173 = *(v49 + 3);
      *v34 = *v49;
      *(v34 + 1) = v171;
      v174 = v366;
      (*(v366 + 104))(v34, *MEMORY[0x1E69C1D40], v32);
      v175 = sub_1A3A2F200();
      (*(v174 + 8))(v34, v32);
      *&v435 = v172;
      *(&v435 + 1) = v173;
      sub_1A389FD78();
      v176 = sub_1A3A308E0();
      v178 = v177;
      v180 = v179;
      v182 = v181;
      KeyPath = swift_getKeyPath();
      v180 &= 1u;
      LOBYTE(v435) = v180;
      LOBYTE(v423) = 0;
      sub_1A3A2EA60();
      sub_1A389F1A4(v176, v178, v180);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      v394 = v175;
      sub_1A3A2EA60();
      sub_1A389F1A4(v176, v178, v180);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      sub_1A389F1B4(v176, v178, v180);

      v184 = v435;
      v185 = v423;
      v186 = v372;
      *v372 = v175;
      v186[1] = v176;
      v186[2] = v178;
      *(v186 + 24) = v184;
      v186[4] = v182;
      v186[5] = KeyPath;
      v186[6] = 1;
      *(v186 + 56) = v185;
      swift_storeEnumTagMultiPayload();
      sub_1A3A2EA60();
      sub_1A389F1A4(v176, v178, v180);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B8);
      sub_1A38A08F8(&qword_1EB0FF8C0, &qword_1EB0FF8B8);
      sub_1A3986D34();
      v187 = v374;
      sub_1A3A301F0();
      sub_1A388F6D8(v187, v397, &qword_1EB0FF7D8);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();

      sub_1A389F1B4(v176, v178, v180);

      sub_1A389F1B4(v176, v178, v180);

      return sub_1A388F740(v187, &qword_1EB0FF7D8);
    }

    if (EnumCaseMultiPayload == 8)
    {
      v394 = *v49;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0);
      v90 = swift_projectBox();
      v91 = *(v90 + *(v89 + 48));
      v331 = &v330 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A38907D0(v90, v47);
      sub_1A3A31590();
      v93 = v92;
      v95 = v94;
      type metadata accessor for ChromeViewModel();
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v96 = sub_1A3A2F650();
      v98 = v97;
      v99 = v364;
      sub_1A38907D0(v47, v364);
      v100 = v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A8) + 36);
      *v100 = 2;
      *(v100 + 8) = v93;
      *(v100 + 16) = v95;
      *(v100 + 24) = 1;
      *(v100 + 32) = v96;
      *(v100 + 40) = v98 & 1;
      v101 = sub_1A3A31440();
      v103 = v102;
      v104 = swift_allocObject();
      *(v104 + 16) = v91;
      v105 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B0) + 36));
      *v105 = sub_1A3986D2C;
      v105[1] = v104;
      v105[2] = v101;
      v105[3] = v103;
      sub_1A3A31590();
      v107 = v106;
      v109 = v108;
      v110 = sub_1A3A2F650();
      v111 = v372;
      v112 = v99 + *(v373 + 36);
      *v112 = 1;
      *(v112 + 8) = v107;
      *(v112 + 16) = v109;
      *(v112 + 24) = 1;
      *(v112 + 32) = v110;
      *(v112 + 40) = v113 & 1;
      sub_1A388F6D8(v99, v111, &qword_1EB0FF7C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B8);
      sub_1A38A08F8(&qword_1EB0FF8C0, &qword_1EB0FF8B8);
      sub_1A3986D34();
      v114 = v374;
      sub_1A3A301F0();
      sub_1A388F6D8(v114, v397, &qword_1EB0FF7D8);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();
      sub_1A388F740(v114, &qword_1EB0FF7D8);
      sub_1A388F740(v99, &qword_1EB0FF7C8);
      sub_1A392BCAC(v331);
    }

    LOBYTE(v411) = 0;
    BYTE1(v429) = 0;
    sub_1A39870D8();
    sub_1A3A301F0();
    v204 = v436[4];
    v205 = v383;
    *(v383 + 64) = v436[3];
    *(v205 + 80) = v204;
    *(v205 + 96) = v436[5];
    v206 = v436[0];
    *v205 = v435;
    *(v205 + 16) = v206;
    v207 = v436[2];
    *(v205 + 32) = v436[1];
    *(v205 + 48) = v207;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0);
    sub_1A398704C();
    sub_1A398712C();
    v208 = v384;
    sub_1A3A301F0();
    sub_1A388F6D8(v208, v392, &qword_1EB0FF890);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v209 = v394;
    sub_1A3A301F0();
    sub_1A388F740(v208, &qword_1EB0FF890);
    sub_1A388F6D8(v209, v397, &qword_1EB0FF898);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();
    v210 = v209;
    v211 = &qword_1EB0FF898;
    return sub_1A388F740(v210, v211);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v51 = *v49;
        v52 = *(v49 + 1);
        v53 = *(v49 + 2);
        LODWORD(v384) = v49[24];
        *&v435 = v51;
        *(&v435 + 1) = v52;
        sub_1A389FD78();
        v54 = sub_1A3A308E0();
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = swift_getKeyPath();
        v62 = swift_getKeyPath();
        v63 = v58 & 1;
        LOBYTE(v423) = v58 & 1;
        LOBYTE(v411) = 0;
        v385 = v53;
        sub_1A3A2EA60();
        v64 = sub_1A3A30600();
        sub_1A3A2F520();
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        LOBYTE(v435) = 0;
        sub_1A3A31590();
        v74 = v73;
        v76 = v75;
        type metadata accessor for ChromeViewModel();
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v77 = sub_1A3A2F650();
        LOBYTE(v401) = v78 & 1;
        *&v435 = v54;
        *(&v435 + 1) = v56;
        LOBYTE(v436[0]) = v63;
        *(&v436[0] + 1) = v60;
        *&v436[1] = v61;
        *(&v436[1] + 1) = 1;
        LOBYTE(v436[2]) = 0;
        *(&v436[2] + 1) = v62;
        *&v436[3] = v53;
        BYTE8(v436[3]) = v64;
        *&v436[4] = v66;
        *(&v436[4] + 1) = v68;
        *&v436[5] = v70;
        *(&v436[5] + 1) = v72;
        LOBYTE(v437) = 0;
        DWORD1(v437) = *(&v423 + 3);
        *(&v437 + 1) = v423;
        BYTE8(v437) = v384;
        HIDWORD(v437) = *(&v411 + 3);
        *(&v437 + 9) = v411;
        *&v438 = v74;
        *(&v438 + 1) = v76;
        LOBYTE(v439) = 1;
        DWORD1(v439) = *(&v406 + 3);
        *(&v439 + 1) = v406;
        *(&v439 + 1) = v77;
        LOBYTE(v440) = v78 & 1;
        v79 = v439;
        v80 = v377;
        *(v377 + 128) = v438;
        *(v80 + 144) = v79;
        *(v80 + 160) = v78 & 1;
        v81 = v436[4];
        *(v80 + 64) = v436[3];
        *(v80 + 80) = v81;
        v82 = v437;
        *(v80 + 96) = v436[5];
        *(v80 + 112) = v82;
        v83 = v436[0];
        *v80 = v435;
        *(v80 + 16) = v83;
        v84 = v436[2];
        *(v80 + 32) = v436[1];
        *(v80 + 48) = v84;
        swift_storeEnumTagMultiPayload();
        sub_1A388F6D8(&v435, &v423, &qword_1EB0FF928);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF928);
        sub_1A398769C();
        sub_1A398786C();
        v85 = v380;
        sub_1A3A301F0();
        sub_1A388F6D8(v85, v388, &qword_1EB0FF830);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40);
        sub_1A3987610();
        sub_1A3988210();
        v86 = v389;
        sub_1A3A301F0();
        sub_1A388F740(v85, &qword_1EB0FF830);
        sub_1A388F6D8(v86, v392, &qword_1EB0FF838);
        swift_storeEnumTagMultiPayload();
        sub_1A3986FC0();
        sub_1A3987584();
        v87 = v394;
        sub_1A3A301F0();
        sub_1A388F740(v86, &qword_1EB0FF838);
        sub_1A388F6D8(v87, v397, &qword_1EB0FF898);
        swift_storeEnumTagMultiPayload();
        sub_1A3986F34();
        sub_1A39885D0();
        sub_1A3A301F0();
        sub_1A388F740(&v435, &qword_1EB0FF928);

        return sub_1A388F740(v87, &qword_1EB0FF898);
      }

      else
      {
        v188 = *v49;
        LODWORD(v382) = v49[8];
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448);
        v190 = v189[16];
        LODWORD(v385) = v49[v189[20]];
        v191 = v49[v189[24]];
        LODWORD(v383) = v49[v189[28]];
        v192 = v49[v189[32]];
        LODWORD(v384) = v49[v189[36]];
        v193 = v376;
        (*(v378 + 32))(v376, &v49[v190], v379);
        sub_1A391163C(v193);
        v195 = v194;
        sub_1A3912000(v193);
        v197 = v196;
        if (v191)
        {
          *&v435 = v188;
          swift_getKeyPath();
          sub_1A38907D0(v2, v47);
          v198 = (*(v44 + 80) + 41) & ~*(v44 + 80);
          v199 = swift_allocObject();
          *(v199 + 16) = v383;
          *(v199 + 24) = v197;
          *(v199 + 32) = v195;
          *(v199 + 40) = v192;
          sub_1A3890890(v47, v199 + v198);
          *(v199 + v198 + v45) = v384;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9F0);
          sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798);
          sub_1A3987F60();
          v200 = v340;
          sub_1A3A31200();
          v201 = v341;
          v202 = v351;
          (*(v341 + 16))(v350, v200, v351);
          swift_storeEnumTagMultiPayload();
          sub_1A3987A34();
          sub_1A3987DA0(&qword_1EB0FF9E0, &qword_1EB0FF800, &unk_1A3A7B780, sub_1A3987F60);
          v203 = v348;
          sub_1A3A301F0();
          (*(v201 + 8))(v200, v202);
        }

        else
        {
          v255 = v384;
          v256 = v383;
          *&v435 = v188;
          if (v382)
          {
            swift_getKeyPath();
            sub_1A38907D0(v2, v47);
            v257 = (*(v44 + 80) + 34) & ~*(v44 + 80);
            v258 = swift_allocObject();
            *(v258 + 16) = v195;
            *(v258 + 24) = v197;
            *(v258 + 32) = v192;
            *(v258 + 33) = v255;
            sub_1A3890890(v47, v258 + v257);
            *(v258 + v257 + v45) = v256;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF978);
            sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798);
            sub_1A3987B18();
            v259 = v332;
            sub_1A3A31200();
            v260 = v333;
            v261 = v345;
            (*(v333 + 16))(v344, v259, v345);
          }

          else
          {
            swift_getKeyPath();
            sub_1A38907D0(v2, v47);
            v321 = (*(v44 + 80) + 32) & ~*(v44 + 80);
            v322 = swift_allocObject();
            *(v322 + 16) = v195;
            *(v322 + 24) = v197;
            sub_1A3890890(v47, v322 + v321);
            *(v322 + v321 + v45) = v256;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9D0);
            sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798);
            sub_1A3987E1C();
            v259 = v334;
            sub_1A3A31200();
            v260 = v335;
            v261 = v346;
            (*(v335 + 16))(v344, v259, v346);
          }

          swift_storeEnumTagMultiPayload();
          sub_1A3987DA0(&qword_1EB0FF968, &qword_1EB0FF7F0, &unk_1A3A7B770, sub_1A3987B18);
          sub_1A3987DA0(&qword_1EB0FF9C0, &qword_1EB0FF7E0, &unk_1A3A7B760, sub_1A3987E1C);
          v262 = v343;
          sub_1A3A301F0();
          (*(v260 + 8))(v259, v261);
          sub_1A388F6D8(v262, v350, &qword_1EB0FF808);
          swift_storeEnumTagMultiPayload();
          sub_1A3987A34();
          sub_1A3987DA0(&qword_1EB0FF9E0, &qword_1EB0FF800, &unk_1A3A7B780, sub_1A3987F60);
          v203 = v348;
          sub_1A3A301F0();
          sub_1A388F740(v262, &qword_1EB0FF808);
        }

        v323 = v365;
        sub_1A388F670(v203, v365, &qword_1EB0FF810);
        type metadata accessor for ChromeViewModel();
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
        v324 = sub_1A3A2F650();
        v325 = v323 + *(v381 + 36);
        *v325 = v385;
        *(v325 + 8) = v324;
        *(v325 + 16) = v326 & 1;
        sub_1A388F6D8(v323, v377, &qword_1EB0FF818);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF928);
        sub_1A398769C();
        sub_1A398786C();
        v327 = v380;
        sub_1A3A301F0();
        sub_1A388F6D8(v327, v388, &qword_1EB0FF830);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40);
        sub_1A3987610();
        sub_1A3988210();
        v328 = v389;
        sub_1A3A301F0();
        sub_1A388F740(v327, &qword_1EB0FF830);
        sub_1A388F6D8(v328, v392, &qword_1EB0FF838);
        swift_storeEnumTagMultiPayload();
        sub_1A3986FC0();
        sub_1A3987584();
        v329 = v394;
        sub_1A3A301F0();
        sub_1A388F740(v328, &qword_1EB0FF838);
        sub_1A388F6D8(v329, v397, &qword_1EB0FF898);
        swift_storeEnumTagMultiPayload();
        sub_1A3986F34();
        sub_1A39885D0();
        sub_1A3A301F0();
        sub_1A388F740(v329, &qword_1EB0FF898);
        sub_1A388F740(v323, &qword_1EB0FF818);
        return (*(v378 + 8))(v376, v379);
      }
    }

    v154 = v49[16];
    if (qword_1ED996498 != -1)
    {
      swift_once();
    }

    v155 = qword_1ED99D890;
    sub_1A3A30F10();
    v156 = *MEMORY[0x1E6981698];
    v157 = sub_1A3A30EE0();
    v158 = *(v157 - 8);
    v159 = v355;
    (*(v158 + 104))(v355, v156, v157);
    (*(v158 + 56))(v159, 0, 1, v157);
    v160 = sub_1A3A30ED0();

    sub_1A388F740(v159, &qword_1EB0FF840);
    sub_1A3A31590();
    v162 = v161;
    v164 = v163;
    type metadata accessor for ChromeViewModel();
    sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    v165 = sub_1A3A2F650();
    v166 = v369;
    *v369 = v160;
    *(v166 + 8) = v154;
    v166[2] = v162;
    v166[3] = v164;
    *(v166 + 32) = 1;
    v166[5] = v165;
    *(v166 + 48) = v167 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF910);
    sub_1A39871B8();
    sub_1A39874F8();
    v168 = v371;
    sub_1A3A301F0();
    sub_1A388F6D8(v168, v383, &qword_1EB0FF850);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0);
    sub_1A398704C();
    sub_1A398712C();
    v169 = v384;
    sub_1A3A301F0();
    sub_1A388F740(v168, &qword_1EB0FF850);
    sub_1A388F6D8(v169, v392, &qword_1EB0FF890);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v170 = v394;
    sub_1A3A301F0();
    sub_1A388F740(v169, &qword_1EB0FF890);
    sub_1A388F6D8(v170, v397, &qword_1EB0FF898);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();

    return sub_1A388F740(v170, &qword_1EB0FF898);
  }

  if (EnumCaseMultiPayload)
  {
    v213 = *v49;
    v212 = *(v49 + 1);
    v214 = v49[16];
    v215 = *(v49 + 3);
    v216 = *(v49 + 4);
    v388 = v216;
    v389 = v215;
    *v34 = v213;
    *(v34 + 1) = v212;
    v217 = v366;
    (*(v366 + 104))(v34, *MEMORY[0x1E69C1D40], v32);
    if (v215)
    {
      sub_1A3A2EA60();
      sub_1A3A2EA60();
      v218 = v215;
      v219 = sub_1A3A2F200();
      (*(v217 + 8))(v34, v32);
      v220 = v216;
      v221 = v352;
      sub_1A3A31630();
      v222 = v353;
      sub_1A3A31610();
      v223 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF900) + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
      sub_1A3988EAC(&qword_1ED996728, MEMORY[0x1E69821A0]);
      v224 = v356;
      sub_1A3A2FC70();
      (*(v357 + 8))(v222, v358);
      (*(v354 + 8))(v221, v224);
      *v223 = swift_getKeyPath();
      *v36 = v219;
      sub_1A3A31590();
      v226 = v225;
      v228 = v227;
      type metadata accessor for ChromeViewModel();
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v229 = sub_1A3A2F650();
      v230 = v36 + *(v362 + 36);
      *v230 = v214;
      *(v230 + 1) = v226;
      *(v230 + 2) = v228;
      v230[24] = 1;
      *(v230 + 4) = v229;
      v230[40] = v231 & 1;
      v232 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F8) + 36));
      v233 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC30) + 28);
      sub_1A3A300E0();
      v234 = sub_1A3A300F0();
      (*(*(v234 - 8) + 56))(v232 + v233, 0, 1, v234);
      *v232 = swift_getKeyPath();
      v235 = (v36 + *(v359 + 36));
      *v235 = v218;
      v235[1] = v220;
      sub_1A388F6D8(v36, v361, &qword_1EB0FF868);
      swift_storeEnumTagMultiPayload();
      sub_1A3987244();
      sub_1A39873B4();
      v236 = v363;
      sub_1A3A301F0();
      v237 = v36;
      v238 = &qword_1EB0FF868;
    }

    else
    {
      v303 = sub_1A3A2F200();
      (*(v217 + 8))(v34, v32);
      v304 = v352;
      sub_1A3A31630();
      v305 = v353;
      sub_1A3A31610();
      v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF900);
      v307 = v336;
      v308 = (v336 + *(v306 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
      sub_1A3988EAC(&qword_1ED996728, MEMORY[0x1E69821A0]);
      v309 = v356;
      sub_1A3A2FC70();
      (*(v357 + 8))(v305, v358);
      (*(v354 + 8))(v304, v309);
      *v308 = swift_getKeyPath();
      *v307 = v303;
      sub_1A3A31590();
      v311 = v310;
      v313 = v312;
      type metadata accessor for ChromeViewModel();
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      v314 = sub_1A3A2F650();
      v315 = v361;
      v316 = v307 + *(v362 + 36);
      *v316 = v214;
      *(v316 + 1) = v311;
      *(v316 + 2) = v313;
      v316[24] = 1;
      *(v316 + 4) = v314;
      v316[40] = v317 & 1;
      sub_1A388F6D8(v307, v315, &qword_1EB0FF858);
      swift_storeEnumTagMultiPayload();
      sub_1A3987244();
      sub_1A39873B4();
      v236 = v363;
      sub_1A3A301F0();
      v237 = v307;
      v238 = &qword_1EB0FF858;
    }

    sub_1A388F740(v237, v238);
    sub_1A388F6D8(v236, v369, &qword_1EB0FF870);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF910);
    sub_1A39871B8();
    sub_1A39874F8();
    v318 = v371;
    sub_1A3A301F0();
    sub_1A388F6D8(v318, v383, &qword_1EB0FF850);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0);
    sub_1A398704C();
    sub_1A398712C();
    v319 = v384;
    sub_1A3A301F0();
    sub_1A388F740(v318, &qword_1EB0FF850);
    sub_1A388F6D8(v319, v392, &qword_1EB0FF890);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v320 = v394;
    sub_1A3A301F0();
    sub_1A388F740(v319, &qword_1EB0FF890);
    sub_1A388F6D8(v320, v397, &qword_1EB0FF898);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();
    sub_1A3988C60(v389);
    sub_1A388F740(v320, &qword_1EB0FF898);
    v210 = v236;
    v211 = &qword_1EB0FF870;
    return sub_1A388F740(v210, v211);
  }

  v115 = *(v49 + 1);
  v406 = *v49;
  *v407 = v115;
  *&v407[16] = *(v49 + 2);
  *&v408 = *(v49 + 6);
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v116 = off_1ED997FE0;
  swift_getKeyPath();
  *&v435 = v116;
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v117 = v116[2];
  swift_getKeyPath();
  *&v435 = v117;
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v118 = *(v117 + 64);

  sub_1A388F6D8(&v406, &v435, &qword_1EB0FFA98);
  sub_1A3A31AA0();
  v119 = sub_1A3A31A90();
  v120 = swift_allocObject();
  v121 = MEMORY[0x1E69E85E0];
  *(v120 + 16) = v119;
  *(v120 + 24) = v121;
  v122 = v436[0];
  *(v120 + 32) = v435;
  *(v120 + 48) = v122;
  *(v120 + 64) = v436[1];
  *(v120 + 80) = *&v436[2];
  v123 = sub_1A3A31A90();
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF768);
  sub_1A3A311C0();
  v401 = v435;
  v402[0] = v436[0];
  *(v402 + 9) = *(v436 + 9);
  sub_1A394DDC8(v118, &v401, &v411);
  v427 = v415;
  v428 = v416;
  LOBYTE(v429) = v417;
  v423 = v411;
  v424 = v412;
  v426 = v414;
  v425 = v413;
  LOBYTE(v444[0]) = 1;
  BYTE1(v429) = 1;
  sub_1A394E1B0(&v411, &v435);
  sub_1A39870D8();
  sub_1A3A301F0();
  v125 = v436[4];
  v126 = v383;
  *(v383 + 64) = v436[3];
  *(v126 + 80) = v125;
  *(v126 + 96) = v436[5];
  v127 = v436[0];
  *v126 = v435;
  *(v126 + 16) = v127;
  v128 = v436[2];
  *(v126 + 32) = v436[1];
  *(v126 + 48) = v128;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0);
  sub_1A398704C();
  sub_1A398712C();
  v129 = v384;
  sub_1A3A301F0();
  sub_1A388F6D8(v129, v392, &qword_1EB0FF890);
  swift_storeEnumTagMultiPayload();
  sub_1A3986FC0();
  sub_1A3987584();
  v130 = v394;
  sub_1A3A301F0();
  sub_1A388F740(v129, &qword_1EB0FF890);
  sub_1A388F6D8(v130, v397, &qword_1EB0FF898);
  swift_storeEnumTagMultiPayload();
  sub_1A3986F34();
  sub_1A39885D0();
  sub_1A3A301F0();
  sub_1A3988D3C(&v411);
  sub_1A388F740(v130, &qword_1EB0FF898);
  return sub_1A388F740(&v406, &qword_1EB0FFA98);
}

double sub_1A398491C@<D0>(_OWORD *a1@<X0>, char a2@<W4>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A2F9F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 5];
  v10 = a1[1];
  v47[0] = *a1;
  v11 = a1[2];
  v47[1] = v10;
  v47[2] = v11;
  v12 = sub_1A3A2FF40();
  v44 = 0;
  sub_1A3984C44(v47, v48);
  *&v43[7] = v48[0];
  *&v43[23] = v48[1];
  *&v43[39] = v48[2];
  *&v43[55] = v48[3];
  v13 = v44;
  v14 = sub_1A3A30640();
  sub_1A3A2F520();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v45 = 0;
  v23 = sub_1A3A30650();
  sub_1A3A2F520();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v46 = 0;
  KeyPath = swift_getKeyPath();
  v33 = MEMORY[0x1E697E7D8];
  if ((a2 & 1) == 0)
  {
    v33 = MEMORY[0x1E697E7D0];
  }

  (*(v7 + 104))(v9, *v33, v6);
  v34 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF978) + 36));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8);
  (*(v7 + 32))(v34 + *(v35 + 28), v9, v6);
  *v34 = KeyPath;
  v36 = *v43;
  *(a3 + 33) = *&v43[16];
  result = *&v43[32];
  v38 = *&v43[48];
  *(a3 + 49) = *&v43[32];
  *(a3 + 65) = v38;
  *a3 = v12;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = v13;
  *(a3 + 80) = *&v43[63];
  *(a3 + 17) = v36;
  *(a3 + 88) = v14;
  *(a3 + 89) = *v42;
  *(a3 + 92) = *&v42[3];
  *(a3 + 96) = v16;
  *(a3 + 104) = v18;
  *(a3 + 112) = v20;
  *(a3 + 120) = v22;
  *(a3 + 128) = 0;
  *(a3 + 132) = *&v41[3];
  *(a3 + 129) = *v41;
  *(a3 + 136) = v23;
  *(a3 + 140) = *&v40[3];
  *(a3 + 137) = *v40;
  *(a3 + 144) = v25;
  *(a3 + 152) = v27;
  *(a3 + 160) = v29;
  *(a3 + 168) = v31;
  *(a3 + 176) = 0;
  *(a3 + 177) = 257;
  return result;
}

uint64_t sub_1A3984C44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2F1E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = a1[4];
  v9 = a1[5];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    *v7 = v10;
    v7[1] = v9;
    (*(v5 + 104))(v7, *MEMORY[0x1E69C1D38], v4);
    sub_1A3A2F200();
    (*(v5 + 8))(v7, v4);
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  v12 = a1[3];
  v60 = a1[2];
  v61 = v12;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v13 = sub_1A3A308E0();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_1A3A30740();
  sub_1A391A414();
  v17 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v18 = sub_1A3A308A0();
  v56 = v19;
  v57 = v18;
  v55 = v20;
  v58 = v21;

  sub_1A389F1B4(v13, v15, v12 & 1);

  v22 = sub_1A3A308D0();
  v24 = v23;
  v26 = v25;
  sub_1A3A30740();
  sub_1A391A414();
  v27 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v28 = sub_1A3A308A0();
  v30 = v29;
  LOBYTE(v13) = v31;

  sub_1A389F1B4(v22, v24, v26 & 1);

  sub_1A3A30DD0();
  v32 = sub_1A3A30E10();

  v60 = v32;
  v33 = sub_1A3A30870();
  v35 = v34;
  LOBYTE(v15) = v36;
  sub_1A389F1B4(v28, v30, v13 & 1);

  v37 = sub_1A3A30850();
  v39 = v38;
  LOBYTE(v28) = v40;
  sub_1A389F1B4(v33, v35, v15 & 1);

  sub_1A3A30D80();
  v41 = sub_1A3A308B0();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_1A389F1B4(v37, v39, v28 & 1);

  v48 = v55;
  v49 = v55 & 1;
  v59 = v55 & 1;
  LOBYTE(v60) = v55 & 1;
  v62 = v45 & 1;
  v51 = v56;
  v50 = v57;
  *a2 = v57;
  *(a2 + 8) = v51;
  *(a2 + 16) = v48 & 1;
  *(a2 + 24) = v58;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v45 & 1;
  *(a2 + 56) = v47;
  v52 = v50;
  sub_1A389F1A4(v50, v51, v49);
  sub_1A3A2EA50();
  sub_1A389F1A4(v41, v43, v45 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v41, v43, v45 & 1);

  sub_1A389F1B4(v52, v51, v59);
}

double sub_1A39851A0@<D0>(_OWORD *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A2F9F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v30[0] = *a1;
  v30[1] = v10;
  v30[2] = a1[2];
  v11 = sub_1A3A2FF40();
  LOBYTE(v32[0]) = 0;
  sub_1A398540C(v30, v31);
  *(v29 + 7) = v31[0];
  *(&v29[1] + 7) = v31[1];
  *(&v29[2] + 7) = v31[2];
  *(&v29[3] + 7) = v31[3];
  v12 = v32[0];
  v13 = sub_1A3A30600();
  sub_1A3A2F520();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = MEMORY[0x1E697E7D8];
  if ((a2 & 1) == 0)
  {
    v23 = MEMORY[0x1E697E7D0];
  }

  (*(v7 + 104))(v9, *v23, v6);
  v24 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9D0) + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8);
  (*(v7 + 32))(v24 + *(v25 + 28), v9, v6);
  *v24 = KeyPath;
  v26 = v29[0];
  *(a3 + 33) = v29[1];
  result = *&v29[2];
  v28 = v29[3];
  *(a3 + 49) = v29[2];
  *(a3 + 65) = v28;
  *a3 = v11;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = v12;
  *(a3 + 80) = *(&v29[3] + 15);
  *(a3 + 17) = v26;
  *(a3 + 88) = v13;
  *(a3 + 89) = v32[0];
  *(a3 + 92) = *(v32 + 3);
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v19;
  *(a3 + 120) = v21;
  *(a3 + 128) = 0;
  *(a3 + 129) = 257;
  return result;
}

uint64_t sub_1A398540C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *(a1 + 40);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    sub_1A3A30EB0();
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  sub_1A389FD78();
  sub_1A3A2EA50();
  v7 = sub_1A3A308E0();
  v9 = v8;
  v11 = v10;
  sub_1A3A30740();
  sub_1A391A414();
  v12 = CEKFontOfSizeWeightStyle();
  sub_1A3A307B0();
  v13 = sub_1A3A308A0();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;

  sub_1A389F1B4(v7, v9, v11 & 1);

  v17 = sub_1A3A308D0();
  v19 = v18;
  v21 = v20;
  sub_1A3A306C0();
  sub_1A391A414();
  v22 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v23 = sub_1A3A308A0();
  v25 = v24;
  v27 = v26;

  sub_1A389F1B4(v17, v19, v21 & 1);

  v28 = sub_1A3A30850();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1A389F1B4(v23, v25, v27 & 1);

  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  *(a2 + 48) = v32 & 1;
  *(a2 + 56) = v34;
  sub_1A389F1A4(v38, v37, v36 & 1);
  sub_1A3A2EA50();
  sub_1A389F1A4(v28, v30, v32 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v28, v30, v32 & 1);

  sub_1A389F1B4(v38, v37, v36 & 1);
}

uint64_t sub_1A3985788@<X0>(_OWORD *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v34[0] = *a1;
  v34[1] = v7;
  v34[2] = a1[2];
  v8 = sub_1A3A300B0();
  sub_1A3985944(v34, a2, a3, v35);
  *&v33[23] = v35[1];
  *&v33[39] = v35[2];
  *&v33[55] = v35[3];
  v33[71] = v36;
  *&v33[7] = v35[0];
  v9 = sub_1A3A30600();
  sub_1A3A2F520();
  v31 = v11;
  v32 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1A3A30630();
  sub_1A3A2F520();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1A3A30620();
  result = sub_1A3A2F520();
  *(a4 + 33) = *&v33[16];
  *(a4 + 49) = *&v33[32];
  *(a4 + 65) = *&v33[48];
  *a4 = v8;
  *(a4 + 8) = 0x3FF0000000000000;
  *(a4 + 16) = 0;
  *(a4 + 81) = *&v33[64];
  *(a4 + 17) = *v33;
  *(a4 + 96) = v9;
  *(a4 + 104) = v32;
  *(a4 + 112) = v31;
  *(a4 + 120) = v13;
  *(a4 + 128) = v15;
  *(a4 + 136) = 0;
  *(a4 + 144) = v16;
  *(a4 + 152) = v18;
  *(a4 + 160) = v20;
  *(a4 + 168) = v22;
  *(a4 + 176) = v24;
  *(a4 + 184) = 0;
  *(a4 + 192) = v25;
  *(a4 + 200) = v27;
  *(a4 + 208) = v28;
  *(a4 + 216) = v29;
  *(a4 + 224) = v30;
  *(a4 + 232) = 0;
  *(a4 + 233) = 257;
  return result;
}

__n128 sub_1A3985944@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    sub_1A3A30EB0();
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  if (a2)
  {
    v10 = sub_1A3A308D0();
    v12 = v11;
    v14 = v13;
    sub_1A3A306C0();
    sub_1A391A414();
    v15 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v16 = sub_1A3A308A0();
    v60 = v17;
    v58 = v18;

    sub_1A389F1B4(v10, v12, v14 & 1);

    sub_1A389FD78();
    sub_1A3A2EA50();
    v19 = sub_1A3A308E0();
    v21 = v20;
    v23 = v22;
    sub_1A3A30740();
    sub_1A391A414();
    v24 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v25 = sub_1A3A308A0();
    v27 = v26;
    v29 = v28;

    sub_1A389F1B4(v19, v21, v23 & 1);

    sub_1A389F1A4(v16, v60, v58 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v25, v27, v29 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v16, v60, v58 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v25, v27, v29 & 1);
    sub_1A3A2EA50();
    sub_1A389F1B4(v25, v27, v29 & 1);

    sub_1A389F1B4(v16, v60, v58 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAA8);
    sub_1A38A08F8(&qword_1EB0FFAB0, &qword_1EB0FFAA8);
    sub_1A3A301F0();
    sub_1A389F1B4(v25, v27, v29 & 1);

    sub_1A389F1B4(v16, v60, v58 & 1);
  }

  else
  {
    sub_1A389FD78();
    sub_1A3A2EA50();
    v30 = a3;
    v31 = sub_1A3A308E0();
    v33 = v32;
    v35 = v34;
    sub_1A3A30740();
    sub_1A391A414();
    v36 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v59 = sub_1A3A308A0();
    v57 = v37;
    v56 = v38;

    sub_1A389F1B4(v31, v33, v35 & 1);

    v39 = sub_1A3A308D0();
    v41 = v40;
    v43 = v42;
    if (v30)
    {
      sub_1A3A30740();
    }

    else
    {
      sub_1A3A30720();
    }

    sub_1A391A414();
    v44 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v45 = sub_1A3A308A0();
    v47 = v46;
    v49 = v48;

    sub_1A389F1B4(v39, v41, v43 & 1);

    sub_1A3A30D80();
    v50 = sub_1A3A308B0();
    v52 = v51;
    v54 = v53;

    sub_1A389F1B4(v45, v47, v49 & 1);

    sub_1A389F1A4(v59, v57, v56 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v50, v52, v54 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v59, v57, v56 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v50, v52, v54 & 1);
    sub_1A3A2EA50();
    sub_1A389F1B4(v50, v52, v54 & 1);

    sub_1A389F1B4(v59, v57, v56 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAA8);
    sub_1A38A08F8(&qword_1EB0FFAB0, &qword_1EB0FFAA8);
    sub_1A3A301F0();
    sub_1A389F1B4(v50, v52, v54 & 1);

    sub_1A389F1B4(v59, v57, v56 & 1);
  }

  *(a4 + 32) = v64;
  *(a4 + 48) = v65;
  *(a4 + 64) = v66;
  result = v63;
  *a4 = v62;
  *(a4 + 16) = v63;
  return result;
}

uint64_t sub_1A398612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a5;
  v9 = sub_1A3A2FC90();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3A2F1E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a1;
  v14[1] = a2;
  (*(v12 + 104))(v14, *MEMORY[0x1E69C1D40], v11);
  sub_1A3A2EA50();
  v49 = sub_1A3A2F200();
  (*(v12 + 8))(v14, v11);
  v58 = a3;
  v59 = a4;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v15 = sub_1A3A308E0();
  v17 = v16;
  v19 = v18;
  if (qword_1EB0FC118 != -1)
  {
    swift_once();
  }

  sub_1A3A30740();
  sub_1A391A414();
  v20 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v21 = sub_1A3A308A0();
  v23 = v22;
  v25 = v24;

  sub_1A389F1B4(v15, v17, v19 & 1);

  v26 = v46;
  sub_1A3A2FC60();
  v27 = sub_1A3A30890();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1A389F1B4(v21, v23, v25 & 1);

  (*(v47 + 8))(v26, v48);
  LOBYTE(v21) = sub_1A3A30600();
  sub_1A3A2F520();
  v34 = *v53;
  *(&v55 + 1) = *v53;
  DWORD1(v55) = *&v53[3];
  DWORD1(v56) = *&v52[3];
  v35 = *v52;
  *(&v56 + 1) = *v52;
  *&v54 = v27;
  *(&v54 + 1) = v29;
  LOBYTE(v55) = v31 & 1;
  *(&v55 + 1) = v33;
  LOBYTE(v56) = v21;
  *(&v56 + 1) = v36;
  *&v57[0] = v37;
  *(&v57[0] + 1) = v38;
  *&v57[1] = v39;
  BYTE8(v57[1]) = 0;
  v40 = v50;
  *v50 = v49;
  v41 = v56;
  v42 = v57[0];
  *(v40 + 65) = *(v57 + 9);
  *(v40 + 7) = v42;
  *(v40 + 5) = v41;
  v43 = v54;
  *(v40 + 3) = v55;
  *(v40 + 1) = v43;
  v58 = v27;
  v59 = v29;
  v60 = v31 & 1;
  *&v61[3] = *&v53[3];
  *v61 = v34;
  v62 = v33;
  v63 = v21;
  *&v64[3] = *&v52[3];
  *v64 = v35;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v69 = 0;
  sub_1A3A2EA60();
  sub_1A388F6D8(&v54, &v51, &qword_1EB0FD3B8);
  sub_1A388F740(&v58, &qword_1EB0FD3B8);
}

__n128 sub_1A3986524@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = (&v30 - v3);
  v4 = sub_1A3A30090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2F800();
  v9 = v8;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v10 = off_1ED997FE0;
  swift_getKeyPath();
  *&v36 = v10;
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v11 = v10[2];
  swift_getKeyPath();
  *&v36 = v11;
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v12 = *(v11 + 72);

  if (v9 / v12 <= 2.0)
  {
    swift_getKeyPath();
    *&v36 = v10;
    sub_1A3A2F080();

    v13 = v10[2];
    swift_getKeyPath();
    *&v36 = v13;
    sub_1A3A2EA60();
    sub_1A3A2F080();
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E697F680], v4, v9 / v12);
    sub_1A391163C(v7);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A3A30730();
  sub_1A391A414();
  v14 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  [v14 descender];
  v16 = -v15;
  v17 = sub_1A3A31480();
  v18 = v31;
  *v31 = v17;
  *(v18 + 8) = v19;
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAC0) + 44));
  *v20 = sub_1A3A31480();
  v20[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAC8);
  sub_1A3986A38(v30, v14, v20 + *(v22 + 44), v16);
  sub_1A3A31450();
  sub_1A3A2F780();
  v23 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAD0) + 36));
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v23[2] = v35;
  sub_1A3A31440();
  sub_1A3A2FBF0();

  v25 = v32;
  sub_1A388F670(v18, v32, &qword_1EB0FFAB8);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAD8) + 36);
  v27 = v41;
  *(v26 + 64) = v40;
  *(v26 + 80) = v27;
  *(v26 + 96) = v42;
  v28 = v37;
  *v26 = v36;
  *(v26 + 16) = v28;
  result = v39;
  *(v26 + 32) = v38;
  *(v26 + 48) = result;
  return result;
}

uint64_t sub_1A3986A38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v31 = a3;
  v30 = sub_1A3A2FC90();
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3A2FFC0();
  sub_1A3A2FFB0();
  *&v37[0] = a1;
  sub_1A3A2FF80();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  v10 = sub_1A3A308D0();
  v12 = v11;
  v14 = v13;
  v15 = a2;
  sub_1A3A307B0();
  v16 = sub_1A3A308A0();
  v18 = v17;
  v20 = v19;

  sub_1A389F1B4(v10, v12, v14 & 1);

  sub_1A3A2FC80();
  v21 = sub_1A3A30890();
  v23 = v22;
  LOBYTE(v12) = v24;
  v26 = v25;
  sub_1A389F1B4(v16, v18, v20 & 1);

  (*(v29 + 8))(v8, v30);
  v36 = v12 & 1;
  *&v32 = v21;
  *(&v32 + 1) = v23;
  LOBYTE(v33) = v12 & 1;
  *(&v33 + 1) = v26;
  LOWORD(v34) = 257;
  *(&v34 + 1) = 0;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAE0);
  sub_1A3988D90();
  sub_1A3A30AD0();
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v38 = v35;
  return sub_1A388F740(v37, &qword_1EB0FFAE0);
}

unint64_t sub_1A3986D34()
{
  result = qword_1EB0FF8C8;
  if (!qword_1EB0FF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF7C8);
    sub_1A3986DC0();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8C8);
  }

  return result;
}

unint64_t sub_1A3986DC0()
{
  result = qword_1EB0FF8D0;
  if (!qword_1EB0FF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8B0);
    sub_1A3986E78();
    sub_1A38A08F8(&qword_1EB0FF8D8, &qword_1EB0FF8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8D0);
  }

  return result;
}

unint64_t sub_1A3986E78()
{
  result = qword_1ED998A28;
  if (!qword_1ED998A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8A8);
    sub_1A3988EAC(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A28);
  }

  return result;
}

unint64_t sub_1A3986F34()
{
  result = qword_1EB0FF8E8;
  if (!qword_1EB0FF8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF898);
    sub_1A3986FC0();
    sub_1A3987584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8E8);
  }

  return result;
}

unint64_t sub_1A3986FC0()
{
  result = qword_1ED998A30;
  if (!qword_1ED998A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF890);
    sub_1A398704C();
    sub_1A398712C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A30);
  }

  return result;
}

unint64_t sub_1A398704C()
{
  result = qword_1ED998A38;
  if (!qword_1ED998A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8F0);
    sub_1A39870D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A38);
  }

  return result;
}

unint64_t sub_1A39870D8()
{
  result = qword_1ED998A40;
  if (!qword_1ED998A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A40);
  }

  return result;
}

unint64_t sub_1A398712C()
{
  result = qword_1ED998A48;
  if (!qword_1ED998A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF850);
    sub_1A39871B8();
    sub_1A39874F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A48);
  }

  return result;
}

unint64_t sub_1A39871B8()
{
  result = qword_1ED998A50;
  if (!qword_1ED998A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF870);
    sub_1A3987244();
    sub_1A39873B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A50);
  }

  return result;
}

unint64_t sub_1A3987244()
{
  result = qword_1ED998A58;
  if (!qword_1ED998A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF868);
    sub_1A39872FC();
    sub_1A38A08F8(&qword_1ED998A78, &qword_1EB0FF908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A58);
  }

  return result;
}

unint64_t sub_1A39872FC()
{
  result = qword_1ED998A60;
  if (!qword_1ED998A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8F8);
    sub_1A39873B4();
    sub_1A38A08F8(&qword_1ED996730, &qword_1EB0FCC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A60);
  }

  return result;
}

unint64_t sub_1A39873B4()
{
  result = qword_1ED998A68;
  if (!qword_1ED998A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF858);
    sub_1A3987440();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A68);
  }

  return result;
}

unint64_t sub_1A3987440()
{
  result = qword_1ED998A70;
  if (!qword_1ED998A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF900);
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A70);
  }

  return result;
}

unint64_t sub_1A39874F8()
{
  result = qword_1ED998A80;
  if (!qword_1ED998A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF910);
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A80);
  }

  return result;
}

unint64_t sub_1A3987584()
{
  result = qword_1EB0FF918;
  if (!qword_1EB0FF918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF838);
    sub_1A3987610();
    sub_1A3988210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF918);
  }

  return result;
}

unint64_t sub_1A3987610()
{
  result = qword_1EB0FF920;
  if (!qword_1EB0FF920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF830);
    sub_1A398769C();
    sub_1A398786C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF920);
  }

  return result;
}