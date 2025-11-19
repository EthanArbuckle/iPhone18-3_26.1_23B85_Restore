uint64_t sub_1C5AA27F8()
{
  v1 = v0;
  v2 = sub_1C5BC7D64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EC1A6BC0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5922000, v7, v8, "MediaTimelineControl.Coordinator: finished decelerating", v9, 2u);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v1[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState] = 0;
  v14 = 0;

  sub_1C5A820C8(&v14);

  [v1 currentValue];
  v13 = 2;
  sub_1C5A7E450(&v13, v10);
}

uint64_t sub_1C5AA2A04(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = *(*(v4 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel) + 16);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);

  sub_1C5BC7B74();

  v9 = v5[3];
  v10 = v5[2];

  v7.f64[0] = a1;
  v7.f64[1] = a2;
  v8.f64[0] = a3;
  v8.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, v7), vceqq_f64(v9, v8)))) & 1) == 0)
  {

    sub_1C5A82BC8(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C5AA2B38(double a1)
{
  v21 = MEMORY[0x1E69E7CD0];
  swift_getKeyPath();
  v20 = v1;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v3 + 16))
    {
      v9 = v3 + 32 + 24 * v6;
      v10 = *(v9 + 16);
      if (v10 >= 0.0 && v10 < a1)
      {
        v13 = *v9;
        v12 = *(v9 + 8);
        v14 = v21;
        if (*(v21 + 16) && (result = sub_1C5BCBF44(), v15 = -1 << *(v14 + 32), v16 = result & ~v15, ((*(v14 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          v17 = ~v15;
          while (*(*(v14 + 48) + 8 * v16) != v10)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v14 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1C5B76A90(0, *(v7 + 2) + 1, 1, v7);
          }

          v19 = *(v7 + 2);
          v18 = *(v7 + 3);
          if (v19 >= v18 >> 1)
          {
            v7 = sub_1C5B76A90((v18 > 1), v19 + 1, 1, v7);
          }

          *(v7 + 2) = v19 + 1;
          v8 = &v7[24 * v19];
          *(v8 + 4) = v13;
          *(v8 + 5) = v12;
          *(v8 + 6) = v10;
          result = sub_1C5B0D3CC(&v20, v10);
        }
      }

      if (++v6 == v4)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v7;
  }

  return result;
}

unint64_t sub_1C5AA2D90()
{
  result = sub_1C5A878C0();
  if ((result & 0x100000000) == 0)
  {
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
    sub_1C5BC7B74();
  }

  return result;
}

unint64_t sub_1C5AA2F24()
{
  result = qword_1EC196028;
  if (!qword_1EC196028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196028);
  }

  return result;
}

unint64_t sub_1C5AA2F88()
{
  result = qword_1EC196038;
  if (!qword_1EC196038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196030);
    sub_1C5A9FE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196038);
  }

  return result;
}

unint64_t sub_1C5AA3038()
{
  result = qword_1EC196040;
  if (!qword_1EC196040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195D18);
    sub_1C5A9B150(&qword_1EC196048, type metadata accessor for ScrubberProxy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196040);
  }

  return result;
}

uint64_t objectdestroy_458Tm()
{

  sub_1C5942458(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1C5AA3148()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
  return sub_1C5A8916C(v2);
}

uint64_t sub_1C5AA3184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5AA31F4()
{
  result = qword_1EC196080;
  if (!qword_1EC196080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196080);
  }

  return result;
}

uint64_t sub_1C5AA3248()
{
  type metadata accessor for ScrubberTooltipModifier(0);

  return sub_1C5A96D04();
}

unint64_t sub_1C5AA32B8()
{
  result = qword_1EC196148;
  if (!qword_1EC196148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196140);
    sub_1C5AA3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196148);
  }

  return result;
}

unint64_t sub_1C5AA3344()
{
  result = qword_1EC196150;
  if (!qword_1EC196150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196158);
    sub_1C5AA33FC();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196150);
  }

  return result;
}

unint64_t sub_1C5AA33FC()
{
  result = qword_1EC196160;
  if (!qword_1EC196160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196168);
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196160);
  }

  return result;
}

uint64_t sub_1C5AA34E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);

  sub_1C5A9C47C(v2);
}

uint64_t sub_1C5AA3538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
  return sub_1C5A9BE38(v3, v4);
}

uint64_t sub_1C5AA357C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
  return sub_1C5A9B7F4(v3, v4);
}

uint64_t sub_1C5AA35C0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);

  return sub_1C5A9CA60();
}

uint64_t sub_1C5AA3634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AA36AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5AA371C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
  sub_1C5A7DCE0(v2);
}

uint64_t sub_1C5AA3754()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 57);
  *(v1 + 57) = *(v0 + 24);
  v4 = v2;
  return sub_1C5A8800C(&v4);
}

uint64_t sub_1C5AA37A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
  return sub_1C5A8A408();
}

uint64_t sub_1C5AA37DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
  return sub_1C5A8A408();
}

uint64_t sub_1C5AA3884()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
  return sub_1C5A85010(v2);
}

uint64_t sub_1C5AA3908()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
  return sub_1C5A83EC4(v2);
}

double sub_1C5AA3980()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

__n128 sub_1C5AA3990()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 32) = result;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_1C5AA39C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = *(v0 + 24);
  return sub_1C5A8672C(v2);
}

uint64_t sub_1C5AA3A04()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_1C5A85B30(v3, v4);
}

void sub_1C5AA3A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1C5AA3AAC()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1C5AA3AE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 24);
  *(v1 + 72) = v2;
  return sub_1C5A80680();
}

uint64_t objectdestroy_597Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1C5AA3B94()
{
  result = qword_1EC196240;
  if (!qword_1EC196240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196240);
  }

  return result;
}

unint64_t sub_1C5AA3BE8()
{
  result = qword_1EC196248;
  if (!qword_1EC196248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196248);
  }

  return result;
}

uint64_t sub_1C5AA3C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for Scrubber() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

unint64_t sub_1C5AA3D1C()
{
  result = qword_1EC196260;
  if (!qword_1EC196260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B0);
    sub_1C5AA2164();
    sub_1C5953670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196260);
  }

  return result;
}

uint64_t sub_1C5AA3DC4()
{
  type metadata accessor for Scrubber();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);

  return sub_1C5A908F8();
}

uint64_t sub_1C5AA3EE0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_1C5AA3F48()
{
  result = qword_1EC196280;
  if (!qword_1EC196280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196280);
  }

  return result;
}

unint64_t sub_1C5AA3F9C()
{
  result = qword_1EC196288;
  if (!qword_1EC196288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196288);
  }

  return result;
}

uint64_t sub_1C5AA4060()
{
  result = sub_1C592535C(319, &qword_1EDA45E68);
  if (v1 <= 0x3F)
  {
    result = sub_1C5BCAB54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C5AA40F8()
{
  sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC196370, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AA4218(uint64_t *a1, int a2)
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

uint64_t sub_1C5AA4260(uint64_t result, int a2, int a3)
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

unint64_t sub_1C5AA42D0()
{
  result = qword_1EC196378;
  if (!qword_1EC196378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F90);
    sub_1C5924F54(&unk_1EC195F98, &qword_1EC195F90);
    swift_getOpaqueTypeConformance2();
    sub_1C5A9B150(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196378);
  }

  return result;
}

unint64_t sub_1C5AA43FC()
{
  result = qword_1EC196390;
  if (!qword_1EC196390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196398);
    sub_1C5AA4488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196390);
  }

  return result;
}

unint64_t sub_1C5AA4488()
{
  result = qword_1EC1963A0;
  if (!qword_1EC1963A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195FB0);
    sub_1C5924F54(&qword_1EC1963A8, &qword_1EC195FC0);
    sub_1C5924F54(&qword_1EC1963B0, &qword_1EC195FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963A0);
  }

  return result;
}

unint64_t sub_1C5AA456C()
{
  result = qword_1EC1963B8;
  if (!qword_1EC1963B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196070);
    sub_1C5924F54(&qword_1EC1963C0, &qword_1EC196068);
    sub_1C5924F54(&qword_1EC1963C8, &qword_1EC196078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963B8);
  }

  return result;
}

unint64_t sub_1C5AA4650()
{
  result = qword_1EC1963D0;
  if (!qword_1EC1963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196098);
    sub_1C5924F54(&qword_1EC1963D8, &qword_1EC1960A8);
    sub_1C5924F54(&qword_1EC1963E0, &qword_1EC1960A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963D0);
  }

  return result;
}

unint64_t sub_1C5AA4734()
{
  result = qword_1EC1963E8;
  if (!qword_1EC1963E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1963F0);
    sub_1C5AA32B8();
    sub_1C5A9B150(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963E8);
  }

  return result;
}

unint64_t sub_1C5AA47F0()
{
  result = qword_1EC1963F8;
  if (!qword_1EC1963F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196400);
    sub_1C5AA487C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963F8);
  }

  return result;
}

unint64_t sub_1C5AA487C()
{
  result = qword_1EC196408;
  if (!qword_1EC196408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196410);
    sub_1C5AA4908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196408);
  }

  return result;
}

unint64_t sub_1C5AA4908()
{
  result = qword_1EC196418;
  if (!qword_1EC196418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196420);
    sub_1C5AA498C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196418);
  }

  return result;
}

unint64_t sub_1C5AA498C()
{
  result = qword_1EC196428;
  if (!qword_1EC196428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196430);
    sub_1C5924F54(&qword_1EC196190, &qword_1EC196188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196428);
  }

  return result;
}

unint64_t sub_1C5AA4AA8()
{
  result = qword_1EC196450;
  if (!qword_1EC196450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196450);
  }

  return result;
}

unint64_t sub_1C5AA4B00()
{
  result = qword_1EC196458;
  if (!qword_1EC196458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196458);
  }

  return result;
}

unint64_t sub_1C5AA4B9C()
{
  result = qword_1EC196478;
  if (!qword_1EC196478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196478);
  }

  return result;
}

unint64_t sub_1C5AA4BF4()
{
  result = qword_1EC196480;
  if (!qword_1EC196480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196480);
  }

  return result;
}

unint64_t sub_1C5AA4C4C()
{
  result = qword_1EC196488;
  if (!qword_1EC196488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196488);
  }

  return result;
}

unint64_t sub_1C5AA4CE4()
{
  result = qword_1EC1964D0;
  if (!qword_1EC1964D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8);
    sub_1C595E1AC();
    sub_1C5924F54(&unk_1EC1964E0, &qword_1EC194080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1964D0);
  }

  return result;
}

uint64_t sub_1C5AA4D9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v23 = a1;
  v6 = sub_1C5BC8894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1964F8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a5, v6, v15);
  sub_1C5A99A34(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1C5924EF4(v12, &unk_1EC1964F8);
  }

  sub_1C5AA592C(v12, v17, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  sub_1C5BC8B64();
  v28 = v19 & 1;
  v27 = v20 & 1;
  sub_1C5BC8714();
  sub_1C5BC8B64();
  v26 = v21 & 1;
  v25 = v22 & 1;
  sub_1C5BC8714();
  return sub_1C5AA5994(v17, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
}

uint64_t sub_1C5AA5064(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v68 = sub_1C5BC8944();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = COERCE_DOUBLE(sub_1C5BC8444());
  v63 = *(*&v64 - 8);
  MEMORY[0x1EEE9AC00](*&v64);
  v62 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v61 - v16;
  v69 = sub_1C5BC8744();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BC8894();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1964F8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v61 - v24;
  v26 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19, v28);
  sub_1C5A99A34(v22, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v31 = &unk_1EC1964F8;
    v32 = v25;
    return sub_1C5924EF4(v32, v31);
  }

  sub_1C5AA592C(v25, v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  sub_1C5BC8B64();
  v84 = v33 & 1;
  v83 = v34 & 1;
  sub_1C5BC8714();
  v36 = v35;
  sub_1C5BC8B64();
  v82 = v37 & 1;
  v81 = v38 & 1;
  sub_1C5BC8714();
  v61[1] = v40;
  if (v36 > v39)
  {
    v41 = v36;
  }

  else
  {
    v41 = v39;
  }

  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  CGRectGetMinX(v85);
  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  CGRectGetMinY(v86);
  sub_1C5BCAB94();
  *v61 = v41;
  v80 = 0;
  v79 = 0;
  sub_1C5BC8724();
  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  CGRectGetMaxX(v87);
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  CGRectGetMinY(v88);
  sub_1C5BCABA4();
  v78 = 0;
  v77 = 0;
  sub_1C5BC8724();
  sub_1C59400B0(&v30[*(v26 + 24)], v17, &qword_1EC1964F0);
  v42 = v69;
  if ((*(v70 + 48))(v17, 1, v69) == 1)
  {
    sub_1C5AA5994(v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
    v31 = &qword_1EC1964F0;
    v32 = v17;
    return sub_1C5924EF4(v32, v31);
  }

  v44 = v65;
  (*(v70 + 32))(v65, v17, v42);
  sub_1C5BC8734();
  v45 = v62;
  sub_1C5BC8734();
  sub_1C5BC8434();
  v47 = v46;
  v48 = *(v63 + 8);
  v49 = v64;
  v48(v45, *&v64);
  v48(v14, *&v49);
  sub_1C5BC8734();
  sub_1C5BC8734();
  sub_1C5BC8434();
  v51 = v50;
  v48(v45, *&v49);
  v48(v14, *&v49);
  v64 = v47 + v51;
  sub_1C5BC8B64();
  v76 = v52 & 1;
  v75 = v53 & 1;
  v54 = v66;
  sub_1C5BC8704();
  v55 = sub_1C5BC8FA4();
  MEMORY[0x1C694CB90](v55);
  v56 = *(v67 + 8);
  v57 = v68;
  v56(v54, v68);
  sub_1C5BC8B64();
  v74 = v58 & 1;
  v73 = v59 & 1;
  sub_1C5BC8704();
  v60 = sub_1C5BC8FA4();
  MEMORY[0x1C694CB90](v60);
  v56(v54, v57);
  v89.origin.x = a2;
  v89.origin.y = a3;
  v89.size.width = a4;
  v89.size.height = a5;
  CGRectGetMidX(v89);
  v90.origin.x = a2;
  v90.origin.y = a3;
  v90.size.width = a4;
  v90.size.height = a5;
  CGRectGetMinY(v90);
  sub_1C5BCABB4();
  v91.origin.x = a2;
  v91.origin.y = a3;
  v91.size.width = a4;
  v91.size.height = a5;
  CGRectGetWidth(v91);
  v72 = 0;
  v71 = 1;
  sub_1C5BC8724();
  (*(v70 + 8))(v44, v42);
  return sub_1C5AA5994(v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
}

uint64_t sub_1C5AA592C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AA5994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5AA5A08()
{
  result = qword_1EC196508;
  if (!qword_1EC196508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196508);
  }

  return result;
}

unint64_t sub_1C5AA5AD4()
{
  result = qword_1EC196510;
  if (!qword_1EC196510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196510);
  }

  return result;
}

void sub_1C5AA5B50()
{
  sub_1C5BC8744();
  if (v0 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC196530, MEMORY[0x1E697E168], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5AA5C14()
{
  result = qword_1EC196538;
  if (!qword_1EC196538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964A0);
    sub_1C5AA5CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196538);
  }

  return result;
}

unint64_t sub_1C5AA5CA0()
{
  result = qword_1EC196540;
  if (!qword_1EC196540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196498);
    sub_1C5AA5D58();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196540);
  }

  return result;
}

unint64_t sub_1C5AA5D58()
{
  result = qword_1EC196548;
  if (!qword_1EC196548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196490);
    sub_1C5AA5E10();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196548);
  }

  return result;
}

unint64_t sub_1C5AA5E10()
{
  result = qword_1EC196550;
  if (!qword_1EC196550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196558);
    sub_1C5AA5E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196550);
  }

  return result;
}

unint64_t sub_1C5AA5E94()
{
  result = qword_1EC196560;
  if (!qword_1EC196560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8);
    sub_1C5AA4CE4();
    swift_getOpaqueTypeConformance2();
    sub_1C595E1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196560);
  }

  return result;
}

unint64_t sub_1C5AA5F5C()
{
  result = qword_1EC196570;
  if (!qword_1EC196570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196570);
  }

  return result;
}

double sub_1C5AA5FCC(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 281) = 0u;
  return result;
}

unint64_t sub_1C5AA6000()
{
  result = qword_1EC1965A0;
  if (!qword_1EC1965A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965A8);
    sub_1C5AA608C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965A0);
  }

  return result;
}

unint64_t sub_1C5AA608C()
{
  result = qword_1EC1965B0;
  if (!qword_1EC1965B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965B8);
    sub_1C5AA6118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965B0);
  }

  return result;
}

unint64_t sub_1C5AA6118()
{
  result = qword_1EC1965C0;
  if (!qword_1EC1965C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965C8);
    sub_1C5AA61A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965C0);
  }

  return result;
}

unint64_t sub_1C5AA61A4()
{
  result = qword_1EC1965D0;
  if (!qword_1EC1965D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965D8);
    sub_1C5924F54(&qword_1EC1965E0, &qword_1EC1965E8);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965D0);
  }

  return result;
}

uint64_t sub_1C5AA6490(uint64_t a1)
{
  v2 = sub_1C5BC7894();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C5AA65F0(v5);
}

