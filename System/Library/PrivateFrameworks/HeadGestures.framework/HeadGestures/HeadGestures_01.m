void sub_25110C10C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = [objc_opt_self() retrieveSessionWithID_];
    [*(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine) setAudioSession_];
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_251130BE8();
    __swift_project_value_buffer(v6, qword_27F421A38);

    v7 = sub_251130BC8();
    v8 = sub_251131198();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      v10 = *(v1 + 16);
      v11 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
      swift_beginAccess();
      *(v9 + 4) = *(v10 + v11);

      _os_log_impl(&dword_2510F2000, v7, v8, "[AudioSession] Attached session ID %u", v9, 8u);
      MEMORY[0x25306CC10](v9, -1, -1);
    }

    else
    {
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v13 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v14 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode) = v12;

  v15 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v16 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
  v17 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode) = v15;

  v18 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v19 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
  v20 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode) = v18;

  v21 = [objc_allocWithZone(MEMORY[0x277CB8390]) init];
  v22 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);
  *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode) = v21;
  v23 = v21;

  if (!v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = *(v1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  [v24 attachNode_];

  if (!*(v1 + v16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v24 attachNode_];
  if (!*(v1 + v19))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v24 attachNode_];
  if (*(v1 + v13))
  {
    [v24 attachNode_];
    sub_25110C42C();
    sub_25110BB34(v1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_251130CB8();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_25110C42C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleAudioEngineConfigurationChangeWithNotification_ name:*MEMORY[0x277CB8008] object:*(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine)];
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_audioSessionID;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = [objc_opt_self() retrieveSessionWithID_];
    v6 = *MEMORY[0x277CB8068];
    v7 = v5;
    [v1 addObserver:v0 selector:sel_handleInterruptionWithNotification_ name:v6 object:v7];
  }
}

id sub_25110C578(uint64_t a1, const char *a2)
{
  v4 = v2;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_251130BE8();
  __swift_project_value_buffer(v5, qword_27F421A38);
  v6 = sub_251130BC8();
  v7 = sub_251131198();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2510F2000, v6, v7, a2, v8, 2u);
    MEMORY[0x25306CC10](v8, -1, -1);
  }

  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  [result stop];
  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result stop];
  result = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result stop];
  v10 = *(v4 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);

  return [v10 stop];
}

uint64_t sub_25110C6EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_251130908();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2511308F8();

  a4(v10);

  return (*(v6 + 8))(v9, v5);
}

id sub_25110C7E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  v2 = [v1 mainMixerNode];
  v3 = [v2 outputFormatForBus_];

  v4 = [v3 channelCount];
  v5 = [v1 mainMixerNode];
  v6 = [v5 outputFormatForBus_];

  [v6 sampleRate];
  v8 = v7;

  if (v4 >= 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v9 = 9109510;
        goto LABEL_17;
      }

      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v9 = 7274504;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v9 = 9175047;
LABEL_17:
      result = [objc_allocWithZone(MEMORY[0x277CB8368]) initWithLayoutTag_];
      if (result)
      {
        v12 = result;
        v13 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:result channelLayout:v8];

        result = v13;
        v11 = 3;
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 == 5)
        {
          v9 = 7733253;
          goto LABEL_17;
        }

LABEL_14:
        v9 = 6619138;
        goto LABEL_17;
      }

      v9 = 7077892;
      goto LABEL_17;
    }
  }

  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:2 channels:v8];
  if (result)
  {
    v11 = 0;
LABEL_19:
    *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_renderAlgo) = v11;
    return result;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25110C9D8(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  v38 = a1;
  v39 = a3;
  v37 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6F0, &unk_251134060);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v36 - v17;
  if (*(v4 + 32))
  {

    sub_251130C08();

    v19 = *(v4 + 32);
    *(v4 + 32) = 0;
  }

  sub_2510FE944(0, &qword_27F41E6A0, 0x277CBEBB8);
  v20 = [objc_opt_self() mainRunLoop];
  v21 = *MEMORY[0x277CBE640];
  v22 = sub_251131248();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_251131228();

  sub_251103084(v14, &qword_27F41E4B0, &unk_251133520);
  v41 = v23;
  sub_251131218();
  sub_25110D874(&qword_27F41E6A8, MEMORY[0x277CC9DF0]);
  v24 = sub_251130C48();

  v40 = *(v4 + 24);
  v25 = v40;
  v41 = v24;
  v26 = sub_2511311C8();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640);
  sub_25110D944();
  sub_251130DD8();
  sub_251103084(v10, &qword_27F41E6E8, &unk_251134050);

  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 16) = v38;
  *(v28 + 24) = a4;
  *(v28 + 32) = v5;
  *(v28 + 40) = v29;
  *(v28 + 48) = v39;
  sub_2510F6658(&qword_27F41E700, &qword_27F41E6F0, &unk_251134060);
  v31 = v30;

  v32 = v36;
  v33 = sub_251130E08();

  (*(v15 + 8))(v18, v32);
  v34 = *(v5 + 32);
  *(v5 + 32) = v33;
}

id sub_25110CE78(int a1, id a2, float a3, uint64_t a4, void (*a5)(id))
{
  v9 = [a2 volume];
  if (v10 == a3)
  {
    if (*(a4 + 32))
    {
      v11 = *(a4 + 32);

      sub_251130C08();

      v12 = *(a4 + 32);
      *(a4 + 32) = 0;
    }

    a5(v9);
  }

  [a2 volume];
  v14 = v13;
  [a2 volume];
  v16 = *&v15 + -0.05;
  if ((*&v15 + -0.05) <= a3)
  {
    v16 = a3;
  }

  *&v15 = *&v15 + 0.05;
  if (*&v15 > a3)
  {
    *&v15 = a3;
  }

  if (v14 >= a3)
  {
    *&v15 = v16;
  }

  return [a2 setVolume_];
}

void sub_25110CF7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 8);
  v2 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v4 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 32);

  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);
}

uint64_t sub_25110D030()
{
  v0 = sub_2510F4B98();
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  v2 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 32);

  v6 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGCustomizedAudioPlayer()
{
  result = qword_27F41E6D8;
  if (!qword_27F41E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25110D1F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25110D264(uint64_t a1, void *a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode;
  if (!*(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode))
  {
    goto LABEL_25;
  }

  v5 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  if ([v5 isRunning])
  {
    goto LABEL_24;
  }

  v56 = a2;
  v6 = *(a1 + v2);
  if (!v6)
  {

    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = [v5 mainMixerNode];
  v9 = sub_25110C7E0();
  [v5 connect:v7 to:v8 format:v9];

  v10 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
  v11 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!v11)
  {
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  v12 = *(a1 + v2);
  if (!v12)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v13 = a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
  v14 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  if (!v14)
  {
LABEL_32:

    __break(1u);
    goto LABEL_33;
  }

  v15 = v11;
  v16 = v12;
  v17 = [v14 format];
  [v5 connect:v15 to:v16 format:v17];

  v18 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
  v19 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!v19)
  {
LABEL_33:

    __break(1u);
    goto LABEL_34;
  }

  v20 = *(a1 + v2);
  if (!v20)
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v21 = *(v13 + 16);
  if (!v21)
  {
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v22 = v19;
  v23 = v20;
  v24 = [v21 format];
  [v5 connect:v22 to:v23 format:v24];

  v25 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v26 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!v26)
  {
LABEL_36:

    __break(1u);
    goto LABEL_37;
  }

  v27 = v26;
  v28 = [v5 mainMixerNode];
  v29 = *(v13 + 32);
  if (!v29)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v30 = v28;
  v31 = [*(v13 + 32) format];
  [v5 connect:v27 to:v30 format:v31];

  v32 = *(a1 + v10);
  if (!v32)
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  [v32 setRenderingAlgorithm_];
  v34 = *(a1 + v10);
  if (!v34)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  LODWORD(v33) = 1050253722;
  [v34 setReverbBlend_];
  v35 = *(a1 + v2);
  if (!v35)
  {
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  [v35 setListenerPosition_];
  v36 = *(a1 + v18);
  if (v36)
  {
    [v36 setPosition_];
    v37 = *(a1 + v25);
    if (v37)
    {
      v38 = v29;
      v39 = v37;
      [v39 stop];
      [v39 scheduleBuffer:v38 atTime:0 options:1 completionHandler:0];
      [v39 setVolume_];
    }

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v40 = sub_251130BE8();
    __swift_project_value_buffer(v40, qword_27F421A38);
    v41 = sub_251130BC8();
    v42 = sub_251131168();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2510F2000, v41, v42, "[HGAudioPlayer] Starting the audio engine", v43, 2u);
      MEMORY[0x25306CC10](v43, -1, -1);
    }

    [v5 prepare];
    v57[0] = 0;
    if (![v5 startAndReturnError_])
    {
      v46 = v57[0];
      v47 = sub_251130978();

      swift_willThrow();
      v48 = v47;
      v49 = sub_251130BC8();
      v50 = sub_251131188();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57[0] = v52;
        *v51 = 136315138;
        swift_getErrorValue();
        v53 = sub_251131548();
        v55 = sub_2510FAC50(v53, v54, v57);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_2510F2000, v49, v50, "[HGAudioPlayer] Unable to start the AudioEngine: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x25306CC10](v52, -1, -1);
        MEMORY[0x25306CC10](v51, -1, -1);
      }

      else
      {
      }

      goto LABEL_25;
    }

    v44 = v57[0];
    a2 = v56;
LABEL_24:
    [a2 play];
LABEL_25:
    v45 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_41:

  __break(1u);
}

uint64_t sub_25110D874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25110D8BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25110D8F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25110D944()
{
  result = qword_27F41E6F8;
  if (!qword_27F41E6F8)
  {
    sub_2510FE944(255, &qword_27F41E0F0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E6F8);
  }

  return result;
}

uint64_t sub_25110D9AC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *sub_25110DA2C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  sub_25110DA80(a1, __src);
  nullsub_1(__src);
  return memcpy(a2, __src, 0x131uLL);
}

