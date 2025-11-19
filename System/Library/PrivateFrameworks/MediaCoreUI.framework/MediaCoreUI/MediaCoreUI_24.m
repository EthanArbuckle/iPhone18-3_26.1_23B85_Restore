void sub_1C5B971F4(void *a1)
{
  [a1 scale];
  if (v2 > 1.0)
  {
    v3 = OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource;
    if ((*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0 || (v4 = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = v4, , v6 = [v5 allowsEnteringFullScreen], , v5, v6))
    {
      if (*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 18) == 2 || !*(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8))
      {
        if ((*(v1 + v3) & 0x8000000000000000) != 0)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong enterFullScreenWithCompletion_];

            swift_unknownObjectRelease();
          }
        }

        else
        {
          v7 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            v9 = v7;
            [v7 enterFullScreenWithCompletion_];
          }
        }
      }
    }
  }
}

uint64_t sub_1C5B973C4(uint64_t a1, void *a2)
{
  sub_1C592535C(0, &qword_1EDA45D70);
  if ((sub_1C5BCB744() & 1) == 0)
  {
    return 0;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  if ((*(v2 + OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource) & 0x8000000000000000) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v8 = Strong;

    v5 = [v8 playerViewController];
    swift_unknownObjectRelease();
    v6 = [v5 view];
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return 0;
    }

    v5 = v4;

    v6 = [v5 view];
  }

  v9 = v6;

  if (v9)
  {
    v10 = [a2 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isDescendantOfView_];

      if (v12)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1C5B97754(void *a1, void *a2)
{
  v14 = CGSizeMake;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C5AC79C8;
  v13 = &block_descriptor_24;
  v5 = _Block_copy(&v10);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v2;
  v6[4] = a2;
  v14 = sub_1C5B99194;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C5AC79C8;
  v13 = &block_descriptor_30_0;
  v7 = _Block_copy(&v10);
  v8 = a1;
  v9 = v2;
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:v5 completion:v7];
  _Block_release(v7);
  _Block_release(v5);
}

void sub_1C5B979C4(uint64_t a1, void *a2)
{
  v13 = CGSizeMake;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C5AC79C8;
  v12 = &block_descriptor_26;
  v5 = _Block_copy(&v9);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v2;
  v6[4] = a2;
  v13 = sub_1C5B97DD0;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1C5AC79C8;
  v12 = &block_descriptor_21;
  v7 = _Block_copy(&v9);
  swift_unknownObjectRetain();
  v8 = v2;
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:v5 completion:v7];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t sub_1C5B97C94()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B97CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C5B97D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C5B97DD4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C5B97E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5BC8044();
}

id sub_1C5B97EE0()
{
  v1 = [*v0 playerViewController];

  return v1;
}

void sub_1C5B97F18()
{
  v42 = sub_1C5BC8F34();
  v1 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);
  v54 = *(v0 + 40);
  *v55 = v6;
  *&v55[10] = *(v0 + 66);
  v52 = *(v0 + 8);
  v53 = v5;
  v37 = *(v0 + 88);
  v43 = *(v0 + 96);
  v35 = *(v0 + 104);
  v36 = *(v0 + 112);
  v7 = *(v0 + 136);
  v39 = *(v0 + 144);
  v40 = v7;
  swift_getWitnessTable();
  v8 = sub_1C5BC9834();
  sub_1C5BC9814();
  v9 = *&v49[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F70);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v4;
  swift_unknownObjectWeakAssign();
  *&v9[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_videoSource] = v10 | 0x8000000000000000;

  sub_1C5B95FA0();

  v44 = v8;
  sub_1C5BC9814();
  v11 = v51;
  v41 = v1;
  if (v55[25])
  {
    v49[2] = v54;
    v50[0] = *v55;
    *(v50 + 9) = *&v55[9];
    v49[0] = v52;
    v49[1] = v53;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    v1 = v41;
    v13 = v42;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v52, &unk_1EC194DE0);
    (*(v1 + 8))(v3, v13);
  }

  v14 = &v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  v45[1] = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 16];
  v45[2] = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 32];
  v46[0] = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 48];
  *(v46 + 9) = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics + 57];
  v45[0] = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics];
  memmove(&v11[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_deviceMetrics], v49, 0x49uLL);
  v47[1] = *(v14 + 1);
  v47[2] = *(v14 + 2);
  v48[0] = *(v14 + 3);
  *(v48 + 9) = *(v14 + 57);
  v47[0] = *v14;
  v15 = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(v47, v45);
  v16 = v35;
  if ((v15 & 1) == 0)
  {
    sub_1C5B963D4();
  }

  v17 = v3;

  sub_1C5BC9814();
  v18 = *&v47[0];

  if ((v36 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v42);
    v16 = *&v45[0];
  }

  swift_getKeyPath();
  *&v45[0] = v16;
  sub_1C5B98A84(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v20 = *(v16 + 17);

  v21 = v18[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle];
  v18[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_playerStyle] = v20;
  LOBYTE(v45[0]) = v21;
  sub_1C5B96568(v45);

  sub_1C5BC9814();
  v22 = *&v45[0];
  v23 = v37;

  v24 = v23;
  if ((v43 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v25 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v41 + 8))(v17, v42);
    v24 = *&v47[0];
  }

  swift_getKeyPath();
  *&v47[0] = v24;
  sub_1C5B98A84(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v27 = *(v24 + 5);
  v26 = *(v24 + 6);

  v28 = &v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v29 = *&v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent];
  v30 = *&v22[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_hostedContent + 8];
  *v28 = v27;
  *(v28 + 1) = v26;
  *&v47[0] = v29;
  *(&v47[0] + 1) = v30;
  sub_1C5B96640(v47);

  sub_1C5BC9814();
  v31 = *&v47[0];

  if ((v43 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v41 + 8))(v17, v42);
    v23 = *&v45[0];
  }

  v33 = &v31[OBJC_IVAR____TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator_updateContentSelection];
  *v33 = sub_1C5B99144;
  v33[1] = v23;

  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  sub_1C59498C4(v40);

  v34 = sub_1C5BA622C();

  [v38 setVideoOutputDelegate_];
}

uint64_t sub_1C5B9862C(char a1)
{
  v2 = v1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1C5922000, v5, v6, "NowPlayingVideoPlayerDelegate fullscreen video changed to %{BOOL}d", v7, 8u);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    (*(v2 + OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_becomeFirstResponder))();
  }

  return sub_1C5BC7F74();
}

void *sub_1C5B98834(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_1C5B98844(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_1C5B98844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    swift_unknownObjectRelease();
  }

  else
  {

    return sub_1C5AFC9D8();
  }
}

uint64_t sub_1C5B988D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B98910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5B98958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C5B989A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B98A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B98AF4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1C592ABD4;

  return sub_1C5B941BC(v4, v5, v6, v7, v8, v2, v3);
}

uint64_t sub_1C5B98BC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5B9454C(a1, v4, v5, v6);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5B98CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5B94DC0(a1, v4, v5, v6);
}

double sub_1C5B98DC8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C5B98DE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C5B98E60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1C5B98EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B98F10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1C5B98F80(uint64_t *a1, int a2)
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

uint64_t sub_1C5B98FC8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C5B99064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_88Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1C5B991A4()
{
  sub_1C59B5E78();
  sub_1C5BC8F44();
  return v1;
}

uint64_t MCUINamespace<A>.materialContentMode(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5B99254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B99428();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.materialContentMode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MCUINamespace();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  View.mcui.getter(a2, &v8 - v5);
  MCUINamespace<A>.materialContentMode(_:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C5B993B4()
{
  result = qword_1EC197CC0;
  if (!qword_1EC197CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197CC0);
  }

  return result;
}

unint64_t sub_1C5B99428()
{
  result = qword_1EC199FE0;
  if (!qword_1EC199FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191AA0);
    sub_1C5B994AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199FE0);
  }

  return result;
}

unint64_t sub_1C5B994AC()
{
  result = qword_1EC199FE8;
  if (!qword_1EC199FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199FE8);
  }

  return result;
}

uint64_t sub_1C5B99500@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = sub_1C596CB78(v3);
  *a2 = result & 1;
  return result;
}

uint64_t NowPlayingRouteButton.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1C5951550();
}

uint64_t sub_1C5B99578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B995DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C59400B0(v2, &v13 - v9, &qword_1EC19A000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C5B9CB44(v10, a1);
  }

  sub_1C5BCB4E4();
  v12 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t NowPlayingRouteButton.Content.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingRouteButton.Content(0);
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v4;
  v56 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C5BC9424();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43[-v18];
  v53 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v52 = v60;
  v51 = v61;
  v50 = v62;
  v49 = v63;
  v47 = v64;
  v46 = v65;
  v57 = v1;
  sub_1C5B995DC(v19);
  (*(v6 + 104))(v16, *MEMORY[0x1E697FF40], v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_1C59400B0(v19, v11, &qword_1EC199FF8);
  sub_1C59400B0(v16, &v11[v20], &qword_1EC199FF8);
  v21 = v6;
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1C5924EF4(v16, &qword_1EC199FF8);
    sub_1C5924EF4(v19, &qword_1EC199FF8);
    if (v22(&v11[v20], 1, v5) == 1)
    {
      sub_1C5924EF4(v11, &qword_1EC199FF8);
LABEL_9:
      v23 = sub_1C5BCAA64();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1C59400B0(v11, v48, &qword_1EC199FF8);
  if (v22(&v11[v20], 1, v5) == 1)
  {
    sub_1C5924EF4(v16, &qword_1EC199FF8);
    sub_1C5924EF4(v19, &qword_1EC199FF8);
    (*(v21 + 8))(v48, v5);
LABEL_6:
    sub_1C5924EF4(v11, &qword_1EC199FF0);
    goto LABEL_7;
  }

  v25 = v45;
  (*(v21 + 32))(v45, &v11[v20], v5);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50]);
  v26 = v48;
  v44 = sub_1C5BCADB4();
  v27 = *(v21 + 8);
  v27(v25, v5);
  sub_1C5924EF4(v16, &qword_1EC199FF8);
  sub_1C5924EF4(v19, &qword_1EC199FF8);
  v27(v26, v5);
  sub_1C5924EF4(v11, &qword_1EC199FF8);
  if (v44)
  {
    goto LABEL_9;
  }

LABEL_7:
  v23 = sub_1C5BCAA34();
LABEL_10:
  v48 = v23;
  v28 = v24;
  v29 = v57;
  sub_1C5B99DF4(v58);
  v30 = v58[0];
  v31 = v58[1];
  v32 = v58[2];
  v33 = v58[3];
  v34 = v51;
  LOBYTE(v58[0]) = v51;
  v35 = v49;
  v59 = v49;
  v36 = sub_1C5BC8FA4();
  v37 = v56;
  sub_1C5B99578(v29, v56);
  v38 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v39 = swift_allocObject();
  result = sub_1C5B9A7B0(v37, v39 + v38);
  v41 = v52;
  *a1 = v53;
  *(a1 + 8) = v41;
  *(a1 + 16) = v34;
  *(a1 + 24) = v50;
  *(a1 + 32) = v35;
  v42 = v46;
  *(a1 + 40) = v47;
  *(a1 + 48) = v42;
  *(a1 + 56) = v30;
  *(a1 + 64) = v31;
  *(a1 + 72) = v32;
  *(a1 + 80) = v33;
  *(a1 + 88) = v48;
  *(a1 + 96) = v28;
  *(a1 + 104) = v36;
  *(a1 + 112) = sub_1C5B9A814;
  *(a1 + 120) = v39;
  return result;
}

uint64_t sub_1C5B99DF4@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_1C5BC9424();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  type metadata accessor for NowPlayingRouteObserver();
  sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
  v16 = sub_1C5BC8C84();
  v32 = v17;
  v33 = v16;
  sub_1C5B995DC(v15);
  (*(v2 + 104))(v12, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v18 = *(v5 + 56);
  sub_1C59400B0(v15, v7, &qword_1EC199FF8);
  sub_1C59400B0(v12, &v7[v18], &qword_1EC199FF8);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8);
    sub_1C5924EF4(v15, &qword_1EC199FF8);
    if (v19(&v7[v18], 1, v1) == 1)
    {
      result = sub_1C5924EF4(v7, &qword_1EC199FF8);
      v21 = -28.0;
      goto LABEL_9;
    }

LABEL_6:
    result = sub_1C5924EF4(v7, &qword_1EC199FF0);
    v21 = 0.0;
    goto LABEL_9;
  }

  sub_1C59400B0(v7, v31, &qword_1EC199FF8);
  if (v19(&v7[v18], 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8);
    sub_1C5924EF4(v15, &qword_1EC199FF8);
    (*(v2 + 8))(v31, v1);
    goto LABEL_6;
  }

  v22 = &v7[v18];
  v23 = v30;
  (*(v2 + 32))(v30, v22, v1);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50]);
  v24 = v31;
  v25 = sub_1C5BCADB4();
  v26 = *(v2 + 8);
  v26(v23, v1);
  sub_1C5924EF4(v12, &qword_1EC199FF8);
  sub_1C5924EF4(v15, &qword_1EC199FF8);
  v26(v24, v1);
  result = sub_1C5924EF4(v7, &qword_1EC199FF8);
  v21 = 0.0;
  if (v25)
  {
    v21 = -28.0;
  }

LABEL_9:
  v27 = v34;
  v28 = v32;
  *v34 = v33;
  *(v27 + 1) = v28;
  v27[2] = v21;
  v27[3] = 0.0;
  return result;
}

double sub_1C5B9A2BC(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1C5BC9424();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  sub_1C5B995DC(&v32 - v14);
  (*(v2 + 104))(v12, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1C59400B0(v15, v7, &qword_1EC199FF8);
  sub_1C59400B0(v12, &v7[v16], &qword_1EC199FF8);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8);
    sub_1C5924EF4(v15, &qword_1EC199FF8);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_1C5924EF4(v7, &qword_1EC199FF8);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C59400B0(v7, v35, &qword_1EC199FF8);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_1C5924EF4(v12, &qword_1EC199FF8);
    sub_1C5924EF4(v15, &qword_1EC199FF8);
    (*(v2 + 8))(v35, v1);
LABEL_6:
    sub_1C5924EF4(v7, &qword_1EC199FF0);
LABEL_7:
    if (_UISolariumEnabled())
    {
      v18 = -10.0;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = sub_1C5BC8FA4();
    MEMORY[0x1C694CB90](v19);
    return v18 + v20;
  }

  v21 = &v7[v16];
  v22 = v33;
  (*(v2 + 32))(v33, v21, v1);
  sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50]);
  v23 = v35;
  v24 = sub_1C5BCADB4();
  v25 = *(v2 + 8);
  v25(v22, v1);
  sub_1C5924EF4(v12, &qword_1EC199FF8);
  sub_1C5924EF4(v15, &qword_1EC199FF8);
  v25(v23, v1);
  sub_1C5924EF4(v7, &qword_1EC199FF8);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  sub_1C5B34A7C();
  v18 = v26;

  v27 = [objc_opt_self() currentTraitCollection];
  [v27 displayScale];
  v29 = v28;

  v30 = 1.0;
  if (v29 >= 1.0)
  {
    v30 = v29;
    if ((~*&v29 & 0x7FF0000000000000) == 0)
    {
      v30 = 1.0;
      if ((*&v29 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v30 = v29;
      }
    }
  }

  v20 = 1.5 / v30;
  return v18 + v20;
}

uint64_t sub_1C5B9A7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C5B9A814(uint64_t a1)
{
  type metadata accessor for NowPlayingRouteButton.Content(0);

  return sub_1C5B9A2BC(a1);
}

uint64_t NowPlayingRouteButton.deinit()
{
  sub_1C5950CE4();
  sub_1C5B9A8BC(v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);
  return v0;
}

uint64_t sub_1C5B9A8BC(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingRouteButton.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingRouteButton.__deallocating_deinit()
{
  sub_1C5950CE4();
  sub_1C5B9A8BC(v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B9A988@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1C5951550();
}

double static NowPlayingButtonID.route.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6574756F72;
  *a1 = xmmword_1C5BF31B0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static NowPlayingButton<>.route.getter()
{
  type metadata accessor for NowPlayingRouteButton(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5BF31B0;
  *(v0 + 32) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI21NowPlayingRouteButton_content);
  *v1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for NowPlayingRouteButton.Content(0);
  v3 = (v1 + v2[5]);
  type metadata accessor for NowPlayingRouteObserver();
  sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
  *v3 = sub_1C5BC8C84();
  v3[1] = v4;
  v5 = v2[6];
  *(v1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v6 = v1 + v2[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  return v0;
}

void sub_1C5B9AB3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39[1] = a4;
  v43 = a1;
  v5 = sub_1C5BC9424();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF0);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v47 = v39 - v14;
  v15 = sub_1C5BC8F34();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0);
  sub_1C5BC96B4();
  v19 = v49;
  Strong = swift_unknownObjectWeakLoadStrong();

  v48 = Strong;
  if (Strong)
  {
    v41 = v5;
    if (!a3)
    {
      type metadata accessor for NowPlayingRouteObserver();
      sub_1C5B9BDBC(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
      sub_1C5BC8C74();
      __break(1u);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1C5BC8034();

    v21 = v49;
    if (v49)
    {
      v22 = [v49 isRoutingToWirelessDevice];
      v23 = v48;
      [v48 setRouteLabelHidden_];
      [v23 setRoute_];
      [v43 setNeedsLayout];
    }

    sub_1C5BC96C4();
    v24 = v47;
    sub_1C5BC8E04();
    (*(v16 + 8))(v18, v15);
    v25 = v46;
    v26 = v41;
    (*(v46 + 104))(v12, *MEMORY[0x1E697FF40], v41);
    (*(v25 + 56))(v12, 0, 1, v26);
    v27 = v45;
    v28 = *(v44 + 48);
    sub_1C59400B0(v24, v45, &qword_1EC199FF8);
    sub_1C59400B0(v12, v27 + v28, &qword_1EC199FF8);
    v29 = *(v25 + 48);
    if (v29(v27, 1, v26) == 1)
    {
      sub_1C5924EF4(v12, &qword_1EC199FF8);
      sub_1C5924EF4(v24, &qword_1EC199FF8);
      if (v29(v27 + v28, 1, v26) == 1)
      {
        sub_1C5924EF4(v27, &qword_1EC199FF8);
        v30 = 0;
LABEL_12:
        v35 = v48;
        [v48 setRouteLabelAxis_];
        v36 = objc_opt_self();
        v37 = v35;
        v38 = [v36 tintColor];
        [v37 setTintColor_];

        return;
      }
    }

    else
    {
      v31 = v42;
      sub_1C59400B0(v27, v42, &qword_1EC199FF8);
      if (v29(v27 + v28, 1, v26) != 1)
      {
        v32 = v40;
        (*(v25 + 32))(v40, v27 + v28, v26);
        sub_1C5B9BDBC(&qword_1EDA46220, MEMORY[0x1E697FF50]);
        v33 = sub_1C5BCADB4();
        v34 = *(v25 + 8);
        v34(v32, v26);
        sub_1C5924EF4(v12, &qword_1EC199FF8);
        sub_1C5924EF4(v47, &qword_1EC199FF8);
        v34(v31, v26);
        sub_1C5924EF4(v27, &qword_1EC199FF8);
        v30 = ~v33 & 1;
        goto LABEL_12;
      }

      sub_1C5924EF4(v12, &qword_1EC199FF8);
      sub_1C5924EF4(v47, &qword_1EC199FF8);
      (*(v25 + 8))(v31, v26);
    }

    sub_1C5924EF4(v27, &qword_1EC199FF0);
    v30 = 1;
    goto LABEL_12;
  }
}

id sub_1C5B9B204@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for RouteButton.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1C5B9B260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9C7DC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B9B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9C7DC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B9B328()
{
  sub_1C5B9C7DC();
  sub_1C5BC9264();
  __break(1u);
}

id sub_1C5B9B350()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ContainerView();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B13ContainerView_routeButton];
  if ([v1 routeLabelAxis] == 1)
  {
    [v1 sizeThatFits_];
    [v1 frame];
    [v1 setFrame_];
    [v0 center];
    v3 = v2;
    [v1 center];
    [v1 setCenter_];
    [v1 frame];
    return [v1 setFrame_];
  }

  else
  {
    [v1 sizeThatFits_];
    [v1 frame];
    [v1 setFrame_];
    [v1 frame];
    [v1 setFrame_];
    [v0 center];
    v9 = v8;
    [v1 frame];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetMidY(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19.origin.x = MidX - CGRectGetWidth(v18) * 0.5;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    return [v1 setFrame_];
  }
}

id sub_1C5B9B658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5B9B6A0()
{
  v1 = OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls;
  v2 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69705B0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5B9B7CC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = a1;
  v5 = sub_1C5B9B6A0();
  [v5 *a4];
}

id sub_1C5B9B948(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6958618]) init];
  LODWORD(v4) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  v6 = [objc_opt_self() mainBundle];
  sub_1C5949F2C();

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BFE470);
  v7 = sub_1C5BCAE44();

  [v3 setAccessibilityIdentifier_];

  if (a2)
  {
    swift_unknownObjectWeakAssign();
  }

  return v3;
}

uint64_t sub_1C5B9BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9CCC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B9BAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B9CCC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B9BB5C()
{
  sub_1C5B9CCC8();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5B9BB84@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

void sub_1C5B9BC04(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1C5BC8034();

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_1C5BC8044();
  sub_1C596C294(v4);
}

uint64_t sub_1C5B9BD14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C59400B0(a1, &v5 - v3, &qword_1EC199FF8);
  return sub_1C5BC8E14();
}

uint64_t sub_1C5B9BDBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B9BE70()
{
  result = type metadata accessor for NowPlayingRouteButton.Content(319);
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

unint64_t sub_1C5B9BFB8()
{
  result = qword_1EC19A0A8;
  if (!qword_1EC19A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0B0);
    sub_1C5B9C044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0A8);
  }

  return result;
}

unint64_t sub_1C5B9C044()
{
  result = qword_1EC19A0B8;
  if (!qword_1EC19A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A0C0);
    sub_1C594C97C();
    sub_1C5B9C0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0B8);
  }

  return result;
}

unint64_t sub_1C5B9C0D0()
{
  result = qword_1EC19A0D8;
  if (!qword_1EC19A0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0D8);
  }

  return result;
}

unint64_t sub_1C5B9C148()
{
  result = qword_1EC19A0E8;
  if (!qword_1EC19A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0E8);
  }

  return result;
}

void sub_1C5B9C19C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6970928]) init];
  [v0 setExclusiveTouch_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v1)
  {
    v2 = v1;
    [v0 setFont_];

    [v0 setHitRectInsets_];
    LODWORD(v3) = 1148846080;
    [v0 setContentHuggingPriority:0 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [v0 setContentHuggingPriority:1 forAxis:v4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0);
    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchDown_ forControlEvents:1];

    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchUpOutside_ forControlEvents:128];

    sub_1C5BC96B4();
    [v0 addTarget:v24 action:sel_onTouchUpInside_ forControlEvents:64];

    v5 = sub_1C5BCAE44();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      [v0 setAccessoryImage_];

      v7 = [objc_opt_self() mainBundle];
      v8 = sub_1C5949F2C();
      v10 = v9;

      v24 = v8;
      v25 = v10;
      MEMORY[0x1C694F170](46, 0xE100000000000000);
      MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BFE470);
      v11 = sub_1C5BCAE44();

      [v0 setAccessibilityIdentifier_];

      v12 = *MEMORY[0x1E69DDDC8];
      v13 = objc_opt_self();
      v14 = [v13 configurationWithTextStyle_];
      v15 = [v13 configurationWithWeight_];
      v16 = [v14 configurationByApplyingConfiguration_];

      [v0 setPreferredSymbolConfiguration_];
      v17 = *MEMORY[0x1E69DDC70];
      [v0 setMinimumContentSizeCategory_];
      [v0 setMaximumContentSizeCategory_];

      sub_1C5BC96B4();
      v18 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];

      [v0 addInteraction_];
      sub_1C5BC96B4();
      swift_unknownObjectWeakAssign();

      v19 = type metadata accessor for ContainerView();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B13ContainerView_routeButton] = v0;
      v23.receiver = v20;
      v23.super_class = v19;
      v21 = v0;
      v22 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      [v22 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C5B9C64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A0F0);
  sub_1C5BC96B4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  if ([Strong routeLabelAxis] == 1)
  {
    v1 = Strong;
    [v1 intrinsicContentSize];
    v3 = fmin(v2, 168.0);
    [v1 intrinsicContentSize];

    if ([v1 isRouteLabelHidden])
    {
      [v1 hitRectInsets];
      v5 = v4;
      v7 = v6;
    }

    else
    {
      v5 = *(MEMORY[0x1E69DDCE0] + 8);
      v7 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v11 = v3 - v5 - v7;
  }

  else
  {
    [Strong sizeThatFits_];
    v10 = v9;

    v11 = v10 + 28.0 + 28.0;
  }

  return *&v11;
}

unint64_t sub_1C5B9C7DC()
{
  result = qword_1EC19A0F8;
  if (!qword_1EC19A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A0F8);
  }

  return result;
}

uint64_t sub_1C5B9C830(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A100);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C5BC7DA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C5BC7D84();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  [v15 frame];
  *v13 = CGRectInset(v20, -6.0, -6.0);
  *(v13 + 4) = 0x4020000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x1E69DBED0], v9);
  sub_1C5B9CAF8();
  *v8 = v16;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF98], v5);
  (*(v10 + 16))(v4, v13, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v17 = sub_1C5BCB504();

  (*(v10 + 8))(v13, v9);
  return v17;
}

unint64_t sub_1C5B9CAF8()
{
  result = qword_1EC19A108;
  if (!qword_1EC19A108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC19A108);
  }

  return result;
}

uint64_t sub_1C5B9CB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B9CBB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1C5B9CC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5B9CC74()
{
  result = qword_1EC19A118;
  if (!qword_1EC19A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A118);
  }

  return result;
}

unint64_t sub_1C5B9CCC8()
{
  result = qword_1EC19A120;
  if (!qword_1EC19A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A120);
  }

  return result;
}

uint64_t sub_1C5B9CD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  *a2 = *(v3 + 48);
  return result;
}

__n128 sub_1C5B9CDF4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

double sub_1C5B9CEC4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  result = *(v3 + 80);
  *a2 = result;
  return result;
}

uint64_t sub_1C5B9CF94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);
}

uint64_t sub_1C5B9D06C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = qword_1EC19A2B0;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C5B77104(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C5B77104((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C5BA9314;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

void MCUINamespace<A>.installNowPlayingViewController<A>(_:)(void *a1)
{
  sub_1C5931F9C(a1);
}

{
  sub_1C5B9D22C(a1);
}

void sub_1C5B9D22C(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllerForColumn_];
  if (!v4)
  {
    return;
  }

  v17 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = Strong, sub_1C592535C(0, &qword_1EDA45E38), v7 = v1, v8 = sub_1C5BCB744(), v6, v7, (v8 & 1) == 0))
  {
    v10 = v2;
    swift_unknownObjectWeakAssign();
    sub_1C5932278(1);

    v11 = [v17 view];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview_];

        v15 = [a1 view];
        if (v15)
        {
          v16 = v15;
          sub_1C592E71C();

          v9 = v16;
          goto LABEL_9;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v9 = v17;
LABEL_9:
}

id sub_1C5B9D414()
{
  v1 = v0;
  v2 = qword_1EDA47F30;
  v3 = *(v0 + qword_1EDA47F30);
  if (v3)
  {
    v4 = *(v0 + qword_1EDA47F30);
  }

  else
  {
    v5 = *MEMORY[0x1E69E7D40] & *v0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = *(v5 + 80);
    *(v7 + 3) = *(v5 + 88);
    *(v7 + 4) = v6;
    v8 = type metadata accessor for NowPlayingVideoPlayerDelegate();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_isVideoFullscreenSubject;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A410);
    swift_allocObject();

    *&v9[v10] = sub_1C5BC7F84();
    v11 = &v9[OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_becomeFirstResponder];
    *v11 = sub_1C5BA9484;
    v11[1] = v7;
    v16.receiver = v9;
    v16.super_class = v8;
    v12 = objc_msgSendSuper2(&v16, sel_init);

    v13 = *(v1 + v2);
    *(v1 + v2) = v12;
    v4 = v12;

    v3 = 0;
  }

  v14 = v3;
  return v4;
}

void sub_1C5B9D5A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }
}

void (*sub_1C5B9D644(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EDA47F20;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5AD52A8;
}

double sub_1C5B9D6E4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1EDA47FB8);
  if (!v3 || (sub_1C592535C(0, &qword_1EDA45E38), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A130), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1C5B9D784(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xFD)
  {
    if ((v1 & 0x80) != 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v3 = Strong;
      sub_1C5B9FEB4(v1 & 1);
    }

    else
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (!v2)
      {
        return;
      }

      v3 = v2;
      sub_1C5B9E71C(v1 & 1);
    }
  }
}

void sub_1C5B9D80C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1C5B9D5F4();
    v10 = v9;

    if (v8)
    {
      ObjectType = swift_getObjectType();
      v13[0] = v2;
      v13[1] = v3;
      v12[0] = v4;
      v12[1] = v5;
      (*(v10 + 24))(v13, v12, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C5B9D8CC(void *a1, void *a2)
{
  v4 = *((*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50)) + 32);

  v5 = *(v4 + 16);

  if (v5 <= 2 && v5 > 1)
  {
  }

  else
  {
    v6 = sub_1C5BCBDE4();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != [a2 userInterfaceStyle])
  {
    sub_1C5932278(1);
  }
}

uint64_t sub_1C5B9DAE8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  v10 = sub_1C5BC7CE4();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = _s18SingleFireSignpostVMa();
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DBE0, 0, 0);
}

uint64_t sub_1C5B9DBE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    if (qword_1EDA469F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = __swift_project_value_buffer(v6, qword_1EDA46A00);
    v8 = *(v5 + 16);
    v8(v4, v7, v6);
    *(v2 + *(v3 + 28)) = 0;
    v8(v2, v4, v6);
    v9 = v2 + *(v3 + 20);
    *v9 = "Take Background Snapshot";
    *(v9 + 8) = 24;
    *(v9 + 16) = 2;
    sub_1C5BC7CC4();
    sub_1C5BC7C64();
    (*(v5 + 8))(v4, v6);
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    sub_1C5B85914(v0 + 16);
    sub_1C5924EF4(v0 + 16, &qword_1EC195468);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1C5B9DE2C;
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);

    return sub_1C5ABF0E0(v15, v13, v14, v11, v12);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1C5B9DE2C(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DF2C, 0, 0);
}

uint64_t sub_1C5B9DF2C()
{
  sub_1C5B860F0();
  sub_1C5BCB1E4();
  *(v0 + 192) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B9DFC8, v2, v1);
}

uint64_t sub_1C5B9DFC8()
{
  v1 = *(v0 + 184);

  sub_1C5B9E0D4(v1);

  return MEMORY[0x1EEE6DFA0](sub_1C5B9E03C, 0, 0);
}

uint64_t sub_1C5B9E03C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  sub_1C5BA9614(v2, _s18SingleFireSignpostVMa);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C5B9E0D4(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (sub_1C5BCB2D4())
  {

    return sub_1C593871C(0);
  }

  else
  {
    (*(*(v3 + 88) + 224))(*(v3 + 80));

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_1C5BC8044();
    return sub_1C593871C(0);
  }
}

double sub_1C5B9E228()
{
  v0 = sub_1C5BA1AB0();
  if (v0)
  {

    v1 = 6.0;
    v2 = 56.0;
  }

  else
  {
    v1 = 24.0;
    v2 = 64.0;
  }

  return v1 + v2;
}

