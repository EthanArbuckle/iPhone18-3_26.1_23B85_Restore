unint64_t sub_1C59CF808()
{
  result = qword_1EC192530;
  if (!qword_1EC192530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192538);
    sub_1C59CF894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192530);
  }

  return result;
}

unint64_t sub_1C59CF894()
{
  result = qword_1EC192540;
  if (!qword_1EC192540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192548);
    sub_1C59CF920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192540);
  }

  return result;
}

unint64_t sub_1C59CF920()
{
  result = qword_1EC192550;
  if (!qword_1EC192550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192550);
  }

  return result;
}

void sub_1C59CF9F4()
{
  sub_1C5BC7A24();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C59CFA88()
{
  type metadata accessor for MotionAssetDownload.AssetKey(0);
  v5 = sub_1C5BCB304();
  v7 = v0;
  MEMORY[0x1C694F170](120, 0xE100000000000000);
  v1 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v1);

  v2 = v5;
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192580, MEMORY[0x1E6968FB0]);
  v6 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](2113568, 0xE300000000000000);
  MEMORY[0x1C694F170](v2, v7);

  MEMORY[0x1C694F170](540945696, 0xE400000000000000);
  v3 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v3);

  return v6;
}

id sub_1C59CFBDC(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7A24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v9 = sub_1C5BC7994();
  v10 = [v8 initWithURL:v9 options:0];

  sub_1C5BC79A4();
  sub_1C5BC7984();
  (*(v5 + 8))(v7, v4);
  v11 = sub_1C5BCAE44();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = sub_1C5BCAE74();
  *(inited + 40) = v13;
  v14 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v15 = *(v14 + 20);
  *(inited + 72) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(v5 + 16))(boxed_opaque_existential_0, v2 + v15, v4);
  *(inited + 80) = sub_1C5BCAE74();
  *(inited + 88) = v17;
  v18 = (v2 + *(v14 + 24));
  v19 = *v18;
  v20 = v18[1];
  type metadata accessor for CGSize(0);
  *(inited + 120) = v21;
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8);
  swift_arrayDestroy();
  v22 = sub_1C5BCACA4();

  v23 = [a1 assetDownloadTaskWithURLAsset:v10 assetTitle:v11 assetArtworkData:0 options:v22];

  return v23;
}

uint64_t sub_1C59CFE80(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8));
  return sub_1C5BCBF94();
}

uint64_t sub_1C59CFF50(uint64_t a1, uint64_t a2)
{
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  v4 = (v2 + *(a2 + 24));
  v5 = *v4;
  v6 = v4[1];

  return sub_1C5BC37A0(v5, v6);
}

uint64_t sub_1C59D0014(uint64_t a1, uint64_t a2)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(v2 + *(a2 + 24)), *(v2 + *(a2 + 24) + 8));
  return sub_1C5BCBF94();
}

BOOL sub_1C59D00E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C5BC79D4() & 1) == 0 || (sub_1C5BC79D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  v11 = v7 == *v9;
  return v8 == v10 && v11;
}

uint64_t sub_1C59D01A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59D01EC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1C59D01F8()
{
  MEMORY[0x1C694F170](*v0, v0[1]);
  MEMORY[0x1C694F170](2112093, 0xE300000000000000);
  v1 = sub_1C59CFA88();
  MEMORY[0x1C694F170](v1);

  return 91;
}

uint64_t sub_1C59D02C4()
{
  result = type metadata accessor for MotionAssetDownload.AssetKey(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59D034C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*((*(a6 + 224))(a4, a6) + 96) + 24);

  v14 = a1 * 5220.0;
  sub_1C5BC7AB4();
  sub_1C5BC7A84();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  v19 = v14;
  v18 = xmmword_1C5BD4E80;
  v20 = xmmword_1C5BD4E80;
  v21 = 1;
  v22 = v16;
  v23 = 0;
  v24 = 0;
  sub_1C596D6D0(&v19);
  swift_beginAccess();
  *(v13 + 24) = v14;
  *(v13 + 32) = v18;
  *(v13 + 48) = 1;
  *(v13 + 56) = v16;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
}

uint64_t sub_1C59D04F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 16) = a6;
  v7 = sub_1C5BCBB84();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  sub_1C5BCB1E4();
  *(v6 + 120) = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();
  *(v6 + 128) = v9;
  *(v6 + 136) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C59D0620, v9, v8);
}

uint64_t sub_1C59D0620()
{
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1C59D06EC;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D06EC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v2[19] = v0;

  v6 = *(v4 + 8);
  v2[20] = v6;
  v2[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {
    v9 = sub_1C59D0B34;
  }

  else
  {
    v9 = sub_1C59D0898;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1C59D0898()
{
  sub_1C59D034C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = sub_1C5BCBFC4();
  v3 = v2;
  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D098C;

  return sub_1C59D9270(v1, v3, 0, 0, 1);
}

uint64_t sub_1C59D098C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 64);
  *(*v1 + 184) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D0E30;
  }

  else
  {
    v8 = sub_1C59D0B50;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D0B50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v2 + 224);
  *(v0 + 192) = v3;
  *(v0 + 200) = (v2 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  v3(v1);
  *(v0 + 256) = 1;

  sub_1C5BC7F34();

  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D0C88;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D0C88()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 64);
  *(*v1 + 216) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D1120;
  }

  else
  {
    v8 = sub_1C59D0E4C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D0E4C()
{
  (*(v0 + 192))(*(v0 + 40), *(v0 + 56));
  *(v0 + 257) = 2;

  sub_1C5BC7F34();

  v1 = sub_1C5BCBFC4();
  v3 = v2;
  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D0F78;

  return sub_1C59D9270(v1, v3, 0, 0, 1);
}

uint64_t sub_1C59D0F78()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 64);
  *(*v1 + 232) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D1400;
  }

  else
  {
    v8 = sub_1C59D113C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D113C()
{
  (*(v0 + 192))(*(v0 + 40), *(v0 + 56));
  *(v0 + 258) = 0;

  sub_1C5BC7F34();

  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1C59D1258;

  return sub_1C59D9270(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D1258()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  *(*v1 + 248) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D14BC;
  }

  else
  {
    v8 = sub_1C59D141C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D141C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C59D1528()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] = 2;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = 2;
  v5 = &v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette];
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDA48EA8;
  v7 = unk_1EDA48EB0;
  v8 = qword_1EDA48EB8;
  v9 = unk_1EDA48EC0;
  *v5 = qword_1EDA48EA8;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v10 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs;
  v11 = qword_1EDA4DAE0;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  *&v0[v10] = xmmword_1EDA5DB50;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformValueSubscriber] = 0;
  v16 = &v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v16[48] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset] = 0;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = sub_1C59D18D4();
  v19 = result;
  if (!(result >> 62))
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_14:

    v24 = sub_1C5BCB214();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v17;
    v26 = v17;
    sub_1C5A0BB28(0, 0, v4, &unk_1C5BD5058, v25);

    sub_1C5924EF4(v4, &qword_1EC1930A0);
    return v26;
  }

  result = sub_1C5BCB984();
  v20 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C694FD20](v21, v19);
      }

      else
      {
        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      [v17 addSubview_];
      [v23 setAlpha_];
    }

    while (v20 != v21);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C59D18D4()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    v2 = sub_1C59D42C4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C59D1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C59D19E0;

  return sub_1C59D7F78();
}

uint64_t sub_1C59D19E0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C59D1AE0, 0, 0);
}

uint64_t sub_1C59D1AE0()
{
  sub_1C5BCB1E4();
  *(v0 + 40) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C59D1B74, v2, v1);
}

uint64_t sub_1C59D1B74()
{
  v9 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  *(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset) = v1;
  v4 = v0[4];
  if (v3)
  {
  }

  else if (v4)
  {
    v5 = *(v0[2] + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    if ((v5 - 2) >= 3 && v5 == 1)
    {
      v7 = 1;
      v8 = 1;
      swift_retain_n();
      sub_1C59D9228(1uLL);
      sub_1C59D2560(&v7, &v8, 1);
    }

    else
    {
    }
  }

  v0[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C59D1C7C, 0, 0);
}

uint64_t sub_1C59D1C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C59D1D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  v4 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode;
  v5 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask;
  v6 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask];
  if (*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] == 4)
  {
    if (v6)
    {
      return;
    }

    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] = 0;
    v7 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
    *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = 4;
    sub_1C59D9228(v7);
    sub_1C59D924C(v7);
    aBlock[0] = v7;
    v8 = v0;
    sub_1C59D32E8(aBlock);
    sub_1C59D924C(v7);
    v9 = sub_1C5BCB214();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_1C5BCB1E4();
    v10 = v0;
    v11 = sub_1C5BCB1D4();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    *&v8[v5] = sub_1C59D2FAC(0, 0, v3, &unk_1C5BD4FF0, v12);
  }

  else
  {
    if (v6)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
      sub_1C5BCB2A4();
    }

    *&v0[v5] = 0;

    v14 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState;
    if (v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState] == 1)
    {
      v15 = *&v0[v4];
      v16 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
      *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = v15;
      sub_1C59D9228(v15);
      sub_1C59D9228(v16);
      sub_1C59D924C(v16);
      aBlock[0] = v16;
      sub_1C59D32E8(aBlock);
      sub_1C59D924C(v16);
      return;
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C59D9E20;
    *(v19 + 24) = v18;
    aBlock[4] = sub_1C59DA404;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C59D32C0;
    aBlock[3] = &block_descriptor_108;
    v20 = _Block_copy(aBlock);
    v21 = v0;

    [v17 performWithoutAnimation_];
    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return;
    }

    v0[v14] = 1;
  }
}

uint64_t sub_1C59D209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BCBB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1C5BCB1E4();
  v4[6] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C59D2190, v7, v6);
}

uint64_t sub_1C59D2190()
{
  v1 = sub_1C5BCBFC4();
  v3 = v2;
  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D226C;

  return sub_1C59D9270(v1, v3, 0, 0, 1);
}

uint64_t sub_1C59D226C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1C59D24F4;
  }

  else
  {
    v8 = sub_1C59D2404;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D2404()
{
  v7 = v0;
  v1 = v0[10];

  sub_1C5BCB2E4();
  if (v1)
  {
  }

  else
  {
    v3 = v0[2];
    *(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled) = 1;
    v5 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    v6 = v5;
    sub_1C59D9228(v5);
    sub_1C59D9228(v5);
    sub_1C59D2560(&v5, &v6, 1);
    sub_1C59D924C(v6);
    sub_1C59D924C(v5);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1C59D24F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C59D2560(unint64_t *a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  v68 = *a1;
  aBlock = *a1;
  v66 = v5;
  v79 = v5;
  if ((sub_1C59D9B20(&aBlock, &v79) & 1) == 0 && (a3 & 1) == 0)
  {
    return;
  }

  v69 = sub_1C59D18D4();
  type metadata accessor for AnimationGroup();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v72 = (v6 + 16);
  *(v6 + 24) = v7;
  v8 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v3[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_1C5BCB2A4();
  }

  *&v3[v8] = 0;

  v67 = v3;
  if (v68 == 1)
  {
    sub_1C59D923C(1uLL);
    sub_1C59D5170();
  }

  v64 = v66 - 3;
  if (v66 == 3)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v17 timingParameters:0.9];

    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    v20 = v3;
    sub_1C59D7718(v18, sub_1C59D9C64, v19, 0.0);
  }

  else if (v66 == 4)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v9 timingParameters:0.25];

    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v77 = sub_1C59D9C6C;
    v78 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1C596D09C;
    v76 = &block_descriptor_43;
    v12 = _Block_copy(&aBlock);
    v13 = v3;

    [v10 addAnimations_];
    _Block_release(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v77 = sub_1C59D9C74;
    v78 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1C59D56C4;
    v76 = &block_descriptor_49;
    v15 = _Block_copy(&aBlock);
    v16 = v13;

    [v10 addCompletion_];
    _Block_release(v15);
    sub_1C59D7718(v10, 0, 0, 0.0);
  }

  v65 = v6;
  if (v68 == 2)
  {

    sub_1C59D5814(v21);
    v23 = v22;
    sub_1C59D45C0();
    v70 = *(v23 + 16);
    v71 = v23;
    if (v70)
    {
      v6 = 0;
      v24 = (v23 + 40);
      while (v6 < *(v71 + 16))
      {
        v26 = *(v24 - 1);
        v25 = *v24;
        v27 = objc_allocWithZone(MEMORY[0x1E69DC908]);
        v28 = v25;
        v29 = v26;
        v30 = [v27 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v31 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v30 timingParameters:0.5];

        v32 = swift_allocObject();
        *(v32 + 16) = v29;
        *(v32 + 24) = v25;
        v77 = sub_1C59D9C18;
        v78 = v32;
        aBlock = MEMORY[0x1E69E9820];
        v74 = 1107296256;
        v75 = sub_1C596D09C;
        v76 = &block_descriptor_34;
        v33 = _Block_copy(&aBlock);
        swift_retain_n();
        v34 = v29;
        v35 = v28;

        [v31 addAnimations_];
        _Block_release(v33);

        swift_beginAccess();
        v36 = *v72;
        v37 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_1C5B761C4(0, *(v36 + 2) + 1, 1, v36);
          *v72 = v36;
        }

        v40 = *(v36 + 2);
        v39 = *(v36 + 3);
        if (v40 >= v39 >> 1)
        {
          v36 = sub_1C5B761C4((v39 > 1), v40 + 1, 1, v36);
        }

        *(v36 + 2) = v40 + 1;
        v41 = &v36[16 * v40];
        *(v41 + 4) = v37;
        *(v41 + 5) = v6 * 0.03;
        *v72 = v36;
        swift_endAccess();

        v24 += 2;
        if (v70 == ++v6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_20:

    v6 = v65;
    v3 = v67;
  }

  if (v66 <= 2)
  {
    if (v66)
    {
      if (v66 == 1)
      {
        v50 = objc_allocWithZone(MEMORY[0x1E69DC908]);
        sub_1C59D923C(1uLL);
        v51 = [v50 initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v47 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v51 timingParameters:0.15];

        v52 = swift_allocObject();
        *(v52 + 16) = v3;
        v53 = v3;
        sub_1C59D7718(v47, sub_1C59D9C10, v52, 0.0);
        v3 = v67;

        goto LABEL_38;
      }

      if (v66 == 2)
      {
        if (!(v69 >> 62))
        {
          v42 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v42)
          {
LABEL_41:

            v3 = v67;
            sub_1C59D45C0();
            goto LABEL_42;
          }

LABEL_27:
          if (v42 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v42; ++i)
          {
            if ((v69 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x1C694FD20](i, v69);
            }

            else
            {
              v44 = *(v69 + 8 * i + 32);
            }

            v45 = v44;
            [v44 setAlpha_];
          }

          goto LABEL_41;
        }

LABEL_40:
        v42 = sub_1C5BCB984();
        if (!v42)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1C59D923C(0);
    }

LABEL_36:

    v46 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v47 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.15];

    v48 = swift_allocObject();
    *(v48 + 16) = v3;
    *(v48 + 24) = v68;
    sub_1C59D9228(v68);
    v49 = v3;
    sub_1C59D7718(v47, sub_1C59D9C08, v48, 0.0);
    v3 = v67;
LABEL_38:

    goto LABEL_42;
  }

  if (v64 >= 2)
  {
    goto LABEL_36;
  }

LABEL_42:
  v54 = v3;
  v55 = *&v3[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v6;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1C59D9C00;
    *(v57 + 24) = v56;
    swift_beginAccess();
    v58 = *(v55 + 24);
    v59 = v54;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = v58;
    if ((v60 & 1) == 0)
    {
      v58 = sub_1C5B762D0(0, v58[2] + 1, 1, v58);
      *(v55 + 24) = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_1C5B762D0((v61 > 1), v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    v63 = &v58[2 * v62];
    v63[4] = sub_1C59D9200;
    v63[5] = v57;
    *(v55 + 24) = v58;
    swift_endAccess();
  }

  else
  {
    sub_1C59D78A4();
  }
}

uint64_t sub_1C59D2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C5929BC8(a3, v22 - v9);
  v11 = sub_1C5BCB214();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C5924EF4(v10, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C5BCB194();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1C5BCAED4() + 32;

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

      sub_1C5924EF4(a3, &qword_1EC1930A0);

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

  sub_1C5924EF4(a3, &qword_1EC1930A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1C59D3248(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode);
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode) = v2;
  sub_1C59D9228(v2);
  sub_1C59D9228(v3);
  sub_1C59D924C(v3);
  v5 = v3;
  sub_1C59D32E8(&v5);

  return sub_1C59D924C(v3);
}

unint64_t sub_1C59D32E8(unint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode;
  if (*a1 - 2 >= 3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    v5 = v2 != v4 && v2 >= 2;
    if (v5 && v4 >= 5)
    {
      v7 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
      if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
      {
        sub_1C59D9228(*a1);
        sub_1C59D9228(v4);

        sub_1C5BC7EF4();
        sub_1C59D924C(v4);
        sub_1C59D924C(v2);
      }

      *(v1 + v7) = 0;

      v3 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode;
    }
  }

  v10 = *(v1 + v3);
  v11 = v2;
  sub_1C59D9228(v10);
  sub_1C59D3408(&v11, &v10);
  sub_1C59D924C(v10);
  v10 = *(v1 + v3);
  v11 = v2;
  sub_1C59D9228(v10);
  sub_1C59D2560(&v11, &v10, 0);
  v8 = v10;

  return sub_1C59D924C(v8);
}

void sub_1C59D3408(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192628);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - v17;
  v19 = *a2;
  if (!v19)
  {
    if (*a1)
    {
      v24 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber);
      sub_1C59D9228(0);
      if (!v24)
      {
        sub_1C59D496C();
        if (qword_1EDA490C8 != -1)
        {
          swift_once();
        }

        v25 = qword_1EDA5DB00;
        v26 = sub_1C5BCB214();
        (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = v25;

        sub_1C5AD0FB8(0, 0, v18, &unk_1C5BD5020, v27);
      }
    }

    else
    {
      sub_1C59D9228(0);
      sub_1C59D9228(0);
    }

    sub_1C59D923C(0);
    goto LABEL_18;
  }

  v35 = v12;
  v20 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber;
  if (*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber))
  {
    v36 = v13;
    if (qword_1EDA490C8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDA5DB00;
    v22 = sub_1C5BCB214();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;

    sub_1C5AD0FB8(0, 0, v18, &unk_1C5BD5018, v23);

    if (*(v3 + v20))
    {

      sub_1C5BC7EF4();
    }

    v13 = v36;
    *(v3 + v20) = 0;
  }

  if (v19 < 5)
  {
LABEL_18:
    v32 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
    if (*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
    {

      sub_1C5BC7EF4();
    }

    *(v3 + v32) = 0;
    goto LABEL_21;
  }

  if (*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
  {
    return;
  }

  v34 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
  swift_beginAccess();
  sub_1C59D923C(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658);
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C592535C(0, &qword_1EDA4E620);
  v28 = sub_1C5BCB5A4();
  v38 = v28;
  v29 = sub_1C5BCB594();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  sub_1C5924F54(&qword_1EC192630, &qword_1EC1916B8);
  v36 = v13;
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v8, &unk_1EC199F20);

  (*(v37 + 8))(v11, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&qword_1EC192638, &qword_1EC192628);
  v30 = v35;
  v31 = sub_1C5BC8114();

  sub_1C59D924C(v19);
  (*(v36 + 8))(v15, v30);
  *(v3 + v34) = v31;
LABEL_21:
}

void sub_1C59D3A80()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  switch(v1)
  {
    case 2:
      return;
    case 3:
      v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
      v3 = sub_1C59D18D4();
      v4 = v3;
      if (v3 >> 62)
      {
        v5 = sub_1C5BCB984();
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1C694FD20](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [v7 setBackgroundColor_];
        }

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_28;
    case 4:
      return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v9 = sub_1C59D18D4();
  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_1C5BCB984();
    if (v11)
    {
LABEL_15:
      if (v11 >= 1)
      {
        for (j = 0; j != v11; ++j)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1C694FD20](j, v10);
          }

          else
          {
            v13 = *(v10 + 8 * j + 32);
          }

          v14 = v13;
          [v13 setBackgroundColor_];
        }

        goto LABEL_24;
      }

LABEL_28:
      __break(1u);
      return;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_15;
    }
  }