uint64_t sub_25110DA80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_2510F731C(v159);
  LOBYTE(v160) = 1;
  v6 = *(a1 + 13);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  v162 = a1[2];
  v163 = v9;
  v160 = v7;
  v161 = v8;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  *(v166 + 9) = *(a1 + 105);
  v165 = v11;
  v166[0] = v12;
  v164 = v10;
  nullsub_1(&v160);
  *&v153[71] = v164;
  *&v153[87] = v165;
  *&v153[103] = v166[0];
  *&v153[112] = *(v166 + 9);
  *&v153[7] = v160;
  *&v153[23] = v161;
  *&v153[39] = v162;
  v144 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 24)), *(a1 + 40));
  *&v153[55] = v163;
  swift_beginAccess();
  v17 = *(v2 + 344);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v149 = MEMORY[0x277D84F90];

    sub_25111B984(0, v18, 0);
    v19 = v149;
    v20 = v149[1].u64[0];
    v21 = 48;
    do
    {
      v22 = *(v17 + v21);
      v23 = v149[1].u64[1];
      if (v20 >= v23 >> 1)
      {
        v140 = *(v17 + v21);
        sub_25111B984((v23 > 1), v20 + 1, 1);
        v22 = v140;
      }

      v149[1].i64[0] = v20 + 1;
      v149[v20 + 2] = v22;
      v21 += 32;
      ++v20;
      --v18;
    }

    while (v18);
  }

  sub_251117CBC(v19, v13, v14, v15, v16);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30.i64[0] = v25;
  v30.i64[1] = v27;
  if (v29)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  v32 = vmulq_f32(vbslq_s8(vdupq_n_s32(v31), v144, v30), xmmword_251133650);
  v33 = vnegq_f32(v144);
  v34 = vtrn2q_s32(v144, vtrn1q_s32(v144, v33));
  v35 = vrev64q_s32(v144);
  v35.i32[0] = v33.i32[1];
  v35.i32[3] = v33.i32[2];
  v36 = sub_25111807C(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v144, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v144, v32, 3), v35, v32, 2)));
  v38 = v37;
  v40 = v39;
  if (*(v3 + 368))
  {
    swift_beginAccess();
    v41 = *(v3 + 344);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 344) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_25110971C(0, *(v41 + 2) + 1, 1, v41);
      *(v3 + 344) = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v41 = sub_25110971C((v43 > 1), v44 + 1, 1, v41);
    }

    *(v41 + 2) = v45;
    v46 = &v41[32 * v44];
    *(v46 + 4) = v6;
    *(v46 + 3) = v144;
    *(v3 + 344) = v41;
    swift_endAccess();

    v47 = (v41 + 48);
    v48 = MEMORY[0x277D84F90];
    do
    {
      v52 = *(v47 - 2);
      if (v6 + -1.0 <= v52)
      {
        v145 = *v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25111B964(0, *(v48 + 16) + 1, 1);
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_25111B964((v49 > 1), v50 + 1, 1);
        }

        *(v48 + 16) = v50 + 1;
        v51 = v48 + 32 * v50;
        *(v51 + 32) = v52;
        *(v51 + 48) = v145;
      }

      v47 += 4;
      --v45;
    }

    while (v45);

    v53 = *(v3 + 344);
    *(v3 + 344) = v48;
  }

  v54 = *(a1 + 7);
  v55 = *(a1 + 8);
  v56 = *(a1 + 9);
  v57 = *(a1 + 10);
  v58 = *(a1 + 11);
  v139 = *(a1 + 12);
  v59 = *(v3 + 352);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 352) = v59;
  if ((v60 & 1) == 0)
  {
    v59 = sub_251109618(0, *(v59 + 2) + 1, 1, v59);
    *(v3 + 352) = v59;
  }

  v62 = *(v59 + 2);
  v61 = *(v59 + 3);
  v63 = v62 + 1;
  if (v62 >= v61 >> 1)
  {
    v59 = sub_251109618((v61 > 1), v62 + 1, 1, v59);
  }

  *(v59 + 2) = v63;
  v64 = &v59[32 * v62];
  *(v64 + 4) = v6;
  *(v64 + 5) = v54;
  *(v64 + 6) = v55;
  *(v64 + 7) = v56;
  *(v3 + 352) = v59;

  v65 = (v59 + 48);
  v66 = MEMORY[0x277D84F90];
  do
  {
    if (v6 + -0.1 <= *(v65 - 2))
    {
      v146 = *(v65 - 1);
      v141 = *v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25111B944(0, *(v66 + 16) + 1, 1);
      }

      v68 = *(v66 + 16);
      v67 = *(v66 + 24);
      v69 = v146;
      if (v68 >= v67 >> 1)
      {
        sub_25111B944((v67 > 1), v68 + 1, 1);
        v69 = v146;
      }

      *(v66 + 16) = v68 + 1;
      v70 = v66 + 32 * v68;
      *(v70 + 32) = v69;
      *(v70 + 48) = v141;
    }

    v65 += 4;
    --v63;
  }

  while (v63);

  v71 = *(v3 + 352);
  *(v3 + 352) = v66;

  v73 = *(v3 + 352);
  v74 = *(v73 + 16);
  v75 = MEMORY[0x277D84F90];
  if (v74)
  {
    v142 = v58;
    v147 = v57;
    v150 = MEMORY[0x277D84F90];

    sub_25111B924(0, v74, 0);
    v76 = v150;
    v77 = *(v150 + 16);
    v78 = 40;
    do
    {
      v79 = *(v73 + v78);
      v80 = *(v150 + 24);
      if (v77 >= v80 >> 1)
      {
        sub_25111B924((v80 > 1), v77 + 1, 1);
      }

      *(v150 + 16) = v77 + 1;
      *(v150 + 8 * v77 + 32) = v79;
      v78 += 32;
      ++v77;
      --v74;
    }

    while (v74);

    v81 = *(v3 + 352);
    v82 = *(v81 + 16);
    v75 = MEMORY[0x277D84F90];
    if (v82)
    {
      v137 = a2;
      v151 = MEMORY[0x277D84F90];

      sub_25111B924(0, v82, 0);
      v75 = v151;
      v83 = *(v151 + 16);
      v84 = 48;
      do
      {
        v85 = *(v81 + v84);
        v86 = *(v151 + 24);
        if (v83 >= v86 >> 1)
        {
          sub_25111B924((v86 > 1), v83 + 1, 1);
        }

        *(v151 + 16) = v83 + 1;
        *(v151 + 8 * v83 + 32) = v85;
        v84 += 32;
        ++v83;
        --v82;
      }

      while (v82);

      v87 = *(v3 + 352);
      v88 = *(v87 + 16);
      v89 = MEMORY[0x277D84F90];
      if (v88)
      {
        v152 = MEMORY[0x277D84F90];

        sub_25111B924(0, v88, 0);
        v89 = v152;
        v90 = *(v152 + 16);
        v91 = 56;
        do
        {
          v92 = *(v87 + v91);
          v93 = *(v152 + 24);
          if (v90 >= v93 >> 1)
          {
            sub_25111B924((v93 > 1), v90 + 1, 1);
          }

          *(v152 + 16) = v90 + 1;
          *(v152 + 8 * v90 + 32) = v92;
          v91 += 32;
          ++v90;
          --v88;
        }

        while (v88);
      }

      a2 = v137;
    }

    else
    {
      v89 = MEMORY[0x277D84F90];
    }

    v57 = v147;
    v58 = v142;
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
  }

  v148 = v56;
  v94 = *(v76 + 16);
  if (v94)
  {
    v95 = *(v76 + 32);
    v96 = v95;
    v97 = v94 - 1;
    if (v94 != 1)
    {
      v98 = (v76 + 40);
      v96 = *(v76 + 32);
      do
      {
        v99 = *v98++;
        v100 = v99;
        if (v99 < v96)
        {
          v96 = v100;
        }

        --v97;
      }

      while (v97);
    }

    v138 = v55;
    v143 = v54;
    v101 = *(v75 + 16);
    if (!v101)
    {
      goto LABEL_96;
    }

    v102 = *(v75 + 32);
    v103 = v102;
    v104 = v101 - 1;
    if (v101 != 1)
    {
      v105 = (v75 + 40);
      v103 = *(v75 + 32);
      do
      {
        v106 = *v105++;
        v107 = v106;
        if (v106 < v103)
        {
          v103 = v107;
        }

        --v104;
      }

      while (v104);
    }

    v135 = v40;
    v136 = v38;
    v108 = *(v89 + 16);
    if (!v108)
    {
      goto LABEL_97;
    }

    v109 = *(v89 + 32);
    v110 = v109;
    v111 = v108 - 1;
    if (v108 != 1)
    {
      v112 = (v89 + 40);
      v110 = *(v89 + 32);
      do
      {
        v113 = *v112++;
        v114 = v113;
        if (v113 < v110)
        {
          v110 = v114;
        }

        --v111;
      }

      while (v111);
    }

    v115 = v94 - 1;
    if (v115)
    {
      v116 = (v76 + 40);
      do
      {
        v117 = *v116++;
        v118 = v117;
        if (v95 < v117)
        {
          v95 = v118;
        }

        --v115;
      }

      while (v115);
    }

    v119 = v101 - 1;
    if (v101 != 1)
    {
      v120 = (v75 + 40);
      do
      {
        v121 = *v120++;
        v122 = v121;
        if (v102 < v121)
        {
          v102 = v122;
        }

        --v119;
      }

      while (v119);
    }

    v123 = v108 - 1;
    if (v108 != 1)
    {
      v124 = (v89 + 40);
      do
      {
        v125 = *v124++;
        v126 = v125;
        if (v109 < v125)
        {
          v109 = v126;
        }

        --v123;
      }

      while (v123);
    }

    sub_251128950(32, v6);
    v127 = *(v3 + 360);
    v128 = *(v127 + 16);
    if (v128 != 32)
    {

      v129 = 0.0;
LABEL_93:
      *(v3 + 105) = *&v153[64];
      *(v3 + 121) = *&v153[80];
      *(v3 + 137) = *&v153[96];
      *(v3 + 153) = *&v153[112];
      *(v3 + 41) = *v153;
      *(v3 + 57) = *&v153[16];
      *(v3 + 73) = *&v153[32];
      *(v3 + 89) = *&v153[48];
      *(v3 + 32) = v6;
      *a2 = v6;
      *(a2 + 57) = *&v153[48];
      *(a2 + 41) = *&v153[32];
      *(a2 + 25) = *&v153[16];
      *(a2 + 9) = *v153;
      *(a2 + 121) = *&v153[112];
      *(a2 + 105) = *&v153[96];
      *(v3 + 40) = 0;
      *(v3 + 172) = *&v158[3];
      *(v3 + 169) = *v158;
      *(v3 + 176) = v36;
      *(v3 + 184) = v136;
      *(v3 + 192) = v135;
      *(v3 + 200) = 0;
      *(v3 + 204) = *&v157[3];
      *(v3 + 201) = *v157;
      *(v3 + 208) = v143;
      *(v3 + 216) = v138;
      *(v3 + 224) = v148;
      *(v3 + 232) = 0;
      *(v3 + 236) = *&v156[3];
      *(v3 + 233) = *v156;
      *(v3 + 240) = v57;
      *(v3 + 248) = v58;
      result = v139;
      *(v3 + 256) = v139;
      *(v3 + 264) = 0;
      *(v3 + 265) = *v155;
      *(v3 + 268) = *&v155[3];
      *(v3 + 272) = v96;
      *(v3 + 280) = v103;
      *(v3 + 288) = v110;
      *(v3 + 296) = v95;
      *(v3 + 304) = v102;
      *(v3 + 312) = v109;
      *(v3 + 320) = 0;
      *(v3 + 324) = *&v154[3];
      *(v3 + 321) = *v154;
      *(v3 + 328) = v129;
      *(v3 + 336) = v128 != 32;
      *(a2 + 8) = 0;
      *(a2 + 89) = *&v153[80];
      *(a2 + 73) = *&v153[64];
      *(a2 + 140) = *&v158[3];
      *(a2 + 137) = *v158;
      *(a2 + 144) = v36;
      *(a2 + 152) = v136;
      *(a2 + 160) = v135;
      *(a2 + 168) = 0;
      *(a2 + 172) = *&v157[3];
      *(a2 + 169) = *v157;
      *(a2 + 176) = v143;
      *(a2 + 184) = v138;
      *(a2 + 192) = v148;
      *(a2 + 200) = 0;
      *(a2 + 204) = *&v156[3];
      *(a2 + 201) = *v156;
      *(a2 + 208) = v57;
      *(a2 + 216) = v58;
      *(a2 + 224) = v139;
      *(a2 + 232) = 0;
      *(a2 + 236) = *&v155[3];
      *(a2 + 233) = *v155;
      *(a2 + 240) = v96;
      *(a2 + 248) = v103;
      *(a2 + 256) = v110;
      *(a2 + 264) = v95;
      *(a2 + 272) = v102;
      *(a2 + 280) = v109;
      *(a2 + 288) = 0;
      *(a2 + 292) = *&v154[3];
      *(a2 + 289) = *v154;
      *(a2 + 296) = v129;
      *(a2 + 304) = v128 != 32;
      return result;
    }

    v134 = *(v127 + 32);

    if (*(v127 + 16) >= 0x20uLL)
    {
      v133 = v36;
      v130 = v6;
      v131 = *(v127 + 280);

      v132 = v131 - v134;
      v6 = v130;
      v36 = v133;
      v129 = *(*(v3 + 360) + 16) / v132;
      goto LABEL_93;
    }

    __break(1u);
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_25110E594()
{
  v1 = v0[43];

  v2 = v0[44];

  v3 = v0[45];

  return swift_deallocClassInstance();
}

uint64_t sub_25110E600()
{
  *(v0 + 16) = xmmword_251133660;
  sub_2510F731C(v4);
  *&v3[71] = v4[4];
  *&v3[87] = v4[5];
  *&v3[103] = v5[0];
  *&v3[112] = *(v5 + 9);
  *&v3[7] = v4[0];
  *&v3[23] = v4[1];
  *&v3[39] = v4[2];
  *&v3[55] = v4[3];
  *(v0 + 105) = *&v3[64];
  *(v0 + 121) = *&v3[80];
  *(v0 + 137) = *&v3[96];
  *(v0 + 153) = *&v3[112];
  *(v0 + 41) = *v3;
  *(v0 + 57) = *&v3[16];
  *(v0 + 73) = *&v3[32];
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 89) = *&v3[48];
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 320) = 1;
  *(v0 + 328) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 336) = 1;
  *(v0 + 344) = v1;
  *(v0 + 352) = v1;
  *(v0 + 360) = v1;
  *(v0 + 368) = 1;
  return v0;
}

uint64_t getEnumTagSinglePayload for HGError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HGError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25110E8B0()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

uint64_t sub_25110E924()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

unint64_t sub_25110E97C()
{
  result = qword_27F41E708;
  if (!qword_27F41E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E708);
  }

  return result;
}

uint64_t sub_25110E9D0()
{
  v1 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  [*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle) closeFile];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding;
  v4 = sub_251130F58();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_251106114(*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData), *(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData + 8));
  sub_251106114(*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer), *(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer + 8));
  return v0;
}

uint64_t sub_25110EA8C()
{
  sub_25110E9D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25110EB0C()
{
  result = sub_251130F58();
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

void *sub_25110EBC8()
{
  v1 = v0;
  v2 = sub_251130F58();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  if (*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle))
  {
    if ((*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof) & 1) == 0)
    {
      v38 = OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof;
      v39 = v6;
      v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = v4;
      v8 = (v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer);
      v9 = *(v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData);
      v10 = *(v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData + 8);
      swift_beginAccess();
      while (1)
      {
        v11 = *v8;
        v12 = v8[1];
        sub_251106058(*v8, v12);
        v13 = sub_251130A58();
        v15 = v14;
        v17 = v16;
        result = sub_251106114(v11, v12);
        if ((v17 & 1) == 0)
        {
          if (v13 < 0)
          {
            __break(1u);
          }

          else
          {
            v32 = *v8;
            v31 = v8[1];
            sub_251106058(*v8, v31);
            v33 = sub_251130A78();
            v35 = v34;
            sub_251106114(v32, v31);
            (*(v39 + 16))(v40, v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v41);
            v36 = sub_251130F38();
            result = sub_251106114(v33, v35);
            if ((v15 & 0x8000000000000000) == 0)
            {
              swift_beginAccess();
              sub_251130A18();
              swift_endAccess();
              return v36;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }

        result = *(v1 + v7);
        if (!result)
        {
          goto LABEL_34;
        }

        v19 = [result readDataOfLength_];
        v20 = sub_251130A48();
        v22 = v21;

        v23 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v23 != 2 || *(v20 + 16) == *(v20 + 24))
          {
LABEL_14:
            *(v1 + v38) = 1;
            v24 = *v8;
            v25 = v8[1];
            v26 = v25 >> 62;
            if ((v25 >> 62) <= 1)
            {
              if (v26)
              {
                if (v24 == v24 >> 32)
                {
                  goto LABEL_30;
                }
              }

              else if ((v25 & 0xFF000000000000) == 0)
              {
                goto LABEL_30;
              }

LABEL_28:
              (*(v39 + 16))(v40, v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v41);
              sub_251106058(v24, v25);
              v37 = sub_251130F38();
              sub_251106114(v24, v25);
              swift_beginAccess();
              sub_251130A28();
              swift_endAccess();
              sub_251106114(v20, v22);
              return v37;
            }

            if (v26 == 2 && *(v24 + 16) != *(v24 + 24))
            {
              goto LABEL_28;
            }

LABEL_30:
            sub_251106114(v20, v22);
            return 0;
          }
        }

        else if (v23)
        {
          if (v20 == v20 >> 32)
          {
            goto LABEL_14;
          }
        }

        else if ((v22 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        swift_beginAccess();
        sub_251130A68();
        swift_endAccess();
        sub_251106114(v20, v22);
      }
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v27 = sub_251130BE8();
    __swift_project_value_buffer(v27, qword_27F421A38);
    v28 = sub_251130BC8();
    v29 = sub_251131188();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2510F2000, v28, v29, "HGFileDataReading error, Attempt to read from closed file", v30, 2u);
      MEMORY[0x25306CC10](v30, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_25110F05C()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251130E38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_readingQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_25110F930;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_3;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_251130E28();
  v16[1] = MEMORY[0x277D84F90];
  sub_25110F950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_25110F9A8();
  sub_2511312A8();
  MEMORY[0x25306C010](0, v10, v5, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_25110F2CC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader))
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader);

    for (i = sub_25110EBC8(); v4; i = sub_25110EBC8())
    {
      sub_2511129C4(i, v4, &v14);
      v21[4] = v18;
      v21[5] = v19;
      v22[0] = v20[0];
      *(v22 + 9) = *(v20 + 9);
      v21[0] = v14;
      v21[1] = v15;
      v21[2] = v16;
      v21[3] = v17;
      if (sub_2510F7300(v21) != 1)
      {
        v5 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject);
        sub_251130C28();
        v6 = (v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
        v7 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
        v23[4] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
        v23[5] = v7;
        v24[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
        *(v24 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
        v8 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
        v23[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
        v23[1] = v8;
        v9 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
        v23[2] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
        v23[3] = v9;
        *(v6 + 105) = *(v20 + 9);
        v10 = v20[0];
        v6[5] = v19;
        v6[6] = v10;
        v11 = v18;
        v6[3] = v17;
        v6[4] = v11;
        v12 = v16;
        v6[1] = v15;
        v6[2] = v12;
        *v6 = v14;
        sub_2511082D0(v23);
      }
    }

    v13 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject);
    sub_251130C18();
  }

  return result;
}

void sub_25110F454()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
    v3 = *(v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle);

    [v3 closeFile];
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

uint64_t sub_25110F4F0()
{
  v1 = sub_251130F58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v0;
  v6 = *(v0 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_fileHandle);
  sub_251130F48();
  v7 = type metadata accessor for StreamReader(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  *(v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle) = 0;
  v12 = v6;
  v13 = sub_251130F28();
  if (v14 >> 60 == 15)
  {
    (*(v2 + 8))(v5, v1);

    v15 = *(*v10 + 48);
    v16 = *(*v10 + 52);
    swift_deallocPartialClassInstance();
    v10 = 0;
  }

  else
  {
    v17 = v13;
    v18 = v14;
    v19 = *(v10 + v11);
    *(v10 + v11) = v12;
    v20 = v12;

    v21 = (v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData);
    *v21 = v17;
    v21[1] = v18;
    (*(v2 + 16))(v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v5, v1);
    *(v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_chunkSize) = 1024;
    v22 = sub_251130958();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_251130948();

    (*(v2 + 8))(v5, v1);
    v26 = (v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer);
    *v26 = 0;
    v26[1] = v25 | 0x4000000000000000;
    *(v10 + OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof) = 0;
  }

  v27 = *(v30 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader);
  *(v30 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader) = v10;
}

uint64_t sub_25110F798()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader);
}

id sub_25110F7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGFileDataProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25110F8F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25110F950()
{
  result = qword_27F41E080;
  if (!qword_27F41E080)
  {
    sub_251130E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E080);
  }

  return result;
}

unint64_t sub_25110F9A8()
{
  result = qword_27F41E090;
  if (!qword_27F41E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F41E088, &qword_251132A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E090);
  }

  return result;
}