id sub_1C5B9E264()
{
  v1 = sub_1C5934434();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _contentLayoutGuide];

    if (v3)
    {
      return v3;
    }
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result safeAreaLayoutGuide];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C5B9E300()
{
  v1 = qword_1EDA481F0;
  v2 = *(v0 + qword_1EDA481F0);
  if (v2)
  {
    v3 = *(v0 + qword_1EDA481F0);
LABEL_6:
    v9 = v2;
    return v3;
  }

  result = *(v0 + qword_1EDA47FA0);
  if (result)
  {
    result = [result view];
    if (result)
    {
      v5 = result;
      v6 = [result widthAnchor];

      v7 = [v6 constraintEqualToConstant_];
      v8 = *(v0 + v1);
      *(v0 + v1) = v7;
      v3 = v7;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1C5B9E3D0(void *a1, void *a2)
{
  if (a1)
  {
    [a1 setActive_];
  }

  result = *(v2 + *a2);
  if (result)
  {

    return [result setActive_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5B9E434()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NowPlayingViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v3 = *(v0 + qword_1EDA47FE0);
  if (v3)
  {
    v4 = v3;
    [v4 frame];
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = 0.0;
    v10.size.height = 0.0;
    if (CGRectEqualToRect(v9, v10))
    {
      v5 = *((*(v2 + 224))(v1, v2) + 32);

      v6 = *(v5 + 16);

      if (v6 > 4)
      {

LABEL_6:
        sub_1C5BA1830(0);
        goto LABEL_7;
      }

      v7 = sub_1C5BCBDE4();

      if (v7)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
  }
}

void sub_1C5B9E660(void *a1)
{
  v1 = a1;
  sub_1C5B9E434();
}

id sub_1C5B9E6A8()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MiniPlayerContainerView()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5B9E71C(char a1)
{
  v3 = *&v1[qword_1EDA47FA8];
  if (!v3)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if ([v3 isBeingPresented])
  {
    return;
  }

  v5 = *&v1[qword_1EDA47FA8];
  if (!v5)
  {
    goto LABEL_48;
  }

  if ([v5 isBeingDismissed])
  {
    return;
  }

  v57 = v1;
  v8 = v4 + 80;
  v7 = *(v4 + 80);
  v6 = *(v8 + 8);
  v56 = *(v6 + 224);
  v9 = *(v56(v7, v6) + 32);

  v10 = *(v9 + 16);

  if (!v10)
  {

    return;
  }

  v11 = sub_1C5BCBDE4();

  if (v11)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_49;
  }

  v13 = Strong;
  v55 = [Strong presentedViewController];

  if (!v55)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C5BC7D64();
    __swift_project_value_buffer(v14, qword_1EDA5DA78);
    v15 = sub_1C5BC7D44();
    v16 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5922000, v15, v16, "NowPlayingViewController expanding", v17, 2u);
      MEMORY[0x1C69510F0](v17, -1, -1);
    }

    if (sub_1C5B9D5F4())
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      LOBYTE(aBlock[0]) = 0;
      v59 = 1;
      (*(v19 + 8))(aBlock, &v59, a1 & 1, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = v57;
    v22 = *&v57[qword_1EDA47FE0];
    if (v22)
    {
      v23 = v22;
      sub_1C5B89A58();
      v21 = v57;
    }

    [*&v21[qword_1EDA47F78] dismissMenu];
    v24 = *&v21[qword_1EDA47FA8];
    if (v24)
    {
      [v24 setModalPresentationStyle_];
      v25 = *&v21[qword_1EDA47FA8];
      if (v25)
      {
        [v25 setTransitioningDelegate_];
        v26 = *&v21[qword_1EDA47FA8];
        if (v26)
        {
          v27 = [v26 sheetPresentationController];
          if (!v27)
          {
            return;
          }

          v28 = v27;
          [v27 setDelegate_];
          [v28 _setWantsFullScreen_];
          [v28 _setAllowsInteractiveDismissWhenFullScreen_];
          [v28 _setShouldDismissWhenTappedOutside_];
          v29 = *&v21[qword_1EDA47FA0];
          if (v29)
          {
            type metadata accessor for CollapsedTabAccessoryViewController();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              v31 = *(v30 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
              v32 = v29;
              [v31 frame];
              [v28 _setCornerRadiusForPresentationAndDismissal_];
            }
          }

          v33 = *&v21[qword_1EDA47FE0];
          if (v33)
          {
            v34 = v33;
            v35 = [v57 view];
            if (!v35)
            {
LABEL_55:
              __break(1u);
              return;
            }

            v36 = v35;
            v37 = [v35 window];

            if (v37)
            {
              [v37 bounds];
              v39 = v38;
              v41 = v40;

              v42 = v39;
              v43 = v41;
            }

            else
            {
              v42 = 0;
              v43 = 0;
            }

            sub_1C5B89E7C(v42, v43, v37 == 0);
          }

          v44 = *(v56(v7, v6) + 32);

          v45 = *(v44 + 16);
          if (v45 > 2u || *(v44 + 16))
          {
            v46 = sub_1C5BCBDE4();

            if ((v46 & 1) == 0)
            {
              type metadata accessor for NowPlayingViewModel.Lifecycle();
              sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
              sub_1C5BC7F24();
              sub_1C5BC7FA4();
            }
          }

          else
          {
          }

          *(v44 + 16) = 0;
          sub_1C5B8C3D0(v45);

          v47 = swift_unknownObjectWeakLoadStrong();
          if (v47)
          {
            v48 = *&v57[qword_1EDA47FA8];
            if (v48)
            {
              v49 = v47;
              v50 = swift_allocObject();
              *(v50 + 16) = v57;
              v51 = a1 & 1;
              *(v50 + 24) = v51;
              aBlock[4] = sub_1C5BA9428;
              aBlock[5] = v50;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1C596D09C;
              aBlock[3] = &block_descriptor_183;
              v52 = _Block_copy(aBlock);
              v53 = v48;
              v54 = v57;

              [v49 presentViewController:v53 animated:v51 completion:v52];
              _Block_release(v52);

              return;
            }

            goto LABEL_54;
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

void sub_1C5B9EF94(void *a1, char a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = *(v3 + 224);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v6 = *(v4(v5, v3) + 32);

  v7 = *(v6 + 16);
  if (v7 == 2)
  {
  }

  else
  {
    v8 = sub_1C5BCBDE4();

    if ((v8 & 1) == 0)
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
      sub_1C5BC7F24();
      sub_1C5BC7FA4();
    }
  }

  *(v6 + 16) = 2;
  sub_1C5B8C3D0(v7);

  [*(a1 + qword_1EDA47F88) removeFromSuperview];
  [*(a1 + qword_1EDA48200) removeFromSuperview];
  v9 = *(a1 + qword_1EDA48200);
  *(a1 + qword_1EDA48200) = 0;

  v10 = *(a1 + qword_1EDA47FE0);
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  sub_1C5B8A34C();

  if (a2)
  {
    goto LABEL_9;
  }

  v4(v5, v3);

  v20 = 1;
  sub_1C59A8494(&v20);

  v12 = *(a1 + qword_1EDA47FE0);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1C5B8A22C();

LABEL_9:
  sub_1C5BA0FDC();
  if (sub_1C5B9D5F4())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v19 = 0;
    v18 = 1;
    (*(v15 + 16))(&v19, &v18, a2 & 1, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

void sub_1C5B9F304(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v20 = a1;
    v7 = [v6 presentedViewController];
    v8 = [v7 transitionCoordinator];

    if (v8)
    {
      v9 = *&v2[qword_1EDA481E8];
      v10 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

      v11 = *(v10 + 16);
      if (v11 == 3)
      {
      }

      else
      {
        v12 = sub_1C5BCBDE4();

        if ((v12 & 1) == 0)
        {
          type metadata accessor for NowPlayingViewModel.Lifecycle();
          sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
          sub_1C5BC7F24();
          sub_1C5BC7FA4();
        }
      }

      *(v10 + 16) = 3;
      sub_1C5B8C3D0(v11);

      v13 = swift_allocObject();
      *(v13 + 16) = v2;
      v25 = sub_1C5BA8400;
      v26 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_27;
      v14 = _Block_copy(&aBlock);
      v15 = v2;

      [v8 notifyWhenInteractionChangesUsingBlock_];
      _Block_release(v14);
      v25 = CGSizeMake;
      v26 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_6;
      v16 = _Block_copy(&aBlock);
      v17 = swift_allocObject();
      *(v17 + 16) = v9;
      *(v17 + 24) = v15;
      v25 = sub_1C5BA8408;
      v26 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_1C5AC79C8;
      v24 = &block_descriptor_12_0;
      v18 = _Block_copy(&aBlock);
      v19 = v15;
      swift_unknownObjectRetain();

      [v8 animateAlongsideTransition:v16 completion:v18];
      _Block_release(v18);
      _Block_release(v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C5B9F784(void *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if ([a1 isCancelled] && (objc_msgSend(a1, sel_isInteractive) & 1) == 0)
  {
    v5 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

    v6 = *(v5 + 16);
    if (v6 == 1)
    {
    }

    else
    {
      v7 = sub_1C5BCBDE4();

      if ((v7 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v5 + 16) = 1;
    sub_1C5B8C3D0(v6);

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1C5BA94CC;
    *(v10 + 24) = v9;
    v23 = sub_1C5AF76A8;
    v24 = v10;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1C59D32C0;
    v22 = &block_descriptor_251;
    v11 = _Block_copy(&v19);
    v12 = a2;

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v12 + qword_1EDA47F50);
      if (v13)
      {
        [v13 stopAnimation_];
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) init];
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v23 = sub_1C5BA94F0;
      v24 = v15;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1C596D09C;
      v22 = &block_descriptor_257;
      v16 = _Block_copy(&v19);
      v17 = v12;

      [v14 addAnimations_];
      _Block_release(v16);
      [v14 startAnimation];
      v18 = *&v17[qword_1EDA47F50];
      *&v17[qword_1EDA47F50] = v14;
    }
  }
}

void sub_1C5B9FBF8(void *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E69E7D40] & *a3;
  if ([a1 isCancelled])
  {
    v5 = *((*(*(v4 + 88) + 224))(*(v4 + 80)) + 32);

    v6 = *(v5 + 16);
    if (v6 == 2)
    {
    }

    else
    {
      v7 = sub_1C5BCBDE4();

      if ((v7 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v5 + 16) = 2;
    sub_1C5B8C3D0(v6);

    sub_1C5BA0FDC();
  }

  v8 = *(a3 + qword_1EDA47F50);
  *(a3 + qword_1EDA47F50) = 0;
}

void sub_1C5B9FE34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C5B9F304(v4);
}

void sub_1C5B9FEB4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F8);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A400);
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A408);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = *(v1 + qword_1EDA47FA8);
  if (!v15)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ([v15 isBeingPresented])
  {
    return;
  }

  v16 = *(v1 + qword_1EDA47FA8);
  if (!v16)
  {
    goto LABEL_19;
  }

  if ([v16 isBeingDismissed])
  {
    return;
  }

  v37 = a1;
  v38 = v1;
  v17 = sub_1C5B9D414();
  sub_1C5BC7F64();

  if ((v42 & 1) == 0)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C5BC7D64();
    __swift_project_value_buffer(v28, qword_1EDA5DA78);
    v29 = sub_1C5BC7D44();
    v30 = sub_1C5BCB4F4();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v37;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C5922000, v29, v30, "NowPlayingViewController triggering collapse", v33, 2u);
      MEMORY[0x1C69510F0](v33, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      [Strong dismissViewControllerAnimated:v32 & 1 completion:0];

      return;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DA78);
  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C5922000, v19, v20, "NowPlayingViewController received request to collapse while video is fullscreen. Holding collapse until video exits fullscreen.", v21, 2u);
    MEMORY[0x1C69510F0](v21, -1, -1);
  }

  v42 = *(*(v38 + qword_1EDA47F30) + OBJC_IVAR____TtC11MediaCoreUI29NowPlayingVideoPlayerDelegate_isVideoFullscreenSubject);

  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A410);
  sub_1C5924F54(&qword_1EC19A418, &qword_1EC19A410);
  sub_1C5BC80C4();

  sub_1C5924F54(&qword_1EC19A420, &qword_1EC19A3F8);
  sub_1C5BC80A4();
  (*(v39 + 8))(v8, v6);
  sub_1C592535C(0, &qword_1EDA4E620);
  v22 = sub_1C5BCB5A4();
  v42 = v22;
  v23 = sub_1C5BCB594();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_1C5924F54(&unk_1EC19A428, &qword_1EC19A400);
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v5, &unk_1EC199F20);

  (*(v40 + 8))(v11, v9);
  v24 = v38;
  v25 = swift_unknownObjectWeakLoadStrong();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v37 & 1;
  sub_1C5924F54(&qword_1EC19A438, &qword_1EC19A408);
  v27 = sub_1C5BC8114();

  (*(v41 + 8))(v14, v12);
  *(v24 + qword_1EDA47F68) = v27;
}

void sub_1C5BA05BC(uint64_t a1, void *a2, char a3)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C5BC7D64();
  __swift_project_value_buffer(v5, qword_1EDA5DA78);
  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5922000, v6, v7, "NowPlayingViewController continuing collapse after video exited fullscreen.", v8, 2u);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }

  if (a2)
  {

    [a2 dismissViewControllerAnimated:a3 & 1 completion:0];
  }
}

void sub_1C5BA06E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingViewController detected collapse began", v10, 2u);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ((a1 & 1) == 0 && sub_1C5B9D5F4())
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v20 = 1;
      v19 = 0;
      (*(v14 + 8))(&v20, &v19, 0, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    v16 = *((*(a4 + 224))(a3, a4) + 32);

    v17 = *(v16 + 16);
    if (v17 == 4)
    {
    }

    else
    {
      v18 = sub_1C5BCBDE4();

      if ((v18 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v16 + 16) = 4;
    sub_1C5B8C3D0(v17);

    sub_1C5BA0FDC();
  }
}

void sub_1C5BA0A14(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA5DA78);
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5922000, v8, v9, "NowPlayingViewController detected collapse ended", v10, 2u);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *((*(a4 + 224))(a3, a4) + 32);

    v14 = *(v13 + 16);

    if (v14 == 4)
    {
    }

    else
    {
      v15 = sub_1C5BCBDE4();

      if ((v15 & 1) == 0)
      {
LABEL_10:

        return;
      }
    }

    sub_1C5BA0C80(a1 & 1);
    goto LABEL_10;
  }
}

void sub_1C5BA0C80(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = v2;
  sub_1C5B8A238();

  v7 = *(v3 + qword_1EDA47FE0);
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  sub_1C5B8A330();

  v9 = *(v3 + qword_1EDA47FA0);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_1C5937994(v10);

  sub_1C5932278(1);
  v13 = v5 + 80;
  v11 = *(v5 + 80);
  v12 = *(v13 + 8);
  v14 = *(v12 + 224);
  v14(v11, v12);

  v23 = 0;
  sub_1C59A8494(&v23);

  if (sub_1C5B9D5F4())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v22 = 1;
    v21 = 0;
    (*(v16 + 16))(&v22, &v21, a1 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = *(v14(v11, v12) + 32);

  v19 = *(v18 + 16);
  if (v19 > 4)
  {
  }

  else
  {
    v20 = sub_1C5BCBDE4();

    if ((v20 & 1) == 0)
    {
      type metadata accessor for NowPlayingViewModel.Lifecycle();
      sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
      sub_1C5BC7F24();
      sub_1C5BC7FA4();
    }
  }

  *(v18 + 16) = 5;
  sub_1C5B8C3D0(v19);
}

void sub_1C5BA0FDC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_1C5BC7DC4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *((*(*((v3 & v2) + 0x58) + 224))(*((v3 & v2) + 0x50)) + 32);

  v6 = *(v5 + 16);

  if (v6 <= 2 && v6 > 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C5BCBDE4();
  }

  v8 = *(v1 + qword_1EDA47FB8);
  if (!v8)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = [v8 traitCollection];
  v10 = [v9 accessibilityContrast];

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v11 = v7 & (v10 != 1);
  v12 = sub_1C5BC7D64();
  __swift_project_value_buffer(v12, qword_1EDA5DA78);
  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v10 == 1;
    v16 = swift_slowAlloc();
    *v16 = 67109632;
    *(v16 + 4) = v11;
    *(v16 + 8) = 1024;
    *(v16 + 10) = v7 & 1;
    *(v16 + 14) = 1024;
    *(v16 + 16) = v15;
    _os_log_impl(&dword_1C5922000, v13, v14, "NowPlayingViewController setting system glass to dark=%{BOOL}d because expanded=%{BOOL}d and highContrast=%{BOOL}d", v16, 0x14u);
    MEMORY[0x1C69510F0](v16, -1, -1);
  }

  v17 = *(v1 + qword_1EDA47FB8);
  if (v11)
  {
    if (v17)
    {
      v18 = v17;
      sub_1C5BCB534();
      sub_1C5BC7D94();
LABEL_17:
      sub_1C5BCB544();

      return;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    sub_1C5BC7E04();
    v18 = v17;
    sub_1C5BCB534();
    sub_1C5BC7DB4();
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1C5BA1388()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *(v1 + 224);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *(v2(v3, v1) + 40);

  swift_getKeyPath();
  v17 = v4;
  sub_1C5931880(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v5 = *(v4 + 17);

  if ((v5 & 1) == 0)
  {
    v7 = sub_1C5BA1AB0();
    if (v7)
    {

      v8 = [objc_opt_self() sharedInstance];
      v9 = [v8 defaultSheetMetrics];

      v10 = [v9 transitionSpringParametersHighSpeed_];
      [v10 _response];
      v12 = v11 * 0.8;
      v13 = [v10 _dampingRatio];
      v15 = MEMORY[0x1C694ED40](v13, v12, v14, 0.0);

      MEMORY[0x1EEE9AC00](v16);
      sub_1C596D96C(v15, 0);
    }

    else
    {
      v2(v3, v1);

      LOBYTE(v17) = 1;
      sub_1C59A8494(&v17);
    }
  }

  return result;
}

void sub_1C5BA162C(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (v2)
  {
    v9 = v2;
    sub_1C5BA19C4(aBlock);
    if (BYTE2(v11) == 3 || BYTE2(v11))
    {
      if (a1)
      {
        v4 = objc_opt_self();
        v5 = swift_allocObject();
        *(v5 + 16) = v9;
        v6 = swift_allocObject();
        *(v6 + 16) = sub_1C5BA93D4;
        *(v6 + 24) = v5;
        v13 = sub_1C5AF76A8;
        v14 = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v11 = sub_1C59D32C0;
        v12 = &block_descriptor_170;
        v7 = _Block_copy(aBlock);
        v8 = v9;

        [v4 performWithoutAnimation_];

        _Block_release(v7);
        LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

        if (v4)
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      sub_1C5B8A330();
      sub_1C5BA1830(a1 & 1);
      if (a1)
      {
        sub_1C5B8A22C();
      }

      else
      {
        sub_1C5B8A238();
      }
    }
  }
}

void sub_1C5BA1830(char a1)
{
  v2 = *(v1 + qword_1EDA47FE0);
  if (!v2)
  {
    return;
  }

  v22 = *(v1 + qword_1EDA47FE0);
  if ((a1 & 1) == 0)
  {
    v16 = *(v1 + qword_1EDA47FA0);
    if (v16)
    {
      v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xC0);
      v18 = v2;
      v7 = v16;
      v9 = v17();
      v11 = v19;
      v13 = v20;
      v15 = v21;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v3 = *(v1 + qword_1EDA47FA8);
  if (!v3)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

LABEL_9:
  [v22 setFrame_];
}

void sub_1C5BA19C4(uint64_t a1@<X8>)
{
  (*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50));

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    sub_1C5937F60(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5BA1AB0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1)
  {
    return 0;
  }

  result = sub_1C5934434();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [result tabBar];

  v6 = [v5 superview];
  if (!v6)
  {
    return 0;
  }

  result = sub_1C5934434();
  if (result)
  {
    v7 = result;
    v8 = [result tabBar];

    return v8;
  }

  return result;
}

id sub_1C5BA1BB4()
{
  v1 = type metadata accessor for NowPlayingViewController.AnimationController();
  v2 = v0;
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C5BA8410();

  return v4;
}

void sub_1C5BA1C4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1C5BA84A0(a5);

  swift_unknownObjectRelease();
}

void sub_1C5BA1CC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 viewControllerForColumn_];

      v4 = [v3 view];
      if (v4)
      {
        return;
      }
    }

    else
    {
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v5 view];

  if (!v7)
  {
LABEL_10:
    __break(1u);
  }
}

void sub_1C5BA1DB8(uint64_t a1)
{
  if (*(a1 + qword_1EDA47FA0))
  {
    type metadata accessor for CollapsedTabAccessoryViewController();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      v2[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 1;
      v3 = v2;
      sub_1C5BCB694();
    }
  }
}

id sub_1C5BA1E40(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_1C5BA85F4(v8);
  v13 = v12;

  return v13;
}

void sub_1C5BA1ECC()
{
  v0 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BC7E74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_1EDA47FA0);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      type metadata accessor for CollapsedTabAccessoryViewController();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);

        v10[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
        sub_1C5BC7E44();
        sub_1C5BC7E84();
        v11[3] = v1;
        v11[4] = MEMORY[0x1E69DC388];
        __swift_allocate_boxed_opaque_existential_0(v11);
        sub_1C5BC7E64();
        (*(v2 + 8))(v4, v1);
        sub_1C5BCB694();
      }

      else
      {
      }
    }
  }
}

id sub_1C5BA20B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C5BA87EC();
  v7 = v6;

  return v7;
}

void sub_1C5BA210C(void *a1, void *a2)
{
  v3 = *(v2 + qword_1EDA47FA0);
  if (!v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for CollapsedTabAccessoryViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v29 = v3;
    v8 = [a2 view];
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer;
      [*(v7 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer) frame];
      [v9 convertRect:*(v7 + v10) fromCoordinateSpace:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [a1 setSourceFrame_];

      return;
    }

    goto LABEL_12;
  }

  v19 = [v3 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [a1 setSourceFrame_];
}

void sub_1C5BA22AC(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = sub_1C5BA1AB0();
  if (!v5)
  {
    if (_UISolariumEnabled())
    {
      _s18MiniPlayerSnapshotVMa();
      swift_getWitnessTable();
      sub_1C5BC89A4();
      v6 = *&v1[qword_1EDA47F98];

      v7 = swift_unknownObjectRetain();
      sub_1C5BA28A4(v7, v6, v69);
      v8 = sub_1C5BC8984();
      v9 = *&v1[qword_1EDA47FA0];
      if (v9)
      {
        v10 = v8;
        v11 = *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
        *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v8;
        v12 = *((*v4 & *v9) + 0xA8);
        v13 = v8;
        v14 = v9;
        v12(v11);

        v15 = *&v2[qword_1EDA48200];
        *&v2[qword_1EDA48200] = v10;

        return;
      }

      __break(1u);
    }

    else
    {
      if (a1)
      {
        v16 = *&v1[qword_1EDA47FA0];
        if (!v16)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v17 = [v16 view];
        if (!v17)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v18 = v17;
        [v17 frame];
        v20 = v19;

        v21 = *&v2[qword_1EDA47FA0];
        if (!v21)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v22 = [v21 view];
        if (!v22)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v23 = v22;
        [v22 frame];
        v25 = v24;

        v26 = *&v2[qword_1EDA47FA0];
        if (!v26)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v27 = [v26 view];
        if (!v27)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v28 = v27;
        v29 = v25 + -8.0;
        [v27 frame];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v71.origin.x = v31;
        v71.origin.y = v33;
        v71.size.width = v35;
        v71.size.height = v37;
        Width = CGRectGetWidth(v71);
        v39 = sub_1C5B9E228() + 8.0;
        sub_1C5BA1CC8();
        v41 = v40;
        v42 = [v40 resizableSnapshotViewFromRect:0 afterScreenUpdates:v20 withCapInsets:{v29, Width, v39, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        [v42 setFrame_];
        if (!v42)
        {
          if (qword_1EDA469E0 != -1)
          {
            swift_once();
          }

          v43 = sub_1C5BC7D64();
          __swift_project_value_buffer(v43, qword_1EDA5DA78);
          oslog = sub_1C5BC7D44();
          v44 = sub_1C5BCB4D4();
          if (os_log_type_enabled(oslog, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_1C5922000, oslog, v44, "Unexpected error: the snapshotview is nil.", v45, 2u);
            MEMORY[0x1C69510F0](v45, -1, -1);
          }

          v5 = oslog;
          goto LABEL_2;
        }
      }

      else
      {
        _s18MiniPlayerSnapshotVMa();
        swift_getWitnessTable();
        sub_1C5BC89A4();
        v46 = *&v1[qword_1EDA47F98];

        v47 = swift_unknownObjectRetain();
        sub_1C5BA28A4(v47, v46, v69);
        v42 = sub_1C5BC8984();
        v48 = *&v1[qword_1EDA47FA0];
        if (!v48)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v49 = [v48 view];
        if (!v49)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v50 = v49;
        [v49 frame];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        [v42 setFrame_];
        v59 = [objc_allocWithZone(type metadata accessor for NowPlayingMiniPlayerContentBackgroundView()) init];
        v60 = *&v2[qword_1EDA47FA0];
        if (v60)
        {
          type metadata accessor for CollapsedViewController();
          if (swift_dynamicCastClass())
          {
            v61 = v60;
            v62 = sub_1C5B9E6A8();

            v63 = v59;
            sub_1C5A344F8(v59);

            v59 = v63;
          }
        }
      }

      v64 = v42;
      v65 = [v2 view];
      if (v65)
      {
        v66 = v65;
        [v65 addSubview_];

        v67 = *&v2[qword_1EDA48200];
        *&v2[qword_1EDA48200] = v64;

        return;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_2:
}

uint64_t sub_1C5BA28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 81) = 0;
  *(a3 + 88) = a1;
  *(a3 + 96) = a2;
  _s12PresentationCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0);
  swift_allocObject();
  *(v6 + 24) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  result = sub_1C5BCA684();
  *(a3 + 104) = v8;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1C5BA2994@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDA47F40;
  swift_beginAccess();
  return sub_1C59400B0(v1 + v3, a1, &qword_1EC19A180);
}

id sub_1C5BA2A00(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1C5BA8C20();
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

id sub_1C5BA2A88(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = qword_1EDA47F40;
  swift_beginAccess();
  sub_1C59400B0(v3 + v7, v38, &qword_1EC19A180);
  if (v38[3])
  {
    sub_1C59318C8(v38, v36);
    sub_1C5924EF4(v38, &qword_1EC19A180);
    v8 = *__swift_project_boxed_opaque_existential_0(v36, v36[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C5BD9A40;
    swift_beginAccess();
    *(v9 + 32) = v8[2];
    swift_beginAccess();
    *(v9 + 40) = v8[3];
    swift_beginAccess();
    *(v9 + 48) = v8[4];
    swift_beginAccess();
    *(v9 + 56) = v8[5];
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10)
    {
      v11 = 0;
LABEL_4:
      v12 = v11;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C694FD20](v12, v9);
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        if (*(v13 + 49) == 1)
        {
          v14 = *(v13 + 16);
          v15 = *(v13 + 24);
          v16 = *(v13 + 32);
          v17 = *(v13 + 40);
          v18 = *(v13 + 48);

          if ((v18 & 1) != 0 || (v40.origin.x = v14, v40.origin.y = v15, v40.size.width = v16, v40.size.height = v17, v39.x = a2, v39.y = a3, !CGRectContainsPoint(v40, v39)))
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 != v10)
            {
              goto LABEL_4;
            }

            break;
          }

LABEL_33:
          v19 = 1;
          goto LABEL_19;
        }

        ++v12;
      }

      while (v11 != v10);
    }

    v19 = 0;
LABEL_19:
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_1C5924EF4(v38, &qword_1EC19A180);
    v19 = 0;
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C5BC7D64();
  __swift_project_value_buffer(v20, qword_1EDA5DA78);
  v21 = v3;
  v22 = sub_1C5BC7D44();
  v23 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136446722;
    *v38 = a2;
    *&v38[1] = a3;
    type metadata accessor for CGPoint(0);
    v26 = sub_1C5BCAEA4();
    v28 = sub_1C592ADA8(v26, v27, &v37);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v19 ^ 1;
    *(v24 + 18) = 2082;
    v29 = qword_1EDA47F40;
    swift_beginAccess();
    sub_1C59400B0(v21 + v29, v38, &qword_1EC19A180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A180);
    v30 = sub_1C5BCAEA4();
    v32 = sub_1C592ADA8(v30, v31, &v37);

    *(v24 + 20) = v32;
    _os_log_impl(&dword_1C5922000, v22, v23, "Mini player requested to show context menu preview for touch at %{public}s. Will expand = %{BOOL}d based on excluded tap areas: %{public}s.", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v25, -1, -1);
    MEMORY[0x1C69510F0](v24, -1, -1);
  }

  if (v19)
  {
    return 0;
  }

  result = (*(*(v6 + 88) + 312))(*(v6 + 80));
  if (result)
  {
    v34 = [result contextMenuInteraction:a1 configurationForMenuAtLocation:{a2, a3}];
    swift_unknownObjectRelease();
    return v34;
  }

  return result;
}

id sub_1C5BA2F94(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = sub_1C5BA2A88(v8, a2, a3);

  return v10;
}

void *sub_1C5BA3014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*((*MEMORY[0x1E69E7D40] & *v3) + 0x58) + 312))(*((*MEMORY[0x1E69E7D40] & *v3) + 0x50));
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 contextMenuInteraction:a1 willPerformPreviewActionForMenuWithConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5BA3108(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1C5BA3014(v8, v9, a5);

  swift_unknownObjectRelease();
}

void *sub_1C5BA31A4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v3 + qword_1EDA47FA0);
  if (v8)
  {
    type metadata accessor for CollapsedViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if ([a2 respondsToSelector_] && (v12 = objc_msgSend(a2, sel_previewProvider)) != 0 && (v13 = v12, v14 = (*(v12 + 2))(), _Block_release(v13), v14))
      {

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer;
      *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer) = v15;
      [*(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) setHidden_];
      v17 = *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
      if (v17)
      {
        [v17 setHidden_];
      }
    }
  }

  result = (*(*(v7 + 88) + 312))(*(v7 + 80));
  if (result)
  {
    v19 = result;
    if ([result respondsToSelector_])
    {
      [v19 contextMenuInteraction:a1 willDisplayMenuForConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C5BA33AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v3 + qword_1EDA47FA0);
  if (v8)
  {
    type metadata accessor for CollapsedViewController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer;
      *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer) = 0;
      v12 = *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
      v13 = v8;
      [v12 setHidden_];
      v14 = *(v10 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
      if (v14)
      {
        [v14 setHidden_];
      }
    }
  }

  result = (*(*(v7 + 88) + 312))(*(v7 + 80));
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      [v16 contextMenuInteraction:a1 willEndForConfiguration:a2 animator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5BA3550(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

id NowPlayingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C5BCAE44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1C5BA36A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1C5BA8E98();
}

id NowPlayingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5BA3788(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1C5AC8D5C(a1 + qword_1EDA47F20);

  MEMORY[0x1C6951220](a1 + qword_1EDA481D8);

  return sub_1C5924EF4(a1 + qword_1EDA47F40, &qword_1EC19A180);
}

uint64_t sub_1C5BA3908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s21MiniPlayerContentViewVMa();
  swift_getTupleTypeMetadata2();
  v46[1] = sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  _s11ArtworkViewVMa();
  v5 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v48 = v5;
  v51 = swift_getWitnessTable();
  sub_1C5BC8BE4();
  v6 = sub_1C5BC8AB4();
  v54 = _s12PresentationCMa();
  v47 = swift_getWitnessTable();
  v104 = v47;
  v105 = swift_getWitnessTable();
  v71 = MEMORY[0x1E697E858];
  v50 = v6;
  v53 = swift_getWitnessTable();
  v52 = sub_1C5931880(&qword_1EDA4AF70, _s12PresentationCMa);
  v100 = v6;
  v101 = v54;
  v102 = v53;
  v103 = v52;
  v58 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0);
  v57 = sub_1C5BC8AB4();
  v63 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = v46 - v9;
  v65 = type metadata accessor for NowPlayingEnvironmentModifier();
  v61 = sub_1C5BC8AB4();
  v68 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = v46 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0);
  v64 = sub_1C5BC8AB4();
  v69 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = v46 - v11;
  v67 = sub_1C5BC8AB4();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = v46 - v14;
  v15 = *(v2 + 80);
  v107[4] = *(v2 + 64);
  v108 = v15;
  v109[0] = *(v2 + 96);
  *&v109[1] = *(v2 + 112);
  v16 = *(v2 + 16);
  v107[0] = *v2;
  v107[1] = v16;
  v17 = *(v2 + 48);
  v107[2] = *(v2 + 32);
  v107[3] = v17;
  v76 = v4;
  v77 = v3;
  sub_1C5BC9134();
  swift_checkMetadataState();
  sub_1C5BCA7C4();
  v90 = v97;
  v91 = v98;
  v92 = v99;
  v86 = v93;
  v87 = v94;
  v88 = v95;
  v89 = v96;
  v73 = v4;
  v74 = v3;
  v75 = v107;
  sub_1C5BCAA54();
  v18 = swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1C5BCA2C4();
  v110[4] = v90;
  v110[5] = v91;
  v111 = v92;
  v110[0] = v86;
  v110[1] = v87;
  v110[2] = v88;
  v110[3] = v89;
  (*(*(v18 - 8) + 8))(v110, v18);
  v93 = *(v109 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A500);
  sub_1C5BCA694();
  v19 = swift_checkMetadataState();
  v20 = v53;
  v21 = v54;
  v22 = v52;
  sub_1C5BC9DE4();

  (*(*(v19 - 8) + 8))(&v100, v19);
  swift_getKeyPath();
  LOBYTE(v93) = 4;
  v100 = v19;
  v101 = v21;
  v102 = v20;
  v103 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v49;
  v25 = OpaqueTypeMetadata2;
  sub_1C5BC9DF4();

  (*(v60 + 8))(v8, v25);
  v26 = *(&v108 + 1);
  v27 = *&v109[0];
  type metadata accessor for NowPlayingViewControllerProxy();
  v28 = sub_1C5BA4AC0();
  v29 = sub_1C5924F54(&qword_1EDA46188, &unk_1EC19A4F0);
  v84 = OpaqueTypeConformance2;
  v85 = v29;
  v30 = v57;
  v31 = swift_getWitnessTable();
  v32 = v56;
  sub_1C5937490(v26, v27, v28, v30, v31);

  (*(v63 + 8))(v24, v30);
  swift_getKeyPath();
  v100 = sub_1C5BCAB64();
  LOBYTE(v101) = 0;
  v33 = swift_getWitnessTable();
  v82 = v31;
  v83 = v33;
  v34 = v61;
  v35 = swift_getWitnessTable();
  v36 = v59;
  sub_1C5BC9DF4();

  (*(v68 + 8))(v32, v34);
  v37 = sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0);
  v80 = v35;
  v81 = v37;
  v38 = v64;
  v39 = swift_getWitnessTable();
  v40 = v62;
  sub_1C5BC9FA4();
  (*(v69 + 8))(v36, v38);
  v78 = v39;
  v79 = MEMORY[0x1E69805B0];
  v41 = v67;
  v42 = swift_getWitnessTable();
  v43 = v66;
  sub_1C593EDC0(v40, v41, v42);
  v44 = *(v70 + 8);
  v44(v40, v41);
  sub_1C593EDC0(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_1C5BA431C()
{
  sub_1C5941830(&v21);
  v0 = _s21MiniPlayerContentViewVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v21, v0, WitnessTable);
  v15[0] = v21;
  v15[1] = v22;
  v16[0] = v23[0];
  *(v16 + 9) = *(v23 + 9);
  v2 = *(v0 - 8);
  v3 = *(v2 + 8);
  v3(v15, v0);
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = v14[0];
  *(v18 + 9) = *(v14 + 9);
  v8 = v12;
  v9 = v13;
  v10[0] = v14[0];
  *(v10 + 9) = *(v14 + 9);
  v6 = 0;
  v7 = 1;
  v11[0] = &v8;
  v11[1] = &v6;
  (*(v2 + 16))(&v21, v17, v0);
  v5[0] = v0;
  v5[1] = MEMORY[0x1E6981840];
  sub_1C594226C(v11, 2uLL, v5);
  v19[0] = v12;
  v19[1] = v13;
  v20[0] = v14[0];
  *(v20 + 9) = *(v14 + 9);
  v3(v19, v0);
  v21 = v8;
  v22 = v9;
  v23[0] = v10[0];
  *(v23 + 9) = *(v10 + 9);
  return v3(&v21, v0);
}