LABEL_24:
}

void sub_1C59D3C58(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
  v15 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v8 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16);
  v9 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 24);
  *v6 = *a1;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1C592535C(0, &qword_1EDA45D70);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5BCB744() & 1) == 0 || (sub_1C5BCB744() & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = sub_1C5BCB744();

  if ((v14 & 1) == 0)
  {
LABEL_7:
    sub_1C59D3A80();
  }
}

double *sub_1C59D3D94(double *result)
{
  if (*result != *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] || result[1] != *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs + 8])
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C59D91F8;
    *(v5 + 24) = v4;
    v9[4] = sub_1C59D9200;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C59D32C0;
    v9[3] = &block_descriptor_0;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1C59D3F14(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  v4 = v3;
  sub_1C59D9228(v3);
  sub_1C59D9228(v3);
  sub_1C59D2560(&v4, &v3, 1);
  sub_1C59D924C(v3);
  v1 = v4;

  return sub_1C59D924C(v1);
}

unsigned __int8 *sub_1C59D3F88(unsigned __int8 *result)
{
  if (*result != v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout])
  {
    v2 = sub_1C59D18D4();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C694FD20](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v9 = sub_1C59D42C4();
    *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars] = v9;

    if (v9 >> 62)
    {
      goto LABEL_33;
    }

    for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1C5BCB984())
    {
      v1 = v1;
      if (!j)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C694FD20](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v1 addSubview_];

        ++v11;
        if (v14 == j)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_26:

    sub_1C59D3A80();
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C59DA0C4;
    *(v17 + 24) = v16;
    v20[4] = sub_1C59DA404;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1C59D32C0;
    v20[3] = &block_descriptor_155;
    v18 = _Block_copy(v20);
    v19 = v1;

    [v15 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      sub_1C59D45C0();
      if (!*&v19[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode])
      {
        sub_1C59D923C(0);
        sub_1C59D496C();
      }
    }
  }

  return result;
}

uint64_t sub_1C59D42C4()
{
  v1 = &unk_1F4513760;
  if (!*(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout))
  {
    v1 = &unk_1F4513728;
  }

  v2 = *v1;

  v4 = v2 - 1;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v10 = MEMORY[0x1E69E7CC0];
      sub_1C5BCBB44();
      v5 = *MEMORY[0x1E69796E8];
      do
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        v7 = [v6 layer];
        [v7 setCornerCurve_];

        v8 = [v6 layer];
        [v8 setAllowsEdgeAntialiasing_];

        v9 = [v6 tintColor];
        [v6 setBackgroundColor_];

        sub_1C5BCBB24();
        sub_1C5BCBB54();
        sub_1C5BCBB64();
        sub_1C5BCBB34();
        --v4;
      }

      while (v4);
      return v10;
    }
  }

  return result;
}

void sub_1C59D445C(_BYTE *a1)
{
  v3 = a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout];
  v4 = &a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = v3;
  v5 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v5 - 2) >= 3 && v5 != 1)
  {
    v13[10] = v1;
    v13[11] = v2;
    if (!v5)
    {
      sub_1C59D923C(0);
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = a1;
    *(v9 + 16) = a1;
    v13[4] = sub_1C59DA428;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1C596D09C;
    v13[3] = &block_descriptor_162;
    v11 = _Block_copy(v13);
    v12 = v10;

    [v8 animateWithDuration:0 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
    _Block_release(v11);
  }
}

void sub_1C59D45C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  v3 = (v2 - 2) < 3 || v2 == 1;
  if (!v3 && !v2)
  {
    sub_1C59D923C(0);
  }

  v4 = sub_1C5ACC430();
  v5 = [v0 traitCollection];
  [v5 displayScale];
  v36 = v6;

  v7 = sub_1C59D18D4();
  v8 = v7;
  v37 = *(v4 + 16);
  if (v37)
  {
    v9 = 0;
    v10 = &v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs];
    v11 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
    if (v7 < 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = v12;
    v34 = v7 & 0xC000000000000001;
    v35 = v7 >> 62;
    v13 = 0.125;
    v14 = 5.0;
    v15 = 6.0;
    v16 = 1.0;
    v17 = 0.5;
    while (v9 < *(v4 + 16))
    {
      v18 = *(v4 + 32 + 8 * v9);
      if (v35)
      {
        if (v9 == sub_1C5BCB984())
        {
          goto LABEL_40;
        }
      }

      else if (v9 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      if (v34)
      {
        v19 = MEMORY[0x1C694FD20](v9, v8);
      }

      else
      {
        if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v19 = *(v8 + 8 * v9 + 32);
      }

      v20 = v19;
      v21 = *v10 * v13;
      if (v1[v11] == 1)
      {
        v21 = v21 * v14 / v15;
      }

      [v1 bounds];
      Height = CGRectGetHeight(v39);
      if (v18 < v16)
      {
        Height = v18 * Height;
      }

      if (v21 <= Height)
      {
        v21 = Height;
      }

      v23 = *v10 * v13;
      if (v1[v11] == 1)
      {
        v23 = v23 * v14 / v15;
      }

      v24 = (v18 * 0.12 + v16) * v23;
      v25 = [v20 layer];
      [v25 setCornerRadius_];

      v26 = *v10;
      v27 = v1[v11];
      v28 = *v10 * v13;
      v29 = v28 * v14 / 6.0;
      if (v27 == 1)
      {
        v30 = &unk_1F45137C8;
      }

      else
      {
        v30 = &unk_1F4513790;
      }

      if (v27 == 1)
      {
        v31 = v29;
      }

      else
      {
        v31 = *v10 * v13;
      }

      v32 = v30[2];

      if (v27)
      {
        v28 = v29;
      }

      v17 = 0.5;
      [v20 setFrame_];

      ++v9;
      v13 = 0.125;
      v14 = 5.0;
      v15 = 6.0;
      v16 = 1.0;
      if (v37 == v9)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_40:
  }
}

uint64_t sub_1C59D496C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192640);
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v15 - v6;
  if (qword_1EDA490C8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout);

  v9 = sub_1C5A16718(v8);

  v18 = v9;
  sub_1C592535C(0, &qword_1EDA4E620);
  v10 = sub_1C5BCB5A4();
  v17 = v10;
  v11 = sub_1C5BCB594();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192648);
  sub_1C5924F54(&qword_1EDA468B8, &qword_1EC192648);
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v4, &unk_1EC199F20);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&qword_1EDA46900, &qword_1EC192640);
  v12 = v16;
  v13 = sub_1C5BC8114();

  (*(v5 + 8))(v7, v12);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber) = v13;
}

uint64_t sub_1C59D4CA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber;
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber))
  {
    if (qword_1EDA490C8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDA5DB00;
    v8 = sub_1C5BCB214();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_1C5AD0FB8(0, 0, v5, &unk_1C5BD5038, v9);

    if (*(v1 + v6))
    {

      sub_1C5BC7EF4();
    }

    *(v1 + v6) = 0;
  }

  return result;
}

void sub_1C59D4E30(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1[1];
  v19 = *a1;
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = &Strong[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
    *v11 = v19;
    *(v11 + 1) = v18;
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
    v11[48] = v9;
    v12 = *&Strong[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
    if ((v12 - 2) < 3 || v12 == 1)
    {
    }

    else
    {
      v13 = Strong;
      if (!v12)
      {
        sub_1C59D923C(0);
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      aBlock[4] = a4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C596D09C;
      aBlock[3] = a5;
      v16 = _Block_copy(aBlock);
      v17 = v13;

      [v14 animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];

      _Block_release(v16);
    }
  }
}

id sub_1C59D4FC4()
{
  ObjectType = swift_getObjectType();
  sub_1C59D4CA4();
  v2 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
  if (*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber])
  {

    sub_1C5BC7EF4();
  }

  *&v0[v2] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C59D5170()
{
  v0 = sub_1C59D18D4();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:

    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = sub_1C5BCB984();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1C5BCBB44();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694FD20](v4, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    v7 = [v5 layer];

    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    sub_1C5BCBB34();
  }

  while (v2 != v4);

  v8 = v21;
  if (!(v21 >> 62))
  {
LABEL_10:
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v19 = v8;
  result = sub_1C5BCB984();
  v8 = v19;
  v9 = result;
  if (result)
  {
LABEL_11:
    if (v9 >= 1)
    {
      v10 = 0;
      v20 = v8 & 0xC000000000000001;
      v11 = v8;
      do
      {
        if (v20)
        {
          v12 = MEMORY[0x1C694FD20](v10);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v15 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v16 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v17 = [v13 presentationLayer];
        if (v17)
        {
          v18 = v17;
          [v17 frame];
          [v13 setFrame_];
          [v18 cornerRadius];
          [v13 setCornerRadius_];
        }

        ++v10;

        v8 = v11;
      }

      while (v9 != v10);
      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_22:
}

unint64_t sub_1C59D5464(uint64_t a1)
{
  sub_1C59D45C0();
  v2 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16);
  result = sub_1C59D18D4();
  v4 = result;
  if (result >> 62)
  {
    result = sub_1C5BCB984();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C694FD20](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 setBackgroundColor_];
  }

LABEL_10:
}

uint64_t sub_1C59D5560(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if (*&a2[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] == 4 && a2[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] == 1)
  {
    v7 = sub_1C5BCB214();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_1C5BCB1E4();
    v8 = a2;
    v9 = sub_1C5BCB1D4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    *&v8[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask] = sub_1C5AD0FB8(0, 0, v6, &unk_1C5BD4FC8, v10);
  }

  return result;
}

uint64_t sub_1C59D56C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_1C59D5718(uint64_t a1)
{
  sub_1C59D45C0();
  v2 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
  result = sub_1C59D18D4();
  v4 = result;
  if (result >> 62)
  {
    result = sub_1C5BCB984();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C694FD20](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 setBackgroundColor_];
  }

LABEL_10:
}

void sub_1C59D5814(unint64_t a1)
{
  v1 = sub_1C59D97B4(a1);

  v2 = v1[2];
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  v7 = 16 * v2 + 24;
  v23 = v2 >> 1;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v11 = v1[2];
    if (v4 >= v11)
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_14;
    }

    v12 = v1[v3 + 4];
    v13 = v1[v3 + 5];
    v14 = *(v1 + v7 - 8);
    v15 = *(v1 + v7);
    v16 = v15;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1C5BAA66C(v1);
    }

    v20 = &v1[v3];
    v21 = v1[v3 + 4];
    v22 = v1[v3 + 5];
    v20[4] = v19;
    v20[5] = v15;

    if (v6 >= v1[2])
    {
      goto LABEL_15;
    }

    v8 = (v1 + v7);
    v9 = *(v1 + v7 - 8);
    v10 = *(v1 + v7);
    *(v8 - 1) = v17;
    *v8 = v13;

    v5 = v23;
LABEL_5:
    ++v4;
    --v6;
    v7 -= 16;
    v3 += 2;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1C59D595C(uint64_t a1)
{
  sub_1C59D45C0();
  v2 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v3 = sub_1C59D18D4();
  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1C59D5A4C();
    return;
  }

  v5 = sub_1C5BCB984();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694FD20](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setBackgroundColor_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1C59D5A4C()
{
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v3)
  {
    return;
  }

  v4 = v1;

  v5 = sub_1C59D9728(3uLL);
  if (v5 > 2)
  {
    goto LABEL_60;
  }

  v45 = byte_1F4513830[v5 + 32];
  v7 = sub_1C59D18D4();
  v1 = v7;
  v0 = v7 >> 62;
  v41 = v3;
  v6 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v8;
  }

  if (v8 < v9)
  {
LABEL_78:
    __break(1u);
    return;
  }

  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0 && v9)
    {
      v2 = sub_1C592535C(0, &qword_1EDA4E078);

      sub_1C5BCBAC4();
      if (v9 != 1)
      {
        sub_1C5BCBAC4();
        if (v9 != 2)
        {
          sub_1C5BCBAC4();
          if (v9 != 3)
          {
            sub_1C5BCBAC4();
            if (v9 != 4)
            {
              sub_1C5BCBAC4();
            }
          }
        }
      }
    }

    else
    {
    }

    if (v0)
    {
      v0 = sub_1C5BCBC44();
      v11 = v12;
      v10 = v13;
      v15 = v14;

      v9 = v15 >> 1;
      v3 = v41;
    }

    else
    {
      v10 = 0;
      v0 = v1 & 0xFFFFFFFFFFFFFF8;
      v11 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v16 = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      goto LABEL_66;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
      goto LABEL_29;
    }

    *&v47[0] = MEMORY[0x1E69E7CC0];
    v1 = v47;
    sub_1C5BCBB44();
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_71:
    if (v9 >= 5)
    {
      v39 = 5;
    }

    else
    {
      v39 = v9;
    }

    if (v9 >= 0)
    {
      v9 = v39;
    }

    else
    {
      v9 = 5;
    }

    v3 = v41;
    if (sub_1C5BCB984() < v9)
    {
      goto LABEL_78;
    }
  }

  if (v9 <= v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = v9;
  }

  v0 = v6 - v10;
  v2 = v11 + 8 * v10;
  do
  {
    if (!v0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      while (2)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        if (v1 < 0)
        {
          v3 = v1;
        }

        else
        {
          v3 = v6;
        }

        v9 = sub_1C5BCB984();
        if (sub_1C5BCB984() < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v19 = sub_1C5BCB984();
          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_31:
          v20 = 0;
          v44 = (v4 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs);
          v42 = v2 & 0xFFFFFFFFFFFFFF8;
          v43 = v2 & 0xC000000000000001;
          v40 = v2;
LABEL_34:
          if (v43)
          {
            v21 = MEMORY[0x1C694FD20](v20, v2);
          }

          else
          {
            v6 = *(v42 + 16);
            if (v20 >= v6)
            {
              continue;
            }

            v21 = *(v2 + 8 * v20 + 32);
          }

          v22 = v21;
          v0 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_58;
          }

          *v47 = *v44;
          v1 = v3;
          v23 = sub_1C59D85A4(v45, v20, v47);
          if (!v23)
          {

            goto LABEL_33;
          }

          v26 = v24;
          v27 = v25;
          v1 = v23;
          v28 = sub_1C5BCAE44();
          v4 = &off_1E822B000;
          [v22 addAnimation:v1 forKey:v28];

          v29 = v26;
          v30 = sub_1C5BCAE44();
          [v22 addAnimation:v29 forKey:v30];

          v31 = v27;
          v32 = sub_1C5BCAE44();
          [v22 addAnimation:v31 forKey:v32];

          v33 = [v29 values];
          if (v33)
          {
            v4 = v33;
            v34 = sub_1C5BCB054();

            if (*(v34 + 16))
            {
              sub_1C592B32C(v34 + 32, v47);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_49;
              }

              v35 = [v1 values];
              if (!v35)
              {
                goto LABEL_53;
              }

              v4 = v35;
              v36 = sub_1C5BCB054();

              if (!*(v36 + 16))
              {
                goto LABEL_54;
              }

              sub_1C592B32C(v36 + 32, v47);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_49;
              }

              v37 = [v31 values];
              if (v37)
              {
                v4 = v37;
                v38 = sub_1C5BCB054();

                if (*(v38 + 16))
                {
                  sub_1C592B32C(v38 + 32, v47);

                  if (swift_dynamicCast())
                  {
                    [v22 frame];
                    [v22 setFrame_];
                    [v22 setCornerRadius_];
                  }

LABEL_49:

                  v3 = v41;
                  v2 = v40;
LABEL_33:
                  ++v20;
                  if (v0 == v19)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_34;
                }

LABEL_54:
              }

              else
              {
LABEL_53:
              }

              v3 = v41;
              v2 = v40;
              goto LABEL_33;
            }

            v2 = v40;
          }

          else
          {
          }

          v3 = v41;
          goto LABEL_33;
        }

        goto LABEL_71;
      }
    }

    v17 = *v2;
    v2 += 8;
    v18 = [v17 layer];
    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    v1 = v47;
    sub_1C5BCBB34();
    --v0;
    --v16;
  }

  while (v16);
  v2 = *&v47[0];
  v3 = v41;
LABEL_29:
  if (v2 >> 62)
  {
    goto LABEL_67;
  }

  v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_68:

  swift_unknownObjectRelease();
}

void sub_1C59D6154(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette];
  v5 = sub_1C59D18D4();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_1C5BCB984();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C694FD20](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setBackgroundColor_];
  }