uint64_t sub_25110FA0C(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E748, &qword_2511338E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E750, &qword_2511338E8);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = sub_251130B38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(HGHeadGestureResult) init];
  [v16 setHeadGesture_];
  [v16 setHeadGesturePart_];
  sub_251130B08();
  v17 = sub_251130AA8();
  (*(v12 + 8))(v15, v11);
  [v16 setTimestamp_];

  v26 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E758, &qword_2511338F0);
  sub_251111078();
  sub_2510F6658(&qword_27F41E760, &qword_27F41E758, &qword_2511338F0);
  sub_251130CE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E768, &qword_2511338F8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_251133860;
  *(v18 + 32) = v16;
  sub_2510F6658(&qword_27F41E770, &qword_27F41E748, &qword_2511338E0);
  v19 = v16;
  sub_251130DC8();

  (*(v2 + 8))(v5, v1);
  sub_2510F6658(&qword_27F41E778, &qword_27F41E750, &qword_2511338E8);
  v20 = v24;
  v21 = sub_251130CD8();

  (*(v25 + 8))(v10, v20);
  return v21;
}

id sub_25110FDFC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v133 = sub_251130B88();
  v132 = *(v133 - 8);
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251130B38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v137 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v131 - v12;
  MEMORY[0x28223BE20](v11);
  v144 = &v131 - v13;
  sub_251130B08();
  v14 = 1.0 / *(v1 + OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_partialGestureCountTarget);
  v15 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  swift_beginAccess();
  v16 = *(v15 + v1);
  v17 = *(v16 + 64);
  v146 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_lastGesturePartRecognizedAt;

  v141 = v21;
  swift_beginAccess();
  v22 = 0;
  v23 = (v18 + 63) >> 6;
  v136 = (v7 + 16);
  v134 = v7;
  v143 = (v7 + 8);
  v140 = v15;
  v145 = v23;
  v135 = v6;
  v138 = v2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v20)
        {
          while (1)
          {
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
              goto LABEL_82;
            }

            if (v24 >= v23)
            {
              break;
            }

            v20 = *(v146 + 8 * v24);
            ++v22;
            if (v20)
            {
              v22 = v24;
              goto LABEL_11;
            }
          }

          if (qword_27F41DFB0 != -1)
          {
            goto LABEL_91;
          }

          goto LABEL_63;
        }

LABEL_11:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = *(*(v16 + 48) + (v25 | (v22 << 6)));
        v27 = *(v2 + 16);
        LODWORD(v147) = v26;
        if (v27 == 5)
        {
          break;
        }

        v142 = v27;
        v28 = v2 + v141;
        v29 = v139;
        (*v136)(v139, v28, v6);
        v30 = v16;
        v31 = v137;
        sub_251130AD8();
        v32 = sub_251130AB8();
        v33 = *v143;
        v34 = v31;
        v16 = v30;
        (*v143)(v34, v6);
        v35 = v29;
        v2 = v138;
        v33(v35, v6);
        v26 = v147;
        v15 = v140;
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (v147 == 1)
        {
          if (byte_2863315A8 != v3 && byte_2863315A9 != v3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v147 != 2)
          {
            goto LABEL_38;
          }

          if (byte_2863315D0 != v3 && byte_2863315D1 != v3)
          {
            goto LABEL_26;
          }
        }

        if (v142 == v3)
        {
          break;
        }

        v68 = *(v140 + v2);
        if (!*(v68 + 16))
        {
          goto LABEL_93;
        }

        v69 = sub_25112F9FC(v147);
        if ((v70 & 1) == 0)
        {
          goto LABEL_94;
        }

        v71 = *(v68 + 56);
        if (v14 + *(v71 + 8 * v69) <= 1.0)
        {
          v72 = v14 + *(v71 + 8 * v69);
        }

        else
        {
          v72 = 1.0;
        }

        swift_beginAccess();
        v73 = *(v15 + v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = *(v15 + v2);
        *(v15 + v2) = 0x8000000000000000;
        sub_2510FB4A0(v26, isUniquelyReferenced_nonNull_native, v72);
        *(v15 + v2) = v148;
        swift_endAccess();
        v23 = v145;
      }

      if (v26 != 1)
      {
        if (v26 != 2)
        {
          break;
        }

LABEL_26:
        v37 = &byte_286331620;
        goto LABEL_28;
      }

LABEL_27:
      v37 = &byte_2863315F8;
LABEL_28:
      v38 = *v37;
      v39 = v37[1];
      if (v38 != v3 && v39 != v3)
      {
        break;
      }

      swift_beginAccess();
      v41 = *(v15 + v2);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v148 = *(v15 + v2);
      v43 = v148;
      v6 = v2;
      *(v15 + v2) = 0x8000000000000000;
      v2 = sub_25112F9FC(v26);
      v45 = *(v43 + 2);
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_90;
      }

      v48 = v44;
      if (*(v43 + 3) < v47)
      {
        sub_2511276A8(v47, v42);
        v49 = sub_25112F9FC(v147);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_95;
        }

        v2 = v49;
        goto LABEL_37;
      }

      v23 = v145;
      if ((v42 & 1) == 0)
      {
        sub_251128424();
LABEL_37:
        v23 = v145;
      }

      v65 = v148;
      if (v48)
      {
        *(*(v148 + 7) + 8 * v2) = v14;
      }

      else
      {
        *(v148 + (v2 >> 6) + 8) |= 1 << v2;
        *(*(v65 + 6) + v2) = v147;
        *(*(v65 + 7) + 8 * v2) = v14;
        v66 = *(v65 + 2);
        v58 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v58)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          result = sub_251131538();
          __break(1u);
          return result;
        }

        *(v65 + 2) = v67;
      }

      v2 = v6;
      *(v15 + v6) = v65;
      swift_endAccess();
      v6 = v135;
    }

LABEL_38:
    swift_beginAccess();
    v51 = *(v15 + v2);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v15 + v2);
    v53 = v148;
    *(v15 + v2) = 0x8000000000000000;
    v54 = sub_25112F9FC(v26);
    v56 = *(v53 + 2);
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      break;
    }

    v60 = v55;
    if (*(v53 + 3) >= v59)
    {
      v23 = v145;
      if (v52)
      {
        v62 = v148;
        if (v55)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v75 = v54;
        sub_251128424();
        v23 = v145;
        v54 = v75;
        v62 = v148;
        if (v60)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2511276A8(v59, v52);
      v54 = sub_25112F9FC(v147);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_95;
      }

      v23 = v145;
      v62 = v148;
      if (v60)
      {
LABEL_4:
        *(*(v62 + 7) + 8 * v54) = 0;
        goto LABEL_5;
      }
    }

    *(v62 + (v54 >> 6) + 8) |= 1 << v54;
    *(*(v62 + 6) + v54) = v147;
    *(*(v62 + 7) + 8 * v54) = 0;
    v63 = *(v62 + 2);
    v58 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v58)
    {
      goto LABEL_89;
    }

    *(v62 + 2) = v64;
LABEL_5:
    *(v15 + v2) = v62;
    swift_endAccess();
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_63:
  v76 = sub_251130BE8();
  v77 = __swift_project_value_buffer(v76, qword_27F421A38);

  v78 = sub_251130BC8();
  v79 = sub_251131178();

  v80 = os_log_type_enabled(v78, v79);
  v81 = v143;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v147 = v77;
    v83 = v82;
    v84 = swift_slowAlloc();
    v149[0] = v84;
    *v83 = 136315138;
    v85 = *(v15 + v2);
    sub_251110FF8();
    v86 = v2;

    v87 = sub_251130E98();
    v88 = v3;
    v90 = v89;

    v91 = v87;
    v2 = v86;
    v92 = sub_2510FAC50(v91, v90, v149);
    v3 = v88;
    v15 = v140;

    *(v83 + 4) = v92;
    _os_log_impl(&dword_2510F2000, v78, v79, "[HE] updated progress: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    v93 = v84;
    v81 = v143;
    MEMORY[0x25306CC10](v93, -1, -1);
    MEMORY[0x25306CC10](v83, -1, -1);
  }

  *(v2 + 16) = v3;
  v94 = v141;
  swift_beginAccess();
  (*(v134 + 24))(v2 + v94, v144, v6);
  swift_endAccess();
  v95 = 0;
  v96 = *(v15 + v2);
  v97 = 1 << *(v96 + 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & *(v96 + 64);
  v100 = (v97 + 63) >> 6;
  do
  {
    if (!v99)
    {
      while (1)
      {
        v101 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        if (v101 >= v100)
        {
          v114 = *v81;
          v115 = *(v15 + v2);

          v114(v144, v6);

          return 0;
        }

        v99 = *(v96 + 64 + 8 * v101);
        ++v95;
        if (v99)
        {
          v95 = v101;
          goto LABEL_74;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

    v101 = v95;
LABEL_74:
    v102 = __clz(__rbit64(v99));
    v99 &= v99 - 1;
    v103 = v102 | (v101 << 6);
  }

  while (*(*(v96 + 56) + 8 * v103) <= 0.99);
  v104 = *(*(v96 + 48) + v103);
  v105 = objc_allocWithZone(HGHeadGestureResult);

  v106 = [v105 init];
  [v106 setHeadGesture_];
  [v106 setHeadGesturePart_];
  v107 = sub_251130AA8();
  [v106 setTimestamp_];

  v108 = v106;
  v16 = sub_251130BC8();
  v109 = sub_251131178();
  v147 = v108;

  if (os_log_type_enabled(v16, v109))
  {
    v3 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v149[0] = v110;
    *v3 = 136315650;
    v111 = [v147 headGesture];
    LODWORD(v146) = v109;
    v145 = v110;
    v15 = v81;
    if (v111)
    {
      if (v111 == 2)
      {
LABEL_82:
        v112 = 0xE500000000000000;
        v113 = 0x656B616853;
      }

      else if (v111 == 1)
      {
        v112 = 0xE300000000000000;
        v113 = 6582094;
      }

      else
      {
        v112 = 0xE700000000000000;
        v113 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v112 = 0xEA0000000000646ELL;
      v113 = 0x756F72476B636142;
    }

    v117 = sub_2510FAC50(v113, v112, v149);

    *(v3 + 4) = v117;
    *(v3 + 12) = 2080;
    v118 = v147;
    v119 = [v147 uuid];
    v120 = v131;
    sub_251130B68();

    sub_251110FA0();
    v121 = v133;
    v122 = sub_251131508();
    v124 = v123;
    (*(v132 + 8))(v120, v121);
    v125 = sub_2510FAC50(v122, v124, v149);

    *(v3 + 14) = v125;
    *(v3 + 22) = 2048;
    v126 = [v118 timestamp];
    v127 = v139;
    sub_251130AF8();

    sub_251130AE8();
    v129 = v128;
    v81 = v15;
    v6 = v135;
    (*v15)(v127, v135);
    *(v3 + 24) = v129;
    _os_log_impl(&dword_2510F2000, v16, v146, "[HE] Heuristic final prediction: %s %s at: %f", v3, 0x20u);
    v130 = v145;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v130, -1, -1);
    MEMORY[0x25306CC10](v3, -1, -1);
  }

  sub_251110AD4();

  (*v81)(v144, v6);
  return v147;
}

uint64_t sub_251110AD4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v0 + v2) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v30 = *(v0 + v2);

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = *(*(v30 + 48) + (__clz(__rbit64(v9)) | (v11 << 6)));
    swift_beginAccess();
    v14 = *(v1 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + v2);
    *(v1 + v2) = 0x8000000000000000;
    v17 = sub_25112F9FC(v13);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_23;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_2511276A8(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_25112F9FC(v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v25 = v16;
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v28 = v17;
    sub_251128424();
    v17 = v28;
    v25 = v16;
    if (v23)
    {
LABEL_4:
      *(v25[7] + 8 * v17) = 0;
      goto LABEL_5;
    }

LABEL_17:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    *(v25[6] + v17) = v13;
    *(v25[7] + 8 * v17) = 0;
    v26 = v25[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_24;
    }

    v25[2] = v27;
LABEL_5:
    v9 &= v9 - 1;
    *(v1 + v2) = v25;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_251131538();
  __break(1u);
  return result;
}

uint64_t sub_251110CEC()
{
  v1 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_lastGesturePartRecognizedAt;
  v2 = sub_251130B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGHeuristicHeadGestureRecognizer()
{
  result = qword_27F41E730;
  if (!qword_27F41E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251110DEC()
{
  result = sub_251130B38();
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

uint64_t sub_251110EA4()
{
  *(v0 + 16) = 5;
  sub_251130A88();
  *(v0 + OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_gestureContinuationTimeout) = 0x3FE999999999999ALL;
  v1 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_partialGestureCountTarget;
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27F421A30 + 16);
  v3 = sub_251130EE8();
  [v2 doubleForKey_];
  v5 = v4;

  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  *(v0 + v6) = sub_251120B48(&unk_286331230);
  return v0;
}

unint64_t sub_251110FA0()
{
  result = qword_27F41E360;
  if (!qword_27F41E360)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E360);
  }

  return result;
}

unint64_t sub_251110FF8()
{
  result = qword_27F41E740;
  if (!qword_27F41E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E740);
  }

  return result;
}

id sub_25111104C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = sub_25110FDFC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_251111078()
{
  result = qword_27F41E348;
  if (!qword_27F41E348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E348);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2511110F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_251111144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2511111B8(double *a1, double a2)
{
  v4 = *(v3 + 104);
  v5 = a1[13] - v4;
  v6 = v5 - a2;
  if (v5 - a2 >= 1.0)
  {
    if (qword_27F41DFB0 != -1)
    {
LABEL_36:
      swift_once();
    }

    v28 = sub_251130BE8();
    __swift_project_value_buffer(v28, qword_27F421A38);
    v29 = sub_251130BC8();
    v3 = sub_251131188();
    if (os_log_type_enabled(v29, v3))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v6;
      _os_log_impl(&dword_2510F2000, v29, v3, "Timestamp gap too large: %f, going to reset the pipeline", v30, 0xCu);
      MEMORY[0x25306CC10](v30, -1, -1);
    }

    sub_2510F72AC();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
    return v3;
  }

  if (v6 <= -0.01)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = round(v6 / a2);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v2 = a1;
  v8 = v7;
  if (v7 < 1)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v9 = v3;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v10 = sub_251130BE8();
  __swift_project_value_buffer(v10, qword_27F421A38);
  v11 = sub_251130BC8();
  v12 = sub_251131168();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_2510F2000, v11, v12, "Intepolation required, adding %ld data points in between", v13, 0xCu);
    MEMORY[0x25306CC10](v13, -1, -1);
  }

  if (qword_27F41DFA0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F421A00;
  v15 = type metadata accessor for HGCoreAnalyticsManager.HGCAInterpolatedDataEvent(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAInterpolatedDataEvent_intepolationAmount) = v8;
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v18);
  if (*((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v55 = *((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_251131078();
  }

  sub_251131098();
  swift_endAccess();

  v20 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v6 = *v9;
    v21 = *v2 - *v9;
    v54 = *(v9 + 8);
    v50 = vsubq_f64(*(v2 + 1), v54);
    v53 = *(v9 + 24);
    v52 = *(v9 + 40);
    v48 = vsubq_f64(v52, v52);
    v49 = vsubq_f64(v53, v53);
    v46 = vsubq_f64(*(v2 + 7), *(v9 + 56));
    v47 = *(v9 + 56);
    v44 = *(v9 + 88);
    v45 = *(v9 + 72);
    v42 = vsubq_f64(*(v2 + 11), v44);
    v43 = vsubq_f64(*(v2 + 9), v45);
    v22 = *(v9 + 112);
    v23 = v2[14] - v22;
    v51 = v20;
    v41 = vdupq_lane_s64(COERCE__INT64(v20), 0);
    v3 = MEMORY[0x277D84F90];
    for (i = 1; ; ++i)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_251109414(0, *(v3 + 16) + 1, 1, v3);
      }

      v26 = *(v3 + 16);
      v25 = *(v3 + 24);
      if (v26 >= v25 >> 1)
      {
        v3 = sub_251109414((v25 > 1), v26 + 1, 1, v3);
      }

      *(v3 + 16) = v26 + 1;
      v27 = v3 + (v26 << 7);
      *(v27 + 32) = v6 + v21 * i / v51;
      *(v27 + 40) = vaddq_f64(v54, vdivq_f64(vmulq_n_f64(v50, i), v41));
      *(v27 + 56) = vaddq_f64(v53, vdivq_f64(vmulq_n_f64(v49, i), v41));
      *(v27 + 72) = vaddq_f64(v52, vdivq_f64(vmulq_n_f64(v48, i), v41));
      *(v27 + 88) = vaddq_f64(v47, vdivq_f64(vmulq_n_f64(v46, i), v41));
      *(v27 + 104) = vaddq_f64(v45, vdivq_f64(vmulq_n_f64(v43, i), v41));
      *(v27 + 120) = vaddq_f64(v44, vdivq_f64(vmulq_n_f64(v42, i), v41));
      *(v27 + 136) = v4 + v5 * i / v51;
      *(v27 + 144) = v22 + v23 * i / v51;
      *(v27 + 152) = 0;
      if (v8 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_30:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_31:
      v33 = *(v3 + 16);
      v32 = *(v3 + 24);
      if (v33 >= v32 >> 1)
      {
        v3 = sub_251109414((v32 > 1), v33 + 1, 1, v3);
      }

      *(v3 + 16) = v33 + 1;
      v34 = (v3 + (v33 << 7));
      v35 = *v2;
      v36 = *(v2 + 1);
      v37 = *(v2 + 3);
      v34[4] = *(v2 + 2);
      v34[5] = v37;
      v34[2] = v35;
      v34[3] = v36;
      v38 = *(v2 + 4);
      v39 = *(v2 + 5);
      v40 = *(v2 + 6);
      *(v34 + 137) = *(v2 + 105);
      v34[7] = v39;
      v34[8] = v40;
      v34[6] = v38;
      return v3;
    }

LABEL_40:
    v3 = sub_251109414(0, *(v3 + 16) + 1, 1, v3);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

BOOL sub_251111808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_2511125E8(v5, v7);
}

uint64_t sub_251111898()
{
  v15 = MEMORY[0x277D84F90];
  sub_25111B8E4(0, 16, 0);
  v0 = 0;
  v1 = v15;
  v2 = 0x8000000251135580;
  v3 = 0x586F727947;
  do
  {
    v4 = 0xEF706D617473656DLL;
    v5 = 0x6954726F736E6553;
    switch(byte_2863313B8[v0 + 32])
    {
      case 1:
        v5 = 0xD000000000000011;
        v4 = v2;
        break;
      case 2:
        v4 = 0xE400000000000000;
        v5 = 1482908481;
        break;
      case 3:
        v4 = 0xE400000000000000;
        v5 = 1499685697;
        break;
      case 4:
        v4 = 0xE400000000000000;
        v5 = 1516462913;
        break;
      case 5:
        v4 = 0xE500000000000000;
        v5 = v3;
        break;
      case 6:
        v4 = 0xE500000000000000;
        v5 = 0x596F727947;
        break;
      case 7:
        v4 = 0xE500000000000000;
        v5 = 0x5A6F727947;
        break;
      case 8:
        v4 = 0xE400000000000000;
        v5 = 1819045714;
        break;
      case 9:
        v4 = 0xE500000000000000;
        v5 = 0x6863746950;
        break;
      case 0xA:
        v4 = 0xE300000000000000;
        v5 = 7823705;
        break;
      case 0xB:
        v4 = 0xE200000000000000;
        v5 = 30801;
        break;
      case 0xC:
        v4 = 0xE200000000000000;
        v5 = 31057;
        break;
      case 0xD:
        v4 = 0xE200000000000000;
        v5 = 31313;
        break;
      case 0xE:
        v4 = 0xE200000000000000;
        v5 = 30545;
        break;
      case 0xF:
        v4 = 0xEA00000000006C61;
        v5 = 0x6E696769724F7369;
        break;
      default:
        break;
    }

    v16 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      v14 = v2;
      v9 = v3;
      sub_25111B8E4((v6 > 1), v7 + 1, 1);
      v3 = v9;
      v2 = v14;
      v1 = v16;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v5;
    *(v8 + 40) = v4;
  }

  while (v0 != 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E780, &qword_251133990);
  sub_2510F6658(&qword_27F41E788, &qword_27F41E780, &qword_251133990);
  v10 = sub_251130EC8();
  v12 = v11;

  MEMORY[0x25306BDC0](v10, v12);

  result = MEMORY[0x25306BDC0](10, 0xE100000000000000);
  qword_27F4219A0 = 0;
  *algn_27F4219A8 = 0xE000000000000000;
  return result;
}

unint64_t sub_251111BFC(char a1)
{
  result = 0x6954726F736E6553;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 1482908481;
      break;
    case 3:
      result = 1499685697;
      break;
    case 4:
      result = 1516462913;
      break;
    case 5:
      result = 0x586F727947;
      break;
    case 6:
      result = 0x596F727947;
      break;
    case 7:
      result = 0x5A6F727947;
      break;
    case 8:
      result = 1819045714;
      break;
    case 9:
      result = 0x6863746950;
      break;
    case 10:
      result = 7823705;
      break;
    case 11:
      result = 30801;
      break;
    case 12:
      result = 31057;
      break;
    case 13:
      result = 31313;
      break;
    case 14:
      result = 30545;
      break;
    case 15:
      result = 0x6E696769724F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_251111D8C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_251111BFC(*a1);
  v5 = v4;
  if (v3 == sub_251111BFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251131518();
  }

  return v8 & 1;
}

uint64_t sub_251111E14()
{
  v1 = *v0;
  sub_251131598();
  sub_251111BFC(v1);
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_251111E78()
{
  sub_251111BFC(*v0);
  sub_251130F88();
}

uint64_t sub_251111ECC()
{
  v1 = *v0;
  sub_251131598();
  sub_251111BFC(v1);
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_251111F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_251112978();
  *a2 = result;
  return result;
}

unint64_t sub_251111F5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_251111BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_251111F98()
{
  sub_251131358();
  v1 = v0[13];
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  v2 = v0[14];
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[6];
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  if (v0[15])
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v0[15])
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v16, v17);

  MEMORY[0x25306BDC0](10, 0xE100000000000000);
  return 0;
}

uint64_t sub_251112290()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0x6D617473656D6954, 0xEB00000000203A70);
  v1 = v0[13];
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A58636341202CLL, 0xE800000000000000);
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[12];
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A59636341202CLL, 0xE900000000000020);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A5A636341202CLL, 0xE800000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A586F727947202CLL, 0xEA00000000002020);
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A596F727947202CLL, 0xE900000000000020);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A5A6F727947202CLL, 0xEA00000000002020);
  sub_2511310D8();
  return 0;
}