uint64_t sub_1C5BA4500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((*(a3 + 224))(a2, a3, v10) + 72);

  swift_beginAccess();
  sub_1C59318C8(v13 + 64, v49);

  sub_1C59318C8(v49, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  if (swift_dynamicCast())
  {

    memset(v40, 0, sizeof(v40));
    v41 = 0;
    v42 = 1;
    _s11ArtworkViewVMa();
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    swift_getWitnessTable();
    sub_1C5941600(v40, v47);
    v14 = sub_1C5BCB804();
    (*(*(v14 - 8) + 8))(v40, v14);
  }

  else
  {
    v32 = v9;
    v34 = a4;
    v15 = v51;
    v33 = v50;
    __swift_project_boxed_opaque_existential_0(v49, v50);
    v16 = *(a1 + 8);
    *&v53[10] = *(a1 + 66);
    v17 = *(a1 + 24);
    v52[0] = v16;
    v52[1] = v17;
    v18 = *(a1 + 56);
    v52[2] = *(a1 + 40);
    *v53 = v18;
    if (v53[25])
    {
      v19 = *(a1 + 16);
      *(&v38[1] + 8) = *(a1 + 32);
      v20 = *(a1 + 64);
      *(&v38[2] + 8) = *(a1 + 48);
      *(&v38[3] + 8) = v20;
      BYTE8(v38[4]) = *(a1 + 80);
      *(v38 + 8) = v19;
      *&v38[0] = v16;
    }

    else
    {
      v31 = v16;
      sub_1C59400B0(v52, v47, &qword_1EC191B58);
      sub_1C5BCB4E4();
      v21 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v52, &qword_1EC191B58);
      (*(v32 + 8))(v12, v8);
    }

    v47[2] = v38[2];
    v48[0] = v38[3];
    *(v48 + 9) = *(&v38[3] + 9);
    v47[1] = v38[1];
    v47[0] = v38[0];
    v22 = (*(v15 + 16))(v47, v33, v15);
    v23 = sub_1C593EBD4(1u, v22);

    sub_1C5941EBC(v23, v39);
    v24 = _s11ArtworkViewVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v39, v24, WitnessTable);
    v26 = *(*(v24 - 8) + 8);
    v26(v39, v24);
    sub_1C593EDC0(v40, v24, WitnessTable);
    v26(v40, v24);
    memcpy(v36, v37, 0x122uLL);
    sub_1C5941600(v36, v47);
    v27 = sub_1C5BCB804();
    (*(*(v27 - 8) + 8))(v36, v27);
  }

  _s11ArtworkViewVMa();
  v28 = sub_1C5BCB804();
  v35 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  sub_1C593EDC0(v47, v28, v29);
  (*(*(v28 - 8) + 8))(v47, v28);
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_1C5BA4AC0()
{
  type metadata accessor for NowPlayingViewControllerProxy();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_1C5BA4B0C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C5BA4B7C(a1);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_interruptibleAnimatorForTransition_, a1);

  return v4;
}

void sub_1C5BA4B7C(void *a1)
{
  v2 = qword_1EC19A2B8;
  if ((*(v1 + qword_1EC19A2B8) & 1) == 0)
  {
    v3 = v1;
    v5 = *MEMORY[0x1E69E7D40] & *v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_1C5BA1AB0();

      if (!v8)
      {
        goto LABEL_7;
      }

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + qword_1EDA47FE0);
        v12 = v11;

        if (v11)
        {
          sub_1C5B89F8C(a1);

LABEL_7:
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v14 = swift_allocObject();
          v15 = *(v5 + 80);
          v14[2] = v15;
          v16 = *(v5 + 88);
          v14[3] = v16;
          v14[4] = v13;
          v14[5] = a1;
          v24[4] = sub_1C5BA92FC;
          v24[5] = v14;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 1107296256;
          v24[2] = sub_1C596D09C;
          v24[3] = &block_descriptor_122;
          v17 = _Block_copy(v24);
          swift_unknownObjectRetain();

          [v3 addNoninteractiveAnimations_];
          _Block_release(v17);
          if (![v3 isReversed])
          {
LABEL_11:
            *(v3 + v2) = 1;
            return;
          }

          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            v20 = *(v18 + qword_1EDA47FA8);
            v21 = v20;

            if (v20)
            {
              v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 1;

              v22 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v23 = swift_allocObject();
              v23[2] = v15;
              v23[3] = v16;
              v23[4] = v22;

              sub_1C5B9D06C(sub_1C5BA9308, v23);

              goto LABEL_11;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

id sub_1C5BA4E3C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_1C5BA4B0C(a3);
  swift_unknownObjectRelease();

  return v6;
}

void sub_1C5BA4EA4(uint64_t a1, void *a2)
{
  v51 = a2;
  v2 = sub_1C5BCAC14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BCAC44();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1C5BC7E74();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v47 = v3;
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_9:

    return;
  }

  v19 = v18;
  v46 = [v17 isReversed];
  v45 = v2;
  if ((v46 & 1) == 0)
  {
    v20 = sub_1C5BA1AB0();
    if (v20)
    {

      v21 = [v51 viewControllerForKey_];
      if (v21)
      {
        v22 = v21;
        type metadata accessor for ContentViewController();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          v42 = objc_opt_self();
          v25 = swift_allocObject();
          v41 = v22;
          v26 = v25;
          *(v25 + 16) = v19;
          *(v25 + 24) = v24;
          v27 = swift_allocObject();
          v43 = sub_1C5BA9328;
          v44 = v26;
          *(v27 + 16) = sub_1C5BA9328;
          *(v27 + 24) = v26;
          v54 = sub_1C59A57A4;
          v55 = v27;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v53 = sub_1C59D32C0;
          *(&v53 + 1) = &block_descriptor_144;
          v28 = _Block_copy(&aBlock);
          v40 = v55;
          v29 = v19;
          v41 = v41;

          [v42 performWithoutAnimation_];

          _Block_release(v28);
          LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

          if (v28)
          {
            __break(1u);
            goto LABEL_9;
          }

          goto LABEL_12;
        }
      }
    }
  }

  v43 = 0;
  v44 = 0;
LABEL_12:
  if (([v51 isInteractive] & 1) == 0)
  {
    sub_1C5BA162C(v46 ^ 1);
  }

  if (*&v19[qword_1EDA47FA0])
  {
    type metadata accessor for CollapsedTabAccessoryViewController();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      v32 = sub_1C5BA1AB0();
      if (v32)
      {

        v31[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 1;
        v54 = 0;
        aBlock = 0u;
        v53 = 0u;
      }

      else
      {
        v31[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
        sub_1C5BC7E44();
        sub_1C5BC7E84();
        sub_1C5BC7E64();
        v33 = v48;
        (*(v48 + 8))(v12, v10);
        *(&v53 + 1) = v10;
        v54 = MEMORY[0x1E69DC388];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
        (*(v33 + 32))(boxed_opaque_existential_0, v15, v10);
      }

      sub_1C5BCB694();
    }
  }

  sub_1C592535C(0, &qword_1EDA4E620);
  v35 = sub_1C5BCB5A4();
  v36 = swift_allocObject();
  *(v36 + 16) = v46;
  *(v36 + 24) = v51;
  *(v36 + 32) = v19;
  v54 = sub_1C5BA931C;
  v55 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_1C596D09C;
  *(&v53 + 1) = &block_descriptor_135;
  v37 = _Block_copy(&aBlock);
  v38 = v19;
  swift_unknownObjectRetain();

  sub_1C5BCAC34();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1C5931880(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  v39 = v45;
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v8, v5, v37);
  _Block_release(v37);

  (*(v47 + 8))(v5, v39);
  (*(v49 + 8))(v8, v50);
  sub_1C59261FC(v43);
}

uint64_t sub_1C5BA55C8(char a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C5BA9390;
  *(v8 + 24) = v7;
  v12[4] = sub_1C5AF76A8;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C59D32C0;
  v12[3] = &block_descriptor_154;
  v9 = _Block_copy(v12);
  swift_unknownObjectRetain();
  v10 = a3;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5BA5748(char a1, id a2, void *a3)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E69E7D40] & *a3;
    if (sub_1C5B9D5F4())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v21 = 1;
      v20 = 0;
      (*(v5 + 8))(&v21, &v20, 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = *((*(*(v3 + 88) + 224))(*(v3 + 80)) + 32);

    v8 = *(v7 + 16);
    if (v8 == 4)
    {
    }

    else
    {
      v10 = sub_1C5BCBDE4();

      if ((v10 & 1) == 0)
      {
        type metadata accessor for NowPlayingViewModel.Lifecycle();
        sub_1C5931880(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
        sub_1C5BC7F24();
        sub_1C5BC7FA4();
      }
    }

    *(v7 + 16) = 4;
    sub_1C5B8C3D0(v8);

    result = sub_1C5BA1AB0();
    if (result)
    {

      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 defaultSheetMetrics];

      v13 = [v12 transitionSpringParametersHighSpeed_];
      [v13 _response];
      v15 = v14 * 0.8;
      v16 = [v13 _dampingRatio];
      v18 = MEMORY[0x1C694ED40](v16, v15, v17, 0.0);

      MEMORY[0x1EEE9AC00](v19);
      sub_1C596D96C(v18, 0);
    }
  }

  else
  {
    result = [a2 isInteractive];
    if ((result & 1) == 0)
    {
      return sub_1C5BA1388();
    }
  }

  return result;
}

uint64_t sub_1C5BA5AF4(void *a1, unsigned __int8 a2)
{
  (*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50));

  v4 = a2;
  sub_1C59A8494(&v4);
}

void sub_1C5BA5BA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *&v2[qword_1EDA47FA8];
      v4 = v3;

      if (v3)
      {
        v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 0;

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

void sub_1C5BA5C4C(char a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = qword_1EC19A2B0;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v17 = a1 & 1;

      v8(&v17);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(v1 + v4) = MEMORY[0x1E69E7CC0];

  if ([v1 isReversed])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if ((a1 & 1) == 0)
    {
      if (!Strong)
      {
        return;
      }

      v13 = Strong;
      [*(Strong + qword_1EDA47F88) removeFromSuperview];
      [*&v13[qword_1EDA48200] removeFromSuperview];
      v14 = *&v13[qword_1EDA48200];
      *&v13[qword_1EDA48200] = 0;

      goto LABEL_16;
    }

    if (!Strong)
    {
      return;
    }

    v10 = Strong;
    swift_unknownObjectRetain();

    v11 = (*(*(v3 + 88) + 224))(*(v3 + 80));
    swift_unknownObjectRelease();
    v12 = *(v11 + 32);

    LODWORD(v11) = *(v12 + 16);

    if (v11 == 4)
    {
    }

    else
    {
      v15 = sub_1C5BCBDE4();

      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v14 = v16;
      sub_1C5BA0C80(1);
LABEL_16:
    }
  }
}

void sub_1C5BA5F38(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1C5BA5C4C(a3);
}

uint64_t sub_1C5BA5FCC(uint64_t a1)
{
  MEMORY[0x1C6951220](a1 + qword_1EC19A2A8);
}

id sub_1C5BA6074(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1C592535C(0, &qword_1EDA4E078);
    v8 = v7;
    v9 = v3;
    v10 = sub_1C5BCB744();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_1C5BA61EC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_1C5BA622C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1C5B9D414();

  return v2;
}

void sub_1C5BA6310()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, sel_viewDidLayoutSubviews);
  v1 = sub_1C5B9E6A8();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  Width = CGRectGetWidth(v35);
  v13 = [v0 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  Height = CGRectGetHeight(v36);
  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    [v24 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v37.origin.x = v27;
    v37.origin.y = v29;
    v37.size.width = v31;
    v37.size.height = v33;
    [v1 setFrame_];

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1C5BA64F0()
{
  v1 = sub_1C5B9E6A8();
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = (*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer) + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets);
  v11 = *v10;
  v12 = v10[1];

  return UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v12);
}

void sub_1C5BA6588(void *a1)
{
  v3 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView;
  v4 = *(v1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView);
  v5 = a1;
  v6 = v4;
  sub_1C5937CB8(a1);
  [v6 removeFromSuperview];
  v9 = sub_1C5B9E6A8();
  v7 = *(v1 + v3);
  v8 = v7;
  sub_1C5A344F8(v7);
}

void sub_1C5BA664C(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C5BA66F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v1)
  {
    v12 = v1;
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v12 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1C5BA67CC()
{
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return 0.0;
}

double sub_1C5BA6940(double a1)
{
  v2 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong || ((v6 = Strong, swift_getKeyPath(), v12[1] = v6, sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties), sub_1C5BC7B74(), , v7 = *(v6 + 104), , (v7 & 0xFF0000) != 0x30000) ? (v8 = (BYTE2(v7) | 4) == 4) : (v8 = 1), v8))
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDA5DAE8;
  }

  else
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC1A6AC8;
  }

  v10 = __swift_project_value_buffer(v2, v9);
  sub_1C5948550(v10, v4);
  if (a1 > 700.0)
  {
    a1 = 700.0;
  }

  sub_1C5BA9614(v4, type metadata accessor for NowPlayingMiniPlayerSpecs);
  return a1;
}

void sub_1C5BA6C18()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v54, sel_viewDidLayoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 8];
  v5 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 16];
  v6 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds + 24];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v55.origin.x = v3;
  v55.origin.y = v4;
  v55.size.width = v5;
  v55.size.height = v6;
  v56.origin.x = v10;
  v56.origin.y = v12;
  v56.size.width = v14;
  v56.size.height = v16;
  if (!CGRectEqualToRect(v55, v56))
  {
    v17 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView];
    if (v17)
    {
      v18 = v17;
      v19 = [v1 view];
      if (!v19)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v18 setFrame_];
    }
  }

  v29 = [v1 view];
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  *v2 = v32;
  *(v2 + 1) = v34;
  *(v2 + 2) = v36;
  *(v2 + 3) = v38;
  v39 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties];
  swift_getKeyPath();
  sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v40 = *(v39 + 80);
  v41 = [v1 view];
  if (!v41)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  [v41 safeAreaInsets];
  v44 = v43;

  if (v40 == v44)
  {
    return;
  }

  v45 = [v1 view];
  if (!v45)
  {
    goto LABEL_21;
  }

  v46 = v45;
  [v45 safeAreaInsets];
  v48 = v47;

  if (*(v39 + 80) == v48)
  {
    *(v39 + 80) = v48;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v49 = sub_1C5BC7D64();
    __swift_project_value_buffer(v49, qword_1EDA5DA78);

    v50 = sub_1C5BC7D44();
    v51 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      swift_getKeyPath();
      sub_1C5BC7B74();

      *(v52 + 4) = *(v39 + 80);
      _os_log_impl(&dword_1C5922000, v50, v51, "WindowProperties.toolbarHeight updated to %f", v52, 0xCu);
      MEMORY[0x1C69510F0](v52, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5BC7B64();
  }
}

void sub_1C5BA70C8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  if ([v9 isBeingDismissed] && (v10 = *&v9[*a5]) != 0)
  {

    v10(a3);

    sub_1C59261FC(v10);
  }

  else
  {
  }
}

void sub_1C5BA7184()
{
  v1 = sub_1C5BCAC14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView];
  if (v0[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing])
  {
    if (!v10)
    {
      return;
    }

    v39 = v7;
    v40 = v10;
    [v40 frame];
    Width = CGRectGetWidth(v43);
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v44.origin.x = v15;
      v44.origin.y = v17;
      v44.size.width = v19;
      v44.size.height = v21;
      if (Width != CGRectGetWidth(v44))
      {
        sub_1C592535C(0, &qword_1EDA4E620);
        v38 = sub_1C5BCB5A4();
        v22 = swift_allocObject();
        *(v22 + 16) = v40;
        *(v22 + 24) = v0;
        aBlock[4] = sub_1C5BA92C4;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C596D09C;
        aBlock[3] = &block_descriptor_101;
        v23 = _Block_copy(aBlock);
        v40 = v40;
        v24 = v0;

        sub_1C5BCAC34();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1C5931880(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
        sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
        sub_1C5BCB8F4();
        v25 = v38;
        MEMORY[0x1C694F7F0](0, v9, v4, v23);
        _Block_release(v23);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v9, v39);
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (!v10)
  {
    return;
  }

  v40 = v10;
  v26 = [v0 view];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  [v26 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v40 setFrame_];
LABEL_9:
  v36 = v40;
}

id sub_1C5BA75F4(void *a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v14.origin.x = v6;
    v14.origin.y = v8;
    v14.size.width = v10;
    v14.size.height = v12;
    CGRectGetWidth(v14);
    [a1 frame];

    return [a1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5BA76B4()
{
  sub_1C59261FC(*(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan));
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded);

  return sub_1C59261FC(v1);
}

void sub_1C5BA7750()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5BA790C(void *a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for ContentViewController();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (v3[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] == 1)
  {
    v7 = *&v3[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties];
    if (*(v7 + 48) == 1)
    {
      *(v7 + 48) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      aBlock[0] = v7;
      sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
      sub_1C5BC7B64();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    aBlock[4] = sub_1C5BA92BC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5AC79C8;
    aBlock[3] = &block_descriptor_94_0;
    v10 = _Block_copy(aBlock);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1C5BA7B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties);
  if (*(v2 + 48))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5931880(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  else
  {
    *(v2 + 48) = 0;
  }
}

id sub_1C5BA7D10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5BA7DAC()
{
  v0 = sub_1C5BC7D64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v4, qword_1EDA46A00);
  __swift_project_value_buffer(v4, qword_1EDA46A00);
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDA5DA78);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C5BC7CB4();
}

uint64_t UITabBarController.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1C5934B08(a1, a2, a3, sub_1C5931F9C);

  return v8;
}

void UITabBarController.installNowPlayingViewController<A>(_:)(void *a1)
{
  v3 = v1;
  sub_1C5931F9C(a1);
}

uint64_t UISplitViewController.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1C5934B08(a1, a2, a3, sub_1C5B9D22C);

  return v8;
}

void UISplitViewController.installNowPlayingViewController<A>(_:)(void *a1)
{
  v3 = v1;
  sub_1C5B9D22C(a1);
}

void sub_1C5BA8060(void *a1)
{
  v2 = *((*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50)) + 72);

  v3 = [a1 traitCollection];
  v4 = [v3 accessibilityContrast];

  if (*(v2 + 56) != v4)
  {
    swift_beginAccess();
    sub_1C59318C8(v2 + 16, v8);
    v5 = v9;
    v6 = v10;
    v7 = __swift_project_boxed_opaque_existential_0(v8, v9);
    sub_1C593192C(v7, v4, v2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  *(v2 + 56) = v4;

  sub_1C5BA0FDC();
}

void sub_1C5BA81A4()
{
  *(v0 + qword_1EDA47FB8) = 0;
  *(v0 + qword_1EDA47FA0) = 0;
  *(v0 + qword_1EDA47FA8) = 0;
  *(v0 + qword_1EDA47F90) = MEMORY[0x1E69E7CD0];
  v1 = qword_1EDA47F98;
  type metadata accessor for NowPlayingRouteObserver();
  swift_allocObject();
  *(v0 + v1) = sub_1C5930D44();
  *(v0 + qword_1EDA47F30) = 0;
  *(v0 + qword_1EDA47F20 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EDA47F78) = 0;
  *(v0 + qword_1EDA47F60) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EDA481F0) = 0;
  *(v0 + qword_1EDA47FD0) = 0;
  *(v0 + qword_1EDA47FC8) = 0;
  *(v0 + qword_1EDA47F50) = 0;
  *(v0 + qword_1EDA47F68) = 0;
  *(v0 + qword_1EDA47FE0) = 0;
  *(v0 + qword_1EDA47F88) = 0;
  *(v0 + qword_1EDA48200) = 0;
  *(v0 + qword_1EDA47F48) = 0;
  v2 = v0 + qword_1EDA47F40;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

void sub_1C5BA8340(void *a1)
{
  v3 = *(v1 + qword_1EDA47FD0);
  *(v1 + qword_1EDA47FD0) = a1;
  v2 = a1;
  sub_1C5B9E3D0(v3, &qword_1EDA47FD0);
}

void sub_1C5BA83A0(void *a1)
{
  v3 = *(v1 + qword_1EDA47FC8);
  *(v1 + qword_1EDA47FC8) = a1;
  v2 = a1;
  sub_1C5B9E3D0(v3, &qword_1EDA47FC8);
}

id sub_1C5BA8410()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_1EC19A2B0] = MEMORY[0x1E69E7CC0];
  v0[qword_1EC19A2B8] = 0;
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1C5BA84A0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E69E7D40] & *v1;
    if ([swift_unknownObjectRetain() isAnimated])
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      v4 = [v2 viewControllerForKey_];
      if (v4)
      {
        v5 = v4;
        type metadata accessor for ContentViewController();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          sub_1C5937994(v6);
        }
      }

      (*(*(v3 + 88) + 224))(*(v3 + 80));

      v7 = 1;
      sub_1C59A8494(&v7);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C5BA85F4(void *a1)
{
  v3 = sub_1C5BA1BB4();
  v4 = sub_1C5934434();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() currentTraitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      sub_1C5BA210C(v3, v5);
      sub_1C592535C(0, &qword_1EDA4E078);
      v8 = sub_1C5BCAAE4();
      MEMORY[0x1EEE9AC00](v8);
      sub_1C5BCB6D4();

      return;
    }
  }

  type metadata accessor for ContentViewController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    sub_1C5BA22AC(1);
    v12 = *(v1 + qword_1EDA47FE0);
    if (v12)
    {
      v13 = v12;
      v14 = [v10 view];
      if (v14)
      {
        v15 = v14;
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        [v13 setFrame_];
        sub_1C5937994(v10);

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

void sub_1C5BA87EC()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1C5BA1BB4();
  [v2 setIsReversed_];
  v3 = sub_1C5934434();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() currentTraitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {

      sub_1C5BA210C(v2, v4);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = *(v1 + 80);
      v8[3] = *(v1 + 88);
      v8[4] = v7;
      v42 = sub_1C5BA94B8;
      v43 = v8;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1C5AECA14;
      v41 = &block_descriptor_241;
      v9 = _Block_copy(&v38);

      [v2 addNoninteractiveCompletion_];
      _Block_release(v9);
      v10 = 0;
LABEL_11:

      sub_1C59261FC(v10);
      return;
    }
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C5BA9490;
  *(v13 + 24) = v12;
  v42 = sub_1C5AF76A8;
  v43 = v13;
  v38 = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1C59D32C0;
  v41 = &block_descriptor_234;
  v14 = _Block_copy(&v38);
  v15 = v0;

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = Strong;
  v18 = [Strong view];

  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v18 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 view];

  if (v29)
  {
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v44.origin.x = v31;
    v44.origin.y = v33;
    v44.size.width = v35;
    v44.size.height = v37;
    [v2 setSourceFrame_];
    v10 = sub_1C5BA9490;
    v4 = v2;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void sub_1C5BA8C20()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v3 = *(v0 + qword_1EDA47FA0);
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC0);
  v7 = v3;
  v8 = v6();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = 14.0;
  if (_UISolariumEnabled())
  {
    v16 = *(v1 + qword_1EDA47FA0);
    if (!v16)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v17 = *((*v5 & *v16) + 0xC0);
    v18 = v16;
    v19 = v17();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v32.origin.x = v19;
    v32.origin.y = v21;
    v32.size.width = v23;
    v32.size.height = v25;
    v15 = CGRectGetHeight(v32) * 0.5;
  }

  v26 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v15}];
  [v4 setVisiblePath_];

  if (_UISolariumEnabled())
  {
    v27 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  v28 = *(v1 + qword_1EDA47FA0);
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CollapsedTabAccessoryViewController();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
LABEL_11:
    v31 = v30;
    [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v31 parameters:v4];

    return;
  }

  v30 = *(v28 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
  if (v30)
  {
    goto LABEL_11;
  }
}

uint64_t objectdestroy_131Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5BA9518(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C592ABD4;

  return sub_1C5B9DAE8(v8, v9, v10, v11, a1, v4, v5, v6, v7);
}

uint64_t sub_1C5BA9614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5BA968C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5BA96C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5BA9710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5BA984C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C5BAA70C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1C5BA98F0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A508);
  v2 = sub_1C5BCB0C4();
  *(v2 + 16) = 4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v0 + 112) = v2;
  *(v0 + 120) = &unk_1F4518978;
  return v0;
}

void sub_1C5BA9978(void *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C5BA9BC0();
    [v4 unregisterObserver_];

    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 16) = a1;
  v10 = a1;

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C5BA9BC0();
    [v8 registerObserver_];
  }
}

double sub_1C5BA9A40()
{
  __asm { FMOV            V1.4S, #1.0 }

  v13 = vminnmq_f32(vmaxnmq_f32(v0[3], 0), _Q1);
  __asm { FMOV            V1.4S, #3.0; y }

  v7 = _simd_pow_f4(v13, _Q1);
  __asm
  {
    FMOV            V1.4S, #6.0
    FMOV            V2.4S, #-15.0
  }

  v10 = vmulq_f32(v13, vaddq_f32(vmulq_f32(v13, _Q1), _Q2));
  __asm { FMOV            V2.4S, #10.0 }

  *&result = vmulq_f32(v7, vaddq_f32(v10, _Q2)).u64[0];
  return result;
}

uint64_t SpectrumAnalysis.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C5BA9BC0();
    [v2 unregisterObserver_];

    v1 = *(v0 + 16);
  }

  return v0;
}

uint64_t SpectrumAnalysis.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C5BA9BC0();
    [v2 unregisterObserver_];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_1C5BA9BC0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1C5BA9C1C();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C5BA9C1C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B0840]) init];
  LODWORD(v1) = 20.0;
  LODWORD(v2) = 1133903872;
  [v0 addFrequencyBand_];
  LODWORD(v3) = 1133903872;
  LODWORD(v4) = 1163575296;
  [v0 addFrequencyBand_];
  LODWORD(v5) = 1186693120;
  LODWORD(v6) = 1163575296;
  [v0 addFrequencyBand_];
  v7 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1C5BAA830;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C5A07474;
  v10[3] = &block_descriptor_34_1;
  v8 = _Block_copy(v10);

  [v0 setOnUpdate_];
  _Block_release(v8);
  return v0;
}

uint64_t sub_1C5BA9D78(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5BAA180(a1);
  }

  return result;
}

uint64_t sub_1C5BA9E0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  for (i = *(v1 + 40); v4 < i[2]; i = *(v1 + 40))
  {
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 40) = i;
    if (result)
    {
      v6 = i[2];
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_1C5BAA70C(i);
      i = result;
      *(v1 + 40) = result;
      v6 = *(result + 16);
      if (!v6)
      {
LABEL_7:
        __break(1u);
        return result;
      }
    }

    v7 = v6 - 1;
    memmove(i + 4, i + 6, 16 * (v6 - 1));
    i[2] = v7;
    *(v1 + 40) = i;
    result = swift_endAccess();
    v4 = *(v1 + 32);
  }

  return result;
}

void (*sub_1C5BA9EEC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1C5BA9F64;
}

void sub_1C5BA9F64(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_beginAccess();
    v5 = *(v4 + 40);
    if (*(v4 + 32) < *(v5 + 2))
    {
      do
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 40) = v5;
        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = *(v5 + 2);
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v5 = sub_1C5BAA70C(v5);
          *(v4 + 40) = v5;
          v7 = *(v5 + 2);
          if (!v7)
          {
LABEL_8:
            __break(1u);
            break;
          }
        }

        v8 = v3[6];
        v9 = v7 - 1;
        memmove(v5 + 32, v5 + 48, 16 * (v7 - 1));
        *(v5 + 2) = v9;
        *(v4 + 40) = v5;
        swift_endAccess();
        v5 = *(v4 + 40);
      }

      while (*(v8 + 32) < *(v5 + 2));
    }
  }

  free(v3);
}

float32x4_t sub_1C5BAA068()
{
  v1 = v0[6];
  *v2.f32 = vdiv_f32(*v1.f32, 0x42C8000042480000);
  v2.i32[3] = vextq_s8(*&v1, *&v1, 8uLL).i32[1];
  v2.f32[2] = COERCE_FLOAT(v0[6].i64[1]) / 1000.0;
  v8 = vsubq_f32(v1, v2);
  sub_1C5BAA0DC();
  v4 = vmaxnmq_f32(v8, v3);
  v0[6] = v4;
  v5 = v0[3];
  result = vsubq_f32(v4, v5);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v0[3] = vmlaq_f32(v5, v7, result);
  return result;
}

uint64_t sub_1C5BAA0DC()
{
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = v2[1].i64[0];
  if (v3)
  {
    v4 = *(v0 + 120);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v6 = vaddq_f32(vmulq_n_f32(v2[2], *(v4 + 32)), 0);
    v7 = v3 - 1;
    if (v7)
    {
      v8 = 0;
      v9 = v4 + 36;
      v10 = v2 + 3;
      while (1)
      {
        v11 = v8 + 1;
        if (v8 + 1 >= v5)
        {
          break;
        }

        v6 = vaddq_f32(v6, vmulq_n_f32(v10[v8], *(v9 + 4 * v8)));
        ++v8;
        if (v7 == v11)
        {
          return result;
        }
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1C5BAA180(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BCAC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BAA48C();
  sub_1C5BAA7D8(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_1C5929CA0();
  v22 = sub_1C5BCB5A4();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = sub_1C5BAA824;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_28;
  v24 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C59F9D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5A3437C();
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C5BAA48C()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C5B76528(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1C5B76528((v7 > 1), v8 + 1, 1, v4);
      }

      ++v3;
      *(v4 + 2) = v8 + 1;
      *&v4[4 * v8 + 32] = v6;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t sub_1C5BAA594(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_1C5BA984C(0);
  v3 = *(a1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1C5B77350(0, *(v3 + 2) + 1, 1, v3);
    *(a1 + 112) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1C5B77350((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = a2;
  *(a1 + 112) = v3;
  return swift_endAccess();
}

uint64_t sub_1C5BAA680(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C5BCB984();
  }

  return sub_1C5BCBAF4();
}

uint64_t sub_1C5BAA7D8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ParallaxBackButtonLabel()
{
  result = qword_1EC19A510;
  if (!qword_1EC19A510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5BAA8B4()
{
  sub_1C5A3B4E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5BAA93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A528);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A530);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A538);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v46 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A540);
  MEMORY[0x1EEE9AC00](v48);
  v58 = &v46 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A548);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v46 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A550);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v46 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A558);
  MEMORY[0x1EEE9AC00](v51);
  v59 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v46 - v16;
  v17 = sub_1C5BCA5A4();
  v18 = sub_1C5BC9A04();
  KeyPath = swift_getKeyPath();
  *&v61 = v17;
  *(&v61 + 1) = KeyPath;
  *&v62 = v18;
  sub_1C5BC9994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C70);
  sub_1C5958260();
  sub_1C5BC9D14();

  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A560) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
  v22 = *MEMORY[0x1E69816E0];
  v23 = sub_1C5BCA5D4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  sub_1C5BC8904();
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v4, v6, &qword_1EC19A528);
  v24 = &v6[*(v47 + 36)];
  v25 = v66;
  *(v24 + 4) = v65;
  *(v24 + 5) = v25;
  *(v24 + 6) = v67;
  v26 = v62;
  *v24 = v61;
  *(v24 + 1) = v26;
  v27 = v64;
  *(v24 + 2) = v63;
  *(v24 + 3) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  sub_1C5BC84D4();
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v28 = v52;
  sub_1C59E7D34(v6, v52, &qword_1EC19A530);
  v29 = (v28 + *(v49 + 36));
  v30 = v69;
  *v29 = v68;
  v29[1] = v30;
  v29[2] = v70;
  v31 = v58;
  v32 = &v58[*(v48 + 36)];
  sub_1C5BCA9D4();
  v33 = sub_1C5BC9894();
  v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196120) + 36)] = v33;
  sub_1C59E7D34(v28, v31, &qword_1EC19A538);
  v34 = swift_getKeyPath();
  v35 = v57;
  v36 = &v57[*(v50 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130) + 28);
  v38 = *MEMORY[0x1E697DBA8];
  v39 = sub_1C5BC8284();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v34;
  sub_1C59E7D34(v31, v35, &qword_1EC19A540);
  v40 = v54;
  sub_1C59E7D34(v35, v54, &qword_1EC19A548);
  *(v40 + *(v56 + 36)) = 256;
  sub_1C59E7D34(v40, v14, &qword_1EC19A550);
  v14[*(v51 + 36)] = 0;
  v41 = v55;
  sub_1C59E7D34(v14, v55, &qword_1EC19A558);
  v42 = v59;
  sub_1C5999650(v41, v59);
  v43 = v60;
  sub_1C5999650(v42, v60);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A568) + 48);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_1C59996C0(v41);
  return sub_1C59996C0(v42);
}

uint64_t sub_1C5BAB170@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8FC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A520);
  return sub_1C5BAA93C(v1, a1 + *(v3 + 44));
}