LABEL_10:

  if (a2 == 1)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v15[4] = sub_1C59D9E00;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1C596D09C;
    v15[3] = &block_descriptor_89;
    v13 = _Block_copy(v15);
    sub_1C59D9228(1uLL);
    v14 = a1;

    [v11 animateWithDuration:0 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
    _Block_release(v13);
  }
}

uint64_t sub_1C59D6338(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C59D9E08;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C5B762D0(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1C5B762D0((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_1C59DA404;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  return sub_1C59D78A4();
}

void sub_1C59D6494(char *a1)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v2 - 2) >= 3 && v2 != 1)
  {
    if (!v2)
    {
      sub_1C59D923C(0);
    }

    if (!*&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation])
    {
      sub_1C59D45C0();
    }
  }
}

void sub_1C59D6510()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v1 - 2) >= 3 && v1 != 1)
  {
    if (!v1)
    {
      sub_1C59D923C(0);
    }

    if (!*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation])
    {
      sub_1C59D45C0();
    }
  }
}

uint64_t sub_1C59D6584()
{
  if (v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] * 0.125 * 5.0 / 6.0;
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] * 0.125;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v62);
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 24];
  type metadata accessor for AnimationGroup();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v5 + 16);
  *(v5 + 24) = v6;
  v54 = v3;
  v53 = v4;
  v46 = v0;
  v8 = sub_1C59D18D4();
  v9 = v8;
  v47 = v5;
  v45 = (v5 + 24);
  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
  {
    v11 = 0;
    v12 = Height * 0.7;
    v51 = v9 & 0xFFFFFFFFFFFFFF8;
    v52 = v9 & 0xC000000000000001;
    Height = 0.11;
    v49 = i;
    v50 = v9;
    v48 = v7;
    while (1)
    {
      if (v52)
      {
        v13 = MEMORY[0x1C694FD20](v11, v9);
      }

      else
      {
        if (v11 >= *(v51 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v55 = v11 + 1;
      v15 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v15 timingParameters:0.25];

      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v53;
      *(v17 + 32) = v12;
      v60 = sub_1C59DA3FC;
      v61 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_1C596D09C;
      v59 = &block_descriptor_63;
      v18 = _Block_copy(&aBlock);
      v19 = v53;
      v20 = v14;

      [v16 addAnimations_];
      _Block_release(v18);
      v21 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.25];

      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      *(v23 + 24) = v54;
      *(v23 + 32) = v1;
      v60 = sub_1C59D9D78;
      v61 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_1C596D09C;
      v59 = &block_descriptor_69;
      v24 = _Block_copy(&aBlock);
      v25 = v54;
      v26 = v20;

      [v22 addAnimations_];
      _Block_release(v24);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      v60 = sub_1C59D9DE8;
      v61 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v7 = v48;
      v58 = sub_1C59D56C4;
      v59 = &block_descriptor_75;
      v28 = _Block_copy(&aBlock);
      v29 = v22;

      [v16 addCompletion_];
      _Block_release(v28);
      swift_beginAccess();
      v30 = *v48;
      v31 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v48 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1C5B761C4(0, *(v30 + 2) + 1, 1, v30);
        *v48 = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1C5B761C4((v33 > 1), v34 + 1, 1, v30);
      }

      *(v30 + 2) = v34 + 1;
      v35 = &v30[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v11 * 0.1;
      *v48 = v30;
      swift_endAccess();

      ++v11;
      v9 = v50;
      if (v55 == v49)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v36 = swift_allocObject();
  *(v36 + 16) = v46;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C59DA400;
  *(v37 + 24) = v36;
  swift_beginAccess();
  v38 = *v45;
  v39 = v46;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v38;
  if ((v40 & 1) == 0)
  {
    v38 = sub_1C5B762D0(0, v38[2] + 1, 1, v38);
    *v45 = v38;
  }

  v42 = v38[2];
  v41 = v38[3];
  if (v42 >= v41 >> 1)
  {
    v38 = sub_1C5B762D0((v41 > 1), v42 + 1, 1, v38);
  }

  v38[2] = v42 + 1;
  v43 = &v38[2 * v42];
  v43[4] = sub_1C59DA404;
  v43[5] = v37;
  *(v47 + 24) = v38;
  swift_endAccess();

  *&v39[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v47;

  sub_1C59D78A4();
}

uint64_t sub_1C59D6C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BCBB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1C5BCB1E4();
  v4[6] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C59D6D08, v7, v6);
}

uint64_t sub_1C59D6D08()
{
  if (sub_1C5BCB2D4())
  {

    v1 = v0[1];

    return v1();
  }

  v3 = v0[2];
  v4 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
  v0[9] = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
  sub_1C59D6584();
  v5 = &unk_1F4513760;
  if (!*(v3 + v4))
  {
    v5 = &unk_1F4513728;
  }

  v6 = *v5;

  v7 = 100 * (v6 - 1);
  if (((v6 - 1) * 100) >> 64 != v7 >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = __OFADD__(v7, 500);
  v9 = v7 + 500;
  if (v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 + 600;
  if (__OFADD__(v9, 600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = 1000000000000000 * v10;
  v12 = (v10 * 0x38D7EA4C68000uLL) >> 64;
  sub_1C5BCBEB4();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1C59D6EB0;

  return sub_1C59D9270(v11, v12, 0, 0, 1);
}

uint64_t sub_1C59D6EB0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1C59DA3F8;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1C59D7048;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1C59D7048()
{
  if (sub_1C5BCB2D4())
  {

    v1 = v0[1];

    return v1();
  }

  v3 = v0[9];
  v4 = v0[2];
  sub_1C59D6584();
  v5 = &unk_1F4513760;
  if (!*(v4 + v3))
  {
    v5 = &unk_1F4513728;
  }

  v6 = *v5;

  v7 = 100 * (v6 - 1);
  if (((v6 - 1) * 100) >> 64 != v7 >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = __OFADD__(v7, 500);
  v9 = v7 + 500;
  if (v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 + 600;
  if (__OFADD__(v9, 600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = 1000000000000000 * v10;
  v12 = (v10 * 0x38D7EA4C68000uLL) >> 64;
  sub_1C5BCBEB4();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1C59D6EB0;

  return sub_1C59D9270(v11, v12, 0, 0, 1);
}

uint64_t sub_1C59D7210()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1C5BCAC14();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BCAC44();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_tintColorDidChange);
  sub_1C592535C(0, &qword_1EDA4E620);
  v9 = sub_1C5BCB5A4();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_1C59DA0DC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_180;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C59D9D30(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_1C59D75B4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v2 = v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible];
    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 1;
    if (v2 != 1)
    {
      sub_1C59D45C0();
    }
  }

  else
  {
    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 0;
  }
}

uint64_t sub_1C59D76D8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C59D7718(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C596D09C;
    v17[3] = &block_descriptor_174;
    v9 = _Block_copy(v17);
    sub_1C5974664(a2, a3);

    [a1 addAnimations_];
    _Block_release(v9);
    sub_1C59A5824(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1C5B761C4(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_1C5B761C4((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1C59D78A4()
{
  v1 = v0;
  v2 = sub_1C5BCAC14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v24 = v0;
    v25 = v3;
    v26 = v2;

    v9 = (v23 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay_];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v36 = sub_1C59DA0CC;
      v37 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v34 = sub_1C59D56C4;
      v35 = &block_descriptor_168;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion_];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v25;
    v2 = v26;
    v1 = v24;
  }

  sub_1C592535C(0, &qword_1EDA4E620);
  v26 = sub_1C5BCB5A4();
  v36 = sub_1C59DA0D4;
  v37 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C596D09C;
  v35 = &block_descriptor_171;
  v17 = _Block_copy(&aBlock);

  v18 = v27;
  sub_1C5BCAC34();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1C59D9D30(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  v19 = v30;
  sub_1C5BCB8F4();
  v20 = v26;
  sub_1C5BCB574();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v28 + 8))(v18, v29);
}

uint64_t sub_1C59D7CD8(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C59D7D6C()
{

  return swift_deallocClassInstance();
}

void sub_1C59D7DD0()
{
  v0 = sub_1C5BC7A24();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDA4BFD0);
  v5 = __swift_project_value_buffer(v0, qword_1EDA4BFD0);
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDA5DD00;
  v7 = sub_1C5BCAE44();
  v8 = sub_1C5BCAE44();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1C5BC79E4();

    (*(v1 + 32))(v5, v4, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C59D7F78()
{
  v1[6] = v0;
  v2 = sub_1C5BC7D64();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1C5BC7A24();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C59D8094, 0, 0);
}

uint64_t sub_1C59D8094()
{
  if (qword_1EDA4BFC8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_value_buffer(v3, qword_1EDA4BFD0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1C59D81A8;
  v6 = v0[12];

  return sub_1C5A5B254(v6);
}

uint64_t sub_1C59D81A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_1C59D835C;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_1C59D82DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C59D82DC()
{
  v1 = *(v0 + 48);
  v1[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C59D835C()
{
  v22 = v0;
  if (qword_1EC190510 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = __swift_project_value_buffer(v4, qword_1EC1A6970);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = sub_1C5BCBEE4();
    v18 = sub_1C592ADA8(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C5922000, v7, v8, "WaveformPlayIndicator: unable to decode mica asset for WaveformIndicator  %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1C69510F0](v15, -1, -1);
    MEMORY[0x1C69510F0](v14, -1, -1);

    (*(v12 + 8))(v11, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  type metadata accessor for BouncyBarsAsset();
  swift_deallocPartialClassInstance();

  v19 = v0[1];

  return v19(0);
}

NSObject *sub_1C59D85A4(uint64_t a1, unint64_t a2, double *a3)
{
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  p_isa = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v57 - v11;
  v14 = *a3;
  v13 = a3[1];
  sub_1C59D8E38(a1, a2);
  if (!v15)
  {
LABEL_25:
    if (qword_1EC190510 != -1)
    {
LABEL_45:
      swift_once();
    }

    v42 = __swift_project_value_buffer(v6, qword_1EC1A6970);
    (*(v7 + 16))(p_isa, v42, v6);
    v43 = sub_1C5BC7D44();
    v44 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C5922000, v43, v44, "WaveformPlayIndicator: BouncyBars asset does not have expected layers / animations", v45, 2u);
      MEMORY[0x1C69510F0](v45, -1, -1);
    }

    (*(v7 + 8))(p_isa, v6);
    return 0;
  }

  v16 = v15;
  v17 = [v15 values];
  if (!v17)
  {

    goto LABEL_25;
  }

  v57 = v12;
  v58 = v7;
  v59 = v6;
  v18 = v17;
  v19 = sub_1C5BCB054();

  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  p_isa = sub_1C592535C(0, &qword_1EC192650);
  swift_dynamicCast();
  v20 = v67;
  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v63 = v67;
  v60 = v16;
  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v62 = v67;
  v64 = v19;
  v21 = *(v19 + 16);
  if (!v21)
  {
LABEL_30:
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
LABEL_31:

    swift_bridgeObjectRelease_n();
    return v20;
  }

  v22 = 0;
  v23 = v64 + 32;
  v61 = "cannedCornerAnimation";
  v24 = v14 * 0.125;
  v25 = MEMORY[0x1E69E7DE0];
  v6 = &off_1E822B000;
  while (1)
  {
    if (v22 >= v21)
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

    *&v67 = v22;
    sub_1C592B32C(v23, &v67 + 8);
    v70 = v67;
    v71 = v68;
    v72 = v69;
    if (!v69)
    {
      goto LABEL_31;
    }

    v65 = v67;
    sub_1C593F33C((&v70 + 8), &v67);
    if (!swift_dynamicCast())
    {
      swift_bridgeObjectRelease_n();
      if (qword_1EC190510 != -1)
      {
        swift_once();
      }

      v46 = v59;
      v47 = __swift_project_value_buffer(v59, qword_1EC1A6970);
      v48 = v58;
      v49 = v57;
      (*(v58 + 16))(v57, v47, v46);
      v50 = sub_1C5BC7D44();
      v51 = sub_1C5BCB4F4();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v60;
      if (v52)
      {
        v54 = v60;
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1C5922000, v50, v51, "BouncyBars asset does not have expected layers / animations", v55, 2u);
        MEMORY[0x1C69510F0](v55, -1, -1);
        v56 = v63;
        v53 = v62;
      }

      else
      {
        v56 = v50;
        v54 = v20;
        v50 = v62;
        v20 = v63;
      }

      (*(v48 + 8))(v49, v46);
      return 0;
    }

    v26 = v66 / 100.0;
    *(&v68 + 1) = v25;
    *&v67 = v13 * (v66 / 100.0);
    result = [v20 values];
    if (!result)
    {
      break;
    }

    p_isa = &result->isa;
    v28 = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1C5BAA6E4(v28);
    }

    v7 = v65;
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    if (v65 >= *(v28 + 16))
    {
      goto LABEL_41;
    }

    v29 = v28 + 32 * v65;
    __swift_destroy_boxed_opaque_existential_0(v29 + 32);
    sub_1C593F33C(&v67, (v29 + 32));
    v30 = sub_1C5BCB044();

    [v20 setValues:v30];

    v31 = v63;
    v32 = sub_1C5BCAE44();
    [v31 setKeyPath:v32];

    if (v24 > v24 * 1.12)
    {
      goto LABEL_42;
    }

    v33 = v24 + (v24 * 1.12 - v24) * v26;
    *(&v68 + 1) = v25;
    *&v67 = v33;
    result = [v31 values];
    if (!result)
    {
      goto LABEL_47;
    }

    v34 = result;
    p_isa = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      p_isa = sub_1C5BAA6E4(p_isa);
    }

    if (v7 >= p_isa[2])
    {
      goto LABEL_43;
    }

    v35 = &p_isa[4 * v7];
    __swift_destroy_boxed_opaque_existential_0((v35 + 4));
    sub_1C593F33C(&v67, v35 + 2);
    v36 = sub_1C5BCB044();

    [v31 setValues:v36];

    v37 = v62;
    v38 = sub_1C5BCAE44();
    [v37 setKeyPath:v38];

    *(&v68 + 1) = v25;
    *&v67 = v33 * 0.5;
    result = [v37 values];
    if (!result)
    {
      goto LABEL_48;
    }

    v39 = result;
    p_isa = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      p_isa = sub_1C5BAA6E4(p_isa);
    }

    if (v7 >= p_isa[2])
    {
      goto LABEL_44;
    }

    ++v22;
    v40 = &p_isa[4 * v7];
    __swift_destroy_boxed_opaque_existential_0((v40 + 4));
    sub_1C593F33C(&v67, v40 + 2);
    v41 = sub_1C5BCB044();

    [v37 setValues:v41];

    v21 = *(v64 + 16);
    v23 += 32;
    if (v22 == v21)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_1C59D8E38(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_1C59D9014(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_1C592535C(0, &qword_1EDA45DB0);
  v8 = sub_1C5BCB054();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x1C694FD20](a2, v8);
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C5BCB054();

    if (*(v13 + 16))
    {

      v14 = sub_1C5BCAE44();

      v15 = [v10 animationForKey_];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
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

uint64_t sub_1C59D9014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1C596FBD8(a1, a2), (v5 & 1) != 0))
  {
    sub_1C592B32C(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700);
  sub_1C592535C(0, &qword_1EDA45DB0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59D90BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C59D9128(uint64_t *a1, int a2)
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

uint64_t sub_1C59D9180()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6970);
  __swift_project_value_buffer(v0, qword_1EC1A6970);
  return sub_1C5BC7D54();
}

unint64_t sub_1C59D9228(unint64_t result)
{
  if (result - 2 >= 3)
  {
    return sub_1C59D923C(result);
  }

  return result;
}

unint64_t sub_1C59D923C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1C59D924C(unint64_t result)
{
  if (result - 2 >= 3)
  {
    return sub_1C59D9260(result);
  }

  return result;
}

unint64_t sub_1C59D9260(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1C59D9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C5BCBB74();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C59D9370, 0, 0);
}

uint64_t sub_1C59D9370()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C5BCBB84();
  v5 = sub_1C59D9D30(&qword_1EDA45D18, MEMORY[0x1E69E8820]);
  sub_1C5BCBE94();
  sub_1C59D9D30(&qword_1EDA45D20, MEMORY[0x1E69E87E8]);
  sub_1C5BCBB94();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C59D9500;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C59D9500()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C59D96BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1C59D96BC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C59D9728(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6951110](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6951110](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59D97B4(unint64_t a1)
{

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 2)
  {
    v6 = a1 >> 62;
    if (!(a1 >> 62))
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_4;
    }

    if (!sub_1C5BCB984())
    {
      break;
    }

    result = sub_1C5BCB984();
    if (!result)
    {
      goto LABEL_65;
    }

    result = sub_1C5BCB984();
    if (!result)
    {
      goto LABEL_66;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C694FD20](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v7 = *(a1 + 32);
    }

    v8 = v7;
    if (v6)
    {
      result = sub_1C5BCB984();
      if (!result)
      {
        goto LABEL_61;
      }

      result = sub_1C5BCB984();
      if (result < 1)
      {
        goto LABEL_62;
      }

      result = sub_1C5BCB984();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_61;
      }
    }

    v9 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v6)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1C5BCB984();
      goto LABEL_20;
    }

    if (v6)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = sub_1C5BCBAF4();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      result = sub_1C5BCB984();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (result - 1));
      result = sub_1C5BCB984();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = result - 1;
      result = sub_1C5BCB984();
      if (!result)
      {
LABEL_39:
        v14 = 0;
        if (v3)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      result = v11 - 1;
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (result & 1) == 0)
    {
      result = sub_1C5BAA680(a1);
      a1 = result;
      v10 = result & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      goto LABEL_60;
    }

    v13 = v12 - 1;
    v14 = *(v10 + 8 * v13 + 32);
    *(v10 + 16) = v13;
    if (v3)
    {
LABEL_28:
      v15 = __OFSUB__(v3--, 1);
      if (v15)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v16 = v4[3];
    if (((v16 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192620);
    v19 = swift_allocObject();
    v20 = _swift_stdlib_malloc_size(v19);
    v21 = v20 - 32;
    if (v20 < 32)
    {
      v21 = v20 - 17;
    }

    v22 = v21 >> 4;
    v19[2] = v18;
    v19[3] = 2 * (v21 >> 4);
    v23 = (v19 + 4);
    v24 = v4[3] >> 1;
    if (v4[2])
    {
      v25 = v4 + 4;
      if (v19 != v4 || v23 >= v25 + 16 * v24)
      {
        memmove(v19 + 4, v25, 16 * v24);
      }

      v4[2] = 0;
    }

    i = (v23 + 16 * v24);
    v26 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

    v4 = v19;
    v15 = __OFSUB__(v26, 1);
    v3 = v26 - 1;
    if (v15)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v8;
    i[1] = v14;
  }

  v27 = v4[3];
  if (v27 < 2)
  {
    return v4;
  }

  v28 = v27 >> 1;
  v15 = __OFSUB__(v28, v3);
  v29 = v28 - v3;
  if (!v15)
  {
    v4[2] = v29;
    return v4;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1C59D9B20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          sub_1C59D9228(1uLL);
          sub_1C59D9228(1uLL);
          return 0;
        }

        sub_1C59D923C(1uLL);
        return 1;
      }
    }

    else
    {
      sub_1C59D923C(0);
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 != 2;
      case 3:
        return v3 != 3;
      case 4:
        return v3 != 4;
    }
  }

  if ((v3 - 2) >= 3)
  {
    if (v3 != 1)
    {
      if (!v3)
      {
        sub_1C59D923C(0);
        return 0;
      }

      return 0;
    }
  }

  else if (v2 == 4)
  {
    return v3 != 4;
  }

  return 1;
}

id sub_1C59D9C18()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t sub_1C59D9C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59D6C14(a1, v4, v5, v6);
}

uint64_t sub_1C59D9D30(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C59D9D7C()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor_];
  [v1 bounds];

  return [v1 setBounds_];
}

id sub_1C59D9DE8(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

uint64_t sub_1C59D9E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C59D209C(a1, v4, v5, v6);
}

uint64_t sub_1C59D9F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5A14030(a1, v4, v5, v6);
}

uint64_t sub_1C59D9FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5A13C0C(a1, v4, v5, v6);
}

void sub_1C59DA100()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode) = 2;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode) = 2;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA48EA8;
  v3 = unk_1EDA48EB0;
  v4 = qword_1EDA48EB8;
  v5 = unk_1EDA48EC0;
  *v1 = qword_1EDA48EA8;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
  v6 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs;
  v7 = qword_1EDA4DAE0;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + v6) = xmmword_1EDA5DB50;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformValueSubscriber) = 0;
  v12 = v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59DA304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59D1938(a1, v4, v5, v6);
}