uint64_t sub_1C5AA655C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C5BC7894();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C5AA65F0(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C5BC7894();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t MarkupRenderer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MarkupRenderer.init(_:)(a1);
  return v2;
}

uint64_t *MarkupRenderer.init(_:)(uint64_t a1)
{
  v3 = *v1;
  sub_1C5BC7884();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t sub_1C5AA67DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-v6];
  v9 = *(v8 + 88);
  v10 = type metadata accessor for MarkupParser();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-v12];
  sub_1C5BC7824();
  (*(v5 + 16))(v7, v2 + *(*v2 + 96), v4);
  MarkupParser.init(_:)(v7, v4, v13);
  v16 = v4;
  v17 = v9;
  v18 = a2;
  MarkupParser.parse(_:)(sub_1C5AA714C, v15, v10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1C5AA69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1965F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - v14;
  v15 = sub_1C5BC7894();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1C5BC7844();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C5BC7884();
  sub_1C5BC7854();
  v52 = sub_1C5AA7418();
  v56 = v18;
  sub_1C5BC7864();
  if (v64)
  {
    v19 = 0;
  }

  else
  {
    v19 = v63;
  }

  type metadata accessor for MarkupParser.Element();
  if (!sub_1C5BCB0F4())
  {
LABEL_37:
    v63 = v19;
    LOBYTE(v64) = 0;
    v46 = v56;
    sub_1C5BC7874();
    sub_1C5AA746C();
    v47 = v54;
    sub_1C5BC7834();
    return (*(v53 + 8))(v46, v47);
  }

  v20 = 0;
  v21 = (a5 + 64);
  v59 = a5;
  while (1)
  {
    v22 = sub_1C5BCB0D4();
    result = sub_1C5BCB084();
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_39;
    }

    v60 = v20 + 1;
    v61 = v19;
    v24 = *(v21 - 4);
    v25 = *(v21 - 3);
    v26 = *(v21 - 1);
    v27 = *v21;
    v57 = *(v21 - 2);
    v58 = v24;
    v63 = v24;
    v64 = v25;
    v65 = v57;
    v66 = v26;
    v67 = v27;
    sub_1C5AB8D6C();

    v28 = sub_1C5BCB814();
    v30 = v29;

    v63 = v28;
    v64 = v30;
    v32 = sub_1C5BCAFC4();
    v33 = v31;
    if (v32 == 0x676E6F727473 && v31 == 0xE600000000000000 || (sub_1C5BCBDE4() & 1) != 0 || v32 == 98 && v33 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
    {

      v19 = v61 | 2;
    }

    else
    {
      if ((v32 != 28005 || v33 != 0xE200000000000000) && (sub_1C5BCBDE4() & 1) == 0 && (v32 != 105 || v33 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0)
      {
        if (v32 == 117 && v33 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {

          v35 = v50;
          sub_1C5BC9C64();
          v36 = sub_1C5BC9C74();
          (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
          v37 = &qword_1EC1965F0;
          sub_1C59400B0(v35, v51, &qword_1EC1965F0);
          sub_1C5AA7518();
          goto LABEL_28;
        }

        if (v32 == 97 && v33 == 0xE100000000000000)
        {

LABEL_34:
          v63 = v58;
          v64 = v25;
          v65 = v57;
          v66 = v26;
          v67 = v27;
          v62[0] = 1717924456;
          v62[1] = 0xE400000000000000;
          sub_1C594A23C();
          v39 = MarkupParser.Element.subscript.getter(v62);
          v41 = v40;
          v43 = v42;
          v45 = v44;

          if (v45)
          {
            MEMORY[0x1C694F120](v39, v41, v43, v45);

            v35 = v48;
            sub_1C5BC7A04();

            v37 = &qword_1EC195738;
            sub_1C59400B0(v35, v49, &qword_1EC195738);
            sub_1C5AA74C4();
LABEL_28:
            sub_1C5BC7874();
            sub_1C5924EF4(v35, v37);
          }
        }

        else
        {
          v38 = sub_1C5BCBDE4();

          if (v38)
          {
            goto LABEL_34;
          }
        }

        v19 = v61;
        goto LABEL_15;
      }

      v19 = v61 | 1;
    }

LABEL_15:
    v34 = v60;
    ++v20;
    v21 += 5;
    if (v34 == sub_1C5BCB0F4())
    {
      goto LABEL_37;
    }
  }

  result = sub_1C5BCBAD4();
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t MarkupRenderer.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_1C5BC7894();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MarkupRenderer.__deallocating_deinit()
{
  MarkupRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5AA7274()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BC7894();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C5AA7418()
{
  result = qword_1EC1965F8;
  if (!qword_1EC1965F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965F8);
  }

  return result;
}

unint64_t sub_1C5AA746C()
{
  result = qword_1EC196600;
  if (!qword_1EC196600)
  {
    sub_1C5BC7844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196600);
  }

  return result;
}

unint64_t sub_1C5AA74C4()
{
  result = qword_1EC196608;
  if (!qword_1EC196608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196608);
  }

  return result;
}

unint64_t sub_1C5AA7518()
{
  result = qword_1EC196610;
  if (!qword_1EC196610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196610);
  }

  return result;
}

uint64_t sub_1C5AA756C()
{
  sub_1C5A057E0();

  return sub_1C5BC8F44();
}

double sub_1C5AA75B4@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5A057E0();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5AA7604()
{
  sub_1C5A057E0();

  return sub_1C5BC8F54();
}

uint64_t MCUILoggingContext.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = sub_1C5BCAEA4();
  v11 = v10;
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t MCUILoggingContext.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;

  MEMORY[0x1C694F170](v2, v1);
  MEMORY[0x1C694F170](8254, 0xE200000000000000);

  return 60;
}

uint64_t sub_1C5AA77E0()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;

  MEMORY[0x1C694F170](v2, v1);
  MEMORY[0x1C694F170](8254, 0xE200000000000000);

  return 60;
}

uint64_t MCUINamespace<A>.loggingContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, a3);
  MCUILoggingContext.init<A>(_:)(v7, a3, &v10);
  v9 = v10;
  sub_1C5BC9DF4();
}

unint64_t sub_1C5AA79A4()
{
  result = qword_1EC196620;
  if (!qword_1EC196620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196620);
  }

  return result;
}

uint64_t MCUINamespace<A>.debugDimensions(labelPosition:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = *a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  MEMORY[0x1C694E550](v6, *(a2 + 16), &type metadata for DebugDimensionsModifier, a3);
}

uint64_t sub_1C5AA7B14(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C5AA7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_1C5BC8F54();
}

uint64_t DebugDimensionLabelPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

unint64_t sub_1C5AA7C4C()
{
  result = qword_1EC196638;
  if (!qword_1EC196638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196638);
  }

  return result;
}

unint64_t sub_1C5AA7CB0()
{
  result = qword_1EC196640;
  if (!qword_1EC196640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196640);
  }

  return result;
}

uint64_t sub_1C5AA7D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5AA7D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_1C5AA7DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a1;
  v37 = a3;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(a2 + 16);
  v8 = *(a2 + 8);
  v99 = v8;
  v9 = v100;

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v99, &qword_1EC190FB8);
    (*(v5 + 8))(v7, v4);
    v8 = v66[0];
  }

  v98 = *(a2 + 32);
  v11 = *(a2 + 24);
  v97 = v11;
  if (v98 == 1)
  {
    v87 = v11;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    v34 = v4;
    v13 = a2;
    v14 = v12;
    sub_1C5BC7C54();

    a2 = v13;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v97, &qword_1EC190FB8);
    (*(v5 + 8))(v7, v34);
    v11 = v87;
  }

  sub_1C59A60FC(v11, v8, v88);

  v15 = sub_1C5BCAA34();
  v17 = v16;
  sub_1C5AA8478(a2, v65);
  v53[5] = *&v65[80];
  v53[6] = *&v65[96];
  v53[4] = *&v65[64];
  *(&v89[5] + 8) = *&v65[80];
  *(&v89[6] + 8) = *&v65[96];
  *(&v89[4] + 8) = *&v65[64];
  v53[2] = *&v65[32];
  v53[3] = *&v65[48];
  *(v89 + 8) = *v65;
  *(&v89[3] + 8) = *&v65[48];
  *(&v89[2] + 8) = *&v65[32];
  v53[0] = *v65;
  v53[1] = *&v65[16];
  *&v54 = *&v65[112];
  *(&v54 + 1) = v15;
  v55 = v17;
  *(&v89[8] + 1) = v17;
  *(&v89[1] + 8) = *&v65[16];
  *(&v89[7] + 8) = v54;
  v56[2] = *&v65[32];
  v56[3] = *&v65[48];
  v56[0] = *v65;
  v56[1] = *&v65[16];
  v56[5] = *&v65[80];
  v56[6] = *&v65[96];
  v56[4] = *&v65[64];
  v57 = *&v65[112];
  v58 = v15;
  v59 = v17;
  sub_1C59400B0(v53, v66, &qword_1EC196658);
  sub_1C5924EF4(v56, &qword_1EC196658);
  v18 = sub_1C5BCAA64();
  v33 = v19;
  v34 = v18;
  v32 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v20 = a2;
  v36 = a2;
  v21 = v91;
  v22 = v92;
  LOBYTE(v15) = v94;
  v23 = v95;
  v30 = v96;
  v31 = v93;
  v24 = sub_1C5BCAA54();
  v26 = v25;
  sub_1C5AA85AC(v20, v65);
  v60[8] = *&v65[128];
  v60[9] = *&v65[144];
  v60[10] = *&v65[160];
  v60[11] = *&v65[176];
  v60[4] = *&v65[64];
  v60[5] = *&v65[80];
  v60[6] = *&v65[96];
  v60[7] = *&v65[112];
  v60[0] = *v65;
  v60[1] = *&v65[16];
  v60[2] = *&v65[32];
  v60[3] = *&v65[48];
  *&v61 = v24;
  *(&v61 + 1) = v26;
  v50 = *&v65[160];
  v51 = *&v65[176];
  v46 = *&v65[96];
  v47 = *&v65[112];
  v48 = *&v65[128];
  v49 = *&v65[144];
  v42 = *&v65[32];
  v43 = *&v65[48];
  v44 = *&v65[64];
  v45 = *&v65[80];
  v40 = *v65;
  v41 = *&v65[16];
  v52 = v61;
  v62[8] = *&v65[128];
  v62[9] = *&v65[144];
  v62[10] = *&v65[160];
  v62[11] = *&v65[176];
  v62[4] = *&v65[64];
  v62[5] = *&v65[80];
  v62[6] = *&v65[96];
  v62[7] = *&v65[112];
  v62[0] = *v65;
  v62[1] = *&v65[16];
  v38[0] = v22;
  v39 = v15;
  v62[2] = *&v65[32];
  v62[3] = *&v65[48];
  v63 = v24;
  v64 = v26;
  sub_1C59400B0(v60, v66, &qword_1EC196660);
  sub_1C5924EF4(v62, &qword_1EC196660);
  *&v65[200] = v49;
  *&v65[216] = v50;
  *&v65[232] = v51;
  *&v65[248] = v52;
  *&v65[136] = v45;
  *&v65[152] = v46;
  *&v65[168] = v47;
  *&v65[184] = v48;
  *&v65[72] = v41;
  *&v65[88] = v42;
  *&v65[104] = v43;
  *v65 = v32;
  *&v65[8] = v21;
  v65[16] = v38[0];
  *&v65[24] = v31;
  v65[32] = v39;
  *&v65[40] = v23;
  *&v65[48] = v30;
  *&v65[120] = v44;
  *&v65[56] = v40;
  *&v65[264] = v34;
  *&v65[272] = v33;
  v90[10] = v89[5];
  v90[11] = v89[6];
  v90[12] = v89[7];
  v90[13] = v89[8];
  v90[6] = v89[1];
  v90[7] = v89[2];
  v90[8] = v89[3];
  v90[9] = v89[4];
  v90[2] = v88[2];
  v90[3] = v88[3];
  v90[4] = v88[4];
  v90[5] = v89[0];
  v90[0] = v88[0];
  v90[1] = v88[1];
  memcpy(&v90[14], v65, 0x118uLL);
  v81 = v49;
  v82 = v50;
  v83 = v51;
  v84 = v52;
  v77 = v45;
  v78 = v46;
  v79 = v47;
  v80 = v48;
  v73 = v41;
  v74 = v42;
  v75 = v43;
  v76 = v44;
  v66[0] = v32;
  v66[1] = v21;
  v67 = v38[0];
  v68 = v31;
  v69 = v39;
  v70 = v23;
  v71 = v30;
  v72 = v40;
  v85 = v34;
  v86 = v33;
  sub_1C59400B0(v65, v38, &qword_1EC196668);
  sub_1C5924EF4(v66, &qword_1EC196668);
  LODWORD(v20) = 0x201u >> (8 * *v36);
  KeyPath = swift_getKeyPath();
  v28 = v37;
  result = memcpy(v37, v90, 0x1F8uLL);
  v28[63] = KeyPath;
  *(v28 + 512) = v20;
  return result;
}

uint64_t sub_1C5AA8478@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1C5BC86C4();
  if (v5 <= 0.0)
  {
    KeyPath = 0;
    v9 = 0;
    v10 = 0;
    v19 = 0;
    v18 = 0;
    v14 = 0uLL;
    v7 = 0;
    v16 = 0uLL;
    v17 = 255;
  }

  else
  {
    sub_1C5BC86C4();
    v7 = v6;
    KeyPath = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = sub_1C5BC9884();
    v12 = *a1;
    result = sub_1C5BC8174();
    *(&v14 + 1) = v13;
    *(&v16 + 1) = v15;
    v17 = 0;
    v18 = v11;
    v19 = qword_1C5BE3C60[v12];
  }

  *a2 = v7;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v17;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10;
  *(a2 + 48) = 0;
  *(a2 + 56) = v18;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = v19;
  return result;
}

double sub_1C5AA85AC@<D0>(char *a1@<X1>, _OWORD *a2@<X8>)
{
  sub_1C5BC86C4();
  if (v4 <= 0.0)
  {
    sub_1C5AA893C(&v48);
  }

  else
  {
    sub_1C5BC86C4();
    v6 = v5;
    KeyPath = swift_getKeyPath();
    v8 = swift_getKeyPath();
    v9 = swift_getKeyPath();
    v10 = sub_1C5BC9884();
    v11 = *a1;
    sub_1C5BC8174();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    sub_1C5BC86C4();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v44[7] = v45;
    *&v44[23] = v46;
    *&v44[39] = v47;
    v20 = qword_1C5BE3C90[v11];
    sub_1C5BCABD4();
    *&v31 = v6;
    *(&v31 + 1) = KeyPath;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = v8;
    LOBYTE(v33) = 0;
    *(&v33 + 1) = v9;
    LOBYTE(v34) = 0;
    BYTE8(v34) = v10;
    *&v35 = v13;
    *(&v35 + 1) = v15;
    *&v36 = v17;
    *(&v36 + 1) = v19;
    v37[0] = 0;
    *&v37[48] = *(&v47 + 1);
    *&v37[33] = *&v44[32];
    *&v37[17] = *&v44[16];
    *&v37[1] = *v44;
    *&v38 = v20;
    *(&v38 + 1) = 0xBFF921FB54442D18;
    *&v39 = v21;
    *(&v39 + 1) = v22;
    CGSizeMake(&v31, v23);
    v56 = *&v37[32];
    v57 = *&v37[48];
    v58 = v38;
    v59 = v39;
    v52 = v35;
    v53 = v36;
    v54 = *v37;
    v55 = *&v37[16];
    v48 = v31;
    v49 = v32;
    v50 = v33;
    v51 = v34;
  }

  v24 = v57;
  a2[8] = v56;
  a2[9] = v24;
  v25 = v59;
  a2[10] = v58;
  a2[11] = v25;
  v26 = v53;
  a2[4] = v52;
  a2[5] = v26;
  v27 = v55;
  a2[6] = v54;
  a2[7] = v27;
  v28 = v49;
  *a2 = v48;
  a2[1] = v28;
  result = *&v50;
  v30 = v51;
  a2[2] = v50;
  a2[3] = v30;
  return result;
}

uint64_t sub_1C5AA87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v5;
  v16 = *(v2 + 32);
  v6 = sub_1C5BCAA54();
  v8 = v7;
  v9 = swift_allocObject();
  v10 = *(v2 + 16);
  *(v9 + 16) = *v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v2 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196648);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196650) + 36);
  *v12 = sub_1C5AA88FC;
  *(v12 + 8) = v9;
  *(v12 + 16) = 0;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  return sub_1C5AA8904(v15, v14);
}

double sub_1C5AA893C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

unint64_t sub_1C5AA897C()
{
  result = qword_1EC196670;
  if (!qword_1EC196670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196670);
  }

  return result;
}

unint64_t sub_1C5AA89D0()
{
  result = qword_1EC196678;
  if (!qword_1EC196678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196678);
  }

  return result;
}

unint64_t sub_1C5AA8A44()
{
  result = qword_1EC196680;
  if (!qword_1EC196680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196650);
    sub_1C5924F54(&qword_1EC196688, &qword_1EC196648);
    sub_1C5924F54(&qword_1EC196690, &qword_1EC196698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196680);
  }

  return result;
}

uint64_t sub_1C5AA8B28()
{
  result = sub_1C5BCA484();
  qword_1EC196628 = result;
  return result;
}