void sub_1C5BAB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  v9 = sub_1C5BCB424();
  if (v39 >= v40)
  {
    MEMORY[0x1EEE9AC00](v9);
    v37[2] = a5;
    v38 = 1;
    v12 = sub_1C5A7D428(sub_1C5BAC1D4, v37, v10, v11);
    v13 = *(v12 + 16);
    v14 = 0.0;
    if (!v13)
    {
      goto LABEL_10;
    }

    if (v13 > 3)
    {
      v15 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      v16 = (v12 + 48);
      v17 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v14 = v14 + *(v16 - 2) + *(v16 - 1) + *v16 + v16[1];
        v16 += 4;
        v17 -= 4;
      }

      while (v17);
      if (v13 == v15)
      {
LABEL_10:

        *&v23 = CGSizeMake(v21, v22);
        v24 = sub_1C5BABE00(a5, v23, 0, a7);
        v25 = *(v24 + 16);
        if (v25)
        {
          if (v25 == 1)
          {
            v26 = 0;
            v27 = 0.0;
          }

          else
          {
            v26 = v25 & 0x7FFFFFFFFFFFFFFELL;
            v28 = (v24 + 56);
            v27 = 0.0;
            v29 = v25 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v30 = *(v28 - 2);
              v31 = *v28;
              v28 += 4;
              v27 = v27 + v30 + v31;
              v29 -= 2;
            }

            while (v29);
            if (v25 == v26)
            {
              goto LABEL_18;
            }
          }

          v32 = v25 - v26;
          v33 = (v24 + 16 * v26 + 40);
          do
          {
            v34 = *v33;
            v33 += 2;
            v27 = v27 + v34;
            --v32;
          }

          while (v32);
        }

LABEL_18:

        CGSizeMake(v35, v36);
        return;
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = v13 - v15;
    v19 = (v12 + 8 * v15 + 32);
    do
    {
      v20 = *v19++;
      v14 = v14 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1C5BAB400(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = a13;
  v55 = sub_1C5BC8744();
  v22 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a10;
  v27 = sub_1C5BABE00(a10, v25, a2 & 1, a12);
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  result = sub_1C5BCB424();
  if (v59 < v60)
  {
    __break(1u);
    goto LABEL_24;
  }

  MEMORY[0x1EEE9AC00](result);
  v51[-2] = a10;
  LOBYTE(v51[-1]) = 1;
  v31 = sub_1C5A7D428(sub_1C5BAC1B0, &v51[-4], v29, v30);
  v61.origin.x = a3;
  v61.origin.y = a4;
  v61.size.width = a5;
  v61.size.height = a6;
  MinY = CGRectGetMinY(v61);
  sub_1C5BCB3D4();
  result = sub_1C5BCB424();
  v34 = v59;
  v35 = v60;
  if (v59 < v60)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v60 == v59)
  {
LABEL_22:
  }

  if (v60 >= v59)
  {
    goto LABEL_25;
  }

  if (v60 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = *(v27 + 16);
  if (v60 >= v36 || v59 - 1 >= v36)
  {
    goto LABEL_27;
  }

  v37 = *(v31 + 16);
  if (v60 < v37 && v59 - 1 < v37)
  {
    v57 = a3;
    v38 = a7 * 0.5 + MinY;
    v51[0] = v31;
    v51[1] = v27;
    v56 = v31 + 32;
    v53 = "kLayout(lineLimit: ";
    v39 = (v22 + 8);
    v40 = (v27 + 16 * v60 + 40);
    *&v33 = 136315138;
    v52 = v33;
    v41 = a6;
    v42 = a5;
    v43 = v55;
    v54 = v26;
    do
    {
      v44 = *v40;
      sub_1C5BC9144();
      if (sub_1C5BC9124())
      {
        v62.origin.x = v57;
        v62.origin.y = a4;
        v62.size.width = a5;
        v62.size.height = a6;
        CGRectGetMinX(v62);
        sub_1C5BCAB94();
      }

      else
      {
        sub_1C5BC9154();
        if (sub_1C5BC9124())
        {
          v63.origin.x = v57;
          v63.origin.y = a4;
          v63.size.width = a5;
          v63.size.height = a6;
          CGRectGetMaxX(v63);
          sub_1C5BCABA4();
        }

        else
        {
          sub_1C5BC9134();
          v45 = sub_1C5BC9124();
          v64.origin.x = v57;
          v64.origin.y = a4;
          v64.size.width = a5;
          v64.size.height = a6;
          CGRectGetMidX(v64);
          sub_1C5BCABB4();
          if ((v45 & 1) == 0)
          {
            if (qword_1EC1909C8 != -1)
            {
              swift_once();
            }

            v46 = sub_1C5BC7D64();
            __swift_project_value_buffer(v46, qword_1EC1A6E50);
            v47 = sub_1C5BC7D44();
            v48 = sub_1C5BCB4E4();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v60 = v50;
              *v49 = v52;
              *(v49 + 4) = sub_1C592ADA8(0xD000000000000013, v53 | 0x8000000000000000, &v60);
              _os_log_impl(&dword_1C5922000, v47, v48, "Unhandled case for %s: falling back to .center", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v50);
              MEMORY[0x1C69510F0](v50, -1, -1);
              MEMORY[0x1C69510F0](v49, -1, -1);
            }

            v43 = v55;
          }
        }
      }

      sub_1C5BC88A4();
      LOBYTE(v60) = 0;
      LOBYTE(v59) = 0;
      sub_1C5BC8724();
      (*v39)(v24, v43);
      v38 = v38 + v44 + *(v56 + 8 * v35);
      v40 += 2;
      ++v35;
      a6 = v41;
      a5 = v42;
    }

    while (v34 != v35);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C5BAB904@<X0>(uint64_t *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v31 = a3;
  v28 = a2;
  v4 = sub_1C5BC8444();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = sub_1C5BC8744();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *a1;
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  result = sub_1C5BCB414();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    if (v15 < result - 1)
    {
      sub_1C5BC88A4();
      sub_1C5BC8734();
      v18 = *(v9 + 8);
      v19 = v14;
      v20 = v26;
      v18(v19, v26);
      sub_1C5BC88A4();
      v21 = v27;
      sub_1C5BC8734();
      v18(v11, v20);
      sub_1C5BC8434();
      v17 = v22;
      v23 = v30;
      v24 = *(v29 + 8);
      v24(v21, v30);
      result = (v24)(v8, v23);
    }

    *v31 = v17;
  }

  return result;
}

void (*sub_1C5BABBF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

unint64_t sub_1C5BABC7C()
{
  result = qword_1EDA486A8;
  if (!qword_1EDA486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA486A8);
  }

  return result;
}

unint64_t sub_1C5BABCD0()
{
  sub_1C5BCBA94();

  v0 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v0);

  MEMORY[0x1C694F170](15913, 0xE200000000000000);
  return 0xD000000000000023;
}

uint64_t sub_1C5BABD7C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6E50);
  __swift_project_value_buffer(v0, qword_1EC1A6E50);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5BABE00(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v37 = a2;
  v39 = sub_1C5BC8744();
  v7 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC8894();
  sub_1C5BAC158();
  v11 = sub_1C5BCB3E4();
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v13 = v11;
  v44 = MEMORY[0x1E69E7CC0];
  sub_1C5B8F178(0, v11 & ~(v11 >> 63), 0);
  v12 = v44;
  v40 = v10;
  result = sub_1C5BCB3D4();
  if (v13 < 0)
  {
    goto LABEL_25;
  }

  v15 = (v7 + 16);
  v16 = a3;
  v17 = (v7 + 8);
  HIDWORD(v36) = v16 & 1;
  v38 = a1;
  while (1)
  {
    v18 = sub_1C5BCB484();
    v19 = v39;
    (*v15)(v9);
    v18(&v42, 0);
    if (a4 <= 0)
    {
      (*v17)(v9, v19);
      v32 = 0.0;
      v26 = 0;
      goto LABEL_17;
    }

    sub_1C5BC8B64();
    LOBYTE(v42) = v20 & 1;
    v41 = v21 & 1;
    sub_1C5BC8714();
    v23 = v22;
    LOBYTE(v42) = BYTE4(v36);
    v41 = 1;
    result = sub_1C5BC8714();
    v26 = v25;
    v27 = floor(v24 / v23);
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_22;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_23;
    }

    v28 = v24;
    v29 = v27;
    sub_1C5AD4C0C();
    sub_1C5BC8754();
    result = (*v17)(v9, v19);
    if ((v43 & 1) == 0 && v42 < v29)
    {
      v29 = v42;
    }

    if (a4 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = a4;
    }

    v31 = __OFSUB__(a4, v30);
    a4 -= v30;
    if (v31)
    {
      goto LABEL_24;
    }

    v32 = v28 / v27 * v30;
LABEL_17:
    v44 = v12;
    v34 = *(v12 + 16);
    v33 = *(v12 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1C5B8F178((v33 > 1), v34 + 1, 1);
      v12 = v44;
    }

    *(v12 + 16) = v34 + 1;
    v35 = v12 + 16 * v34;
    *(v35 + 32) = v26;
    *(v35 + 40) = v32;
    sub_1C5BCB434();
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1C5BAC158()
{
  result = qword_1EDA4E1A0;
  if (!qword_1EDA4E1A0)
  {
    sub_1C5BC8894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E1A0);
  }

  return result;
}

double static NowPlayingMiniPlayerAccessoryID.backwardsTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.27378071e175;
  *a1 = xmmword_1C5BF4000;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.routeButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.74151656e252;
  *a1 = xmmword_1C5BF4030;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.volumeControl.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.18974417e227;
  *a1 = xmmword_1C5BF4040;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingMiniPlayerAccessoryID.contextMenu.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.34735875e65;
  *a1 = xmmword_1C5BF4050;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static NowPlayingMiniPlayerAccessoryID.lookup(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
}

uint64_t static NowPlayingMiniPlayerAccessoryID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_1C595154C(v10[0], v2, v3);
  sub_1C595154C(v4, v5, v6);
  LOBYTE(v4) = sub_1C59515EC(v10, v8);
  sub_1C5950CE4();
  sub_1C5950CE4();
  return v4 & 1;
}

uint64_t NowPlayingMiniPlayerAccessoryID.hash(into:)()
{
  MEMORY[0x1C69501A0](*(v0 + 16));

  return sub_1C5BCAF04();
}

uint64_t NowPlayingMiniPlayerAccessoryID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

unint64_t sub_1C5BAC3E4()
{
  result = qword_1EC19A600[0];
  if (!qword_1EC19A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC19A600);
  }

  return result;
}

uint64_t static NowPlayingLookupID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingLookupID.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BAC54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 24) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + v8 + 8) & ~v8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1C5BAC6F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 24) - 8) + 64) - (((-9 - v9) | v9) + ((-9 - v9) | v9 | 7)) - 2;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 24) - 8) + 64) - (((-9 - v9) | v9) + ((-9 - v9) | v9 | 7)) != 2)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (&a1[(v9 | 7) + 8] & ~(v9 | 7));
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C5BAC968()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BCADA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5BACA04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v6 + v8) | v8) + ((v6 + v8) & ~v8) + v6) & ~v8) + ((v6 + v8) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1C5BACB64(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((((*(v5 + 64) + v8) | v8) + ((*(v5 + 64) + v8) & ~v8) + *(v5 + 64)) & ~v8) + ((*(v5 + 64) + v8) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
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
  v20 = *(v6 + 56);

  return v20();
}

uint64_t sub_1C5BACDC0()
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0x7320746F6E6E6143, 0xED000020656C6163);
  sub_1C5BCBDA4();
  MEMORY[0x1C694F170](0x206D6F726620, 0xE600000000000000);
  sub_1C5BCADA4();
  swift_getWitnessTable();
  sub_1C5BCBDB4();
  MEMORY[0x1C694F170](544175136, 0xE400000000000000);
  sub_1C5BCBDB4();
  MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFEDA0);
  return 0;
}

uint64_t sub_1C5BACF24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = a3;
  v58 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v52 - v11;
  v12 = sub_1C5BC7A24();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v23 = a4[1];
  v60 = *a4;
  v61 = v23;
  v63[0] = v60;
  v63[1] = v23;
  v24 = sub_1C5BB5B0C(a2, v62, v63);
  v52 = v17;
  v53 = v20;
  v54 = v4;
  v55 = v22;
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v59;
  v62 = v9;

  v26 = v58;
  v27 = sub_1C5BC7964();
  v28 = v57;
  sub_1C5BB0A98(v27, v29, v57);

  v30 = type metadata accessor for MotionCacheEntry();
  if ((*(*(v30 - 8) + 48))(v28, 1, v30) == 1)
  {

    return sub_1C5924EF4(v28, &qword_1EC19A6E8);
  }

  else
  {
    v32 = v25;
    v33 = *(v25 + 16);
    v34 = v53;
    v35 = v12;
    v33(v53, v28, v12);
    sub_1C5BB7BB8(v28, type metadata accessor for MotionCacheEntry);
    v36 = v55;
    v53 = *(v32 + 32);
    v53(v55, v34, v35);
    v37 = v54;
    swift_beginAccess();
    v57 = *(v37 + 48);
    if (v57)
    {
      v38 = sub_1C5BCB214();
      (*(*(v38 - 8) + 56))(v62, 1, 1, v38);
      v39 = v32;
      v40 = v52;
      v33(v52, v36, v35);
      v33(v56, v26, v35);
      v41 = *(v39 + 80);
      v42 = (v41 + 40) & ~v41;
      v43 = (v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v41 + v58 + 8) & ~v41;
      v45 = swift_allocObject();
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 4) = v57;
      v46 = v40;
      v47 = v53;
      v53(&v45[v42], v46, v35);
      v48 = &v45[v43];
      v49 = v36;
      v50 = v61;
      *v48 = v60;
      v48[1] = v50;
      *&v45[v58] = v24;
      v47(&v45[v44], v56, v35);

      swift_retain_n();

      v51 = v62;
      sub_1C5A0BB28(0, 0, v62, &unk_1C5BF4AC8, v45);

      sub_1C5924EF4(v51, &qword_1EC1930A0);
      return (*(v59 + 8))(v49, v35);
    }

    else
    {
      (*(v32 + 8))(v36, v35);
    }
  }
}

uint64_t sub_1C5BAD518()
{
  *(v1 + 72) = v0;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC19A688;
  *(v1 + 80) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BAD5B4, v2, 0);
}

uint64_t sub_1C5BAD5B4()
{
  v1 = v0[9];
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    type metadata accessor for MotionCacheDiskStorage();
    swift_allocObject();
    *(v1 + 48) = sub_1C5B8079C();

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1C5BAD89C;

    return sub_1C5BB1208();
  }
}

uint64_t sub_1C5BAD89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  *(v7 + 128) = a4;
  *(v7 + 112) = a3;
  *(v7 + 120) = v4;

  v8 = *(v6 + 80);
  if (v4)
  {
    v9 = sub_1C5BADF58;
  }

  else
  {
    v9 = sub_1C5BAD9D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1C5BAD9D8()
{
  v56 = v0;
  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    *(v3 + 16) = *(v0 + 96);
    *(v3 + 32) = v2;
    *(v3 + 40) = v1 & 1;
    sub_1C5BB78E0(v4, v5, v6, v7);
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 infoDictionary];

  if (v9)
  {
    v10 = sub_1C5BCACB4();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 120);
  v12 = sub_1C5A07F2C(v10);
  if (v11)
  {
    if (qword_1EC1909E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

  v16 = v15;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_1C5BB157C(v12, v13, v14, v15 & 1);
  v36 = *(v0 + 72);
  v37 = *(v36 + 16);
  if (*(v36 + 40) == 1)
  {
    v38 = 0;
    v39 = *(v36 + 24);
    v11 = *(v36 + 32);
    v40 = -1 << *(v37 + 32);
    if (-v40 < 64)
    {
      v41 = ~(-1 << -v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v37 + 64);
    v43 = (63 - v40) >> 6;
    while (v42)
    {
      v44 = v38;
LABEL_27:
      v45 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      if (*(*(*(v37 + 56) + ((v44 << 9) | (8 * v45))) + 48) >= 1)
      {
        sub_1C5A680AC(*(v36 + 16), v39, *(v36 + 32), 1);

        v36 = *(v0 + 72);
        goto LABEL_30;
      }
    }

    while (1)
    {
      v44 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v44 >= v43)
      {
        sub_1C5A680AC(*(v36 + 16), v39, *(v36 + 32), 1);

        goto LABEL_33;
      }

      v42 = *(v37 + 64 + 8 * v44);
      ++v38;
      if (v42)
      {
        v38 = v44;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
LABEL_9:
    v20 = sub_1C5BC7D64();
    __swift_project_value_buffer(v20, qword_1EC19A698);
    v21 = v11;
    v22 = sub_1C5BC7D44();
    v23 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      v26 = sub_1C5BCBEE4();
      v28 = sub_1C592ADA8(v26, v27, &v55);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1C5922000, v22, v23, "Error while initializing cache. Further calls to MotionCache will be ignored. %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1C69510F0](v25, -1, -1);
      MEMORY[0x1C69510F0](v24, -1, -1);
    }

    else
    {
    }

LABEL_12:
    v29 = *(v0 + 72);
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = *(v29 + 32);
    v33 = *(v29 + 40);
    sub_1C5A680AC(v30, v31, v32, v33);
    sub_1C5BB8B40(v30, v31, v32, v33, 0xD00000000000001ALL, 0x80000001C5BFF280);
    sub_1C5BB78E0(v30, v31, v32, v33);
    sub_1C5BB343C();
    goto LABEL_13;
  }

  if (*(v37 + 48) > 0)
  {
LABEL_30:
    _s7ManagerCMa();
    v46 = swift_allocObject();
    v46[3] = 0;
    swift_unknownObjectWeakInit();
    v47 = [objc_allocWithZone(_s10DownloaderCMa()) init];
    sub_1C5BB78E0(v17, v18, v19, v16 & 1);
    v48 = MEMORY[0x1E69E7CC8];
    v46[4] = v47;
    v46[5] = v48;
    v49 = MEMORY[0x1E69E7CD0];
    v46[6] = v48;
    v46[7] = v49;
    *(v36 + 56) = v46;

    v50 = *(v36 + 56);
    if (v50)
    {
      *(v50 + 24) = &off_1F452C7E8;
      swift_unknownObjectWeakAssign();
    }

    goto LABEL_12;
  }

LABEL_33:
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v51 = sub_1C5BC7D64();
  __swift_project_value_buffer(v51, qword_1EC19A698);
  v52 = sub_1C5BC7D44();
  v53 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1C5922000, v52, v53, "Motion cache is disabled.", v54, 2u);
    MEMORY[0x1C69510F0](v54, -1, -1);
  }

  sub_1C5BB78E0(v17, v18, v19, v16 & 1);

LABEL_13:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1C5BADF58()
{
  v19 = v0;
  v1 = v0[15];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EC19A698);
  v3 = v1;
  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_1C5BCBEE4();
    v10 = sub_1C592ADA8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C5922000, v4, v5, "Error while initializing cache. Further calls to MotionCache will be ignored. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69510F0](v7, -1, -1);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[9];
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  sub_1C5A680AC(v12, v13, v14, v15);
  sub_1C5BB8B40(v12, v13, v14, v15, 0xD00000000000001ALL, 0x80000001C5BFF280);
  sub_1C5BB78E0(v12, v13, v14, v15);
  sub_1C5BB343C();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1C5BAE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v11 + 520) = v10;
  *(v11 + 504) = a7;
  *(v11 + 512) = a8;
  *(v11 + 49) = a6;
  *(v11 + 488) = a4;
  *(v11 + 496) = a5;
  *(v11 + 472) = a9;
  *(v11 + 480) = a10;
  *(v11 + 456) = a2;
  *(v11 + 464) = a3;
  *(v11 + 448) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  *(v11 + 528) = swift_task_alloc();
  *(v11 + 536) = swift_task_alloc();
  *(v11 + 544) = type metadata accessor for MotionAssetDownload.Request(0);
  *(v11 + 552) = swift_task_alloc();
  v12 = sub_1C5BC7A24();
  *(v11 + 560) = v12;
  *(v11 + 568) = *(v12 - 8);
  *(v11 + 576) = swift_task_alloc();
  *(v11 + 584) = swift_task_alloc();
  *(v11 + 592) = swift_task_alloc();
  *(v11 + 600) = swift_task_alloc();
  *(v11 + 608) = swift_task_alloc();
  *(v11 + 616) = swift_task_alloc();
  *(v11 + 624) = swift_task_alloc();
  *(v11 + 632) = swift_task_alloc();
  *(v11 + 640) = *v16;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC19A688;
  *(v11 + 656) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BAE364, v13, 0);
}

uint64_t sub_1C5BAE364()
{
  v102 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v0 + 664) = v2;
  if (!v2 || (v3 = *(*(v0 + 520) + 56), (*(v0 + 672) = v3) == 0))
  {
    if (qword_1EC1909E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EC19A698);
    v11 = sub_1C5BC7D44();
    v12 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5922000, v11, v12, "Asset requested after setup failure. Ignoring.", v13, 2u);
      MEMORY[0x1C69510F0](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 448);
  v101[0] = *(v0 + 640);

  v9 = sub_1C5BB5160(v8, v5, v4, v101, v7, v6);
  if (v9)
  {
    v16 = *(v0 + 504);
    v98 = v9;
    if (v16)
    {
      v17 = v9;
      v18 = *(v0 + 632);
      v19 = *(v0 + 568);
      v20 = *(v0 + 560);
      v21 = *(v0 + 512);

      v22 = [v17 URL];
      sub_1C5BC79E4();

      sub_1C5B81A40(v18, v16, v21);
      sub_1C59261FC(v16);

      (*(v19 + 8))(v18, v20);
    }

    else
    {
    }

LABEL_10:

    v14 = *(v0 + 8);

    return v14(v98);
  }

  v23 = *(v0 + 520);
  v24 = *(v0 + 496);
  v25 = *(v23 + 16);
  v26 = *(v23 + 24);
  v27 = *(v23 + 32);
  v28 = *(v23 + 40);
  if (v28 == 1)
  {
    v97 = 1;
    if (v24)
    {
      v29 = *(v0 + 488);
      v30 = *(v0 + 496);
    }

    else
    {

      v29 = v26;
      v30 = v27;
    }

    v40 = *(v0 + 608);
    sub_1C5A680AC(v25, v26, v27, 1);

    sub_1C5B80F68(v29, v30, v40);
    v53 = *(v0 + 616);
    v54 = *(v0 + 608);
    v55 = *(v0 + 568);
    v56 = *(v0 + 560);

    (*(v55 + 32))(v53, v54, v56);
  }

  else
  {
    if (v24)
    {
      v37 = *(v0 + 488);
      sub_1C5BB7C6C();
      v38 = swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v24;
      *(v39 + 16) = 0;
      swift_willThrow();

      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 648);
      v42 = *(v0 + 640);
      v43 = sub_1C5BC7D64();
      __swift_project_value_buffer(v43, qword_1EC19A698);
      swift_getErrorValue();
      v44 = sub_1C5BCBEE4();
      v46 = v45;
      v47 = sub_1C5BCB4D4();
      *&v101[0] = v42;
      *(&v101[0] + 1) = v41;
      sub_1C5ACCC10(v47, v44, v46, v101);

      goto LABEL_9;
    }

    v97 = v28;
    v48 = qword_1EC190978;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 616);
    v50 = *(v0 + 568);
    v51 = *(v0 + 560);
    v52 = __swift_project_value_buffer(v51, qword_1EC1996F0);
    (*(v50 + 16))(v49, v52, v51);
  }

  *(v0 + 680) = 0;
  v57 = *(v0 + 600);
  v58 = *(v0 + 568);
  v59 = *(v0 + 560);
  v60 = *(v0 + 472);
  sub_1C5BC79A4();
  v61 = sub_1C5BC7984();
  v95 = v62;
  v96 = v61;
  v63 = *(v58 + 8);
  *(v0 + 688) = v63;
  *(v0 + 696) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v63(v57, v59);
  *&v101[0] = 45;
  *(&v101[0] + 1) = 0xE100000000000000;
  if ((v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  v64 = *(v0 + 472);
  if (v64 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v94 = v63;
  if (v64 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v65 = *(v0 + 480);
  *(v0 + 360) = v64;
  v66 = sub_1C5BCBD64();
  v57 = v67;
  v63 = v101;
  MEMORY[0x1C694F170](v66);

  MEMORY[0x1C694F170](120, 0xE100000000000000);
  if ((v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v68 = *(v0 + 480);
  if (v68 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v92 = v27;
  v93 = v26;
  if (v68 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    swift_once();
    v99 = *(v0 + 648);
    v31 = *(v0 + 640);
    v32 = sub_1C5BC7D64();
    __swift_project_value_buffer(v32, qword_1EC19A698);
    v33 = sub_1C5BB59A8(v63, v57, v60);
    v35 = v34;
    sub_1C5BB7BA0(v63, v57, v60);
    v36 = sub_1C5BCB4D4();
    *&v101[0] = v31;
    *(&v101[0] + 1) = v99;
    sub_1C5ACCC10(v36, v33, v35, v101);

LABEL_9:
    v98 = 1;
    goto LABEL_10;
  }

  v90 = *(v0 + 640);
  v91 = *(v0 + 648);
  v69 = *(v0 + 632);
  v70 = *(v0 + 624);
  v71 = *(v0 + 616);
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);
  v100 = *(v0 + 552);
  v85 = *(v0 + 600);
  v86 = *(v0 + 544);
  v89 = *(v0 + 49);
  v74 = *(v0 + 472);
  v87 = *(v0 + 464);
  v88 = *(v0 + 456);
  v84 = *(v0 + 448);
  *(v0 + 368) = v68;
  v75 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v75);

  v76 = *(&v101[0] + 1);
  *(v0 + 280) = *&v101[0];
  *(v0 + 288) = v76;
  *(v0 + 296) = v96;
  *(v0 + 304) = v95;
  *&v101[0] = sub_1C5BCAFC4();
  *(&v101[0] + 1) = v77;
  sub_1C5BCAF24();

  sub_1C5BC79B4();

  sub_1C5BC79C4();
  v94(v69, v73);
  v94(v71, v73);
  sub_1C5BB78E0(v25, v93, v92, v97);
  v78 = *(v72 + 16);
  *(v0 + 704) = v78;
  *(v0 + 712) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v78(v69, v84, v73);
  v78(v85, v70, v73);
  v79 = v100 + *(v86 + 20);
  v78(v79, v69, v73);
  v80 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v78(&v79[*(v80 + 20)], v85, v73);

  v94(v85, v73);
  v94(v69, v73);
  v81 = &v79[*(v80 + 24)];
  *v81 = floor(v74);
  v81[1] = floor(v68);
  *v100 = v88;
  v100[1] = v87;
  *(v0 + 312) = v90;
  *(v0 + 320) = v91;
  v82 = swift_task_alloc();
  *(v0 + 720) = v82;
  *v82 = v0;
  v82[1] = sub_1C5BAEFC8;
  v83 = *(v0 + 552);

  return sub_1C5B7048C(v83, (v89 - 1) < 3, (v0 + 312));
}

uint64_t sub_1C5BAEFC8(uint64_t a1)
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 552);
  *(*v1 + 728) = a1;

  sub_1C5BB7BB8(v3, type metadata accessor for MotionAssetDownload.Request);

  return MEMORY[0x1EEE6DFA0](sub_1C5BAF110, v2, 0);
}

uint64_t sub_1C5BAF110()
{
  v92 = v0;
  v1 = *(v0 + 728);
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = *(v0 + 688);
      v7 = *(v0 + 624);
      v8 = *(v0 + 560);

      v6(v7, v8);
      v5 = 1;
      goto LABEL_31;
    }

    if (v1 != 2)
    {
      v9 = *(v0 + 680);
      v11 = *(v0 + 488);
      v10 = *(v0 + 496);
      v13 = *(v0 + 472);
      v12 = *(v0 + 480);
      v14 = *(v0 + 448);
      *v91 = *(v0 + 640);
      v15 = v1;
      v16 = sub_1C5BB5160(v14, v11, v10, v91, v13, v12);
      v88 = v0;
      if (v9)
      {
        v89 = v15;
        *(v0 + 384) = v9;
        v17 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
        if (swift_dynamicCast())
        {

          v18 = *(v0 + 88) ^ 1;
LABEL_19:
          v35 = *(v0 + 648);
          v36 = *(v0 + 640);
          v38 = *(v0 + 488);
          v37 = *(v0 + 496);
          v39 = sub_1C5BC7964();
          v41 = v40;
          v91[0] = v36;
          v91[1] = v35;
          sub_1C5BB5B0C(v38, v37, v91);
          v42 = v0;
          if (v18)
          {
            v43 = *(v0 + 536);
            sub_1C5BB0790(v39, v41, v43);
            v44 = type metadata accessor for MotionCacheEntry();
            if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
            {
              sub_1C5924EF4(*(v0 + 536), &qword_1EC19A6E8);
            }

            else
            {
              v51 = *(v0 + 688);
              v52 = *(v0 + 592);
              v53 = *(v0 + 584);
              v54 = *(v0 + 568);
              v55 = *(v88 + 560);
              v56 = *(v88 + 536);
              (*(v88 + 704))(v53, v56, v55);
              v57 = v56;
              v42 = v88;
              sub_1C5BB7BB8(v57, type metadata accessor for MotionCacheEntry);
              (*(v54 + 32))(v52, v53, v55);
              sub_1C5B81170(v52, 1);
              v51(v52, v55);
            }
          }

          v58 = *(v42 + 576);
          v59 = [v89 URL];
          sub_1C5BC79E4();

          sub_1C5B81858(v58);
          v60 = *(v42 + 528);
          v61 = *(v42 + 520);
          v63 = *(v42 + 472);
          v62 = *(v42 + 480);
          (*(v42 + 688))(*(v42 + 576), *(v42 + 560));
          v64 = [v89 URL];
          sub_1C5BC79E4();

          v65 = type metadata accessor for MotionCacheEntry();
          v66 = (v60 + *(v65 + 20));
          *v66 = v63;
          v66[1] = v62;
          (*(*(v65 - 8) + 56))(v60, 0, 1, v65);
          sub_1C5BB03AC(v60, v39, v41);

          sub_1C5924EF4(v60, &qword_1EC19A6E8);
          v67 = v42;
          v69 = *(v61 + 16);
          v68 = *(v61 + 24);
          v70 = *(v61 + 32);
          v71 = *(v61 + 40);
          sub_1C5BC7754();
          swift_allocObject();
          if (v71)
          {

            sub_1C5BC7744();
            v67[23] = v69;
            v67[24] = v68;
            v67[25] = v70;
            sub_1C5BB7C18();
          }

          else
          {

            sub_1C5BC7744();
            v67[55] = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
            sub_1C5BB9808(&qword_1EC19A6F8);
          }

          v72 = sub_1C5BC7734();
          v74 = v73;

          v0 = v88;
          sub_1C5BC7A44();
          sub_1C5A5BB4C(v72, v74);
          v77 = *(v88 + 504);
          sub_1C5BB78E0(v69, v68, v70, v71);
          sub_1C5BB343C();
          if (v77)
          {
            v78 = *(v88 + 688);
            v79 = *(v88 + 632);
            v85 = *(v88 + 728);
            v86 = *(v88 + 624);
            v80 = *(v88 + 560);
            v82 = *(v88 + 504);
            v81 = *(v88 + 512);

            v83 = [v89 URL];
            sub_1C5BC79E4();

            sub_1C5B81A40(v79, v82, v81);

            sub_1C59261FC(v82);

            sub_1C59F831C(v85);
            v78(v79, v80);
            v78(v86, v80);
          }

          else
          {
            v84 = *(v88 + 728);
            (*(v88 + 688))(*(v88 + 624), *(v88 + 560));

            sub_1C59F831C(v84);
          }

          goto LABEL_5;
        }

LABEL_18:
        v18 = 0;
        goto LABEL_19;
      }

      if (!v16)
      {
        v89 = v15;
        goto LABEL_18;
      }

      v19 = *(v0 + 688);
      v20 = *(v0 + 632);
      v21 = *(v0 + 560);
      v90 = v16;
      v22 = [v16 URL];
      sub_1C5BC79E4();

      sub_1C5BB89C8(&qword_1EC196A48, 255, MEMORY[0x1E6968FB0]);
      v23 = sub_1C5BCADB4();
      v19(v20, v21);
      if (v23)
      {
        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 648);
        v25 = *(v0 + 640);
        v26 = sub_1C5BC7D64();
        __swift_project_value_buffer(v26, qword_1EC19A698);
        v27 = sub_1C5BCB4F4();
        v91[0] = v25;
        v91[1] = v24;
        sub_1C5ACCC10(v27, 0xD000000000000028, 0x80000001C5BFF010, v91);
        v28 = *(v0 + 504);
        if (v28)
        {
LABEL_15:
          v29 = *(v0 + 728);
          v30 = *(v0 + 688);
          v31 = *(v0 + 632);
          v87 = *(v0 + 624);
          v32 = *(v0 + 560);
          v33 = *(v0 + 512);

          v34 = [v90 &selRef_maxArgumentBufferSamplerCount];
          sub_1C5BC79E4();

          sub_1C5B81A40(v31, v28, v33);

          sub_1C59261FC(v28);
          sub_1C59F831C(v29);

          sub_1C59F831C(v29);
          v30(v31, v32);
          v30(v87, v32);
          goto LABEL_32;
        }
      }

      else
      {
        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v45 = *(v0 + 648);
        v46 = *(v0 + 640);
        v47 = *(v0 + 624);
        v48 = sub_1C5BC7D64();
        __swift_project_value_buffer(v48, qword_1EC19A698);
        v49 = sub_1C5BCB4F4();
        v91[0] = v46;
        v91[1] = v45;
        sub_1C5ACCC10(v49, 0xD000000000000044, 0x80000001C5BFEFC0, v91);
        sub_1C5B81170(v47, 6);
        v28 = *(v0 + 504);
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v50 = *(v0 + 728);
      (*(v0 + 688))(*(v0 + 624), *(v0 + 560));

      sub_1C59F831C(v50);

      sub_1C59F831C(v50);
      goto LABEL_32;
    }
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 624);
  v4 = *(v0 + 560);
  sub_1C5B81170(v3, 3);

  v2(v3, v4);
LABEL_5:
  v5 = *(v0 + 728);
LABEL_31:
  v90 = v5;
LABEL_32:

  v75 = *(v0 + 8);

  return v75(v90);
}

id sub_1C5BB00D8()
{
  v1 = v0;
  v2 = type metadata accessor for MotionCacheEntry();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  [v6 lock];
  swift_beginAccess();
  v7 = MEMORY[0x1E69E7CC0];
  if (v0[6] < *(v0[2] + 16))
  {
    do
    {
      v8 = v1[3];

      if (!v8)
      {
        break;
      }

      sub_1C5BB08C0(v8);
      swift_beginAccess();
      v9 = sub_1C596FBD8(v8[2], v8[3]);
      if (v10)
      {
        v11 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v1[2];
        v19 = v13;
        v1[2] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C5AF5554();
          v13 = v19;
        }

        sub_1C5AF3EDC(v11, v13);
        v1[2] = v13;
      }

      swift_endAccess();
      v14 = *(*v8 + 112);
      swift_beginAccess();
      sub_1C5BB7B3C(v8 + v14, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C5B76A54(0, v7[2] + 1, 1, v7);
      }

      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v7 = sub_1C5B76A54(v15 > 1, v16 + 1, 1, v7);
      }

      v7[2] = v16 + 1;
      sub_1C5BB8960(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, type metadata accessor for MotionCacheEntry);
    }

    while (v1[6] < *(v1[2] + 16));
  }

  if (v7[2])
  {
    v17 = v1[7];
    if (v17)
    {

      v17(v7);
      sub_1C59261FC(v17);
    }
  }

  return [v6 unlock];
}