uint64_t sub_1C59DA44C()
{
  v1 = v0;
  v2 = sub_1C5BC7CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s18SingleFireSignpostVMa();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190518 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EC1A6988);
  v10 = *(v3 + 16);
  v17 = v9;
  v10(v5, v9, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v11 = &v8[*(v6 + 20)];
  *v11 = "Looper Configuration";
  *(v11 + 1) = 20;
  v11[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperConfiguration);
  v10(v5, v9, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v13 = &v8[*(v6 + 20)];
  *v13 = "Geometry Computation";
  *(v13 + 1) = 20;
  v13[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_geometry);
  v10(v5, v17, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v14 = &v8[*(v6 + 20)];
  *v14 = "Looper Begin Playback";
  *(v14 + 1) = 21;
  v14[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperBeginPlayback);
  return v1;
}

uint64_t sub_1C59DA764()
{
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperConfiguration);
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_geometry);
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperBeginPlayback);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionSignposts()
{
  result = qword_1EC192658;
  if (!qword_1EC192658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59DA83C()
{
  result = _s18SingleFireSignpostVMa();
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

uint64_t sub_1C59DA8D0(uint64_t a1)
{
  v2 = _s18SingleFireSignpostVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59DA92C()
{
  v0 = sub_1C5BC7D64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v4, qword_1EC1A6988);
  __swift_project_value_buffer(v4, qword_1EC1A6988);
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDA5DB60);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C5BC7CB4();
}

uint64_t sub_1C59DAA68(uint64_t a1, uint64_t a2)
{
  v4 = _s18SingleFireSignpostVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1C59DAACC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59416B4(v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  *&v25[10] = *(v0 + 154);
  v7 = v0[9];
  v24[2] = v0[8];
  *v25 = v7;
  v8 = v0[7];
  v24[0] = v0[6];
  v24[1] = v8;
  if (v25[25])
  {
    v9 = v0[9];
    v19 = v0[8];
    v20[0] = v9;
    *(v20 + 9) = *(v0 + 153);
    v10 = v0[7];
    v17 = v0[6];
    v18 = v10;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v24, &unk_1EC194DE0);
    (*(v2 + 8))(v4, v1);
  }

  v15[2] = v19;
  v16[0] = v20[0];
  *(v16 + 9) = *(v20 + 9);
  v15[0] = v17;
  v15[1] = v18;
  v12 = (*(v6 + 16))(v15, v5, v6);
  v13 = sub_1C593EBD4(3u, v12);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

uint64_t sub_1C59DACE8(uint64_t a1)
{
  v34 = sub_1C5BC8F34();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A38);
  _s23MarqueeTitleAndSubtitleVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  v37 = v5;
  v38 = v4;
  type metadata accessor for MetadataStyleModifier();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C5BCA714();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  v10 = sub_1C5BC8AB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;
  *&v46[10] = *(v1 + 154);
  v17 = v1[9];
  v45[2] = v1[8];
  *v46 = v17;
  v18 = v1[7];
  v45[0] = v1[6];
  v45[1] = v18;
  if (v46[25])
  {
    v19 = v1[9];
    v43 = v1[8];
    v44[0] = v19;
    *(v44 + 9) = *(v1 + 153);
    v20 = v1[7];
    v41 = v1[6];
    v42 = v20;
  }

  else
  {
    v31 = v11;

    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    v30[1] = v6;
    v22 = v21;
    sub_1C5BC7C54();

    v23 = v32;
    sub_1C5BC8F24();
    v11 = v31;
    swift_getAtKeyPath();
    sub_1C5924EF4(v45, &unk_1EC194DE0);
    (*(v33 + 8))(v23, v34);
  }

  if (BYTE2(v42) == 1)
  {
    v24 = sub_1C5BC8F94();
  }

  else
  {
    v24 = sub_1C5BC8FC4();
  }

  MEMORY[0x1EEE9AC00](v24);
  v25 = v38;
  v30[-4] = v37;
  v30[-3] = v25;
  v30[-2] = v1;
  sub_1C5BCA704();
  v26 = swift_getWitnessTable();
  MEMORY[0x1C694E550](v26, v7, MEMORY[0x1E697FB10], v26);
  (*(v36 + 8))(v9, v7);
  v39 = v26;
  v40 = MEMORY[0x1E697FB08];
  v27 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v10, v27);
  v28 = *(v11 + 8);
  v28(v14, v10);
  sub_1C593EDC0(v16, v10, v27);
  return (v28)(v16, v10);
}

uint64_t sub_1C59DB384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v140 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A38);
  _s23MarqueeTitleAndSubtitleVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v7 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v129 = v7;
  v8 = sub_1C5BCA7D4();
  v134 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v108 - v9;
  v10 = type metadata accessor for MetadataStyleModifier();
  v135 = v8;
  v132 = v10;
  v11 = sub_1C5BC8AB4();
  v136 = *(v11 - 8);
  v137 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v139 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v108 - v16;
  v121 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v121);
  v125 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v144 = swift_getAssociatedTypeWitness();
  v20 = sub_1C5BCB804();
  v117 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v108 - v21;
  v22 = sub_1C5950C90();
  *&v179 = &type metadata for NowPlayingLookupID;
  *(&v179 + 1) = AssociatedTypeWitness;
  *&v180 = v22;
  *(&v180 + 1) = AssociatedConformanceWitness;
  v149 = AssociatedConformanceWitness;
  v23 = type metadata accessor for ViewProvider();
  v113 = *(v23 - 8);
  v114 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v108 - v24;
  v143 = v20;
  v25 = sub_1C5BC8AB4();
  v118 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v115 = &v108 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  v146 = v25;
  v27 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  v28 = sub_1C5BC8AB4();
  v122 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v108 - v29;
  v148 = v30;
  v31 = sub_1C5BC8AB4();
  v123 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v120 = &v108 - v32;
  sub_1C5BC97C4();
  v145 = v31;
  v33 = sub_1C5BC8AB4();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v126 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v108 - v37;
  v147 = sub_1C5BCB804();
  v127 = *(v147 - 8);
  v38 = MEMORY[0x1EEE9AC00](v147);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v151 = &v108 - v41;
  _s19DefaultMetadataViewVMa();
  v42 = sub_1C59DAACC();
  v43 = MEMORY[0x1E697F568];
  v130 = AssociatedTypeWitness;
  v141 = v33;
  v142 = v27;
  v150 = v40;
  if (v42)
  {
    v109 = v34;
    v110 = a1;
    sub_1C59498C4(*(a1 + 32));
    v44 = v143;
    v45 = *(a3 + 384);
    swift_unknownObjectRetain();
    v46 = v112;
    v111 = a2;
    v108 = a3;
    v45(a2, a3);
    swift_unknownObjectRelease();
    *&v179 = 0x617461646174654DLL;
    *(&v179 + 1) = 0xEF6B726F77747241;
    v47 = v116;
    v48 = v114;
    sub_1C595BC70(&v179, v114);

    (*(v113 + 8))(v46, v48);
    v162 = swift_getAssociatedConformanceWitness();
    v49 = swift_getWitnessTable();
    v50 = v115;
    sub_1C5BC9D94();
    (*(v117 + 8))(v47, v44);
    v51 = *(v121 + 20);
    v52 = *MEMORY[0x1E697F480];
    v53 = sub_1C5BC9044();
    v54 = v125;
    (*(*(v53 - 8) + 104))(&v125[v51], v52, v53);
    *v54 = 0x4014000000000000;
    v55 = v50;
    if (qword_1EDA4DAD0 != -1)
    {
      swift_once();
    }

    v179 = xmmword_1EDA5DB28;
    v180 = *algn_1EDA5DB38;
    v181 = qword_1EDA5DB48;
    v160 = v49;
    v161 = MEMORY[0x1E697F568];
    v56 = v146;
    v57 = swift_getWitnessTable();
    v58 = v119;
    sub_1C5AC1394(v54, &v179, v56, v57, v119, 0.5);
    sub_1C59E79E4(v54);
    (*(v118 + 8))(v55, v56);
    sub_1C5BCAA54();
    v59 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28);
    v158 = v57;
    v159 = v59;
    v60 = swift_getWitnessTable();
    v61 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30);
    v156 = v60;
    v157 = v61;
    v106 = v148;
    v107 = swift_getWitnessTable();
    v62 = v120;
    sub_1C5BCA244();
    (*(v122 + 8))(v58, v106);
    v154 = v107;
    v155 = MEMORY[0x1E697EBF8];
    v63 = v145;
    v64 = swift_getWitnessTable();
    v65 = v126;
    sub_1C595BB1C(0xD00000000000001ALL, 0x80000001C5BF6A20);
    (*(v123 + 8))(v62, v63);
    v66 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    v152 = v64;
    v153 = v66;
    v67 = v141;
    v68 = swift_getWitnessTable();
    v69 = v124;
    sub_1C593EDC0(v65, v67, v68);
    v70 = v109;
    v71 = *(v109 + 8);
    v71(v65, v67);
    sub_1C593EDC0(v69, v67, v68);
    v71(v69, v67);
    v72 = v150;
    (*(v70 + 32))(v150, v65, v67);
    (*(v70 + 56))(v72, 0, 1, v67);
    a1 = v110;
    a2 = v111;
  }

  else
  {
    (*(v34 + 56))(v40, 1, 1, v33);
    v178[15] = swift_getAssociatedConformanceWitness();
    v178[13] = swift_getWitnessTable();
    v178[14] = v43;
    v73 = swift_getWitnessTable();
    v74 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28);
    v178[11] = v73;
    v178[12] = v74;
    v75 = swift_getWitnessTable();
    v76 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30);
    v178[9] = v75;
    v178[10] = v76;
    v178[7] = swift_getWitnessTable();
    v178[8] = MEMORY[0x1E697EBF8];
    v77 = swift_getWitnessTable();
    v78 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    v178[5] = v77;
    v178[6] = v78;
    swift_getWitnessTable();
    v72 = v40;
  }

  sub_1C5941600(v72, v151);
  v79 = v127;
  v80 = *(v127 + 8);
  v126 = (v127 + 8);
  WitnessTable = v80;
  v80(v72, v147);
  sub_1C5BC9144();
  v81 = [objc_opt_self() currentTraitCollection];
  [v81 displayScale];

  MEMORY[0x1EEE9AC00](v82);
  v83 = v133;
  sub_1C5BCA7C4();
  v84 = sub_1C59498C4(*(a1 + 32));
  v85 = *(a1 + 8);
  swift_beginAccess();
  sub_1C59318C8(v85 + 80, v178);
  swift_unknownObjectRetain();
  v86 = v135;
  v87 = swift_getWitnessTable();
  v88 = v131;
  sub_1C59DD4E8(v84, v178, v86, a2, v87);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v178);
  (*(v134 + 8))(v83, v86);
  v89 = swift_getWitnessTable();
  v177[2] = v87;
  v177[3] = v89;
  v90 = v137;
  v135 = swift_getWitnessTable();
  v91 = v138;
  sub_1C593EDC0(v88, v90, v135);
  v92 = v136;
  v93 = *(v136 + 8);
  v93(v88, v90);
  v94 = v150;
  v95 = v147;
  (*(v79 + 16))(v150, v151, v147);
  v178[0] = v94;
  v96 = v139;
  (*(v92 + 16))(v139, v91, v90);
  v178[1] = v96;
  v177[0] = v95;
  v97 = v95;
  v177[1] = v90;
  v174 = swift_getAssociatedConformanceWitness();
  v172 = swift_getWitnessTable();
  v173 = MEMORY[0x1E697F568];
  v98 = swift_getWitnessTable();
  v99 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28);
  v170 = v98;
  v171 = v99;
  v100 = swift_getWitnessTable();
  v101 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30);
  v168 = v100;
  v169 = v101;
  v166 = swift_getWitnessTable();
  v167 = MEMORY[0x1E697EBF8];
  v102 = swift_getWitnessTable();
  v103 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v164 = v102;
  v165 = v103;
  v163 = swift_getWitnessTable();
  v175 = swift_getWitnessTable();
  v176 = v135;
  sub_1C594226C(v178, 2uLL, v177);
  v93(v91, v90);
  v104 = WitnessTable;
  WitnessTable(v151, v97);
  v93(v96, v90);
  return v104(v150, v97);
}

uint64_t sub_1C59DC610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v7 = _s23MarqueeTitleAndSubtitleVMa();
  v119 = type metadata accessor for MCUINamespace();
  v117 = *(v119 - 8);
  v8 = MEMORY[0x1EEE9AC00](v119);
  v116 = &v93 - v9;
  v112 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v93 - v10;
  v115 = v7;
  v114 = sub_1C5BC8AB4();
  v118 = *(v114 - 8);
  v11 = MEMORY[0x1EEE9AC00](v114);
  v121 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v93 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v100);
  v107 = &v93 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A48);
  MEMORY[0x1EEE9AC00](v99);
  v106 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A50);
  v104 = *(v18 - 8);
  v105 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A58);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v93 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A38);
  v25 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - v27;
  v29 = *(a1 + 8);
  swift_beginAccess();
  v30 = *(v29 + 24);
  v123 = v28;
  v124 = a1;
  if (v30 && (v31 = *(v29 + 16), v108 = v21, v32 = *(a1 + 24), swift_beginAccess(), v33 = *(v32 + 16), v21 = v108, (v33 & 1) == 0))
  {
    v94 = v20;
    v34 = qword_1EC190520;

    if (v34 != -1)
    {
      swift_once();
    }

    v95 = a3;
    v96 = a2;
    if (byte_1EC192680 == 1)
    {
      v31 = sub_1C5BCAEC4();
      v36 = v35;

      v30 = v36;
    }

    *&v128 = v31;
    *(&v128 + 1) = v30;
    sub_1C594A23C();
    v37 = sub_1C5BC9CA4();
    v39 = v38;
    v41 = v40;
    v42 = sub_1C5BC9C14();
    v44 = v43;
    v46 = v45;
    sub_1C5953BD8(v37, v39, v41 & 1);

    if (qword_1EC190538 != -1)
    {
      swift_once();
    }

    v128 = xmmword_1EC1926C8;
    sub_1C59E6BD4();

    v47 = sub_1C5BC9BC4();
    v97 = v48;
    v98 = v49;
    v51 = v50;
    sub_1C5953BD8(v42, v44, v46 & 1);

    KeyPath = swift_getKeyPath();
    v53 = swift_getKeyPath();
    v127 = 0;
    type metadata accessor for Geometry();
    sub_1C59576B4(&qword_1EDA46EB8, 255, type metadata accessor for Geometry);
    v54 = sub_1C5BC8C84();
    v139 = v51 & 1;
    v137 = 0;
    *&v128 = v47;
    *(&v128 + 1) = v97;
    LOBYTE(v129) = v51 & 1;
    *(&v129 + 1) = *v138;
    DWORD1(v129) = *&v138[3];
    *(&v129 + 1) = v98;
    *&v130 = KeyPath;
    *(&v130 + 1) = 1;
    LOBYTE(v131) = 0;
    DWORD1(v131) = *&v136[3];
    *(&v131 + 1) = *v136;
    *(&v131 + 1) = v53;
    LOBYTE(v132) = v127;
    DWORD1(v132) = *&v135[3];
    *(&v132 + 1) = *v135;
    *(&v132 + 1) = v54;
    *&v133 = v55;
    *(&v133 + 1) = 0x776F7262657965;
    v134 = 0xE700000000000000;
    v125[4] = v132;
    v125[5] = v133;
    v126 = 0xE700000000000000;
    v125[0] = v128;
    v125[1] = v129;
    v125[2] = v130;
    v125[3] = v131;
    v56 = [objc_opt_self() mainBundle];
    v57 = sub_1C5949F2C();
    v59 = v58;

    v140 = v57;
    v141 = v59;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD000000000000012, 0x80000001C5BF6A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A80);
    sub_1C59E7C54();
    v60 = v106;
    sub_1C5BCA164();
    sub_1C5924EF4(&v128, &qword_1EC192A80);

    v61 = *MEMORY[0x1E697E720];
    v62 = sub_1C5BC89B4();
    v63 = v107;
    (*(*(v62 - 8) + 104))(v107, v61, v62);
    sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
    result = sub_1C5BCADB4();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_1C59E7B94();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    v65 = v103;
    sub_1C5BC9F54();
    sub_1C5924EF4(v63, &qword_1EC192838);
    sub_1C5924EF4(v60, &qword_1EC192A48);
    sub_1C5BC8604();
    sub_1C5BC8634();
    sub_1C5BC8644();

    sub_1C5BC8604();
    sub_1C5BC8634();
    sub_1C5BC8644();

    v66 = sub_1C5BC85F4();

    v67 = v102;
    (*(v104 + 32))(v102, v65, v105);
    v68 = v94;
    *&v67[*(v94 + 36)] = v66;
    v69 = v67;
    v70 = v101;
    sub_1C59E7D34(v69, v101, &qword_1EC192A58);
    v71 = v123;
    sub_1C59E7D34(v70, v123, &qword_1EC192A58);
    (*(v108 + 56))(v71, 0, 1, v68);
  }

  else
  {
    (*(v21 + 56))(v28, 1, 1, v20);
  }

  v72 = qword_1EC190520;

  if (v72 != -1)
  {
    swift_once();
  }

  _s19DefaultMetadataViewVMa();
  v73 = qword_1EC192668;
  v74 = unk_1EC192670;
  v75 = qword_1EC192678;
  v76 = byte_1EC192680;

  v77 = v111;
  sub_1C59DD354(v73, v74, v75, v76, v111);
  v78 = v115;
  WitnessTable = swift_getWitnessTable();
  v80 = v116;
  View.mcui.getter(v78, v116);
  (*(v112 + 8))(v77, v78);
  if (sub_1C59DAACC())
  {
    v81 = 0x4024000000000000;
  }

  else
  {
    v81 = 0x4038000000000000;
  }

  v82 = v113;
  v83 = v119;
  MCUINamespace<A>.marqueeFeathering(_:_:)(0, v81, 0, v119, WitnessTable);
  (*(v117 + 8))(v80, v83);
  v84 = sub_1C5958FE8();
  v142 = WitnessTable;
  v143 = v84;
  v85 = v114;
  v86 = swift_getWitnessTable();
  v87 = v120;
  sub_1C593EDC0(v82, v85, v86);
  v88 = v118;
  v89 = *(v118 + 8);
  v89(v82, v85);
  v90 = v123;
  v91 = v110;
  sub_1C597B474(v123, v110);
  *&v128 = v91;
  v92 = v121;
  (*(v88 + 16))(v121, v87, v85);
  *(&v128 + 1) = v92;
  *&v125[0] = v109;
  *(&v125[0] + 1) = v85;
  v140 = sub_1C595E060(&qword_1EC192A60, &qword_1EC192A38, &unk_1C5BD67F0, sub_1C59E7A40);
  v141 = v86;
  sub_1C594226C(&v128, 2uLL, v125);
  v89(v87, v85);
  sub_1C5924EF4(v90, &qword_1EC192A38);
  v89(v92, v85);
  return sub_1C5924EF4(v91, &qword_1EC192A38);
}