BOOL sub_251112468(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return sub_251112658(v12, v14);
}

BOOL sub_2511124F0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_251131348();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

BOOL sub_2511125E8(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    v2 = a1[4] == a2[4] && a1[5] == a2[5];
    if (v2 && a1[6] == a2[6])
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_251112658(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    v2 = 0;
    if (*a1 != *a2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
    {
      return v2;
    }

    if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
    {
      return v2;
    }

    v2 = 0;
    if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
    {
      return v2;
    }

    if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
    {
      return *(a1 + 96) == *(a2 + 96);
    }
  }

  return 0;
}

double sub_251112740@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = [a1 attitude];
  [v5 roll];
  v39 = v6;

  v7 = [a1 attitude];
  [v7 pitch];
  v38 = v8;

  v9 = [a1 attitude];
  [v9 yaw];
  v37 = v10;

  v11 = [a1 attitude];
  [v11 quaternion];
  v36 = v12;

  v13 = [a1 attitude];
  [v13 quaternion];
  v35 = v14;

  v15 = [a1 attitude];
  [v15 quaternion];
  v17 = v16;

  v18 = [a1 attitude];
  [v18 quaternion];
  v20 = v19;

  [a1 rotationRate];
  v22 = v21;
  [a1 rotationRate];
  v24 = v23;
  [a1 rotationRate];
  v26 = v25;
  [a1 userAcceleration];
  v28 = v27;
  [a1 userAcceleration];
  v30 = v29;
  [a1 userAcceleration];
  v32 = v31;
  [a1 timestamp];
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  *(a2 + 64) = v24;
  *(a2 + 72) = v26;
  *(a2 + 80) = v28;
  *(a2 + 88) = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = v33;
  result = a3;
  *(a2 + 112) = a3;
  *(a2 + 120) = 1;
  return result;
}