uint64_t sub_1C5BB03AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = type metadata accessor for MotionCacheEntry();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  sub_1C5BB888C(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C5924EF4(v13, &qword_1EC19A6E8);
    sub_1C5BB0790(a2, a3, v11);
    return sub_1C5924EF4(v11, &qword_1EC19A6E8);
  }

  else
  {
    sub_1C5BB8960(v13, v20, type metadata accessor for MotionCacheEntry);
    v22 = *(v4 + 40);
    [v22 lock];
    swift_beginAccess();
    v23 = *(v4 + 16);
    if (*(v23 + 16) && (v24 = sub_1C596FBD8(a2, a3), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      v27 = *(*v26 + 112);
      swift_beginAccess();

      sub_1C5BB88FC(v20, v26 + v27);
      swift_endAccess();
      sub_1C5BB08C0(v26);
    }

    else
    {
      swift_endAccess();
      sub_1C5BB7B3C(v20, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A710);
      v26 = swift_allocObject();
      *(v26 + *(*v26 + 120)) = 0;
      *(v26 + *(*v26 + 128)) = 0;
      v26[2] = a2;
      v26[3] = a3;
      sub_1C5BB8960(v18, v26 + *(*v26 + 112), type metadata accessor for MotionCacheEntry);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_1C5B3C770(v26, a2, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v29;
      swift_endAccess();
    }

    sub_1C5BB0A18(v26);

    [v22 unlock];
    sub_1C5BB00D8();
    return sub_1C5BB7BB8(v20, type metadata accessor for MotionCacheEntry);
  }
}

id sub_1C5BB0790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 40);
  [v7 lock];
  swift_beginAccess();
  v8 = sub_1C5BB7D60(a1, a2);
  swift_endAccess();
  if (v8)
  {
    sub_1C5BB08C0(v8);
    v9 = *(*v8 + 112);
    swift_beginAccess();
    sub_1C5BB7B3C(v8 + v9, a3);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for MotionCacheEntry();
  (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
  return [v7 unlock];
}

uint64_t sub_1C5BB08C0(uint64_t *a1)
{
  v3 = *(v1 + 24);

  if (v3)
  {

    if (v3 == a1)
    {
      *(v1 + 24) = *(a1 + *(*a1 + 128));
    }
  }

  v4 = *(v1 + 32);

  if (v4)
  {

    if (v4 == a1)
    {
      *(v1 + 32) = *(a1 + *(*a1 + 120));
    }
  }

  v5 = *a1;
  v6 = *(*a1 + 128);

  if (v7)
  {
    *(v7 + *(*v7 + 120)) = *(a1 + *(v5 + 120));
  }

  if (result)
  {
    *(result + *(*result + 128)) = *(a1 + v6);
  }

  *(a1 + v6) = 0;
  return result;
}

uint64_t sub_1C5BB0A18(uint64_t a1)
{
  if ()
  {
  }

  else
  {
    *(v1 + 24) = a1;
  }

  *(a1 + *(*a1 + 120)) = *(v1 + 32);

  if (result)
  {
    *(result + *(*result + 128)) = a1;
  }

  *(v1 + 32) = a1;
  return result;
}

id sub_1C5BB0A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 40);
  [v7 lock];
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1C596FBD8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();

    sub_1C5BB08C0(v12);
    sub_1C5BB0A18(v11);
    v13 = *(*v11 + 112);
    swift_beginAccess();
    sub_1C5BB7B3C(v11 + v13, a3);

    v14 = 0;
  }

  else
  {
    swift_endAccess();
    v14 = 1;
  }

  v15 = type metadata accessor for MotionCacheEntry();
  (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
  return [v7 unlock];
}

uint64_t sub_1C5BB0BE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A750);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB9460();
  sub_1C5BCBFB4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A760);
  sub_1C5BB94B4();
  sub_1C5BCBD24();
  if (!v4)
  {
    v13 = 1;
    sub_1C5BCBD04();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C5BB0DA4()
{
  if (*v0)
  {
    return 0x42746C7561666564;
  }

  else
  {
    return 1952672100;
  }
}

uint64_t sub_1C5BB0DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952672100 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C5BCBDE4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x42746C7561666564 && a2 == 0xEF444974656B6375)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C5BCBDE4();

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

uint64_t sub_1C5BB0EC8(uint64_t a1)
{
  v2 = sub_1C5BB9460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5BB0F04(uint64_t a1)
{
  v2 = sub_1C5BB9460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5BB0F40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5BB955C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C5BB0F90()
{
  type metadata accessor for MotionCacheActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC19A688 = v0;
  return result;
}

uint64_t MotionCacheActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C5BB104C()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C5BB10A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MotionCacheActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

id sub_1C5BB10E0()
{
  type metadata accessor for MotionCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
  v1 = swift_allocObject();
  v2 = sub_1C59ADBD0(MEMORY[0x1E69E7CC0]);
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v2;
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[7] = 0;
  v1[8] = 0;
  v1[5] = result;
  v1[6] = 20;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  qword_1EC19A690 = v0;
  return result;
}

uint64_t sub_1C5BB11A8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C5BB1208()
{
  *(v1 + 40) = v0;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB12A0, v2, 0);
}

uint64_t sub_1C5BB12A0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (*(v1 + 48))
  {

    v2 = sub_1C5B81CCC();
    if (v5 == -1)
    {
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v20 = sub_1C5BC7D64();
      __swift_project_value_buffer(v20, qword_1EC19A698);
      v21 = sub_1C5BC7D44();
      v22 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1C5922000, v21, v22, "Did not retrieve cache indices from disk.", v23, 2u);
        MEMORY[0x1C69510F0](v23, -1, -1);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 255;
    }

    else
    {
      v8 = v5;
      v9 = v4;
      v10 = v3;
      v11 = v2;
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EC19A698);
      v13 = sub_1C5BC7D44();
      v14 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C5922000, v13, v14, "Retrieved cache indices from disk.", v15, 2u);
        MEMORY[0x1C69510F0](v15, -1, -1);
      }

      v16 = v8 & 1;
      v17 = v11;
      v18 = v10;
      v19 = v9;
    }

    v24 = *(v0 + 8);

    return v24(v17, v18, v19, v16);
  }

  else
  {
    sub_1C5BB7F64();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

void sub_1C5BB157C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v295) = a4;
  v288 = sub_1C5BC77C4();
  v279 = *(v288 - 8);
  v9 = MEMORY[0x1EEE9AC00](v288);
  v287 = &v274 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v286 = &v274 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v285 = &v274 - v13;
  v301 = sub_1C5BC7A24();
  v297 = *(v301 - 8);
  v14 = MEMORY[0x1EEE9AC00](v301);
  v283 = (&v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v284 = (&v274 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v280 = &v274 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v281 = (&v274 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v274 - v22;
  v24 = type metadata accessor for MotionCacheEntry();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v296 = (&v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v274 - v28;
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v282 = v23;
  v292 = a2;
  v293 = a3;
  v30 = sub_1C5BC7D64();
  v290 = __swift_project_value_buffer(v30, qword_1EC19A698);
  v31 = sub_1C5BC7D44();
  v32 = sub_1C5BCB4C4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C5922000, v31, v32, "Running MotionCache.configureCacheIndices.", v33, 2u);
    MEMORY[0x1C69510F0](v33, -1, -1);
  }

  sub_1C5BB35F0();
  v34 = *(v5 + 16);
  v35 = *(v5 + 24);
  v36 = *(v5 + 32);
  v37 = *(v5 + 40);
  sub_1C5A680AC(v34, v35, v36, v37);
  sub_1C5BB8B40(v34, v35, v36, v37, 0xD000000000000010, 0x80000001C5BFF2A0);
  sub_1C5BB78E0(v34, v35, v36, v37);
  v294 = a1;
  v39 = v292;
  v38 = v293;
  sub_1C5BB8B40(a1, v292, v293, v295 & 1, 0x69646E692077654ELL, 0xEB00000000736563);
  swift_beginAccess();
  v40 = *(v5 + 48);
  if (!v40)
  {
    sub_1C5BB7F64();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v41 = *(v5 + 16);
  v42 = *(v5 + 24);
  v43 = *(v5 + 32);
  if ((*(v5 + 40) & 1) == 0)
  {
    v289 = *(v5 + 16);
    if ((v295 & 1) == 0)
    {

      v68 = v42;
      sub_1C5A680AC(v41, v42, v43, 0);
      sub_1C5A680AC(v294, v39, v38, 0);
      v69 = sub_1C5BC7D44();
      v70 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = v43;
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1C5922000, v69, v70, "configureCacheIndices: Maintained default cacheIndex.", v72, 2u);
        v73 = v72;
        v43 = v71;
        MEMORY[0x1C69510F0](v73, -1, -1);
      }

      v74 = v289;
      v75 = *(v289 + 48);
      v76 = *(v294 + 48);
      v77 = v68;
      if (v75 != v76)
      {
        v78 = v76 & ~(v76 >> 63);
        *(v289 + 48) = v78;
        if (v78 < v75)
        {
          sub_1C5BB00D8();
          v77 = v68;
        }

        sub_1C5A680AC(v74, v77, v43, 0);
        v79 = v77;
        v80 = sub_1C5BC7D44();
        v81 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v278 = v43;
          v83 = v82;
          *v82 = 134217984;
          *(v82 + 4) = *(v74 + 48);
          sub_1C5BB78E0(v74, v79, v278, 0);
          _os_log_impl(&dword_1C5922000, v80, v81, "configureCacheIndices: Updated default cacheIndex size to %ld.", v83, 0xCu);
          v84 = v83;
          v43 = v278;
          MEMORY[0x1C69510F0](v84, -1, -1);
        }

        else
        {
          sub_1C5BB78E0(v74, v79, v43, 0);
        }

        v77 = v79;

        v74 = v289;
      }

      v143 = v291;
      sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
      v60 = v143;
      if (!v143)
      {
        sub_1C5BB78E0(v294, v39, v38, 0);
        sub_1C5BB78E0(v74, v77, v43, 0);
        goto LABEL_156;
      }

      sub_1C5BB78E0(v294, v39, v38, 0);
      v118 = v74;
      v119 = v77;
      v120 = v43;
      goto LABEL_83;
    }

    v284 = v42;
    v278 = v43;
    sub_1C5A680AC(v41, v42, v43, 0);
    sub_1C5A680AC(v294, v39, v38, 1);
    v46 = sub_1C5BC7D44();
    v47 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1C5922000, v46, v47, "configureCacheIndices: Changed from default cacheIndex to client-defined indices.", v48, 2u);
      MEMORY[0x1C69510F0](v48, -1, -1);
    }

    [*(v41 + 40) lock];
    v49 = *(v41 + 24);

    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v51 = MEMORY[0x1E69E7CC0];
      do
      {
        v52 = *(*v49 + 112);
        swift_beginAccess();
        sub_1C5BB7B3C(v49 + v52, v29);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1C5B76A54(0, v51[2] + 1, 1, v51);
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_1C5B76A54(v53 > 1, v54 + 1, 1, v51);
        }

        v51[2] = v54 + 1;
        sub_1C5BB8960(v29, v51 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v54, type metadata accessor for MotionCacheEntry);
        v55 = *(v49 + *(*v49 + 128));

        v49 = v55;
      }

      while (v55);
    }

    else
    {
      v51 = MEMORY[0x1E69E7CC0];
    }

    [*(v289 + 40) unlock];
    v96 = v51[2];
    v277 = v5;
    if (v96)
    {
      v276 = v40;
      v298 = v50;
      sub_1C5B8F0A8(0, v96, 0);
      v97 = v298;
      v98 = *(v25 + 80);
      v290 = v51;
      v99 = v51 + ((v98 + 32) & ~v98);
      v295 = *(v25 + 72);
      v100 = (v297 + 32);
      v101 = v301;
      v102 = v281;
      do
      {
        v103 = v296;
        sub_1C5BB7B3C(v99, v296);
        v104 = *v100;
        (*v100)(v102, v103, v101);
        v298 = v97;
        v106 = *(v97 + 16);
        v105 = *(v97 + 24);
        if (v106 >= v105 >> 1)
        {
          sub_1C5B8F0A8(v105 > 1, v106 + 1, 1);
          v101 = v301;
          v97 = v298;
        }

        *(v97 + 16) = v106 + 1;
        v104(v97 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v106, v102, v101);
        v99 += v295;
        --v96;
      }

      while (v96);

      v40 = v276;
      v5 = v277;
      v107 = *(v97 + 16);
      if (v107)
      {
        goto LABEL_48;
      }
    }

    else
    {

      v97 = MEMORY[0x1E69E7CC0];
      v101 = v301;
      v107 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v107)
      {
LABEL_48:
        v296 = *(v297 + 16);
        v108 = v97 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
        v109 = *(v297 + 72);
        v110 = (v297 + 8);
        v111 = v40;
        v112 = v282;
        do
        {
          (v296)(v112, v108, v101);
          sub_1C5B81170(v112, 4);
          v101 = v301;
          (*v110)(v112, v301);
          v108 += v109;
          --v107;
        }

        while (v107);

        v5 = v277;
        v40 = v111;
        goto LABEL_53;
      }
    }

LABEL_53:
    v113 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder;
    v114 = v291;
    sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
    v115 = v293;
    v116 = v289;
    v117 = v278;
    if (!v114)
    {
      sub_1C5B831E4(v40 + v113);
      v290 = v113;
      v296 = 0;

      v145 = 0;
      v147 = v294 + 64;
      v146 = *(v294 + 64);
      v148 = 1 << *(v294 + 32);
      v149 = -1;
      if (v148 < 64)
      {
        v149 = ~(-1 << v148);
      }

      v150 = v149 & v146;
      v151 = (v148 + 63) >> 6;
      v291 = (v279 + 8);
      v283 = (v297 + 8);
      v282 = (v294 + 64);
      v281 = v151;
      v276 = v40;
      if ((v149 & v146) == 0)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v152 = v145;
LABEL_92:
        v153 = (*(v294 + 48) + ((v152 << 10) | (16 * __clz(__rbit64(v150)))));
        v154 = *v153;
        v297 = v153[1];

        v155 = v286;
        sub_1C5BC7774();
        v156 = v287;
        sub_1C5BC7764();
        v157 = v285;
        sub_1C5BC7794();
        v158 = *v291;
        v159 = v288;
        (*v291)(v156, v288);
        v160 = (v158)(v155, v159);
        v295 = &v274;
        MEMORY[0x1EEE9AC00](v160);
        *(&v274 - 2) = v157;
        v161 = v296;
        LOBYTE(v155) = sub_1C5B82FBC(sub_1C5BB9B7C, (&v274 - 4), v154, v297);
        v158(v157, v159);
        if ((v155 & 1) == 0)
        {
          break;
        }

        v162 = v280;
        sub_1C5BC79B4();

        sub_1C5B831E4(v162);
        v296 = v161;
        if (v161)
        {
          (*v283)(v162, v301);

          sub_1C5BB78E0(v289, v284, v278, 0);

          return;
        }

        v150 &= v150 - 1;
        (*v283)(v162, v301);
        v145 = v152;
        v5 = v277;
        v115 = v293;
        v116 = v289;
        v117 = v278;
        v147 = v282;
        v151 = v281;
        if (!v150)
        {
          while (1)
          {
LABEL_89:
            v152 = v145 + 1;
            if (__OFADD__(v145, 1))
            {
              goto LABEL_175;
            }

            if (v152 >= v151)
            {
              break;
            }

            v150 = *(v147 + 8 * v152);
            ++v145;
            if (v150)
            {
              goto LABEL_92;
            }
          }

          sub_1C5BB78E0(v116, v284, v117, 0);
          v186 = v294;

          v187 = *(v5 + 16);
          v188 = *(v5 + 24);
          v189 = *(v5 + 32);
          v190 = v5;
          v191 = *(v5 + 40);
          v192 = v292;
          *(v190 + 16) = v186;
          *(v190 + 24) = v192;
          *(v190 + 32) = v115;
          *(v190 + 40) = 1;
          sub_1C5A680AC(v186, v192, v115, 1);
          v193 = v187;
          v194 = v188;
          v195 = v189;
          v196 = v191;
          v5 = v190;
LABEL_155:
          sub_1C5BB78E0(v193, v194, v195, v196);
          v60 = v296;
LABEL_156:
          sub_1C5BB35F0();
          v257 = *(v5 + 16);
          v258 = *(v5 + 24);
          v259 = *(v5 + 32);
          v260 = v5;
          v261 = *(v5 + 40);
          sub_1C5A680AC(v257, v258, v259, v261);
          sub_1C5BB9180(v257, v258, v259, v261);
          sub_1C5BB78E0(v257, v258, v259, v261);
          v263 = *(v260 + 16);
          v262 = *(v260 + 24);
          v264 = *(v260 + 32);
          v265 = *(v260 + 40);
          sub_1C5BC7754();
          swift_allocObject();
          if (v265)
          {

            sub_1C5BC7744();
            v298 = v263;
            v299 = v262;
            v300 = v264;
            sub_1C5BB7C18();
          }

          else
          {

            sub_1C5BC7744();
            v298 = v263;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
            sub_1C5BB9808(&qword_1EC19A6F8);
          }

          v266 = v60;
          v267 = sub_1C5BC7734();
          v269 = v268;

          if (!v266)
          {
            sub_1C5BC7A44();
            sub_1C5A5BB4C(v267, v269);
            sub_1C5BB78E0(v263, v262, v264, v265);

            return;
          }

          sub_1C5B83EB4();
          swift_allocError();
          *v270 = v266;
          v270[1] = 0;
          swift_willThrow();
          v118 = v263;
          v119 = v262;
          v120 = v264;
          v144 = v265;
LABEL_162:
          sub_1C5BB78E0(v118, v119, v120, v144);
LABEL_163:

          return;
        }
      }

      sub_1C5B83E60();
      swift_allocError();
      *v273 = v154;
      v273[1] = v297;
      swift_willThrow();

      sub_1C5BB78E0(v289, v284, v278, 0);

LABEL_10:

      return;
    }

    v118 = v116;
    v119 = v284;
    v120 = v117;
LABEL_83:
    v144 = 0;
    goto LABEL_162;
  }

  if ((v295 & 1) == 0)
  {

    sub_1C5A680AC(v41, v42, v43, 1);

    v56 = sub_1C5BC7D44();
    v57 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1C5922000, v56, v57, "configureCacheIndices: Changed from client-defined buckets to default cacheIndex.", v58, 2u);
      MEMORY[0x1C69510F0](v58, -1, -1);
    }

    v59 = v291;
    sub_1C5B83764(v40 + OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder);
    v60 = v59;
    if (v59)
    {
      goto LABEL_163;
    }

    v61 = *(v5 + 16);
    v62 = *(v5 + 24);
    v63 = *(v5 + 32);
    v64 = v5;
    v65 = *(v5 + 40);
    v66 = v294;
    *(v64 + 16) = v294;
    *(v64 + 24) = v39;
    *(v64 + 32) = v38;
    *(v64 + 40) = 0;
    sub_1C5A680AC(v66, v39, v38, 0);
    v67 = v65;
    v5 = v64;
    sub_1C5BB78E0(v61, v62, v63, v67);
    goto LABEL_156;
  }

  v44 = OBJC_IVAR____TtC11MediaCoreUI22MotionCacheDiskStorage_appSpecificCacheAssetsFolder;

  sub_1C5A680AC(v41, v42, v43, 1);
  v45 = v291;
  sub_1C5B831E4(v40 + v44);
  if (v45)
  {

    goto LABEL_10;
  }

  v295 = v44;

  v289 = v41;
  v86 = sub_1C5B8265C(v85);
  v87 = v294;
  swift_bridgeObjectRetain_n();
  v88 = sub_1C5B8265C(v87);
  v282 = v86;
  v274 = v88;
  v89 = sub_1C5A49BC4(v86, v88);
  v277 = v5;
  v278 = v43;
  v296 = 0;
  if (v89 & 1) != 0 && (v42 == v39 && v43 == v38 || (sub_1C5BCBDE4()))
  {
    v90 = v282 + 56;
    v91 = 1 << v282[32];
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v93 = v92 & *(v282 + 7);
    v94 = (v91 + 63) >> 6;

    v95 = 0;
    do
    {
      while (1)
      {
        if (v93)
        {
          v121 = v282;
        }

        else
        {
          v121 = v282;
          do
          {
            v122 = v95 + 1;
            if (__OFADD__(v95, 1))
            {
              goto LABEL_174;
            }

            if (v122 >= v94)
            {

              v183 = sub_1C5BC7D44();
              v184 = sub_1C5BCB4F4();
              if (os_log_type_enabled(v183, v184))
              {
                v185 = swift_slowAlloc();
                *v185 = 0;
                _os_log_impl(&dword_1C5922000, v183, v184, "configureCacheIndices: Client-defined buckets did not change.", v185, 2u);
                MEMORY[0x1C69510F0](v185, -1, -1);
              }

              return;
            }

            v93 = *&v90[8 * v122];
            ++v95;
          }

          while (!v93);
          v95 = v122;
        }

        v123 = (*(v121 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v93)))));
        v125 = *v123;
        v124 = v123[1];
        v126 = v289;
        v127 = *(v289 + 16);

        if (v127 && (v128 = sub_1C596FBD8(v125, v124), (v129 & 1) != 0))
        {
          v130 = 0;
          v291 = *(*(*(v126 + 56) + 8 * v128) + 48);
        }

        else
        {
          v291 = 0;
          v130 = 1;
        }

        v93 &= v93 - 1;
        v131 = v294;
        if (*(v294 + 16))
        {
          v132 = sub_1C596FBD8(v125, v124);
          if (v133)
          {
            break;
          }
        }

        if ((v130 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v134 = *(*(v131 + 56) + 8 * v132);

      v135 = *(v134 + 48);

      if (v291 == v135)
      {
        v136 = v130;
      }

      else
      {
        v136 = 1;
      }
    }

    while ((v136 & 1) == 0);
LABEL_74:
  }

  v137 = sub_1C5BC7D44();
  v138 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&dword_1C5922000, v137, v138, "configureCacheIndices: Client-defined indices changed structure.", v139, 2u);
    MEMORY[0x1C69510F0](v139, -1, -1);
  }

  v140 = v274;
  v141 = v282;
  if (*(v274 + 16) <= *(v282 + 2) >> 3)
  {
    v298 = v282;

    sub_1C5BB7FB8(v140);
    v142 = v298;
  }

  else
  {

    v142 = sub_1C5BB80E4(v140, v141);
  }

  v163 = 0;
  v164 = v142 + 56;
  v165 = 1 << *(v142 + 32);
  v166 = -1;
  if (v165 < 64)
  {
    v166 = ~(-1 << v165);
  }

  v167 = v166 & *(v142 + 56);
  v168 = (v165 + 63) >> 6;
  v291 = (v279 + 8);
  v297 += 8;
  v279 = v142 + 56;
  v275 = v168;
  v276 = v40;
  v280 = v142;
  if (!v167)
  {
    goto LABEL_101;
  }

  do
  {
    v169 = v163;
LABEL_104:
    v170 = (*(v142 + 48) + ((v169 << 10) | (16 * __clz(__rbit64(v167)))));
    v172 = *v170;
    v171 = v170[1];

    v173 = v286;
    sub_1C5BC7774();
    v174 = v287;
    sub_1C5BC7764();
    v175 = v285;
    sub_1C5BC7794();
    v176 = *v291;
    v177 = v174;
    v178 = v288;
    (*v291)(v177, v288);
    v179 = (v176)(v173, v178);
    v281 = &v274;
    MEMORY[0x1EEE9AC00](v179);
    *(&v274 - 2) = v175;
    v290 = v172;
    v180 = v296;
    LOBYTE(v173) = sub_1C5B82FBC(sub_1C5BB9160, (&v274 - 4), v172, v171);
    v176(v175, v178);
    if ((v173 & 1) == 0)
    {

      sub_1C5B83E60();
      swift_allocError();
      *v271 = v290;
      v271[1] = v171;
      swift_willThrow();

      goto LABEL_163;
    }

    v181 = v284;
    sub_1C5BC79B4();

    sub_1C5B83764(v181);
    v296 = v180;
    if (v180)
    {

LABEL_168:

      (*v297)(v181, v301);
      return;
    }

    v167 &= v167 - 1;
    (*v297)(v181, v301);
    v163 = v169;
    v142 = v280;
    v164 = v279;
    v168 = v275;
  }

  while (v167);
  while (1)
  {
LABEL_101:
    v169 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v169 >= v168)
    {
      break;
    }

    v167 = *(v164 + 8 * v169);
    ++v163;
    if (v167)
    {
      goto LABEL_104;
    }
  }

  if (*(v282 + 2) <= *(v274 + 16) >> 3)
  {
    v298 = v274;
    sub_1C5BB7FB8(v282);

    v182 = v298;
  }

  else
  {
    v182 = sub_1C5BB80E4(v282, v274);
  }

  v197 = v277;
  v198 = 0;
  v199 = (v182 + 56);
  v200 = 1 << *(v182 + 32);
  v201 = -1;
  if (v200 < 64)
  {
    v201 = ~(-1 << v200);
  }

  v202 = v201 & *(v182 + 56);
  v203 = (v200 + 63) >> 6;
  v281 = (v182 + 56);
  v280 = v203;
  v282 = v182;
  if (v202)
  {
    while (1)
    {
      v204 = v198;
LABEL_122:
      v205 = (*(v182 + 48) + ((v204 << 10) | (16 * __clz(__rbit64(v202)))));
      v207 = *v205;
      v206 = v205[1];

      v208 = v286;
      sub_1C5BC7774();
      v209 = v287;
      sub_1C5BC7764();
      v210 = v285;
      sub_1C5BC7794();
      v211 = *v291;
      v212 = v209;
      v213 = v288;
      (*v291)(v212, v288);
      v214 = (v211)(v208, v213);
      v284 = &v274;
      MEMORY[0x1EEE9AC00](v214);
      *(&v274 - 2) = v210;
      v290 = v207;
      v215 = v296;
      LOBYTE(v208) = sub_1C5B82FBC(sub_1C5BB9B7C, (&v274 - 4), v207, v206);
      v211(v210, v213);
      if ((v208 & 1) == 0)
      {
        break;
      }

      v181 = v283;
      sub_1C5BC79B4();

      sub_1C5B831E4(v181);
      v296 = v215;
      if (v215)
      {

        goto LABEL_168;
      }

      v202 &= v202 - 1;
      (*v297)(v181, v301);
      v198 = v204;
      v197 = v277;
      v182 = v282;
      v199 = v281;
      v203 = v280;
      if (!v202)
      {
        goto LABEL_119;
      }
    }

    sub_1C5B83E60();
    swift_allocError();
    *v272 = v290;
    v272[1] = v206;
    swift_willThrow();

    goto LABEL_163;
  }

  while (1)
  {
LABEL_119:
    v204 = v198 + 1;
    if (__OFADD__(v198, 1))
    {
      goto LABEL_172;
    }

    if (v204 >= v203)
    {
      break;
    }

    v202 = v199[v204];
    ++v198;
    if (v202)
    {
      goto LABEL_122;
    }
  }

  v216 = v294 + 64;
  v217 = 1 << *(v294 + 32);
  v218 = -1;
  if (v217 < 64)
  {
    v218 = ~(-1 << v217);
  }

  v219 = v218 & *(v294 + 64);
  v220 = (v217 + 63) >> 6;
  v221 = 0;

  while (v219)
  {
    v222 = v219;
LABEL_135:
    v219 = (v222 - 1) & v222;
    if (*(v289 + 16))
    {
      v224 = (*(v294 + 48) + ((v221 << 10) | (16 * __clz(__rbit64(v222)))));
      v226 = *v224;
      v225 = v224[1];

      v227 = sub_1C596FBD8(v226, v225);
      if ((v228 & 1) == 0 || !*(v294 + 16))
      {
        goto LABEL_140;
      }

      v229 = *(*(v289 + 56) + 8 * v227);

      v230 = sub_1C596FBD8(v226, v225);
      if ((v231 & 1) == 0)
      {

LABEL_140:

        goto LABEL_141;
      }

      v232 = *(*(v294 + 56) + 8 * v230);
      v233 = v232[6];
      v234 = *(v229 + 48);
      *(v229 + 48) = v233;
      v295 = v232;

      if (v233 < v234)
      {
        sub_1C5BB00D8();
      }

      v297 = v229;

      v235 = v301;
      LODWORD(v291) = swift_isUniquelyReferenced_nonNull_native();
      v298 = v235;
      v236 = sub_1C596FBD8(v226, v225);
      v238 = *(v235 + 16);
      v239 = (v237 & 1) == 0;
      v240 = __OFADD__(v238, v239);
      v241 = v238 + v239;
      if (v240)
      {
        goto LABEL_176;
      }

      v242 = v237;
      if (*(v235 + 24) < v241)
      {
        sub_1C5AF2530(v241, v291);
        v236 = sub_1C596FBD8(v226, v225);
        if ((v242 & 1) != (v243 & 1))
        {
          goto LABEL_178;
        }

LABEL_149:
        if (v242)
        {
          goto LABEL_150;
        }

        goto LABEL_152;
      }

      if (v291)
      {
        goto LABEL_149;
      }

      v301 = v236;
      sub_1C5AF53C0();
      v236 = v301;
      if (v242)
      {
LABEL_150:
        v244 = v236;

        v301 = v298;
        *(*(v298 + 56) + 8 * v244) = v297;

        goto LABEL_141;
      }

LABEL_152:
      v245 = v298;
      *(v298 + 8 * (v236 >> 6) + 64) |= 1 << v236;
      v246 = (*(v245 + 48) + 16 * v236);
      *v246 = v226;
      v246[1] = v225;
      *(*(v245 + 56) + 8 * v236) = v297;
      v247 = v245;

      v248 = *(v247 + 16);
      v240 = __OFADD__(v248, 1);
      v249 = v248 + 1;
      if (v240)
      {
        goto LABEL_177;
      }

      v301 = v247;
      *(v247 + 16) = v249;
LABEL_141:
      v197 = v277;
    }
  }

  while (1)
  {
    v223 = v221 + 1;
    if (__OFADD__(v221, 1))
    {
      break;
    }

    if (v223 >= v220)
    {

      v251 = *(v197 + 16);
      v250 = *(v197 + 24);
      v252 = *(v197 + 32);
      v253 = v197;
      v254 = *(v197 + 40);
      v256 = v292;
      v255 = v293;
      *(v253 + 16) = v301;
      *(v253 + 24) = v256;
      *(v253 + 32) = v255;
      *(v253 + 40) = 1;

      v193 = v251;
      v194 = v250;
      v195 = v252;
      v196 = v254;
      v5 = v253;
      goto LABEL_155;
    }

    v222 = *(v216 + 8 * v223);
    ++v221;
    if (v222)
    {
      v221 = v223;
      goto LABEL_135;
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_1C5BCBE84();
  __break(1u);
}

void sub_1C5BB35F0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (*(v0 + 40))
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = sub_1C5A9EA9C(*(v2 + 16), 0);
        v22 = sub_1C5A9EC38(&v23, (v6 + 32), v5, v2);

        sub_1C5A680AC(v2, v3, v4, 1);

        sub_1C593F204();
        if (v22 != v5)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        sub_1C5A680AC(v2, v3, v4, 1);

        v6 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C5BED3C0;
      *(v6 + 32) = v2;

      sub_1C5A680AC(v2, v3, v4, 0);
    }

    if (v6 >> 62)
    {
      v11 = sub_1C5BCB984();
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_15:
        if (v11 >= 1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = 0;
            do
            {
              v13 = MEMORY[0x1C694FD20](v12++, v6);
              v14 = swift_allocObject();
              swift_weakInit();
              v15 = swift_allocObject();
              *(v15 + 16) = v14;
              *(v15 + 24) = v1;
              v16 = *(v13 + 56);
              *(v13 + 56) = sub_1C5BB91F0;
              *(v13 + 64) = v15;

              sub_1C59261FC(v16);
              swift_unknownObjectRelease();
            }

            while (v11 != v12);
          }

          else
          {
            v17 = 32;
            do
            {
              v18 = *(v6 + v17);
              v19 = swift_allocObject();
              swift_weakInit();
              v20 = swift_allocObject();
              *(v20 + 16) = v19;
              *(v20 + 24) = v1;
              v21 = *(v18 + 56);
              *(v18 + 56) = sub_1C5BB9B9C;
              *(v18 + 64) = v20;

              sub_1C59261FC(v21);

              v17 += 8;
              --v11;
            }

            while (v11);
          }

          return;
        }

        __break(1u);
        goto LABEL_26;
      }
    }

    return;
  }

  if (qword_1EC1909E0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EC19A698);
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    MEMORY[0x1C69510F0](v10, -1, -1);
  }
}

uint64_t MotionCache.fetchAsset(url:presentationResolution:cacheBucketID:loggingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  *(v7 + 152) = a3;
  *(v7 + 160) = v6;
  *(v7 + 144) = a2;
  *(v7 + 128) = a5;
  *(v7 + 136) = a6;
  *(v7 + 120) = a1;
  v9 = sub_1C5BC7944();
  *(v7 + 168) = v9;
  *(v7 + 176) = *(v9 - 8);
  *(v7 + 184) = swift_task_alloc();
  v10 = sub_1C5BC7A24();
  *(v7 + 192) = v10;
  *(v7 + 200) = *(v10 - 8);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v11 = sub_1C5BC7B04();
  *(v7 + 232) = v11;
  *(v7 + 240) = *(v11 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = *a4;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC19A688;
  *(v7 + 272) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB3BF4, v12, 0);
}

uint64_t sub_1C5BB3BF4()
{
  v1 = objc_opt_self();
  v0[35] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = [v2 motionMode];

  if (v3 && (v3 != 1 || (v4 = [objc_opt_self() sharedMonitor], objc_msgSend(v4, sel_networkType), v4, ICEnvironmentNetworkTypeIsWiFi())))
  {
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_1C5BB3DD4;

    return sub_1C5BAD518();
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1C5BB3DD4()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB3F10, v1, 0);
}