uint64_t sub_1C59DD354@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v10, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
  *a5 = sub_1C5BC88C4();
  *(a5 + 8) = v11;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = swift_getKeyPath();
  *(a5 + 56) = 0;
  _s12PresentationCMa();
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  *(a5 + 64) = sub_1C5BC8324();
  *(a5 + 72) = v12 & 1;
  v13 = _s23MarqueeTitleAndSubtitleVMa();
  v14 = *(v13 + 48);
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + *(v13 + 52);
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_1C59DD4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C59318C8(a2, v10);
  v11 = a1;
  sub_1C5931F84(v10, &v12);
  v8 = type metadata accessor for MetadataStyleModifier();
  swift_unknownObjectRetain();
  MEMORY[0x1C694E550](&v11, a3, v8, a5);
  return (*(*(v8 - 8) + 8))(&v11, v8);
}

uint64_t sub_1C59DD5C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v2, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
  *a1 = sub_1C5BC88C4();
  *(a1 + 8) = v3;
  _s6BannerCMa();
  sub_1C59576B4(qword_1EDA49FB8, 255, _s6BannerCMa);
  *(a1 + 16) = sub_1C5BC88C4();
  *(a1 + 24) = v4;
  *(a1 + 32) = sub_1C5BC8C84();
  *(a1 + 40) = v5;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 88) = 0;
  result = swift_getKeyPath();
  *(a1 + 96) = result;
  *(a1 + 169) = 0;
  return result;
}

uint64_t sub_1C59DD6F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v45[1] = a3;
  v45[0] = a2;
  v60 = a6;
  v9 = _s23MarqueeTitleAndSubtitleVMa();
  v53 = a5;
  v54 = type metadata accessor for MetadataStyleModifier();
  v10 = sub_1C5BC8AB4();
  v11 = type metadata accessor for MCUINamespace();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v57 = v45 - v13;
  v55 = v9;
  v46 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v45 - v15;
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v47 = v45 - v17;
  v18 = sub_1C5BC8AB4();
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v50 = v45 - v19;
  v20 = sub_1C5BC8AB4();
  v56 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v49 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = v45 - v23;
  v24 = qword_1EC190528;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC192688;
  v25 = unk_1EC192690;
  v27 = qword_1EC192698;
  v28 = byte_1EC1926A0;

  sub_1C59DD354(v26, v25, v27, v28, v16);
  v29 = sub_1C59498C4(v45[0]);
  swift_beginAccess();
  sub_1C59318C8(a1 + 80, v67);
  swift_unknownObjectRetain();

  v30 = v55;
  WitnessTable = swift_getWitnessTable();
  v32 = v47;
  sub_1C59DD4E8(v29, v67, v30, a4, WitnessTable);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v67);
  (*(v46 + 8))(v16, v30);
  v33 = swift_getWitnessTable();
  v65 = WitnessTable;
  v66 = v33;
  v34 = swift_getWitnessTable();
  v35 = v57;
  View.mcui.getter(v10, v57);
  (*(v48 + 8))(v32, v10);
  v36 = v50;
  v37 = v59;
  MCUINamespace<A>.marqueeFeathering(_:_:)(0, 0x4024000000000000, 0, v59, v34);
  (*(v58 + 8))(v35, v37);
  v38 = sub_1C5958FE8();
  v63 = v34;
  v64 = v38;
  v39 = swift_getWitnessTable();
  v40 = v49;
  MEMORY[0x1C694E550](v39, v18, MEMORY[0x1E697FB10], v39);
  (*(v52 + 8))(v36, v18);
  v61 = v39;
  v62 = MEMORY[0x1E697FB08];
  v41 = swift_getWitnessTable();
  v42 = v51;
  sub_1C593EDC0(v40, v20, v41);
  v43 = *(v56 + 8);
  v43(v40, v20);
  sub_1C593EDC0(v42, v20, v41);
  return (v43)(v42, v20);
}

uint64_t sub_1C59DDD40()
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v0, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
  v1 = sub_1C5BC88C4();
  sub_1C5BC8C84();
  return v1;
}

uint64_t sub_1C59DDDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192828);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192840);
  MEMORY[0x1EEE9AC00](v59);
  v16 = (&v53 - v15);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192848);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v56 = &v53 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192850);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v53 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192858);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v53 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192860);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v53 - v20;
  v21 = sub_1C5BC9144();
  v22 = [objc_opt_self() currentTraitCollection];
  [v22 displayScale];
  v24 = v23;

  v25 = 1.0;
  if ((*&v24 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v24;
  }

  if ((~*&v24 & 0x7FF0000000000000) != 0)
  {
    v26 = v24;
  }

  if (v24 >= 1.0)
  {
    v25 = v26;
  }

  *v16 = v21;
  v16[1] = 2.0 / v25 + 4.0;
  *(v16 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192868);
  sub_1C59DE4A8(v3, *(a1 + 16), *(a1 + 24), v16 + *(v27 + 44));
  v28 = *MEMORY[0x1E697E728];
  v29 = sub_1C5BC89B4();
  (*(*(v29 - 8) + 104))(v14, v28, v29);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v55 = v3;
    sub_1C5924F54(&qword_1EC192870, &qword_1EC192840);
    v53 = a1;
    v54 = a2;
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    v31 = v56;
    sub_1C5BC9F54();
    sub_1C5924EF4(v14, &qword_1EC192838);
    sub_1C5924EF4(v16, &qword_1EC192840);
    v32 = *(v63 + 32);
    v33 = v65;
    v32(v11, v31, v65);
    v66 = 0;
    sub_1C5BCA684();
    v34 = v67;
    v35 = v68;
    v36 = v57;
    v32(v57, v11, v33);
    v37 = (v36 + *(v58 + 36));
    *v37 = v34;
    v37[1] = v35;
    sub_1C59E7D34(v36, v8, &qword_1EC192850);
    KeyPath = swift_getKeyPath();
    v39 = v8;
    v40 = v64;
    sub_1C59E7D34(v39, v64, &qword_1EC192850);
    v41 = v40 + *(v60 + 36);
    *v41 = KeyPath;
    *(v41 + 8) = 256;
    *(v41 + 16) = 0x4040000000000000;
    *(v41 + 24) = 0;
    v42 = swift_getKeyPath();
    v43 = sub_1C595E4FC(&unk_1F4513880);
    v44 = v40;
    v45 = v62;
    sub_1C59E7D34(v44, v62, &qword_1EC192858);
    v46 = (v45 + *(v61 + 36));
    *v46 = v42;
    v46[1] = v43;
    v47 = sub_1C59E0230();
    v49 = v48;
    v50 = v45;
    v51 = v54;
    sub_1C59E7D34(v50, v54, &qword_1EC192860);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192878);
    v52 = (v51 + *(result + 52));
    *v52 = v47;
    v52[1] = v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59DE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192890);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v37 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192898);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928A0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928A8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v41 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  *v16 = sub_1C5BC8FC4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928B0) + 44)];
  v37 = a3;
  sub_1C59DE9B4(a1, a2, a3, v22);
  _s23MarqueeTitleAndSubtitleVMa();
  v23 = *(a1 + 8);
  swift_beginAccess();
  v24 = *(v23 + 40);
  v48 = *(v23 + 32);
  v49 = v24;
  sub_1C5924F54(&qword_1EC1928B8, &qword_1EC1928A0);
  sub_1C594A23C();
  v38 = v21;
  sub_1C5BCA034();
  sub_1C5924EF4(v16, &qword_1EC1928A0);
  *v8 = sub_1C5BC8FC4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928C0);
  sub_1C59DF884(a1, a2, v37, &v8[*(v25 + 44)]);
  v26 = *(a1 + 8);
  swift_beginAccess();
  if (*(v26 + 64))
  {
    v27 = *(v26 + 56);
    v28 = *(v26 + 64);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  v46 = v27;
  v47 = v28;
  sub_1C5924F54(&qword_1EC1928C8, &qword_1EC192890);

  v29 = v39;
  sub_1C5BCA034();

  sub_1C5924EF4(v8, &qword_1EC192890);
  swift_beginAccess();
  v30 = v43;
  sub_1C5BC8A44();
  sub_1C5924EF4(v29, &qword_1EC192898);
  v31 = v38;
  v32 = v41;
  sub_1C59400B0(v38, v41, &qword_1EC1928A8);
  v33 = v44;
  sub_1C59400B0(v30, v44, &qword_1EC192898);
  v34 = v45;
  sub_1C59400B0(v32, v45, &qword_1EC1928A8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928D0);
  sub_1C59400B0(v33, v34 + *(v35 + 48), &qword_1EC192898);
  sub_1C5924EF4(v30, &qword_1EC192898);
  sub_1C5924EF4(v31, &qword_1EC1928A8);
  sub_1C5924EF4(v33, &qword_1EC192898);
  return sub_1C5924EF4(v32, &qword_1EC1928A8);
}

uint64_t sub_1C59DE9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54[1] = a2;
  v54[2] = a3;
  v56 = a4;
  v5 = sub_1C5BC90F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v54 - v10;
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192928);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = v54 - v19;
  v58 = a1;
  v20 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v79 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v54[0] = v12;
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v54[0]);
    v20 = v79;
  }

  swift_getKeyPath();
  *&v94[0] = v20;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v22 = *(v20 + 17);

  v93[0] = 0;
  sub_1C5BCA684();
  v84 = v94[0];
  *&v85 = swift_getKeyPath();
  BYTE8(v85) = 0;
  KeyPath = swift_getKeyPath();
  v87 = 0uLL;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = swift_getKeyPath();
  LOBYTE(v89) = 0;
  *(&v89 + 1) = swift_getKeyPath();
  LOBYTE(v90) = 0;
  v76 = 1;
  v81 = xmmword_1C5BD5080;
  *&v82[0] = 0x4008000000000000;
  BYTE8(v82[0]) = v22;
  *(v82 + 9) = v77;
  BYTE11(v82[0]) = v78;
  *(v82 + 12) = 0;
  DWORD1(v82[1]) = 0;
  BYTE8(v82[1]) = 1;
  *(&v82[1] + 9) = *v75;
  HIDWORD(v82[1]) = *&v75[3];
  *&v83 = 0xD000000000000010;
  *(&v83 + 1) = 0x80000001C5BF6940;
  v23 = v58;
  sub_1C59DF29C(v58, v80);
  *(&v90 + 1) = 0;
  v91 = 1;
  _s23MarqueeTitleAndSubtitleVMa();
  v24 = *(v23 + 8);
  swift_beginAccess();
  v25 = *(v24 + 48);

  sub_1C594C704(v11);
  (*(v6 + 104))(v9, *MEMORY[0x1E697F600], v5);
  v26 = sub_1C5BC8274();
  v27 = *(v6 + 8);
  v27(v9, v5);
  v27(v11, v5);
  if (v26)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_1C5BCA524();
  }

  if (*(v25 + 16))
  {
    v28 = sub_1C5B5CC2C(v25);
    v30 = v29;
    v32 = v31;
    v33 = swift_getKeyPath();
  }

  else
  {

    v33 = swift_getKeyPath();
    v28 = 0;
    v30 = 0;
    v32 = 0;
  }

  v71 = v88;
  v72 = v89;
  v73 = v90;
  LOBYTE(v74) = v91;
  v67 = v84;
  v68 = v85;
  v69 = KeyPath;
  v70 = v87;
  v63 = v81;
  v64 = v82[0];
  v65 = v82[1];
  v66 = v83;
  v61 = v80[0];
  v62 = v80[1];
  v34 = swift_getKeyPath();
  v35 = _AXSInvertColorsEnabled();
  v36 = &type metadata for DefaultMarqueeMaskStyle;
  if (!v35)
  {
    v36 = &type metadata for BackdropMarqueeMaskStyle;
  }

  v37 = &off_1F4528E98;
  if (!v35)
  {
    v37 = &off_1F4528E90;
  }

  *(&v94[1] + 1) = v36;
  *&v94[2] = v37;
  sub_1C59318C8(v94, &v92[16] + 8);
  *&v92[16] = v34;
  v92[10] = v71;
  v92[11] = v72;
  v92[12] = v73;
  v92[6] = v67;
  v92[7] = v68;
  v92[8] = v69;
  v92[9] = v70;
  v92[2] = v63;
  v92[3] = v64;
  v92[4] = v65;
  v92[5] = v66;
  v92[0] = v61;
  v92[1] = v62;
  *&v92[13] = v74;
  *(&v92[13] + 1) = v33;
  *&v92[14] = 0;
  *(&v92[14] + 1) = v28;
  *&v92[15] = v30;
  *(&v92[15] + 1) = v32;
  __swift_destroy_boxed_opaque_existential_0(v94);
  memcpy(v93, v92, sizeof(v93));
  v38 = v58;
  swift_beginAccess();

  v39 = sub_1C5BCAE44();

  v40 = [v39 _isNaturallyRTL];

  v41 = swift_getKeyPath();
  v42 = *(v38 + 24);
  v43 = swift_getKeyPath();
  memcpy(v94, v93, sizeof(v94));
  v95 = v41;
  v96 = v40;
  v97 = v43;
  v98 = v42;
  v44 = objc_opt_self();

  v45 = [v44 mainBundle];
  v46 = sub_1C5949F2C();
  v48 = v47;

  v59 = v46;
  v60 = v48;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF6960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192930);
  sub_1C59E6C28();
  v49 = v57;
  sub_1C5BCA164();

  sub_1C5924EF4(v94, &qword_1EC192930);
  v50 = v55;
  sub_1C59400B0(v49, v55, &qword_1EC192928);
  v51 = v56;
  sub_1C59400B0(v50, v56, &qword_1EC192928);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192988) + 48);
  *v52 = 0;
  *(v52 + 8) = 0;
  sub_1C5924EF4(v49, &qword_1EC192928);
  return sub_1C5924EF4(v50, &qword_1EC192928);
}

uint64_t sub_1C59DF29C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v39 = sub_1C5BC8F34();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23MarqueeTitleAndSubtitleVMa();
  v5 = *(a1 + 8);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v46 = v6;
  v47 = v7;
  sub_1C594A23C();

  v8 = sub_1C5BC9CA4();
  v10 = v9;
  v12 = v11;
  v13 = sub_1C5BC9C14();
  v15 = v14;
  v17 = v16;
  sub_1C5953BD8(v8, v10, v12 & 1);

  if (qword_1EC190540 != -1)
  {
    swift_once();
  }

  v46 = qword_1EC1926D8;
  v47 = unk_1EC1926E0;
  sub_1C59E6BD4();

  v40 = sub_1C5BC9BC4();
  v19 = v18;
  v21 = v20;
  v41 = v22;
  sub_1C5953BD8(v13, v15, v17 & 1);

  v23 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v23, 0);
    (*(v38 + 8))(v4, v39);
    if (v46 != 1)
    {
      goto LABEL_8;
    }
  }

  v25 = *(a1 + 8);
  swift_beginAccess();
  sub_1C59318C8(v25 + 80, &v46);
  v26 = v48;
  __swift_project_boxed_opaque_existential_0(&v46, v48);
  v44 = &type metadata for MetadataButtonStyle;
  v45 = sub_1C59E6F34();
  sub_1C59DF660(v43, v26);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(&v46);