uint64_t sub_251112978()
{
  v0 = sub_251131428();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

double sub_2511129C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v93 = a3;
  v5 = sub_2511308E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v105 = a1;
  *(&v105 + 1) = a2;
  v94 = a2;
  *&v98 = 8236;
  *(&v98 + 1) = 0xE200000000000000;
  sub_251105D08();
  v10 = sub_251131288();
  if (qword_27F41DF98 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v105 = xmmword_27F4219A0;
    v11 = objc_opt_self();

    v12 = [v11 whitespaceAndNewlineCharacterSet];
    sub_2511308D8();

    v13 = sub_251131298();
    v15 = v14;
    (*(v6 + 8))(v9, v5);

    *&v105 = v13;
    *(&v105 + 1) = v15;
    *&v98 = 8236;
    *(&v98 + 1) = 0xE200000000000000;
    v16 = sub_251131288();

    v17 = *(v16 + 16);
    if (*(v10 + 16) < v17)
    {
      break;
    }

    if (!v17)
    {
      LOBYTE(v9) = 0;
      v20 = MEMORY[0x277D84F98];
      goto LABEL_40;
    }

    v19 = 0;
    v9 = 0;
    v5 = 0;
    v92 = 0x8000000251135580;
    v20 = MEMORY[0x277D84F98];
    v96 = v17;
    v97 = v16;
    while (1)
    {
      v21 = 16 * v19;
      v6 = v19;
LABEL_10:
      if (v6 >= v17)
      {
        break;
      }

      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_75;
      }

      if (v6 >= *(v16 + 16))
      {
        goto LABEL_76;
      }

      LODWORD(v95) = v9;
      v9 = v10;
      v22 = *(v16 + v21 + 32);
      v23 = *(v16 + v21 + 40);

      v10 = sub_251112978();
      switch(v10)
      {
        case 15:

          goto LABEL_16;
        case 16:
          goto LABEL_72;
        default:
          v24 = sub_251131518();

          if (v24)
          {
LABEL_16:
            if (v6 >= *(v9 + 16))
            {
              goto LABEL_77;
            }

            v10 = v9;
            v25 = *(v9 + v21 + 32);
            v26 = *(v9 + v21 + 40);
            if (v25 == 1702195828 && v26 == 0xE400000000000000)
            {
              v9 = 1;
              v17 = v96;
              v16 = v97;
            }

            else
            {
              v27 = sub_251131518();
              v17 = v96;
              if (v27)
              {
                v9 = 1;
                v16 = v97;
              }

              else
              {
                if ((v25 != 0x65736C6166 || v26 != 0xE500000000000000) && (sub_251131518() & 1) == 0)
                {
                  goto LABEL_72;
                }

                v9 = 0;
                v16 = v97;
              }
            }

            ++v6;
            v21 += 16;
            if (v19 == v17)
            {
              goto LABEL_40;
            }

            goto LABEL_10;
          }

          if (v6 >= *(v9 + 16))
          {
            goto LABEL_109;
          }

          v28 = *(v9 + v21 + 32);
          v29 = *(v9 + v21 + 40);
          *&v105 = 0;

          LOBYTE(v28) = sub_2511124F0(v28, v29);

          if ((v28 & 1) == 0)
          {
LABEL_72:

            goto LABEL_4;
          }

          v30 = v105;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v105 = v20;
          v33 = sub_25112EC5C(v10);
          v34 = v20[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_110;
          }

          v37 = v32;
          if (v20[3] < v36)
          {
            sub_25112728C(v36, isUniquelyReferenced_nonNull_native);
            v38 = sub_25112EC5C(v10);
            if ((v37 & 1) == (v39 & 1))
            {
              v33 = v38;
              goto LABEL_33;
            }

LABEL_112:
            sub_251131538();
            __break(1u);
            JUMPOUT(0x251113380);
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_251128410();
          }

LABEL_33:
          v17 = v96;
          v20 = v105;
          if (v37)
          {
            *(*(v105 + 56) + 8 * v33) = v30;
            goto LABEL_37;
          }

          *(v105 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v20[6] + v33) = v10;
          *(v20[7] + 8 * v33) = v30;
          v40 = v20[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v20[2] = v42;
LABEL_37:
          v10 = v9;
          v16 = v97;
          v9 = v95;
          if (v19 == v17)
          {
LABEL_40:
            if (v20[2])
            {
              v43 = sub_25112EC5C(0);
              if (v44)
              {
                if (v20[2])
                {
                  v45 = *(v20[7] + 8 * v43);
                  v46 = sub_25112EC5C(1);
                  if (v47)
                  {
                    if (v20[2])
                    {
                      v48 = *(v20[7] + 8 * v46);
                      v49 = sub_25112EC5C(2);
                      if (v50)
                      {
                        if (v20[2])
                        {
                          v51 = *(v20[7] + 8 * v49);
                          v52 = sub_25112EC5C(3);
                          if (v53)
                          {
                            if (v20[2])
                            {
                              v54 = *(v20[7] + 8 * v52);
                              v55 = sub_25112EC5C(4);
                              if (v56)
                              {
                                if (v20[2])
                                {
                                  v57 = *(v20[7] + 8 * v55);
                                  v58 = sub_25112EC5C(5);
                                  if (v59)
                                  {
                                    if (v20[2])
                                    {
                                      v60 = *(v20[7] + 8 * v58);
                                      v61 = sub_25112EC5C(6);
                                      if (v62)
                                      {
                                        if (v20[2])
                                        {
                                          v63 = *(v20[7] + 8 * v61);
                                          v64 = sub_25112EC5C(7);
                                          if (v65)
                                          {
                                            if (v20[2])
                                            {
                                              v66 = *(v20[7] + 8 * v64);
                                              v67 = sub_25112EC5C(8);
                                              if (v68)
                                              {
                                                if (v20[2])
                                                {
                                                  v96 = *(v20[7] + 8 * v67);
                                                  v69 = sub_25112EC5C(9);
                                                  if (v70)
                                                  {
                                                    if (v20[2])
                                                    {
                                                      v95 = *(v20[7] + 8 * v69);
                                                      v71 = sub_25112EC5C(10);
                                                      if (v72)
                                                      {
                                                        if (v20[2])
                                                        {
                                                          v92 = *(v20[7] + 8 * v71);
                                                          v73 = sub_25112EC5C(11);
                                                          if (v74)
                                                          {
                                                            if (v20[2])
                                                            {
                                                              v91 = *(v20[7] + 8 * v73);
                                                              v75 = sub_25112EC5C(12);
                                                              if (v76)
                                                              {
                                                                if (v20[2])
                                                                {
                                                                  v90 = *(v20[7] + 8 * v75);
                                                                  v77 = sub_25112EC5C(13);
                                                                  if (v78)
                                                                  {
                                                                    if (v20[2])
                                                                    {
                                                                      v89 = *(v20[7] + 8 * v77);
                                                                      v79 = sub_25112EC5C(14);
                                                                      v81 = v80;

                                                                      if (v81)
                                                                      {
                                                                        v82 = v20[7];
                                                                        v97 = v48;
                                                                        v83 = v45;
                                                                        v84 = *(v82 + 8 * v79);

                                                                        *&v98 = v96;
                                                                        *(&v98 + 1) = v95;
                                                                        *&v99 = v92;
                                                                        *(&v99 + 1) = v91;
                                                                        *&v100 = v90;
                                                                        *(&v100 + 1) = v89;
                                                                        *&v101 = v84;
                                                                        *(&v101 + 1) = v60;
                                                                        *&v102 = v63;
                                                                        *(&v102 + 1) = v66;
                                                                        *&v103 = v51;
                                                                        *(&v103 + 1) = v54;
                                                                        *&v104[0] = v57;
                                                                        *(&v104[0] + 1) = v83;
                                                                        *&v104[1] = v97;
                                                                        BYTE8(v104[1]) = v9 & 1;
                                                                        nullsub_1(&v98);
                                                                        v109 = v102;
                                                                        v110 = v103;
                                                                        v111[0] = v104[0];
                                                                        *(v111 + 9) = *(v104 + 9);
                                                                        v105 = v98;
                                                                        v106 = v99;
                                                                        v107 = v100;
                                                                        v108 = v101;
                                                                        v18 = v93;
                                                                        goto LABEL_71;
                                                                      }

LABEL_108:
                                                                      __break(1u);
LABEL_109:
                                                                      __break(1u);
LABEL_110:
                                                                      __break(1u);
                                                                      goto LABEL_111;
                                                                    }

LABEL_107:
                                                                    __break(1u);
                                                                    goto LABEL_108;
                                                                  }

LABEL_106:
                                                                  __break(1u);
                                                                  goto LABEL_107;
                                                                }

LABEL_105:
                                                                __break(1u);
                                                                goto LABEL_106;
                                                              }

LABEL_104:
                                                              __break(1u);
                                                              goto LABEL_105;
                                                            }

LABEL_103:
                                                            __break(1u);
                                                            goto LABEL_104;
                                                          }

LABEL_102:
                                                          __break(1u);
                                                          goto LABEL_103;
                                                        }

LABEL_101:
                                                        __break(1u);
                                                        goto LABEL_102;
                                                      }

LABEL_100:
                                                      __break(1u);
                                                      goto LABEL_101;
                                                    }

LABEL_99:
                                                    __break(1u);
                                                    goto LABEL_100;
                                                  }

LABEL_98:
                                                  __break(1u);
                                                  goto LABEL_99;
                                                }

LABEL_97:
                                                __break(1u);
                                                goto LABEL_98;
                                              }

LABEL_96:
                                              __break(1u);
                                              goto LABEL_97;
                                            }

LABEL_95:
                                            __break(1u);
                                            goto LABEL_96;
                                          }

LABEL_94:
                                          __break(1u);
                                          goto LABEL_95;
                                        }

LABEL_93:
                                        __break(1u);
                                        goto LABEL_94;
                                      }

LABEL_92:
                                      __break(1u);
                                      goto LABEL_93;
                                    }

LABEL_91:
                                    __break(1u);
                                    goto LABEL_92;
                                  }

LABEL_90:
                                  __break(1u);
                                  goto LABEL_91;
                                }

LABEL_89:
                                __break(1u);
                                goto LABEL_90;
                              }

LABEL_88:
                              __break(1u);
                              goto LABEL_89;
                            }

LABEL_87:
                            __break(1u);
                            goto LABEL_88;
                          }

LABEL_86:
                          __break(1u);
                          goto LABEL_87;
                        }

LABEL_85:
                        __break(1u);
                        goto LABEL_86;
                      }

LABEL_84:
                      __break(1u);
                      goto LABEL_85;
                    }

LABEL_83:
                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_82:
                  __break(1u);
                  goto LABEL_83;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_81;
          }

          break;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_4:

  v18 = v93;
  sub_2510F731C(&v105);
LABEL_71:
  v85 = v110;
  v18[4] = v109;
  v18[5] = v85;
  v18[6] = v111[0];
  *(v18 + 105) = *(v111 + 9);
  v86 = v106;
  *v18 = v105;
  v18[1] = v86;
  result = *&v107;
  v88 = v108;
  v18[2] = v107;
  v18[3] = v88;
  return result;
}

_BYTE *sub_2511133C4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HGMotionData.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HGMotionData.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Orientation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Orientation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
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

uint64_t sub_251113630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251113650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_2511136E0()
{
  result = qword_27F41E7A0;
  if (!qword_27F41E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7A0);
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

uint64_t sub_251113740(uint64_t a1, int a2)
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

uint64_t sub_251113760(uint64_t result, int a2, int a3)
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

uint64_t sub_2511137C4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25111380C(uint64_t a1)
{
  v2 = sub_2511142EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113848(uint64_t a1)
{
  v2 = sub_2511142EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113884(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7E8, &qword_251133CF0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7F0, &qword_251133CF8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7F8, &qword_251133D00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251114298();
  sub_251131608();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_2511142EC();
    sub_2511314A8();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_251114340();
    sub_2511314A8();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_251113B60()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_251113B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x8000000251137050 == a2;
  if (v6 || (sub_251131518() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000251137070 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251131518();

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

uint64_t sub_251113C84(uint64_t a1)
{
  v2 = sub_251114298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113CC0(uint64_t a1)
{
  v2 = sub_251114298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113CFC(uint64_t a1)
{
  v2 = sub_251114340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113D38(uint64_t a1)
{
  v2 = sub_251114340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113D74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251113E18(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_251113DC4()
{
  result = qword_27F41E7A8;
  if (!qword_27F41E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7A8);
  }

  return result;
}

uint64_t sub_251113E18(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7B0, &qword_251133CD0);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7B8, &qword_251133CD8);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7C0, &qword_251133CE0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251114298();
  v14 = v31;
  sub_2511315F8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_251131488();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_251131388();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7D0, &qword_251133CE8) + 48);
    *v22 = &type metadata for CInteropUtils.DomainError;
    sub_251131448();
    sub_251131378();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_2511142EC();
    sub_251131438();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_251114340();
    sub_251131438();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v32;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_251114298()
{
  result = qword_27F41E7C8;
  if (!qword_27F41E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7C8);
  }

  return result;
}

unint64_t sub_2511142EC()
{
  result = qword_27F41E7D8;
  if (!qword_27F41E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7D8);
  }

  return result;
}

unint64_t sub_251114340()
{
  result = qword_27F41E7E0;
  if (!qword_27F41E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7E0);
  }

  return result;
}

uint64_t sub_251114398(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25111442C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25111452C()
{
  result = qword_27F41E800;
  if (!qword_27F41E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E800);
  }

  return result;
}

unint64_t sub_251114584()
{
  result = qword_27F41E808;
  if (!qword_27F41E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E808);
  }

  return result;
}

unint64_t sub_2511145DC()
{
  result = qword_27F41E810;
  if (!qword_27F41E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E810);
  }

  return result;
}

unint64_t sub_251114634()
{
  result = qword_27F41E818;
  if (!qword_27F41E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E818);
  }

  return result;
}

unint64_t sub_25111468C()
{
  result = qword_27F41E820;
  if (!qword_27F41E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E820);
  }

  return result;
}

unint64_t sub_2511146E4()
{
  result = qword_27F41E828;
  if (!qword_27F41E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E828);
  }

  return result;
}

unint64_t sub_25111473C()
{
  result = qword_27F41E830;
  if (!qword_27F41E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E830);
  }

  return result;
}

uint64_t sub_2511147B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2511147FC(void *a1)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v8 + v9) == 1)
  {
    v81 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E848, &qword_251133FF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2511332B0;
    v11 = *MEMORY[0x277CBA648];
    *(inited + 32) = *MEMORY[0x277CBA648];
    v12 = v11;
    v13 = sub_2511310A8();
    type metadata accessor for CFBoolean(0);
    *(inited + 64) = v14;
    *(inited + 40) = v13;
    v15 = sub_251120908(inited);
    swift_setDeallocating();
    sub_251103084(inited + 32, &qword_27F41E850, &qword_251134000);
    v16 = [a1 headGesture];
    v17 = *(v1 + 16);
    v18 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v82 = v15;
    if (v16 == 2)
    {
      if (v19)
      {
        v20 = 1371;
      }

      else
      {
        v20 = 1372;
      }
    }

    else
    {
      if (v16 != 1)
      {
        goto LABEL_26;
      }

      if (v19)
      {
        v20 = 1372;
      }

      else
      {
        v20 = 1371;
      }
    }

    v79[1] = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;

    v80 = v1;
    sub_251130CB8();
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v21 = sub_251130BE8();
    __swift_project_value_buffer(v21, qword_27F421A38);
    v22 = a1;
    v23 = sub_251130BC8();
    v24 = sub_251131178();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&aBlock = v26;
      *v25 = 136315650;
      v27 = [v22 headGesture];
      if (v27)
      {
        v28 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E55;
        if (v27 == 1)
        {
          v29 = 6582094;
          v28 = 0xE300000000000000;
        }

        v30 = v27 == 2;
        if (v27 == 2)
        {
          v31 = 0x656B616853;
        }

        else
        {
          v31 = v29;
        }

        if (v30)
        {
          v32 = 0xE500000000000000;
        }

        else
        {
          v32 = v28;
        }
      }

      else
      {
        v31 = 0x756F72476B636142;
        v32 = 0xEA0000000000646ELL;
      }

      v33 = sub_2510FAC50(v31, v32, &aBlock);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2080;
      v34 = [v22 uuid];
      sub_251130B68();

      sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0]);
      v35 = sub_251131508();
      v37 = v36;
      (*(v81 + 8))(v7, v3);
      v38 = sub_2510FAC50(v35, v37, &aBlock);

      *(v25 + 14) = v38;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_2510FAC50(49, 0xE100000000000000, &aBlock);
      _os_log_impl(&dword_2510F2000, v23, v24, "[Audio] Playing Audio feedback %s UUID: %s at volume %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v26, -1, -1);
      MEMORY[0x25306CC10](v25, -1, -1);
    }

    else
    {
    }

    type metadata accessor for CFString(0);
    sub_2511166DC(&qword_27F41E148, type metadata accessor for CFString);
    v39 = sub_251130E78();
    v40 = swift_allocObject();
    v1 = v80;
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v22;
    v86 = sub_2511167A4;
    v87 = v41;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v84 = sub_2511147B8;
    v85 = &block_descriptor_33_0;
    v42 = _Block_copy(&aBlock);
    v43 = v22;

    AudioServicesPlaySystemSoundWithOptions();
    _Block_release(v42);

LABEL_26:
    v44 = [a1 headGesturePart];
    v45 = *(v1 + 16);
    v46 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
    swift_beginAccess();
    v47 = *(v45 + v46);
    if ((v44 - 3) < 2)
    {
      if (*(v45 + v46))
      {
        v48 = 1373;
      }

      else
      {
        v48 = 1374;
      }
    }

    else
    {
      if ((v44 - 1) > 1)
      {

        return;
      }

      if (*(v45 + v46))
      {
        v48 = 1374;
      }

      else
      {
        v48 = 1373;
      }
    }

    v49 = *(v1 + 48);
    sub_2510F44B4([a1 headGesturePart]);
    if (qword_27F41DFB0 != -1)
    {
      v78 = v50;
      swift_once();
      v50 = v78;
    }

    v51 = v50;
    v52 = sub_251130BE8();
    __swift_project_value_buffer(v52, qword_27F421A38);
    v53 = a1;
    v54 = sub_251130BC8();
    v55 = sub_251131178();

    if (!os_log_type_enabled(v54, v55))
    {

      goto LABEL_50;
    }

    LODWORD(v80) = v48;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v56 = 136315650;
    v58 = [v53 headGesturePart];
    if (v58 > 2)
    {
      if (v58 == 3)
      {
        v59 = 0xE900000000000074;
        v60 = 0x66654C656B616853;
        goto LABEL_49;
      }

      if (v58 == 4)
      {
        v59 = 0xEA00000000007468;
        v60 = 0x676952656B616853;
        goto LABEL_49;
      }
    }

    else
    {
      if (v58 == 1)
      {
        v59 = 0xE500000000000000;
        v60 = 0x7055646F4ELL;
        goto LABEL_49;
      }

      if (v58 == 2)
      {
        v59 = 0xE700000000000000;
        v60 = 0x6E776F44646F4ELL;
LABEL_49:
        v61 = sub_2510FAC50(v60, v59, &aBlock);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2080;
        v62 = [v53 uuid];
        sub_251130B68();

        sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0]);
        v63 = sub_251131508();
        v65 = v64;
        (*(v81 + 8))(v7, v3);
        v66 = sub_2510FAC50(v63, v65, &aBlock);

        *(v56 + 14) = v66;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v51;
        _os_log_impl(&dword_2510F2000, v54, v55, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v57, -1, -1);
        MEMORY[0x25306CC10](v56, -1, -1);

LABEL_50:
        v67 = *MEMORY[0x277CBA660];
        v68 = sub_2511310E8();
        type metadata accessor for CFNumber(0);
        v70 = v69;
        v85 = v69;
        *&aBlock = v68;
        sub_2510FC400(&aBlock, v89);
        v71 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v71;
        sub_2510FB208(v89, v67, isUniquelyReferenced_nonNull_native);
        v73 = v88;
        if ([v53 headGesturePart] == 3)
        {
          v74 = *MEMORY[0x277CBA650];
        }

        else
        {
          if ([v53 headGesturePart] != 4)
          {
LABEL_55:
            type metadata accessor for CFString(0);
            sub_2511166DC(&qword_27F41E148, type metadata accessor for CFString);
            v77 = sub_251130E78();

            AudioServicesPlaySystemSoundWithOptions();

            return;
          }

          v74 = *MEMORY[0x277CBA650];
        }

        v75 = sub_251131118();
        v85 = v70;
        *&aBlock = v75;
        sub_2510FC400(&aBlock, v89);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v73;
        sub_2510FB208(v89, v74, v76);
        goto LABEL_55;
      }
    }

    v60 = 0x6E776F6E6B6E75;
    v59 = 0xE700000000000000;
    goto LABEL_49;
  }
}

void sub_251115314(uint64_t a1, void *a2)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 1;
    sub_251130CB8();
  }

  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v8 = sub_251130BE8();
  __swift_project_value_buffer(v8, qword_27F421A38);
  v9 = a2;
  v10 = sub_251130BC8();
  v11 = sub_251131178();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    v14 = [v9 headGesture];
    if (v14)
    {
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E55;
      if (v14 == 1)
      {
        v16 = 6582094;
        v15 = 0xE300000000000000;
      }

      v17 = v14 == 2;
      if (v14 == 2)
      {
        v18 = 0x656B616853;
      }

      else
      {
        v18 = v16;
      }

      if (v17)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = v15;
      }
    }

    else
    {
      v19 = 0xEA0000000000646ELL;
      v18 = 0x756F72476B636142;
    }

    v20 = sub_2510FAC50(v18, v19, &v26);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    v21 = [v9 uuid];
    sub_251130B68();

    sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0]);
    v22 = sub_251131508();
    v24 = v23;
    (*(v4 + 8))(v7, v3);
    v25 = sub_2510FAC50(v22, v24, &v26);

    *(v12 + 14) = v25;
    _os_log_impl(&dword_2510F2000, v10, v11, "[Audio] Finished playing Audio feedback %s UUID: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v13, -1, -1);
    MEMORY[0x25306CC10](v12, -1, -1);
  }
}

id sub_251115684()
{
  v1 = v0;
  if (*(v0 + 32))
  {

    sub_251130C08();

    v2 = *(v0 + 32);
    *(v0 + 32) = 0;
  }

  v3 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  return [*(v1 + v3) stop];
}

uint64_t sub_251115700()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251130E38();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 24);
  aBlock[4] = sub_251116468;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_22;
  v10 = _Block_copy(aBlock);

  sub_251130E28();
  v14 = MEMORY[0x277D84F90];
  sub_2511166DC(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_2511159B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  [*(a1 + v2) play];
  return sub_251115D0C(nullsub_1, 0, 1.0);
}