uint64_t sub_1C5BB3F10()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[20];
  v24 = v0[18];
  v25 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  if (v1 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v0[32];
  }

  v23 = v10;
  if (v1 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v0[33];
  }

  v21 = v0[34];
  v22 = v11;
  sub_1C5BB4A54(v3, v1);
  sub_1C5BC7AF4();
  v12 = sub_1C5BC7AD4();
  v14 = v13;
  v0[37] = v13;
  (*(v5 + 8))(v2, v4);
  v15 = swift_task_alloc();
  v0[38] = v15;
  v15[2] = v6;
  v15[3] = v9;
  v15[4] = v12;
  v15[5] = v14;
  v15[6] = v8;
  v15[7] = v7;
  v15[8] = v24;
  v15[9] = v25;
  v15[10] = v23;
  v15[11] = v22;
  v16 = swift_task_alloc();
  v0[39] = v16;
  v16[2] = v6;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = v3;
  v16[6] = v1;
  v18 = sub_1C5BB89C8(&qword_1EC1930A8, v17, type metadata accessor for MotionCacheActor);
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_1C5BB412C;

  return MEMORY[0x1EEE6DE18](v0 + 11, &unk_1C5BF44F8, v15, sub_1C5BB4FC0, v16, v21, v18, &type metadata for MotionCache.FetchResult);
}

void sub_1C5BB412C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 272);

    MEMORY[0x1EEE6DFA0](sub_1C5BB42D0, v3, 0);
  }
}

uint64_t sub_1C5BB42D0()
{
  v63 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 88);
  v2 = [*(v0 + 280) standardUserDefaults];
  v3 = [v2 motionMode];

  if (!v3 || v3 == 1 && (v4 = [objc_opt_self() sharedMonitor], objc_msgSend(v4, sel_networkType), v4, (ICEnvironmentNetworkTypeIsWiFi() & 1) == 0))
  {

    sub_1C59F831C(v1);
    goto LABEL_7;
  }

  if (v1 <= 2)
  {
LABEL_5:

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v59 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = [v1 URL];
  sub_1C5BC79E4();

  v57 = [objc_opt_self() defaultManager];
  v14 = [v57 temporaryDirectory];
  sub_1C5BC79E4();

  *(v0 + 40) = sub_1C5BC7984();
  *(v0 + 48) = v15;
  (*(v12 + 104))(v10, *MEMORY[0x1E6968F70], v11);
  sub_1C594A23C();
  sub_1C5BC7A14();
  (*(v12 + 8))(v10, v11);

  v16 = *(v8 + 8);
  v16(v9, v59);
  sub_1C5BC79F4();
  v17 = sub_1C5BCAE44();

  v18 = [v57 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v19 = sub_1C5BC7994();
    v20 = sub_1C5BC7994();
    *(v0 + 96) = 0;
    v21 = [v57 copyItemAtURL:v19 toURL:v20 error:v0 + 96];

    v22 = *(v0 + 96);
    if (!v21)
    {
      v39 = v22;
      v40 = sub_1C5BC7914();

      swift_willThrow();
      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 264);
      v54 = *(v0 + 216);
      v56 = *(v0 + 224);
      v42 = *(v0 + 192);
      if (v41 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v0 + 264);
      }

      if (v41 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v0 + 256);
      }

      v45 = sub_1C5BC7D64();
      __swift_project_value_buffer(v45, qword_1EC19A698);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1C5BCBA94();
      *(v0 + 56) = 0;
      *(v0 + 64) = 0xE000000000000000;
      MEMORY[0x1C694F170](0xD000000000000016, 0x80000001C5BFEDE0);
      *(v0 + 104) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
      sub_1C5BCBBA4();
      v46 = *(v0 + 56);
      v47 = *(v0 + 64);
      v48 = sub_1C5BCB4D4();
      v60 = v44;
      v61 = v43;
      sub_1C5ACCC10(v48, v46, v47, &v60);

      sub_1C59F831C(v1);

      sub_1C59F831C(v1);
      v16(v54, v42);
      v16(v56, v42);
      goto LABEL_5;
    }

    v23 = v22;
  }

  v24 = *(v0 + 160);
  v25 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v26 = sub_1C5BC7994();
  v5 = [v25 initWithURL:v26 options:0];

  swift_beginAccess();
  v27 = *(v24 + 48);
  v28 = *(v0 + 224);
  if (v27)
  {
    v29 = *(v0 + 328);
    swift_endAccess();

    sub_1C5B818D4(v28);
    if (v29)
    {
      v58 = v16;

      if (qword_1EC1909E0 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 264);
      v53 = *(v0 + 216);
      v55 = *(v0 + 224);
      v31 = *(v0 + 192);
      if (v30 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v0 + 264);
      }

      if (v30 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v0 + 256);
      }

      v52 = v33;
      v34 = sub_1C5BC7D64();
      __swift_project_value_buffer(v34, qword_1EC19A698);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1C5BCBA94();
      *(v0 + 72) = 0;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1C694F170](0xD000000000000023, 0x80000001C5BFEE00);
      *(v0 + 112) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
      sub_1C5BCBBA4();
      v35 = *(v0 + 72);
      v36 = *(v0 + 80);
      v37 = sub_1C5BCB4D4();
      v60 = v52;
      v61 = v32;
      sub_1C5ACCC10(v37, v35, v36, &v60);

      sub_1C59F831C(v1);

      sub_1C59F831C(v1);
      v58(v53, v31);
      v58(v55, v31);
    }

    else
    {
      v50 = *(v0 + 216);
      v49 = *(v0 + 224);
      v51 = *(v0 + 192);

      sub_1C59F831C(v1);
      sub_1C59F831C(v1);

      v16(v50, v51);
      v16(v49, v51);
    }
  }

  else
  {
    v38 = *(v0 + 192);
    v16(*(v0 + 216), v38);
    v16(v28, v38);
    swift_endAccess();

    sub_1C59F831C(v1);

    sub_1C59F831C(v1);
  }

LABEL_8:

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1C5BB4A54(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C5BB4A68(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[4] = a1;
  if (qword_1EC1909D0 != -1)
  {
    v21 = a10;
    swift_once();
    a10 = v21;
  }

  v11[5] = qword_1EC19A688;
  v11[2] = a10;
  v11[3] = a11;
  v19 = swift_task_alloc();
  v11[6] = v19;
  *v19 = v11;
  v19[1] = sub_1C5BB4BBC;

  return sub_1C5BAE17C(a5, a6, a7, a8, a9, 3, 0, 0, a2, a3);
}

uint64_t sub_1C5BB4BBC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB4CD4, v2, 0);
}

uint64_t sub_1C5BB4CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 2);
  v13 = *(v9 + 3);
  v14 = *(v9 + 4);
  v15 = *(v9 + 5);
  v16 = v9[6];
  v17 = v9[7];
  v18 = *(v9 + 8);
  v19 = *(v9 + 9);
  v20 = *(v9 + 10);
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_1C592ABD4;

  return sub_1C5BB4A68(a1, v16, v17, v12, v13, v14, v15, v18, v19, v20, a9);
}

uint64_t sub_1C5BB4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1C5BCB214();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  sub_1C5BB4A54(a4, a5);
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC19A688;
  v16 = sub_1C5BB89C8(&qword_1EC1930A8, v14, type metadata accessor for MotionCacheActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;

  sub_1C5AD0FB8(0, 0, v12, &unk_1C5BF46C8, v17);
}

uint64_t sub_1C5BB4FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB5094, v9, 0);
}

uint64_t sub_1C5BB5094()
{
  v10 = v0;
  v1 = v0[6];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[6];
  }

  if (*(v0[2] + 56))
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    if (v1 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v0[5];
    }

    v9[0] = v6;
    v9[1] = v2;
    sub_1C5BB4A54(v3, v1);

    sub_1C5B719D8(v5, v4, v9);
  }

  else
  {
    sub_1C5BB4A54(v0[5], v1);
  }

  v7 = v0[1];

  return v7();
}

id sub_1C5BB5160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  v61 = a3;
  v60 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for MotionCacheEntry();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v15 = a4[1];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC7D64();
  v18 = __swift_project_value_buffer(v17, qword_1EC19A698);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFF1F0);
  sub_1C5BC7A24();
  v19 = sub_1C5BB89C8(&qword_1EC192580, 255, MEMORY[0x1E6968FB0]);
  v20 = sub_1C5BCBD64();
  v21 = a1;
  MEMORY[0x1C694F170](v20);

  v22 = v63;
  v23 = v64;
  v24 = sub_1C5BCB4F4();
  v63 = v16;
  v64 = v15;
  sub_1C5ACCC10(v24, v22, v23, &v63);

  v63 = v16;
  v64 = v15;
  v25 = v65;
  v26 = sub_1C5BB5B0C(v60, v61, &v63);
  if (!v25)
  {
    v65 = v19;
    v61 = 0;
    v62 = v18;
    v27 = v26;
    v28 = sub_1C5BC7964();
    sub_1C5BB0A98(v28, v29, v12);

    v30 = v59;
    if ((*(v58 + 48))(v12, 1, v59) == 1)
    {
      sub_1C5924EF4(v12, &qword_1EC19A6E8);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1C5BCBA94();

      v63 = 0x696D206568636143;
      v64 = 0xEF20726F66207373;
      v31 = sub_1C5BCBD64();
      MEMORY[0x1C694F170](v31);

      MEMORY[0x1C694F170](46, 0xE100000000000000);
      v32 = v63;
      v33 = v64;
      v34 = sub_1C5BCB4F4();
      v63 = v16;
      v64 = v15;
      sub_1C5ACCC10(v34, v32, v33, &v63);

      return 0;
    }

    else
    {
      v60 = v27;
      v58 = v21;
      v35 = v57;
      sub_1C5BB8960(v12, v57, type metadata accessor for MotionCacheEntry);
      v36 = (v35 + *(v30 + 20));
      v37 = *v36;
      v38 = v36[1];
      v39 = floor(a6) - floor(v38);
      if (floor(a5) - floor(*v36) <= 1.0 && v39 <= 1.0)
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1C5BCBA94();

        v63 = 0xD000000000000020;
        v64 = 0x80000001C5BFF230;
        v43 = sub_1C5BCBD64();
        MEMORY[0x1C694F170](v43);

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v44 = v63;
        v45 = v64;
        v46 = sub_1C5BCB4C4();
        v63 = v16;
        v64 = v15;
        sub_1C5ACCC10(v46, v44, v45, &v63);

        v47 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
        sub_1C5BC79F4();
        v48 = sub_1C5BCAE44();

        v49 = [v47 fileExistsAtPath_];

        if (v49)
        {
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_1C5BCBA94();

          v63 = 0xD000000000000019;
          v64 = 0x80000001C5BFF260;
          v50 = sub_1C5BCBD64();
          MEMORY[0x1C694F170](v50);

          MEMORY[0x1C694F170](46, 0xE100000000000000);
          v51 = v63;
          v52 = v64;
          v53 = sub_1C5BCB4F4();
          v63 = v16;
          v64 = v15;
          sub_1C5ACCC10(v53, v51, v52, &v63);

          v54 = objc_allocWithZone(MEMORY[0x1E6988168]);
          v55 = sub_1C5BC7994();
          v18 = [v54 initWithURL:v55 options:0];

          sub_1C5BB7BB8(v35, type metadata accessor for MotionCacheEntry);
          return v18;
        }

        sub_1C5BB8A10();
        v18 = swift_allocError();
        *v56 = 0u;
        *(v56 + 16) = 0u;
        *(v56 + 32) = 1;
      }

      else
      {
        sub_1C5BB8A10();
        v18 = swift_allocError();
        *v41 = a5;
        *(v41 + 8) = a6;
        *(v41 + 16) = v37;
        *(v41 + 24) = v38;
        *(v41 + 32) = 0;
      }

      swift_willThrow();

      sub_1C5BB7BB8(v35, type metadata accessor for MotionCacheEntry);
    }
  }

  return v18;
}

unint64_t sub_1C5BB57D8()
{
  v1 = 0xD000000000000027;
  if ((*(v0 + 32) & 1) == 0)
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD00000000000002FLL, 0x80000001C5BFF100);
    v2 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v2);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v3 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v3);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    MEMORY[0x1C694F170](0x646568636163202CLL, 0xE900000000000020);
    v4 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v4);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v5 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v5);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    return 0;
  }

  return v1;
}

unint64_t sub_1C5BB59A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1C5BCBA94();

      v8 = 0xD000000000000015;
    }

    else
    {
      v8 = 0;
      sub_1C5BCBA94();
      MEMORY[0x1C694F170](0xD00000000000002CLL, 0x80000001C5BFF130);
    }

    MEMORY[0x1C694F170](a1, a2);
    v5 = 0x746F6E2073617720;
    v6 = 0xEF2E646E756F6620;
  }

  else
  {
    v8 = 0;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000034, 0x80000001C5BFF180);
    MEMORY[0x1C694F170](a1, a2);
    v5 = 0xD00000000000002ELL;
    v6 = 0x80000001C5BFF1C0;
  }

  MEMORY[0x1C694F170](v5, v6);
  return v8;
}

uint64_t sub_1C5BB5B0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = *(v3 + 16);
  if (*(v3 + 40))
  {
    v10 = *(v3 + 24);
    v9 = *(v3 + 32);
    if (a2)
    {
      v11 = *(v8 + 16);
      sub_1C5A680AC(v8, v10, v9, 1);

      if (v11 && (v12 = sub_1C596FBD8(a1, a2), (v13 & 1) != 0))
      {
        v14 = *(*(v8 + 56) + 8 * v12);

        if (qword_1EC1909E0 != -1)
        {
          swift_once();
        }

        v15 = sub_1C5BC7D64();
        __swift_project_value_buffer(v15, qword_1EC19A698);
        sub_1C5BCBA94();

        MEMORY[0x1C694F170](a1, a2);

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v16 = sub_1C5BCB4F4();
        v31 = v7;
        v32 = v6;
        sub_1C5ACCC10(v16, 0xD00000000000002BLL, 0x80000001C5BFF080, &v31);

        return v14;
      }

      else
      {

        sub_1C5BB7C6C();
        swift_allocError();
        *v18 = a1;
        *(v18 + 8) = a2;
        *(v18 + 16) = 1;
        swift_willThrow();
      }

      return v8;
    }

    if (*(v8 + 16))
    {
      sub_1C5A680AC(*(v3 + 16), *(v3 + 24), *(v3 + 32), 1);

      v19 = sub_1C596FBD8(v10, v9);
      v21 = v20;

      if (v21)
      {
        v22 = *(*(v8 + 56) + 8 * v19);
        v23 = qword_1EC1909E0;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = sub_1C5BC7D64();
        __swift_project_value_buffer(v24, qword_1EC19A698);
        sub_1C5BCBA94();
        MEMORY[0x1C694F170](0xD000000000000033, 0x80000001C5BFF040);

        MEMORY[0x1C694F170](v10, v9);
        swift_bridgeObjectRelease_n();

        MEMORY[0x1C694F170](46, 0xE100000000000000);
        v25 = sub_1C5BCB4F4();
        v31 = v7;
        v32 = v6;
        sub_1C5ACCC10(v25, 0, 0xE000000000000000, &v31);

        return v22;
      }
    }

    else
    {
    }

    sub_1C5BB7C6C();
    swift_allocError();
    *v29 = v10;
    *(v29 + 8) = v9;
    *(v29 + 16) = 2;
    swift_willThrow();

    return v8;
  }

  if (a2)
  {
    sub_1C5BB7C6C();
    swift_allocError();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v26 = qword_1EC1909E0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1C5BC7D64();
    __swift_project_value_buffer(v27, qword_1EC19A698);
    v28 = sub_1C5BCB4F4();
    v31 = v7;
    v32 = v6;
    sub_1C5ACCC10(v28, 0xD00000000000001BLL, 0x80000001C5BFF0B0, &v31);
  }

  return v8;
}

uint64_t sub_1C5BB5F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_1C5BC7A24();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6080, 0, 0);
}

uint64_t sub_1C5BB6080()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC19A688;
  *(v0 + 128) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6144, v1, 0);
}

uint64_t sub_1C5BB6144()
{
  if ((sub_1C5B818B0() & 1) != 0 || (v0[4] = 66565, sub_1C5BC79F4(), v1 = sub_1C5BCAED4(), , v2 = fsctl((v1 + 32), 0xC0084A44uLL, v0 + 4, 0), , !v2))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v3 = *MEMORY[0x1E696A798];
    v0[17] = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v3 code:MEMORY[0x1C694C0F0]() userInfo:0];

    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1C5BB62E0, 0, 0);
  }
}

uint64_t sub_1C5BB62E0()
{
  v23 = v0;
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EC1909E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v17 = *(v0 + 128);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v18 = *(v0 + 56);
  v19 = *(v0 + 96);
  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EC19A698);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1C5BCBA94();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1C694F170](0xD00000000000008FLL, 0x80000001C5BFF2E0);
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_1C5BCB4D4();
  v20 = v5;
  v21 = v4;
  sub_1C5ACCC10(v9, v7, v8, &v20);

  v10 = sub_1C5BC7964();
  sub_1C5BB0790(v10, v11, v2);

  sub_1C5924EF4(v2, &qword_1EC19A6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999D8);
  v12 = *(v3 + 80);
  *(v0 + 168) = v12;
  v13 = (v12 + 32) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 144) = v14;
  v15 = *(v3 + 16);
  *(v0 + 152) = v15;
  *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14 + v13, v18, v19);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6540, v17, 0);
}

uint64_t sub_1C5BB6540()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 168) + 32) & ~*(v0 + 168);
  (*(v0 + 152))(v2, v1 + v5, v4);
  swift_setDeallocating();
  v6 = *(v3 + 8);
  v6(v1 + v5, v4);
  swift_deallocClassInstance();
  sub_1C5B81170(v2, 2);
  v6(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C5BB6664, 0, 0);
}

uint64_t sub_1C5BB6664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5BB6700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v4 = type metadata accessor for MotionCacheEntry();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C5BC7A24();
  v38 = *(v42 - 8);
  v7 = MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    v36 = result;
    if (result)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1C5B8F0A8(0, v12, 0);
      v13 = v43;
      v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v40 = *(v5 + 72);
      v15 = v38;
      v16 = (v38 + 32);
      do
      {
        v17 = v41;
        sub_1C5BB7B3C(v14, v41);
        v18 = *v16;
        (*v16)(v9, v17, v42);
        v43 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C5B8F0A8(v19 > 1, v20 + 1, 1);
          v15 = v38;
          v13 = v43;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v22 = *(v15 + 72);
        v18((v21 + v22 * v20), v9, v42);
        v14 += v40;
        --v12;
      }

      while (v12);
      v25 = *(v15 + 16);
      v23 = v15 + 16;
      v24 = v25;
      v26 = v20 + 1;
      v27 = v37;
      do
      {
        v28 = v42;
        v24(v27, v21, v42);
        sub_1C5B81170(v27, 0);
        (*(v23 - 8))(v27, v28);
        v21 += v22;
        --v26;
      }

      while (v26);

      v30 = *(v36 + 16);
      v29 = *(v36 + 24);
      v31 = *(v36 + 32);
      v32 = *(v36 + 40);
      sub_1C5BC7754();
      swift_allocObject();
      if (v32)
      {

        sub_1C5BC7744();
        v43 = v30;
        v44 = v29;
        v45 = v31;
        sub_1C5BB7C18();
      }

      else
      {

        sub_1C5BC7744();
        v43 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193688);
        sub_1C5BB9808(&qword_1EC19A6F8);
      }

      v33 = sub_1C5BC7734();
      v35 = v34;

      sub_1C5BC7A44();
      sub_1C5A5BB4C(v33, v35);
      sub_1C5BB78E0(v30, v29, v31, v32);
      sub_1C5BB343C();
    }
  }

  return result;
}

uint64_t MotionCache.deinit()
{
  sub_1C5BB78E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t MotionCache.__deallocating_deinit()
{
  sub_1C5BB78E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1C5BB6D40()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  if (!v2)
  {
    sub_1C5BB7F64();
    swift_allocError();
    return swift_willThrow();
  }

  v3 = sub_1C5B82004();
  if (!v1)
  {
    v4 = v3;
    v5 = sub_1C59ADCF4(MEMORY[0x1E69E7CC0]);
    v27 = v4[2];
    if (v27)
    {
      v6 = 0;
      v7 = v4 + 5;
      while (v6 < v4[2])
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10 = v2;
        v11 = sub_1C5B82778(v9, v8);
        ++v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v5;
        sub_1C5B3C190(v11, v9, v8, isUniquelyReferenced_nonNull_native);

        v7 += 2;
        v2 = v10;
        if (v27 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      if (qword_1EC1909E0 == -1)
      {
LABEL_8:
        v13 = sub_1C5BC7D64();
        __swift_project_value_buffer(v13, qword_1EC19A698);

        v14 = sub_1C5BC7D44();
        v15 = sub_1C5BCB4F4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28 = v17;
          *v16 = 136315138;
          v18 = sub_1C5BCACC4();
          v20 = v19;

          v21 = sub_1C592ADA8(v18, v20, &v28);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_1C5922000, v14, v15, "Client-defined cache buckets and number of assets on disk: %s.", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x1C69510F0](v17, -1, -1);
          MEMORY[0x1C69510F0](v16, -1, -1);
        }

        else
        {
        }

        v23 = sub_1C5B82778(0, 0);
        v24 = sub_1C5BC7D44();
        v25 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = v23;
          _os_log_impl(&dword_1C5922000, v24, v25, "Shared motion folder's number of assets on disk: %ld.", v26, 0xCu);
          MEMORY[0x1C69510F0](v26, -1, -1);
        }
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

uint64_t sub_1C5BB70EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB7AE8();
  sub_1C5BCBFB4();
  LOBYTE(v11) = 0;
  sub_1C5BC7A24();
  sub_1C5BB89C8(&qword_1EC19A6D8, 255, MEMORY[0x1E6968FB0]);
  sub_1C5BCBD24();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for MotionCacheEntry() + 20));
    v10[15] = 1;
    type metadata accessor for CGSize(0);
    sub_1C5BB89C8(&qword_1EC19A6E0, 255, type metadata accessor for CGSize);
    sub_1C5BCBD24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C5BB72FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1C5BC7A24();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6B0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for MotionCacheEntry();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BB7AE8();
  sub_1C5BCBFA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_1C5BB89C8(&qword_1EC19A6C0, 255, MEMORY[0x1E6968FB0]);
  v15 = v27;
  v16 = v25;
  sub_1C5BCBCE4();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  type metadata accessor for CGSize(0);
  v29 = 1;
  sub_1C5BB89C8(&qword_1EC19A6C8, 255, type metadata accessor for CGSize);
  sub_1C5BCBCE4();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_1C5BB7B3C(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1C5BB7BB8(v18, type metadata accessor for MotionCacheEntry);
}

uint64_t sub_1C5BB76B0()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1C5BB76DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C5BCBDE4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C5BCBDE4();

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

uint64_t sub_1C5BB77B8(uint64_t a1)
{
  v2 = sub_1C5BB7AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5BB77F4(uint64_t a1)
{
  v2 = sub_1C5BB7AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5BB7860()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC19A698);
  __swift_project_value_buffer(v0, qword_1EC19A698);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5BB78E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI11MotionCacheC11FetchResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5BB79E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5BB7A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata accessor for MotionCacheEntry()
{
  result = qword_1EC19A720;
  if (!qword_1EC19A720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C5BB7AE8()
{
  result = qword_1EC19A6B8;
  if (!qword_1EC19A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A6B8);
  }

  return result;
}

uint64_t sub_1C5BB7B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionCacheEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BB7BA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1C5BB7BB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5BB7C18()
{
  result = qword_1EC19A6F0;
  if (!qword_1EC19A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A6F0);
  }

  return result;
}

unint64_t sub_1C5BB7C6C()
{
  result = qword_1EC19A700;
  if (!qword_1EC19A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A700);
  }

  return result;
}

double sub_1C5BB7CC0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C5AB97DC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C5AF53D4();
      v9 = v11;
    }

    sub_1C593F33C((*(v9 + 56) + 32 * v7), a2);
    sub_1C5AF408C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C5BB7D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C596FBD8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C5AF5554();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1C5AF3EDC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1C5BB7DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C596FBD8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C5AF596C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v19 = *(v12 - 8);
    sub_1C5BB8960(v11 + *(v19 + 72) * v8, a3, type metadata accessor for MotionAssetDownload.AssetKey);
    sub_1C5AF4254(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_1C5BB7F64()
{
  result = qword_1EC19A708;
  if (!qword_1EC19A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A708);
  }

  return result;
}

uint64_t sub_1C5BB7FB8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1C5B0F8CC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C5BB80E4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1C5BCBF54();

    sub_1C5BCAF04();
    v23 = sub_1C5BCBF94();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1C5A115E4(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1C5BCBF54();

            sub_1C5BCAF04();
            v41 = sub_1C5BCBF94();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1C5BCBDE4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1C5BB8654(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1C69510F0](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1C593F204();
    return v5;
  }

  result = MEMORY[0x1C69510F0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C5BB8654(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1C5A115E4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1C5BCBF54();

        sub_1C5BCAF04();
        v19 = sub_1C5BCBF94();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1C5BCBDE4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1C5BB888C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A6E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BB88FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionCacheEntry();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BB8960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5BB89C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5BB8A10()
{
  result = qword_1EC19A718;
  if (!qword_1EC19A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A718);
  }

  return result;
}

uint64_t sub_1C5BB8A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5BB4FF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1C5BB8B40(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  if (a4)
  {
    v11 = sub_1C59ADCF4(MEMORY[0x1E69E7CC0]);
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v9 = v13 & *(a1 + 64);
    v7 = (v12 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v9)
          {
            while (1)
            {
              v17 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
                goto LABEL_41;
              }

              if (v17 >= v7)
              {
                break;
              }

              v9 = *(a1 + 64 + 8 * v17);
              ++v8;
              if (v9)
              {
                v8 = v17;
                goto LABEL_11;
              }
            }

            if (qword_1EC1909E0 != -1)
            {
              swift_once();
            }

            v42 = sub_1C5BC7D64();
            __swift_project_value_buffer(v42, qword_1EC19A698);

            osloga = sub_1C5BC7D44();
            v43 = sub_1C5BCB4F4();

            if (os_log_type_enabled(osloga, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v57 = v45;
              *v44 = 136315650;
              *(v44 + 4) = sub_1C592ADA8(a5, a6, &v57);
              *(v44 + 12) = 2080;

              v46 = sub_1C5BCACC4();
              v48 = v47;

              v49 = sub_1C592ADA8(v46, v48, &v57);

              *(v44 + 14) = v49;
              *(v44 + 22) = 2080;
              *(v44 + 24) = sub_1C592ADA8(a2, a3, &v57);
              _os_log_impl(&dword_1C5922000, osloga, v43, "Indices Structure: %s. Client-defined indices: %s. Default index: %s.", v44, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C69510F0](v45, -1, -1);
              MEMORY[0x1C69510F0](v44, -1, -1);

              goto LABEL_34;
            }

LABEL_37:

            return;
          }

LABEL_11:
          v18 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v19 = (*(a1 + 48) + ((v8 << 10) | (16 * v18)));
          v21 = *v19;
          v20 = v19[1];
          v22 = *(a1 + 16);

          if (v22)
          {
            v23 = sub_1C596FBD8(v21, v20);
            if (v24)
            {
              break;
            }
          }

          v14 = sub_1C596FBD8(v21, v20);
          v16 = v15;

          if (v16)
          {
            v57 = v11;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1C5AF5258();
              v11 = v57;
            }

            sub_1C5AF3EDC(v14, v11);
          }
        }

        oslog = *(*(*(a1 + 56) + 8 * v23) + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v11;
        v25 = sub_1C596FBD8(v21, v20);
        v27 = v11[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          sub_1C5BCBE84();
          __break(1u);
          return;
        }

        if (v11[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v26 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v51 = v25;
          v34 = v26;
          sub_1C5AF5258();
          v25 = v51;
          if ((v34 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

LABEL_23:
        v33 = v25;

        v11 = v57;
        *(v57[7] + 8 * v33) = oslog;
      }

      v31 = v26;
      sub_1C5AF2290(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1C596FBD8(v21, v20);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_44;
      }

      if (v31)
      {
        goto LABEL_23;
      }

LABEL_25:
      v11 = v57;
      v57[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v11[6] + 16 * v25);
      *v35 = v21;
      v35[1] = v20;
      *(v11[7] + 8 * v25) = oslog;
      v36 = v11[2];
      v29 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v29)
      {
        goto LABEL_43;
      }

      v11[2] = v37;
    }
  }

  if (qword_1EC1909E0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v38 = sub_1C5BC7D64();
  __swift_project_value_buffer(v38, qword_1EC19A698);

  sub_1C5A680AC(a1, v9, v8, 0);
  osloga = sub_1C5BC7D44();
  v39 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(osloga, v39))
  {
    sub_1C5BB78E0(a1, v9, v8, 0);
    goto LABEL_37;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v57 = v41;
  *v40 = 136315394;
  *(v40 + 4) = sub_1C592ADA8(v7, a6, &v57);
  *(v40 + 12) = 2048;
  *(v40 + 14) = *(a1 + 48);
  sub_1C5BB78E0(a1, v9, v8, 0);
  _os_log_impl(&dword_1C5922000, osloga, v39, "Indices Structure: %s. Default index - maxSize: %ld.", v40, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v41);
  MEMORY[0x1C69510F0](v41, -1, -1);
  MEMORY[0x1C69510F0](v40, -1, -1);
LABEL_34:
}

uint64_t sub_1C5BB9180(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = 0;
    v6 = *(result + 64);
    result += 64;
    v5 = v6;
    v7 = 1 << *(result - 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v5;
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_5:
      v9 &= v9 - 1;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        return result;
      }

      v9 = *(result + 8 * v11);
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C5BB927C()
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

unint64_t sub_1C5BB9304()
{
  result = qword_1EC19A730;
  if (!qword_1EC19A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A730);
  }

  return result;
}

unint64_t sub_1C5BB935C()
{
  result = qword_1EC19A738;
  if (!qword_1EC19A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A738);
  }

  return result;
}

unint64_t sub_1C5BB93B4()
{
  result = qword_1EC19A740;
  if (!qword_1EC19A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A740);
  }

  return result;
}

unint64_t sub_1C5BB940C()
{
  result = qword_1EC19A748;
  if (!qword_1EC19A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A748);
  }

  return result;
}

unint64_t sub_1C5BB9460()
{
  result = qword_1EC19A758;
  if (!qword_1EC19A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A758);
  }

  return result;
}

unint64_t sub_1C5BB94B4()
{
  result = qword_1EC19A768;
  if (!qword_1EC19A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A760);
    sub_1C5BB9808(&qword_1EC19A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A768);
  }

  return result;
}

uint64_t sub_1C5BB955C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A770);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_1C5BB9460();
  sub_1C5BCBFA4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A760);
    v9[7] = 0;
    sub_1C5BB9760();
    sub_1C5BCBCE4();
    v7 = v10;
    v9[6] = 1;
    sub_1C5BCBCC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1C5BB9760()
{
  result = qword_1EC19A778;
  if (!qword_1EC19A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A760);
    sub_1C5BB9808(&qword_1EC199768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A778);
  }

  return result;
}

uint64_t sub_1C5BB9808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193688);
    sub_1C5BB89C8(&qword_1EC199770, 255, type metadata accessor for MotionCacheEntry);
    sub_1C5BB89C8(&qword_1EC199778, 255, type metadata accessor for MotionCacheEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5BB98F8(uint64_t a1)
{
  v3 = *(sub_1C5BC7A24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1C592A748;

  return sub_1C5BB5F4C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

unint64_t sub_1C5BB9A78()
{
  result = qword_1EC19A780;
  if (!qword_1EC19A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A780);
  }

  return result;
}

unint64_t sub_1C5BB9AD0()
{
  result = qword_1EC19A788;
  if (!qword_1EC19A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A788);
  }

  return result;
}

unint64_t sub_1C5BB9B28()
{
  result = qword_1EC19A790;
  if (!qword_1EC19A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A790);
  }

  return result;
}

void sub_1C5BB9BA0(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image;
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image) = a1;
  v10 = a1;

  sub_1C5BB9CA8(0);
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E6979398]);
    v6 = v4;
    v7 = [v5 init];
    [v7 setOpaque_];
    [v7 setDrawsAsynchronously_];
    v8 = [v6 CGImage];
    [v7 setContents_];

    v9 = v7;
    sub_1C5BB9CA8(v7);
  }
}

void sub_1C5BB9CA8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer;
  v3 = *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer] = a1;
  v7 = a1;

  v4 = *&v1[v2];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v2];
    if (v5)
    {
      v6 = v5;
      [v1 addSublayer_];
    }
  }
}

void sub_1C5BB9D40()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_image];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI38NowPlayingArtworkMirrorReplicatorLayer_imageLayer];
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = v1;
      v5 = v2;
      [v3 begin];
      [v3 setDisableActions_];
      [v4 size];
      v8 = 0.0;
      if (v7 != 0.0)
      {
        v9 = fabs(v7);
        v10 = fmax(v9 * 2.22044605e-16, COERCE_DOUBLE(1));
        v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v9 > v10;
        v12 = v6 / v7;
        if (v11)
        {
          v8 = v12;
        }

        else
        {
          v8 = 0.0;
        }
      }

      [v0 bounds];
      v13 = (CGRectGetWidth(v19) + -48.0) / 0.58;
      v14 = v13 / v8;
      [v5 setAnchorPoint_];
      [v5 setBounds_];
      [v0 bounds];
      [v5 setPosition_];
      [v0 bounds];
      if (v14 >= CGRectGetHeight(v21))
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      [v0 setInstanceCount_];
      CATransform3DMakeTranslation(&v17, 0.0, v14, 0.0);
      CATransform3DScale(&v16, &v17, 1.0, -1.0, 1.0);
      CATransform3DTranslate(&v17, &v16, 0.0, -v14, 0.0);
      [v0 setInstanceTransform_];
      [v3 commit];
    }
  }
}