LABEL_8:
  v27 = v40;
  v28 = sub_1C5BC9C84();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1C5953BD8(v27, v19, v21 & 1);

  v36 = v42;
  *v42 = v28;
  v36[1] = v30;
  *(v36 + 16) = v32 & 1;
  v36[3] = v34;
  return result;
}

uint64_t sub_1C59DF660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BCB804();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C59318C8(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192750);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v8, 0, 1, a2);
    (*(v9 + 32))(v11, v8, a2);
    v14 = sub_1C5BCADB4();
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    v13(v8, 1, 1, a2);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1C59DF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v37 = a4;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928D8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v43 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v14 = v43;
  }

  swift_getKeyPath();
  *v57 = v14;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v16 = *(v14 + 17);

  *v56 = 0;
  sub_1C5BCA684();
  v48 = *v57;
  *&v49 = swift_getKeyPath();
  BYTE8(v49) = 0;
  KeyPath = swift_getKeyPath();
  v51 = 0uLL;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = swift_getKeyPath();
  LOBYTE(v53) = 0;
  *(&v53 + 1) = swift_getKeyPath();
  LOBYTE(v54) = 0;
  v40 = 1;
  v45 = xmmword_1C5BD5080;
  *&v46[0] = 0x4008000000000000;
  BYTE8(v46[0]) = v16;
  *(v46 + 9) = v41;
  BYTE11(v46[0]) = v42;
  *(v46 + 12) = 0;
  DWORD1(v46[1]) = 0;
  BYTE8(v46[1]) = 1;
  *(&v46[1] + 9) = *v39;
  HIDWORD(v46[1]) = *&v39[3];
  *&v47 = 0xD000000000000013;
  *(&v47 + 1) = 0x80000001C5BF6900;
  sub_1C59DFEA4(a1, v44);
  *(&v54 + 1) = 0;
  v55 = 1;
  v17 = swift_getKeyPath();
  v18 = _AXSInvertColorsEnabled();
  v19 = &type metadata for DefaultMarqueeMaskStyle;
  if (!v18)
  {
    v19 = &type metadata for BackdropMarqueeMaskStyle;
  }

  v20 = &off_1F4528E90;
  if (v18)
  {
    v20 = &off_1F4528E98;
  }

  *&v57[24] = v19;
  *&v57[32] = v20;
  sub_1C59318C8(v57, &v56[224]);
  *&v56[216] = v17;
  *&v56[160] = v52;
  *&v56[176] = v53;
  *&v56[192] = v54;
  v56[208] = v55;
  *&v56[96] = v48;
  *&v56[112] = v49;
  *&v56[128] = KeyPath;
  *&v56[144] = v51;
  *&v56[32] = v45;
  *&v56[48] = v46[0];
  *&v56[64] = v46[1];
  *&v56[80] = v47;
  *v56 = v44[0];
  *&v56[16] = v44[1];
  __swift_destroy_boxed_opaque_existential_0(v57);
  memcpy(v38, v56, sizeof(v38));
  _s23MarqueeTitleAndSubtitleVMa();
  v21 = *(a1 + 8);
  swift_beginAccess();
  v24 = 0;
  if (*(v21 + 64))
  {

    v22 = sub_1C5BCAE44();

    v23 = [v22 _isNaturallyRTL];

    if (v23)
    {
      v24 = 1;
    }
  }

  v25 = swift_getKeyPath();
  memcpy(v57, v38, sizeof(v57));
  v58 = v25;
  v59 = v24;
  v26 = [objc_opt_self() mainBundle];
  v27 = sub_1C5949F2C();
  v29 = v28;

  v38[0] = v27;
  v38[1] = v29;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BF6920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928E0);
  sub_1C59E6A38();
  sub_1C5BCA164();

  sub_1C5924EF4(v57, &qword_1EC1928E0);
  v30 = v36;
  sub_1C59400B0(v13, v36, &qword_1EC1928D8);
  v31 = v37;
  sub_1C59400B0(v30, v37, &qword_1EC1928D8);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192918) + 48);
  *v32 = 0;
  *(v32 + 8) = 0;
  sub_1C5924EF4(v13, &qword_1EC1928D8);
  return sub_1C5924EF4(v30, &qword_1EC1928D8);
}

uint64_t sub_1C59DFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_1C5BC8F34();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s23MarqueeTitleAndSubtitleVMa();
  v8 = *(a1 + 8);
  swift_beginAccess();
  if (*(v8 + 64))
  {
    v9 = *(v8 + 56);
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = 0xE100000000000000;
    v9 = 32;
  }

  v39 = v9;
  v40 = v10;
  sub_1C594A23C();

  v11 = sub_1C5BC9CA4();
  v13 = v12;
  v15 = v14;
  v16 = sub_1C5BC9C14();
  v36 = v17;
  v37 = v16;
  v19 = v18;
  v38 = v20;
  sub_1C5953BD8(v11, v13, v15 & 1);

  v21 = a1 + *(v7 + 52);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v22, 0);
    (*(v4 + 8))(v6, v35);
    if (v39 != 1)
    {
LABEL_12:
      if (qword_1EC190548 != -1)
      {
        swift_once();
      }

      v39 = qword_1EC1926E8;
      v40 = qword_1EC1926F0;
      sub_1C59E6BD4();

      goto LABEL_15;
    }
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  if (qword_1EC190550 != -1)
  {
    swift_once();
  }

  v39 = *__swift_project_value_buffer(MEMORY[0x1E69815C0], qword_1EC1926F8);

LABEL_15:
  v39 = sub_1C5BC85E4();
  v25 = v36;
  v24 = v37;
  v26 = sub_1C5BC9BC4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1C5953BD8(v24, v25, v19 & 1);

  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  return result;
}

uint64_t sub_1C59E0230()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  v14[0] = v1[5];
  swift_beginAccess();
  v2 = v1[8];
  v14[1] = v1[7];
  v14[2] = v2;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = &v14[2 * v3];
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C59622E4(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1C59622E4((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192888);
  sub_1C5924F54(&qword_1EDA45EB0, &qword_1EC192888);
  v12 = sub_1C5BCAD74();

  return v12;
}

uint64_t MetadataStyleModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a1;
  v57 = a3;
  swift_getWitnessTable();
  v6 = sub_1C5BC9394();
  v51 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = sub_1C5BC8B34();
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C5BCA6F4();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C59576B4(&qword_1EC192338, 255, MEMORY[0x1E697C248]);
  *&v61 = v13;
  *(&v61 + 1) = v11;
  v56 = v11;
  v59 = v16;
  v60 = v15;
  *&v62 = v15;
  *(&v62 + 1) = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v45 - v21;
  v22 = sub_1C5BC92D4();
  v54 = *(v22 - 8);
  v55 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  sub_1C59318C8(v4 + 8, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192750);
  if (swift_dynamicCast())
  {
    (*(*(a2 - 8) + 16))(&v61, v4, a2);
    v25 = swift_allocObject();
    v26 = *(a2 + 24);
    *(v25 + 16) = *(a2 + 16);
    *(v25 + 24) = v26;
    v27 = v62;
    *(v25 + 32) = v61;
    *(v25 + 48) = v27;
    *(v25 + 64) = v63;
    MEMORY[0x1EEE9AC00](v25);
    *(&v45 - 4) = v28;
    *(&v45 - 3) = v29;
    *(&v45 - 2) = v53;
    v30 = v46;
    sub_1C5BCA6E4();
    v31 = v50;
    sub_1C5BC8B24();
    v32 = v56;
    v34 = v59;
    v33 = v60;
    sub_1C5BC9DA4();
    (*(v52 + 8))(v31, v32);
    v35 = v32;
    (*(v48 + 8))(v30, v13);
    *&v61 = v13;
    *(&v61 + 1) = v32;
    *&v62 = v33;
    *(&v62 + 1) = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v45;
    sub_1C593EDC0(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v38 = *(v47 + 8);
    v38(v20, OpaqueTypeMetadata2);
    sub_1C593EDC0(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v39 = WitnessTable;
    sub_1C5950E54(v20, OpaqueTypeMetadata2);
    v38(v20, OpaqueTypeMetadata2);
    v38(v37, OpaqueTypeMetadata2);
  }

  else
  {
    v39 = WitnessTable;
    sub_1C593EDC0(v53, v6, WitnessTable);
    v40 = v49;
    sub_1C593EDC0(v10, v6, v39);
    v35 = v56;
    *&v61 = v13;
    *(&v61 + 1) = v56;
    *&v62 = v60;
    *(&v62 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_1C5941738(v40, OpaqueTypeMetadata2, v6);
    v41 = *(v51 + 8);
    v41(v40, v6);
    v41(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v66);
  *&v61 = v13;
  *(&v61 + 1) = v35;
  *&v62 = v60;
  *(&v62 + 1) = v59;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v39;
  v42 = v55;
  v43 = swift_getWitnessTable();
  sub_1C593EDC0(v24, v42, v43);
  return (*(v54 + 8))(v24, v42);
}

uint64_t sub_1C59E0BD8(uint64_t a1)
{
  type metadata accessor for MetadataStyleModifier();
  swift_getWitnessTable();
  v2 = sub_1C5BC9394();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(a1, v2, WitnessTable);
  sub_1C593EDC0(v5, v2, WitnessTable);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C59E0D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a4;
  v9 = sub_1C5BC8F34();
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8);
  v94 = *(v11 - 8);
  v95 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v90 = v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192998);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v99 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v86 - v16;
  v18 = *(a1 + 32);
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1C5BC8034();

    v19 = v136;
    v96 = v18;
    v97 = v13;
    v98 = a5;
    v100 = a3;
    if (v136)
    {
      if (([v136 isDeviceRoute] & 1) == 0)
      {
        v89 = v17;
        v21 = _UISolariumEnabled();
        v87 = v19;
        v22 = [v19 routeName];
        v23 = sub_1C5BCAE74();
        v25 = v24;

        v88 = a1;
        if ((v21 & 1) == 0)
        {
          v23 = sub_1C5BCAEC4();
          v27 = v26;

          v25 = v27;
        }

        *&v136 = v23;
        *(&v136 + 1) = v25;
        sub_1C594A23C();
        v28 = sub_1C5BC9CA4();
        v30 = v29;
        v32 = v31;
        v33 = *(a2 + 16);
        v34 = sub_1C5BC9C14();
        v36 = v35;
        v38 = v37;
        sub_1C5953BD8(v28, v30, v32 & 1);

        v162[0] = v33;
        *&v136 = v33;

        v39 = sub_1C5BC9BC4();
        v41 = v40;
        LOBYTE(v33) = v42;
        v44 = v43;
        v86[1] = v43;
        sub_1C5953BD8(v34, v36, v38 & 1);

        sub_1C5961F90(v162);
        KeyPath = swift_getKeyPath();
        *&v136 = v39;
        v46 = v39;
        *(&v136 + 1) = v41;
        LOBYTE(v39) = v33 & 1;
        LOBYTE(v137) = v33 & 1;
        *(&v137 + 1) = v44;
        *&v138 = KeyPath;
        *(&v138 + 1) = 1;
        LOBYTE(v139) = 0;
        v47 = [objc_opt_self() mainBundle];
        v48 = sub_1C5949F2C();
        v50 = v49;

        *&v128 = v48;
        *(&v128 + 1) = v50;
        MEMORY[0x1C694F170](46, 0xE100000000000000);
        MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF6980);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0);
        sub_1C595E1AC();
        v51 = v90;
        sub_1C5BCA164();

        sub_1C5953BD8(v46, v41, v39);

        v52 = v51;
        v17 = v89;
        sub_1C59E71FC(v52, v89);
        v20 = 0;
        a1 = v88;
LABEL_9:
        (*(v94 + 56))(v17, v20, 1, v95);
        v53 = *(a1 + 8);
        swift_beginAccess();
        v55 = *(v53 + 24);
        v54 = *(v53 + 32);
        swift_beginAccess();
        v56 = *(v53 + 89);
        swift_beginAccess();
        if (*(v53 + 16) == 2)
        {
          swift_beginAccess();
          sub_1C59318C8(v53 + 96, &v136);
          v57 = *(&v137 + 1);
          __swift_project_boxed_opaque_existential_0(&v136, *(&v137 + 1));
          *(&v129 + 1) = &type metadata for MetadataButtonStyle;
          *&v130 = sub_1C59E6F34();

          sub_1C59DF660(&v128, v57);
          __swift_destroy_boxed_opaque_existential_0(&v128);
          __swift_destroy_boxed_opaque_existential_0(&v136);
        }

        else
        {
        }

        v58 = sub_1C5BC8C84();
        v60 = v59;
        v61 = swift_getKeyPath();
        v153 = 0;
        *&v149 = v55;
        *(&v149 + 1) = v54;
        LOWORD(v150) = v56;
        *(&v150 + 1) = v58;
        *&v151 = v60;
        *(&v151 + 1) = v61;
        v152 = 0;
        v62 = *(a1 + 128);
        if (*(a1 + 136) == 1)
        {
          v148 = *(a1 + 128);
        }

        else
        {

          sub_1C5BCB4E4();
          v63 = sub_1C5BC9844();
          sub_1C5BC7C54();

          v64 = v91;
          sub_1C5BC8F24();
          swift_getAtKeyPath();

          (*(v92 + 8))(v64, v93);
          v62 = v148;
        }

        swift_getKeyPath();
        *&v136 = v62;
        sub_1C59576B4(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties);
        sub_1C5BC7B74();

        v65 = *(v62 + 49);

        LOBYTE(v136) = v65;
        v66 = _s22MiniPlayerMetadataViewV5TitleVMa();
        WitnessTable = swift_getWitnessTable();
        v68 = sub_1C59E7054();
        sub_1C5BCA1C4();
        v144[0] = v149;
        v144[1] = v150;
        v144[2] = v151;
        v145 = v152;
        (*(*(v66 - 8) + 8))(v144, v66);
        v136 = v154;
        v137 = v155;
        v138 = v156;
        v139 = v157;
        *&v128 = v66;
        *(&v128 + 1) = &type metadata for NowPlayingMiniPlayerPosition;
        *&v129 = WitnessTable;
        *(&v129 + 1) = v68;
        v69 = sub_1C5BCA724();
        v93 = swift_getWitnessTable();
        sub_1C593EDC0(&v136, v69, v93);
        v146[0] = v136;
        v146[1] = v137;
        v146[2] = v138;
        v147 = v139;
        v92 = *(v69 - 8);
        v94 = *(v92 + 8);
        v95 = v92 + 8;
        (v94)(v146, v69);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1C5BC8034();

        v70 = v136;
        if (!v136 || (v71 = [v136 isDeviceRoute], v70, v71))
        {
          v72 = *(a1 + 8);
          swift_beginAccess();
          sub_1C59400B0(v72 + 40, &v136, &qword_1EC192770);
          if (v139 != 255)
          {
            v124 = v136;
            v125 = v137;
            v126 = v138;
            LOBYTE(v127) = v139;
            sub_1C59E64F4(&v124, &v128);
            swift_beginAccess();
            v73 = *(v72 + 89);
            v136 = v128;
            v137 = v129;
            v138 = v130;
            LOBYTE(v139) = v131;
            HIBYTE(v139) = v73;
            v140 = sub_1C5BC8C84();
            v141 = v74;
            v142 = swift_getKeyPath();
            v143 = 0;
            sub_1C59E6580(&v124);
            v75 = _s22MiniPlayerMetadataViewV8SubtitleVMa();
            v76 = swift_getWitnessTable();
            sub_1C593EDC0(&v136, v75, v76);
            v77 = *(*(v75 - 8) + 8);
            v77(&v136, v75);
            sub_1C593EDC0(&v128, v75, v76);
            v77(&v128, v75);
            v104 = v110;
            v105 = v111;
            v106 = v112;
            v107 = v113;
            v102 = v108;
            v103 = v109;
            sub_1C5941600(&v102, &v136);
            v78 = sub_1C5BCB804();
            (*(*(v78 - 8) + 8))(&v102, v78);
LABEL_21:
            v80 = v99;
            sub_1C59400B0(v17, v99, &qword_1EC192998);
            v124 = v158;
            v125 = v159;
            v126 = v160;
            v127 = v161;
            v119 = v158;
            v120 = v159;
            v121 = v160;
            v122 = v161;
            v123[0] = v80;
            v123[1] = &v119;
            _s22MiniPlayerMetadataViewV8SubtitleVMa();
            v81 = sub_1C5BCB804();
            v82 = *(v81 - 8);
            (*(v82 + 16))(&v128, &v136, v81);
            v123[2] = &v128;
            (*(v92 + 16))(&v108, &v124, v69);
            v118[0] = v97;
            v118[1] = v69;
            v118[2] = v81;
            v115 = sub_1C595E060(&qword_1EDA46498, &qword_1EC192998, &unk_1C5BD6120, sub_1C595E0EC);
            v116 = v93;
            v114 = swift_getWitnessTable();
            v117 = swift_getWitnessTable();
            sub_1C594226C(v123, 3uLL, v118);
            v83 = *(v82 + 8);
            v83(&v136, v81);
            v102 = v158;
            v103 = v159;
            v104 = v160;
            LOWORD(v105) = v161;
            v84 = v94;
            (v94)(&v102, v69);
            sub_1C5924EF4(v17, &qword_1EC192998);
            v83(&v128, v81);
            v108 = v119;
            v109 = v120;
            v110 = v121;
            LOWORD(v111) = v122;
            v84(&v108, v69);
            return sub_1C5924EF4(v99, &qword_1EC192998);
          }

          sub_1C5924EF4(&v136, &qword_1EC192770);
        }

        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        v131 = 0;
        v132 = 1;
        _s22MiniPlayerMetadataViewV8SubtitleVMa();
        v134 = 0;
        v133 = 0;
        v135 = 0;
        swift_getWitnessTable();
        sub_1C5941600(&v128, &v136);
        v79 = sub_1C5BCB804();
        (*(*(v79 - 8) + 8))(&v128, v79);
        goto LABEL_21;
      }
    }

    v20 = 1;
    goto LABEL_9;
  }

  type metadata accessor for NowPlayingRouteObserver();
  sub_1C59576B4(&qword_1EDA48458, 255, type metadata accessor for NowPlayingRouteObserver);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

void sub_1C59E1B90(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v18;
  }

  swift_getKeyPath();
  v18 = v6;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v9 = *(v6 + 17);

  if (v9 == 1)
  {
    v10 = *(a1 + 8);
    KeyPath = swift_getKeyPath();
    v12 = swift_getKeyPath();

    sub_1C5B3EBBC(0, v10, KeyPath, v12);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EDA5DA78);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C5922000, v14, v15, "Mini player marquee disabled (transitioning out of mini player)", v16, 2u);
      MEMORY[0x1C69510F0](v16, -1, -1);
    }
  }
}