uint64_t sub_251115A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_251130E18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_251130E38();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_251116420;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_4;
  v16 = _Block_copy(aBlock);

  sub_251130E28();
  v20 = MEMORY[0x277D84F90];
  sub_2511166DC(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_251115D0C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v35 = a1;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6F0, &unk_251134060);
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v34);
  v17 = &v33 - v16;
  if (*(v3 + 32))
  {

    sub_251130C08();

    v18 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  sub_2510FE944(0, &qword_27F41E6A0, 0x277CBEBB8);
  v19 = [objc_opt_self() mainRunLoop];
  v20 = *MEMORY[0x277CBE640];
  v21 = sub_251131248();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_251131228();

  sub_251103084(v13, &qword_27F41E4B0, &unk_251133520);
  v38 = v22;
  sub_251131218();
  sub_2511166DC(&qword_27F41E6A8, MEMORY[0x277CC9DF0]);
  v23 = sub_251130C48();

  v37 = *(v3 + 24);
  v24 = v37;
  v38 = v23;
  v25 = sub_2511311C8();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640);
  sub_25110D944();
  sub_251130DD8();
  sub_251103084(v9, &qword_27F41E6E8, &unk_251134050);

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = a3;
  v28 = v36;
  *(v27 + 32) = v35;
  *(v27 + 40) = v28;
  sub_2510F6658(&qword_27F41E700, &qword_27F41E6F0, &unk_251134060);

  v29 = v34;
  v30 = sub_251130E08();

  (*(v14 + 8))(v17, v29);
  v31 = *(v4 + 32);
  *(v4 + 32) = v30;
}

void sub_25111619C(float a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v7 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  v8 = *(a3 + v7);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 volume];
    if (v11 == a1)
    {
      if (*(a3 + 32))
      {
        v12 = *(a3 + 32);

        sub_251130C08();

        v13 = *(a3 + 32);
        *(a3 + 32) = 0;
      }

      a4(v10);
    }

    [v9 volume];
    v15 = v14;
    [v9 volume];
    v17 = *&v16 + -0.05;
    if ((*&v16 + -0.05) <= a1)
    {
      v17 = a1;
    }

    *&v16 = *&v16 + 0.05;
    if (*&v16 > a1)
    {
      *&v16 = a1;
    }

    if (v15 >= a1)
    {
      *&v16 = v17;
    }

    [v9 setVolume_];
  }
}

uint64_t sub_2511162D4()
{
  v0 = sub_2510F4B98();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGSystemAudioPlayer()
{
  result = qword_27F41E838;
  if (!qword_27F41E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2511163E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251116420()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_251115D0C(v1, v2, 0.0);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251116470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v5;
  return result;
}

uint64_t sub_2511164F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_251130CB8();
}

id sub_251116564(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2511166DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25111672C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251116764()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511167AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2511167FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22[-v5];
  v7 = sub_2511309E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  *(v1 + OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer) = 0;
  v15 = sub_2510F5F58(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_251130CA8();

  if (v22[32] == 1)
  {
    sub_25112C900(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_251103084(v6, &qword_27F41E328, qword_251134070);
    }

    else
    {
      (*(v8 + 32))(v14, v6, v7);
      (*(v8 + 16))(v12, v14, v7);
      v16 = objc_allocWithZone(MEMORY[0x277CB83D0]);
      v17 = sub_251116564(v12);
      v18 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
      swift_beginAccess();
      v19 = *(v15 + v18);
      *(v15 + v18) = v17;

      swift_beginAccess();
      v20 = *(v15 + v18);
      if (v20)
      {
        swift_endAccess();
        [v20 setNumberOfLoops_];
        (*(v8 + 8))(v14, v7);
      }

      else
      {
        (*(v8 + 8))(v14, v7);
        swift_endAccess();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22[8] = 1;
  sub_251130CB8();
  return v15;
}

void *sub_251116BF4@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[7];
  v3 = a1[8];
  v5 = a1[9];
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[10];
  swift_beginAccess();
  v9 = sub_251128A3C(0x1EuLL, 5uLL, v8);
  swift_endAccess();
  swift_beginAccess();
  v10 = v6;
  v11 = sub_251128A3C(0x1EuLL, 5uLL, v10);
  swift_endAccess();
  swift_beginAccess();
  v12 = v7;
  v13 = sub_251128A3C(0x1EuLL, 5uLL, v12);
  swift_endAccess();
  swift_beginAccess();
  v14 = v4;
  v15 = sub_251128A3C(0x1EuLL, 5uLL, v14);
  swift_endAccess();
  swift_beginAccess();
  v16 = v3;
  v17 = sub_251128A3C(0x1EuLL, 5uLL, v16);
  swift_endAccess();
  swift_beginAccess();
  v18 = v5;
  v19 = sub_251128A3C(0x1EuLL, 5uLL, v18);
  swift_endAccess();
  if (!v9)
  {

LABEL_12:
LABEL_13:

LABEL_14:
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (!v11)
  {

LABEL_11:
    goto LABEL_12;
  }

  if (!v13)
  {

    goto LABEL_11;
  }

  if (!v15)
  {

    goto LABEL_15;
  }

  if (!v17)
  {

    goto LABEL_14;
  }

  if (!v19)
  {

    goto LABEL_13;
  }

  type metadata accessor for HGMLInput();
  result = swift_allocObject();
  result[2] = v15;
  result[3] = v17;
  result[4] = v19;
  result[5] = v9;
  result[6] = v11;
  result[7] = v13;
LABEL_16:
  *a2 = result;
  return result;
}

uint64_t sub_251116E54()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return swift_deallocClassInstance();
}

Swift::String __swiftcall HGHeadGestureResult.description()()
{
  v1 = v0;
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251130B88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_251131358();
  MEMORY[0x25306BDC0](91, 0xE100000000000000);
  v12 = [v0 uuid];
  sub_251130B68();

  sub_251110FA0();
  v13 = sub_251131508();
  MEMORY[0x25306BDC0](v13);

  (*(v8 + 8))(v11, v7);
  MEMORY[0x25306BDC0](0x654764616548205DLL, 0xEF203A6572757473);
  v14 = [v1 headGesture];
  if (v14)
  {
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E55;
    if (v14 == 1)
    {
      v16 = 6582094;
      v15 = 0xE300000000000000;
    }

    v17 = v14 == 2;
    if (v14 == 2)
    {
      v18 = 0x656B616853;
    }

    else
    {
      v18 = v16;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = v15;
    }
  }

  else
  {
    v18 = 0x756F72476B636142;
    v19 = 0xEA0000000000646ELL;
  }

  MEMORY[0x25306BDC0](v18, v19);

  MEMORY[0x25306BDC0](0x6469666E6F43202CLL, 0xEE00203A65636E65);
  v20 = [v1 avgConfidence];
  v21 = [v20 description];
  v22 = sub_251130F18();
  v24 = v23;

  MEMORY[0x25306BDC0](v22, v24);

  MEMORY[0x25306BDC0](0xD000000000000013, 0x8000000251137140);
  v25 = [v1 headGesturePart];
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v26 = 0xE900000000000074;
      v27 = 0x66654C656B616853;
      goto LABEL_21;
    }

    if (v25 == 4)
    {
      v26 = 0xEA00000000007468;
      v27 = 0x676952656B616853;
      goto LABEL_21;
    }

LABEL_18:
    v27 = 0x6E776F6E6B6E75;
    v26 = 0xE700000000000000;
    goto LABEL_21;
  }

  if (v25 == 1)
  {
    v26 = 0xE500000000000000;
    v27 = 0x7055646F4ELL;
    goto LABEL_21;
  }

  if (v25 != 2)
  {
    goto LABEL_18;
  }

  v26 = 0xE700000000000000;
  v27 = 0x6E776F44646F4ELL;
LABEL_21:
  MEMORY[0x25306BDC0](v27, v26);

  MEMORY[0x25306BDC0](0x6D6954207461202CLL, 0xEF3A706D61747365);
  v28 = [v1 timestamp];
  sub_251130AF8();

  sub_251130AE8();
  (*(v3 + 8))(v6, v2);
  sub_2511310D8();
  v29 = v32;
  v30 = v33;
  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

id sub_251117398(unsigned __int8 a1)
{
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(HGHeadGestureResult) init];
  [v7 setHeadGesture_];
  [v7 setHeadGesturePart_];
  sub_251117B34();
  v8 = sub_251131238();
  [v7 setAvgConfidence_];

  sub_251130B28();
  v9 = sub_251130AA8();
  (*(v3 + 8))(v6, v2);
  [v7 setTimestamp_];

  return v7;
}

unint64_t sub_2511174FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251117AD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251117534()
{
  v1 = *v0;
  v2 = 0x756F72676B636142;
  v3 = 28494;
  v4 = 0x67695220746C6954;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7562585;
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

uint64_t sub_2511176A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_251117738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25111782C()
{
  result = qword_27F41E868;
  if (!qword_27F41E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E868);
  }

  return result;
}

uint64_t sub_2511178B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_251117908()
{
  result = qword_27F41E880;
  if (!qword_27F41E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E880);
  }

  return result;
}

unint64_t sub_25111795C(unint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_251117968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_251131518() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562585 && a2 == 0xE300000000000000 || (sub_251131518() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28494 && a2 == 0xE200000000000000 || (sub_251131518() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67695220746C6954 && a2 == 0xEA00000000007468)
  {

    return 3;
  }

  else
  {
    v6 = sub_251131518();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_251117AD0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_251117AE0()
{
  result = qword_27F41E888;
  if (!qword_27F41E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E888);
  }

  return result;
}

unint64_t sub_251117B34()
{
  result = qword_27F41E510;
  if (!qword_27F41E510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E510);
  }

  return result;
}

uint64_t sub_251117BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 305))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_251117C14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 305) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 305) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 2;
    }
  }

  return result;
}

double sub_251117CBC(float32x4_t *a1, double result, double a3, double a4, float32x4_t a5)
{
  v5 = a1[1].u64[0];
  if (v5)
  {
    v6 = a1[2];
    v7 = 1.0 / v5;
    v8 = vmulq_n_f32(v6, v7);
    v9 = v5 - 1;
    if (v5 != 1)
    {
      v10 = a1 + 3;
      a5.i64[0] = 0;
      do
      {
        v11 = *v10++;
        v12 = vmulq_f32(v6, v11);
        *v12.f32 = vadd_f32(*v12.f32, *&vextq_s8(v12, v12, 8uLL));
        v12.f32[0] = vaddv_f32(*v12.f32);
        v8 = vaddq_f32(v8, vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a5, v12), 0), vsubq_f32(0, v11), v11), v7));
        --v9;
      }

      while (v9);
    }

    v13 = vmulq_f32(v8, v8);
    v14 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    if (vaddv_f32(v14) == 0.0)
    {
      return 0.0;
    }

    else
    {
      v15 = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
      v16 = vrsqrte_f32(v15);
      v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
      *&result = vmulq_n_f32(v8, vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).f32[0]).u64[0];
    }
  }

  return result;
}

BOOL sub_251117D90(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x131uLL);
  memcpy(__dst, a2, 0x131uLL);
  return sub_251117DE8(v4, __dst);
}

BOOL sub_251117DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v64[14] = *(a1 + 128);
  v65 = *(a1 + 136);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 32);
  v20 = *(a2 + 40);
  v23 = *(a2 + 48);
  v22 = *(a2 + 56);
  v25 = *(a2 + 64);
  v24 = *(a2 + 72);
  v46 = *(a2 + 88);
  v47 = *(a2 + 80);
  v44 = *(a2 + 104);
  v45 = *(a2 + 96);
  v42 = *(a2 + 120);
  v43 = *(a2 + 112);
  v39 = v4;
  v40 = v5;
  *v64 = v5;
  *&v64[1] = v4;
  v37 = v6;
  v38 = v7;
  *&v64[2] = v7;
  *&v64[3] = v6;
  v35 = v8;
  v36 = v9;
  *&v64[4] = v9;
  *&v64[5] = v8;
  v33 = v10;
  v34 = v11;
  *&v64[6] = v11;
  *&v64[7] = v10;
  v31 = v12;
  v32 = v13;
  *&v64[8] = v13;
  *&v64[9] = v12;
  v29 = v14;
  v30 = v15;
  *&v64[10] = v15;
  *&v64[11] = v14;
  v28 = v16;
  *&v64[12] = v16;
  *&v64[13] = v17;
  v41 = v17;
  if (sub_2510F7300(v64) == 1)
  {
    v62 = *(a2 + 128);
    v63 = *(a2 + 136);
    v48 = v18;
    v49 = v19;
    v50 = v21;
    v51 = v20;
    v52 = v23;
    v53 = v22;
    v54 = v25;
    v55 = v24;
    v56 = v47;
    v57 = v46;
    v58 = v45;
    v59 = v44;
    v60 = v43;
    v61 = v42;
    return sub_2510F7300(&v48) == 1;
  }

  else
  {
    v62 = *(a2 + 128);
    v63 = *(a2 + 136);
    v48 = v18;
    v49 = v19;
    v50 = v21;
    v51 = v20;
    v52 = v23;
    v53 = v22;
    v54 = v25;
    v55 = v24;
    v56 = v47;
    v57 = v46;
    v58 = v45;
    v59 = v44;
    v60 = v43;
    v61 = v42;
    if (sub_2510F7300(&v48) == 1 || v41 != v42 || v40 != v18 || v39 != v19 || v38 != v21 || v37 != v20 || v36 != v23 || v35 != v22 || v34 != v25 || v33 != v24 || v32 != v47 || v31 != v46 || v30 != v45 || v29 != v44)
    {
      return 0;
    }

    return v28 == v43;
  }
}

double sub_25111807C(float32x4_t a1)
{
  v2 = a1.f32[3];
  v3 = vmuls_lane_f32(a1.f32[0], a1, 3);
  v4 = a1.f32[2];
  v5 = vmuls_lane_f32(a1.f32[1], a1, 2);
  v6 = (v3 + v5) + (v3 + v5);
  v7 = vmulq_f32(a1, a1).f32[0];
  v8 = vmuls_lane_f32(a1.f32[1], *a1.f32, 1);
  atan2f(v6, 1.0 - ((v7 + v8) + (v7 + v8)));
  v9 = vmuls_lane_f32(v2, *a1.f32, 1);
  v10 = vmuls_lane_f32(a1.f32[0], a1, 2);
  v11 = (v9 - v10) + (v9 - v10);
  v12 = sqrtf(v11 + 1.0);
  v13 = sqrtf(1.0 - v11);
  v14 = atan2f(v12, v13);
  v15 = v14 + v14 + -1.57079633;
  v16 = vmuls_lane_f32(v2, a1, 2);
  v17 = vmuls_lane_f32(a1.f32[0], *a1.f32, 1);
  v18 = (v16 + v17) + (v16 + v17);
  v19 = vmuls_lane_f32(v4, a1, 2);
  atan2f(v18, 1.0 - ((v8 + v19) + (v8 + v19)));
  return v15;
}