id sub_1C5BBA158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5BBA1D8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 52));
  *&v16[10] = *(v9 + 58);
  v10 = v9[3];
  v15[2] = v9[2];
  *v16 = v10;
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  if (v16[25])
  {
    v12 = v9[3];
    a2[2] = v9[2];
    a2[3] = v12;
    *(a2 + 57) = *(v9 + 57);
    v13 = v9[1];
    *a2 = *v9;
    a2[1] = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v15, &unk_1EC194DE0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C5BBA36C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  result = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {
    v9 = *v7;

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v9, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return result;
}

uint64_t NowPlayingQueuePlayingItem.init(controller:supplementary:)@<X0>(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingQueuePlayingItem();
  v5 = a2 + v4[13];
  *v5 = swift_getKeyPath();
  *(v5 + 73) = 0;
  v6 = a2 + v4[14];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = (a2 + v4[15]);
  _s5QueueCMa();
  sub_1C5BBE998(qword_1EDA4A0C0, _s5QueueCMa);
  v8 = sub_1C5BC8C84();
  *v7 = v8;
  v7[1] = v9;
  a1(v8, v9, v10, v11);
  return swift_unknownObjectRelease();
}

uint64_t NowPlayingQueuePlayingItem.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A7A8);
  v54 = a1;
  v53 = *(a1 + 24);
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v3 = sub_1C5BCA934();
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v49 - v4;
  WitnessTable = swift_getWitnessTable();
  v80 = MEMORY[0x1E6981E60];
  v81 = WitnessTable;
  v49[1] = WitnessTable;
  v82 = MEMORY[0x1E6981E60];
  v7 = swift_getWitnessTable();
  v75 = v3;
  v76 = MEMORY[0x1E69E6158];
  v77 = v7;
  v78 = MEMORY[0x1E69E6168];
  v8 = sub_1C5BCA724();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  v60 = v8;
  v11 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  v59 = v11;
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = v49 - v17;
  v57 = sub_1C5BCB804();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = v49 - v21;
  v78 = &type metadata for Features;
  v79 = sub_1C5A2E158();
  v22 = swift_allocObject();
  v75 = v22;
  *(v22 + 16) = "MediaCoreUI";
  *(v22 + 24) = 11;
  *(v22 + 32) = 2;
  *(v22 + 40) = "HoveringChapterPicker";
  *(v22 + 48) = 21;
  *(v22 + 56) = 2;
  v23 = sub_1C5BC7C14();
  v24 = __swift_destroy_boxed_opaque_existential_0(&v75);
  if (v23)
  {
    (*(v13 + 56))(v19, 1, 1, v12);
    v25 = swift_getWitnessTable();
    v26 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
    v64 = v25;
    v65 = v26;
    v27 = swift_getWitnessTable();
    v28 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
    v62 = v27;
    v63 = v28;
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v29 = v54;
    v30 = v53;
    v49[-6] = *(v54 + 16);
    v49[-5] = v30;
    *&v49[-4] = *(v29 + 32);
    v49[-2] = v55;
    sub_1C5BCA924();
    v75 = 0x657551664F706F74;
    v76 = 0xEA00000000006575;
    sub_1C5BCA1C4();
    (*(v52 + 8))(v5, v3);
    v75 = sub_1C5BCA484();
    v31 = v60;
    v32 = swift_getWitnessTable();
    sub_1C5AAB330(&v75, MEMORY[0x1E69815C0], v32, MEMORY[0x1E6981580], v15, 0.0, 0.0, 0.0, 0.0);

    (*(v51 + 8))(v10, v31);
    v33 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
    v73 = v32;
    v74 = v33;
    v34 = swift_getWitnessTable();
    v35 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
    v71 = v34;
    v72 = v35;
    v36 = swift_getWitnessTable();
    v37 = v50;
    sub_1C593EDC0(v15, v12, v36);
    v38 = *(v13 + 8);
    v38(v15, v12);
    sub_1C593EDC0(v37, v12, v36);
    v38(v37, v12);
    (*(v13 + 32))(v19, v15, v12);
    (*(v13 + 56))(v19, 0, 1, v12);
  }

  v39 = v56;
  sub_1C5941600(v19, v56);
  v40 = *(v58 + 8);
  v41 = v19;
  v42 = v57;
  v40(v41, v57);
  v43 = swift_getWitnessTable();
  v44 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  v69 = v43;
  v70 = v44;
  v45 = swift_getWitnessTable();
  v46 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  v67 = v45;
  v68 = v46;
  v66 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  sub_1C593EDC0(v39, v42, v47);
  return (v40)(v39, v42);
}

uint64_t sub_1C5BBAF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v122 = a6;
  v11 = sub_1C5BCB804();
  v12 = sub_1C5BC8AB4();
  v116 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v101 - v13;
  v117 = v14;
  v121 = sub_1C5BC8AB4();
  v118 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v101 - v17;
  v114 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v101 - v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A888);
  MEMORY[0x1EEE9AC00](v111);
  v104 = &v101 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A890);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v101 - v22;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A898);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v101 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8A8);
  v101 = *(v29 - 8);
  v102 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v101 - v32;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A7A8);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v125 = a5;
  v126 = &v101 - v35;
  v36 = a2;
  *&v146 = a2;
  v37 = a3;
  *(&v146 + 1) = a3;
  v38 = a4;
  *&v147 = a4;
  *(&v147 + 1) = a5;
  v39 = type metadata accessor for NowPlayingQueuePlayingItem();
  v40 = a1;
  sub_1C5BBA1D8(v39, &v156);
  if (BYTE2(v157) == 2)
  {
    v41 = v103;
    v42 = v114;
    (*(v103 + 16))(v20, a1, v114);
    v43 = (*(*(v37 - 8) + 48))(v20, 1, v37);
    (*(v41 + 8))(v20, v42);
    if (v43 == 1)
    {
      v44 = v104;
      (*(v101 + 56))(v104, 1, 1, v102);
    }

    else
    {
      sub_1C5BCAA54();
      sub_1C5BC85D4();
      LOBYTE(v144[0]) = 1;
      LOBYTE(v132[0]) = BYTE8(v146);
      LOBYTE(v136) = BYTE8(v147);
      *&v156 = 0;
      BYTE8(v156) = 1;
      *&v157 = v146;
      BYTE8(v157) = BYTE8(v146);
      *&v158 = v147;
      BYTE8(v158) = BYTE8(v147);
      v159 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1937A0);
      sub_1C5A0BAA0();
      v87 = v124;
      sub_1C5BCA094();
      v44 = v104;
      sub_1C59E7D34(v87, v104, &qword_1EC19A8A8);
      (*(v101 + 56))(v44, 0, 1, v102);
    }

    sub_1C59400B0(v44, v110, &qword_1EC19A888);
    swift_storeEnumTagMultiPayload();
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898);
    sub_1C5BBE858();
    sub_1C5BC92C4();
    sub_1C5924EF4(v44, &qword_1EC19A888);
    v86 = v125;
  }

  else
  {
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v135 = 1;
    v134 = v166;
    v133 = v168;
    *&v156 = 0;
    BYTE8(v156) = 1;
    *&v157 = v165;
    BYTE8(v157) = v166;
    *&v158 = v167;
    BYTE8(v158) = v168;
    v159 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1937A0);
    sub_1C5A0BAA0();
    sub_1C5BCA094();
    v45 = sub_1C5BCAA54();
    v47 = v46;
    v123 = v40;
    sub_1C5BBBD38(v40, v36, a3, v38, v125, &v136);
    v150 = v140;
    v151 = v141;
    v152 = v142;
    v153 = v143;
    v146 = v136;
    v147 = v137;
    v148 = v138;
    v149 = v139;
    v144[0] = v136;
    v144[1] = v137;
    v144[2] = v138;
    v144[3] = v139;
    v144[4] = v140;
    v144[5] = v141;
    v144[6] = v142;
    v144[7] = v143;
    *&v145 = v45;
    *(&v145 + 1) = v47;
    v162 = v142;
    v163 = v143;
    v158 = v138;
    v159 = v139;
    v160 = v140;
    v161 = v141;
    v156 = v136;
    v157 = v137;
    v164 = v145;
    v154 = v45;
    v155 = v47;
    sub_1C59400B0(v144, v132, &qword_1EC19A8B0);
    sub_1C5924EF4(&v146, &qword_1EC19A8B0);
    v48 = sub_1C5BCAA44();
    v50 = v49;
    v51 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8B8) + 36);
    v52 = v123;
    sub_1C5BBC17C(v123, a3, v51);
    v53 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8C0) + 36));
    *v53 = v48;
    v53[1] = v50;
    v54 = v159;
    v28[2] = v158;
    v28[3] = v54;
    v55 = v157;
    *v28 = v156;
    v28[1] = v55;
    v56 = v164;
    v28[7] = v163;
    v28[8] = v56;
    v57 = v162;
    v28[5] = v161;
    v28[6] = v57;
    v28[4] = v160;
    LOBYTE(v48) = sub_1C5BC98A4();
    sub_1C5BC8174();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8C8) + 36);
    *v66 = v48;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v63;
    *(v66 + 4) = v65;
    v66[40] = 0;
    LOBYTE(v48) = sub_1C5BC98E4();
    sub_1C5BC8174();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8D0) + 36);
    *v75 = v48;
    *(v75 + 1) = v68;
    *(v75 + 2) = v70;
    *(v75 + 3) = v72;
    *(v75 + 4) = v74;
    v75[40] = 0;
    v76 = sub_1C5BCAA54();
    v78 = v77;
    v79 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8D8) + 36);
    sub_1C5BBC4BC(v52, a3, v79);
    v80 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8E0) + 36));
    *v80 = v76;
    v80[1] = v78;
    v81 = v124;
    v82 = v105;
    sub_1C59400B0(v124, v105, &qword_1EC19A8A8);
    v83 = v106;
    sub_1C59400B0(v28, v106, &qword_1EC19A8A0);
    v84 = v107;
    sub_1C59400B0(v82, v107, &qword_1EC19A8A8);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A8E8);
    sub_1C59400B0(v83, v84 + *(v85 + 48), &qword_1EC19A8A0);
    sub_1C5924EF4(v83, &qword_1EC19A8A0);
    sub_1C5924EF4(v82, &qword_1EC19A8A8);
    sub_1C59400B0(v84, v110, &qword_1EC19A898);
    swift_storeEnumTagMultiPayload();
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898);
    sub_1C5BBE858();
    sub_1C5BC92C4();
    sub_1C5924EF4(v84, &qword_1EC19A898);
    sub_1C5924EF4(v28, &qword_1EC19A8A0);
    v86 = v125;
    sub_1C5924EF4(v81, &qword_1EC19A8A8);
  }

  sub_1C5BCAA54();
  v131 = v86;
  WitnessTable = swift_getWitnessTable();
  v88 = v115;
  sub_1C5BCA244();
  sub_1C5BC98E4();
  v129 = WitnessTable;
  v130 = MEMORY[0x1E697EBF8];
  v89 = v117;
  v90 = swift_getWitnessTable();
  v91 = v120;
  sub_1C5BCA2F4();
  (*(v116 + 8))(v88, v89);
  v127 = v90;
  v128 = MEMORY[0x1E697E5D8];
  v92 = v121;
  v93 = swift_getWitnessTable();
  v94 = v119;
  sub_1C593EDC0(v91, v92, v93);
  v95 = v118;
  v96 = *(v118 + 8);
  v96(v91, v92);
  v97 = v126;
  v98 = v113;
  sub_1C59400B0(v126, v113, qword_1EC19A7A8);
  *&v156 = v98;
  (*(v95 + 16))(v91, v94, v92);
  *(&v156 + 1) = v91;
  *&v144[0] = v112;
  *(&v144[0] + 1) = v92;
  v132[0] = sub_1C5BBE9E0();
  v132[1] = v93;
  sub_1C594226C(&v156, 2uLL, v144);
  v96(v94, v92);
  sub_1C5924EF4(v97, qword_1EC19A7A8);
  v96(v91, v92);
  return sub_1C5924EF4(v98, qword_1EC19A7A8);
}

double sub_1C5BBBD38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a2;
  v40 = a3;
  v43 = a2;
  v44 = a3;
  v41 = a5;
  v42 = a4;
  v45 = a4;
  v46 = a5;
  v8 = type metadata accessor for NowPlayingQueuePlayingItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v38 = sub_1C5BCA484();
  v37 = sub_1C5BBA36C(v8);
  v13 = sub_1C5BBEB74(v8);
  swift_beginAccess();
  if (*(v13 + 24) < 1)
  {
    v36 = 0;
  }

  else
  {
    v14 = sub_1C5BBEB74(v8);
    swift_beginAccess();
    v36 = *(v14 + 32);
  }

  v35 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v16 = v15;
  v18 = v17;
  v34 = *(v9 + 16);
  v34(v12, a1, v8);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v31 = a1;
  v32 = v12;
  v33 = v10;
  v22 = v39;
  v21 = v40;
  *(v20 + 2) = v39;
  *(v20 + 3) = v21;
  v23 = v41;
  *(v20 + 4) = v42;
  *(v20 + 5) = v23;
  v24 = *(v9 + 32);
  v24(&v20[v19], v12, v8);
  v34(v12, v31, v8);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  v27 = v41;
  *(v25 + 4) = v42;
  *(v25 + 5) = v27;
  v24(&v25[v19], v32, v8);
  *a6 = v38;
  *(a6 + 8) = 0x49676E6979616C70;
  *(a6 + 16) = 0xEB000000006D6574;
  *(a6 + 24) = v37;
  v28 = v36;
  *(a6 + 32) = v35;
  *(a6 + 40) = v16;
  *(a6 + 48) = v18;
  *(a6 + 56) = v28;
  *(a6 + 64) = sub_1C5BBEBF8;
  *(a6 + 72) = v20;
  result = 0.0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = sub_1C5BBED9C;
  *(a6 + 120) = v25;
  return result;
}

uint64_t sub_1C5BBBFF4()
{
  v0 = type metadata accessor for NowPlayingQueuePlayingItem();
  v1 = sub_1C5BBEB74(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  result = swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {

    return sub_1C5B3EC4C(v4, v1);
  }

  return result;
}

uint64_t sub_1C5BBC0A0()
{
  v0 = type metadata accessor for NowPlayingQueuePlayingItem();
  v1 = sub_1C5BBEB74(v0);
  result = swift_beginAccess();
  if (*(v1 + 24) >= 1)
  {
    v3 = sub_1C5BBEB74(v0);
    swift_getKeyPath();
    swift_getKeyPath();
    result = swift_beginAccess();
    v4 = *(v3 + 24);
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {

      return sub_1C5B3EC4C(v5, v3);
    }
  }

  return result;
}

uint64_t sub_1C5BBC17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A910);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-v8];
  v10 = sub_1C5BCB804();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  (*(v11 + 16))(&v25[-v13], a1, v10, v12);
  v15 = 1;
  LODWORD(a2) = (*(*(a2 - 8) + 48))(v14, 1, a2);
  (*(v11 + 8))(v14, v10);
  if (a2 != 1)
  {
    v16 = sub_1C5BC9404();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v27[6] = v28;
    *&v27[22] = v29;
    *&v27[38] = v30;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A918) + 36);
    v18 = *MEMORY[0x1E6981DA0];
    v19 = sub_1C5BCAB54();
    (*(*(v19 - 8) + 104))(&v9[v17], v18, v19);
    *v9 = v16;
    *(v9 + 1) = 1053609165;
    *(v9 + 4) = 256;
    v20 = *&v27[16];
    *(v9 + 10) = *v27;
    *(v9 + 26) = v20;
    *(v9 + 42) = *&v27[32];
    *(v9 + 7) = *&v27[46];
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A920) + 36)] = xmmword_1C5BF4C10;
    v25[7] = 0;
    sub_1C5BCA684();
    LOBYTE(v16) = v25[8];
    v21 = v26;
    KeyPath = swift_getKeyPath();
    v23 = &v9[*(v6 + 36)];
    *v23 = v16;
    *(v23 + 1) = v21;
    *(v23 + 2) = KeyPath;
    *(v23 + 4) = 0;
    *(v23 + 5) = 0;
    *(v23 + 3) = 0;
    v23[48] = 0;
    sub_1C59E7D34(v9, a3, &qword_1EC19A910);
    v15 = 0;
  }

  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t sub_1C5BBC4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a1;
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - v7;
  v9 = type metadata accessor for NowPlayingQueueBackground(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-1] - v14;
  v23[3] = &type metadata for Features;
  v23[4] = sub_1C5A2E158();
  v16 = swift_allocObject();
  v23[0] = v16;
  *(v16 + 16) = "MediaCoreUI";
  *(v16 + 24) = 11;
  *(v16 + 32) = 2;
  *(v16 + 40) = "HoveringChapterPicker";
  *(v16 + 48) = 21;
  *(v16 + 56) = 2;
  v17 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    (*(v6 + 16))(v8, v22, v5);
    v19 = (*(*(a2 - 8) + 48))(v8, 1, a2) == 1;
    (*(v6 + 8))(v8, v5);
    *v12 = 3;
    v12[8] = v19;
    *(v12 + 2) = swift_getKeyPath();
    v12[24] = 0;
    v20 = *(v9 + 28);
    *&v12[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
    swift_storeEnumTagMultiPayload();
    sub_1C5BBEA98(v12, v15, type metadata accessor for NowPlayingQueueBackground);
    sub_1C5BBEA98(v15, a3, type metadata accessor for NowPlayingQueueBackground);
    v18 = 0;
  }

  return (*(v10 + 56))(a3, v18, 1, v9);
}

void sub_1C5BBC7B8()
{
  sub_1C5BCB804();
  if (v0 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA467C8);
    if (v1 <= 0x3F)
    {
      sub_1C5933828(319, &qword_1EDA46730);
      if (v2 <= 0x3F)
      {
        sub_1C5AB422C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C5BBC890(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      v20 = v19 - 1;
      if (v20 < 0)
      {
        v20 = -1;
      }

      return (v20 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1C5BBCA1C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 97) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 97) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = a2 - 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void sub_1C5BBCCD0()
{
  type metadata accessor for UIRectCorner(319);
  if (v0 <= 0x3F)
  {
    sub_1C594CC0C();
    if (v1 <= 0x3F)
    {
      sub_1C594F100();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5BBCD74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_1C5BBCDD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5BBCE60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_1C5BC8F34();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NowPlayingHeaderBackgroundModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1C5BC90F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A878);
  MEMORY[0x1EEE9AC00](v39);
  v16 = (&v36 - v15);
  type metadata accessor for NowPlayingQueueBackground(0);
  sub_1C594C704(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697F600], v8);
  v17 = sub_1C5BC8274();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = objc_opt_self();
  v20 = &selRef_whiteColor;
  if ((v17 & 1) == 0)
  {
    v20 = &selRef_systemGray5Color;
  }

  v21 = [v19 *v20];
  v22 = sub_1C5BCA424();
  v23 = *(v2 + 8);
  v24 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    v25 = *(v2 + 16);
    if (v25 == 3)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v27 = v36;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v24, 0);
    (*(v37 + 8))(v27, v38);
    v25 = v42;
    if (v42 == 3)
    {
      goto LABEL_8;
    }
  }

  if (!v25)
  {
    v28 = 2.5;
    goto LABEL_9;
  }

LABEL_8:
  v28 = 0.0;
LABEL_9:
  v29 = *v2;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[5]) = v23;
  *(v7 + v5[6]) = 0xC030000000000000;
  *(v7 + v5[7]) = v28;
  *(v7 + v5[8]) = v29;
  sub_1C5BBEA98(v7, v16 + *(v39 + 36), type metadata accessor for NowPlayingHeaderBackgroundModifier);
  *v16 = v22;
  v41 = 0;
  sub_1C5BCA684();
  v30 = v42;
  v31 = v43;
  KeyPath = swift_getKeyPath();
  v33 = v40;
  sub_1C59E7D34(v16, v40, &qword_1EC19A878);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A880);
  v35 = v33 + *(result + 36);
  *v35 = v30;
  *(v35 + 8) = v31;
  *(v35 + 16) = KeyPath;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 24) = 0;
  *(v35 + 48) = 0;
  return result;
}

double sub_1C5BBD30C()
{
  v1 = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B08);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v19 - v2;
  v4 = sub_1C5BC8F34();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1C5BC90F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + *(type metadata accessor for NowPlayingHeaderBackgroundModifier(0) + 20));
  sub_1C59400B0(v1, v9, &qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v11 + 32);
    v14(v13, v9, v10);
  }

  else
  {
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v19 + 8))(v6, v20);
    v14 = *(v11 + 32);
  }

  v16 = *(v22 + 48);
  v14(&v3[v16], v13, v10);
  v17 = 0.0;
  if ((v21 & 1) == 0)
  {
    v17 = 0.5;
    if ((*(v11 + 88))(&v3[v16], v10) == *MEMORY[0x1E697F600])
    {
      return 0.08;
    }
  }

  (*(v11 + 8))(&v3[v16], v10);
  return v17;
}

uint64_t sub_1C5BBD668@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + a2[6]);
  v7 = *(v3 + a2[7]);
  v8 = *(v3 + a2[8]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A950);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A958) + 36);
  *v10 = 0;
  *(v10 + 8) = v6;
  *(v10 + 16) = 0;
  *(v10 + 24) = v7;
  *(v10 + 32) = v8;
  *(v10 + 40) = 0x4028000000000000;
  *(v10 + 48) = 256;
  v11 = sub_1C5BBD30C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A960);
  *(a3 + *(result + 36)) = v11;
  return result;
}

double sub_1C5BBD758@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = UIEdgeInsetsInsetRect(a2, a3, a4, a5, *v5, *(v5 + 8));
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v7 byRoundingCorners:v9 cornerRadii:{v10, v11, v12, v8, v8}];
  v14 = [v13 CGPath];

  sub_1C5BC9B24();
  result = *&v16;
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  return result;
}

void (*sub_1C5BBD840(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5BBD8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5BBD92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5BBD990(uint64_t a1)
{
  v2 = sub_1C5BBF2FC();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5BBD9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29.i64[0] = sub_1C5BC8F34();
  v4 = *(v29.i64[0] - 8);
  MEMORY[0x1EEE9AC00](v29.i64[0]);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A840);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A848);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = v2[1];
  v35 = *v2;
  v36 = v14;
  v37 = v2[2];
  v38 = *(v2 + 48);
  v33[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  if (v39[0])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A850);
  (*(*(v16 - 8) + 16))(v10, a1, v16);
  *&v10[*(v8 + 44)] = v15;
  v17 = swift_allocObject();
  v18 = v36;
  *(v17 + 16) = v35;
  *(v17 + 32) = v18;
  *(v17 + 48) = v37;
  *(v17 + 64) = v38;
  sub_1C59E7D34(v10, v13, &qword_1EC19A840);
  v19 = &v13[*(v11 + 36)];
  *v19 = sub_1C5BBE594;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v40 = v38;
  *v39 = v36;
  *&v39[16] = v37;
  v20 = v36;
  if (v38 == 1)
  {
    *v34 = v36;
    v29 = *&v39[8];
    *&v34[8] = *&v39[8];
    *&v34[24] = *&v39[24];
    v28 = *&v39[16];
    sub_1C5BBE59C(&v35, v33);
    sub_1C59400B0(v39, v33, &qword_1EC19A858);
    v21 = v28;
    v22.i64[0] = v20;
    v23 = vzip1q_s64(v22, v29);
  }

  else
  {
    sub_1C5BBE59C(&v35, v33);
    sub_1C59400B0(v39, v33, &qword_1EC19A858);
    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v39, &qword_1EC19A858);
    (*(v4 + 8))(v6, v29.i64[0]);
    v23 = *v34;
    v21 = *&v34[16];
  }

  v31 = v23;
  v32 = v21;
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 16) = v35;
  *(v25 + 32) = v26;
  *(v25 + 48) = v37;
  *(v25 + 64) = v38;
  sub_1C5BBE59C(&v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194470);
  sub_1C5BBE624();
  sub_1C5AB32B4();
  sub_1C5BCA344();

  sub_1C593E820(v31.i64[0], v31.i64[1]);
  return sub_1C5924EF4(v13, &qword_1EC19A848);
}

uint64_t sub_1C5BBDEA0(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 48);
  v6 = *(a1 + 32);
  *v17 = *(a1 + 16);
  *&v17[16] = v6;
  if (v18 == 1)
  {
    v14 = *v17;
    v12[0] = *&v17[8];
    v15 = *&v17[8];
    v16 = *&v17[24];
    sub_1C59400B0(v17, v13, &qword_1EC19A858);
    v7 = *&v12[0];
    if (*&v12[0] != 1)
    {
LABEL_3:
      sub_1C593E820(v14, v7);
      sub_1C5BCAA84();
      v8 = sub_1C5BCAAB4();

      MEMORY[0x1EEE9AC00](v9);
      *&v12[-1] = a1;
      sub_1C596D96C(v8, 1);
    }
  }

  else
  {
    sub_1C59400B0(v17, v13, &qword_1EC19A858);
    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v17, &qword_1EC19A858);
    (*(v3 + 8))(v5, v2);
    v7 = v15;
    if (v15 != 1)
    {
      goto LABEL_3;
    }
  }

  v13[0] = *a1;
  LOBYTE(v14) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5BBE154(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v30[0] = *(a1 + 16);
  v30[1] = v6;
  v31 = *(a1 + 48);
  v8 = *(&v30[0] + 1);
  v7 = *&v30[0];
  v10 = *(&v6 + 1);
  v9 = v6;
  v11 = v31;
  if (v31 != 1)
  {
    v26 = v6;
    sub_1C59400B0(v30, v27, &qword_1EC19A858);
    sub_1C5BCB4E4();
    v14 = v7;
    v15 = v2;
    v16 = v3;
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v3 = v16;
    v2 = v15;
    v7 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v9 = v26;
    sub_1C5924EF4(v30, &qword_1EC19A858);
    result = (*(v3 + 8))(v5, v2);
    v13 = *(&v28 + 1);
    if (*(&v28 + 1) == 1)
    {
      return result;
    }

LABEL_5:
    sub_1C593E820(v28, v13);
    v27[3] = &type metadata for Features;
    v27[4] = sub_1C5A2E158();
    v18 = swift_allocObject();
    v27[0] = v18;
    *(v18 + 16) = "MediaCoreUI";
    *(v18 + 24) = 11;
    *(v18 + 32) = 2;
    *(v18 + 40) = "HoveringChapterPicker";
    *(v18 + 48) = 21;
    *(v18 + 56) = 2;
    v19 = sub_1C5BC7C14();
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (v19)
    {
      if (v11)
      {
        *&v28 = v7;
        *(&v28 + 1) = v8;
        *&v29 = v9;
        *(&v29 + 1) = v10;
        sub_1C59400B0(v30, v27, &qword_1EC19A858);
        if (v8 == 1)
        {
          goto LABEL_12;
        }

LABEL_10:
        v21 = *(&v29 + 1);
        v22 = v28;

        sub_1C593E820(v22, v8);
        if (v21)
        {
        }

        goto LABEL_12;
      }

      sub_1C59400B0(v30, v27, &qword_1EC19A858);
      sub_1C5BCB4E4();
      v20 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v30, &qword_1EC19A858);
      (*(v3 + 8))(v5, v2);
      v8 = *(&v28 + 1);
      if (*(&v28 + 1) != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    sub_1C5BCAA84();
    v23 = sub_1C5BCAAB4();

    MEMORY[0x1EEE9AC00](v24);
    *(&v25 - 2) = a1;
    sub_1C596D96C(v23, 1);
  }

  v28 = v30[0];
  v29 = v6;
  result = sub_1C59400B0(v30, v27, &qword_1EC19A858);
  v13 = v8;
  if (v8 != 1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t objectdestroy_23Tm_0()
{

  sub_1C596AC4C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_1C5BBE624()
{
  result = qword_1EC19A860;
  if (!qword_1EC19A860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A848);
    sub_1C5BBE6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A860);
  }

  return result;
}

unint64_t sub_1C5BBE6B0()
{
  result = qword_1EC19A868;
  if (!qword_1EC19A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A840);
    sub_1C5924F54(&qword_1EC19A870, &qword_1EC19A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A868);
  }

  return result;
}

uint64_t sub_1C5BBE820()
{
  result = _UISolariumEnabled();
  v1 = 60.0;
  if (result)
  {
    v1 = 72.0;
  }

  qword_1EC1A6E68 = *&v1;
  return result;
}

unint64_t sub_1C5BBE858()
{
  result = qword_1EC19A8F8;
  if (!qword_1EC19A8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A888);
    sub_1C5BBE8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A8F8);
  }

  return result;
}

unint64_t sub_1C5BBE8DC()
{
  result = qword_1EC19A900;
  if (!qword_1EC19A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A8A8);
    sub_1C5A0BAA0();
    sub_1C5BBE998(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A900);
  }

  return result;
}

uint64_t sub_1C5BBE998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5BBE9E0()
{
  result = qword_1EC19A908;
  if (!qword_1EC19A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A7A8);
    sub_1C5924F54(&qword_1EC19A8F0, &qword_1EC19A898);
    sub_1C5BBE858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A908);
  }

  return result;
}

uint64_t sub_1C5BBEA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5BBEB00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5B3EC4C(v2, v3);
}

uint64_t sub_1C5BBEB74(uint64_t a1)
{
  result = *(v1 + *(a1 + 60));
  if (!result)
  {
    _s5QueueCMa();
    sub_1C5BBE998(qword_1EDA4A0C0, _s5QueueCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  v7 = *(v0 + 24);
  v1 = type metadata accessor for NowPlayingQueuePlayingItem();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = *(v7 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v7))
  {
    (*(v4 + 8))(v0 + v2, v7);
  }

  v5 = v3 + *(v1 + 52);
  sub_1C596AC80(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 73));
  sub_1C5942458(*(v3 + *(v1 + 56)), *(v3 + *(v1 + 56) + 8));

  return swift_deallocObject();
}

uint64_t sub_1C5BBEDB4(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for NowPlayingQueuePlayingItem() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_1C5BBEE8C()
{
  sub_1C594F100();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIRectCorner(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5BBEF24()
{
  result = qword_1EC19A938;
  if (!qword_1EC19A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A880);
    sub_1C5BBEFB0();
    sub_1C5AF87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A938);
  }

  return result;
}

unint64_t sub_1C5BBEFB0()
{
  result = qword_1EC19A940;
  if (!qword_1EC19A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A878);
    sub_1C5BBE998(&qword_1EC19A948, type metadata accessor for NowPlayingHeaderBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A940);
  }

  return result;
}

unint64_t sub_1C5BBF098()
{
  result = qword_1EC19A968;
  if (!qword_1EC19A968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A960);
    sub_1C5BBF124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A968);
  }

  return result;
}

unint64_t sub_1C5BBF124()
{
  result = qword_1EC19A970;
  if (!qword_1EC19A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A958);
    sub_1C5924F54(&qword_1EC19A978, &qword_1EC19A950);
    sub_1C5924F54(&qword_1EC19A980, &qword_1EC19A988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A970);
  }

  return result;
}

unint64_t sub_1C5BBF250()
{
  result = qword_1EC19A9A0;
  if (!qword_1EC19A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9A0);
  }

  return result;
}

unint64_t sub_1C5BBF2A8()
{
  result = qword_1EC19A9A8;
  if (!qword_1EC19A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9A8);
  }

  return result;
}

unint64_t sub_1C5BBF2FC()
{
  result = qword_1EC19A9B0;
  if (!qword_1EC19A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19A9B0);
  }

  return result;
}

uint64_t sub_1C5BBF350()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t MCUINamespace<A>.toast<A, B>(_:alignment:inset:toastView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v25 = a8;
  v23 = a9;
  v24 = a6;
  v17 = *(*a1 + 88);
  v26 = *(*a1 + 80);
  v27 = a7;
  v28 = v17;
  v29 = a11;
  v18 = type metadata accessor for ToastViewModifier();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;

  sub_1C5BBF564(a1, a2, a3, a4, a5, v21, a10);
  MEMORY[0x1C694E550](v21, *(v24 + 16), v18, v25);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_1C5BBF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  sub_1C5BCA684();
  *(a6 + 48) = v9;
  *(a6 + 56) = v10;
  type metadata accessor for ToastViewModifier();
  return sub_1C5BC9454();
}

void sub_1C5BBF62C()
{
  type metadata accessor for ToastManager();
  if (v0 <= 0x3F)
  {
    sub_1C5927B74();
    if (v1 <= 0x3F)
    {
      sub_1C5BBF728();
      if (v2 <= 0x3F)
      {
        sub_1C5BBF778();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C5BBF728()
{
  if (!qword_1EDA45FE0)
  {
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FE0);
    }
  }
}

void sub_1C5BBF778()
{
  if (!qword_1EC19AA40)
  {
    v0 = sub_1C5BC9464();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC19AA40);
    }
  }
}