uint64_t sub_1C5AA8B6C()
{
  result = sub_1C5BCA484();
  qword_1EC196630 = result;
  return result;
}

uint64_t sub_1C5AA8BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C5BC76F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC76C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 96) = a1;
  v12 = log2f(a1);
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= 0x40)
  {
    v13 = 0;
  }

  else
  {
    v13 = (1 << v12) / 2;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v31 = v5;
  if (v13)
  {
    v14 = sub_1C5BCB0C4();
    v30 = v4;
    v15 = v7;
    v16 = v14;
    *(v14 + 16) = v13;
    bzero((v14 + 32), 4 * v13);
    *(v2 + 16) = v16;
    v17 = sub_1C5BCB0C4();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 4 * v13);
    *(v2 + 24) = v17;
    v18 = sub_1C5BCB0C4();
    *(v18 + 16) = v13;
    bzero((v18 + 32), 4 * v13);
    *(v2 + 32) = v18;
    v19 = sub_1C5BCB0C4();
    *(v19 + 16) = v13;
    bzero((v19 + 32), 4 * v13);
    *(v2 + 40) = v19;
    v20 = sub_1C5BCB0C4();
    *(v20 + 16) = v13;
    bzero((v20 + 32), 4 * v13);
    *(v2 + 48) = v20;
    v7 = v15;
    v4 = v30;
    v21 = sub_1C5BCB0C4();
    *(v21 + 16) = v13;
    bzero((v21 + 32), 4 * v13);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    *(v2 + 16) = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = v21;
    *(v2 + 32) = v21;
    *(v2 + 40) = v21;
    *(v2 + 48) = v21;
  }

  *(v2 + 56) = v21;
  *(v2 + 64) = 2.0 / v13;
  v22 = (*(v9 + 104))(v11, *MEMORY[0x1E69E5B00], v8);
  if (!v13)
  {
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v22);
  *(&v29 - 4) = v11;
  *(&v29 - 24) = 0;
  v27 = v13;
  v23 = sub_1C5AC9AAC(v13, sub_1C5AA90AC);
  v24 = sub_1C5ABD9C4(v23);

  (*(v9 + 8))(v11, v8);
  *(v2 + 72) = v13;
  *(v2 + 80) = v24;
  (*(v31 + 104))(v7, *MEMORY[0x1E69E5B08], v4);
  type metadata accessor for DSPSplitComplex(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1966A0);
  swift_allocObject();
  v25 = sub_1C5BC76D4();
  if (v25)
  {
    *(v2 + 88) = v25;
    return v2;
  }

LABEL_19:
  v28 = 0;
  v27 = 51;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

uint64_t sub_1C5AA8FFC()
{

  return v0;
}

uint64_t sub_1C5AA9054()
{
  sub_1C5AA8FFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5AA90AC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1966A8);
  sub_1C5AA9134();
  result = sub_1C5BC76B4();
  *a2 = v4;
  return result;
}

unint64_t sub_1C5AA9134()
{
  result = qword_1EDA45D40;
  if (!qword_1EDA45D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D40);
  }

  return result;
}

void sub_1C5AA9198(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 56));
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

double sub_1C5AA932C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 60));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5942458(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C5AA9484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  return v1;
}

uint64_t NowPlayingQueueSection.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - v3;
  *(&v60 + 1) = *(a1 + 3);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D8);
  v54 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v55 = sub_1C5BC8AB4();
  v53 = a1;
  *&v60 = *(a1 + 2);
  v56 = sub_1C5BC8AB4();
  v57 = sub_1C5BC8AB4();
  v4 = sub_1C5BCA934();
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v45 - v5;
  v58 = *(a1 + 5);
  v6 = MEMORY[0x1E697E5D8];
  v98 = v58;
  v99 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v97 = v6;
  v94 = swift_getWitnessTable();
  v95 = v6;
  v92 = swift_getWitnessTable();
  v93 = v6;
  v7 = swift_getWitnessTable();
  v8 = sub_1C5924F54(&qword_1EC1966E0, &qword_1EC1966D0);
  v90 = v7;
  v91 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC1966E8, &qword_1EC1966D8);
  v88 = v9;
  v89 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v86 = v11;
  v87 = v12;
  v13 = swift_getWitnessTable();
  v14 = *(v53 + 4);
  v15 = sub_1C5AA9E1C();
  v84 = v14;
  v85 = v15;
  v82 = swift_getWitnessTable();
  v83 = v12;
  v16 = swift_getWitnessTable();
  v79 = v13;
  v80 = v16;
  v81 = MEMORY[0x1E6981E60];
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v56 = v4;
  v75 = v4;
  v76 = v63;
  v46 = v17;
  v77 = v17;
  v78 = v18;
  v19 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = &v45 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  v47 = OpaqueTypeMetadata2;
  v23 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  v50 = v23;
  v24 = sub_1C5BC8AB4();
  v54 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v45 - v27;
  *&v28 = v14;
  *(&v28 + 1) = v58;
  v67 = v60;
  v68 = v28;
  v69 = v61;
  v64 = v60;
  v65 = v28;
  v66 = v61;
  v29 = v59;
  sub_1C5AAB260(sub_1C5AAA138);
  v30 = sub_1C5BC89B4();
  v31 = v62;
  (*(*(v30 - 8) + 104))();
  sub_1C5AAF53C(&qword_1EDA46688, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v33 = v56;
    v34 = v63;
    v35 = v46;
    sub_1C5BC9F54();
    sub_1C5924EF4(v31, &qword_1EC192838);
    (*(v51 + 8))(v29, v33);
    v74 = sub_1C5BCA484();
    v75 = v33;
    v76 = v34;
    v77 = v35;
    v78 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v47;
    v38 = v48;
    sub_1C5AAB330(&v74, MEMORY[0x1E69815C0], OpaqueTypeConformance2, MEMORY[0x1E6981580], v48, 0.0, 0.0, 0.0, 0.0);

    (*(v49 + 8))(v22, v37);
    v39 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
    v72 = OpaqueTypeConformance2;
    v73 = v39;
    v40 = swift_getWitnessTable();
    v41 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
    v70 = v40;
    v71 = v41;
    v42 = swift_getWitnessTable();
    v43 = v53;
    sub_1C593EDC0(v38, v24, v42);
    v44 = *(v54 + 8);
    v44(v38, v24);
    sub_1C593EDC0(v43, v24, v42);
    return (v44)(v43, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5AA9E1C()
{
  result = qword_1EC1966F0;
  if (!qword_1EC1966F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1966F0);
  }

  return result;
}

uint64_t sub_1C5AA9E70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  sub_1C5BC97C4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  KeyPath = swift_getKeyPath();
  v24 = 0;
  MEMORY[0x1C694E550](&KeyPath, a1, &type metadata for RowSeparatorModifier, a2);
  sub_1C5942458(KeyPath, v24);
  v16 = sub_1C5AA9E1C();
  v22[4] = a2;
  v22[5] = v16;
  WitnessTable = swift_getWitnessTable();
  sub_1C595BB1C(0xD000000000000014, 0x80000001C5BFA1F0);
  (*(v6 + 8))(v8, v5);
  v18 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v22[2] = WitnessTable;
  v22[3] = v18;
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_1C593EDC0(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_1C5AAA150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a4;
  v101 = a2;
  v94 = a6;
  v11 = sub_1C5BC90D4();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = a2;
  *(&v121 + 1) = a3;
  v122 = a4;
  v123 = a5;
  v13 = type metadata accessor for NowPlayingQueueSection();
  v89 = *(v13 - 8);
  v99 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v68 - v14;
  v15 = sub_1C5BC8AB4();
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v70 = sub_1C5BC8AB4();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v68 - v18;
  v74 = sub_1C5BC8AB4();
  v78 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v19;
  v75 = sub_1C5BC8AB4();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v68 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D0);
  v81 = sub_1C5BC8AB4();
  v85 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v98 = &v68 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D8);
  v83 = sub_1C5BC8AB4();
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v68 - v22;
  sub_1C5BC97C4();
  v88 = sub_1C5BC8AB4();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v68 - v25;
  sub_1C5BC98C4();
  v69 = v13;
  sub_1C5AA9198(v13, &v121);
  sub_1C5AB043C();
  v95 = a3;
  v96 = a1;
  v100 = a5;
  sub_1C5BCA2F4();
  sub_1C5BC98E4();
  sub_1C5AA9198(v13, &v121);
  sub_1C5AB0588();
  v119 = a5;
  v120 = MEMORY[0x1E697E5D8];
  v26 = MEMORY[0x1E697E5D8];
  v27 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v29 = v71;
  sub_1C5BCA2F4();
  (*(v76 + 8))(v17, v15);
  sub_1C5BC98A4();
  v117 = WitnessTable;
  v118 = v26;
  v30 = v26;
  v31 = v70;
  v32 = swift_getWitnessTable();
  v33 = v72;
  sub_1C5BCA2F4();
  (*(v77 + 8))(v29, v31);
  sub_1C5BC98B4();
  v115 = v32;
  v116 = v30;
  v68 = v27;
  v34 = v74;
  v35 = swift_getWitnessTable();
  v36 = v73;
  sub_1C5BCA2F4();
  (*(v78 + 8))(v33, v34);
  sub_1C5BCAA34();
  v77 = v37;
  v102 = v101;
  v103 = a3;
  v38 = v96;
  v104 = v97;
  v105 = v100;
  v106 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968A8);
  v113 = v35;
  v114 = MEMORY[0x1E697E5D8];
  v39 = v75;
  v78 = swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1968B0, &qword_1EC1968A8);
  sub_1C5BC9CE4();
  (*(v79 + 8))(v36, v39);
  v40 = v89;
  v79 = *(v89 + 16);
  v41 = v86;
  v42 = v69;
  (v79)(v86, v38, v69);
  v43 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v95;
  *(v44 + 2) = v101;
  *(v44 + 3) = v45;
  v46 = v97;
  v47 = v100;
  *(v44 + 4) = v97;
  *(v44 + 5) = v47;
  v48 = *(v40 + 32);
  v48(&v44[v43], v41, v42);
  (v79)(v41, v96, v42);
  v49 = swift_allocObject();
  v50 = v95;
  *(v49 + 2) = v101;
  *(v49 + 3) = v50;
  v51 = v100;
  *(v49 + 4) = v46;
  *(v49 + 5) = v51;
  v48(&v49[v43], v41, v42);
  v52 = sub_1C5924F54(&qword_1EC1966E0, &qword_1EC1966D0);
  v111 = v78;
  v112 = v52;
  v53 = v81;
  v54 = swift_getWitnessTable();
  v55 = v80;
  v56 = v98;
  sub_1C5BC9FE4();

  (*(v85 + 8))(v56, v53);
  v57 = v91;
  sub_1C5BC90C4();
  v58 = sub_1C5924F54(&qword_1EC1966E8, &qword_1EC1966D8);
  v109 = v54;
  v110 = v58;
  v59 = v83;
  v60 = swift_getWitnessTable();
  v61 = v82;
  sub_1C5BCA134();
  (*(v92 + 8))(v57, v93);
  (*(v87 + 8))(v55, v59);
  v62 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v107 = v60;
  v108 = v62;
  v63 = v88;
  v64 = swift_getWitnessTable();
  v65 = v84;
  sub_1C593EDC0(v61, v63, v64);
  v66 = *(v90 + 8);
  v66(v61, v63);
  sub_1C593EDC0(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_1C5AAAC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v21 = a6;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v11 = type metadata accessor for NowPlayingQueueSection();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  (*(v12 + 16))(&v20 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  result = (*(v12 + 32))(&v17[v16], v15, v11);
  v19 = v21;
  *v21 = sub_1C5AAFB60;
  v19[1] = v17;
  return result;
}

uint64_t sub_1C5AAADF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v18 = sub_1C5BCA484();
  v12 = sub_1C5BCAA44();
  v14 = v13;
  v15 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968B8) + 36);
  sub_1C5AAAEC8(a1, a2, a3, a4, a5, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968C0);
  v17 = (v15 + *(result + 36));
  *v17 = v12;
  v17[1] = v14;
  *a6 = v18;
  return result;
}

double sub_1C5AAAEC8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21[1] = a1;
  v11 = type metadata accessor for NowPlayingContrastSensitiveBackdrop();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1C5BC9384();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  (*(v15 + 8))(v17, v14);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v23 = a4;
  *(&v23 + 1) = a5;
  type metadata accessor for NowPlayingQueueSection();
  sub_1C5AA9484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C5A48438(v13, a6);
  v18 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968C8) + 36));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  result = *&v24;
  v18[2] = v24;
  return result;
}

void sub_1C5AAB0EC(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, BOOL *a5@<X8>)
{
  v10 = sub_1C5BC9384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = v19;
  v25.size.height = v21;
  MinY = CGRectGetMinY(v25);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v23 = type metadata accessor for NowPlayingQueueSection();
  *a5 = MinY <= sub_1C5AA932C(v23) + 20.0;
}

uint64_t sub_1C5AAB260(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return sub_1C5BCA914();
}

uint64_t sub_1C5AAB330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v26[1] = a5;
  v26[2] = a4;
  v26[0] = a1;
  v15 = sub_1C5BCB804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  v19 = sub_1C5BC8AB4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v26 - v21;
  *&v26[5] = a6;
  *&v26[6] = a7;
  *&v26[7] = a8;
  *&v26[8] = a9;
  v27 = 0;
  sub_1C5BC9EE4();
  v23 = *(a2 - 8);
  (*(v23 + 16))(v18, v26[0], a2);
  (*(v23 + 56))(v18, 0, 1, a2);
  v24 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  v26[3] = a3;
  v26[4] = v24;
  swift_getWitnessTable();
  sub_1C5BCA004();
  (*(v16 + 8))(v18, v15);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_1C5AAB5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  (*(*(a3 - 8) + 32))(a5, a1);
  v9 = type metadata accessor for NowPlayingQueueSection();
  (*(*(a4 - 8) + 32))(a5 + v9[13], a2, a4);
  v10 = a5 + v9[14];
  *v10 = swift_getKeyPath();
  *(v10 + 73) = 0;
  v11 = a5 + v9[15];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = v9[16];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v9[17];
  result = sub_1C5BCA684();
  *v13 = v6;
  *(v13 + 8) = a4;
  return result;
}

uint64_t NowPlayingQueueSection.init(content:header:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15(v12);
  a2(v16);
  return sub_1C5AAB5D8(v14, v10, a3, a4, a5);
}

uint64_t NowPlayingQueueSection<>.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8(v5);
  return sub_1C5AAB5D8(v7, v9, a2, MEMORY[0x1E6981E70], a3);
}

uint64_t NowPlayingQueueSection<>.init<A, B>(_:rowContent:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a6;
  v54 = a3;
  v49 = a5;
  v50 = a4;
  v47 = a2;
  v51 = a9;
  v52 = a1;
  v42 = a12;
  v40 = a8;
  v41 = a13;
  v46 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v16 - 8);
  v17 = v45;
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  swift_getAssociatedTypeWitness();
  v39 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = sub_1C5BC86A4();
  v44 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = a7;
  v57 = AssociatedTypeWitness;
  v58 = v23;
  v59 = v21;
  v60 = AssociatedConformanceWitness;
  v25 = sub_1C5BCA8C4();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  (*(v17 + 16))(v43, v52, a7, v26);
  v29 = swift_allocObject();
  v29[2] = v53;
  v29[3] = a7;
  v30 = v46;
  v29[4] = v40;
  v29[5] = v30;
  v32 = v41;
  v31 = v42;
  v29[6] = v21;
  v29[7] = v31;
  v33 = v39;
  v29[8] = v32;
  v29[9] = v33;
  v29[10] = v47;
  v29[11] = v54;

  WitnessTable = swift_getWitnessTable();
  v35 = sub_1C5BCA8B4();
  v36 = v48;
  v50(v35);
  v55 = WitnessTable;
  swift_getWitnessTable();
  sub_1C5AAB5D8(v28, v36, v25, v53, v51);

  return (*(v45 + 8))(v52, a7);
}

uint64_t sub_1C5AABC88@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v21[1] = a3;
  v22 = a2;
  v23 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BC86A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v22(a1, v15);
  sub_1C5BCA3E4();
  (*(v7 + 8))(v9, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1C593EDC0(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t NowPlayingQueueRow.init(item:artwork:title:subtitle:action:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *(a15 - 8);
  (*(v18 + 16))(a8, a1, a15);
  v19 = type metadata accessor for NowPlayingQueueRow();
  a2();
  result = (*(v18 + 8))(a1, a15);
  v21 = a8 + v19[14];
  *v21 = a3;
  *(v21 + 8) = a4;
  *(v21 + 16) = a5 & 1;
  *(v21 + 24) = a6;
  v22 = a8 + v19[15];
  *v22 = a7;
  *(v22 + 8) = a9;
  *(v22 + 16) = a10 & 1;
  *(v22 + 24) = a11;
  v23 = (a8 + v19[16]);
  *v23 = a12;
  v23[1] = a13;
  return result;
}

uint64_t NowPlayingQueueRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = *(a1 + 16);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196718);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196720);
  v4 = sub_1C5BC8AB4();
  v5 = sub_1C5BC92E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C5924F54(qword_1EC196728, &qword_1EC196720);
  v6 = swift_getWitnessTable();
  v7 = sub_1C5AAF53C(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = sub_1C5BCA6F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v18[4] = v3;
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v21 = v18[0];

  sub_1C5BCA6E4();
  v15 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v15);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C593EDC0(v14, v8, v15);
  return (v16)(v14, v8);
}