uint64_t sub_2511181B4(char *a1)
{
  v34 = a1;
  v1 = sub_251130E18();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2511311D8();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2511311A8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_251130E38();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2510F65C4();
  sub_251130E28();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251118CF0(&qword_27F41E0F8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0);
  sub_2511312A8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v33);
  v14 = v13;
  v16 = v34;
  v15 = v35;
  v17 = sub_251131208();
  v15[2] = v16;
  v15[3] = v17;
  v18 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v19 = *&v16[v18];
  v20 = *&v19[OBJC_IVAR___HGMLConfigurationInternal_modelType];
  if (v20 >= 2)
  {
    if (v20 != 2)
    {
      result = sub_2511313B8();
      __break(1u);
      return result;
    }

    v21 = type metadata accessor for HGEspressoV2Model();
    swift_allocObject();
    v25 = v16;
    v23 = sub_25111DA2C(v19);
    v24 = &off_286332A40;
  }

  else
  {
    v21 = type metadata accessor for HGEspressoV1Model();
    swift_allocObject();
    v22 = v16;
    v23 = sub_2511041F4(v19);
    v24 = &off_286331C78;
  }

  v15[7] = v21;
  v15[8] = v24;
  v15[4] = v23;
  v26 = v15[3];
  aBlock[4] = sub_251118CD0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_5;
  v27 = _Block_copy(aBlock);

  v28 = v14;
  sub_251130E28();
  v41 = MEMORY[0x277D84F90];
  sub_251118CF0(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  v29 = v38;
  v30 = v40;
  sub_2511312A8();
  MEMORY[0x25306C010](0, v28, v29, v27);
  _Block_release(v27);

  (*(v39 + 8))(v29, v30);
  (*(v36 + 8))(v28, v37);

  return v15;
}

uint64_t sub_251118760(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[7];
  v5 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v4);
  return (*(v5 + 16))(v4, v5);
}

uint64_t sub_2511187E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E890, &qword_2511344E8);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E898, &qword_2511344F0);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v29 = a1;
  v28 = *(v2 + 24);
  v17 = v28;
  v18 = sub_2511311C8();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8A0, &qword_2511344F8);
  sub_2510F65C4();
  sub_2510F6658(&qword_27F41E8A8, &qword_27F41E8A0, &qword_2511344F8);
  sub_251118CF0(&qword_27F41E6F8, sub_2510F65C4);
  sub_251130DD8();
  sub_251118BFC(v7);

  type metadata accessor for HGMLOutput();
  sub_2510F6658(&qword_27F41E8B0, &qword_27F41E890, &qword_2511344E8);

  v20 = v25;
  sub_251130CE8();

  (*(v8 + 8))(v11, v20);
  sub_2510F6658(&qword_27F41E8B8, &qword_27F41E898, &qword_2511344F0);
  v21 = v26;
  v22 = sub_251130CD8();
  (*(v27 + 8))(v16, v21);
  return v22;
}

uint64_t sub_251118B90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_251118BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251118C64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  result = (*(v6 + 24))(v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251118CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251118D38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = 0xD00000000000001DLL;
  v4 = "w";
  v5 = a1;
  v6 = 0xD000000000000019;
  if (a1 == 4)
  {
    v7 = "maxNumBackgroundPredictions";
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = "numConsecutivePredictions";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "numWindowsInPool";
  }

  v9 = 0xD00000000000001CLL;
  if (v5 == 1)
  {
    v10 = "minGateOpenConfScoreThreshold";
  }

  else
  {
    v9 = 0xD000000000000010;
    v10 = "minGestureConfScoreThreshold";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "w";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001BLL;
      v4 = "numWindowsInPool";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000019;
      v4 = "maxNumBackgroundPredictions";
    }

    else
    {
      v2 = 0xD000000000000013;
      v4 = "numConsecutivePredictions";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001CLL;
      v4 = "minGateOpenConfScoreThreshold";
    }

    else
    {
      v4 = "minGestureConfScoreThreshold";
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_251131518();
  }

  return v13 & 1;
}

uint64_t sub_251118EB0()
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_251118FA8()
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_25111909C()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0xD000000000000015, 0x80000002511372F0);
  v1 = *v0;
  sub_2511310D8();
  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137310);
  v2 = v0[1];
  sub_2511310D8();
  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137330);
  v8 = v0[2];
  v3 = sub_251131508();
  MEMORY[0x25306BDC0](v3);

  MEMORY[0x25306BDC0](0xD000000000000016, 0x8000000251137350);
  v9 = v0[3];
  v4 = sub_251131508();
  MEMORY[0x25306BDC0](v4);

  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137370);
  v10 = v0[4];
  v5 = sub_251131508();
  MEMORY[0x25306BDC0](v5);

  MEMORY[0x25306BDC0](0xD000000000000017, 0x8000000251137390);
  v6 = v0[5];
  sub_2511310D8();
  MEMORY[0x25306BDC0](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_2511192BC()
{
  *v0;
  *v0;
  *v0;
  sub_251130F88();
}

uint64_t sub_2511193A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25111C94C();
  *a2 = result;
  return result;
}