uint64_t sub_1C5BBF814@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v178 = a1;
  v179 = a3;
  swift_getWitnessTable();
  v4 = sub_1C5BC9394();
  v5 = a2[2];
  v6 = a2[4];
  v173 = v4;
  v214 = v4;
  v215 = type metadata accessor for ToastManager();
  v172 = v215;
  WitnessTable = swift_getWitnessTable();
  v216 = WitnessTable;
  v217 = swift_getWitnessTable();
  v175 = v217;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v174 = &v131 - v7;
  v188 = a2;
  *&v183 = a2[3];
  v8 = v183;
  v193 = v6;
  v180 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v184 = a2[5];
  v10 = v184;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v214 = v8;
  v215 = AssociatedTypeWitness;
  v216 = v10;
  v217 = AssociatedConformanceWitness;
  v12 = sub_1C5BCA724();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA48);
  v14 = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48);
  v214 = v12;
  v215 = v13;
  v216 = v14;
  v217 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v214 = v12;
  v215 = v13;
  v216 = v14;
  v217 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v214 = v16;
  v215 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v214 = v16;
  v215 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v214 = v18;
  v215 = v19;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1C5BCB804();
  v214 = v18;
  v215 = v19;
  v213 = swift_getOpaqueTypeConformance2();
  v150 = v20;
  v181 = swift_getWitnessTable();
  v165 = sub_1C5BCA7D4();
  v182 = sub_1C5BC8AB4();
  v21 = sub_1C5BC8AB4();
  v192 = AssociatedTypeWitness;
  v22 = sub_1C5BCB804();
  v149 = swift_getWitnessTable();
  v211 = v149;
  v212 = MEMORY[0x1E697EBF8];
  v148 = swift_getWitnessTable();
  v209 = v148;
  v210 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v208 = *(AssociatedConformanceWitness + 8);
  v24 = swift_getWitnessTable();
  v214 = v21;
  v215 = v22;
  v155 = v21;
  v216 = v23;
  v217 = v24;
  v185 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A70);
  v25 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v186 = v25;
  v26 = sub_1C5BC8AB4();
  v27 = sub_1C5BC8AB4();
  sub_1C5BC9074();
  v187 = v27;
  v191 = sub_1C5BC8AB4();
  v214 = v21;
  v215 = v22;
  v154 = v23;
  v216 = v23;
  v217 = v24;
  v189 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70);
  v152 = v28;
  v206 = v28;
  v207 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v161 = v30;
  v204 = v30;
  v205 = v31;
  v32 = v26;
  v162 = swift_getWitnessTable();
  v202 = v162;
  v203 = MEMORY[0x1E697E070];
  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v164 = v33;
  v200 = v33;
  v201 = v34;
  v35 = v191;
  v166 = swift_getWitnessTable();
  v167 = sub_1C5BC8BE4();
  v171 = sub_1C5BC8AB4();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v169 = &v131 - v38;
  v147 = sub_1C5BC8C34();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = *(v188 - 1);
  MEMORY[0x1EEE9AC00](v40);
  v138 = v41;
  v139 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v180;
  v159 = sub_1C5BCB804();
  v156 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v136 = &v131 - v45;
  v190 = v22;
  v160 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v157 = &v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v137 = &v131 - v49;
  v131 = swift_checkMetadataState();
  v50 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v52 = &v131 - v51;
  v53 = swift_checkMetadataState();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v131 - v55;
  v135 = swift_checkMetadataState();
  v133 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v58 = &v131 - v57;
  v134 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v132 = &v131 - v60;
  v142 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v141 = &v131 - v62;
  v165 = v32;
  v145 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v143 = &v131 - v64;
  v151 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v182 = &v131 - v66;
  v155 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v153 = &v131 - v68;
  *&v69 = v42;
  v70 = v42;
  *(&v69 + 1) = v183;
  *&v71 = v193;
  *(&v71 + 1) = v184;
  v183 = v71;
  v196 = v71;
  v184 = v69;
  v195 = v69;
  v72 = v163;
  v197 = v163;
  sub_1C5BC9134();
  swift_checkMetadataState();
  v73 = 1;
  sub_1C5BCA7C4();
  v74 = v72[1];
  v75 = v131;
  v149 = v72[2];
  v150 = v74;
  sub_1C5BCA244();
  (*(v50 + 8))(v52, v75);
  sub_1C5BCA2D4();
  v76 = v56;
  v77 = v136;
  (*(v54 + 8))(v76, v53);
  v78 = v72;
  v181 = *v72;
  ToastManager.toast.getter(v77);
  v79 = *(v70 - 8);
  v148 = *(v79 + 48);
  v80 = v148(v77, 1, v70);
  v131 = v79;
  if (v80 == 1)
  {
    v81 = v156;
    v82 = v159;
    v83 = v137;
  }

  else
  {
    v84 = v137;
    sub_1C5BCBAA4();
    v73 = 0;
    v81 = v79;
    v82 = v70;
    v83 = v84;
  }

  (*(v81 + 8))(v77, v82);
  v85 = *(v192 - 8);
  v137 = *(v85 + 56);
  v136 = (v85 + 56);
  (v137)(v83, v73, 1);
  v86 = v140;
  v87 = v139;
  v88 = v78;
  v89 = v78;
  v90 = v188;
  (*(v140 + 16))(v139, v89, v188);
  v91 = (*(v86 + 80) + 48) & ~*(v86 + 80);
  v92 = swift_allocObject();
  v93 = v183;
  *(v92 + 16) = v184;
  *(v92 + 32) = v93;
  (*(v86 + 32))(v92 + v91, v87, v90);
  v94 = v132;
  v95 = v135;
  v96 = v190;
  sub_1C5BCA334();

  v97 = *(v160 + 8);
  v97(v83, v96);
  (*(v133 + 8))(v58, v95);
  v98 = v144;
  sub_1C5BC8C24();
  v99 = v141;
  v100 = v185;
  sub_1C5BBF350();
  (*(v146 + 8))(v98, v147);
  (*(v134 + 8))(v94, v100);
  sub_1C5BC8634();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BCABD4();
  sub_1C5BC8614();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BCABD4();
  sub_1C5BC8614();
  sub_1C5BCAAA4();
  sub_1C5BC8664();

  sub_1C5BC85F4();

  sub_1C5BC8644();

  v101 = v143;
  v102 = v186;
  sub_1C5BC9D74();

  (*(v142 + 8))(v99, v102);
  v103 = v88[7];
  v214 = v88[6];
  v215 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  sub_1C5BCABD4();
  v104 = v165;
  sub_1C5BC9E54();
  (*(v145 + 8))(v101, v104);
  sub_1C5BCAAA4();
  sub_1C5BCAAB4();

  v105 = v158;
  ToastManager.toast.getter(v158);
  v106 = v180;
  if (v148(v105, 1, v180) == 1)
  {
    v107 = v159;
    v108 = v157;
    v109 = v156;
    v110 = 1;
  }

  else
  {
    v108 = v157;
    sub_1C5BCBAA4();
    v110 = 0;
    v109 = v131;
    v107 = v106;
  }

  (*(v109 + 8))(v105, v107);
  (v137)(v108, v110, 1, v192);
  v111 = v153;
  v112 = v187;
  v113 = v190;
  v114 = v182;
  sub_1C5BCA384();

  v97(v108, v113);
  (*(v151 + 8))(v114, v112);
  v115 = swift_checkMetadataState();
  v116 = swift_checkMetadataState();
  v117 = v174;
  v118 = WitnessTable;
  v119 = v175;
  v120 = sub_1C5BC9DE4();
  MEMORY[0x1EEE9AC00](v120);
  v214 = v115;
  v215 = v116;
  v216 = v118;
  v217 = v119;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v168;
  v123 = OpaqueTypeMetadata2;
  v124 = v191;
  sub_1C5BCA2C4();
  (*(v177 + 8))(v117, v123);
  v125 = swift_getWitnessTable();
  v198 = v121;
  v199 = v125;
  v126 = v171;
  v127 = swift_getWitnessTable();
  v128 = v169;
  sub_1C593EDC0(v122, v126, v127);
  v129 = *(v170 + 8);
  v129(v122, v126);
  sub_1C593EDC0(v128, v126, v127);
  v129(v128, v126);
  return (*(v155 + 8))(v111, v124);
}

uint64_t sub_1C5BC1094@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v136 = a6;
  v137 = a1;
  v115 = sub_1C5BC96A4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v93 - v13;
  v14 = sub_1C5BC89B4();
  v131 = *(v14 - 8);
  v132 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA48);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v93 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v118 = &v93 - v21;
  v119 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v133 = a3;
  v140 = a3;
  v141 = AssociatedTypeWitness;
  v121 = AssociatedTypeWitness;
  v135 = a5;
  v142 = a5;
  v143 = AssociatedConformanceWitness;
  v116 = AssociatedConformanceWitness;
  v25 = sub_1C5BCA724();
  v106 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v93 - v26;
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48);
  v140 = v25;
  v141 = v18;
  v142 = WitnessTable;
  v143 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v98 = &v93 - v30;
  v107 = v25;
  v140 = v25;
  v141 = v18;
  v109 = v18;
  v100 = WitnessTable;
  v142 = WitnessTable;
  v143 = v28;
  v97 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = OpaqueTypeMetadata2;
  v141 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeMetadata2();
  v105 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v101 = &v93 - v33;
  v103 = OpaqueTypeMetadata2;
  v140 = OpaqueTypeMetadata2;
  v141 = OpaqueTypeConformance2;
  v96 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v140 = v32;
  v141 = v34;
  v138 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v128 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v104 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v99 = &v93 - v38;
  v39 = a2;
  v40 = sub_1C5BCB804();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v93 - v42;
  v44 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v45);
  v124 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C5BCB804();
  v129 = *(v47 - 8);
  v130 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v127 = &v93 - v51;
  v52 = v137;
  ToastManager.toast.getter(v43);
  v125 = v44;
  if ((*(v44 + 48))(v43, 1, v39) == 1)
  {
    (*(v41 + 8))(v43, v40);
    (*(v128 + 56))(v49, 1, 1, v35);
    v140 = v32;
    v141 = v138;
    swift_getOpaqueTypeConformance2();
    v53 = v49;
LABEL_5:
    v88 = v127;
    sub_1C5941600(v53, v127);
    v89 = *(v129 + 8);
    v90 = v53;
    v91 = v130;
    v89(v90, v130);
    v140 = v32;
    v141 = v138;
    v139 = swift_getOpaqueTypeConformance2();
    v92 = swift_getWitnessTable();
    sub_1C593EDC0(v88, v91, v92);
    return (v89)(v88, v91);
  }

  v93 = v49;
  v94 = v35;
  v95 = v32;
  v54 = v124;
  v55 = v39;
  (*(v125 + 32))(v124, v43, v39);
  v56 = v117;
  (*(v52 + 32))(v54);
  v57 = v118;
  sub_1C5BCBAA4();
  v58 = v133;
  v59 = v121;
  sub_1C5BCA1C4();
  (*(v120 + 8))(v57, v59);
  (*(v119 + 8))(v56, v58);
  v60 = v132;
  v61 = *(v131 + 104);
  v62 = v122;
  v61(v122, *MEMORY[0x1E697E718], v132);
  v63 = v123;
  v61(v123, *MEMORY[0x1E697E6C8], v60);
  sub_1C5BC2B64();
  result = sub_1C5BCAD94();
  if (result)
  {
    v65 = v131;
    v66 = v132;
    v67 = *(v131 + 32);
    v68 = v110;
    v67(v110, v62, v132);
    v69 = v112;
    v67((v68 + *(v112 + 48)), v63, v66);
    v70 = v111;
    sub_1C5BC2BBC(v68, v111);
    v71 = *(v69 + 48);
    v72 = v108;
    v67(v108, v70, v66);
    v123 = v55;
    v73 = *(v65 + 8);
    v73(v70 + v71, v66);
    sub_1C5BC2C2C(v68, v70);
    v67((v72 + *(v109 + 36)), (v70 + *(v69 + 48)), v66);
    v73(v70, v66);
    v74 = v138;
    v75 = v98;
    v76 = v107;
    v77 = v126;
    sub_1C5BC9F54();
    sub_1C5BC2C9C(v72);
    (*(v106 + 8))(v77, v76);
    v78 = v113;
    sub_1C5BC9684();
    v79 = v101;
    v80 = v103;
    sub_1C5BCA0C4();
    (*(v114 + 8))(v78, v115);
    (*(v102 + 8))(v75, v80);
    v81 = v123;
    v140 = v123;
    v141 = v133;
    v142 = v134;
    v143 = v135;
    type metadata accessor for ToastViewModifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8);
    sub_1C5BC9444();
    v82 = v104;
    v32 = v95;
    sub_1C5BCA0D4();

    (*(v105 + 8))(v79, v32);
    (*(v125 + 8))(v124, v81);
    v140 = v32;
    v141 = v74;
    v83 = swift_getOpaqueTypeConformance2();
    v84 = v99;
    v85 = v94;
    sub_1C593EDC0(v82, v94, v83);
    v86 = v128;
    v87 = *(v128 + 8);
    v87(v82, v85);
    sub_1C593EDC0(v84, v85, v83);
    v87(v84, v85);
    v53 = v93;
    (*(v86 + 32))(v93, v82, v85);
    (*(v86 + 56))(v53, 0, 1, v85);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5BC1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = sub_1C5BCB804();
  v21 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1C5BCB804();
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v21 - v14;
  sub_1C5BCAAA4();
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a3;
  sub_1C5BC87F4();

  sub_1C5BCAAA4();
  sub_1C5BCAAB4();

  v29 = a4;
  v30 = a5;
  v26 = a5;
  v31 = a6;
  v32 = a7;
  v27 = a7;
  v33 = a3;
  sub_1C5BC87F4();

  v28 = a3;
  ToastManager.toast.getter(v13);
  v16 = *(a4 - 8);
  v17 = 1;
  v18 = (*(v16 + 48))(v13, 1, a4);
  if (v18 == 1)
  {
    v19 = v22;
    v16 = v21;
  }

  else
  {
    sub_1C5BCBAA4();
    v17 = 0;
    v19 = a4;
  }

  (*(v16 + 8))(v13, v19);
  (*(*(AssociatedTypeWitness - 8) + 56))(v15, v17, 1);
  (*(v23 + 8))(v15, v24);
  v39 = a4;
  v40 = v26;
  v41 = a6;
  v42 = v27;
  type metadata accessor for ToastViewModifier();
  LOBYTE(v39) = v18 != 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8);
  return sub_1C5BC9434();
}

uint64_t sub_1C5BC2328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C5BCA724();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA48);
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48);
  swift_getOpaqueTypeMetadata2();
  v40 = WitnessTable;
  v41 = v4;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BCB804();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  v7 = sub_1C5BC8AB4();
  v8 = sub_1C5BCB804();
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E697EBF8];
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E697E5D8];
  v21[1] = v7;
  v21[0] = swift_getWitnessTable();
  v32 = *(AssociatedConformanceWitness + 8);
  v38 = v7;
  v39 = v8;
  v40 = v21[0];
  v41 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A70);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v21[2] = sub_1C5BC9074();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  v38 = v7;
  v39 = v8;
  v40 = v21[0];
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70);
  v30 = v13;
  v31 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v28 = v15;
  v29 = v16;
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E697E070];
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v24 = v17;
  v25 = v18;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v22, v9, v19);
  sub_1C593EDC0(v12, v9, v19);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1C5BC28EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ToastViewModifier() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1C5BC1F4C(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1C5BC29FC(uint64_t a1)
{
  v2 = sub_1C5BC8C34();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C5BC8DC4();
}

unint64_t sub_1C5BC2B64()
{
  result = qword_1EC1964B8;
  if (!qword_1EC1964B8)
  {
    sub_1C5BC89B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1964B8);
  }

  return result;
}

uint64_t sub_1C5BC2BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BC2C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5BC2C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MCUINamespace<A>.motionLoggingContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v5, v7);
  swift_getKeyPath();
  if (a2)
  {
    v13 = v4;
    v14 = a2;

    v4 = sub_1C5BCAEA4();
  }

  else
  {
    v11 = 0;
  }

  v13 = v4;
  v14 = v11;
  sub_1C5BC9DF4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t View.motionLoggingContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MCUINamespace();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  View.mcui.getter(a3, &v11 - v8);
  MCUINamespace<A>.motionLoggingContext(_:)(a1, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C5BC2F78()
{
  sub_1C5B6D5E4();

  return sub_1C5BC8F44();
}

void sub_1C5BC2FC0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 35.0;
  if (v1 != 2)
  {
    v2 = 16.0;
  }

  if (v1 == 6)
  {
    v2 = 26.0;
  }

  *&xmmword_1EDA5DB50 = v2;
  *(&xmmword_1EDA5DB50 + 1) = v2;
}

uint64_t WaveformSize.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

uint64_t WaveformSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1C69501C0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1C69501C0](*&v4);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BC3148()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  sub_1C5BC37A0(v1, v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5BC31A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  sub_1C5BC37A0(v1, v2);
  return sub_1C5BCBF94();
}

double sub_1C5BC31F4@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA4DAE0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDA5DB50;
  *a1 = xmmword_1EDA5DB50;
  return result;
}

uint64_t sub_1C5BC3258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC3858();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t MCUINamespace<A>.waveformSize(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60);
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  if (a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  v21[0] = v15;
  v21[1] = v15;
  v22 = a2 & 1;
  MCUINamespace<A>.waveformSize(_:)(v21, a3, a4, v11);
  v16 = sub_1C5BC37F0();
  v20[1] = a4;
  v20[2] = v16;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, WitnessTable);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1C593EDC0(v14, v8, WitnessTable);
  return (v18)(v14, v8);
}

uint64_t MCUINamespace<A>.waveformSize(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = a1;
  v26[1] = a4;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60);
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - v18;
  v20 = *v7;
  v21 = v7[1];
  LODWORD(v7) = *(v7 + 16);
  (*(v9 + 16))(v11, v5, v8, v17);
  swift_getKeyPath();
  if (v7 == 1)
  {
    if (qword_1EDA4DAE0 != -1)
    {
      swift_once();
    }

    v21 = *(&xmmword_1EDA5DB50 + 1);
    v20 = xmmword_1EDA5DB50;
  }

  v26[4] = v20;
  v26[5] = v21;
  sub_1C5BC9DF4();

  (*(v9 + 8))(v11, v8);
  v22 = sub_1C5BC37F0();
  v26[2] = a3;
  v26[3] = v22;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v15, v12, WitnessTable);
  v24 = *(v13 + 8);
  v24(v15, v12);
  sub_1C593EDC0(v19, v12, WitnessTable);
  return (v24)(v19, v12);
}

double static WaveformSize.app.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA4DAE0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1EDA5DB50;
  *a1 = xmmword_1EDA5DB50;
  return result;
}

__n128 static WaveformSize.liveActivity.getter@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #22.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1C5BC37A0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

unint64_t sub_1C5BC37F0()
{
  result = qword_1EC19AA68;
  if (!qword_1EC19AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA68);
  }

  return result;
}

unint64_t sub_1C5BC3858()
{
  result = qword_1EC19AA70;
  if (!qword_1EC19AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA70);
  }

  return result;
}

uint64_t sub_1C5BC38F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C5BCB934();
    v5 = v4;
    v6 = sub_1C5BCB9E4();
    v8 = v7;
    v9 = MEMORY[0x1C694FB90](v3, v5, v6, v7);
    sub_1C5BC6590(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C5BC6590(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C5BCB904();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C5BC6228(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C5BC6590(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1C5BC3A0C@<X0>(uint64_t a1@<X8>)
{
  sub_1C5BC8894();
  sub_1C5BAC158();
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  if (v9[4] == v9[0])
  {
    v2 = sub_1C5BC8744();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_1C5BCB484();
    v6 = v5;
    v7 = sub_1C5BC8744();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t MCUINamespace<A>.snapshot()()
{
  v0[2] = sub_1C5BCB1E4();
  v0[3] = sub_1C5BCB1D4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C5BC3C20;

  return sub_1C5BC3E6C();
}

uint64_t sub_1C5BC3C20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1C5BCB194();
    v7 = v6;
    v8 = sub_1C5BC3E08;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1C5BCB194();
    v7 = v9;
    v8 = sub_1C5BC3DA0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1C5BC3DA0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1C5BC3E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5BC3E6C()
{
  v1[80] = v0;
  v1[81] = sub_1C5BCB1E4();
  v1[82] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();
  v1[83] = v3;
  v1[84] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5BC3F0C, v3, v2);
}

uint64_t sub_1C5BC3F0C()
{
  v1 = objc_opt_self();
  [v1 commit];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_1C592535C(0, &qword_1EDA45D90);
  sub_1C5BC616C();
  v4 = sub_1C5BCB364();

  v5 = sub_1C5BC38F0(v4);
  *(v0 + 680) = v5;

  if (!v5)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_11:

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 640);
    v72 = sub_1C5BC7D64();
    __swift_project_value_buffer(v72, qword_1EDA46970);
    v73 = v71;
    v74 = sub_1C5BC7D44();
    v75 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v0 + 640);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v76;
      *v78 = v76;
      v79 = v76;
      _os_log_impl(&dword_1C5922000, v74, v75, "No window scene, couldn't snapshot layer %@", v77, 0xCu);
      sub_1C5924EF4(v78, &unk_1EC196F30);
      MEMORY[0x1C69510F0](v78, -1, -1);
      MEMORY[0x1C69510F0](v77, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v80 = 4;
    swift_willThrow();
    goto LABEL_27;
  }

  v7 = v6;
  v8 = *(v0 + 640);
  [v1 begin];
  [v8 bounds];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + 688) = v13;
  v14 = [v13 layer];
  [v14 addSublayer_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
  *(v0 + 696) = v15;
  [v15 setWindowLevel_];
  v16 = v15;
  [v16 addSubview_];
  [v16 setAlpha_];
  [v16 setHidden_];

  [v1 commit];
  v17 = [objc_opt_self() mainScreen];
  *(v0 + 704) = v17;
  [v17 scale];
  v19 = v18;
  [v8 position];
  v21 = v19 * v20;
  [v8 position];
  [v8 setPosition_];
  [v8 bounds];
  CGRectGetWidth(v107);
  [v8 bounds];
  CGRectGetHeight(v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  *(v0 + 616) = sub_1C5BCAE74();
  *(v0 + 624) = v24;
  v25 = MEMORY[0x1E69E6158];
  sub_1C5BCBA14();
  v26 = [v17 gamut];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = v26;
  sub_1C59AE524(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC191858);
  v27 = sub_1C5BCACA4();

  v28 = _UIRenderingBufferCreate();
  *(v0 + 712) = v28;

  if (v28)
  {
    v29 = [*(v0 + 640) context];
    if (v29)
    {
      v30 = v29;
      v104 = [v29 contextId];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10);
      v31 = swift_initStackObject();
      *(v0 + 720) = v31;
      *(v31 + 16) = xmmword_1C5BF5530;
      *(v31 + 32) = sub_1C5BCAE74();
      *(v31 + 40) = v32;
      v33 = sub_1C5BCAE74();
      *(v31 + 72) = v25;
      *(v31 + 48) = v33;
      *(v31 + 56) = v34;
      *(v31 + 80) = sub_1C5BCAE74();
      *(v31 + 88) = v35;
      v36 = [v17 displayConfiguration];
      if (v36)
      {
        v44 = v36;
        v45 = *(v0 + 640);
        v46 = [v36 name];

        v47 = sub_1C5BCAE74();
        v49 = v48;

        *(v31 + 120) = v25;
        *(v31 + 96) = v47;
        *(v31 + 104) = v49;
        v50 = sub_1C5BCAE74();
        v51 = MEMORY[0x1E69E7668];
        *(v31 + 128) = v50;
        *(v31 + 136) = v52;
        *(v31 + 168) = v51;
        *(v31 + 144) = v104;
        v53 = sub_1C5BCAE74();
        v54 = MEMORY[0x1E69E76D8];
        *(v31 + 176) = v53;
        *(v31 + 184) = v55;
        *(v31 + 216) = v54;
        *(v31 + 192) = v45;
        *(v31 + 224) = sub_1C5BCAE74();
        *(v31 + 232) = v56;
        type metadata accessor for IOSurfaceRef(0);
        *(v31 + 264) = v57;
        *(v31 + 240) = v28;
        *(v31 + 272) = sub_1C5BCAE74();
        *(v31 + 280) = v58;
        v59 = v28;
        CATransform3DMakeScale((v0 + 384), v19, v19, 1.0);
        type metadata accessor for CATransform3D(0);
        *(v31 + 312) = v60;
        v61 = swift_allocObject();
        *(v31 + 288) = v61;
        v62 = *(v0 + 432);
        v61[3] = *(v0 + 416);
        v61[4] = v62;
        v63 = *(v0 + 400);
        v61[1] = *(v0 + 384);
        v61[2] = v63;
        v64 = *(v0 + 496);
        v61[7] = *(v0 + 480);
        v61[8] = v64;
        v65 = *(v0 + 464);
        v61[5] = *(v0 + 448);
        v61[6] = v65;
        *(v31 + 320) = sub_1C5BCAE74();
        *(v31 + 328) = v66;
        *(v31 + 360) = MEMORY[0x1E69E6370];
        *(v31 + 336) = 1;
        v67 = sub_1C59AD990(v31);
        *(v0 + 728) = v67;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8);
        swift_arrayDestroy();
        v68 = sub_1C5BCB1D4();
        *(v0 + 736) = v68;
        v69 = swift_task_alloc();
        *(v0 + 744) = v69;
        v69[2] = v45;
        v69[3] = v67;
        v69[4] = v59;
        v70 = swift_task_alloc();
        *(v0 + 752) = v70;
        v43 = sub_1C592535C(0, &qword_1EDA4E5E0);
        *v70 = v0;
        v70[1] = sub_1C5BC4A8C;
        v38 = MEMORY[0x1E69E85E0];
        v41 = sub_1C5BC644C;
        v39 = 0x6F687370616E735FLL;
        v40 = 0xEB00000000292874;
        v36 = (v0 + 632);
        v37 = v68;
        v42 = v69;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DE38](v36, v37, v38, v39, v40, v41, v42, v43);
    }

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v91 = *(v0 + 640);
    v92 = sub_1C5BC7D64();
    __swift_project_value_buffer(v92, qword_1EDA46970);
    v93 = v91;
    v94 = sub_1C5BC7D44();
    v95 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = *(v0 + 640);
      v97 = swift_slowAlloc();
      v105 = v13;
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      *(v97 + 4) = v96;
      *v98 = v96;
      v99 = v96;
      _os_log_impl(&dword_1C5922000, v94, v95, "No layer context ID, couldn't snapshot layer %@", v97, 0xCu);
      sub_1C5924EF4(v98, &unk_1EC196F30);
      v100 = v98;
      v13 = v105;
      MEMORY[0x1C69510F0](v100, -1, -1);
      MEMORY[0x1C69510F0](v97, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v101 = 3;
    swift_willThrow();
  }

  else
  {

    if (qword_1EDA46968 != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 640);
    v82 = sub_1C5BC7D64();
    __swift_project_value_buffer(v82, qword_1EDA46970);
    v83 = v81;
    v84 = sub_1C5BC7D44();
    v85 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 640);
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v86;
      *v88 = v86;
      v89 = v86;
      _os_log_impl(&dword_1C5922000, v84, v85, "Failed to create buffer, couldn't snapshot layer %@", v87, 0xCu);
      sub_1C5924EF4(v88, &unk_1EC196F30);
      MEMORY[0x1C69510F0](v88, -1, -1);
      MEMORY[0x1C69510F0](v87, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v90 = 0;
    swift_willThrow();
  }

LABEL_27:
  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1C5BC4A8C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_1C5BC4C74;
  }

  else
  {

    v3 = *(v2 + 672);
    v4 = *(v2 + 664);
    v5 = sub_1C5BC4BD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C5BC4BD0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  v5 = *(v0 + 632);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1C5BC4C74()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C5BC4D40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  *(v17 + 6) = a4;
  (*(v9 + 32))(&v17[v16], v11, v8);
  v18 = a2;

  v19 = a4;
  sub_1C5A0BB28(0, 0, v14, &unk_1C5BF55A8, v17);

  return sub_1C5924EF4(v14, &qword_1EC1930A0);
}

uint64_t sub_1C5BC4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C5BC4F84, 0, 0);
}

uint64_t sub_1C5BC4F84()
{
  v21 = v0;
  v18 = *(v0 + 24);
  sub_1C5BC55DC(v18, *(v0 + 32), *(v0 + 40));
  v2 = v1;
  if (qword_1EDA46968 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 24);
  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA46970);
  v5 = v3;
  v6 = sub_1C5BC7D44();
  v7 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v19 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    v12 = sub_1C5BC5BC8(0);
    v14 = sub_1C592ADA8(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v18;
    v15 = v8;
    v0 = v19;
    _os_log_impl(&dword_1C5922000, v6, v7, "Snapshot succeeded, %slayer %@", v9, 0x16u);
    sub_1C5924EF4(v10, &unk_1EC196F30);
    MEMORY[0x1C69510F0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C69510F0](v11, -1, -1);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  *(v0 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80);
  sub_1C5BCB1B4();
  v16 = *(v0 + 8);

  return v16();
}

void sub_1C5BC55DC(void *a1, uint64_t a2, void *a3)
{
  if (qword_1EDA46968 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA46970);
  v7 = a1;
  v8 = sub_1C5BC7D44();
  v9 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1C5922000, v8, v9, "Taking snapshot of layer %@", v10, 0xCu);
    sub_1C5924EF4(v11, &unk_1EC196F30);
    MEMORY[0x1C69510F0](v11, -1, -1);
    MEMORY[0x1C69510F0](v10, -1, -1);
  }

  sub_1C5A0F590(a2);
  v13 = sub_1C5BCACA4();

  v14 = CARenderServerSnapshot();

  if (!v14)
  {
    v25 = v7;
    v26 = sub_1C5BC7D44();
    v27 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1C5922000, v26, v27, "CARenderServerSnapshot failed to create snapshot for layer %@", v28, 0xCu);
      sub_1C5924EF4(v29, &unk_1EC196F30);
      MEMORY[0x1C69510F0](v29, -1, -1);
      MEMORY[0x1C69510F0](v28, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    v32 = 5;
    goto LABEL_18;
  }

  v15 = [a3 CGImageBuilder];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 buildCGImage];

  if (!v17)
  {
    v33 = v7;
    v34 = sub_1C5BC7D44();
    v35 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_1C5922000, v34, v35, "IOSurface.cgImageBuilder failed to create image for layer %@", v36, 0xCu);
      sub_1C5924EF4(v37, &unk_1EC196F30);
      MEMORY[0x1C69510F0](v37, -1, -1);
      MEMORY[0x1C69510F0](v36, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    v32 = 1;
LABEL_18:
    *v31 = v32;
    swift_willThrow();
    return;
  }

  if (sub_1C5BC5AE8())
  {
    v18 = v7;
    v19 = sub_1C5BC7D44();
    v20 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1C5922000, v19, v20, "Got transparent background snapshot for layer %@", v21, 0xCu);
      sub_1C5924EF4(v22, &unk_1EC196F30);
      MEMORY[0x1C69510F0](v22, -1, -1);
      MEMORY[0x1C69510F0](v21, -1, -1);
    }

    sub_1C5BC61D4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }
}

size_t sub_1C5BC5AE8()
{
  v1 = v0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = __CGBitmapContextCreate_0(DeviceRGB);

  if (!v3)
  {
    return 0;
  }

  result = CGImageGetWidth(v1);
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(-result, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = CGImageGetHeight(v1);
  if (__OFSUB__(0, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(-result, 1))
  {
    CGImageGetWidth(v1);
    CGImageGetHeight(v1);
    sub_1C5BCB494();
    Data = CGBitmapContextGetData(v3);
    if (Data)
    {
      v6 = Data[3];

      return v6 == 0;
    }

    return 0;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C5BC5BC8(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v5[4] = v1;
  v5[5] = v2;
  sub_1C5BCBA94();

  strcpy(v5, "retry count: ");
  HIWORD(v5[1]) = -4864;
  v3 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v3);

  MEMORY[0x1C694F170](8236, 0xE200000000000000);
  return v5[0];
}

uint64_t sub_1C5BC5C88()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA46970);
  __swift_project_value_buffer(v0, qword_1EDA46970);
  return sub_1C5BC7D54();
}

uint64_t CALayer.snapshot()()
{
  v1[2] = v0;
  v1[3] = sub_1C5BCB1E4();
  v1[4] = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5BC5DA8, v3, v2);
}

uint64_t sub_1C5BC5DA8()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = sub_1C5BCB1D4();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1C5BC5E48;

  return sub_1C5BC3E6C();
}

uint64_t sub_1C5BC5E48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1C5BCB194();
    v7 = v6;
    v8 = sub_1C5BC609C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1C5BCB194();
    v7 = v9;
    v8 = sub_1C5BC5FC8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1C5BC5FC8()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1C5BC6034, v2, v3);
}

uint64_t sub_1C5BC6034()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1C5BC609C()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1C5BC6108, v2, v3);
}

uint64_t sub_1C5BC6108()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C5BC616C()
{
  result = qword_1EDA45D88;
  if (!qword_1EDA45D88)
  {
    sub_1C592535C(255, &qword_1EDA45D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D88);
  }

  return result;
}

unint64_t sub_1C5BC61D4()
{
  result = qword_1EDA490E8[0];
  if (!qword_1EDA490E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA490E8);
  }

  return result;
}

void sub_1C5BC6228(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C694FBE0](a1, a2, v7);
      sub_1C592535C(0, &qword_1EDA45D90);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C592535C(0, &qword_1EDA45D90);
    if (sub_1C5BCB964() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C5BCB974();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C5BCB734();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C5BCB744();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1C5BC6458(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C5BC4F60(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1C5BC6590(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CALayerSnapshotError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CALayerSnapshotError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C5BC66F0()
{
  result = qword_1EC19AA88;
  if (!qword_1EC19AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC19AA88);
  }

  return result;
}

id sub_1C5BC6744()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = sub_1C5BCAE44();
  [v1 setValue:v2 forKey:v3];

  v4 = sub_1C5BCB184();
  v5 = sub_1C5BCAE44();
  [v1 setValue:v4 forKey:v5];

  v6 = sub_1C5BCB184();
  v7 = sub_1C5BCAE44();
  [v1 setValue:v6 forKey:v7];

  if (qword_1EC1909F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7BD4();
  v9 = sub_1C5BCAE44();
  [v1 setValue:v8 forKey:v9];

  return v1;
}

id sub_1C5BC692C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LockScreenBlurLayer();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  [v1 setScale_];
  [v1 setAllowsInPlaceFiltering_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BCFF00;
  v3 = sub_1C5BC6744();
  *(v2 + 56) = sub_1C5BC70A0();
  *(v2 + 32) = v3;
  v4 = sub_1C5BCB044();

  [v1 setFilters_];

  return v1;
}

id sub_1C5BC6A4C(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_1C5BCBDD4();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LockScreenBlurLayer();
  v4 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  v5 = v4;
  [v5 setScale_];
  [v5 setAllowsInPlaceFiltering_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5BCFF00;
  v7 = sub_1C5BC6744();
  *(v6 + 56) = sub_1C5BC70A0();
  *(v6 + 32) = v7;
  v8 = sub_1C5BCB044();

  [v5 setFilters_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_1C5BC7044(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C5BC70A0()
{
  result = qword_1EDA45D80;
  if (!qword_1EDA45D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45D80);
  }

  return result;
}

void sub_1C5BC70EC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 40.0;
  if (v1)
  {
    v2 = 9.0;
  }

  qword_1EC19AA90 = *&v2;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EC1A6938 == -1)
  {
    if (qword_1EC1A6940)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC1A6940)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC1A6930 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC1A6924 > a3)
      {
        return 1;
      }

      if (dword_1EC1A6924 >= a3)
      {
        return dword_1EC1A6928 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC1A6940;
  if (qword_1EC1A6940)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC1A6940 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C6950830](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC1A6924, &dword_1EC1A6928);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}