uint64_t sub_1C5AAC4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v65 = a4;
  v63 = a3;
  v60 = a2;
  v64 = a1;
  v73 = a6;
  v74 = sub_1C5BC92E4();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC8C04();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C5BC96A4();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196718);
  swift_getTupleTypeMetadata2();
  v53 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5BCA714();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v13 = sub_1C5BC8AB4();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = v46 - v14;
  v47 = swift_getWitnessTable();
  v86 = v47;
  v87 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  v80 = v13;
  v81 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = v46 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196720);
  v59 = OpaqueTypeMetadata2;
  v19 = sub_1C5BC8AB4();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v46 - v20;
  v80 = v13;
  v81 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C5924F54(qword_1EC196728, &qword_1EC196720);
  v46[1] = OpaqueTypeConformance2;
  v84 = OpaqueTypeConformance2;
  v85 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5AAF53C(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  v80 = v19;
  v81 = v74;
  v51 = v23;
  v82 = v23;
  v83 = v24;
  v49 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v46 - v29;
  v75 = v60;
  v76 = v63;
  v77 = v65;
  v78 = v67;
  v79 = v64;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  sub_1C5BC98F4();
  v31 = v48;
  sub_1C5BCA2F4();
  (*(v54 + 8))(v12, v10);
  v32 = v61;
  sub_1C5BC9684();
  v67 = v18;
  sub_1C5BCA0C4();
  (*(v62 + 8))(v32, v66);
  (*(v55 + 8))(v31, v13);
  v33 = v68;
  sub_1C5BC8BF4();
  if (qword_1EC1907B0 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196880);
  __swift_project_value_buffer(v34, qword_1EC1966B0);
  sub_1C5924F54(&qword_1EC196888, &qword_1EC196880);
  v35 = v56;
  v36 = v33;
  v37 = v59;
  v38 = v67;
  sub_1C5BC9E94();
  (*(v69 + 8))(v36, v70);
  (*(v58 + 8))(v38, v37);
  v39 = v71;
  v40 = v74;
  v41 = v51;
  v42 = v49;
  sub_1C5AF76C4();
  sub_1C5BC9E04();
  (*(v72 + 8))(v39, v40);
  (*(v57 + 8))(v35, v19);
  v80 = v19;
  v81 = v40;
  v82 = v41;
  v83 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v27, v25, v43);
  v44 = *(v50 + 8);
  v44(v27, v25);
  sub_1C593EDC0(v30, v25, v43);
  return (v44)(v30, v25);
}

uint64_t sub_1C5AACF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v45 = a1;
  v10 = type metadata accessor for ArtworkCornerStyle(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8AB4();
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  v17 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  v36[1] = v17;
  v18 = sub_1C5BC8AB4();
  v38 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v41 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v42 = a5;
  v43 = v36 - v21;
  v56[0] = a2;
  v40 = a3;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  type metadata accessor for NowPlayingQueueRow();
  sub_1C5BCAA54();
  v39 = a2;
  sub_1C5BCA234();
  v22 = *(v11 + 28);
  v23 = *MEMORY[0x1E697F480];
  v24 = sub_1C5BC9044();
  (*(*(v24 - 8) + 104))(&v13[v22], v23, v24);
  *v13 = 0x4010000000000000;
  if (qword_1EDA4DAD0 != -1)
  {
    swift_once();
  }

  v51[0] = xmmword_1EDA5DB28;
  v51[1] = *algn_1EDA5DB38;
  v52 = qword_1EDA5DB48;
  v36[0] = a4;
  v50[6] = a4;
  v50[7] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v26 = v41;
  sub_1C5AC1394(v13, v51, v14, WitnessTable, v41, 0.5);
  sub_1C5AAF784(v13, type metadata accessor for ArtworkCornerStyle);
  (*(v37 + 8))(v16, v14);
  v27 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28);
  v50[4] = WitnessTable;
  v50[5] = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30);
  v50[2] = v28;
  v50[3] = v29;
  v30 = swift_getWitnessTable();
  v31 = v43;
  sub_1C593EDC0(v26, v18, v30);
  v32 = v38;
  v37 = *(v38 + 8);
  (v37)(v26, v18);
  v33 = sub_1C5BC9134();
  v49[0] = 0;
  sub_1C5AAD578(v39, v40, v36[0], v42, v56);
  memcpy(v53, v56, 0x169uLL);
  memcpy(v54, v56, 0x169uLL);
  sub_1C59400B0(v53, v55, &qword_1EC196890);
  sub_1C5924EF4(v54, &qword_1EC196890);
  memcpy(v56 + 7, v53, 0x169uLL);
  v55[0] = v33;
  v55[1] = 0x4010000000000000;
  LOBYTE(v55[2]) = v49[0];
  memcpy(&v55[2] + 1, v56, 0x170uLL);
  (*(v32 + 16))(v26, v31, v18);
  v50[0] = v26;
  memcpy(v49, v55, 0x181uLL);
  v50[1] = v49;
  sub_1C59400B0(v55, v56, &qword_1EC196718);
  v48[0] = v18;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196718);
  v46 = v30;
  v47 = sub_1C5924F54(&qword_1EC196898, &qword_1EC196718);
  sub_1C594226C(v50, 2uLL, v48);
  sub_1C5924EF4(v55, &qword_1EC196718);
  v34 = v37;
  (v37)(v31, v18);
  memcpy(v56, v49, 0x181uLL);
  sub_1C5924EF4(v56, &qword_1EC196718);
  return v34(v26, v18);
}

uint64_t sub_1C5AAD578@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v46 = a5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v102 = a1;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  type metadata accessor for NowPlayingQueueRow();
  if (qword_1EC1907B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C5BC9C14();
  v51 = v17;
  v52 = v16;
  v19 = v18;
  v53 = v20;
  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC1A6AB0;
  v22 = sub_1C5BCA4C4();
  v102 = v21;
  v86[0] = v22;

  v50 = sub_1C5BC85E4();
  v49 = sub_1C5BC85E4();

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  v48 = v19 & 1;
  v129 = v19 & 1;
  KeyPath = swift_getKeyPath();
  v130 = 0;
  sub_1C5BC9A44();
  v23 = sub_1C5BC9C14();
  v43 = v24;
  v44 = v23;
  v40 = v25;
  v45 = v26;

  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v27 = qword_1EC1A6AB8;
  v28 = *(v42 + 36);
  v29 = *MEMORY[0x1E6981DB8];
  v30 = sub_1C5BCAB54();
  (*(*(v30 - 8) + 104))(v15 + v28, v29, v30);
  *v15 = v27;

  v31 = sub_1C5BCA524();
  sub_1C59400B0(v15, v12, &unk_1EC196170);
  v102 = v31;
  sub_1C59400B0(v12, v41, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);

  v42 = sub_1C5BC85E4();
  v41 = sub_1C5BC85E4();

  sub_1C5924EF4(v12, &unk_1EC196170);
  sub_1C5924EF4(v15, &unk_1EC196170);
  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  LOBYTE(v31) = v40 & 1;
  v119 = v40 & 1;
  v32 = swift_getKeyPath();
  *&v62 = v52;
  *(&v62 + 1) = v51;
  LOBYTE(v63) = v48;
  *(&v63 + 1) = v128[0];
  DWORD1(v63) = *(v128 + 3);
  *(&v63 + 1) = v53;
  *&v64 = v50;
  v69 = v125;
  v70 = v126;
  v71 = v127;
  v65 = v121;
  v66 = v122;
  v67 = v123;
  v68 = v124;
  *(&v64 + 1) = v49;
  *&v72 = KeyPath;
  *(&v72 + 1) = 1;
  v54[8] = v126;
  v54[9] = v127;
  v54[4] = v122;
  v54[5] = v123;
  v54[6] = v124;
  v54[7] = v125;
  v54[0] = v62;
  v54[1] = v63;
  v54[2] = v64;
  v54[3] = v121;
  v54[10] = v72;
  v34 = v43;
  v33 = v44;
  *&v74 = v44;
  *(&v74 + 1) = v43;
  LOBYTE(v75) = v31;
  *(&v75 + 1) = *v118;
  DWORD1(v75) = *&v118[3];
  v35 = v45;
  *(&v75 + 1) = v45;
  v37 = v41;
  v36 = v42;
  *&v76 = v42;
  *(&v76 + 1) = v41;
  v81 = v59;
  v82 = v60;
  v83 = v61;
  v77 = v55;
  v78 = v56;
  v79 = v57;
  v80 = v58;
  *&v84 = v32;
  *(&v84 + 1) = 1;
  *(&v54[16] + 8) = v57;
  *(&v54[17] + 8) = v58;
  *(&v54[18] + 8) = v59;
  *(&v54[19] + 8) = v60;
  *(&v54[20] + 8) = v61;
  *(&v54[21] + 8) = v84;
  *(&v54[15] + 8) = v56;
  *(&v54[11] + 8) = v74;
  *(&v54[12] + 8) = v75;
  *(&v54[13] + 8) = v76;
  v120 = 0;
  v73 = 0;
  LOBYTE(v54[11]) = 0;
  v85 = 0;
  BYTE8(v54[22]) = 0;
  *(&v54[14] + 8) = v55;
  memcpy(v46, v54, 0x169uLL);
  v86[0] = v33;
  v86[1] = v34;
  v87 = v31;
  *v88 = *v118;
  *&v88[3] = *&v118[3];
  v89 = v35;
  v90 = v36;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  v92 = v55;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  v91 = v37;
  v99 = v32;
  v100 = 1;
  v101 = 0;
  sub_1C59400B0(&v62, &v102, &qword_1EC1968A0);
  sub_1C59400B0(&v74, &v102, &qword_1EC1968A0);
  sub_1C5924EF4(v86, &qword_1EC1968A0);
  v102 = v52;
  v103 = v51;
  LOBYTE(v104) = v48;
  *(&v104 + 1) = v128[0];
  HIDWORD(v104) = *(v128 + 3);
  v105 = v53;
  v106 = v50;
  v107 = v49;
  v112 = v125;
  v113 = v126;
  v114 = v127;
  v108 = v121;
  v109 = v122;
  v111 = v124;
  v110 = v123;
  v115 = KeyPath;
  v116 = 1;
  v117 = 0;
  return sub_1C5924EF4(&v102, &qword_1EC1968A0);
}