void sub_1C59E1E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v33[0];
  }

  swift_getKeyPath();
  v33[0] = v10;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v13 = *(v10 + 17);

  if ((v13 & 1) == 0)
  {
    v14 = *(a3 + 8);
    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();

    sub_1C5B3EBBC(1, v14, KeyPath, v16);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DA78);
    sub_1C59400B0(a1, v33, &qword_1EC1929B0);
    sub_1C59400B0(a2, v32, &qword_1EC1929B0);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      sub_1C59400B0(v33, v30, &qword_1EC1929B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0);
      v22 = sub_1C5BCAEA4();
      v24 = v23;
      sub_1C5924EF4(v33, &qword_1EC1929B0);
      v25 = sub_1C592ADA8(v22, v24, &v31);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      sub_1C59400B0(v32, v30, &qword_1EC1929B0);
      v26 = sub_1C5BCAEA4();
      v28 = v27;
      sub_1C5924EF4(v32, &qword_1EC1929B0);
      v29 = sub_1C592ADA8(v26, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1C5922000, v18, v19, "Mini player marquee enabled (currentItemID changed from %{public}s to %{public}s)", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v21, -1, -1);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    else
    {

      sub_1C5924EF4(v32, &qword_1EC1929B0);
      sub_1C5924EF4(v33, &qword_1EC1929B0);
    }
  }
}

uint64_t sub_1C59E22A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v36 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v36 - v7;
  v8 = *a1;
  v9 = a1[1];
  v42 = v8;
  v43 = v9;
  sub_1C594A23C();

  v10 = sub_1C5BC9CA4();
  v12 = v11;
  v14 = v13;
  v15 = *(a2 + 32);
  v16 = sub_1C5BC9C14();
  v18 = v17;
  v20 = v19;
  sub_1C5953BD8(v10, v12, v14 & 1);

  v49 = v15;
  v42 = v15;

  v21 = sub_1C5BC9BC4();
  v23 = v22;
  LOBYTE(v15) = v24;
  v26 = v25;
  sub_1C5953BD8(v16, v18, v20 & 1);

  sub_1C5961F90(&v49);
  KeyPath = swift_getKeyPath();
  v42 = v21;
  v43 = v23;
  LOBYTE(v15) = v15 & 1;
  v44 = v15;
  v45 = v26;
  v46 = KeyPath;
  v47 = 1;
  v48 = 0;
  v28 = [objc_opt_self() mainBundle];
  v29 = sub_1C5949F2C();
  v31 = v30;

  v40 = v29;
  v41 = v31;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0);
  sub_1C595E1AC();
  sub_1C5BCA164();
  sub_1C5953BD8(v21, v23, v15);

  v32 = *MEMORY[0x1E697E6E8];
  v33 = sub_1C5BC89B4();
  (*(*(v33 - 8) + 104))(v6, v32, v33);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    sub_1C595E0EC();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    v35 = v39;
    sub_1C5BC9F54();
    sub_1C5924EF4(v6, &qword_1EC192838);
    return sub_1C5924EF4(v35, &qword_1EC1929B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59E26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = v6;
  v66 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = AssociatedTypeWitness;
  v60 = swift_getAssociatedTypeWitness();
  v61 = sub_1C5BCB804();
  v8 = sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A10);
  v63 = v8;
  v67 = sub_1C5BC92D4();
  v9 = sub_1C5BCA584();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v58 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v12 = sub_1C5BC8AB4();
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v58 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180);
  v14 = sub_1C5BC8AB4();
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v58 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  v74 = v14;
  v16 = sub_1C5BC8AB4();
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v58 - v17;
  sub_1C5BC97C4();
  v78 = v16;
  v18 = sub_1C5BC8AB4();
  v79 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v75 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v58 - v21;
  v22 = sub_1C5BC8F34();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v3 + 72);
  if (*(v3 + 80) == 1)
  {
    v28 = *(v3 + 72);
    v98 = *(v3 + 72);
  }

  else
  {
    v58 = v24;

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    v59 = v3;
    v30 = v29;
    sub_1C5BC7C54();

    v3 = v59;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v23 + 8))(v26, v58);
    v28 = v98;
  }

  if (v28 == 3)
  {
    LOBYTE(v28) = 0;
  }

  LOBYTE(v96[0]) = v28;
  v31 = sub_1C595D950(v96, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v96[0] = v99;
  v96[1] = v100;
  v96[2] = v101;
  v97 = v102;
  MEMORY[0x1EEE9AC00](v31);
  v32 = v66;
  *(&v58 - 4) = v65;
  *(&v58 - 3) = v32;
  *(&v58 - 2) = v3;
  v33 = sub_1C59E75D8();
  v95 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v93 = v33;
  v94 = WitnessTable;
  v35 = swift_getWitnessTable();
  v36 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
  v91 = v35;
  v92 = v36;
  v37 = swift_getWitnessTable();
  v38 = v68;
  sub_1C5BCA574();
  v39 = v97;
  v90 = v37;
  v40 = swift_getWitnessTable();
  v41 = v69;
  sub_1C5BCA1F4();
  (*(v10 + 8))(v38, v9);
  v89 = v39;
  v42 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v87 = v40;
  v88 = v42;
  v43 = swift_getWitnessTable();
  v44 = v70;
  sub_1C5BC9F64();
  (*(v71 + 8))(v41, v12);
  v45 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  v85 = v43;
  v86 = v45;
  v46 = v74;
  v47 = swift_getWitnessTable();
  v48 = v72;
  sub_1C5BCA3B4();
  (*(v73 + 8))(v44, v46);
  v49 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  v83 = v47;
  v84 = v49;
  v50 = v78;
  v51 = swift_getWitnessTable();
  v52 = v75;
  sub_1C595BB1C(0xD000000000000013, 0x80000001C5BF69E0);
  sub_1C595E8B8(v96);
  (*(v76 + 8))(v48, v50);
  v53 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v81 = v51;
  v82 = v53;
  v54 = swift_getWitnessTable();
  v55 = v77;
  sub_1C593EDC0(v52, v18, v54);
  v56 = *(v79 + 8);
  v56(v52, v18);
  sub_1C593EDC0(v55, v18, v54);
  return (v56)(v55, v18);
}

uint64_t sub_1C59E303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  AssociatedConformanceWitness = a1;
  v95 = a2;
  v133 = &type metadata for NowPlayingLookupID;
  *&v134 = swift_getAssociatedTypeWitness();
  *(&v134 + 1) = sub_1C5950C90();
  *&v135 = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ViewProvider();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v91 - v6;
  v103 = v135;
  v105 = v134;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C5BCB804();
  v97 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08);
  v110 = v7;
  v12 = sub_1C5BC92D4();
  v100 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v91 - v22;
  v98 = v11;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A10);
  v109 = v12;
  v30 = AssociatedConformanceWitness;
  v104 = v29;
  v31 = sub_1C5BC92D4();
  v107 = *(v31 - 8);
  v108 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v106 = &v91 - v32;
  sub_1C59E64F4(v30, &v133);
  if (v137)
  {
    if (v137 == 1)
    {
      v33 = v133;
      v34 = v134;
      v35 = v95;
      sub_1C59498C4(*(v30 + 56));
      v36 = *(a3 + 384);
      swift_unknownObjectRetain();
      v37 = v92;
      v36(v35, a3);
      swift_unknownObjectRelease();
      v127 = v33;
      v128 = v34;
      v38 = v96;
      v39 = v94;
      sub_1C595BC70(&v127, v94);

      (v93->Description)(v37, v39);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v118 = AssociatedConformanceWitness;
      v40 = v110;
      WitnessTable = swift_getWitnessTable();
      v42 = v101;
      sub_1C593EDC0(v38, v40, WitnessTable);
      v43 = *(v97 + 1);
      v43(v38, v40);
      sub_1C593EDC0(v42, v40, WitnessTable);
      v44 = sub_1C59E75D8();
      v45 = v99;
      sub_1C5941738(v38, v98, v40);
      v116 = v44;
      v117 = WitnessTable;
      v46 = v109;
      swift_getWitnessTable();
      sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
      v47 = v106;
      sub_1C5950E54(v45, v46);
      (*(v100 + 8))(v45, v46);
      v43(v38, v40);
      v43(v101, v40);
      v48 = AssociatedConformanceWitness;
    }

    else
    {
      v131[0] = v134;
      v131[1] = v135;
      v80 = v133;
      v132 = v136;
      sub_1C59E6618(v131, &v128);
      v127 = v80;
      v81 = sub_1C59E75D8();
      v48 = swift_getAssociatedConformanceWitness();
      v126 = v48;
      v82 = swift_getWitnessTable();
      v124 = v81;
      v125 = v82;
      v83 = v109;
      swift_getWitnessTable();
      sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
      v47 = v106;
      sub_1C5941738(&v127, v83, v104);
      sub_1C5924EF4(&v127, &qword_1EC192A10);
      sub_1C59E652C(v131);
    }

    goto LABEL_7;
  }

  v95 = v17;
  v96 = v26;
  v97 = v16;
  v101 = v28;
  v50 = v133;
  v49 = v134;
  v51 = *(v30 + 49);
  v52 = &v23[v20[10]];
  *&v131[0] = 0;
  sub_1C5BCA684();
  v53 = v128;
  *v52 = v127;
  v52[1] = v53;
  v54 = &v23[v20[11]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v23[v20[12]];
  *v55 = swift_getKeyPath();
  *(v55 + 1) = 0;
  *(v55 + 2) = 0;
  *(v55 + 3) = 0;
  v55[32] = 0;
  v56 = &v23[v20[13]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v23[v20[14]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  LOBYTE(v131[0]) = 1;
  v58 = &v23[v20[9]];
  *v58 = xmmword_1C5BD5090;
  *(v58 + 2) = 0x4008000000000000;
  v58[24] = v51;
  *(v58 + 28) = 0;
  *(v58 + 9) = 0;
  v58[40] = 1;
  *(v58 + 6) = 0xD000000000000013;
  *(v58 + 7) = 0x80000001C5BF6A00;
  v127 = v50;
  v128 = v49;
  sub_1C594A23C();

  AssociatedConformanceWitness = sub_1C5BC9CA4();
  v127 = AssociatedConformanceWitness;
  v128 = v59;
  v94 = v59;
  v61 = v60 & 1;
  v129 = v60 & 1;
  v130 = v62;
  v63 = *MEMORY[0x1E697E6E8];
  v64 = sub_1C5BC89B4();
  (*(*(v64 - 8) + 104))(v19, v63, v64);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v93 = v50;
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    sub_1C5BC9F54();
    sub_1C5924EF4(v19, &qword_1EC192838);
    sub_1C5953BD8(AssociatedConformanceWitness, v94, v61);

    v66 = &v23[v20[15]];
    *v66 = 0;
    v66[8] = 1;
    v67 = v97;
    sub_1C59E7D34(v23, v97, &qword_1EC192A18);
    v68 = sub_1C5BCAE44();

    v69 = [v68 _isNaturallyRTL];

    KeyPath = swift_getKeyPath();
    v71 = v67;
    v72 = v96;
    sub_1C59E7D34(v71, v96, &qword_1EC192A18);
    v73 = v98;
    v74 = v72 + *(v98 + 36);
    *v74 = KeyPath;
    *(v74 + 8) = v69;
    v75 = v101;
    sub_1C59E7D34(v72, v101, &qword_1EC192A08);
    v76 = sub_1C59E75D8();
    v48 = swift_getAssociatedConformanceWitness();
    v115 = v48;
    v77 = swift_getWitnessTable();
    v78 = v99;
    sub_1C5950E54(v75, v73);
    v113 = v76;
    v114 = v77;
    v79 = v109;
    swift_getWitnessTable();
    sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
    v47 = v106;
    sub_1C5950E54(v78, v79);
    (*(v100 + 8))(v78, v79);
    sub_1C5924EF4(v75, &qword_1EC192A08);
LABEL_7:
    v85 = v107;
    v84 = v108;
    v86 = sub_1C59E75D8();
    v123 = v48;
    v87 = swift_getWitnessTable();
    v121 = v86;
    v122 = v87;
    v88 = swift_getWitnessTable();
    v89 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
    v119 = v88;
    v120 = v89;
    v90 = swift_getWitnessTable();
    sub_1C593EDC0(v47, v84, v90);
    return (*(v85 + 8))(v47, v84);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C59E3D54()
{
  if (_UISolariumEnabled())
  {
    v0 = sub_1C5BC9A44();
    sub_1C5BC99D4();
    sub_1C5BC9994();
    v1 = sub_1C5BC99E4();

    result = sub_1C5BC99D4();
    v3 = result;
    v4 = 0;
  }

  else
  {
    if (qword_1EC190530 != -1)
    {
      swift_once();
    }

    v0 = qword_1EC1926A8;
    v1 = unk_1EC1926B0;
    v3 = qword_1EC1926B8;
    v4 = byte_1EC1926C0;
  }

  qword_1EC192668 = v0;
  unk_1EC192670 = v1;
  qword_1EC192678 = v3;
  byte_1EC192680 = v4;
  return result;
}

uint64_t sub_1C59E3E28()
{
  if (_UISolariumEnabled())
  {
    v0 = sub_1C5BC9A44();
    v1 = sub_1C5BC9A54();
    result = sub_1C5BC9924();
    v3 = result;
    v4 = 0;
  }

  else
  {
    if (qword_1EC190530 != -1)
    {
      swift_once();
    }

    v0 = qword_1EC1926A8;
    v1 = unk_1EC1926B0;
    v3 = qword_1EC1926B8;
    v4 = byte_1EC1926C0;
  }

  qword_1EC192688 = v0;
  unk_1EC192690 = v1;
  qword_1EC192698 = v3;
  byte_1EC1926A0 = v4;
  return result;
}

uint64_t sub_1C59E3EE4()
{
  sub_1C5BC9A34();
  sub_1C5BC9994();
  v0 = sub_1C5BC99E4();

  sub_1C5BC9924();
  sub_1C5BC9994();
  v1 = sub_1C5BC99E4();

  result = sub_1C5BC9924();
  qword_1EC1926A8 = v0;
  unk_1EC1926B0 = v1;
  qword_1EC1926B8 = result;
  byte_1EC1926C0 = 1;
  return result;
}

uint64_t sub_1C59E3F74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - v4);
  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC1A6AB0;
  v7 = *(v0 + 36);
  v8 = *MEMORY[0x1E6981DB8];
  v9 = sub_1C5BCAB54();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v6;

  v13[1] = sub_1C5BCA4C4();
  sub_1C59400B0(v5, v3, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v10 = sub_1C5BC85E4();
  v11 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v5, &unk_1EC196170);
  qword_1EC1926D8 = v10;
  unk_1EC1926E0 = v11;
  return result;
}

uint64_t sub_1C59E4160(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v18 - v9);
  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC1A6AB8;
  v12 = *(v5 + 36);
  v13 = *MEMORY[0x1E6981DB8];
  v14 = sub_1C5BCAB54();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = v11;

  v18[1] = sub_1C5BCA434();
  sub_1C59400B0(v10, v8, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v15 = sub_1C5BC85E4();
  v16 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v10, &unk_1EC196170);
  *a2 = v15;
  *a3 = v16;
  return result;
}

uint64_t sub_1C59E4348()
{
  v0 = MEMORY[0x1E69815C0];
  __swift_allocate_value_buffer(MEMORY[0x1E69815C0], qword_1EC1926F8);
  v1 = __swift_project_value_buffer(v0, qword_1EC1926F8);
  result = sub_1C5BCA434();
  *v1 = result;
  return result;
}

uint64_t sub_1C59E4398()
{
  if (_UISolariumEnabled())
  {
    v0 = sub_1C5BC9904();
    sub_1C5BCA4C4();
    v1 = sub_1C5BC85E4();
    sub_1C5BC9904();
    sub_1C5BC9994();
    v2 = sub_1C5BC99E4();

    sub_1C5BCA4C4();
    v3 = sub_1C5BC85E4();
    v4 = sub_1C5BC9904();
    *&v10[0] = sub_1C5BCA4C4();
    result = sub_1C5BC85E4();
    v6 = result;
    v7 = 20.0;
    v8 = 0;
  }

  else
  {
    if (qword_1EC190568 != -1)
    {
      swift_once();
    }

    v10[2] = xmmword_1EC192730;
    v10[3] = *&qword_1EC192740;
    v10[0] = xmmword_1EC192710;
    v10[1] = *&qword_1EC192720;
    v7 = unk_1EC192748;
    v4 = *(&xmmword_1EC192730 + 1);
    v6 = qword_1EC192740;
    v2 = unk_1EC192728;
    v3 = xmmword_1EC192730;
    v0 = *(&xmmword_1EC192710 + 1);
    v1 = qword_1EC192720;
    v8 = xmmword_1EC192710;
    result = sub_1C595DE28(v10, &v9);
  }

  *&xmmword_1EC1A69B8 = v8;
  *(&xmmword_1EC1A69B8 + 1) = v0;
  unk_1EC1A69C8 = v1;
  qword_1EC1A69D0 = v2;
  unk_1EC1A69D8 = v3;
  qword_1EC1A69E0 = v4;
  unk_1EC1A69E8 = v6;
  qword_1EC1A69F0 = *&v7;
  return result;
}

uint64_t sub_1C59E4508()
{
  v0 = sub_1C5BC9A34();
  sub_1C5BCA524();
  v1 = sub_1C5BC85E4();
  sub_1C5BC9904();
  sub_1C5BC9974();
  v2 = sub_1C5BC99E4();

  sub_1C5BC93F4();
  v3 = sub_1C5BC85E4();
  v4 = sub_1C5BC9904();
  sub_1C5BCA524();
  result = sub_1C5BC85E4();
  *&xmmword_1EC192710 = 0;
  *(&xmmword_1EC192710 + 1) = v0;
  qword_1EC192720 = v1;
  unk_1EC192728 = v2;
  *&xmmword_1EC192730 = v3;
  *(&xmmword_1EC192730 + 1) = v4;
  qword_1EC192740 = result;
  unk_1EC192748 = 0x4038000000000000;
  return result;
}