unint64_t sub_2511193D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "numWindowsInPool";
  v5 = 0xD00000000000001BLL;
  v6 = "maxNumBackgroundPredictions";
  v7 = 0xD000000000000019;
  result = 0xD000000000000013;
  if (v3 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = "numConsecutivePredictions";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = "minGateOpenConfScoreThreshold";
  if (v3 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v9 = "minGestureConfScoreThreshold";
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    v10 = "w";
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

unint64_t sub_251119488()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000019;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_251119538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25111C94C();
  *a1 = result;
  return result;
}

uint64_t sub_25111956C(uint64_t a1)
{
  v2 = sub_25111D780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2511195A8(uint64_t a1)
{
  v2 = sub_25111D780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2511195E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E938, &qword_251134748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25111D780();
  sub_251131608();
  v11 = *v3;
  v18[15] = 0;
  sub_2511314B8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  sub_2511314B8();
  v13 = v3[2];
  v18[13] = 2;
  sub_2511314C8();
  v14 = v3[3];
  v18[12] = 3;
  sub_2511314C8();
  v15 = v3[4];
  v18[11] = 4;
  sub_2511314C8();
  v17 = v3[5];
  v18[10] = 5;
  sub_2511314B8();
  return (*(v6 + 8))(v9, v5);
}

double sub_2511197E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25111C998(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_251119844()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_25111B8E4(0, v2, 0);
    v3 = v23;
    v4 = -1 << *(v1 + 32);
    result = sub_2511312B8();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      if (((*(v1 + 64 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v8)
      {
        goto LABEL_23;
      }

      v9 = *(*(v1 + 48) + v6);
      v10 = (*(v1 + 56) + 48 * v6);
      v24 = *v10;
      v25 = v10[1];
      v11 = v10[2];
      v22 = v7;
      if (v9 <= 1)
      {
        if (*(*(v1 + 48) + v6))
        {
          v12 = 0xE300000000000000;
          v13 = 7562585;
        }

        else
        {
          v13 = 0x756F72676B636142;
          v12 = 0xEA0000000000646ELL;
        }
      }

      else if (v9 == 2)
      {
        v12 = 0xE200000000000000;
        v13 = 28494;
      }

      else if (v9 == 3)
      {
        v12 = 0xEA00000000007468;
        v13 = 0x67695220746C6954;
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E55;
      }

      MEMORY[0x25306BDC0](v13, v12);

      MEMORY[0x25306BDC0](8250, 0xE200000000000000);
      v14 = sub_25111909C();
      MEMORY[0x25306BDC0](v14);

      MEMORY[0x25306BDC0](10, 0xE100000000000000);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25111B8E4((v15 > 1), v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0xE000000000000000;
      result = sub_25111C55C(v6, v8, v22 & 1, v1);
      v6 = result;
      v8 = v18;
      if (!--v2)
      {
        sub_25111C5DC(result, v18, v7 & 1);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_251131358();

    v19 = MEMORY[0x25306BE80](v3, MEMORY[0x277D837D0]);
    v21 = v20;

    MEMORY[0x25306BDC0](v19, v21);

    return 0xD00000000000001ALL;
  }

  return result;
}

uint64_t sub_251119B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
  v7 = sub_251130B38();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionList) = a1;

  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool) = sub_25111A120(MEMORY[0x277D84F90]);
  v9 = sub_251120A30(v8);
  sub_25111C5E8(0, v79);
  v10 = v80;
  v11 = v81;
  v74 = v3;
  *(v3 + 16) = v9;
  v12 = (v3 + 16);
  v13 = v79[1];
  *(v12 + 1) = v79[0];
  *(v12 + 3) = v13;
  v12[5] = v10;
  v12[6] = v11;
  v14 = *(a1 + 16);
  v76 = a2;
  if (!v14)
  {

    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v15 = 0;
  do
  {
    if (v15 >= *(a1 + 16))
    {
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
      goto LABEL_45;
    }

    v19 = *(a1 + v15 + 32);
    sub_25111C5E8(*(a1 + v15 + 32), &v82);
    swift_beginAccess();
    v20 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v12;
    v22 = v77;
    *v12 = 0x8000000000000000;
    v23 = sub_25112F9FC(v19);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_40;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      sub_251126D28(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_25112F9FC(v19);
      if ((v29 & 1) != (v30 & 1))
      {
LABEL_46:
        result = sub_251131538();
        __break(1u);
        return result;
      }

LABEL_11:
      v31 = v77;
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v36 = v23;
    sub_251128138();
    v23 = v36;
    v31 = v77;
    if (v29)
    {
LABEL_3:
      v16 = (v31[7] + 48 * v23);
      v17 = v83;
      *v16 = v82;
      v16[1] = v17;
      v16[2] = v84;
      goto LABEL_4;
    }

LABEL_12:
    v31[(v23 >> 6) + 8] |= 1 << v23;
    *(v31[6] + v23) = v19;
    v32 = (v31[7] + 48 * v23);
    v33 = v83;
    *v32 = v82;
    v32[1] = v33;
    v32[2] = v84;
    v34 = v31[2];
    v27 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v27)
    {
      goto LABEL_43;
    }

    v31[2] = v35;
LABEL_4:
    ++v15;
    v18 = *v12;
    *v12 = v31;

    swift_endAccess();
  }

  while (v14 != v15);

  if (a2)
  {
LABEL_19:
    v75 = *(a2 + 16);
    if (!v75)
    {
LABEL_34:

      goto LABEL_35;
    }

    v37 = 0;
    v38 = (a2 + 80);
    while (1)
    {
      if (v37 >= *(a2 + 16))
      {
        goto LABEL_41;
      }

      v41 = *(v38 - 48);
      v43 = *(v38 - 5);
      v42 = *(v38 - 4);
      v45 = *(v38 - 3);
      v44 = *(v38 - 2);
      v46 = *(v38 - 1);
      v47 = *v38;
      swift_beginAccess();
      v48 = *v12;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *v12;
      v50 = v77;
      *v12 = 0x8000000000000000;
      v51 = sub_25112F9FC(v41);
      v53 = v50[2];
      v54 = (v52 & 1) == 0;
      v27 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v27)
      {
        goto LABEL_42;
      }

      v56 = v52;
      if (v50[3] < v55)
      {
        break;
      }

      if (v49)
      {
        goto LABEL_29;
      }

      v62 = v51;
      sub_251128138();
      v51 = v62;
      v58 = v77;
      if (v56)
      {
LABEL_21:
        v39 = (v58[7] + 48 * v51);
        *v39 = v43;
        v39[1] = v42;
        v39[2] = v45;
        v39[3] = v44;
        v39[4] = v46;
        v39[5] = v47;
        goto LABEL_22;
      }

LABEL_30:
      v58[(v51 >> 6) + 8] |= 1 << v51;
      *(v58[6] + v51) = v41;
      v59 = (v58[7] + 48 * v51);
      *v59 = v43;
      v59[1] = v42;
      v59[2] = v45;
      v59[3] = v44;
      v59[4] = v46;
      v59[5] = v47;
      v60 = v58[2];
      v27 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v27)
      {
        goto LABEL_44;
      }

      v58[2] = v61;
LABEL_22:
      ++v37;
      v40 = *v12;
      *v12 = v58;

      swift_endAccess();
      v38 += 7;
      a2 = v76;
      if (v75 == v37)
      {
        goto LABEL_34;
      }
    }

    sub_251126D28(v55, v49);
    v51 = sub_25112F9FC(v41);
    if ((v56 & 1) != (v57 & 1))
    {
      goto LABEL_46;
    }

LABEL_29:
    v58 = v77;
    if (v56)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_35:
  if (qword_27F41DFB0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v63 = sub_251130BE8();
  __swift_project_value_buffer(v63, qword_27F421A38);

  v64 = sub_251130BC8();
  v65 = sub_251131178();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v78 = v67;
    *v66 = 136315138;
    swift_beginAccess();
    v68 = *(v12 + 1);
    v85[0] = *v12;
    v85[1] = v68;
    v85[2] = *(v12 + 2);
    v86 = v12[6];
    sub_25111D69C(v85, &v77);
    v69 = sub_251119844();
    v71 = v70;
    sub_25111D6D4(v85);
    v72 = sub_2510FAC50(v69, v71, &v78);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_2510F2000, v64, v65, "%s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x25306CC10](v67, -1, -1);
    MEMORY[0x25306CC10](v66, -1, -1);
  }

  return v74;
}

uint64_t sub_25111A120(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25111B904(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v13;
    do
    {
      v9 = *(v4 - 8);
      v10 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E918, &qword_251134680);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E908, &qword_251134670);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25111B904((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 16 * v6;
      *(v7 + 32) = v11;
      *(v7 + 40) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25111A264(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_251130EE8();
  v6 = [v4 featureValueForName_];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 stringValue];

  v8 = sub_251130F18();
  v10 = v9;

  v11 = *(v3 + 16);
  v12 = sub_251130EE8();
  v13 = [v11 featureValueForName_];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = [v13 dictionaryValue];

  sub_251117B34();
  v15 = sub_251130E88();

  v16 = sub_25112E0F0(v15);

  if (!*(v16 + 16) || (v17 = sub_25112EA1C(v8, v10), (v18 & 1) == 0))
  {

    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  v20 = *(v3 + 16);
  v21 = sub_251130EE8();
  v22 = [v20 featureValueForName_];

  if (v22)
  {
    v23 = [v22 dictionaryValue];

    v24 = sub_251130E88();
    sub_25112E0F0(v24);

    v25 = sub_25111CE0C(v8, v10, v19);

    *a2 = v25;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_25111A518()
{
  v1 = v0;
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251130B88();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v85 - v17;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v19 = sub_251130BE8();
  v20 = __swift_project_value_buffer(v19, qword_27F421A38);

  v21 = sub_251130BC8();
  v22 = sub_251131178();
  v23 = os_log_type_enabled(v21, v22);
  v24 = &unk_27F421000;
  v93 = v16;
  v94 = v13;
  if (v23)
  {
    v25 = swift_slowAlloc();
    LODWORD(v87) = v22;
    v26 = v25;
    v86 = swift_slowAlloc();
    v95[0] = v86;
    *v26 = 134218242;
    v27 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
    swift_beginAccess();
    *(v26 + 4) = *(*(v1 + v27) + 16);

    *(v26 + 12) = 2080;
    v28 = *(v1 + v27);

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E908, &qword_251134670);
    v30 = v20;
    v31 = v3;
    v32 = v2;
    v33 = MEMORY[0x25306BE80](v28, v29);
    v35 = v34;

    v36 = v33;
    v2 = v32;
    v3 = v31;
    v20 = v30;
    v37 = sub_2510FAC50(v36, v35, v95);
    v24 = &unk_27F421000;

    *(v26 + 14) = v37;
    _os_log_impl(&dword_2510F2000, v21, v87, "[AG]Closing gate and aggregating %ld predictions:\n\t%s", v26, 0x16u);
    v38 = v86;
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x25306CC10](v38, -1, -1);
    MEMORY[0x25306CC10](v26, -1, -1);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) = 0;
  sub_251130B28();
  (*(v3 + 56))(v18, 0, 1, v2);
  v39 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
  swift_beginAccess();
  sub_2510F647C(v18, v1 + v39);
  swift_endAccess();

  v40 = sub_251130BC8();
  v41 = sub_251131178();
  if (os_log_type_enabled(v40, v41))
  {
    v87 = v20;
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    v43 = v93;
    sub_2510F64EC(v1 + v39, v93);
    v44 = (*(v3 + 48))(v43, 1, v2);

    if (v44 == 1)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_251130AE8();
    v47 = v46;
    (*(v3 + 8))(v43, v2);
    *(v42 + 4) = v47;
    _os_log_impl(&dword_2510F2000, v40, v41, "[AG]Closing gate at time: %f", v42, 0xCu);
    MEMORY[0x25306CC10](v42, -1, -1);
  }

  else
  {
  }

  v48 = [objc_allocWithZone(HGHeadGestureResult) init];
  v49 = v1 + v39;
  v50 = v94;
  sub_2510F64EC(v49, v94);
  result = (*(v3 + 48))(v50, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v51 = sub_251130AA8();
  v52 = *(v3 + 8);
  v52(v50, v2);
  [v48 setTimestamp_];

  v53 = sub_25111B2EC();
  v88 = v2;
  v93 = (v3 + 8);
  if (v53)
  {
    v54 = v24[313];
    swift_beginAccess();
    v55 = *(v1 + v54);
    v58 = *(v55 + 16);
    v56 = v55 + 16;
    v57 = v58;
    if (v58)
    {
      v59 = *(v56 + 16 * v57);
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v60 = sub_25111ADF8();
    if (v60 == 5)
    {
      v59 = 0;
    }

    else
    {
      v59 = v60;
    }
  }

  [v48 setHeadGesture_];
  sub_251117B34();
  sub_25111B3B8(v59);
  v61 = sub_251131238();
  [v48 setAvgConfidence_];

  v62 = v48;
  v63 = sub_251130BC8();
  v64 = sub_251131178();

  if (os_log_type_enabled(v63, v64))
  {
    v94 = v52;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v95[0] = v66;
    *v65 = 136315650;
    v67 = [v62 headGesture];
    v87 = v66;
    if (v67)
    {
      if (v67 == 2)
      {
        v68 = 0xE500000000000000;
        v69 = 0x656B616853;
      }

      else if (v67 == 1)
      {
        v68 = 0xE300000000000000;
        v69 = 6582094;
      }

      else
      {
        v68 = 0xE700000000000000;
        v69 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v68 = 0xEA0000000000646ELL;
      v69 = 0x756F72476B636142;
    }

    v70 = sub_2510FAC50(v69, v68, v95);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2080;
    v71 = [v62 uuid];
    v72 = v89;
    sub_251130B68();

    sub_251110FA0();
    v73 = v91;
    v74 = sub_251131508();
    v76 = v75;
    (*(v90 + 8))(v72, v73);
    v77 = sub_2510FAC50(v74, v76, v95);

    *(v65 + 14) = v77;
    *(v65 + 22) = 2048;
    v78 = [v62 timestamp];
    v79 = v92;
    sub_251130AF8();

    sub_251130AE8();
    v81 = v80;
    v94(v79, v88);
    *(v65 + 24) = v81;
    _os_log_impl(&dword_2510F2000, v63, v64, "[AG] ML final prediction: %s, %s, at %f", v65, 0x20u);
    v82 = v87;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v82, -1, -1);
    MEMORY[0x25306CC10](v65, -1, -1);
  }

  v83 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v84 = *(v1 + v83);
  *(v1 + v83) = MEMORY[0x277D84F90];

  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed) = v59;
  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = 0;
  return v62;
}

uint64_t sub_25111ADF8()
{
  v1 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 5;
  }

  v4 = *(v0 + v1);

  v5 = (v2 + 40);
  v6 = MEMORY[0x277D84F90];
  do
  {
    v10 = *(v5 - 8);
    if (v10)
    {
      v11 = *v5;
      v54 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25111B904(0, *(v6 + 16) + 1, 1);
        v6 = v54;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25111B904((v7 > 1), v8 + 1, 1);
        v6 = v54;
      }

      *(v6 + 16) = v8 + 1;
      v9 = v6 + 16 * v8;
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
    }

    v5 += 2;
    --v3;
  }

  while (v3);

  v12 = *(v6 + 16);
  if (v12)
  {
    v54 = MEMORY[0x277D84F90];
    sub_25111B9E4(0, v12, 0);
    v13 = v54;
    v14 = *(v54 + 16);
    v15 = 32;
    do
    {
      v16 = *(v6 + v15);
      v54 = v13;
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_25111B9E4((v17 > 1), v14 + 1, 1);
        v13 = v54;
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + v14 + 32) = v16;
      v15 += 16;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v19 = *(v13 + 16);
  v20 = *(v0 + v1);
  v21 = *(v20 + 16);
  if (v19)
  {
    v53 = *(v20 + 16);
    v54 = MEMORY[0x277D84F90];
    sub_25111B9C4(0, v19, 0);
    v22 = v54;
    v23 = *(v54 + 16);
    v24 = 16 * v23;
    v25 = 32;
    v26 = v19;
    do
    {
      v27 = *(v13 + v25);
      v54 = v22;
      v28 = *(v22 + 24);
      v29 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        sub_25111B9C4((v28 > 1), v23 + 1, 1);
        v22 = v54;
      }

      *(v22 + 16) = v29;
      v30 = v22 + v24;
      *(v30 + 32) = v27;
      *(v30 + 40) = 1;
      v24 += 16;
      ++v25;
      v23 = v29;
      --v26;
    }

    while (v26);

    v21 = v53;
    if (*(v22 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
      v31 = sub_2511313F8();
      goto LABEL_27;
    }
  }

  v31 = MEMORY[0x277D84F98];
LABEL_27:
  v54 = v31;
  sub_25111CBE4(v22, 1, &v54);

  v32 = 1 << *(v54 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v54 + 64);
  if (v34)
  {
    v35 = 0;
    v36 = __clz(__rbit64(v34));
    v37 = (v34 - 1) & v34;
    v38 = (v32 + 63) >> 6;
LABEL_35:
    v42 = v21 - v19;
    v43 = *(v54 + 48);
    v44 = *(v54 + 56);
    v45 = *(v43 + v36);
    v46 = *(v44 + 8 * v36);
    v47 = v46;
    if (!v37)
    {
      goto LABEL_37;
    }

    do
    {
      v48 = v35;
LABEL_41:
      v49 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v50 = v49 | (v48 << 6);
      v51 = *(v43 + v50);
      v52 = *(v44 + 8 * v50);
      if (v47 < v52)
      {
        v45 = v51;
        v46 = v52;
      }

      if (v47 <= v52)
      {
        v47 = v52;
      }
    }

    while (v37);
    while (1)
    {
LABEL_37:
      v48 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      if (v48 >= v38)
      {
        break;
      }

      v37 = *(v54 + 64 + 8 * v48);
      ++v35;
      if (v37)
      {
        v35 = v48;
        goto LABEL_41;
      }
    }

    if (v46 >= v42)
    {
      return v45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v38 = (v32 + 63) >> 6;
    while (v38 - 1 != v40)
    {
      v35 = v40 + 1;
      v41 = *(v54 + 8 * v40 + 72);
      v39 -= 64;
      ++v40;
      if (v41)
      {
        v37 = (v41 - 1) & v41;
        v36 = __clz(__rbit64(v41)) - v39;
        goto LABEL_35;
      }
    }

    return 0;
  }
}

uint64_t sub_25111B234(unsigned __int8 a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8 < a2)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    if (v8 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    v10 = ~v9 + v8;
    for (i = (v7 - 16 * v9 + 16 * v8 + 32); ; i += 16)
    {
      result = v9 == 0;
      if (!v9)
      {
        break;
      }

      if (++v10 >= v8)
      {
        __break(1u);
        goto LABEL_13;
      }

      v12 = *i;
      --v9;
      if (v12 != a1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25111B2EC()
{
  v1 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5 && (v6 = 16 * v4, v7 = *(v3 + v6), *(v3 + v6)))
  {
    swift_beginAccess();
    v8 = *(v0 + 16);
    v9 = *(v0 + 56);
    if (*(v8 + 16))
    {
      v10 = *(v0 + 16);
      v11 = sub_25112F9FC(v7);
      if (v12)
      {
        v9 = *(*(v8 + 56) + 48 * v11 + 32);
      }
    }

    v13 = sub_25111B234(v7, v9);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_25111B3B8(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a1;

    v8 = (v4 + 40);
    v9 = MEMORY[0x277D84F90];
    do
    {
      if (*(v8 - 8) == v7)
      {
        v13 = *v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25111B904(0, *(v9 + 16) + 1, 1);
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_25111B904((v10 > 1), v11 + 1, 1);
        }

        *(v9 + 16) = v11 + 1;
        v12 = v9 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v13;
      }

      v8 += 2;
      --v5;
    }

    while (v5);

    v14 = *(v9 + 16);
    if (v14)
    {
LABEL_11:
      sub_25111B924(0, v14, 0);
      v15 = v6;
      v16 = *(v6 + 16);
      v17 = 40;
      do
      {
        v18 = *(v9 + v17);
        v19 = *(v15 + 24);
        if (v16 >= v19 >> 1)
        {
          sub_25111B924((v19 > 1), v16 + 1, 1);
        }

        *(v15 + 16) = v16 + 1;
        *(v15 + 8 * v16 + 32) = v18;
        v17 += 16;
        ++v16;
        --v14;
      }

      while (v14);

      v20 = *(v15 + 16);
      if (!v20)
      {
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v15 = MEMORY[0x277D84F90];
  v20 = *(MEMORY[0x277D84F90] + 16);
  if (!v20)
  {
  }

LABEL_16:
  if (v20 <= 3)
  {
    v21 = 0;
    v22 = 0.0;
LABEL_24:
    v26 = v20 - v21;
    v27 = (v15 + 8 * v21 + 32);
    do
    {
      v28 = *v27++;
      v22 = v22 + v28;
      --v26;
    }

    while (v26);
  }

  v21 = v20 & 0x7FFFFFFFFFFFFFFCLL;
  v23 = (v15 + 48);
  v22 = 0.0;
  v24 = v20 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v25 = *v23;
    v22 = v22 + *(v23 - 2) + *(v23 - 1) + *v23 + v23[1];
    v23 += 4;
    v24 -= 4;
  }

  while (v24);
  if (v20 != v21)
  {
    goto LABEL_24;
  }
}

uint64_t sub_25111B630()
{
  v1 = v0[2];

  sub_2510F655C(v0 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed);
  v2 = *(v0 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool);

  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionList);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGPredictionAggregator()
{
  result = qword_27F41E8C8;
  if (!qword_27F41E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25111B710()
{
  sub_2510F4964();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25111B7D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25111B818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_25111B874(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25111B894@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_25111B8C4(char *a1, int64_t a2, char a3)
{
  result = sub_25111BA04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B8E4(char *a1, int64_t a2, char a3)
{
  result = sub_25111BAF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B904(char *a1, int64_t a2, char a3)
{
  result = sub_25111BC04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B924(char *a1, int64_t a2, char a3)
{
  result = sub_25111BD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B944(char *a1, int64_t a2, char a3)
{
  result = sub_25111BE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B964(char *a1, int64_t a2, char a3)
{
  result = sub_25111BF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B984(char *a1, int64_t a2, char a3)
{
  result = sub_25111C014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9A4(char *a1, int64_t a2, char a3)
{
  result = sub_25111C118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9C4(char *a1, int64_t a2, char a3)
{
  result = sub_25111C364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9E4(char *a1, int64_t a2, char a3)
{
  result = sub_25111C468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111BA04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E920, &qword_251134688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25111BAF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8D8, &qword_251134620);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25111BC04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C0, &unk_251134640);
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

char *sub_25111BD08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E650, &qword_2511334D8);
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

char *sub_25111BE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E678, &qword_251133500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25111BF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E670, &qword_2511334F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25111C014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E910, &qword_251134678);
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

char *sub_25111C118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E668, &qword_2511334F0);
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

void *sub_25111C21C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E0, &qword_251134628);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E8, &unk_251134630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25111C364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F8, &qword_251134658);
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

char *sub_25111C468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E900, &unk_251134660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25111C55C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_2511312C8();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25111C5DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_25111C5E8(char a1@<W0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    if (qword_27F41DFA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_27F41DFA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_27F41DFA8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v3 = qword_27F421A30;
  v4 = *(qword_27F421A30 + 16);
  v5 = sub_251130EE8();
  [v4 doubleForKey_];
  v7 = v6;

  v8 = *(v3 + 16);
  v9 = sub_251130EE8();
  [v8 doubleForKey_];
  v11 = v10;

  v12 = *(v3 + 16);
  v13 = sub_251130EE8();
  v14 = [v12 integerForKey_];

  v15 = *(v3 + 16);
  v16 = sub_251130EE8();
  v17 = [v15 integerForKey_];

  v18 = *(v3 + 16);
  v19 = sub_251130EE8();
  v20 = [v18 integerForKey_];

  v21 = *(v3 + 16);
  v22 = sub_251130EE8();
  [v21 doubleForKey_];
  v24 = v23;

  *a2 = v7;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v20;
  a2[5] = v24;
}

uint64_t sub_25111C94C()
{
  v0 = sub_251131428();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25111C998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E928, &qword_251134740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25111D780();
  sub_2511315F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = 0;
  sub_251131458();
  v12 = v11;
  v25 = 1;
  sub_251131458();
  v14 = v13;
  v24 = 2;
  v15 = sub_251131468();
  v23 = 3;
  v16 = sub_251131468();
  v22 = 4;
  v20 = sub_251131468();
  v21 = 5;
  sub_251131458();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v20;
  a2[5] = v18;
  return result;
}

unint64_t sub_25111CBE4(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    LOBYTE(v5) = a2;
    v6 = result;
    v7 = *(result + 32);
    v8 = *(result + 40);
    v9 = *a3;
    result = sub_25112F9FC(v7);
    v11 = v9[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_25;
    }

    LOBYTE(v15) = v10;
    if (v9[3] < v14)
    {
      sub_251127BD4(v14, v5 & 1);
      v16 = *a3;
      result = sub_25112F9FC(v7);
      if ((v15 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_251131538();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v21 = result;
      sub_2511286E4();
      result = v21;
      v18 = *a3;
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

LABEL_7:
    v18 = *a3;
    if (v15)
    {
LABEL_8:
      v19 = (v18[7] + 8 * result);
      v20 = *v19 + v8;
      if (!__OFADD__(*v19, v8))
      {
LABEL_13:
        *v19 = v20;
        v15 = v3 - 1;
        if (v3 == 1)
        {
          return result;
        }

        v5 = (v6 + 56);
        v3 = 1;
        while (1)
        {
          v6 = *(v5 - 8);
          v8 = *v5;
          v26 = *a3;
          result = sub_25112F9FC(v6);
          v28 = v26[2];
          v29 = (v27 & 1) == 0;
          v13 = __OFADD__(v28, v29);
          v30 = v28 + v29;
          if (v13)
          {
            goto LABEL_25;
          }

          LOBYTE(v7) = v27;
          if (v26[3] < v30)
          {
            sub_251127BD4(v30, 1);
            v31 = *a3;
            result = sub_25112F9FC(v6);
            if ((v7 & 1) != (v32 & 1))
            {
              goto LABEL_5;
            }
          }

          v33 = *a3;
          if (v7)
          {
            v23 = (v33[7] + 8 * result);
            v25 = *v23 + v8;
            if (__OFADD__(*v23, v8))
            {
              break;
            }
          }

          else
          {
            v33[(result >> 6) + 8] |= 1 << result;
            *(v33[6] + result) = v6;
            *(v33[7] + 8 * result) = v8;
            v24 = v33[2];
            v23 = v33 + 2;
            v25 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_26;
            }
          }

          v5 += 2;
          *v23 = v25;
          if (!--v15)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    *(v18[7] + 8 * result) = v8;
    v22 = v18[2];
    v19 = v18 + 2;
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_26:
      __break(1u);
      return result;
    }

    goto LABEL_13;
  }

  return result;
}