void sub_1C5AADDA0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C5AAE518(319, &qword_1EDA467C8, &type metadata for DeviceMetrics, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C5AAE518(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C594F100();
          if (v4 <= 0x3F)
          {
            sub_1C5AAE518(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AADEF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v36 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC90F4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  v16 = *(v8 + 64) + 7;
  v17 = *(v11 + 80) & 0xF8;
  v18 = ~v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 16;
  v20 = v12 + 8;
  if (v14 < a2)
  {
    v21 = ((v20 + ((v19 + ((((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (!v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (!v26)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v35 = v14 + (v29 | v28);
    return (v35 + 1);
  }

LABEL_33:
  if (v7 != v14)
  {
    v31 = ((a1 + v15) & ~v13);
    if (v9 == v14)
    {
      v30 = *(v8 + 48);
      v32 = v9;
      v33 = v36;
      goto LABEL_37;
    }

    v34 = *(((v20 + ((v19 + ((((v31 + v16) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v18)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    v35 = v34 - 1;
    if (v35 < 0)
    {
      v35 = -1;
    }

    return (v35 + 1);
  }

  v30 = *(v6 + 48);
  v31 = a1;
  v32 = v7;
  v33 = v5;
LABEL_37:

  return v30(v31, v32, v33);
}

void sub_1C5AAE1DC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v7 = *(v37 - 8);
  v35 = *(a4 + 24);
  v36 = v7;
  v8 = *(v7 + 84);
  v9 = *(v35 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1C5BC90F4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v9 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = *(v9 + 64) + 7;
  v18 = *(v12 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v13 + 8;
  v22 = ((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v25 = 0;
    v26 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v28 = ~v14 + a2;
      bzero(a1, ((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v28;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v25)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v14 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = a2 - v14;
  if (a2 > v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v22) = 0;
  }

  else if (v25)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v8 == v14)
  {
    v29 = v37;
    v30 = *(v36 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v8;
  }

  else
  {
    v31 = ((a1 + v16) & ~v15);
    if (v10 != v14)
    {
      v34 = ((v21 + ((v20 + ((((v31 + v17) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v34 = (a2 - 0x7FFFFFFF);
        v34[1] = 0;
      }

      else
      {
        v34[1] = a2;
      }

      return;
    }

    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v35;
  }

  v30(v31, v32, v33, v29);
}

void sub_1C5AAE518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C5AAE568()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1C5927B74();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C5AAE61C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_1C5AAE7FC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v27[2] = 0;
            v27[3] = 0;
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[3] = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t sub_1C5AAEAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v55 = a3;
  v56 = a2;
  v63 = a4;
  v5 = sub_1C5BCA944();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v50 - v12;
  v13 = sub_1C5BC8F34();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC9054();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C5BC94F4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196858);
  v24 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - v28;
  v30 = *(v17 + 16);
  v59 = a1;
  v30(v19, a1, v16, v27);
  sub_1C5AAF1FC(1);
  if (v55)
  {
    v31 = v56;
    if (v56 == 3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v32 = v56;
    sub_1C5950E48(v56, 0);
    sub_1C5BCB4E4();
    v33 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v32, 0);
    (*(v50 + 8))(v15, v51);
    v31 = v64[0];
    if (v64[0] == 3)
    {
      goto LABEL_6;
    }
  }

  if (!v31)
  {
    sub_1C5BCA484();
    goto LABEL_9;
  }

LABEL_6:
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

LABEL_9:
  sub_1C5BC8554();
  sub_1C5BCA0F4();

  (*(v21 + 8))(v23, v20);
  sub_1C5AAF53C(&qword_1EC196860, MEMORY[0x1E697F4E0]);
  if (sub_1C5BCB404())
  {
    v34 = 1;
    v35 = v60;
  }

  else
  {
    sub_1C5BCB424();
    sub_1C5AAF53C(&qword_1EC196868, MEMORY[0x1E697F4E0]);
    sub_1C5BCAD54();
    v36 = sub_1C5BCB484();
    v38 = v52;
    v37 = v53;
    v39 = v54;
    (*(v53 + 16))(v52);
    v36(v64, 0);
    sub_1C5BCA484();
    sub_1C5BC8554();
    v35 = v60;
    sub_1C5BCA0F4();

    (*(v37 + 8))(v38, v39);
    v34 = 0;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196870);
  (*(*(v40 - 8) + 56))(v35, v34, 1, v40);
  v41 = v61;
  sub_1C59889A0(v35, v61);
  v42 = *(v24 + 16);
  v44 = v57;
  v43 = v58;
  v42(v58, v29, v57);
  v45 = v62;
  sub_1C5988A10(v41, v62);
  v46 = v63;
  v42(v63, v43, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196878);
  sub_1C5988A10(v45, &v46[*(v47 + 48)]);
  sub_1C5988A80(v41);
  v48 = *(v24 + 8);
  v48(v29, v44);
  sub_1C5988A80(v45);
  return (v48)(v43, v44);
}

uint64_t sub_1C5AAF1FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = sub_1C5BC9054();
  sub_1C5AAF53C(&qword_1EC196860, MEMORY[0x1E697F4E0]);
  result = sub_1C5BCB3E4();
  if (__OFSUB__(result, v2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1C5BCB3D4();
  sub_1C5BCB424();
  sub_1C5BCB3F4();
  if (v5)
  {
    sub_1C5BCB424();
  }

  else
  {
    v7 = v4;
  }

  result = sub_1C5BCB3D4();
  if (v7 >= v6)
  {
    sub_1C5BCB474();
    return (*(*(v3 - 8) + 8))(v1, v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C5AAF368(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196830);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  v7 = *(v1 + 8);
  (*(v8 + 16))(&v11 - v5, a1, v3, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  sub_1C5950E48(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196838);
  sub_1C5924F54(&qword_1EC196840, &qword_1EC196830);
  sub_1C5924F54(&qword_1EC196848, &qword_1EC196838);
  return sub_1C5BCA564();
}

uint64_t sub_1C5AAF53C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5AAF5B4()
{
  v0 = sub_1C5BC8B84();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196880);
  __swift_allocate_value_buffer(v4, qword_1EC1966B0);
  v5 = __swift_project_value_buffer(v4, qword_1EC1966B0);
  v6 = *(v1 + 28);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1C5BC9044();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  sub_1C5AAF6F0(v3, v5);
  *(v5 + *(v4 + 36)) = xmmword_1C5BE3D40;
  return sub_1C5AAF784(v3, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1C5AAF6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC8B84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5AAF754()
{
  if (_UISolariumEnabled())
  {
    result = sub_1C5BC9A04();
  }

  else
  {
    result = sub_1C5BC9924();
  }

  qword_1EC1966C8 = result;
  return result;
}

uint64_t sub_1C5AAF784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C5AAF7F4(BOOL *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for NowPlayingQueueSection();

  sub_1C5AAB0EC(v3, v4, v5, v6, a1);
}

uint64_t sub_1C5AAF8B0()
{
  type metadata accessor for NowPlayingQueueSection();
  type metadata accessor for NowPlayingQueueSection();
  return sub_1C5AA94E4();
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = type metadata accessor for NowPlayingQueueSection();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v8 - 8) + 8))(v3 + v2[13]);
  v4 = v3 + v2[14];
  sub_1C596AC80(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 73));
  sub_1C5942458(*(v3 + v2[15]), *(v3 + v2[15] + 8));
  v5 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC90F4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5AAFB60@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for NowPlayingQueueSection() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1C5AAADF0(v8, v3, v4, v5, v6, a1);
}

unint64_t sub_1C5AAFC1C()
{
  result = qword_1EC1968D0;
  if (!qword_1EC1968D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968D8);
    sub_1C5924F54(&qword_1EC1968E0, &qword_1EC1968E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1968D0);
  }

  return result;
}

uint64_t sub_1C5AAFCD0@<X0>(char a1@<W0>, char **a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v101 = v3;
  if (a1)
  {
    v4 = &unk_1F4517040;
  }

  else
  {
    v4 = &unk_1F4518870;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = sub_1C59D9728(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v92 = a2;
    if (a1)
    {
      v8 = &unk_1F4517040;
    }

    else
    {
      v8 = &unk_1F4518870;
    }

    v9 = &v8[16 * v7];
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);
    swift_bridgeObjectRetain_n();
    v93 = v10;

    if (*(v11 + 16))
    {
      v12 = 0;
      v13 = 0;
      v14 = v101;
      v15 = 0.0;
      v16 = 0.0 / v101;
      v100 = v101 + 1;
      v17 = v11 + 48;
      v94 = v11 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      __asm { FMOV            V2.2D, #-1.0 }

      v96 = _Q2;
      v98 = v11;
      while (2)
      {
        v102 = *(v94 + 16 * v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C5B76938(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        v26 = (v25 + 1);
        v27 = v101;
        v28 = v96;
        v29 = v98;
        if (v25 >= v24 >> 1)
        {
          v40 = sub_1C5B76938((v24 > 1), v25 + 1, 1, v18);
          v29 = v98;
          v28 = v96;
          v27 = v101;
          v18 = v40;
        }

        v30 = 0;
        v31 = v15 / v14;
        *(v18 + 2) = v26;
        v32 = 40 * v25;
        v33 = &v18[40 * v25];
        *(v33 + 4) = v16;
        *(v33 + 5) = v31;
        *(v33 + 3) = vaddq_f64(vaddq_f64(v102, v102), v28);
        *(v33 + 8) = 0x3FE0000000000000;
        do
        {
          v34 = v30 + 1;
          if (&v12[v30 + 1] >= *(v29 + 16))
          {
            __break(1u);
LABEL_40:
            swift_bridgeObjectRelease_n();
            if (!*(v93 + 16))
            {
              goto LABEL_76;
            }

            v53 = 0;
            v54 = 0;
            v55 = v93 + 48;
            v13 = MEMORY[0x1E69E7CC0];
            v56 = 0.0;
LABEL_42:
            v105 = *(v93 + 32 + 16 * v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1C5B76938(0, *(v13 + 2) + 1, 1, v13);
            }

            v57 = v96;
            v59 = *(v13 + 2);
            v58 = *(v13 + 3);
            v12 = (v59 + 1);
            v27 = v101;
            v60 = v93;
            if (v59 >= v58 >> 1)
            {
              v71 = sub_1C5B76938((v58 > 1), v59 + 1, 1, v13);
              v57 = v96;
              v27 = v101;
              v13 = v71;
              v60 = v93;
            }

            v61 = 0;
            v62 = v56 / v14;
            *(v13 + 2) = v12;
            v63 = 40 * v59;
            v64 = &v13[40 * v59];
            *(v64 + 4) = v16;
            *(v64 + 5) = v62;
            *(v64 + 3) = vaddq_f64(vaddq_f64(v105, v105), v57);
            *(v64 + 8) = 0x3FE0000000000000;
            while (1)
            {
              v65 = v61 + 1;
              if (v61 + 1 + v53 >= *(v60 + 16))
              {
                break;
              }

              v66 = *(v55 + 16 * v61);
              v67 = *(v13 + 3);
              v68 = v59 + v61;
              v12 = (v68 + 2);
              if (v65 + v59 >= v67 >> 1)
              {
                v106 = v66;
                v70 = sub_1C5B76938((v67 > 1), v68 + 2, 1, v13);
                v66 = v106;
                v57 = v96;
                v27 = v101;
                v13 = v70;
                v60 = v93;
              }

              *(v13 + 2) = v12;
              v69 = &v13[v63];
              *(v69 + 9) = v65 / v14;
              *(v69 + 10) = v62;
              *(v69 + 88) = vaddq_f64(vaddq_f64(v66, v66), v57);
              *(v69 + 13) = 0x3FE0000000000000;
              v63 += 40;
              v61 = v65;
              if (v27 == v65)
              {
                if (v54 == v27)
                {
                  v72 = 0;
                  v73 = 0;
                  v12 = MEMORY[0x1E69E7CC0];
                  v74 = v27;
                  while (v73 != v27)
                  {
                    v99 = v74;
                    v75 = v73;
                    v107 = v72;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = sub_1C5B76834(0, *(v12 + 2) + 1, 1, v12);
                    }

                    v76 = v99;
                    v77 = 0;
                    v73 = v75 + 1;
                    v27 = v101;
                    v78 = v107;
                    v79 = v107 - 0xFFFFFFFFLL;
                    do
                    {
                      if (!&v77[v79])
                      {
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

                      v80 = &v77[v76];
                      if (&v77[v76] > 0xFFFFFFFDLL)
                      {
                        goto LABEL_73;
                      }

                      v81 = v78 + v77;
                      v82 = &v77[v78 + 1];
                      v83 = v80 + 2;
                      if (((v82 | &v77[v78] | (v80 + 2) | (v80 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_74;
                      }

                      v85 = *(v12 + 2);
                      v84 = *(v12 + 3);
                      if (v85 >= v84 >> 1)
                      {
                        v87 = v12;
                        v88 = v73;
                        v97 = v79;
                        v89 = sub_1C5B76834((v84 > 1), v85 + 1, 1, v87);
                        v79 = v97;
                        v76 = v99;
                        v73 = v88;
                        v27 = v101;
                        v78 = v107;
                        v12 = v89;
                      }

                      *(v12 + 2) = v85 + 1;
                      v86 = &v12[32 * v85];
                      *(v86 + 8) = v81;
                      *(v86 + 9) = v82;
                      *(v86 + 10) = v83;
                      *(v86 + 11) = v76 + v77++ + 1;
                      *(v86 + 6) = 0;
                      *(v86 + 7) = 0;
                    }

                    while (v27 != v77);
                    v72 = v78 + v100;
                    v74 = &v76[v100];
                    if (v73 == v27)
                    {
                      goto LABEL_71;
                    }
                  }

                  goto LABEL_78;
                }

                v56 = ++v54;
                v53 += v100;
                v55 += 16 * v101 + 16;
                if (v53 < *(v60 + 16))
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }
            }

LABEL_70:
            __break(1u);
LABEL_71:
            v90 = v27;

            *v92 = v18;
            v92[1] = v26;
            v92[2] = v90;
            v92[3] = v90;
            v92[4] = v13;
            v92[5] = v12;
            v92[6] = v90;
            v92[7] = v90;
            return result;
          }

          v35 = *(v17 + 16 * v30);
          v36 = *(v18 + 3);
          v37 = v25 + v30;
          v26 = (v37 + 2);
          if (v34 + v25 >= v36 >> 1)
          {
            v103 = v35;
            v39 = sub_1C5B76938((v36 > 1), v37 + 2, 1, v18);
            v35 = v103;
            v29 = v98;
            v28 = v96;
            v27 = v101;
            v18 = v39;
          }

          *(v18 + 2) = v26;
          v38 = &v18[v32];
          *(v38 + 9) = v34 / v14;
          *(v38 + 10) = v31;
          *(v38 + 88) = vaddq_f64(vaddq_f64(v35, v35), v28);
          *(v38 + 13) = 0x3FE0000000000000;
          v32 += 40;
          v30 = v34;
        }

        while (v27 != v34);
        if (v13 == v27)
        {
          v41 = 0;
          v42 = 0;
          v26 = MEMORY[0x1E69E7CC0];
          v43 = v27;
          while (v42 != v27)
          {
            v104 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1C5B76834(0, *(v26 + 2) + 1, 1, v26);
            }

            v44 = 0;
            v95 = v42 + 1;
            v27 = v101;
            v45 = v104;
            do
            {
              if (!&v44[v104 - 0xFFFFFFFFLL])
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = &v44[v43];
              if (&v44[v43] > 0xFFFFFFFDLL)
              {
                goto LABEL_68;
              }

              v13 = &v44[v45];
              v47 = &v44[v45 + 1];
              v48 = v46 + 2;
              if (((v47 | &v44[v45] | (v46 + 2) | (v46 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              v50 = *(v26 + 2);
              v49 = *(v26 + 3);
              v12 = (v50 + 1);
              if (v50 >= v49 >> 1)
              {
                v52 = sub_1C5B76834((v49 > 1), v50 + 1, 1, v26);
                v27 = v101;
                v45 = v104;
                v26 = v52;
              }

              *(v26 + 2) = v12;
              v51 = &v26[32 * v50];
              *(v51 + 8) = v13;
              *(v51 + 9) = v47;
              *(v51 + 10) = v48;
              *(v51 + 11) = v43 + v44++ + 1;
              *(v51 + 6) = 0;
              *(v51 + 7) = 0;
            }

            while (v27 != v44);
            v41 = v45 + v100;
            v43 += v100;
            v42 = v95;
            if (v95 == v27)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_77;
        }

        v15 = ++v13;
        v12 += v100;
        v17 += 16 * v101 + 16;
        if (v12 < *(v29 + 16))
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

double sub_1C5AB043C()
{
  v1 = *(v0 + 18);
  if (v1 <= 1)
  {
    v11 = *v0;
    v12 = *(v0 + 8);
    if (v1)
    {
      v13 = 1;
      v14 = *(v0 + 19);
      v15 = *(v0 + 35);
      *v16 = *(v0 + 51);
      *&v16[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(v10);
      v4 = *v0;
      v5 = *(v0 + 8);
      v6 = 1;
      v7 = *(v0 + 19);
      v8 = *(v0 + 35);
      v9[0] = *(v0 + 51);
      *(v9 + 14) = *(v0 + 65);
      DeviceMetrics.padding.getter(v3);
    }

    else
    {
      v13 = 0;
      v14 = *(v0 + 19);
      v15 = *(v0 + 35);
      *v16 = *(v0 + 51);
      *&v16[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v4);
    }
  }

  return 0.0;
}

double sub_1C5AB0588()
{
  v1 = *(v0 + 18);
  result = 16.0;
  if ((v1 - 2) >= 2)
  {
    v12 = *v0;
    v13 = *(v0 + 8);
    if (v1)
    {
      v14 = 1;
      v15 = *(v0 + 19);
      v16 = *(v0 + 35);
      *v17 = *(v0 + 51);
      *&v17[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(v11);
      v5 = *v0;
      v6 = *(v0 + 8);
      v7 = 1;
      v8 = *(v0 + 19);
      v9 = *(v0 + 35);
      v10[0] = *(v0 + 51);
      *(v10 + 14) = *(v0 + 65);
      DeviceMetrics.padding.getter(v3);
      return v4 + -16.0 + 16.0;
    }

    else
    {
      v14 = 0;
      v15 = *(v0 + 19);
      v16 = *(v0 + 35);
      *v17 = *(v0 + 51);
      *&v17[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v5);
      return 29.5;
    }
  }

  return result;
}

void sub_1C5AB06BC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 36));
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

uint64_t sub_1C5AB0850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 40);
  v10 = *v9;
  v11 = *(v9 + 8);
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (*(v9 + 32) == 1)
  {
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v12;

    return sub_1C593E7D8(v10, v11);
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC4C(v10, v11, v13, v12, 0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t NowPlayingQueue.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingQueue();
  v5 = a2 + v4[9];
  *v5 = swift_getKeyPath();
  *(v5 + 73) = 0;
  v6 = a2 + v4[10];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v7 = (a2 + v4[11]);
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle);
  *v7 = sub_1C5BC8C84();
  v7[1] = v8;
  v9 = (a2 + v4[12]);
  _s5QueueCMa();
  sub_1C5931838(qword_1EDA4A0C0, v10, _s5QueueCMa);
  *v9 = sub_1C5BC8C84();
  v9[1] = v11;
  return a1();
}

uint64_t NowPlayingQueue.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54[2] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v54[1] = v8;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  (*(v3 + 32))(v8 + v7, v6, a1);
  v75 = MEMORY[0x1E69E73E0];
  v76 = v9;
  v77 = MEMORY[0x1E69E73F0];
  v78 = v10;
  v11 = sub_1C5BC9AA4();
  WitnessTable = swift_getWitnessTable();
  v75 = v11;
  v76 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = v11;
  v76 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = OpaqueTypeMetadata2;
  v76 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  v76 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v75 = v15;
  v76 = v16;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  v17 = sub_1C5BC8AB4();
  v75 = v15;
  v76 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  v73 = v18;
  v74 = v19;
  v20 = swift_getWitnessTable();
  v75 = v17;
  v76 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v75 = v17;
  v76 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v75 = v21;
  v76 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v75 = v21;
  v76 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v75 = v23;
  v76 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968F0);
  v25 = sub_1C5BC8AB4();
  v75 = v23;
  v76 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C5924F54(&qword_1EC1968F8, &qword_1EC1968F0);
  v71 = v26;
  v72 = v27;
  v28 = swift_getWitnessTable();
  v75 = v25;
  v76 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_1C5BC88F4();
  v75 = v25;
  v76 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v75 = v29;
  v76 = v30;
  v32 = MEMORY[0x1E697C0D8];
  v77 = v31;
  v78 = MEMORY[0x1E697C0D8];
  v33 = swift_getOpaqueTypeMetadata2();
  v75 = v29;
  v76 = v30;
  v77 = v31;
  v78 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v75 = v33;
  v76 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v35 = sub_1C5BC8AB4();
  v75 = v33;
  v76 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x1E697E5D8];
  v69 = v36;
  v70 = MEMORY[0x1E697E5D8];
  v67 = swift_getWitnessTable();
  v68 = v37;
  v65 = swift_getWitnessTable();
  v66 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v63 = v38;
  v64 = v39;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E69805D0];
  v61 = v40;
  v62 = MEMORY[0x1E69805D0];
  v59 = swift_getWitnessTable();
  v60 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1C593A9AC();
  v75 = v35;
  v76 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v77 = v42;
  v78 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  v75 = v35;
  v76 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v77 = v42;
  v78 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_1C5AB32B4();
  v75 = v44;
  v76 = v45;
  v77 = v46;
  v78 = v47;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196900);
  sub_1C5BC8AB4();
  v75 = v44;
  v76 = v45;
  v77 = v46;
  v78 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1C5924F54(qword_1EC196908, &qword_1EC196900);
  v57 = v48;
  v58 = v49;
  swift_getWitnessTable();
  v55 = sub_1C5BC8B94();
  v56 = v50;
  v51 = sub_1C5BC8BA4();
  v52 = swift_getWitnessTable();
  sub_1C593EDC0(&v55, v51, v52);

  v55 = v75;
  v56 = v76;
  sub_1C593EDC0(&v55, v51, v52);
}

uint64_t sub_1C5AB135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v303 = a4;
  v300 = a2;
  v284 = a1;
  v288 = a5;
  v287 = sub_1C5BC8AF4();
  v286 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v283 = v7;
  v285 = v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_1C5BC88F4();
  v282 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v281 = v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_1C5BC94E4();
  v279 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v278 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_1C5BC93D4();
  v277 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v244 = v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = a3;
  v304 = type metadata accessor for NowPlayingQueue();
  v301 = *(v304 - 8);
  v298 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v299 = v193 - v11;
  *&v312 = MEMORY[0x1E69E73E0];
  *(&v312 + 1) = a3;
  *&v313 = MEMORY[0x1E69E73F0];
  *(&v313 + 1) = a4;
  v12 = sub_1C5BC9AA4();
  v273 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v240 = v193 - v13;
  WitnessTable = swift_getWitnessTable();
  *&v312 = v12;
  v239 = v12;
  *(&v312 + 1) = WitnessTable;
  v15 = WitnessTable;
  v241 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v270 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v238 = v193 - v17;
  *&v312 = v12;
  *(&v312 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v234 = OpaqueTypeMetadata2;
  v235 = OpaqueTypeConformance2;
  *&v312 = OpaqueTypeMetadata2;
  *(&v312 + 1) = OpaqueTypeConformance2;
  v19 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v263 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v232 = v193 - v21;
  *&v312 = OpaqueTypeMetadata2;
  *(&v312 + 1) = v19;
  v22 = swift_getOpaqueTypeConformance2();
  *&v312 = v20;
  v221 = v20;
  v222 = v22;
  *(&v312 + 1) = v22;
  v23 = v22;
  v237 = swift_getOpaqueTypeMetadata2();
  v257 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v228 = v193 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  v25 = sub_1C5BC8AB4();
  v249 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v229 = v193 - v26;
  *&v312 = v20;
  *(&v312 + 1) = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v224 = v27;
  v28 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  v329 = v27;
  v330 = v28;
  v29 = swift_getWitnessTable();
  *&v312 = v25;
  v30 = v25;
  v217 = v25;
  *(&v312 + 1) = v29;
  v31 = v29;
  v219 = v29;
  v32 = swift_getOpaqueTypeMetadata2();
  v231 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v218 = v193 - v33;
  *&v312 = v30;
  *(&v312 + 1) = v31;
  v34 = swift_getOpaqueTypeConformance2();
  *&v312 = v32;
  v35 = v32;
  v213 = v32;
  v214 = v34;
  *(&v312 + 1) = v34;
  v36 = v34;
  v37 = swift_getOpaqueTypeMetadata2();
  v227 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v212 = v193 - v38;
  *&v312 = v35;
  *(&v312 + 1) = v36;
  v39 = swift_getOpaqueTypeConformance2();
  *&v312 = v37;
  v40 = v37;
  v204 = v37;
  v205 = v39;
  *(&v312 + 1) = v39;
  v41 = v39;
  v215 = swift_getOpaqueTypeMetadata2();
  v226 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v210 = v193 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968F0);
  v43 = sub_1C5BC8AB4();
  v225 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v209 = v193 - v44;
  *&v312 = v40;
  *(&v312 + 1) = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v206 = v45;
  v46 = sub_1C5924F54(&qword_1EC1968F8, &qword_1EC1968F0);
  v327 = v45;
  v328 = v46;
  v47 = swift_getWitnessTable();
  *&v312 = v43;
  v48 = v43;
  v202 = v43;
  v203 = v47;
  *(&v312 + 1) = v47;
  v49 = v47;
  v50 = swift_getOpaqueTypeMetadata2();
  v216 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v200 = v193 - v51;
  *&v312 = v48;
  *(&v312 + 1) = v49;
  v52 = swift_getOpaqueTypeConformance2();
  *&v312 = v50;
  v197 = v50;
  v53 = v289;
  *(&v312 + 1) = v289;
  *&v313 = v52;
  v54 = v52;
  v198 = v52;
  *(&v313 + 1) = MEMORY[0x1E697C0D8];
  v55 = MEMORY[0x1E697C0D8];
  v56 = swift_getOpaqueTypeMetadata2();
  *&v291 = v56;
  v208 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v196 = v193 - v57;
  *&v312 = v50;
  *(&v312 + 1) = v53;
  *&v313 = v54;
  *(&v313 + 1) = v55;
  *(&v291 + 1) = swift_getOpaqueTypeConformance2();
  *&v312 = v56;
  *(&v312 + 1) = *(&v291 + 1);
  v58 = swift_getOpaqueTypeMetadata2();
  v220 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v194 = v193 - v59;
  v223 = v60;
  v61 = sub_1C5BC8AB4();
  v242 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v236 = v193 - v62;
  v63 = sub_1C5BC8AB4();
  v253 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v246 = v193 - v64;
  v65 = sub_1C5BC8AB4();
  v250 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v243 = v193 - v66;
  sub_1C5BC97C4();
  v67 = sub_1C5BC8AB4();
  v259 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v251 = v193 - v68;
  v69 = sub_1C5BC8AB4();
  v268 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v266 = v193 - v70;
  v71 = sub_1C5BC8AB4();
  v275 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v292 = v193 - v72;
  v312 = v291;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = MEMORY[0x1E697E5D8];
  v193[1] = v73;
  v325 = v73;
  v326 = MEMORY[0x1E697E5D8];
  v245 = v61;
  v195 = swift_getWitnessTable();
  v323 = v195;
  v324 = v74;
  v258 = v63;
  v199 = swift_getWitnessTable();
  v321 = v199;
  v322 = v74;
  v254 = v65;
  v75 = swift_getWitnessTable();
  v76 = sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v201 = v75;
  v319 = v75;
  v320 = v76;
  v262 = v67;
  v77 = swift_getWitnessTable();
  v78 = MEMORY[0x1E69805D0];
  v207 = v77;
  v317 = v77;
  v318 = MEMORY[0x1E69805D0];
  v271 = v69;
  v211 = swift_getWitnessTable();
  v315 = v211;
  v316 = v78;
  v79 = swift_getWitnessTable();
  v80 = sub_1C593A9AC();
  *&v312 = v71;
  *(&v312 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  *&v313 = v79;
  *(&v313 + 1) = v80;
  v81 = swift_getOpaqueTypeMetadata2();
  v264 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v256 = v193 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  v276 = v71;
  *&v312 = v71;
  *(&v312 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v233 = v79;
  *&v313 = v79;
  v230 = v80;
  *(&v313 + 1) = v80;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_1C5AB32B4();
  v269 = v81;
  *&v312 = v81;
  v255 = v83;
  *(&v312 + 1) = v83;
  v247 = v85;
  v248 = v84;
  *&v313 = v84;
  *(&v313 + 1) = v85;
  v86 = swift_getOpaqueTypeMetadata2();
  v261 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v252 = v193 - v87;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196900);
  v267 = v86;
  v274 = sub_1C5BC8AB4();
  v272 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v260 = v193 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v265 = v193 - v90;
  v305 = v302;
  v306 = v303;
  v91 = v300;
  v307 = v300;
  v92 = v240;
  v93 = v302;
  v94 = v303;
  sub_1C5BC9A94();
  v95 = v301;
  v96 = *(v301 + 16);
  v97 = v299;
  v98 = v91;
  v99 = v304;
  v297 = v301 + 16;
  v296 = v96;
  v96(v299, v98, v304);
  v100 = *(v95 + 80);
  v101 = (v100 + 32) & ~v100;
  v295 = v101 + v298;
  v294 = v100 | 7;
  v102 = swift_allocObject();
  *(v102 + 16) = v93;
  *(v102 + 24) = v94;
  v103 = *(v95 + 32);
  v298 = v101;
  v301 = v95 + 32;
  v290 = v103;
  v103(v102 + v101, v97, v99);
  v105 = v238;
  v104 = v239;
  sub_1C5BCA0A4();

  (*(v273 + 8))(v92, v104);
  v106 = sub_1C5BC98B4();
  v107 = v244;
  sub_1C5BC93A4();
  v108 = v232;
  v109 = v234;
  MEMORY[0x1C694E150](v106, 0x4050000000000000, 0, v107, v234, v235);
  v110 = *(v277 + 8);
  v111 = v293;
  v110(v107, v293);
  (*(v270 + 8))(v105, v109);
  v112 = sub_1C5BC98B4();
  sub_1C5BC93B4();
  v113 = v228;
  v114 = v221;
  MEMORY[0x1C694E150](v112, 0x4050000000000000, 0, v107, v221, v222);
  v110(v107, v111);
  (*(v263 + 8))(v108, v114);
  swift_getKeyPath();
  *&v312 = 0;
  v115 = v229;
  v116 = v237;
  sub_1C5BC9DF4();

  (*(v257 + 8))(v113, v116);
  sub_1C5BC98F4();
  v117 = v217;
  v118 = v218;
  sub_1C5BC9E24();
  (*(v249 + 8))(v115, v117);
  sub_1C5BC98C4();
  v119 = v304;
  sub_1C5AB06BC(v304, &v312);
  sub_1C5AB043C();
  v120 = v212;
  v121 = v213;
  sub_1C5BC9E24();
  (*(v231 + 8))(v118, v121);
  sub_1C5BC98E4();
  sub_1C5AB06BC(v119, &v312);
  sub_1C5AB043C();
  v122 = v210;
  v123 = v204;
  sub_1C5BC9E24();
  (*(v227 + 8))(v120, v123);
  v124 = v278;
  sub_1C5BC94D4();
  v125 = v209;
  v126 = v215;
  sub_1C5BCA1A4();
  (*(v279 + 8))(v124, v280);
  (*(v226 + 8))(v122, v126);
  v127 = sub_1C5BC98A4();
  v128 = v107;
  sub_1C5BC93B4();
  v129 = v200;
  v130 = v202;
  MEMORY[0x1C694E150](v127, 0x4028000000000000, 0, v128, v202, v203);
  v110(v128, v293);
  v131 = v194;
  (*(v225 + 8))(v125, v130);
  v132 = v281;
  sub_1C5BC88E4();
  v134 = v196;
  v133 = v197;
  v135 = v289;
  sub_1C5BCA3C4();
  (*(v282 + 8))(v132, v135);
  (*(v216 + 8))(v129, v133);
  v136 = v291;
  sub_1C5BCA174();
  (*(v208 + 8))(v134, v136);
  sub_1C5BC98A4();
  *(&v313 + 1) = &type metadata for Features;
  v314 = sub_1C5A2E158();
  v137 = swift_allocObject();
  *&v312 = v137;
  *(v137 + 16) = "MediaCoreUI";
  *(v137 + 24) = 11;
  *(v137 + 32) = 2;
  *(v137 + 40) = "HoveringChapterPicker";
  *(v137 + 48) = 21;
  *(v137 + 56) = 2;
  v138 = v300;
  LOBYTE(v127) = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v312);
  if ((v127 & 1) == 0)
  {
    sub_1C5AB06BC(v304, &v312);
    sub_1C5B4B500(&v312);
  }

  v139 = v236;
  v140 = v223;
  sub_1C5BCA2F4();
  (*(v220 + 8))(v131, v140);
  sub_1C5BC98C4();
  sub_1C5AB06BC(v304, &v312);
  v141 = v245;
  v142 = v246;
  sub_1C5BCA2F4();
  (*(v242 + 8))(v139, v141);
  sub_1C5BC98E4();
  sub_1C5AB06BC(v304, &v312);
  v143 = v243;
  v144 = v258;
  sub_1C5BCA2F4();
  (*(v253 + 8))(v142, v144);
  v145 = v251;
  v146 = v254;
  sub_1C595BB1C(0xD000000000000010, 0x80000001C5BFA2E0);
  (*(v250 + 8))(v143, v146);
  v147 = v299;
  v148 = v304;
  v296(v299, v138, v304);
  v149 = swift_allocObject();
  v150 = v303;
  *(v149 + 16) = v302;
  *(v149 + 24) = v150;
  v151 = v290;
  v290(v149 + v298, v147, v148);
  v152 = v266;
  v153 = v262;
  sub_1C5BCA324();

  (*(v259 + 8))(v145, v153);
  v154 = v147;
  v155 = v147;
  v156 = v148;
  v157 = v148;
  v158 = v296;
  v296(v155, v138, v156);
  v159 = v295;
  v160 = swift_allocObject();
  v161 = v303;
  *(v160 + 16) = v302;
  *(v160 + 24) = v161;
  v151(v160 + v298, v154, v157);
  v162 = v271;
  sub_1C5BC9E34();

  (*(v268 + 8))(v152, v162);
  v163 = v300;
  LOBYTE(v312) = *(sub_1C5AB4430(v157) + 16);
  v164 = v299;
  v158(v299, v163, v157);
  v165 = v286;
  v166 = v285;
  v167 = v287;
  (*(v286 + 16))(v285, v284, v287);
  v168 = (v159 + *(v165 + 80)) & ~*(v165 + 80);
  v169 = swift_allocObject();
  v170 = v303;
  *(v169 + 16) = v302;
  *(v169 + 24) = v170;
  v171 = v290;
  v290(v169 + v298, v164, v157);
  (*(v165 + 32))(v169 + v168, v166, v167);
  v172 = v256;
  v173 = v276;
  v174 = v292;
  sub_1C5BCA344();

  (*(v275 + 8))(v174, v173);
  v175 = v300;
  sub_1C5AB0850(v157, &v312);
  v310 = v312;
  v311 = v313;
  v176 = v299;
  v296(v299, v175, v157);
  v177 = swift_allocObject();
  v178 = v303;
  *(v177 + 16) = v302;
  *(v177 + 24) = v178;
  v171(v177 + v298, v176, v157);
  v179 = v252;
  v180 = v269;
  v181 = v255;
  v183 = v247;
  v182 = v248;
  sub_1C5BCA344();

  sub_1C593E820(v310, *(&v310 + 1));
  (*(v264 + 8))(v172, v180);
  sub_1C5BCAA44();
  *&v312 = v180;
  *(&v312 + 1) = v181;
  *&v313 = v182;
  *(&v313 + 1) = v183;
  v184 = swift_getOpaqueTypeConformance2();
  sub_1C5AB4650();
  v185 = v260;
  v186 = v267;
  sub_1C5BCA2C4();
  (*(v261 + 8))(v179, v186);
  v187 = sub_1C5924F54(qword_1EC196908, &qword_1EC196900);
  v308 = v184;
  v309 = v187;
  v188 = v274;
  v189 = swift_getWitnessTable();
  v190 = v265;
  sub_1C593EDC0(v185, v188, v189);
  v191 = *(v272 + 8);
  v191(v185, v188);
  sub_1C593EDC0(v190, v188, v189);
  return (v191)(v190, v188);
}

uint64_t sub_1C5AB3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for NowPlayingQueue() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1C5AB135C(a1, v8, v5, v6, a2);
}

unint64_t sub_1C5AB32B4()
{
  result = qword_1EDA4AE90;
  if (!qword_1EDA4AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
    sub_1C593AA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AE90);
  }

  return result;
}

uint64_t sub_1C5AB3338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C593EDC0(v6, v9, v10);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1C5AB3414()
{
  result = sub_1C5BC8394();
  if ((result & 1) == 0)
  {
    result = sub_1C5BC8394();
    if (result)
    {
      v1 = type metadata accessor for NowPlayingQueue();
      v2 = sub_1C5AB46A4(v1);
      KeyPath = swift_getKeyPath();
      v4 = swift_getKeyPath();

      v5 = sub_1C5B3EC04(1, v2, KeyPath, v4);
      MEMORY[0x1EEE9AC00](v5);
      sub_1C5BCAB14();
      sub_1C5BC87F4();
    }
  }

  return result;
}

uint64_t sub_1C5AB352C()
{
  v0 = type metadata accessor for NowPlayingQueue();
  sub_1C5AB0850(v0, &v6);
  v1 = v7;
  if (v7 != 1)
  {
    sub_1C593E820(v6, v7);
  }

  v2 = sub_1C5AB46A4(v0);
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  return sub_1C5B3EC04(v1 == 1, v2, KeyPath, v4);
}

uint64_t sub_1C5AB360C()
{
  v0 = type metadata accessor for NowPlayingQueue();
  v1 = sub_1C5AB46A4(v0);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();

  return sub_1C5B3EC04(0, v1, KeyPath, v3);
}

uint64_t sub_1C5AB368C()
{
  v0 = type metadata accessor for NowPlayingQueue();
  result = sub_1C5AB4430(v0);
  v2 = *(result + 16);
  if ((v2 - 1) >= 3)
  {
    if ((v2 - 4) >= 2)
    {
      sub_1C5BC8AE4();
      v6 = sub_1C5AB46A4(v0);
      KeyPath = swift_getKeyPath();
      v8 = swift_getKeyPath();

      return sub_1C5B3EC04(0, v6, KeyPath, v8);
    }

    else
    {
      v3 = sub_1C5AB46A4(v0);
      v4 = swift_getKeyPath();
      v5 = swift_getKeyPath();

      return sub_1C5B3EC04(0, v3, v4, v5);
    }
  }

  return result;
}

uint64_t sub_1C5AB37F4()
{
  v0 = type metadata accessor for NowPlayingQueue();
  sub_1C5AB0850(v0, &v9);
  if (v10 == 1)
  {
    v1 = sub_1C5AB46A4(v0);
    KeyPath = swift_getKeyPath();
    v3 = swift_getKeyPath();

    return sub_1C5B3EC04(1, v1, KeyPath, v3);
  }

  else
  {
    sub_1C593E820(v9, v10);
    v5 = sub_1C5AB46A4(v0);
    v6 = swift_getKeyPath();
    v7 = swift_getKeyPath();

    v8 = sub_1C5B3EC04(0, v5, v6, v7);
    MEMORY[0x1EEE9AC00](v8);
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }
}

uint64_t sub_1C5AB3980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for NowPlayingQueue();
  v6 = sub_1C5AB46A4(v5);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();

  return sub_1C5B3EC04(a4, v6, KeyPath, v8);
}

uint64_t sub_1C5AB3A00@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  _s5DebugCMa();
  sub_1C5931838(&qword_1EDA4A208, 255, _s5DebugCMa);
  result = sub_1C5BC8C84();
  *a1 = KeyPath;
  *(a1 + 73) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = v4;
  return result;
}

double sub_1C5AB3AA4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BCA484();
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_1C5AB3B78()
{
  v0 = sub_1C5BC8FC4();
  sub_1C5AB3AA4(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *&v3[17] = *&v4[16];
  *&v3[33] = *&v4[32];
  *&v3[49] = *&v4[48];
  v4[71] = v6;
  *&v2 = v0;
  *(&v2 + 1) = 0x4028000000000000;
  v3[0] = 0;
  *&v3[65] = *&v4[64];
  *&v3[1] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196998);
  sub_1C5924F54(&qword_1EC1969A0, &qword_1EC196998);
  sub_1C5BCA094();
  v7[2] = *&v3[16];
  v7[3] = *&v3[32];
  v8[0] = *&v3[48];
  *(v8 + 9) = *&v3[57];
  v7[0] = v2;
  v7[1] = *v3;
  return sub_1C5924EF4(v7, &qword_1EC196998);
}

uint64_t sub_1C5AB3D48@<X0>(uint64_t *a1@<X8>)
{
  _s5QueueCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

void sub_1C5AB3DC8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C5AB41DC();
    if (v1 <= 0x3F)
    {
      sub_1C5927D2C();
      if (v2 <= 0x3F)
      {
        sub_1C5936C70();
        if (v3 <= 0x3F)
        {
          sub_1C5AB422C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AB3E98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C5AB3FF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = a2 - 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1C5AB41DC()
{
  if (!qword_1EDA467C8)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467C8);
    }
  }
}

void sub_1C5AB422C()
{
  if (!qword_1EC196990)
  {
    _s5QueueCMa();
    sub_1C5931838(qword_1EDA4A0C0, v0, _s5QueueCMa);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC196990);
    }
  }
}

uint64_t sub_1C5AB42F4()
{
  type metadata accessor for NowPlayingQueue();

  return sub_1C5AB3414();
}

uint64_t sub_1C5AB4390(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C5B3EC04(v2, v3, KeyPath, v5);
}

uint64_t sub_1C5AB4430(uint64_t a1)
{
  result = *(v1 + *(a1 + 44));
  if (!result)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AB44B8()
{
  type metadata accessor for NowPlayingQueue();
  sub_1C5BC8AF4();

  return sub_1C5AB368C();
}

uint64_t sub_1C5AB45B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for NowPlayingQueue() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_1C5AB4650()
{
  result = qword_1EC1969A8;
  if (!qword_1EC1969A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1969A8);
  }

  return result;
}

uint64_t sub_1C5AB46A4(uint64_t a1)
{
  result = *(v1 + *(a1 + 48));
  if (!result)
  {
    _s5QueueCMa();
    sub_1C5931838(qword_1EDA4A0C0, v3, _s5QueueCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5AB4770()
{
  result = qword_1EC1969B0;
  if (!qword_1EC1969B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1969B8);
    sub_1C5924F54(&qword_1EC1969A0, &qword_1EC196998);
    sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1969B0);
  }

  return result;
}

uint64_t MarkupParser.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MarkupParser() + 36);
  if (qword_1EDA4B6C0 != -1)
  {
    swift_once();
  }

  *(a3 + v6) = qword_1EDA4B6C8;
  (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t MarkupParser.Element.name.getter()
{
  v0 = sub_1C5AB8D6C();

  return v0;
}

uint64_t MarkupParser.Element.subscript.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = *(v1 + 32);
  (*(v5 + 16))(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v6 = sub_1C5BCAFC4();
  if (*(v4 + 16))
  {
    v8 = sub_1C596FC1C(v6, v7, sub_1C596FFBC);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v4 + 56) + 32 * v8);

      return v11;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t MarkupParser.parse(_:)(void (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for MarkupParser.Parser();
  v7 = *(v3 + *(a3 + 36));
  swift_allocObject();

  sub_1C5AB862C(v3, v7);
  sub_1C5AB4BA4(a1, a2);
}

uint64_t sub_1C5AB4BA4(void (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v302 = a2;
  v303 = a1;
  v301 = *v2;
  swift_beginAccess();
  swift_beginAccess();
  v4 = v2[3] >> 14;
  if (v4 > v2[7] >> 14)
  {
    v305 = 0;
    while (1)
    {
      v13 = v3[9];
      v12 = v3[10];
      v14 = v3[11];
      v15 = v3[12];
      v17 = v3[13];
      v16 = v3[14];
      v18 = *(v3 + 120);
      if (v18 <= 2)
      {
        break;
      }

      if (v18 == 3)
      {
        v48 = sub_1C5BCB864();
        v50 = v49;
        v51 = v48 == 38 && v49 == 0xE100000000000000;
        if (v51 || (v52 = v48, (sub_1C5BCBDE4() & 1) != 0) || v52 == 32 && v50 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0 || v52 == 60 && v50 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {

          v53 = sub_1C5AB6784();
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v60 = v3[8];

          v303(v53, v55, v57, v59, v60);

          v3[16] = v3[7];
          v61 = v3[9];
          v62 = v3[10];
          v63 = v3[11];
          v64 = v3[12];
          v65 = v3[13];
          v66 = v3[14];
          *(v3 + 9) = 0u;
          *(v3 + 13) = 0u;
          *(v3 + 11) = 0u;
          goto LABEL_113;
        }

        if (v52 == 59 && v50 == 0xE100000000000000)
        {
        }

        else
        {
          v246 = sub_1C5BCBDE4();

          if ((v246 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v247 = v3[4];
        v248 = v13;
        if (v3[7] >> 14 < sub_1C5BCB824() >> 14)
        {
          goto LABEL_209;
        }

        v249 = sub_1C5BCB884();
        v251 = v250;
        v253 = v252;
        v255 = v254;
        if (sub_1C5BCB854() < 1)
        {
        }

        else
        {
          v307 = v247;
          v256 = v3[6];
          *&v313 = v249;
          *(&v313 + 1) = v251;
          *&v314 = v253;
          *(&v314 + 1) = v255;
          v315 = v256;
          type metadata accessor for MarkupParser.EntityDecoder();

          sub_1C5AB68EC();
          v258 = v257;
          v317[0] = v313;
          v317[1] = v314;
          sub_1C5AB9560(v317);
          v316 = v315;
          sub_1C5AB95B4(&v316);
          if (v258)
          {
            if (v248 >> 14 < v3[16] >> 14)
            {
              goto LABEL_210;
            }

            v259 = sub_1C5BCB884();
            v261 = v260;
            v263 = v262;
            v265 = v264;
            v266 = v3[8];

            v267 = v303;
            v303(v259, v261, v263, v265, v266);

            v268 = sub_1C5BCAFD4();
            v270 = v269;
            v272 = v271;
            v274 = v273;

            v275 = v3[8];

            v267(v268, v270, v272, v274, v275);

            goto LABEL_170;
          }
        }

        goto LABEL_173;
      }

      if (v18 == 4)
      {
        v307 = v3[10];
        v28 = v13;
        v29 = *(v13 + 16);
        v30 = *(v28 + 24);
        v304 = *(v28 + 32);
        v31 = *(v28 + 48);
        v300 = *(v28 + 40);
        v299 = v31;
        v298 = *(v28 + 56);
        v297 = *(v28 + 64);
        v32 = v28;

        if (sub_1C5BCB864() == 32 && v33 == 0xE100000000000000)
        {
        }

        else
        {
          v34 = sub_1C5BCBDE4();

          if ((v34 & 1) == 0)
          {
            v35 = v3[10];
            v296 = v3[9];
            v306 = v14;
            v36 = v3[11];
            v295 = v3[12];
            v37 = v3[14];
            v294 = v3[13];
            v293 = v37;
            v3[9] = v29;
            v3[10] = v30;
            v38 = v304;
            v39 = v300;
            v3[11] = v304;
            v3[12] = v39;
            v40 = v299;
            v41 = v298;
            v3[13] = v299;
            v3[14] = v41;
            v42 = *(v3 + 120);
            v43 = v297;
            *(v3 + 120) = v297;
            sub_1C5AB9494(v29, v30, v38, v39, v40, v41, v43);
            sub_1C5AB9374(v296, v35, v36, v295, v294, v293, v42);
            sub_1C5AB9374(v32, v307, v306, v15, v17, v16, 4u);
            goto LABEL_7;
          }
        }

        v3[16] = sub_1C5BCB824();
        v5 = v32;
        v6 = v307;
        v7 = v14;
        v8 = v15;
        v9 = v17;
        v10 = v16;
        v11 = 4;
        goto LABEL_5;
      }

      if (!(v14 | v12 | v13 | v15 | v17 | v16))
      {
        v95 = sub_1C5BCB864();
        v96 = v94;
        v97 = v95 == 60 && v94 == 0xE100000000000000;
        v98 = v97;
        if (v97 || (sub_1C5BCBDE4() & 1) != 0)
        {
          v99 = sub_1C5AB66F8();
          if (v100)
          {
            if (v99 == 47 && v100 == 0xE100000000000000)
            {

LABEL_115:

              v142 = sub_1C5AB6784();
              v144 = v143;
              v146 = v145;
              v148 = v147;
              v149 = v3[8];

              v303(v142, v144, v146, v148, v149);

              v150 = v3[9];
              v151 = v3[10];
              v152 = v3[11];
              v153 = v3[12];
              v154 = v3[13];
              v155 = v3[14];
              v3[9] = 2;
              *(v3 + 5) = 0u;
              *(v3 + 6) = 0u;
              v3[14] = 0;
              v156 = *(v3 + 120);
              *(v3 + 120) = 5;
              sub_1C5AB9374(v150, v151, v152, v153, v154, v155, v156);
              v3[7] = sub_1C5BCB824();
LABEL_147:
              v3[16] = sub_1C5BCB824();
              goto LABEL_6;
            }

            v141 = sub_1C5BCBDE4();

            if (v141)
            {
              goto LABEL_115;
            }
          }

          if (v98)
          {
            goto LABEL_214;
          }
        }

        if (sub_1C5BCBDE4())
        {
LABEL_214:
          sub_1C5AB66F8();
          if (!v157)
          {
            goto LABEL_138;
          }

          if (v98)
          {
            goto LABEL_121;
          }
        }

        if (sub_1C5BCBDE4())
        {
LABEL_121:
          v158 = sub_1C5AB66F8();
          if (!v159)
          {
            goto LABEL_145;
          }

          if (v158 == 32 && v159 == 0xE100000000000000)
          {
          }

          else
          {
            v197 = sub_1C5BCBDE4();

            if ((v197 & 1) == 0)
            {
LABEL_145:

              v198 = v3[9];
              v199 = v3[10];
              v200 = v3[11];
              v201 = v3[12];
              v202 = v3[13];
              v203 = v3[14];
              v3[9] = 1;
              *(v3 + 5) = 0u;
              *(v3 + 6) = 0u;
              v3[14] = 0;
              v204 = *(v3 + 120);
              *(v3 + 120) = 5;
              sub_1C5AB9374(v198, v199, v200, v201, v202, v203, v204);
              sub_1C5AB6784();
              v205 = sub_1C5BCB854();

              if (v205 >= 1)
              {
                v206 = sub_1C5AB6784();
                v208 = v207;
                v210 = v209;
                v212 = v211;
                v213 = v3[8];

                v303(v206, v208, v210, v212, v213);
              }

              goto LABEL_147;
            }
          }
        }

        if (v95 == 38 && v96 == 0xE100000000000000)
        {
        }

        else
        {
          v214 = sub_1C5BCBDE4();

          if ((v214 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = v3[9];
        v6 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        v3[9] = v3[7];
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        v11 = *(v3 + 120);
        *(v3 + 120) = 3;
        goto LABEL_5;
      }

      v72 = v14 | v12 | v15 | v17 | v16;
      if (v13 == 1 && !v72)
      {
        v74 = sub_1C5BCB864();
        v75 = v73;
        if ((v74 != 32 || v73 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0)
        {
          if (v74 == 47 && v75 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
          {
            v186 = sub_1C5AB66F8();
            if (v187)
            {
              if (v186 == 62 && v187 == 0xE100000000000000)
              {

LABEL_175:

                v3[17] = sub_1C5AB6784();
                v3[18] = v239;
                v3[19] = v240;
                v3[20] = v241;

                goto LABEL_112;
              }

              v238 = sub_1C5BCBDE4();

              if (v238)
              {
                goto LABEL_175;
              }
            }
          }

          if (v74 == 62 && v75 == 0xE100000000000000)
          {

LABEL_180:
            v3[17] = sub_1C5AB6784();
            v3[18] = v243;
            v3[19] = v244;
            v3[20] = v245;

            v3[16] = sub_1C5BCB824();
            v61 = v3[9];
            v62 = v3[10];
            v63 = v3[11];
            v64 = v3[12];
            v65 = v3[13];
            v66 = v3[14];
            v3[9] = 3;
            v3[14] = 0;
            *(v3 + 5) = 0u;
            *(v3 + 6) = 0u;
LABEL_113:
            v140 = *(v3 + 120);
            *(v3 + 120) = 5;
            sub_1C5AB9374(v61, v62, v63, v64, v65, v66, v140);
            goto LABEL_7;
          }

          v242 = sub_1C5BCBDE4();

          if (v242)
          {
            goto LABEL_180;
          }

          goto LABEL_6;
        }

        v3[17] = sub_1C5AB6784();
        v3[18] = v76;
        v3[19] = v77;
        v3[20] = v78;

        goto LABEL_66;
      }

      if (v13 == 2 && !v72)
      {
        if (sub_1C5BCB864() == 62 && v101 == 0xE100000000000000)
        {

LABEL_130:
          v175 = sub_1C5AB6784();
          v176 = v3[9];
          v177 = v3[10];
          v178 = v3[11];
          v179 = v3[12];
          v180 = v3[13];
          v181 = v3[14];
          v3[9] = v175;
          v3[10] = v182;
          v3[11] = v183;
          v3[12] = v184;
          v3[13] = 0;
          v3[14] = 0;
          v185 = *(v3 + 120);
          *(v3 + 120) = 0;
          sub_1C5AB9374(v176, v177, v178, v179, v180, v181, v185);
          goto LABEL_7;
        }

        v174 = sub_1C5BCBDE4();

        if (v174)
        {
          goto LABEL_130;
        }

        goto LABEL_6;
      }

      if (v13 == 3 && !v72)
      {
        v102 = v3[17];
        v103 = v3[18];
        v105 = v3[19];
        v104 = v3[20];

        v106 = sub_1C5BCB874();
        if (!v104)
        {
          goto LABEL_150;
        }

        if (v105 == v108 && v104 == v109 && v102 >> 16 == v106 >> 16 && v103 >> 16 == v107 >> 16)
        {

          goto LABEL_140;
        }

        LOBYTE(v291) = 0;
        v188 = sub_1C5BCBD54();

        if (v188)
        {
LABEL_140:
          v189 = sub_1C5BCB874();
          v191 = v190;
          v193 = v192;
          v195 = v194;
          v196 = v3[8];

          v303(v189, v191, v193, v195, v196);

          *(v3 + 17) = 0u;
          *(v3 + 19) = 0u;
          v3[21] = MEMORY[0x1E69E7CC8];
LABEL_150:
        }

        v215 = v3[20];
        if (v215)
        {
          v216 = v3[19];
          v217 = v3[21];
          v309 = *(v3 + 17);
          v310 = v216;
          v311 = v215;
          v312 = v217;
          swift_beginAccess();
          type metadata accessor for MarkupParser.Element();
          sub_1C5BCB144();

          sub_1C5BCB104();
          swift_endAccess();
          *(v3 + 17) = 0u;
          *(v3 + 19) = 0u;
          v3[21] = MEMORY[0x1E69E7CC8];
        }

        v219 = sub_1C5BCB864();
        v220 = v218;
        if (v219 == 47 && v218 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {
          v221 = sub_1C5AB66F8();
          if (v222)
          {
            if (v221 == 62 && v222 == 0xE100000000000000)
            {

              goto LABEL_167;
            }

            v236 = sub_1C5BCBDE4();

            if (v236)
            {
LABEL_167:

              v3[7] = sub_1C5BCB824();
              goto LABEL_172;
            }
          }
        }

        if (v219 == 62 && v220 == 0xE100000000000000)
        {
LABEL_170:

          goto LABEL_172;
        }

        v237 = sub_1C5BCBDE4();

        if (v237)
        {
LABEL_172:
          v3[16] = sub_1C5BCB824();
        }

LABEL_173:
        v5 = v3[9];
        v6 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        *(v3 + 9) = 0u;
        *(v3 + 11) = 0u;
        *(v3 + 13) = 0u;
LABEL_29:
        v11 = *(v3 + 120);
        *(v3 + 120) = 5;
LABEL_5:
        sub_1C5AB9374(v5, v6, v7, v8, v9, v10, v11);
        goto LABEL_6;
      }

      v161 = sub_1C5BCB864();
      v162 = v160;
      if (v161 == 61 && v160 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
      {

        v163 = swift_allocObject();
        *(v163 + 16) = sub_1C5AB67A8();
        *(v163 + 24) = v164;
        *(v163 + 32) = v165;
        *(v163 + 40) = v166;
        *(v163 + 48) = 0;
        *(v163 + 56) = 0;
        *(v163 + 64) = 1;
        v167 = v3[9];
        v168 = v3[10];
        v169 = v3[11];
        v170 = v3[12];
        v171 = v3[13];
        v172 = v3[14];
        v3[9] = v163;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        v173 = *(v3 + 120);
        *(v3 + 120) = 4;
        sub_1C5AB9374(v167, v168, v169, v170, v171, v172, v173);
        goto LABEL_147;
      }

      if (v161 == 62 && v162 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
      {
LABEL_163:

LABEL_164:
        sub_1C5AB6784();
        v223 = sub_1C5BCB854();

        if (v223 >= 1)
        {
          v224 = sub_1C5AB6784();
          v225 = MEMORY[0x1C694F120](v224);
          v227 = v226;

          v228 = sub_1C5AB6784();
          v230 = v229;
          v232 = v231;
          v234 = v233;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v308 = v3[21];
          sub_1C5B3C934(v228, v230, v232, v234, v225, v227, isUniquelyReferenced_nonNull_native);

          v3[21] = v308;
          goto LABEL_111;
        }

LABEL_112:
        v61 = v3[9];
        v62 = v3[10];
        v63 = v3[11];
        v64 = v3[12];
        v65 = v3[13];
        v66 = v3[14];
        v3[9] = 3;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        goto LABEL_113;
      }

      if (v161 == 47 && v162 == 0xE100000000000000)
      {

LABEL_195:
        v277 = sub_1C5AB66F8();
        if (v278)
        {
          if (v277 == 62 && v278 == 0xE100000000000000)
          {
            goto LABEL_163;
          }

          v279 = sub_1C5BCBDE4();

          if (v279)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_6;
      }

      v276 = sub_1C5BCBDE4();

      if (v276)
      {
        goto LABEL_195;
      }

LABEL_6:
      v3[7] = sub_1C5BCB824();
LABEL_7:
      v4 = v3[3] >> 14;
      if (v4 <= v3[7] >> 14)
      {
        goto LABEL_200;
      }
    }

    if (!*(v3 + 120))
    {
      v307 = &v293;
      v308 = v3[8];
      v306 = v308;
      MEMORY[0x1EEE9AC00](v308);
      v44 = v15;
      v45 = v13;
      v46 = *(v301 + 88);
      *(&v293 - 6) = *(v301 + 80);
      *(&v293 - 5) = v46;
      *(&v293 - 4) = v45;
      *(&v293 - 3) = v12;
      v291 = v14;
      v292 = v44;

      sub_1C5AB9494(v45, v12, v14, v44, v17, v16, 0);
      type metadata accessor for MarkupParser.Element();
      sub_1C5BCB144();
      swift_getWitnessTable();
      v47 = v305;
      sub_1C5BCAD64();
      v305 = v47;
      sub_1C5AB9374(v45, v12, v14, v44, v17, v16, 0);

      if ((BYTE8(v309) & 1) == 0)
      {
        swift_beginAccess();
        sub_1C5BCB114();
        swift_endAccess();
      }

      v3[16] = sub_1C5BCB824();
      v5 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      *(v3 + 9) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 11) = 0u;
      goto LABEL_29;
    }

    if (v18 == 1)
    {

      v19 = sub_1C5BCB864();
      v21 = v20;
      v22 = v19 == 34 && v20 == 0xE100000000000000;
      if (v22 || (v23 = v19, (sub_1C5BCBDE4() & 1) != 0) || v23 == 39 && v21 == 0xE100000000000000)
      {

LABEL_19:
        v3[16] = sub_1C5BCB824();
        v24 = sub_1C5BCB864();
        v25 = v3[9];
        v26 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        v3[9] = v13;
        v3[10] = v12;
        v3[11] = v14;
        v3[12] = v15;
        v3[13] = v24;
        v3[14] = v27;
        v11 = *(v3 + 120);
        *(v3 + 120) = 2;
        v5 = v25;
        v6 = v26;
        goto LABEL_5;
      }

      v110 = sub_1C5BCBDE4();

      if (v110)
      {
        goto LABEL_19;
      }

      v111 = swift_allocObject();
      *(v111 + 16) = v13;
      *(v111 + 24) = v12;
      *(v111 + 32) = v14;
      *(v111 + 40) = v15;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 2;
      v93 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      v3[9] = v111;
      v3[14] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      v11 = *(v3 + 120);
    }

    else
    {
      v304 = v3[9];
      v307 = v12;
      v306 = v14;

      v67 = sub_1C5BCB864();
      v69 = v67;
      v70 = v68;
      if (v16 && (v17 == v67 && v16 == v68 || (sub_1C5BCBDE4() & 1) != 0))
      {

        v71 = v306;
      }

      else
      {
        v71 = v306;
        if ((v69 != 32 || v70 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0 || v16)
        {

          if (v69 == 47 && v70 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
          {
            v79 = sub_1C5AB66F8();
            if (v80)
            {
              if (v79 == 62 && v80 == 0xE100000000000000)
              {

                goto LABEL_100;
              }

              v112 = sub_1C5BCBDE4();

              if (v112)
              {
                goto LABEL_98;
              }
            }
          }

          if (v69 == 62 && v70 == 0xE100000000000000)
          {
LABEL_98:

LABEL_100:
            v114 = MEMORY[0x1C694F120](v304, v307, v71, v15);
            v116 = v115;

            v117 = sub_1C5AB6784();
            v119 = v118;
            v121 = v120;
            v123 = v122;
            swift_beginAccess();
            v124 = swift_isUniquelyReferenced_nonNull_native();
            v308 = v3[21];
            v125 = v308;
            v126 = sub_1C596FC1C(v114, v116, sub_1C596FFBC);
            v128 = *(v125 + 16);
            v129 = (v127 & 1) == 0;
            v130 = __OFADD__(v128, v129);
            v131 = v128 + v129;
            if (v130)
            {
              goto LABEL_206;
            }

            v132 = v127;
            if (*(v125 + 24) >= v131)
            {
              if ((v124 & 1) == 0)
              {
                v280 = v126;
                sub_1C5AF5BCC();
                v126 = v280;
              }
            }

            else
            {
              sub_1C5AF321C(v131, v124);
              v126 = sub_1C596FC1C(v114, v116, sub_1C596FFBC);
              if ((v132 & 1) != (v133 & 1))
              {
                goto LABEL_211;
              }
            }

            v134 = v308;
            if (v132)
            {
              v135 = (*(v308 + 56) + 32 * v126);
              *v135 = v117;
              v135[1] = v119;
              v135[2] = v121;
              v135[3] = v123;
            }

            else
            {
              *(v308 + 8 * (v126 >> 6) + 64) |= 1 << v126;
              v136 = (v134[6] + 16 * v126);
              *v136 = v114;
              v136[1] = v116;
              v137 = (v134[7] + 32 * v126);
              *v137 = v117;
              v137[1] = v119;
              v137[2] = v121;
              v137[3] = v123;
              v138 = v134[2];
              v130 = __OFADD__(v138, 1);
              v139 = v138 + 1;
              if (v130)
              {
                goto LABEL_208;
              }

              v134[2] = v139;
            }

            v3[21] = v134;
LABEL_111:
            swift_endAccess();
            goto LABEL_112;
          }

          v113 = sub_1C5BCBDE4();

          if (v113)
          {
            goto LABEL_100;
          }

LABEL_138:

          goto LABEL_6;
        }
      }

      v81 = MEMORY[0x1C694F120](v304, v307, v71, v15);
      v83 = v82;

      v84 = sub_1C5AB6784();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      swift_beginAccess();
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v308 = v3[21];
      sub_1C5B3C934(v84, v86, v88, v90, v81, v83, v91);

      v3[21] = v308;
      swift_endAccess();
LABEL_66:
      v3[16] = sub_1C5BCB824();
      v92 = swift_allocObject();
      *(v92 + 16) = 4;
      *(v92 + 24) = 0u;
      *(v92 + 40) = 0u;
      *(v92 + 56) = 0;
      *(v92 + 64) = 5;
      v93 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      v3[9] = v92;
      v3[14] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      v11 = *(v3 + 120);
    }

    *(v3 + 120) = 4;
    v5 = v93;
    goto LABEL_5;
  }

LABEL_200:
  if (v4 < v3[16] >> 14)
  {
    __break(1u);
LABEL_206:
    __break(1u);
  }

  else
  {
    sub_1C5BCB884();
    v281 = sub_1C5BCB854();

    if (v281 < 1)
    {
      return result;
    }

    if (v4 >= v3[16] >> 14)
    {
      v283 = sub_1C5BCB884();
      v285 = v284;
      v287 = v286;
      v289 = v288;
      v290 = v3[8];

      v303(v283, v285, v287, v289, v290);
    }
  }

  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t MarkupParser.entityMap.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1C5AB669C()
{
  v0 = sub_1C59AE410(&unk_1F4513BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196A80);
  result = swift_arrayDestroy();
  qword_1EDA4B6C8 = v0;
  return result;
}

uint64_t sub_1C5AB66F8()
{
  if (sub_1C5BCB824() >> 14 >= *(v0 + 24) >> 14)
  {
    return 0;
  }

  sub_1C5BCB824();
  return sub_1C5BCB864();
}

unint64_t sub_1C5AB6784()
{
  result = *(v0 + 128);
  if (*(v0 + 56) >> 14 >= result >> 14)
  {
    return sub_1C5BCB884();
  }

  __break(1u);
  return result;
}

unint64_t sub_1C5AB67A8()
{
  v1 = sub_1C5AB6784();
  if ((v2 ^ v1) < 0x4000)
  {
LABEL_2:

    return sub_1C5AB6784();
  }

  v4 = v1;
  while (1)
  {
    v5 = sub_1C5BCB834();
    if (sub_1C5BCB864() != 32 || v6 != 0xE100000000000000)
    {
      break;
    }

LABEL_5:
    if ((v5 ^ v4) < 0x4000)
    {
      goto LABEL_2;
    }
  }

  v8 = sub_1C5BCBDE4();

  if (v8)
  {
    goto LABEL_5;
  }

  if (v5 >> 14 < *(v0 + 128) >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1C5BCB824();
    return sub_1C5BCB884();
  }

  return result;
}

unint64_t sub_1C5AB68EC()
{
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = *v0;
  v4 = v0[3];
  v26 = v0[2];
  if (sub_1C5AB6D04() == 35 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v7 = sub_1C5BCBDE4();

    if ((v7 & 1) == 0)
    {
      v8 = v0[4];
      v9 = MEMORY[0x1C694F120](v2, v3, v26, v4);
      if (*(v8 + 16))
      {
        v11 = sub_1C596FC1C(v9, v10, sub_1C596FFBC);
        v13 = v12;

        if (v13)
        {
          v14 = *(*(v8 + 56) + 16 * v11);

          return v14;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  v15 = sub_1C5BCB824();
  swift_beginAccess();
  *(v1 + 16) = v15;
  if (sub_1C5AB6D04() == 120 && v16 == 0xE100000000000000)
  {
    goto LABEL_12;
  }

  v17 = sub_1C5BCBDE4();

  if (v17)
  {
    goto LABEL_14;
  }

  if (sub_1C5AB6D04() == 88 && v24 == 0xE100000000000000)
  {
LABEL_12:

LABEL_14:
    result = sub_1C5BCB824();
    *(v1 + 16) = result;
    if (v3 >> 14 >= result >> 14)
    {
      v19 = sub_1C5BCB884();
      v23 = 16;
LABEL_16:
      v14 = sub_1C5AB8BCC(v19, v20, v21, v22, v23);

      return v14;
    }

    __break(1u);
    goto LABEL_27;
  }

  v25 = sub_1C5BCBDE4();

  if (v25)
  {
    goto LABEL_14;
  }

  if (v3 >> 14 >= v15 >> 14)
  {
    v19 = sub_1C5BCB884();
    v23 = 10;
    goto LABEL_16;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C5AB6BE0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  if (v6)
  {
    if (a1[2] == a4 && v6 == a5 && *a1 >> 16 == a2 >> 16 && a1[1] >> 16 == a3 >> 16)
    {
      return 1;
    }

    else
    {
      return sub_1C5BCBD54() & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1C5AB6C78()
{

  sub_1C5AB9374(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return v0;
}

uint64_t sub_1C5AB6CD4()
{
  sub_1C5AB6C78();

  return swift_deallocClassInstance();
}

unint64_t sub_1C5AB6D70(uint64_t a1)
{
  sub_1C5BC7B04();
  v2 = MEMORY[0x1E69695A8];
  sub_1C5AB944C(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  v3 = sub_1C5BCAD34();
  return sub_1C5AB77FC(a1, v3, MEMORY[0x1E69695A8], &qword_1EC196A60, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1C5AB6E44(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7B04();
  sub_1C5AB944C(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  sub_1C5BCAD44();
  v2 = sub_1C5BCBF94();

  return sub_1C5AB72D4(a1, v2);
}

unint64_t sub_1C5AB6EF8(double a1)
{
  v2 = sub_1C5BCBF44();

  return sub_1C5AB7430(v2, a1);
}

unint64_t sub_1C5AB6F44(char a1)
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](a1 & 1);
  v2 = sub_1C5BCBF94();
  return sub_1C5AB7498(a1 & 1, v2);
}

unint64_t sub_1C5AB6FAC(uint64_t a1)
{
  v2 = sub_1C5BCBF44();

  return sub_1C5AB7508(a1, v2);
}

unint64_t sub_1C5AB6FF0(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C5AB944C(&qword_1EC192578, MEMORY[0x1E6968FB0]);
  sub_1C5BCAD44();
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 8));
  v3 = sub_1C5BCBF94();

  return sub_1C5AB7574(a1, v3);
}

unint64_t sub_1C5AB70E8(uint64_t a1)
{
  v2 = sub_1C5BCB734();

  return sub_1C5AB7738(a1, v2);
}

unint64_t sub_1C5AB712C(uint64_t a1)
{
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = sub_1C5BCBF94();

  return sub_1C5AB7A64(a1, v2);
}

unint64_t sub_1C5AB71BC(uint64_t a1)
{
  sub_1C5BC7A24();
  v2 = MEMORY[0x1E6968FB0];
  sub_1C5AB944C(&qword_1EC192578, MEMORY[0x1E6968FB0]);
  v3 = sub_1C5BCAD34();
  return sub_1C5AB77FC(a1, v3, MEMORY[0x1E6968FB0], &qword_1EC196A48, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1C5AB7290(uint64_t a1)
{
  v2 = sub_1C5BCB9F4();

  return sub_1C5AB799C(a1, v2);
}

unint64_t sub_1C5AB72D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedText() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_1C5AB96D4(*(v2 + 48) + v11 * v9, v7, type metadata accessor for FittedText);
      v12 = _s11MediaCoreUI10FittedTextV2eeoiySbAC_ACtFZ_0();
      sub_1C5AB973C(v7, type metadata accessor for FittedText);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1C5AB7430(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5AB7498(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5AB7508(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5AB7574(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1C5AB96D4(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MotionAssetDownload.AssetKey);
      if (sub_1C5BC79D4() & 1) != 0 && (sub_1C5BC79D4())
      {
        v13 = &v8[*(v5 + 24)];
        v14 = *v13;
        v15 = v13[1];
        sub_1C5AB973C(v8, type metadata accessor for MotionAssetDownload.AssetKey);
        v16 = (a1 + *(v5 + 24));
        if (v14 == *v16 && v15 == v16[1])
        {
          return v10;
        }
      }

      else
      {
        sub_1C5AB973C(v8, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C5AB7738(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C5AB9400();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C5BCB744();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C5AB77FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1C5AB944C(v23, v24);
      v19 = sub_1C5BCADB4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1C5AB799C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C59E6618(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C694FC40](v9, a1);
      sub_1C59E652C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C5AB7A64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C5BCAE74();
      v8 = v7;
      if (v6 == sub_1C5BCAE74() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C5BCBDE4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unsigned __int8 *sub_1C5AB7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1C5AB961C();

  result = sub_1C5BCAFC4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C5AB80F0();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C5BCBB04();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C5AB80F0()
{
  v0 = sub_1C5BCAFD4();
  v4 = sub_1C5AB8170(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C5AB8170(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C5BCB844();
    if (!v9 || (v10 = v9, v11 = sub_1C592B0FC(v9, 0), v12 = sub_1C5AB82C8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C5BCAEF4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C5BCAEF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C5BCBB04();
LABEL_4:

  return sub_1C5BCAEF4();
}

unint64_t sub_1C5AB82C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C5AB84E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C5BCAF84();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C5BCBB04();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C5AB84E8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C5BCAF54();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C5AB84E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C5BCAF94();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C694F1A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C5AB8564(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C5BCBB04();
  }

  result = sub_1C5AB8760(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1C5AB862C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MarkupParser.Element();
  *(v2 + 64) = sub_1C5BCAC94();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 5;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = MEMORY[0x1E69E7CC8];
  *(v2 + 48) = a2;
  sub_1C5BCB424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196A78);
  sub_1C5AB9670();
  sub_1C5BCB454();
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  sub_1C5BCB3D4();
  *(v2 + 56) = v5;
  *(v2 + 128) = v5;
  return v2;
}

uint64_t sub_1C5AB8760(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C5AB84E8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C5BCAF74();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C5AB84E8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C5AB84E8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C5BCAF74();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1C5AB8BCC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 - 37) < 0xFFFFFFFFFFFFFFDDLL)
  {
    __break(1u);
    return sub_1C5BCAEF4();
  }

  if ((a2 ^ a1) < 0x4000)
  {
    return 0;
  }

  result = sub_1C5AB8564(a1, a2, a3, a4, a5);
  if ((result & 0x10000000000) != 0)
  {

    v12 = sub_1C5AB7B68(a1, a2, a3, a4, a5);

    result = v12;
    if ((v12 & 0x100000000) != 0)
    {
      return 0;
    }
  }

  else if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  v11 = 0;
  if (WORD1(result) > 0x10u || (result & 0xFFFFF800) == 0xD800)
  {
    return v11;
  }

  if ((result & 0x1FFF80) != 0 || result <= 0xFF)
  {
    return sub_1C5BCAEF4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5AB8D6C()
{
  if (v0[3])
  {
    return *v0;
  }

  __break(1u);
  return result;
}

void sub_1C5AB8D9C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C5AB9114();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AB8E24(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1C5AB8F60(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}