uint64_t sub_1C59E45F8@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EC190560 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EC1A69C8;
  v7[0] = xmmword_1EC1A69B8;
  v7[1] = unk_1EC1A69C8;
  v2 = unk_1EC1A69D8;
  v3 = unk_1EC1A69E8;
  v7[2] = unk_1EC1A69D8;
  v7[3] = unk_1EC1A69E8;
  *a1 = xmmword_1EC1A69B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1C595DE28(v7, &v6);
}

uint64_t sub_1C59E46C8()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A69F8 = result;
  unk_1EC1A6A00 = v4;
  return result;
}

uint64_t sub_1C59E4814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C59E4874()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C59E48C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C59E490C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C59E4958(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5971010(v2, v3);
}

uint64_t sub_1C59E4A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1C59E4A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C59707FC(v2, v3, v4);
}

uint64_t sub_1C59E4AF0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C59E4B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1C59E4B84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C59713E8(v2, v3);
}

uint64_t sub_1C59E4BF8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 72);
  return result;
}

uint64_t NowPlayingViewModel.PrimaryMetadata.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  return v0;
}

uint64_t NowPlayingViewModel.PrimaryMetadata.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1C59E4CD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.text(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.lookup(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 48) = 1;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.customView<A, B>(id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4(v3);
  *a2 = sub_1C5BCA804();
  result = sub_1C5BCBCA4();
  *(a2 + 48) = 3;
  return result;
}

_BYTE *static NowPlayingViewModel.MiniPlayerSubtitle.copy(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[48] = 2;
  return result;
}

uint64_t sub_1C59E4E54()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C59E4F2C(uint64_t a1)
{
  v2 = v1;
  sub_1C59400B0(a1, &v24, &qword_1EC192780);
  if (v27 == 255)
  {
    sub_1C5924EF4(&v24, &qword_1EC192780);
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v33 = -1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C59400B0(&v30, v28, &qword_1EC192770);

    sub_1C5971800(v28, v1);
    return sub_1C5924EF4(&v30, &qword_1EC192770);
  }

  sub_1C59E65B0(&v24, v28);
  sub_1C59E65E8(&v24);
  v30 = *v28;
  v31 = *&v28[16];
  v32 = *&v28[32];
  v33 = v29;
  sub_1C59E65B0(&v30, v28);
  if (v29 <= 1u)
  {
    if (!v29)
    {
      v24 = *v28;
      v27 = 0;
LABEL_19:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1C59400B0(&v24, v21, &qword_1EC192770);

      sub_1C5971800(v21, v2);
LABEL_20:
      sub_1C5924EF4(&v24, &qword_1EC192770);
      return sub_1C59E6674(&v30);
    }

    v24 = *v28;
    v12 = 1;
LABEL_18:
    v27 = v12;
    goto LABEL_19;
  }

  if (v29 == 2)
  {
    v4 = v28[0];
    v5 = *(v1 + 136);
    if (*(v5 + 16))
    {
      v6 = sub_1C5AB97D8(v28[0]);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        v9 = v8[1];
        if (v9)
        {
          v10 = 0;
          v11 = *v8;
        }

        else
        {
          v11 = 0;
          v26 = 0u;
          v25 = 0u;
          v10 = -1;
        }

        *&v24 = v11;
        *(&v24 + 1) = v9;
        v27 = v10;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1C59400B0(&v24, v21, &qword_1EC192770);

        sub_1C5971800(v21, v2);
        goto LABEL_20;
      }
    }

    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EDA5DA78);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v24 = v17;
      *v16 = 136446210;
      v21[0] = v4;
      v18 = sub_1C5BCAEA4();
      v20 = sub_1C592ADA8(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1C5922000, v14, v15, "Mini player subtitle unable to copy field %{public}s because its corresponding value could not be found.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1C69510F0](v17, -1, -1);
      MEMORY[0x1C69510F0](v16, -1, -1);
    }

    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = -1;
    goto LABEL_18;
  }

  v22[0] = *&v28[8];
  v22[1] = *&v28[24];
  v23 = *&v28[40];
  *&v24 = *v28;
  sub_1C59E6618(v22, &v24 + 8);
  v27 = 2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C59400B0(&v24, v21, &qword_1EC192770);

  sub_1C5971800(v21, v1);
  sub_1C5924EF4(&v24, &qword_1EC192770);
  sub_1C59E652C(v22);
  return sub_1C59E6674(&v30);
}

uint64_t sub_1C59E53CC()
{

  sub_1C5924EF4(v0 + 40, &qword_1EC192778);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1C59E542C(uint64_t a1, uint64_t *a2)
{
  sub_1C59400B0(a1, v6, &qword_1EC192770);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C59400B0(v6, v5, &qword_1EC192770);

  sub_1C5971800(v5, v3);
  return sub_1C5924EF4(v6, &qword_1EC192770);
}

uint64_t sub_1C59E54E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C5B3EBBC(v2, v3, KeyPath, v5);
}

uint64_t sub_1C59E555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 16))(a3, a4);
  v13 = v12;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C59707FC(v11, v13, a2);
  v14 = (*(a4 + 24))(a3, a4);
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();

  sub_1C59709E4(v14, v16, a2, KeyPath, v18);
  v19 = (*(a4 + 32))(a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5971010(v19, a2);
  v20 = (*(a4 + 40))(a3, a4);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C59707FC(v20, v22, a2);
  (*(a4 + 48))(&v28, a3, a4);
  LOBYTE(v20) = v28;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C59713E8(v20, a2);
  (*(a4 + 56))(&v28, a3, a4);
  v23 = v29;
  __swift_project_boxed_opaque_existential_0(&v28, v29);
  swift_beginAccess();
  sub_1C59318C8(a2 + 80, v27);
  LOBYTE(v23) = sub_1C59DF660(v27, v23);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if ((v23 & 1) == 0)
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C59576B4(qword_1EDA4A8C8, v24, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 80);
  sub_1C5931F84(&v28, a2 + 80);
  swift_endAccess();
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1C59E5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 24))(a3, a4);
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();

  sub_1C5971730(v11, v13, a2, KeyPath, v15);
  (*(a4 + 56))(&v24, a3, a4);
  v16 = v25;
  __swift_project_boxed_opaque_existential_0(&v24, v25);
  swift_beginAccess();
  sub_1C59318C8(a2 + 96, v26);
  LOBYTE(v16) = sub_1C59DF660(v26, v16);
  __swift_destroy_boxed_opaque_existential_0(v26);
  if ((v16 & 1) == 0)
  {
    _s18MiniPlayerMetadataCMa();
    sub_1C59576B4(qword_1EDA4A4D8, v17, _s18MiniPlayerMetadataCMa);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 96);
  sub_1C5931F84(&v24, a2 + 96);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0;
  *(inited + 40) = (*(a4 + 16))(a3, a4);
  *(inited + 48) = v19;
  *(inited + 56) = 1;
  *(inited + 64) = (*(a4 + 40))(a3, a4);
  *(inited + 72) = v20;
  v21 = sub_1C592D330(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192790);
  swift_arrayDestroy();
  *(a2 + 136) = v21;

  (*(a4 + 64))(&v24, a3, a4);
  sub_1C59E4F2C(&v24);
  sub_1C5924EF4(&v24, &qword_1EC192780);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5971E8C(2u, a2);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1C59E5CF8(uint64_t a1, uint64_t a2)
{
  sub_1C59E64F4(a1, v13);
  sub_1C59E64F4(a2, &v15);
  if (!v14)
  {
    sub_1C59E64F4(v13, &v10);
    v3 = *&v11[0];
    if (!v19)
    {
LABEL_4:
      if (v10 == v15 && v3 == v16)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_1C5BCBDE4();
      }

      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v14 == 1)
  {
    sub_1C59E64F4(v13, &v10);
    v3 = *&v11[0];
    if (v19 == 1)
    {
      goto LABEL_4;
    }

LABEL_8:

    goto LABEL_12;
  }

  sub_1C59E64F4(v13, &v10);

  if (v19 == 2)
  {

    v8[0] = v11[0];
    v8[1] = v11[1];
    v9 = v12;
    v6[0] = v16;
    v6[1] = v17;
    v7 = v18;
    v4 = MEMORY[0x1C694FC40](v8, v6);
    sub_1C59E652C(v6);
    sub_1C59E652C(v8);
LABEL_15:
    sub_1C59E6580(v13);
    return v4 & 1;
  }

  sub_1C59E652C(v11);
LABEL_12:
  sub_1C5924EF4(v13, &qword_1EC192768);
  v4 = 0;
  return v4 & 1;
}

uint64_t _s11MediaCoreUI19NowPlayingViewModelC18MiniPlayerSubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1C59E65B0(a1, v13);
  sub_1C59E65B0(a2, &v15);
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      sub_1C59E65B0(v13, &v10);
      if (v19 != 2)
      {
        goto LABEL_15;
      }

      v4 = v10 ^ v15 ^ 1;
    }

    else
    {
      sub_1C59E65B0(v13, &v10);

      if (v19 != 3)
      {
        sub_1C59E652C(v11);
        goto LABEL_15;
      }

      v8[0] = v11[0];
      v8[1] = v11[1];
      v9 = v12;
      v6[0] = v16;
      v6[1] = v17;
      v7 = v18;
      v4 = MEMORY[0x1C694FC40](v8, v6);
      sub_1C59E652C(v6);
      sub_1C59E652C(v8);
    }

LABEL_18:
    sub_1C59E6674(v13);
    return v4 & 1;
  }

  if (v14)
  {
    sub_1C59E65B0(v13, &v10);
    v3 = *&v11[0];
    if (v19 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C59E65B0(v13, &v10);
  v3 = *&v11[0];
  if (!v19)
  {
LABEL_9:
    if (v10 == v15 && v3 == v16)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C5BCBDE4();
    }

    goto LABEL_18;
  }

LABEL_4:

LABEL_15:
  sub_1C5924EF4(v13, qword_1EC192798);
  v4 = 0;
  return v4 & 1;
}

unint64_t sub_1C59E602C(uint64_t a1)
{
  result = sub_1C59E6054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C59E6054()
{
  result = qword_1EDA4B248;
  if (!qword_1EDA4B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B248);
  }

  return result;
}

unint64_t sub_1C59E60F0()
{
  result = qword_1EC192758;
  if (!qword_1EC192758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192758);
  }

  return result;
}

uint64_t sub_1C59E6164()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59E61A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C59E61E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C59E6318(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59E6360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59E63B0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1C59E63D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59E6414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59E6464(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C59E64A0()
{
  result = qword_1EC192760;
  if (!qword_1EC192760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192760);
  }

  return result;
}

uint64_t sub_1C59E66A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59E6754()
{
  sub_1C59E6874();
  if (v0 <= 0x3F)
  {
    sub_1C594F0B0();
    if (v1 <= 0x3F)
    {
      sub_1C59E6904(319, &qword_1EDA46798, _s12PresentationCMa);
      if (v2 <= 0x3F)
      {
        sub_1C59E6904(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C59E6874()
{
  if (!qword_1EC192820)
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C59576B4(qword_1EDA4A8C8, v0, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
    v1 = sub_1C5BC88D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC192820);
    }
  }
}

void sub_1C59E6904(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59E6958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C59E69A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59E6A38()
{
  result = qword_1EC1928E8;
  if (!qword_1EC1928E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1928E0);
    sub_1C59E6AF0();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1928E8);
  }

  return result;
}

unint64_t sub_1C59E6AF0()
{
  result = qword_1EC1928F0;
  if (!qword_1EC1928F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1928F8);
    sub_1C5924F54(qword_1EDA46ED8, &qword_1EC192900);
    sub_1C5924F54(&qword_1EDA46190, &qword_1EC192908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1928F0);
  }

  return result;
}

unint64_t sub_1C59E6BD4()
{
  result = qword_1EC196180;
  if (!qword_1EC196180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196180);
  }

  return result;
}

unint64_t sub_1C59E6C28()
{
  result = qword_1EC192938;
  if (!qword_1EC192938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192930);
    sub_1C59E6CE0();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192938);
  }

  return result;
}

unint64_t sub_1C59E6CE0()
{
  result = qword_1EC192940;
  if (!qword_1EC192940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192948);
    sub_1C59E6D98();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192940);
  }

  return result;
}

unint64_t sub_1C59E6D98()
{
  result = qword_1EC192950;
  if (!qword_1EC192950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192958);
    sub_1C59E6E50();
    sub_1C5924F54(&qword_1EDA46190, &qword_1EC192908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192950);
  }

  return result;
}

unint64_t sub_1C59E6E50()
{
  result = qword_1EC192960;
  if (!qword_1EC192960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192968);
    sub_1C5924F54(qword_1EDA46ED8, &qword_1EC192900);
    sub_1C5924F54(&qword_1EC192970, &qword_1EC192978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192960);
  }

  return result;
}

unint64_t sub_1C59E6F34()
{
  result = qword_1EDA4B240;
  if (!qword_1EDA4B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B240);
  }

  return result;
}

uint64_t sub_1C59E6F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1C59E6FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59E7054()
{
  result = qword_1EDA47970;
  if (!qword_1EDA47970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47970);
  }

  return result;
}

unint64_t sub_1C59E70A8()
{
  result = qword_1EDA4B258;
  if (!qword_1EDA4B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B258);
  }

  return result;
}

uint64_t objectdestroy_220Tm()
{

  swift_unknownObjectRelease();

  if (*(v0 + 136))
  {
    if (*(v0 + 120))
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    }
  }

  else
  {
  }

  sub_1C5942458(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

unint64_t sub_1C59E71A8()
{
  result = qword_1EDA46378;
  if (!qword_1EDA46378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46378);
  }

  return result;
}

uint64_t sub_1C59E71FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59E726C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C59E72B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C59E7314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1C59E7380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1C59E73C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59E745C()
{
  result = qword_1EDA464E8;
  if (!qword_1EDA464E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929D0);
    sub_1C59E74E8();
    sub_1C5949828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464E8);
  }

  return result;
}

unint64_t sub_1C59E74E8()
{
  result = qword_1EDA46658;
  if (!qword_1EDA46658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F0);
    sub_1C5924F54(&qword_1EDA46ED0, &qword_1EC1929E8);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46658);
  }

  return result;
}

unint64_t sub_1C59E75D8()
{
  result = qword_1EDA46660;
  if (!qword_1EDA46660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08);
    sub_1C5924F54(&qword_1EDA46EC8, &qword_1EC192A18);
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46660);
  }

  return result;
}

unint64_t sub_1C59E76CC()
{
  result = qword_1EDA46450;
  if (!qword_1EDA46450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A00);
    sub_1C59E7784();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46450);
  }

  return result;
}

unint64_t sub_1C59E7784()
{
  result = qword_1EDA46468;
  if (!qword_1EDA46468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929D8);
    sub_1C59E745C();
    sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46468);
  }

  return result;
}

uint64_t sub_1C59E7844()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C59E78BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 170))
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

uint64_t sub_1C59E7904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C59E79E4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkCornerStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C59E7A40()
{
  result = qword_1EC192A68;
  if (!qword_1EC192A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
    sub_1C59E7B94();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192A68);
  }

  return result;
}

unint64_t sub_1C59E7B94()
{
  result = qword_1EC192A70;
  if (!qword_1EC192A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A48);
    sub_1C59E7C54();
    sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192A70);
  }

  return result;
}

unint64_t sub_1C59E7C54()
{
  result = qword_1EC192A78;
  if (!qword_1EC192A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A80);
    sub_1C595E1AC();
    sub_1C59E7CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192A78);
  }

  return result;
}

unint64_t sub_1C59E7CE0()
{
  result = qword_1EC192A88;
  if (!qword_1EC192A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192A88);
  }

  return result;
}

uint64_t sub_1C59E7D34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NowPlayingViewModel.Metrics.Event.hashValue.getter()
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](0);
  return sub_1C5BCBF94();
}

uint64_t sub_1C59E7E40()
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](0);
  return sub_1C5BCBF94();
}

uint64_t sub_1C59E7EAC()
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](0);
  return sub_1C5BCBF94();
}

uint64_t NowPlayingViewModel.Metrics.deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel7Metrics___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingViewModel.Metrics.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel7Metrics___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MCUINamespace<A>.glowEffect(isActive:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GlowModifier();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  *(v8 + 1) = swift_getKeyPath();
  v8[16] = 0;
  v9 = *(v6 + 24);
  *&v8[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C694E550](v8, *(a2 + 16), v6, a3);
  return sub_1C59E8278(v8);
}

uint64_t type metadata accessor for GlowModifier()
{
  result = qword_1EC192AA0;
  if (!qword_1EC192AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MCUINamespace<A>.glowEffectForegroundColor(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C59E81DC()
{
  sub_1C59E9D54();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C59E8218()
{
  sub_1C59E9D54();

  return sub_1C5BC8F54();
}

uint64_t sub_1C59E8278(uint64_t a1)
{
  v2 = type metadata accessor for GlowModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59E82D4()
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B08);
  MEMORY[0x1EEE9AC00](v34);
  v2 = &v30 - v1;
  v3 = sub_1C5BC8F34();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_1C5BC90F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = *(type metadata accessor for GlowModifier() + 24);
  v31 = v0;
  sub_1C59400B0(&v0[v14], v8, &qword_1EC195900);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    v18 = v32;
    v17 = v33;
  }

  else
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    v20 = v32;
    v17 = v33;
    (*(v32 + 8))(v5, v33);
    v16 = *(v10 + 32);
    v18 = v20;
  }

  v21 = *(v34 + 48);
  *v2 = v13;
  v16(&v2[v21], v12, v9);
  v22 = (*(v10 + 88))(&v2[v21], v9);
  v23 = *MEMORY[0x1E697F600];
  if (v13)
  {
    if (v22 == v23)
    {
      v24 = *(v31 + 1);
      v25 = v31[16];

      if ((v25 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v26 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v27 = v30;
        sub_1C5BC8F24();
        swift_getAtKeyPath();

        (*(v18 + 8))(v27, v17);
        return v35;
      }

      return v24;
    }

    if (v22 == *MEMORY[0x1E697F608])
    {
      v28 = [objc_opt_self() tintColor];
      return sub_1C5BCA424();
    }

LABEL_14:
    v24 = sub_1C5BCA524();
    sub_1C5924EF4(v2, &qword_1EC192B08);
    return v24;
  }

  if (v22 != v23)
  {
    goto LABEL_14;
  }

  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC1A6AB8;

  return v24;
}