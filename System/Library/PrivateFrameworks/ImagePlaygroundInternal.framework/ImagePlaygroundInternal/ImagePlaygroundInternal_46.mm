double sub_1D2781B18()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
}

__n128 sub_1D2781BC4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
  *a2 = result;
  return result;
}

uint64_t sub_1D2781C74(uint64_t a1, uint64_t a2, CGImage *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_1ED8A4BA8 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1ED8B0258;
    v8 = [objc_opt_self() mainScreen];
    [v8 scale];
    v10 = v9;

    if (v7 * v10 == CGImageGetWidth(a3))
    {
      if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) == 0.0)
      {
        *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = 0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
        sub_1D28719D8();
      }
    }

    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    v14 = (v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
    if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize) == Width && *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize + 8) == Height)
    {
      *v14 = Width;
      v14[1] = Height;
    }

    else
    {
      v16 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v16);
      sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719D8();
    }

    sub_1D2780CD4(a1, a3, 1);
  }

  return result;
}

uint64_t sub_1D2781F74(uint64_t a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1D277E868();
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v20.origin.x = v11;
    v20.origin.y = v13;
    v20.size.width = v15;
    v20.size.height = v17;
    v18 = CGRectGetHeight(v20) / a3 * a4;
    if (*(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) == v18)
    {
      *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = v18;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719D8();
    }

    sub_1D2780CD4(a1, 0, 0);
  }

  return result;
}

uint64_t sub_1D278216C(uint64_t a1, char a2)
{
  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v4);
  if (v5)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1D2758D34(v4);
    if (*(&v7 + 1))
    {
      goto LABEL_3;
    }

    return sub_1D22BD238(&v6, &qword_1EC6E1790);
  }

  sub_1D227268C(v4, &v6);
  if (!*(&v7 + 1))
  {
    return sub_1D22BD238(&v6, &qword_1EC6E1790);
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
  type metadata accessor for VisualEffectRENodes();
  result = swift_dynamicCast();
  if (result)
  {
    *(*&v4[0] + 72) = a2 & 1;
  }

  return result;
}

uint64_t sub_1D2782248(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1D2871DD8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v11, v10, v6);
  swift_endAccess();
  sub_1D2761588();
  result = (*(v7 + 8))(v10, v6);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1D27823A0(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  sub_1D2758420(v1, sub_1D2783524, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v1, sub_1D278352C, v4);
}

uint64_t sub_1D2782464(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  sub_1D2870F78();
  v8 = a1;
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v8;
  sub_1D22AE31C(0, 0, v6, &unk_1D28A4FD0, v10);
}

uint64_t sub_1D27825A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1D2878568();
  v5[8] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D278263C, v7, v6);
}

uint64_t sub_1D278263C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D2780CD4(*(v0 + 56), 0, 1);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2782710()
{
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  v2 = sub_1D2871988();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1D27827F8()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v2 = sub_1D2871DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate);
  sub_1D233EE24(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState));

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate);
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  v7 = sub_1D2871988();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v5(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___observationRegistrar, v4);
  return v0;
}

uint64_t sub_1D278297C()
{
  sub_1D27827F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffectViewModel()
{
  result = qword_1ED8A3F58;
  if (!qword_1ED8A3F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2782A28()
{
  result = sub_1D2871988();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EffectViewModel.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for EffectViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D2782BF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D2782C20(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

BOOL sub_1D2782C5C()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return !*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state) && *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8) == 128;
}

uint64_t sub_1D2782D1C()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible);
}

BOOL sub_1D2782DC4(unint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a2 >> 6))
  {
    if (a4 < 0x40u)
    {
      v5 = *&a1 == *&a3;
      v4 = a4 ^ a2 ^ 1;
      goto LABEL_7;
    }

    return 0;
  }

  if (a2 >> 6 != 1)
  {
    if (__PAIR128__(-128, 1) >= __PAIR128__(a2, a1))
    {
      if (a1 | a2 ^ 0x80)
      {
        if ((a4 & 0xC0) != 0x80 || a3 != 1)
        {
          return 0;
        }
      }

      else if ((a4 & 0xC0) != 0x80 || *&a3 != 0.0)
      {
        return 0;
      }
    }

    else if (a2 == 128 && a1 == 2)
    {
      if ((a4 & 0xC0) != 0x80 || a3 != 2)
      {
        return 0;
      }
    }

    else
    {
      v8 = a4 & 0xC0;
      if (a2 == 128 && a1 == 3)
      {
        if (v8 != 128 || a3 != 3)
        {
          return 0;
        }
      }

      else if (v8 != 128 || a3 != 4)
      {
        return 0;
      }
    }

    return a4 == 128;
  }

  if ((a4 & 0xC0) != 0x40)
  {
    return 0;
  }

  v4 = BYTE4(a1) & 1 ^ ((a3 & 0x100000000) == 0);
  v5 = *&a1 == *&a3;
LABEL_7:
  if (!v5)
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_1D2782EFC(unint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a2 >> 6))
  {
    if (a4 < 0x40u)
    {
      v4 = *&a1 == *&a3;
      v5 = a4 ^ a2;
      goto LABEL_7;
    }

    return 1;
  }

  if (a2 >> 6 != 1)
  {
    if (__PAIR128__(-128, 1) >= __PAIR128__(a2, a1))
    {
      if (a1 | a2 ^ 0x80)
      {
        if ((a4 & 0xC0) != 0x80 || a3 != 1)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC0) != 0x80 || *&a3 != 0.0)
      {
        return 1;
      }
    }

    else if (a2 == 128 && a1 == 2)
    {
      if ((a4 & 0xC0) != 0x80 || a3 != 2)
      {
        return 1;
      }
    }

    else
    {
      v9 = a4 & 0xC0;
      if (a2 == 128 && a1 == 3)
      {
        if (v9 != 128 || a3 != 3)
        {
          return 1;
        }
      }

      else if (v9 != 128 || a3 != 4)
      {
        return 1;
      }
    }

    return a4 != 128;
  }

  if ((a4 & 0xC0) != 0x40)
  {
    return 1;
  }

  v4 = *&a1 == *&a3;
  v5 = BYTE4(a1) & 1 ^ BYTE4(a3) & 1;
LABEL_7:
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1D278307C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1D27830E0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = result;
  return result;
}

__n128 sub_1D27830F8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize) = result;
  return result;
}

uint64_t sub_1D2783170(unint64_t a1, int a2, int a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v30 = a8;
  v27 = a3;
  v29 = a2;
  v28 = a1;
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = qword_1ED8A4928;
  sub_1D2870F78();
  if (v16 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v17 = sub_1D2878A58();
  v18 = sub_1D2878068();
  v19 = [v17 BOOLForKey_];

  if (v19)
  {
    a5();
  }

  else
  {
    swift_getKeyPath();
    v31 = a4;
    sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
    sub_1D28719E8();

    if (*(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState) == 2)
    {
      sub_1D2872668();
      v21 = sub_1D2873CA8();
      v22 = sub_1D2878A18();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D226E000, v21, v22, "set state to 'idle' - sceneManager is nil", v23, 2u);
        MEMORY[0x1D38A3520](v23, -1, -1);
      }

      v24 = (*(v12 + 8))(v14, v11);
      (a5)(v24);
      sub_1D233EE24(2);
    }

    else
    {
      v25 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      sub_1D27587B4(a4, v25, v27 & 1, v30, v15, v28, v29);
    }
  }
}

uint64_t sub_1D2783534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D27825A0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_110Tm()
{
  v1 = sub_1D2871988();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1D27836E0(uint64_t a1)
{
  v3 = *(sub_1D2871988() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D277F560(a1, v6, (v1 + v5), v7);
}

float sub_1D27837DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = result;
  return result;
}

uint64_t sub_1D2783804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D2325628(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2783930(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A28);
    sub_1D22BB9D8(&qword_1ED89CBD8, &qword_1EC6E1A28);
    sub_1D2878818();
    sub_1D2878868();
    sub_1D2878848();
    if (v4)
    {
      sub_1D2878868();
    }

    else
    {
      v6 = v3;
    }

    result = sub_1D2878868();
    if (v5 >= v6)
    {
      sub_1D28788A8();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2783A88()
{
  v1 = v0;
  v2 = sub_1D28729E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    v5 = *(v1 + 16);
  }

  else
  {
    sub_1D28731D8();
    static ExecutionContext.clientIdentity()(v4);
    v5 = MEMORY[0x1D389BC40](v4);
    *(v1 + 16) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D2783B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = sub_1D2878568();
  v6[4] = sub_1D2878558();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1D2783C1C;
  v10 = MEMORY[0x1E69E7CC0];

  return sub_1D2783DE8(a5, a6, 1, v10);
}

uint64_t sub_1D2783C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;

  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2783D60, v7, v6);
}

uint64_t sub_1D2783D60()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];

  *v3 = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2783DE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 672) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_1D2872068();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1D2872C88();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v8 = sub_1D2873C58();
  *(v5 + 160) = v8;
  *(v5 + 168) = *(v8 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v9 = sub_1D2872E48();
  *(v5 + 192) = v9;
  *(v5 + 200) = *(v9 - 8);
  *(v5 + 208) = swift_task_alloc();
  v10 = sub_1D2873CB8();
  *(v5 + 216) = v10;
  *(v5 + 224) = *(v10 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v11 = sub_1D2873C28();
  *(v5 + 296) = v11;
  *(v5 + 304) = *(v11 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v12 = sub_1D2873C48();
  *(v5 + 352) = v12;
  *(v5 + 360) = *(v12 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA538);
  *(v5 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA580);
  *(v5 + 408) = swift_task_alloc();
  v13 = sub_1D2873068();
  *(v5 + 416) = v13;
  *(v5 + 424) = *(v13 - 8);
  *(v5 + 432) = swift_task_alloc();
  v14 = sub_1D28730E8();
  *(v5 + 440) = v14;
  *(v5 + 448) = *(v14 - 8);
  *(v5 + 456) = swift_task_alloc();
  v15 = sub_1D2872ED8();
  *(v5 + 464) = v15;
  *(v5 + 472) = *(v15 - 8);
  *(v5 + 480) = swift_task_alloc();
  v16 = sub_1D2873678();
  *(v5 + 488) = v16;
  *(v5 + 496) = *(v16 - 8);
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  sub_1D2878568();
  *(v5 + 520) = sub_1D2878558();
  v18 = sub_1D28784F8();
  *(v5 + 528) = v18;
  *(v5 + 536) = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D2784424, v18, v17);
}

uint64_t sub_1D2784424()
{
  v57 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19E0);
  v1 = swift_allocObject();
  v0[68] = v1;
  *(v1 + 40) = 0;
  *(v1 + 16) = 4;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = v2;
  sub_1D2873668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA570);
  v3 = *(sub_1D28718F8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D287F500;
  sub_1D27F9808(v5 + v4);
  sub_1D2873658();
  v6 = v0[63];
  v7 = v0[62];
  v47 = v0[61];
  v48 = v0[64];
  v9 = v0[59];
  v8 = v0[60];
  v53 = v0[56];
  v54 = v0[55];
  v50 = v0[51];
  v51 = v0[58];
  v52 = v0[50];
  v10 = v0[6];
  v11 = v0[7];
  v49 = v0[57];

  sub_1D2872EC8();
  sub_1D2872E78();
  sub_1D2872E98();
  sub_1D2872E88();
  (*(v7 + 16))(v6, v48, v47);
  sub_1D2872EB8();
  sub_1D28730D8();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v1;
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D2870F78();
  sub_1D28730C8();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v1;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28730B8();
  sub_1D2873058();
  sub_1D2870F68();
  sub_1D2872FC8();
  (*(v9 + 16))(v50, v8, v51);
  (*(v9 + 56))(v50, 0, 1, v51);
  sub_1D2872F58();
  (*(v53 + 16))(v52, v49, v54);
  (*(v53 + 56))(v52, 0, 1, v54);
  sub_1D2872F48();
  sub_1D28720E8();
  sub_1D2873C18();
  v14 = sub_1D2873C38();
  v15 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v14, v15, v17, "PromptConceptAnalyzer.assignPrompt", "", v16, 2u);
    MEMORY[0x1D38A3520](v16, -1, -1);
  }

  v55 = v0[49];
  v18 = v0[44];
  v19 = v0[45];
  v20 = v0[42];
  v21 = v0[43];
  v23 = v0[37];
  v22 = v0[38];

  v24 = *(v22 + 16);
  v0[69] = v24;
  v0[70] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v20, v21, v23);
  v0[71] = sub_1D2873C88();
  swift_allocObject();
  v0[72] = sub_1D2873C78();
  v25 = *(v22 + 8);
  v0[73] = v25;
  v0[74] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v23);
  v26 = *(v19 + 8);
  v0[75] = v26;
  v0[76] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v55, v18);
  sub_1D2872558();
  sub_1D2870F68();
  v27 = sub_1D2873CA8();
  v28 = sub_1D2878A38();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[36];
  v31 = v0[27];
  v32 = v0[28];
  if (v29)
  {
    v34 = v0[4];
    v33 = v0[5];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1D23D7C84(v34, v33, &v56);
    _os_log_impl(&dword_1D226E000, v27, v28, "Will assign playground configuration for '%s'.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1D38A3520](v36, -1, -1);
    MEMORY[0x1D38A3520](v35, -1, -1);
  }

  v37 = *(v32 + 8);
  v37(v30, v31);
  v0[77] = v37;
  v39 = v0[53];
  v38 = v0[54];
  v40 = v0[52];
  v42 = v0[25];
  v41 = v0[26];
  v43 = v0[24];
  v0[78] = sub_1D2783A88();
  (*(v39 + 16))(v41, v38, v40);
  (*(v42 + 104))(v41, *MEMORY[0x1E69DFF08], v43);
  v44 = swift_task_alloc();
  v0[79] = v44;
  *v44 = v0;
  v44[1] = sub_1D2784AA0;
  v45 = v0[26];

  return MEMORY[0x1EEE4F728](v45);
}

uint64_t sub_1D2784AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 640) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 536);
  v7 = *(v2 + 528);
  if (v0)
  {
    v8 = sub_1D2786250;
  }

  else
  {
    v8 = sub_1D2784C5C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D2784C5C()
{
  v90 = v0;
  sub_1D2872558();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Did assign playground configuration.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = *(v0 + 616);
  v5 = *(v0 + 280);
  v6 = *(v0 + 216);

  v4(v5, v6);
  sub_1D28720E8();
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v11 + 88))(v9, v10) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v8, v14, "PromptConceptAnalyzer.assignPrompt", v12, v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  v15 = *(v0 + 600);
  v16 = v7;
  v17 = *(v0 + 584);
  v18 = *(v0 + 544);
  v19 = *(v0 + 384);
  v20 = *(v0 + 352);
  v21 = *(v0 + 328);
  v22 = *(v0 + 296);

  v17(v21, v22);
  v15(v19, v20);
  os_unfair_lock_lock((v18 + 40));
  *(v0 + 673) = *(v18 + 16);
  v23 = *(v18 + 24);
  v24 = *(v18 + 32);
  sub_1D2870F68();
  sub_1D2870F68();
  os_unfair_lock_unlock((v18 + 40));
  *(v0 + 16) = v23;
  *(v0 + 24) = v24;
  sub_1D2788088((v0 + 16));
  sub_1D2788900(v0 + 24);
  v25 = *(v0 + 16);
  v26 = *(sub_1D279F58C(v25) + 16);

  v27 = *(sub_1D279EFD8(v25) + 16);

  if (v26)
  {

    sub_1D2870F78();
    sub_1D23C7044();

    v28 = sub_1D27ED8C8();

    v87 = v25;
    if ((v28 & 1) == 0)
    {

      sub_1D2872558();
      v39 = sub_1D2873CA8();
      v40 = sub_1D2878A18();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D226E000, v39, v40, "Found named entities but personalization is disabled, rejecting prompt", v41, 2u);
        MEMORY[0x1D38A3520](v41, -1, -1);
      }

      v42 = *(v0 + 616);
      v43 = *(v0 + 496);
      v82 = *(v0 + 488);
      v85 = *(v0 + 512);
      v44 = *(v0 + 472);
      v80 = *(v0 + 464);
      v81 = *(v0 + 480);
      v79 = *(v0 + 456);
      v45 = *(v0 + 448);
      v78 = *(v0 + 440);
      v77 = *(v0 + 432);
      v46 = v39;
      v48 = *(v0 + 416);
      v47 = *(v0 + 424);
      v49 = *(v0 + 272);
      v50 = *(v0 + 216);

      v42(v49, v50);

      (*(v47 + 8))(v77, v48);
      (*(v45 + 8))(v79, v78);
      (*(v44 + 8))(v81, v80);
      (*(v43 + 8))(v85, v82);
      v84 = MEMORY[0x1E69E7CC0];
      v38 = 3;
      goto LABEL_17;
    }

LABEL_13:

    v29 = *(v0 + 512);
    v30 = *(v0 + 488);
    v31 = *(v0 + 496);
    v33 = *(v0 + 472);
    v32 = *(v0 + 480);
    v35 = *(v0 + 456);
    v34 = *(v0 + 464);
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v29, v30);
    v84 = *(v0 + 24);
    v38 = *(v0 + 673);
LABEL_17:
    v83 = v38;

    v51 = *(v0 + 8);

    return v51(v83, v87, v84, 0);
  }

  if (v27)
  {
    v87 = v25;

    goto LABEL_13;
  }

  sub_1D28720E8();
  sub_1D2870F68();
  sub_1D2873C18();
  v53 = sub_1D2873C38();
  v54 = sub_1D2878BB8();

  if (sub_1D2878EE8())
  {
    v56 = *(v0 + 32);
    v55 = *(v0 + 40);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v89[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_1D23D7C84(v56, v55, v89);
    v59 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v53, v54, v59, "PromptConceptAnalyzer.findPersonIndications", "%s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x1D38A3520](v58, -1, -1);
    MEMORY[0x1D38A3520](v57, -1, -1);
  }

  v86 = *(v0 + 600);
  v60 = *(v0 + 584);
  v61 = *(v0 + 376);
  v62 = *(v0 + 352);
  v63 = *(v0 + 320);
  v64 = *(v0 + 296);
  (*(v0 + 552))(*(v0 + 336), v63, v64);
  swift_allocObject();
  *(v0 + 648) = sub_1D2873C78();
  v60(v63, v64);
  v86(v61, v62);
  sub_1D2872558();
  sub_1D2870F68();
  v65 = sub_1D2873CA8();
  v66 = sub_1D2878A38();

  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 616);
  v69 = *(v0 + 264);
  v70 = *(v0 + 216);
  if (v67)
  {
    v88 = *(v0 + 616);
    v72 = *(v0 + 32);
    v71 = *(v0 + 40);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v89[0] = v74;
    *v73 = 136315138;
    *(v73 + 4) = sub_1D23D7C84(v72, v71, v89);
    _os_log_impl(&dword_1D226E000, v65, v66, "Will find person indications in '%s'.", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x1D38A3520](v74, -1, -1);
    MEMORY[0x1D38A3520](v73, -1, -1);

    v88(v69, v70);
  }

  else
  {

    v68(v69, v70);
  }

  *(v0 + 656) = *(*(v0 + 56) + 16);
  sub_1D2870F78();
  v75 = swift_task_alloc();
  *(v0 + 664) = v75;
  *v75 = v0;
  v75[1] = sub_1D278567C;
  v76 = *(v0 + 152);

  return MEMORY[0x1EEE4F568](v76);
}

uint64_t sub_1D278567C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 536);
    v4 = *(v2 + 528);
    v5 = sub_1D2786794;
  }

  else
  {

    v3 = *(v2 + 536);
    v4 = *(v2 + 528);
    v5 = sub_1D27857C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D27857C8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 56))(v1, 0, 1, v2);
  sub_1D2872558();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Did find person indications.", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = *(v0 + 616);
  v8 = *(v0 + 256);
  v9 = *(v0 + 216);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);

  v7(v8, v9);
  sub_1D22BD1D0(v10, v11, &qword_1EC6E19D8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_1D22BD238(*(v0 + 144), &qword_1EC6E19D8);
    v15 = (v0 + 152);
  }

  else
  {
    v15 = (v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 672);
    (*(v18 + 32))(v16, *(v0 + 144), v17);
    v20 = sub_1D278D440(v16, v19);
    sub_1D274DDE8(v20);
    (*(v18 + 8))(v16, v17);
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 88);
  sub_1D22BD1D0(*(v0 + 152), v21, &qword_1EC6E19D8);
  if (v14(v21, 1, v22) == 1)
  {
    sub_1D22BD238(*(v0 + 136), &qword_1EC6E19D8);
    goto LABEL_11;
  }

  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 136), *(v0 + 88));
  v23 = *(sub_1D2872C78() + 16);

  if (!v23 || (sub_1D2870F78(), sub_1D23C7044(), , v24 = sub_1D27ED8C8(), , (v24 & 1) != 0))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
LABEL_11:
    if (*(v0 + 672) != 1)
    {
LABEL_25:
      sub_1D22BD238(*v15, &qword_1EC6E19D8);
      sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

      v92 = *(v0 + 16);
      v58 = *(v0 + 512);
      v59 = *(v0 + 488);
      v60 = *(v0 + 496);
      v62 = *(v0 + 472);
      v61 = *(v0 + 480);
      v64 = *(v0 + 456);
      v63 = *(v0 + 464);
      v65 = *(v0 + 440);
      v66 = *(v0 + 448);
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      (*(v66 + 8))(v64, v65);
      (*(v62 + 8))(v61, v63);
      (*(v60 + 8))(v58, v59);
      v89 = *(v0 + 24);
      v45 = *(v0 + 673);
      goto LABEL_26;
    }

    v25 = *(v0 + 128);
    v26 = *(v0 + 88);
    sub_1D22BD1D0(*(v0 + 152), v25, &qword_1EC6E19D8);
    if (v14(v25, 1, v26) == 1)
    {
      sub_1D22BD238(*v15, &qword_1EC6E19D8);
      v15 = (v0 + 128);
      goto LABEL_25;
    }

    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    if (sub_1D2789F48())
    {
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);
      v29 = *(v0 + 64);
      sub_1D2870F78();
      v30 = sub_1D23C6B54();

      (*(v28 + 104))(v27, *MEMORY[0x1E696E3A0], v29);
      v31 = sub_1D2872058();
      (*(v28 + 8))(v27, v29);
      if (v31)
      {
        v32 = *(*(v30 + 64) + 16);

        if (v32)
        {

          sub_1D2872558();
          v33 = sub_1D2873CA8();
          v34 = sub_1D2878A38();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_1D226E000, v33, v34, "Detected multiple people in ADM prompt, suggesting switch to External Provider.", v35, 2u);
            MEMORY[0x1D38A3520](v35, -1, -1);
          }

          v91 = *(v0 + 616);
          v85 = *(v0 + 488);
          v88 = *(v0 + 512);
          v81 = *(v0 + 480);
          v83 = *(v0 + 496);
          v77 = *(v0 + 472);
          v79 = *(v0 + 464);
          v75 = *(v0 + 456);
          v36 = *(v0 + 448);
          v73 = *(v0 + 440);
          v37 = *(v0 + 424);
          v69 = *(v0 + 416);
          v71 = *(v0 + 432);
          v38 = *(v0 + 240);
          v39 = *(v0 + 216);
          v40 = *(v0 + 152);
          v41 = v33;
          v42 = *(v0 + 96);
          v43 = *(v0 + 104);
          v44 = *(v0 + 88);

          v91(v38, v39);
          v92 = *(v0 + 16);
          (*(v42 + 8))(v43, v44);
          sub_1D22BD238(v40, &qword_1EC6E19D8);
          sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

          (*(v37 + 8))(v71, v69);
          (*(v36 + 8))(v75, v73);
          (*(v77 + 8))(v81, v79);
          (*(v83 + 8))(v88, v85);
          v89 = MEMORY[0x1E69E7CC0];
          v45 = 5;
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    goto LABEL_25;
  }

  sub_1D2872558();
  v46 = sub_1D2873CA8();
  v47 = sub_1D2878A18();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1D226E000, v46, v47, "Found person indications but personalization is disabled, rejecting prompt", v48, 2u);
    MEMORY[0x1D38A3520](v48, -1, -1);
  }

  v93 = *(v0 + 616);
  v86 = *(v0 + 488);
  v90 = *(v0 + 512);
  v82 = *(v0 + 480);
  v84 = *(v0 + 496);
  v78 = *(v0 + 472);
  v80 = *(v0 + 464);
  v76 = *(v0 + 456);
  v49 = *(v0 + 448);
  v74 = *(v0 + 440);
  v50 = *(v0 + 424);
  v70 = *(v0 + 416);
  v72 = *(v0 + 432);
  v51 = *(v0 + 248);
  v52 = *(v0 + 216);
  v53 = *(v0 + 152);
  v54 = *(v0 + 112);
  v55 = v46;
  v57 = *(v0 + 88);
  v56 = *(v0 + 96);

  v93(v51, v52);
  v92 = *(v0 + 16);
  (*(v56 + 8))(v54, v57);
  sub_1D22BD238(v53, &qword_1EC6E19D8);
  sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

  (*(v50 + 8))(v72, v70);
  (*(v49 + 8))(v76, v74);
  (*(v78 + 8))(v82, v80);
  (*(v84 + 8))(v90, v86);
  v89 = MEMORY[0x1E69E7CC0];
  v45 = 3;
LABEL_26:
  v87 = v45;

  v67 = *(v0 + 8);

  return v67(v87, v92, v89, 0);
}

uint64_t sub_1D2786250()
{
  v1 = v0[80];

  sub_1D2872558();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[80];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did fail to assign playground configuration: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = v0[77];
  v11 = v0[29];
  v12 = v0[27];

  v10(v11, v12);
  sub_1D28720E8();
  v13 = sub_1D2873C38();
  sub_1D2873C68();
  v14 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v15 = v0[21];
    v16 = v0[22];
    v17 = v0[20];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v15 + 88))(v16, v17) == *MEMORY[0x1E69E93E8])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[21] + 8))(v0[22], v0[20]);
      v18 = "";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v20, "PromptConceptAnalyzer.assignPrompt", v18, v19, 2u);
    MEMORY[0x1D38A3520](v19, -1, -1);
  }

  v44 = v0[80];
  v37 = v0[75];
  v21 = v0[73];
  v22 = v0[62];
  v42 = v0[61];
  v43 = v0[64];
  v23 = v0[59];
  v40 = v0[58];
  v41 = v0[60];
  v24 = v0[56];
  v38 = v0[55];
  v39 = v0[57];
  v25 = v0[53];
  v35 = v0[52];
  v36 = v0[54];
  v26 = v0[46];
  v27 = v13;
  v28 = v0[44];
  v29 = v0[39];
  v30 = v0[37];

  v21(v29, v30);
  v37(v26, v28);

  (*(v25 + 8))(v36, v35);
  (*(v24 + 8))(v39, v38);
  (*(v23 + 8))(v41, v40);
  (*(v22 + 8))(v43, v42);

  v31 = v0[1];
  v32 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];

  return v31(3, v32, v33, v44);
}

uint64_t sub_1D2786794()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1D2872558();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Did find person indications.", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = *(v0 + 616);
  v8 = *(v0 + 256);
  v9 = *(v0 + 216);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);

  v7(v8, v9);
  sub_1D22BD1D0(v10, v11, &qword_1EC6E19D8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    sub_1D22BD238(*(v0 + 144), &qword_1EC6E19D8);
    v15 = (v0 + 152);
  }

  else
  {
    v15 = (v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 672);
    (*(v18 + 32))(v16, *(v0 + 144), v17);
    v20 = sub_1D278D440(v16, v19);
    sub_1D274DDE8(v20);
    (*(v18 + 8))(v16, v17);
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 88);
  sub_1D22BD1D0(*(v0 + 152), v21, &qword_1EC6E19D8);
  if (v14(v21, 1, v22) == 1)
  {
    sub_1D22BD238(*(v0 + 136), &qword_1EC6E19D8);
    goto LABEL_11;
  }

  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 136), *(v0 + 88));
  v23 = *(sub_1D2872C78() + 16);

  if (!v23 || (sub_1D2870F78(), sub_1D23C7044(), , v24 = sub_1D27ED8C8(), , (v24 & 1) != 0))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
LABEL_11:
    if (*(v0 + 672) != 1)
    {
LABEL_25:
      sub_1D22BD238(*v15, &qword_1EC6E19D8);
      sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

      v92 = *(v0 + 16);
      v58 = *(v0 + 512);
      v59 = *(v0 + 488);
      v60 = *(v0 + 496);
      v62 = *(v0 + 472);
      v61 = *(v0 + 480);
      v64 = *(v0 + 456);
      v63 = *(v0 + 464);
      v65 = *(v0 + 440);
      v66 = *(v0 + 448);
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      (*(v66 + 8))(v64, v65);
      (*(v62 + 8))(v61, v63);
      (*(v60 + 8))(v58, v59);
      v89 = *(v0 + 24);
      v45 = *(v0 + 673);
      goto LABEL_26;
    }

    v25 = *(v0 + 128);
    v26 = *(v0 + 88);
    sub_1D22BD1D0(*(v0 + 152), v25, &qword_1EC6E19D8);
    if (v14(v25, 1, v26) == 1)
    {
      sub_1D22BD238(*v15, &qword_1EC6E19D8);
      v15 = (v0 + 128);
      goto LABEL_25;
    }

    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    if (sub_1D2789F48())
    {
      v28 = *(v0 + 72);
      v27 = *(v0 + 80);
      v29 = *(v0 + 64);
      sub_1D2870F78();
      v30 = sub_1D23C6B54();

      (*(v28 + 104))(v27, *MEMORY[0x1E696E3A0], v29);
      v31 = sub_1D2872058();
      (*(v28 + 8))(v27, v29);
      if (v31)
      {
        v32 = *(*(v30 + 64) + 16);

        if (v32)
        {

          sub_1D2872558();
          v33 = sub_1D2873CA8();
          v34 = sub_1D2878A38();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_1D226E000, v33, v34, "Detected multiple people in ADM prompt, suggesting switch to External Provider.", v35, 2u);
            MEMORY[0x1D38A3520](v35, -1, -1);
          }

          v91 = *(v0 + 616);
          v85 = *(v0 + 488);
          v88 = *(v0 + 512);
          v81 = *(v0 + 480);
          v83 = *(v0 + 496);
          v77 = *(v0 + 472);
          v79 = *(v0 + 464);
          v75 = *(v0 + 456);
          v36 = *(v0 + 448);
          v73 = *(v0 + 440);
          v37 = *(v0 + 424);
          v69 = *(v0 + 416);
          v71 = *(v0 + 432);
          v38 = *(v0 + 240);
          v39 = *(v0 + 216);
          v40 = *(v0 + 152);
          v41 = v33;
          v42 = *(v0 + 96);
          v43 = *(v0 + 104);
          v44 = *(v0 + 88);

          v91(v38, v39);
          v92 = *(v0 + 16);
          (*(v42 + 8))(v43, v44);
          sub_1D22BD238(v40, &qword_1EC6E19D8);
          sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

          (*(v37 + 8))(v71, v69);
          (*(v36 + 8))(v75, v73);
          (*(v77 + 8))(v81, v79);
          (*(v83 + 8))(v88, v85);
          v89 = MEMORY[0x1E69E7CC0];
          v45 = 5;
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    goto LABEL_25;
  }

  sub_1D2872558();
  v46 = sub_1D2873CA8();
  v47 = sub_1D2878A18();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1D226E000, v46, v47, "Found person indications but personalization is disabled, rejecting prompt", v48, 2u);
    MEMORY[0x1D38A3520](v48, -1, -1);
  }

  v93 = *(v0 + 616);
  v86 = *(v0 + 488);
  v90 = *(v0 + 512);
  v82 = *(v0 + 480);
  v84 = *(v0 + 496);
  v78 = *(v0 + 472);
  v80 = *(v0 + 464);
  v76 = *(v0 + 456);
  v49 = *(v0 + 448);
  v74 = *(v0 + 440);
  v50 = *(v0 + 424);
  v70 = *(v0 + 416);
  v72 = *(v0 + 432);
  v51 = *(v0 + 248);
  v52 = *(v0 + 216);
  v53 = *(v0 + 152);
  v54 = *(v0 + 112);
  v55 = v46;
  v57 = *(v0 + 88);
  v56 = *(v0 + 96);

  v93(v51, v52);
  v92 = *(v0 + 16);
  (*(v56 + 8))(v54, v57);
  sub_1D22BD238(v53, &qword_1EC6E19D8);
  sub_1D2789C04("PromptConceptAnalyzer.findPersonIndications", 43, 2);

  (*(v50 + 8))(v72, v70);
  (*(v49 + 8))(v76, v74);
  (*(v78 + 8))(v82, v80);
  (*(v84 + 8))(v90, v86);
  v89 = MEMORY[0x1E69E7CC0];
  v45 = 3;
LABEL_26:
  v87 = v45;

  v67 = *(v0 + 8);

  return v67(v87, v92, v89, 0);
}

uint64_t sub_1D278721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = sub_1D2872AF8();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for AnalyzerAmbiguity();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = sub_1D2872B28();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v12 = sub_1D2873788();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v13 = sub_1D28737C8();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v14 = sub_1D2873CB8();
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A30);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D278757C, 0, 0);
}

uint64_t sub_1D278757C()
{
  v97 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[5];
  sub_1D2872558();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A38();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  if (v7)
  {
    v92 = v6;
    v14 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v96 = v91;
    *v14 = 136315138;
    sub_1D28737B8();
    v15 = MEMORY[0x1D38A0EB0]();
    v93 = v11;
    v17 = v16;

    (*(v12 + 8))(v10, v13);
    v18 = sub_1D23D7C84(v15, v17, &v96);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1D226E000, v5, v92, "Ambiguity with concepts: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x1D38A3520](v91, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);

    (*(v9 + 8))(v8, v93);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v9 + 8))(v8, v11);
  }

  v19 = sub_1D28737B8();
  if (*(v19 + 16))
  {
    v20 = v0[25];
    v21 = v0[26];
    v22 = v0[22];
    v23 = v0[23];
    v24 = *(v23 + 16);
    v24(v21, v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    v24(v20, v21, v22);
    if ((*(v23 + 88))(v20, v22) == *MEMORY[0x1E69E0140])
    {
      v25 = v0[25];
      v27 = v0[20];
      v26 = v0[21];
      v28 = v0[19];
      v30 = v0[9];
      v29 = v0[10];
      v31 = v0[8];
      (*(v0[23] + 96))(v25, v0[22]);
      (*(v27 + 32))(v26, v25, v28);
      sub_1D2872B08();
      (*(v27 + 8))(v26, v28);
      if ((*(v30 + 88))(v29, v31) == *MEMORY[0x1E69DFCF8])
      {
        v32 = v0[34];
        v33 = v0[26];
        v34 = v0[22];
        v35 = v0[23];
        v36 = v0[12];
        v37 = v0[13];
        v38 = v0[2];
        (*(v0[9] + 8))(v0[10], v0[8]);
        (*(v37 + 56))(v32, 1, 1, v36);
        (*(v35 + 32))(v38, v33, v34);
        (*(v35 + 56))(v38, 0, 1, v34);
        goto LABEL_25;
      }

      v43 = v0[9];
      v42 = v0[10];
      v44 = v0[8];
      (*(v0[23] + 8))(v0[26], v0[22]);
      (*(v43 + 8))(v42, v44);
    }

    else
    {
      v39 = v0[25];
      v40 = v0[22];
      v41 = *(v0[23] + 8);
      v41(v0[26], v40);
      v41(v39, v40);
    }
  }

  else
  {
  }

  v45 = v0[6];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v0[13];
    v48 = v0[14];
    v49 = v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v50 = *(v47 + 72);
    while (1)
    {
      v51 = v0[14];
      v53 = v0[3];
      v52 = v0[4];
      sub_1D278F270(v49, v51, type metadata accessor for AnalyzerAmbiguity);
      if (*v51 == v53 && *(v48 + 8) == v52)
      {
        break;
      }

      sub_1D278EF50(v0[14], type metadata accessor for AnalyzerAmbiguity);
      v49 += v50;
      if (!--v46)
      {
        goto LABEL_24;
      }
    }

    v55 = v0[22];
    v56 = v0[23];
    v58 = v0[17];
    v57 = v0[18];
    v59 = v0[11];
    v60 = v0[12];
    sub_1D278EFB0(v0[14], v58, type metadata accessor for AnalyzerAmbiguity);
    sub_1D278EFB0(v58, v57, type metadata accessor for AnalyzerAmbiguity);
    sub_1D22BD1D0(v57 + *(v60 + 24), v59, &qword_1EC6DA528);
    if ((*(v56 + 48))(v59, 1, v55) == 1)
    {
      v61 = v0[11];
      sub_1D278EF50(v0[18], type metadata accessor for AnalyzerAmbiguity);
      sub_1D22BD238(v61, &qword_1EC6DA528);
    }

    else
    {
      v62 = v0[24];
      v63 = *(v0[23] + 32);
      v63(v62, v0[11], v0[22]);
      v64 = sub_1D28737B8();
      LOBYTE(v62) = sub_1D22D1A00(v62, v64);

      if (v62)
      {
        v65 = v0[34];
        v67 = v0[23];
        v66 = v0[24];
        v68 = v0[22];
        v69 = v0[12];
        v70 = v0[13];
        v71 = v0[2];
        sub_1D278EFB0(v0[18], v65, type metadata accessor for AnalyzerAmbiguity);
        (*(v70 + 56))(v65, 0, 1, v69);
        v63(v71, v66, v68);
        (*(v67 + 56))(v71, 0, 1, v68);
        goto LABEL_25;
      }

      v72 = v0[18];
      (*(v0[23] + 8))(v0[24], v0[22]);
      sub_1D278EF50(v72, type metadata accessor for AnalyzerAmbiguity);
    }
  }

LABEL_24:
  v73 = v0[34];
  v75 = v0[22];
  v74 = v0[23];
  v76 = v0[16];
  v77 = v0[12];
  v78 = v0[13];
  v79 = v0[3];
  v94 = v0[4];
  v95 = v0[2];
  v80 = sub_1D28737B8();
  v81 = *(v74 + 56);
  v81(&v76[*(v77 + 24)], 1, 1, v75);
  *v76 = v79;
  *(v76 + 1) = v94;
  *(v76 + 2) = v80;
  sub_1D278EFB0(v76, v73, type metadata accessor for AnalyzerAmbiguity);
  (*(v78 + 56))(v73, 0, 1, v77);
  v81(v95, 1, 1, v75);
LABEL_25:
  v82 = v0[33];
  v83 = v0[12];
  v84 = v0[13];
  sub_1D22BD1D0(v0[34], v82, &qword_1EC6E1A30);
  if ((*(v84 + 48))(v82, 1, v83) == 1)
  {
    v85 = v0[33];
    sub_1D22BD238(v0[34], &qword_1EC6E1A30);
    sub_1D22BD238(v85, &qword_1EC6E1A30);
  }

  else
  {
    v86 = v0[15];
    v87 = v0[7];
    sub_1D278EFB0(v0[33], v86, type metadata accessor for AnalyzerAmbiguity);
    *(swift_task_alloc() + 16) = v86;
    os_unfair_lock_lock(v87 + 10);
    sub_1D278F018(&v87[4]);
    os_unfair_lock_unlock(v87 + 10);
    v88 = v0[15];
    sub_1D22BD238(v0[34], &qword_1EC6E1A30);

    sub_1D278EF50(v88, type metadata accessor for AnalyzerAmbiguity);
  }

  v89 = v0[1];

  return v89();
}

uint64_t sub_1D2787E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyzerAmbiguity();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D278F270(a2, v7, type metadata accessor for AnalyzerAmbiguity);
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D27CCDD8(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D27CCDD8(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = sub_1D278EFB0(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, type metadata accessor for AnalyzerAmbiguity);
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1D2788010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D278E3D8(a1, a2);
  os_unfair_lock_lock((a4 + 40));
  if (v5 != 6)
  {
    *(a4 + 16) = v5;
  }

  v6 = sub_1D2870F68();
  sub_1D274DDE8(v6);
  os_unfair_lock_unlock((a4 + 40));
}

void sub_1D2788088(void *a1)
{
  v3 = type metadata accessor for IdentifiedEntity(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  v57 = type metadata accessor for PhotosPersonImage();
  v9 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v45 - v12;
  v13 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D2871818();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v1;
  sub_1D2870F78();
  sub_1D23C6CA0();

  v63 = _SystemPhotoLibrary.photoLibrary.getter();

  if (v63)
  {
    v19 = *(*a1 + 16);
    if (v19)
    {
      v62 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_25:
        v62 = sub_1D278BD30(v62);
      }

      v21 = v59;
      v22 = 0;
      v64 = (v17 + 6);
      v23 = v62;
      *v47 = v62;
      v61 = (v17 + 4);
      v52 = (v9 + 48);
      v60 = (v17 + 1);
      v46 = (v17 + 7);
      v17 = v23;
      v55 = v3;
      v51 = v4;
      v54 = v16;
      v53 = v19;
      v50 = v15;
      do
      {
        if (v22 >= v17[2])
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v9 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22;
        sub_1D278F270(v9 + *(v3 + 20), v15, type metadata accessor for IdentifiedEntity.Kind);
        if ((*v64)(v15, 2, v16))
        {
          sub_1D278EF50(v15, type metadata accessor for IdentifiedEntity.Kind);
        }

        else
        {
          (*v61)(v21, v15, v16);
          v24 = sub_1D286641C(v21, v63);
          if (v24)
          {
            v4 = v24;
            v15 = v24;
            v25 = [v15 localIdentifier];
            v26 = sub_1D28780A8();
            v27 = v8;
            v29 = v28;

            v30 = [v15 px_localizedName];
            v31 = sub_1D28780A8();
            v33 = v32;

            sub_1D238D058(0);
            *&v66 = v31;
            *(&v66 + 1) = v33;
            *&v67 = v26;
            *(&v67 + 1) = v29;
            v8 = v27;
            *&v69 = 0;
            v68 = 0uLL;
            *(&v69 + 1) = v4;
            sub_1D2870F78();
            v17 = sub_1D23C6DDC();

            v65[0] = v66;
            v65[1] = v67;
            v65[2] = v68;
            v65[3] = v69;
            sub_1D255AEC8(v65, v27);

            if ((*v52)(v27, 1, v57) == 1)
            {
              sub_1D22BD238(v27, &qword_1EC6DDD60);
              v34 = type metadata accessor for PhotosPersonAsset();
              v35 = v56;
              (*(*(v34 - 8) + 56))(v56, 1, 1, v34);
              sub_1D22BD238(v35, &unk_1EC6DDDC0);
              v3 = v55;
              v16 = v54;
              v19 = v53;
              if (v22 >= v62[2])
              {
                goto LABEL_23;
              }

              v37 = *v9;
              v36 = *(v9 + 8);
              v4 = v48;
              (*v46)(&v48[*(v55 + 20)], 2, 2, v54);
              v38 = *(v3 + 24);
              v39 = *(v9 + v38);
              *v4 = v37;
              *(v4 + 8) = v36;
              v17 = v62;
              *(v4 + v38) = v39;
              sub_1D2870F68();
              sub_1D22D640C(&v66);

              v21 = v59;
              (*v60)(v59, v16);
              if (v22 >= v17[2])
              {
                goto LABEL_24;
              }

              sub_1D278DD30(v4, v9, type metadata accessor for IdentifiedEntity);
              *v47 = v17;
              v4 = v51;
            }

            else
            {

              v40 = v49;
              sub_1D278EFB0(v27, v49, type metadata accessor for PhotosPersonImage);
              v41 = type metadata accessor for PhotosPersonAsset();
              v9 = v56;
              sub_1D278EFB0(v40, &v56[v41[5]], type metadata accessor for PhotosPersonImage);
              v42 = v69;
              *(v9 + 32) = v68;
              *(v9 + 48) = v42;
              v43 = v67;
              *v9 = v66;
              *(v9 + 16) = v43;
              *(v9 + v41[6]) = 1;
              *(v9 + v41[7]) = 0;
              (*(*(v41 - 1) + 56))(v9, 0, 1, v41);
              v21 = v59;
              v16 = v54;
              (*v60)(v59, v54);
              sub_1D22BD238(v9, &unk_1EC6DDDC0);
              v3 = v55;
              v4 = v51;
              v19 = v53;
              v17 = v62;
            }

            v15 = v50;
          }

          else
          {
            (*v60)(v21, v16);
          }
        }

        ++v22;
      }

      while (v19 != v22);
    }

    else
    {
      v44 = v63;
    }
  }
}

uint64_t sub_1D2788900(uint64_t a1)
{
  v112 = a1;
  v137 = type metadata accessor for AnalyzerAmbiguity();
  v131 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v118 = (&v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v116 = &v105 - v4;
  v115 = type metadata accessor for PhotosPersonImage();
  v166 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v105 - v7;
  v129 = sub_1D2871818();
  v8 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2872AF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D2872AE8();
  v13 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1D2872B28();
  v15 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2873788();
  v156 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v143 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v105 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v130 = &v105 - v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A00);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v29 = &v105 - v28;
  v133 = v1;
  sub_1D2870F78();
  sub_1D23C6CA0();

  v30 = _SystemPhotoLibrary.photoLibrary.getter();

  v114 = v30;
  if (!v30)
  {
    return result;
  }

  v149 = v10;
  v107 = v29;
  result = sub_1D2879938();
  v32 = *v112;
  v127 = *(*v112 + 16);
  if (!v127)
  {
LABEL_54:
    v104 = v107;
    sub_1D278B44C(v107);

    return (*(v106 + 8))(v104, v108);
  }

  v125 = 0;
  v126 = (v156 + 48);
  v163 = v156 + 16;
  v155 = v156 + 88;
  v154 = *MEMORY[0x1E69E0140];
  v148 = (v156 + 96);
  v147 = (v15 + 32);
  v146 = (v11 + 88);
  v145 = *MEMORY[0x1E69DFCF0];
  v144 = (v15 + 8);
  v123 = (v11 + 8);
  v122 = (v11 + 96);
  v33 = 0;
  v121 = (v13 + 32);
  v120 = (v8 + 8);
  v113 = (v166 + 48);
  v119 = (v13 + 8);
  v141 = (v156 + 40);
  v109 = (v156 + 56);
  v157 = v23;
  v124 = v17;
  v158 = (v156 + 8);
  while (1)
  {
    if (v33 >= v32[2])
    {
      goto LABEL_61;
    }

    v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v136 = *(v131 + 72) * v33;
    v34 = *(v137 + 24);
    v142 = (v32 + v135 + v136);
    v35 = v130;
    sub_1D22BD1D0(v142 + v34, v130, &qword_1EC6DA528);
    v36 = (*v126)(v35, 1, v17);
    result = sub_1D22BD238(v35, &qword_1EC6DA528);
    if (v36 == 1)
    {
      break;
    }

LABEL_5:
    if (++v33 == v127)
    {
      goto LABEL_54;
    }
  }

  v37 = v151;
  if (v33 >= v32[2])
  {
    goto LABEL_62;
  }

  v134 = v32;
  v38 = v142[2];
  v39 = v114;
  v40 = v133;
  sub_1D2870F78();
  v41 = sub_1D2870F68();
  v42 = v125;
  v43 = sub_1D278D204(v41, v39, v40);
  v45 = v44;
  v125 = v42;
  v138 = v39;

  if (v45)
  {
    v46 = v38[2];
    v47 = v46;
    goto LABEL_15;
  }

  v46 = v43 + 1;
  v48 = v157;
  if (__OFADD__(v43, 1))
  {
    goto LABEL_68;
  }

  v166 = v43;
  v111 = v33;
  v50 = v38 + 2;
  v49 = v38[2];
  if (v46 == v49)
  {
LABEL_13:
    v47 = v166;
    if (v46 < v166)
    {
      goto LABEL_63;
    }

    v33 = v111;
    if (v166 < 0)
    {
      goto LABEL_64;
    }

LABEL_15:
    v51 = v47;
    v52 = v47 - v46;
    v53 = v46 + v52;
    if (__OFADD__(v46, v52))
    {
      goto LABEL_65;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v168 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v53 > v38[3] >> 1)
    {
      if (v46 <= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v46;
      }

      v38 = sub_1D27CCE00(isUniquelyReferenced_nonNull_native, v55, 1, v38);
      *&v168 = v38;
    }

    v32 = v134;
    result = sub_1D278D2F4(v51, v46, 0, MEMORY[0x1E69E0158]);
    if (v38[2])
    {
      if (v33 >= v32[2])
      {
        goto LABEL_66;
      }

      v56 = *v142;
      v57 = v142[1];
      v58 = v118;
      (*v109)(v118 + *(v137 + 24), 1, 1, v17);
      *v58 = v56;
      v58[1] = v57;
      v58[2] = v38;
      v32 = v134;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D278BD44(v32);
        v32 = result;
      }

      if (v33 >= v32[2])
      {
        goto LABEL_67;
      }

      result = sub_1D278DD30(v118, v32 + v135 + v136, type metadata accessor for AnalyzerAmbiguity);
      *v112 = v32;
    }

    else
    {

      *&v167[0] = v33;
      v172 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A08);
      sub_1D22BB9D8(&qword_1EC6E1A10, &qword_1EC6E1A08);
      result = sub_1D2879918();
    }

    goto LABEL_5;
  }

  v59 = v150;
  while (v46 < v49)
  {
    v60 = v156;
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v164 = v38;
    v159 = v61;
    v62 = v38 + v61;
    v161 = *(v156 + 72);
    v63 = *(v156 + 16);
    v160 = v161 * v46;
    v162 = v62;
    v64 = v165;
    v63(v165, &v62[v161 * v46], v17);
    v63(v48, v64, v17);
    v65 = (*(v60 + 88))(v48, v17);
    if (v65 == v154)
    {
      (*v148)(v48, v17);
      v66 = v152;
      (*v147)(v59, v48, v152);
      sub_1D2872B08();
      v67 = v149;
      v68 = (*v146)(v37, v149);
      v69 = v158;
      if (v68 == v145)
      {
        (*v122)(v37, v67);
        v70 = v139;
        v71 = v140;
        (*v121)(v139, v37, v140);
        v72 = v128;
        sub_1D2872AB8();
        v73 = sub_1D286641C(v72, v138);
        (*v120)(v72, v129);
        if (v73)
        {
          v74 = v73;
          v75 = [v74 localIdentifier];
          v76 = sub_1D28780A8();
          v78 = v77;

          v132 = v74;
          v79 = [v74 px_localizedName];
          v80 = sub_1D28780A8();
          v82 = v81;

          sub_1D238D058(0);
          *&v168 = v80;
          *(&v168 + 1) = v82;
          *&v169 = v76;
          *(&v169 + 1) = v78;
          *&v171 = 0;
          v170 = 0uLL;
          *(&v171 + 1) = v73;
          sub_1D2870F78();
          v83 = sub_1D23C6DDC();

          v167[0] = v168;
          v167[1] = v169;
          v167[2] = v170;
          v167[3] = v171;
          v84 = v116;
          sub_1D255AEC8(v167, v116);
          if ((*v113)(v84, 1, v115) == 1)
          {
            sub_1D22BD238(v84, &qword_1EC6DDD60);
            v85 = type metadata accessor for PhotosPersonAsset();
            v86 = v117;
            (*(*(v85 - 1) + 56))(v117, 1, 1, v85);
          }

          else
          {
            v87 = v110;
            sub_1D278EFB0(v84, v110, type metadata accessor for PhotosPersonImage);
            v85 = type metadata accessor for PhotosPersonAsset();
            v86 = v117;
            sub_1D278EFB0(v87, &v117[v85[5]], type metadata accessor for PhotosPersonImage);
            v88 = v171;
            v86[2] = v170;
            v86[3] = v88;
            v89 = v169;
            *v86 = v168;
            v86[1] = v89;
            *(v86 + v85[6]) = 1;
            *(v86 + v85[7]) = 0;
            (*(*(v85 - 1) + 56))(v86, 0, 1, v85);
            sub_1D22D63B0(&v168, v167);
          }

          v90 = v139;
          v91 = v152;

          (*v119)(v90, v140);
          v92 = v150;
          (*v144)(v150, v91);
          sub_1D22D640C(&v168);
          type metadata accessor for PhotosPersonAsset();
          v93 = (*(*(v85 - 1) + 48))(v86, 1, v85);
          sub_1D22BD238(v86, &unk_1EC6DDDC0);
          v94 = v93 == 1;
          v59 = v92;
          v37 = v151;
          v17 = v124;
          v69 = v158;
          if (v94)
          {
            result = (*v158)(v165, v124);
            v48 = v157;
            v38 = v164;
            goto LABEL_52;
          }
        }

        else
        {
          (*v119)(v70, v71);
          v59 = v150;
          (*v144)(v150, v152);
          v17 = v124;
          v69 = v158;
        }
      }

      else
      {
        (*v144)(v59, v66);
        (*v123)(v37, v67);
      }
    }

    else
    {
      v69 = v158;
      (*v158)(v48, v17);
    }

    result = (*v69)(v165, v17);
    v95 = v166;
    if (v46 == v166)
    {
      v48 = v157;
      v38 = v164;
    }

    else
    {
      if (v166 < 0)
      {
        goto LABEL_57;
      }

      v96 = *v50;
      if (v166 >= *v50)
      {
        goto LABEL_58;
      }

      v97 = v161 * v166;
      v98 = v162;
      result = (v63)(v153, &v162[v161 * v166], v17);
      if (v46 >= v96)
      {
        goto LABEL_59;
      }

      v99 = v160;
      v100 = &v98[v160];
      v101 = v143;
      v63(v143, v100, v17);
      v38 = v164;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1D278BD58(v38);
      }

      v48 = v157;
      v102 = v38 + v159;
      v103 = *v141;
      result = (*v141)(v38 + v159 + v97, v101, v17);
      if (v46 >= v38[2])
      {
        goto LABEL_60;
      }

      result = v103(&v102[v99], v153, v17);
      v37 = v151;
      v59 = v150;
      v95 = v166;
    }

    v166 = v95 + 1;
LABEL_52:
    ++v46;
    v50 = v38 + 2;
    v49 = v38[2];
    if (v46 == v49)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_57:
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

uint64_t sub_1D2789C04(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = sub_1D2873C58();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873C28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873C48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v14 = sub_1D2873C38();
  sub_1D2873C68();
  v23 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2873C98();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v14, v23, v20, v27, v18, v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D2789F48()
{
  v22 = sub_1D2872C28();
  v0 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  v5 = sub_1D2872C68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D2872C78();
  v10 = 0;
  v11 = *(result + 16);
  v25 = result;
  v26 = v11;
  v20 = v6 + 16;
  v12 = (v0 + 8);
  v23 = v6;
  v24 = (v6 + 8);
  v13 = v21;
  v14 = v22;
  while (1)
  {
    v15 = v10;
    if (v26 == v10)
    {
LABEL_6:

      return v26 != v15;
    }

    if (v10 >= *(result + 16))
    {
      break;
    }

    (*(v23 + 16))(v8, result + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v10, v5);
    sub_1D2872C38();
    sub_1D2872BF8();
    sub_1D278F2D8(&qword_1EC6DA518, MEMORY[0x1E69DFDA0]);
    v16 = sub_1D2879028();
    v17 = v5;
    v18 = *v12;
    (*v12)(v13, v14);
    v18(v4, v14);
    if (v16)
    {

      (*v24)(v8, v17);
      return v26 != v15;
    }

    v27 = v15 + 1;
    sub_1D2872C38();
    sub_1D2872C08();
    v19 = sub_1D2879028();
    v18(v13, v14);
    v18(v4, v14);
    (*v24)(v8, v17);
    v10 = v27;
    v5 = v17;
    result = v25;
    if (v19)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D278A278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a2;
  v75 = a3;
  v6 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v70 - v9;
  v73 = sub_1D2872AE8();
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2872AF8();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2872B28();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2873788();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x1E69E0148])
  {
    v23 = type metadata accessor for IdentifiedEntity(0);
    (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v70 = a4;
  if (v22 != *MEMORY[0x1E69E0140])
  {
    v40 = type metadata accessor for IdentifiedEntity(0);
    (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
    return (*(v18 + 8))(v21, v17);
  }

  (*(v18 + 96))(v21, v17);
  v24 = v79;
  v25 = v14;
  v26 = v16;
  (*(v79 + 32))(v16, v21, v25);
  sub_1D2872B08();
  v27 = v78;
  v28 = (*(v78 + 88))(v13, v11);
  if (v28 == *MEMORY[0x1E69DFCF0])
  {
    (*(v27 + 96))(v13, v11);
    v29 = v76;
    v30 = v72;
    v31 = v13;
    v32 = v73;
    (*(v76 + 32))(v72, v31, v73);
    v82 = v74;
    v83 = v75;
    v80 = sub_1D2872B18();
    v81 = v33;
    v34 = sub_1D28718F8();
    v35 = v77;
    (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
    sub_1D22BD06C();
    v78 = sub_1D2878FD8();
    v75 = v36;
    v38 = v37;
    sub_1D22BD238(v35, &qword_1EC6E1D90);

    if (v38)
    {
      (*(v29 + 8))(v30, v32);
      v39 = v70;
LABEL_11:
      (*(v24 + 8))(v26, v25);
      v50 = type metadata accessor for IdentifiedEntity(0);
      return (*(*(v50 - 8) + 56))(v39, 1, 1, v50);
    }

    v51 = sub_1D2872AD8();
    v52 = v70;
    if (v51)
    {
      v53 = v71;
      sub_1D2872AB8();
      v54 = 0;
    }

    else
    {
      v54 = 2;
      v53 = v71;
    }

    v63 = sub_1D2871818();
    (*(*(v63 - 8) + 56))(v53, v54, 2, v63);
    v64 = sub_1D2872B18();
    v66 = v65;
    (*(v76 + 8))(v30, v32);
    (*(v79 + 8))(v26, v25);
    v67 = type metadata accessor for IdentifiedEntity(0);
    sub_1D278EFB0(v53, v52 + *(v67 + 20), type metadata accessor for IdentifiedEntity.Kind);
    *v52 = v64;
    v52[1] = v66;
    v68 = (v52 + *(v67 + 24));
    v69 = v75;
    *v68 = v78;
    v68[1] = v69;
    return (*(*(v67 - 8) + 56))(v52, 0, 1, v67);
  }

  else if (v28 == *MEMORY[0x1E69DFCF8])
  {
    v82 = v74;
    v83 = v75;
    v80 = sub_1D2872B18();
    v81 = v42;
    v43 = sub_1D28718F8();
    v44 = v77;
    (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
    sub_1D22BD06C();
    v45 = sub_1D2878FD8();
    v47 = v46;
    v49 = v48;
    sub_1D22BD238(v44, &qword_1EC6E1D90);

    v39 = v70;
    if (v49)
    {
      goto LABEL_11;
    }

    v56 = sub_1D2872B18();
    v58 = v57;
    (*(v24 + 8))(v16, v25);
    v59 = type metadata accessor for IdentifiedEntity(0);
    v60 = *(v59 + 20);
    v61 = sub_1D2871818();
    (*(*(v61 - 8) + 56))(v39 + v60, 2, 2, v61);
    *v39 = v56;
    v39[1] = v58;
    v62 = (v39 + *(v59 + 24));
    *v62 = v45;
    v62[1] = v47;
    return (*(*(v59 - 8) + 56))(v39, 0, 1, v59);
  }

  else
  {
    (*(v24 + 8))(v16, v25);
    v55 = type metadata accessor for IdentifiedEntity(0);
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    return (*(v27 + 8))(v13, v11);
  }
}

BOOL sub_1D278AB80(uint64_t a1, char *a2, uint64_t a3)
{
  v47[1] = a3;
  v55 = a2;
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v47 - v4;
  v49 = type metadata accessor for PhotosPersonImage();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47[0] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = v47 - v7;
  v54 = sub_1D2871818();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2872AF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D2872AE8();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2873788();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2872B28();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v59, v14, v20);
  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x1E69E0140])
  {
    (*(v15 + 96))(v17, v14);
    (*(v19 + 32))(v22, v17, v18);
    sub_1D2872B08();
    v23 = v22;
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69DFCF0])
    {
      (*(v10 + 96))(v12, v9);
      v25 = v57;
      v24 = v58;
      v26 = v56;
      (*(v58 + 32))(v57, v12, v56);
      v27 = v52;
      sub_1D2872AB8();
      v28 = sub_1D286641C(v27, v55);
      (*(v53 + 8))(v27, v54);
      if (v28)
      {
        v55 = v23;
        v54 = v19;
        v59 = v18;
        v29 = v28;
        v30 = [v29 localIdentifier];
        v31 = sub_1D28780A8();
        v33 = v32;

        v34 = [v29 px_localizedName];
        v35 = sub_1D28780A8();
        v37 = v36;

        sub_1D238D058(0);
        *&v61 = v35;
        *(&v61 + 1) = v37;
        *&v62 = v31;
        *(&v62 + 1) = v33;
        v63 = 0uLL;
        *&v64 = 0;
        *(&v64 + 1) = v28;
        sub_1D2870F78();
        v38 = sub_1D23C6DDC();

        v60[0] = v61;
        v60[1] = v62;
        v60[2] = v63;
        v60[3] = v64;
        v39 = v50;
        sub_1D255AEC8(v60, v50);
        if ((*(v48 + 48))(v39, 1, v49) == 1)
        {
          sub_1D22BD238(v39, &qword_1EC6DDD60);
          v40 = type metadata accessor for PhotosPersonAsset();
          v41 = v51;
          (*(*(v40 - 1) + 56))(v51, 1, 1, v40);
        }

        else
        {
          v43 = v47[0];
          sub_1D278EFB0(v39, v47[0], type metadata accessor for PhotosPersonImage);
          v40 = type metadata accessor for PhotosPersonAsset();
          v41 = v51;
          sub_1D278EFB0(v43, &v51[v40[5]], type metadata accessor for PhotosPersonImage);
          v44 = v64;
          v41[2] = v63;
          v41[3] = v44;
          v45 = v62;
          *v41 = v61;
          v41[1] = v45;
          *(v41 + v40[6]) = 1;
          *(v41 + v40[7]) = 0;
          (*(*(v40 - 1) + 56))(v41, 0, 1, v40);
          sub_1D22D63B0(&v61, v60);
        }

        (*(v58 + 8))(v57, v26);
        (*(v54 + 8))(v55, v59);
        sub_1D22D640C(&v61);
        type metadata accessor for PhotosPersonAsset();
        v46 = (*(*(v40 - 1) + 48))(v41, 1, v40) == 1;
        sub_1D22BD238(v41, &unk_1EC6DDDC0);
        return v46;
      }

      else
      {
        (*(v24 + 8))(v25, v26);
        (*(v19 + 8))(v23, v18);
        return 0;
      }
    }

    else
    {
      (*(v19 + 8))(v22, v18);
      (*(v10 + 8))(v12, v9);
      return 0;
    }
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }
}

unint64_t sub_1D278B44C(unint64_t a1)
{
  v2 = type metadata accessor for AnalyzerAmbiguity();
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A18);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v38 - v5);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A20);
  MEMORY[0x1EEE9AC00](v43);
  v7 = (&v38 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A00);
  v47 = a1;
  sub_1D2879928();
  v13 = sub_1D22BB9D8(&qword_1ED89CBD8, &qword_1EC6E1A28);
  sub_1D2878818();
  sub_1D2878868();
  if (v50 == v49[0])
  {
    return (*(v9 + 8))(v12, v8);
  }

  v39 = v4;
  v45 = v13;
  v15 = sub_1D28788B8();
  v17 = *v16;
  v18 = v16[1];
  v15(v49, 0);
  v19 = *(v9 + 8);
  v46 = v8;
  v19(v12, v8);
  sub_1D2879928();
  v20 = v44;
  sub_1D2783930(1);
  sub_1D22BD1D0(v20, v7, &qword_1EC6E1A18);
  v21 = *(v43 + 36);
  v22 = *v20;
  sub_1D22BD238(v20, &qword_1EC6E1A18);
  *(v7 + v21) = v22;
  if (v22 != v7[1])
  {
    v43 = v7[1];
    v44 = v7;
    v42 = *v7;
    v25 = *v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

  v23 = v18;
  v24 = v38;
  while (1)
  {
    sub_1D22BD238(v7, &qword_1EC6E1A20);
    v25 = *v24;
    v21 = v39;
    if (v23 != (*v24)[2])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D278BD44(v25);
      }

      while (1)
      {
        if (v17 != v23)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v22 = v25[2];
          if (v17 >= v22)
          {
            goto LABEL_44;
          }

          v34 = v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
          v35 = *(v48 + 72);
          v18 = &v34[v35 * v17];
          sub_1D278F270(v18, v21, type metadata accessor for AnalyzerAmbiguity);
          if (v23 >= v22)
          {
            goto LABEL_45;
          }

          v22 = &v34[v35 * v23];
          sub_1D278DCCC(v22, v18);
          if (v23 >= v25[2])
          {
            goto LABEL_46;
          }

          sub_1D278DD30(v21, &v34[v35 * v23], type metadata accessor for AnalyzerAmbiguity);
        }

        v36 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v37 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_42;
        }

        ++v23;
        ++v17;
        if (v37 == v25[2])
        {
          *v24 = v25;
          v23 = v25[2];
          v17 = v36;
          goto LABEL_34;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_34:
    if (v23 >= v17)
    {
      return sub_1D278CC58(v17, v23, sub_1D27CCDD8, type metadata accessor for AnalyzerAmbiguity);
    }

LABEL_48:
    __break(1u);
LABEL_49:
    v25 = sub_1D278BD44(v25);
LABEL_6:
    v26 = *(v41 + 40);
    v40 = v21;
    v41 = v26;
    v27 = v43;
    do
    {
      v50 = v22;
      v49[0] = v42;
      v49[1] = v27;
      sub_1D2878828();
      v28 = sub_1D28788B8();
      v22 = *v29;
      v47 = v29[1];
      v28(v49, 0);
      sub_1D2878878();
      if (v18 != v22)
      {
        v21 = v39;
        v23 = v47;
        if (v18 >= v22)
        {
          goto LABEL_47;
        }

        while (1)
        {
          if (v17 != v18)
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_37;
            }

            v30 = v25[2];
            if (v17 >= v30)
            {
              goto LABEL_38;
            }

            v31 = v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
            v32 = *(v48 + 72);
            sub_1D278F270(&v31[v32 * v17], v21, type metadata accessor for AnalyzerAmbiguity);
            if (v18 >= v30)
            {
              goto LABEL_39;
            }

            sub_1D278DCCC(&v31[v32 * v18], &v31[v32 * v17]);
            if (v18 >= v25[2])
            {
              goto LABEL_40;
            }

            sub_1D278DD30(v21, &v31[v32 * v18], type metadata accessor for AnalyzerAmbiguity);
          }

          v33 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          ++v18;
          ++v17;
          if (v22 == v18)
          {
            v17 = v33;
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v23 = v47;
LABEL_8:
      v27 = v43;
      v7 = v44;
      v22 = *(v44 + v40);
      v18 = v23;
    }

    while (v22 != v43);
    v24 = v38;
    *v38 = v25;
  }
}

uint64_t sub_1D278BB34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1D278BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1D22BC8FC;

  return sub_1D278721C(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1D278BDD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D2879368();
  }

  return sub_1D28791C8();
}

uint64_t sub_1D278BE74(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D2879368();
LABEL_9:
  result = sub_1D28791C8();
  *v1 = result;
  return result;
}

unint64_t sub_1D278BF14(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D27CC890(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D278C238(v7, a2, 1, a3, &qword_1EC6DAC08, &unk_1D288C9A0, &qword_1EC6E1A40);
  *v3 = v5;
  return result;
}

unint64_t sub_1D278C008(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1D27CCD4C(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1D278C350(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_1D278C0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:
    sub_1D2870F68();
    result = sub_1D2870F68();
    __break(1u);
    return result;
  }
}

unint64_t sub_1D278C238(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v7;
  v14 = v13 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v8);
  v16 = a3 - v8;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = *(v13 + 16);
    v15 = __OFSUB__(v17, a2);
    v18 = v17 - a2;
    if (!v15)
    {
      result = v14 + 40 * a3;
      v19 = (v13 + 32 + 40 * a2);
      if (result != v19 || result >= v19 + 40 * v18)
      {
        result = memmove(result, v19, 40 * v18);
      }

      v21 = *(v13 + 16);
      v15 = __OFADD__(v21, v16);
      v22 = v21 + v16;
      if (!v15)
      {
        *(v13 + 16) = v22;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1D22BD238(a4, a7);
  }

  result = sub_1D22D7044(a4, v14);
  if (a3 == 1)
  {
    return sub_1D22BD238(a4, a7);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1D278C350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CarouselFace();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D22BD238(a4, &qword_1EC6DC100);
  }

  if (v17 < 1)
  {
    return sub_1D22BD238(a4, &qword_1EC6DC100);
  }

  result = sub_1D278F270(a4, v15, type metadata accessor for CarouselFace);
  if (v12 >= v17)
  {
    return sub_1D22BD238(a4, &qword_1EC6DC100);
  }

LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_1D278C4DC(void *a1, void *a2)
{
  v4 = sub_1D2873788();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A48);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v16 = v12;
    if (sub_1D2337AE4(a1[2], a2[2]))
    {
      v17 = *(type metadata accessor for AnalyzerAmbiguity() + 24);
      v18 = *(v16 + 48);
      sub_1D22BD1D0(a1 + v17, v14, &qword_1EC6DA528);
      sub_1D22BD1D0(a2 + v17, &v14[v18], &qword_1EC6DA528);
      v19 = *(v5 + 48);
      if (v19(v14, 1, v4) == 1)
      {
        if (v19(&v14[v18], 1, v4) == 1)
        {
          sub_1D22BD238(v14, &qword_1EC6DA528);
          return 1;
        }
      }

      else
      {
        sub_1D22BD1D0(v14, v10, &qword_1EC6DA528);
        if (v19(&v14[v18], 1, v4) != 1)
        {
          (*(v5 + 32))(v7, &v14[v18], v4);
          sub_1D278F2D8(&qword_1EC6D9A00, MEMORY[0x1E69E0158]);
          v20 = sub_1D2877F98();
          v21 = *(v5 + 8);
          v21(v7, v4);
          v21(v10, v4);
          sub_1D22BD238(v14, &qword_1EC6DA528);
          return (v20 & 1) != 0;
        }

        (*(v5 + 8))(v10, v4);
      }

      sub_1D22BD238(v14, &qword_1EC6E1A48);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D278C84C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D278C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ImageConditioningRepresentationsManager.WeakImageConditioningRepresentationsManagerObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D2879368();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D2879368();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D278CA38(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D2879368();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1D2879368();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1D278BE74(result);

  return sub_1D278C938(v4, v2, 0);
}

unint64_t sub_1D278CB28(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 104 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 104 * a3;
  v13 = (v7 + 32 + 104 * a2);
  if (result != v13 || result >= v13 + 104 * v12)
  {
    result = memmove(result, v13, 104 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D278CC58(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1D278D2F4(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1D278CD60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_1D2870F68();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D278CE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94D8);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D278CFC4(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1D278D09C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D278D144(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D27CCD74(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D278D09C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1D278D204(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(sub_1D2873788() - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_1D278AB80(v10, a2, a3);
    if (v3 || v12)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1D278D2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void *sub_1D278D440(uint64_t a1, char a2)
{
  v55 = sub_1D2873CB8();
  v3 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2872C28();
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v53 - v11;
  v12 = type metadata accessor for IdentifiedEntity(0);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v53 - v15;
  v74 = sub_1D2872C68();
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19F0);
  v17 = *(v6 + 72);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  if (a2)
  {
    *(v19 + 16) = xmmword_1D287F500;
    v71 = v19;
    sub_1D2872C18();
  }

  else
  {
    *(v19 + 16) = xmmword_1D28838F0;
    v71 = v19;
    sub_1D2872C18();
    sub_1D2872C08();
    sub_1D2872BF8();
  }

  result = sub_1D2872C78();
  v22 = v59;
  v68 = result[2];
  if (v68)
  {
    v23 = 0;
    v65 = (v7 + 8);
    v66 = v70 + 16;
    v54 = (v3 + 8);
    v63 = (v70 + 8);
    v64 = (v58 + 56);
    v61 = v71 + v18;
    v62 = (v58 + 48);
    v73 = MEMORY[0x1E69E7CC0];
    *&v21 = 136315138;
    v53 = v21;
    v24 = v57;
    v25 = v75;
    v67 = result;
    while (v23 < result[2])
    {
      (*(v70 + 16))(v25, result + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v23++, v74);
      sub_1D2872C38();
      v26 = *(v71 + 16) + 1;
      v27 = v61;
      do
      {
        if (!--v26)
        {
          (*v65)(v9, v5);
          v42 = 1;
          v25 = v75;
          goto LABEL_17;
        }

        sub_1D278F2D8(&qword_1EC6E19F8, MEMORY[0x1E69DFDA0]);
        v27 += v17;
      }

      while ((sub_1D2877F98() & 1) == 0);
      (*v65)(v9, v5);
      sub_1D2872C58();
      sub_1D2872C48();
      v28 = sub_1D28782F8();
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v72 = MEMORY[0x1D38A0BC0](v28, v30, v32, v34);
      v36 = v35;

      v37 = v60;
      sub_1D2872558();
      sub_1D2870F68();
      v38 = sub_1D2873CA8();
      v39 = sub_1D2878A38();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v76 = v41;
        *v40 = v53;
        *(v40 + 4) = sub_1D23D7C84(v72, v36, &v76);
        _os_log_impl(&dword_1D226E000, v38, v39, "Found generic person '%s'.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1D38A3520](v41, -1, -1);
        MEMORY[0x1D38A3520](v40, -1, -1);

        (*v54)(v60, v55);
      }

      else
      {

        (*v54)(v37, v55);
      }

      v22 = v59;
      v43 = *(v59 + 20);
      v44 = sub_1D2871818();
      v24 = v57;
      (*(*(v44 - 8) + 56))(&v57[v43], 1, 2, v44);
      v25 = v75;
      v45 = sub_1D2872C48();
      v47 = v46;
      v42 = 0;
      *v24 = v72;
      v24[1] = v36;
      v48 = (v24 + *(v22 + 24));
      *v48 = v45;
      v48[1] = v47;
LABEL_17:
      (*v64)(v24, v42, 1, v22);
      (*v63)(v25, v74);
      if ((*v62)(v24, 1, v22) == 1)
      {
        sub_1D22BD238(v24, &qword_1EC6E19E8);
      }

      else
      {
        v49 = v56;
        sub_1D278EFB0(v24, v56, type metadata accessor for IdentifiedEntity);
        sub_1D278EFB0(v49, v69, type metadata accessor for IdentifiedEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1D27CC8B4(0, v73[2] + 1, 1, v73);
        }

        v51 = v73[2];
        v50 = v73[3];
        if (v51 >= v50 >> 1)
        {
          v73 = sub_1D27CC8B4(v50 > 1, v51 + 1, 1, v73);
        }

        v52 = v73;
        v73[2] = v51 + 1;
        sub_1D278EFB0(v69, v52 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v51, type metadata accessor for IdentifiedEntity);
        v25 = v75;
      }

      result = v67;
      if (v23 == v68)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
LABEL_24:

    return v73;
  }

  return result;
}

uint64_t type metadata accessor for AnalyzerAmbiguity()
{
  result = qword_1ED8A31E0;
  if (!qword_1ED8A31E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D278DCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyzerAmbiguity();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D278DD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D278DD98(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1D278DEAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1D2879368();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1D2879368();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1D278DFE4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1D2879368();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_1D2879368();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_1D278BE74(result);
    return sub_1D278DEAC(v8, v7, 1, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1D278E0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v25 - v7);
  v9 = type metadata accessor for IdentifiedEntity(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v25 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1D2873788() - 8);
  v26 = v10;
  v16 = (v10 + 48);
  v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v15 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v27 = v9;
  v25 = v18;
  do
  {
    sub_1D278A278(v17, a2, a3, v8);
    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_1D22BD238(v8, &qword_1EC6E19E8);
    }

    else
    {
      v20 = a2;
      v21 = v28;
      sub_1D278EFB0(v8, v28, type metadata accessor for IdentifiedEntity);
      sub_1D278EFB0(v21, v29, type metadata accessor for IdentifiedEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D27CC8B4(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_1D27CC8B4(v22 > 1, v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_1D278EFB0(v29, v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for IdentifiedEntity);
      a2 = v20;
      v9 = v27;
      v18 = v25;
    }

    v17 += v18;
    --v14;
  }

  while (v14);
  return v19;
}

uint64_t sub_1D278E3D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  v90 = v3;
  v91 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = (&v87 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  v21 = sub_1D2872E28();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_1D2872DC8();
  v26 = v25;
  (*(v22 + 16))(v24, a2, v21);
  v27 = (*(v22 + 88))(v24, v21);
  if (v27 == *MEMORY[0x1E69DFEC8])
  {

    (*(v22 + 96))(v24, v21);
    v29 = *v24;
    v28 = v24[1];
    sub_1D2872558();
    sub_1D2870F68();
    v30 = sub_1D2873CA8();
    v31 = sub_1D2878A38();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v92 = v33;
      *v32 = 136315138;
      v34 = sub_1D23D7C84(v29, v28, &v92);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_1D226E000, v30, v31, "Evaluating prompt '%s'.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1D38A3520](v33, -1, -1);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    else
    {
    }

    (*(v91 + 8))(v20, v90);
    return 1;
  }

  else if (v27 == *MEMORY[0x1E69DFED0])
  {
    (*(v22 + 96))(v24, v21);
    v35 = *v24;
    v36 = v89;
    v88 = sub_1D278E0CC(*v24, v89, v26);
    sub_1D2872558();
    sub_1D2870F68();
    sub_1D2870F68();
    v37 = v26;
    v38 = sub_1D2873CA8();
    v39 = sub_1D2878A38();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v92 = v41;
      *v40 = 136315394;
      v42 = sub_1D2873788();
      v43 = MEMORY[0x1D38A0EB0](v35, v42);
      v45 = v44;

      v46 = sub_1D23D7C84(v43, v45, &v92);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v47 = sub_1D23D7C84(v36, v37, &v92);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_1D226E000, v38, v39, "Found concepts %s in prompt '%s'.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v41, -1, -1);
      MEMORY[0x1D38A3520](v40, -1, -1);
    }

    else
    {
    }

    (*(v91 + 8))(v17, v90);
    return 6;
  }

  else if (v27 == *MEMORY[0x1E69DFED8])
  {
    (*(v22 + 96))(v24, v21);
    v49 = *v24;
    sub_1D2872558();
    sub_1D2870F68();
    sub_1D2870F68();
    v50 = v26;
    v51 = sub_1D2873CA8();
    v52 = sub_1D2878A38();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v92 = v54;
      *v53 = 136315394;
      v55 = sub_1D28737C8();
      v56 = MEMORY[0x1D38A0EB0](v49, v55);
      v58 = v57;

      v59 = sub_1D23D7C84(v56, v58, &v92);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2080;
      v60 = sub_1D23D7C84(v89, v50, &v92);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1D226E000, v51, v52, "Ambiguities %s in prompt '%s'.", v53, 0x16u);
      v48 = 2;
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      (*(v91 + 8))(v11, v90);
    }

    else
    {

      (*(v91 + 8))(v11, v90);
      return 2;
    }
  }

  else if (v27 == *MEMORY[0x1E69DFEF0])
  {
    (*(v22 + 96))(v24, v21);
    v62 = *v24;
    v63 = v88;
    sub_1D2872558();
    sub_1D2870F68();
    v64 = v62;
    v65 = v26;
    v66 = sub_1D2873CA8();
    v67 = sub_1D2878A38();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v92 = v70;
      *v68 = 136315394;
      v71 = sub_1D23D7C84(v89, v65, &v92);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2112;
      v72 = v62;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v73;
      *v69 = v73;
      _os_log_impl(&dword_1D226E000, v66, v67, "Rejected '%s' with error %@.", v68, 0x16u);
      sub_1D22BD238(v69, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v69, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x1D38A3520](v70, -1, -1);
      MEMORY[0x1D38A3520](v68, -1, -1);
    }

    else
    {
    }

    (*(v91 + 8))(v63, v90);

    return 3;
  }

  else if (v27 == *MEMORY[0x1E69DFEE8])
  {

    (*(v22 + 96))(v24, v21);
    v75 = *v24;
    v74 = v24[1];
    sub_1D2872558();
    sub_1D2870F68();
    v76 = sub_1D2873CA8();
    v77 = sub_1D2878A38();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v92 = v79;
      *v78 = 136315138;
      v80 = sub_1D23D7C84(v75, v74, &v92);

      *(v78 + 4) = v80;
      _os_log_impl(&dword_1D226E000, v76, v77, "Accepted prompt '%s'.", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1D38A3520](v79, -1, -1);
      MEMORY[0x1D38A3520](v78, -1, -1);
    }

    else
    {
    }

    (*(v91 + 8))(v14, v90);
    return 4;
  }

  else
  {
    if (v27 == *MEMORY[0x1E69DFEE0])
    {
    }

    else
    {
      sub_1D2872558();
      sub_1D2870F68();
      v81 = v26;
      v82 = sub_1D2873CA8();
      v83 = sub_1D2878A38();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v92 = v85;
        *v84 = 136315138;
        v86 = sub_1D23D7C84(v89, v81, &v92);

        *(v84 + 4) = v86;
        _os_log_impl(&dword_1D226E000, v82, v83, "UNKNOWN prompt assignment event for prompt '%s'.", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x1D38A3520](v85, -1, -1);
        MEMORY[0x1D38A3520](v84, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v6, v90);
      (*(v22 + 8))(v24, v21);
    }

    return 6;
  }

  return v48;
}

uint64_t sub_1D278EF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D278EFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_1D278F034(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1D278F12C()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_1D278F200(319, &qword_1ED89CF40, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D278F200(319, &qword_1ED8A6B98, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D278F200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D2873788();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D278F270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D278F2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VisualSummary.visualTopLine.getter()
{
  v1 = *(v0 + 8);
  sub_1D2870F68();
  return v1;
}

uint64_t VisualSummary.init(visualConcepts:visualTopLine:isSafe:peopleHandles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1D278F380(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1D278F3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D278F458(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  return sub_1D23379D8(v2, v3);
}

uint64_t sub_1D278F4D8(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D2879618(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0A25ConditioningRepresentable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D278F598()
{
  sub_1D2613D28(319, &qword_1ED89E060);
  if (v0 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040);
    if (v1 <= 0x3F)
    {
      sub_1D2790084();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ImageGeneration.PreviewImage(319);
        if (v3 <= 0x3F)
        {
          sub_1D2872008();
          if (v4 <= 0x3F)
          {
            sub_1D2878F18();
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

uint64_t sub_1D278F6A4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D2871DD8() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1D2872008() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 > v15)
  {
    v15 = v18;
  }

  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  v22 = *(v16 + 80);
  if (v17)
  {
    v23 = *(v16 + 64);
  }

  else
  {
    v23 = *(v16 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(v6 + 80) & 0xF8;
  v25 = v24 | 7;
  v26 = *(v9 + 80) & 0xF8 | 7;
  v27 = v7 + v26 + 1;
  v28 = v19 + 7;
  v29 = ((((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = v20 + 8;
  v31 = v21 + v22;
  v32 = a2 >= v15;
  v33 = a2 - v15;
  if (v33 == 0 || !v32)
  {
LABEL_41:
    v41 = (v27 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v25 + 25) & ~v25)) & ~v26;
    if (v11 == v15)
    {
      if (v10 < 0x7FFFFFFF)
      {
        v46 = *(((((v28 + v41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v46 >= 0xFFFFFFFF)
        {
          LODWORD(v46) = -1;
        }

        return (v46 + 1);
      }

      else
      {
        v42 = *(v9 + 48);

        return v42(v41, v10, v8);
      }
    }

    v44 = (v30 + v41 + v29) & ~v20;
    if (v14 == v15)
    {
      v45 = *(v13 + 48);

      return v45(v44);
    }

    if (v17 >= 2)
    {
      v47 = (*(*(*(a3 + 16) - 8) + 48))((v31 + v44) & ~v22, v17);
      if (v47 >= 2)
      {
        return v47 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = v23 + ((v31 + ((v30 + ((v27 + ((v24 + 32) & ~v25)) & ~v26) + v29) & ~v20)) & ~v22);
  v35 = 8 * v34;
  if (v34 > 3)
  {
    goto LABEL_21;
  }

  v37 = ((v33 + ~(-1 << v35)) >> v35) + 1;
  if (HIWORD(v37))
  {
    v36 = *(a1 + v34);
    if (!v36)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (v37 <= 0xFF)
    {
      if (v37 < 2)
      {
        goto LABEL_41;
      }

LABEL_21:
      v36 = *(a1 + v34);
      if (!*(a1 + v34))
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    v36 = *(a1 + v34);
    if (!*(a1 + v34))
    {
      goto LABEL_41;
    }
  }

LABEL_28:
  v38 = (v36 - 1) << v35;
  if (v34 > 3)
  {
    v38 = 0;
  }

  if (v34)
  {
    if (v34 <= 3)
    {
      v39 = v34;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v40 = *a1;
      }
    }

    else if (v39 == 1)
    {
      v40 = *a1;
    }

    else
    {
      v40 = *a1;
    }
  }

  else
  {
    v40 = 0;
  }

  return v15 + (v40 | v38) + 1;
}

void sub_1D278FB00(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(sub_1D2871DD8() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v55 = sub_1D2871818();
  v9 = *(v55 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_1D2872008();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(*(a4 + 16) - 8);
  v18 = *(v17 + 84);
  v19 = *(v7 + 80);
  v20 = *(v9 + 64);
  v21 = *(v14 + 80);
  v22 = *(*(v12 - 8) + 64);
  v23 = *(v17 + 80);
  if (v18)
  {
    v24 = v18 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > v16)
  {
    v16 = v24;
  }

  v25 = v19 & 0xF8 | 7;
  v26 = ((v19 & 0xF8) + 32) & ~v25;
  v27 = *(v9 + 80) & 0xF8 | 7;
  v28 = v8 + v27 + 1;
  v29 = (v28 + v26) & ~v27;
  v30 = v20 + 7;
  v31 = ((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v32 = (v21 + 8 + v29 + v31) & ~v21;
  v33 = v22 + v23;
  v34 = (v22 + v23 + v32) & ~v23;
  if (v18)
  {
    v35 = *(v17 + 64);
  }

  else
  {
    v35 = *(v17 + 64) + 1;
  }

  v36 = v34 + v35;
  if (a3 <= v16)
  {
    goto LABEL_29;
  }

  if (v36 <= 3)
  {
    v37 = ((a3 - v16 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
    if (HIWORD(v37))
    {
      v13 = 4;
      if (v16 >= a2)
      {
        goto LABEL_39;
      }

LABEL_30:
      v39 = ~v16 + a2;
      if (v36 >= 4)
      {
        bzero(a1, v36);
        *a1 = v39;
        v40 = 1;
        if (v13 > 1)
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }

      v40 = (v39 >> (8 * v36)) + 1;
      if (v36)
      {
        v41 = v39 & ~(-1 << (8 * v36));
        bzero(a1, v36);
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            *a1 = v41;
            if (v13 > 1)
            {
LABEL_74:
              if (v13 == 2)
              {
                *(a1 + v36) = v40;
              }

              else
              {
                *(a1 + v36) = v40;
              }

              return;
            }
          }

          else
          {
            *a1 = v39;
            if (v13 > 1)
            {
              goto LABEL_74;
            }
          }

LABEL_71:
          if (v13)
          {
            *(a1 + v36) = v40;
          }

          return;
        }

        *a1 = v41;
        *(a1 + 2) = BYTE2(v41);
      }

      if (v13 > 1)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    if (v37 >= 2)
    {
      v13 = v38;
    }

    else
    {
      v13 = 0;
    }

LABEL_29:
    if (v16 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v13 = 1;
  if (v16 < a2)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v36) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v36) = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v13)
  {
    goto LABEL_45;
  }

  *(a1 + v36) = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  v42 = (v28 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v25 + 25) & ~v25)) & ~v27;
  if (v11 == v16)
  {
    if (v10 < 0x7FFFFFFF)
    {
      v49 = (((v30 + v42) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        *(v49 + 8) = 0u;
        *(v49 + 24) = 0u;
        *v49 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v49 + 24) = (a2 - 1);
      }

      return;
    }

    v43 = *(v9 + 56);
    v44 = v42;
    v45 = a2;
    v46 = v10;
    v47 = v55;
    goto LABEL_51;
  }

  v48 = (v21 + 8 + v42 + v31) & ~v21;
  if (v15 == v16)
  {
    v43 = *(v14 + 56);
    v47 = v12;
    v44 = v48;
    v45 = a2;
    v46 = v15;
LABEL_51:

    v43(v44, v45, v46, v47);
    return;
  }

  v50 = ((v33 + v48) & ~v23);
  if (v24 >= a2)
  {
    if (v18 >= 2)
    {
      v54 = *(v17 + 56);

      v54((v33 + v48) & ~v23, (a2 + 1));
    }
  }

  else
  {
    if (v35 <= 3)
    {
      v51 = ~(-1 << (8 * v35));
    }

    else
    {
      v51 = -1;
    }

    if (v35)
    {
      v52 = v51 & (~v24 + a2);
      if (v35 <= 3)
      {
        v53 = v35;
      }

      else
      {
        v53 = 4;
      }

      bzero(v50, v35);
      if (v53 > 2)
      {
        if (v53 == 3)
        {
          *v50 = v52;
          v50[2] = BYTE2(v52);
        }

        else
        {
          *v50 = v52;
        }
      }

      else if (v53 == 1)
      {
        *v50 = v52;
      }

      else
      {
        *v50 = v52;
      }
    }
  }
}

void sub_1D2790084()
{
  if (!qword_1EC6DCC00)
  {
    sub_1D2871DD8();
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DCC00);
    }
  }
}

void sub_1D2790120()
{
  v1 = sub_1D2871DD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875628();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v10 = *(v0 + 16);
    if (v10 == 5)
    {
      return;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    v16 = v0;
    v12 = v4;
    v13 = v1;
    v14 = v2;
    v15 = v11;
    sub_1D2873BE8();

    v2 = v14;
    v1 = v13;
    v4 = v12;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v9, 0);
    (*(v6 + 8))(v8, v5);
    v10 = v17;
    if (v17 == 5)
    {
      return;
    }
  }

  if (v10 != 6)
  {
    sub_1D24CC6FC(v4);
    sub_1D2871DA8();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D2790388()
{
  v0 = sub_1D2872008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871EC8();
  sub_1D2791C58(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v4 = sub_1D2877F98();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    sub_1D2871FC8();
    v7 = sub_1D2877F98();
    v5(v3, v0);
    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D27904FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A50);
  v4 = *(a1 + 16);
  sub_1D2878F18();
  swift_getTupleTypeMetadata2();
  sub_1D2877A58();
  swift_getWitnessTable();
  v5 = sub_1D28774C8();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1D2874F68();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = *(a1 + 24);
  v22 = v4;
  v23 = v14;
  v24 = v2;
  sub_1D2877848();
  sub_1D28774B8();
  sub_1D2790120();
  sub_1D2877848();
  WitnessTable = swift_getWitnessTable();
  sub_1D2876E28();
  (*(v19 + 8))(v7, v5);
  v25 = WitnessTable;
  v26 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1D245980C(v10);
  v16 = *(v20 + 8);
  v16(v10, v8);
  sub_1D245980C(v13);
  return (v16)(v13, v8);
}

uint64_t sub_1D2790818@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a1;
  v131 = a4;
  v6 = sub_1D2878F18();
  v132 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v100 - v9;
  v10 = sub_1D2872008();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D28771B8();
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2875628();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D28771C8();
  v107 = *(v16 - 8);
  v108 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A58);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v100 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A60);
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A68);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v133 = &v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A70);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v100 - v28;
  v29 = type metadata accessor for PlaygroundImage();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A50);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v100 - v35;
  v37 = a2;
  v128 = a3;
  v134 = type metadata accessor for PreviewsContentView();
  v38 = v125;
  v39 = v125 + *(v134 + 44);
  v40 = *(v39 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v40 + 16))
  {
    v101 = v25;
    v102 = v24;
    v103 = v36;
    v104 = v37;
    sub_1D239A330(v40 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v32);
    v100 = v32;
    sub_1D262D4E8();
    sub_1D2877188();
    v41 = *(v38 + 16);
    v42 = v38;
    v43 = *(v38 + 24);
    v105 = v6;
    if (v43 == 1)
    {
      v44 = v41;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v46 = sub_1D28762E8();
      sub_1D2873BE8();

      v47 = v112;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v41, 0);
      (*(v113 + 8))(v47, v114);
      v44 = LOBYTE(v140[0]);
    }

    v48 = MEMORY[0x1E6981650];
    if (v44 == 6)
    {
      v48 = MEMORY[0x1E6981648];
    }

    if (v44 == 5)
    {
      v49 = MEMORY[0x1E6981648];
    }

    else
    {
      v49 = v48;
    }

    v51 = v106;
    v50 = v107;
    v52 = v108;
    (*(v107 + 104))(v106, *v49, v108);
    sub_1D28771D8();

    (*(v50 + 8))(v51, v52);
    v54 = v109;
    v53 = v110;
    v55 = v111;
    (*(v110 + 104))(v109, *MEMORY[0x1E6981630], v111);
    v56 = sub_1D2877228();

    (*(v53 + 8))(v54, v55);
    sub_1D2790120();
    v57 = *(v38 + 16);
    if (*(v38 + 24) == 1)
    {
      v58 = *(v38 + 16);
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v59 = sub_1D28762E8();
      sub_1D2873BE8();

      v60 = v112;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v57, 0);
      (*(v113 + 8))(v60, v114);
      v58 = LOBYTE(v140[0]);
    }

    v36 = v103;
    v61 = v118;
    if (v58 == 5 || v58 == 6)
    {
      sub_1D2790120();
    }

    sub_1D2877848();
    sub_1D28748C8();
    LOBYTE(v135) = 1;
    *&v142[11] = *&v142[35];
    *&v142[19] = v143;
    *&v142[3] = *&v142[27];
    v138 = v56;
    *v139 = 257;
    *&v139[2] = *v142;
    *&v139[18] = *&v142[8];
    *&v139[34] = *&v142[16];
    *&v139[48] = *(&v143 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FC0);
    sub_1D22F57F0();
    sub_1D2876CC8();
    v140[2] = *&v139[16];
    v140[3] = *&v139[32];
    v141 = *&v139[48];
    v140[0] = v138;
    v140[1] = *v139;
    sub_1D22BD238(v140, &qword_1EC6D9FC0);
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v62 = qword_1ED8B0058;
    v99 = 256;
    v98 = 0;
    v63 = sub_1D2876668();
    v65 = v64;
    v67 = v66;
    v68 = v117;
    sub_1D2874F08();
    sub_1D22ED6E0(v63, v65, v67 & 1);

    sub_1D22BD238(v61, &qword_1EC6E1A58);
    v69 = v119;
    sub_1D22EC9BC(v68, v119, &qword_1EC6E1A58);
    *(v69 + *(v116 + 36)) = 1;
    v70 = v134;
    v71 = sub_1D2790388();
    MEMORY[0x1EEE9AC00](v71);
    v45 = v128;
    *(&v100 - 4) = v104;
    *(&v100 - 3) = v45;
    v98 = v42;
    sub_1D27915F4(v72 & 1, sub_1D279184C);
    sub_1D22BD238(v69, &qword_1EC6E1A60);
    v73 = *(v70 + 52);
    v74 = v122;
    sub_1D2871FC8();
    v75 = MEMORY[0x1D389AA00](v42 + v73, v74);
    v76 = v124;
    v77 = *(v123 + 8);
    v77(v74, v124);
    if (v75)
    {
      v78 = 1.69999999;
    }

    else
    {
      sub_1D2871EC8();
      v79 = MEMORY[0x1D389AA00](v42 + v73, v74);
      v77(v74, v76);
      if (v79)
      {
        v78 = 1.0;
      }

      else
      {
        v78 = 1.03;
      }
    }

    v6 = v105;
    v80 = v102;
    v81 = v100;
    sub_1D2877AE8();
    v83 = v82;
    v85 = v84;
    sub_1D23D4DFC(v81);
    v86 = v121;
    sub_1D22EC9BC(v133, v121, &qword_1EC6E1A68);
    v87 = v86 + *(v80 + 36);
    *v87 = v78;
    *(v87 + 8) = v78;
    *(v87 + 16) = v83;
    *(v87 + 24) = v85;
    v88 = v86;
    v89 = v120;
    sub_1D22EC9BC(v88, v120, &qword_1EC6E1A70);
    sub_1D22EC9BC(v89, v36, &qword_1EC6E1A70);
    (*(v101 + 56))(v36, 0, 1, v80);
  }

  else
  {
    (*(v25 + 56))(v36, 1, 1, v24);
    v45 = v128;
    v42 = v38;
  }

  v90 = *(v134 + 56);
  v137 = v45;
  WitnessTable = swift_getWitnessTable();
  v92 = v129;
  sub_1D245980C(v42 + v90);
  v93 = v127;
  sub_1D22BD1D0(v36, v127, &qword_1EC6E1A50);
  *&v140[0] = v93;
  v94 = v132;
  v95 = v130;
  (*(v132 + 16))(v130, v92, v6);
  *(&v140[0] + 1) = v95;
  *&v138 = v126;
  *(&v138 + 1) = v6;
  v135 = sub_1D2791884();
  v136 = WitnessTable;
  sub_1D24C289C(v140, 2uLL, &v138);
  v96 = *(v94 + 8);
  v96(v92, v6);
  sub_1D22BD238(v36, &qword_1EC6E1A50);
  v96(v95, v6);
  return sub_1D22BD238(v93, &qword_1EC6E1A50);
}

uint64_t sub_1D27915F4(char a1, void (*a2)(uint64_t *__return_ptr))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1AA0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A90);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  if (a1)
  {
    v11 = sub_1D2877848();
    v13 = v12;
    a2(&v18);
    v14 = v18;
    sub_1D22BD1D0(v2, v10, &qword_1EC6E1A60);
    v15 = &v10[*(v8 + 36)];
    *v15 = v11;
    v15[1] = v13;
    v15[2] = v14;
    sub_1D22BD1D0(v10, v7, &qword_1EC6E1A90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A60);
    sub_1D2791A20();
    sub_1D2791AAC();
    sub_1D2875AF8();
    return sub_1D22BD238(v10, &qword_1EC6E1A90);
  }

  else
  {
    sub_1D22BD1D0(v2, v7, &qword_1EC6E1A60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1A60);
    sub_1D2791A20();
    sub_1D2791AAC();
    return sub_1D2875AF8();
  }
}

void sub_1D279184C(void *a1@<X8>)
{
  type metadata accessor for PreviewsContentView();
  sub_1D2790120();
  *a1 = v2;
}

unint64_t sub_1D2791884()
{
  result = qword_1EC6E1A78;
  if (!qword_1EC6E1A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A50);
    sub_1D2791908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1A78);
  }

  return result;
}

unint64_t sub_1D2791908()
{
  result = qword_1EC6E1A80;
  if (!qword_1EC6E1A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A70);
    sub_1D2791994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1A80);
  }

  return result;
}

unint64_t sub_1D2791994()
{
  result = qword_1EC6E1A88;
  if (!qword_1EC6E1A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A68);
    sub_1D2791A20();
    sub_1D2791AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1A88);
  }

  return result;
}

unint64_t sub_1D2791A20()
{
  result = qword_1ED89D7F8;
  if (!qword_1ED89D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A90);
    sub_1D2791AAC();
    sub_1D2791BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7F8);
  }

  return result;
}

unint64_t sub_1D2791AAC()
{
  result = qword_1ED89D848;
  if (!qword_1ED89D848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A60);
    sub_1D2791B38();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D848);
  }

  return result;
}

unint64_t sub_1D2791B38()
{
  result = qword_1ED89D8C8;
  if (!qword_1ED89D8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A58);
    sub_1D22F57F0();
    sub_1D2791C58(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8C8);
  }

  return result;
}

unint64_t sub_1D2791BF4()
{
  result = qword_1ED89D4D0;
  if (!qword_1ED89D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4D0);
  }

  return result;
}

uint64_t sub_1D2791C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GPInProcessImagePickerViewController.style.getter()
{
  v1 = OBJC_IVAR___GPInProcessImagePickerViewController_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPInProcessImagePickerViewController.selectedAssets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPInProcessImagePickerViewController_selectedAssets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1D2791FAC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 selectedAssets];
  sub_1D2878C28();
  v4 = sub_1D28783E8();

  *a2 = v4;
}

void sub_1D2792010(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1D2878C28();
  v3 = sub_1D28783C8();
  [v2 setSelectedAssets_];
}

uint64_t GPInProcessImagePickerViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *GPInProcessImagePickerViewController.appleConnectTokenProvider.getter()
{
  v1 = OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GPInProcessImagePickerViewController.appleConnectTokenProvider.setter(void *a1)
{
  v3 = OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (*(v1 + v3))
  {
    sub_1D2792380();
  }
}

void sub_1D2792380()
{
  v1 = OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController;
  if (!*&v0[OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController])
  {
    v2 = [v0 appleConnectTokenProvider];
    if (v2)
    {
      v3 = v2;
      sub_1D2709CB4([v0 style], &v10);
      v4 = v10;
      v5 = [v0 undoManager];
      if (!v5)
      {
        v5 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
      }

      v6 = OBJC_IVAR___GPInProcessImagePickerViewController_servicesFetcher;
      swift_beginAccess();
      if (*&v0[v6])
      {
        v7 = *&v0[v6];
      }

      else
      {
        type metadata accessor for ServicesFetcher();
        v7 = swift_allocObject();
        *(v7 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
      }

      sub_1D2870F78();
      v8 = sub_1D2793EA0(v4, v0, v0, v0, v5, v7);

      [v0 gp:v8 addChildViewController:?];
      v9 = *&v0[v1];
      *&v0[v1] = v8;
    }
  }
}

uint64_t GPInProcessImagePickerViewController.isLoadingRecipe.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v1)
  {
    return *(v1 + qword_1EC6E0108);
  }

  else
  {
    return 0;
  }
}

void GPInProcessImagePickerViewController.isLoadingRecipe.setter(char a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v7)
  {
    v7[qword_1EC6E0108] = a1 & 1;
    v13 = v7;
    sub_1D26D8C14();
    v8 = v13;
  }

  else
  {
    sub_1D28725E8();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "imagePickerViewController can't be nil when loading recipe", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void *GPInProcessImagePickerViewController.recipe.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + qword_1EC6E0110);
  v3 = v2;
  return v2;
}

void GPInProcessImagePickerViewController.recipe.setter(void *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v7)
  {
    v8 = *&v7[qword_1EC6E0110];
    *&v7[qword_1EC6E0110] = a1;
    v9 = v7;
    v15 = a1;

    sub_1D26D8E74();
    v10 = v15;
  }

  else
  {
    sub_1D28725E8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "imagePickerViewController can't be nil when setting recipe", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id GPInProcessImagePickerViewController.init(style:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithStyle_];
}

{
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_selectedAssets] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider] = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_servicesFetcher] = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController] = 0;
  v3 = &v1[OBJC_IVAR___GPInProcessImagePickerViewController_localizedCreateButtonTitle];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_style] = a1;
  v5.receiver = v1;
  v5.super_class = GPInProcessImagePickerViewController;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id GPInProcessImagePickerViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_selectedAssets] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider] = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_servicesFetcher] = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController] = 0;
  v3 = &v1[OBJC_IVAR___GPInProcessImagePickerViewController_localizedCreateButtonTitle];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___GPInProcessImagePickerViewController_style] = 1;
  v6.receiver = v1;
  v6.super_class = GPInProcessImagePickerViewController;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

Swift::Void __swiftcall GPInProcessImagePickerViewController.closeComposingViewIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v1 && *&v1[qword_1EC6E0100])
  {
    v2 = v1;
    sub_1D2870F78();
    sub_1D2568E18(0);
  }
}

uint64_t sub_1D2792DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = sub_1D28780A8();
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1D27946A8(v7, v9, a5);
  swift_unknownObjectRelease();
}

uint64_t GPInProcessImagePickerViewController.servicesFetcher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPInProcessImagePickerViewController_servicesFetcher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1D2792FD0(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725E8();
  v7 = v1;
  v8 = sub_1D2873CA8();
  v9 = sub_1D28789F8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19[1] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v19[2] = [v7 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1B48);
    v13 = sub_1D2878118();
    v15 = sub_1D23D7C84(v13, v14, &v20);
    v19[0] = v3;
    v16 = v15;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D226E000, v8, v9, "Delegate is %s, calling imagePickerViewControllerDidSelectAssets", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D38A3520](v12, -1, -1);
    MEMORY[0x1D38A3520](v11, -1, -1);

    (*(v4 + 8))(v6, v19[0]);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_1D2878C28();
  v17 = sub_1D28783C8();
  [v7 setSelectedAssets_];

  result = [v7 delegate];
  if (result)
  {
    [result imagePickerViewControllerDidSelectAssets_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D2793244()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725E8();
  v5 = v0;
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v15 = [v5 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1B48);
    v10 = sub_1D2878118();
    v12 = sub_1D23D7C84(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v6, v7, "Delegate is %s, calling imagePickerWillSelectNewlyCreatedAsset", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  result = [v5 delegate];
  if (result)
  {
    v14 = result;
    if ([result respondsToSelector_])
    {
      [v14 imagePickerWillSelectNewlyCreatedAsset_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id GPInProcessImagePickerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D2878068();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t GPInProcessImagePickerViewController.composingViewModel(_:didSave:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  v8 = v2;
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a2;
  sub_1D22AE01C(0, 0, v6, &unk_1D28A5480, v10);
}

uint64_t sub_1D2793820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27938B8, v7, v6);
}

uint64_t sub_1D27938B8()
{
  v1 = v0[2];

  sub_1D2793244();
  v2 = *(v1 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v2 && *&v2[qword_1EC6E0100])
  {
    v3 = v0[3];
    v4 = v2;
    sub_1D2870F78();
    PlaygroundHomeViewModel.photoGridViewModel.getter();

    sub_1D257A8B4(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D279398C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D28785F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D2878568();
  v8 = v2;
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a2;
  sub_1D22AE01C(0, 0, v6, &unk_1D28A54F0, v10);
}

uint64_t sub_1D2793B4C(char a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      v11 = [v10 imagePickerViewControllerWantsToStartCreation:v2 isTransitionSupported:a1 & 1];
    }

    else
    {
      v11 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 1;
  }

  sub_1D28725E8();
  v12 = sub_1D2873CA8();
  v13 = sub_1D28789F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_1D226E000, v12, v13, "pickerCanStartCreation %{BOOL}d", v14, 8u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

id sub_1D2793D08(const char *a1, SEL *a2)
{
  v5 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725E8();
  v10 = sub_1D2873CA8();
  v11 = sub_1D28789F8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D226E000, v10, v11, a1, v12, 2u);
    MEMORY[0x1D38A3520](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  result = [v5 delegate];
  if (result)
  {
    v14 = result;
    if ([result respondsToSelector_])
    {
      [v14 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D2793EA0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v51 = a3;
  v52 = a4;
  v55 = a2;
  v56 = sub_1D2871E48();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PickerEditorView();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  type metadata accessor for SessionUndoManager();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  type metadata accessor for PlaygroundHomeViewModel();
  v18 = swift_allocObject();
  type metadata accessor for NavigationManager();
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = a5;
  sub_1D2871A18();
  *(v18 + 48) = v19;
  type metadata accessor for HomeAnimationCoordinator();
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v23 = sub_1D2871818();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v24 = (v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v25 = 0xD000000000000025;
  v25[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  *(v18 + 56) = v21;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 96) = 0;
  *(v18 + 112) = 1;
  *(v18 + 120) = 0;
  sub_1D2871A18();
  *(v18 + 40) = a6;
  *(v18 + 104) = v17;
  v26 = _s7ManagerCMa();
  swift_allocObject();
  swift_retain_n();
  sub_1D2870F78();
  v27 = sub_1D239E2B0(a6, 1);
  v58[3] = v26;
  v58[4] = &off_1F4DC2000;
  v58[0] = v27;
  type metadata accessor for ComposingViewModel(0);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v58, v26);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = (&v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  sub_1D2870F78();
  sub_1D2870F78();
  v35 = sub_1D256D120(a6, v34, v17, a1, 0, 0, 0, 0, v28);

  __swift_destroy_boxed_opaque_existential_0(v58);
  *(v18 + 16) = v35;
  swift_getKeyPath();
  v58[0] = v35;
  sub_1D2794A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v28) = *(v35 + 40);

  *(v18 + 73) = v28;
  v36 = *(v18 + 16);
  swift_getKeyPath();
  v58[0] = v36;
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v28) = *(v36 + 40);

  *(v18 + 74) = v28;
  *(v18 + 100) = 2;
  *(v18 + 113) = 1;
  if ((a1 - 1) <= 2u)
  {
    sub_1D2342864(1u);
  }

  *(*(v18 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = &off_1F4DCAAC0;
  swift_unknownObjectWeakAssign();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v38 = v51;
  *(&v50 - 4) = v18;
  *(&v50 - 3) = v38;
  v58[0] = v18;
  sub_1D2794A80(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  v39 = PlaygroundHomeViewModel.photoGridViewModel.getter();
  v40 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v40);
  v41 = v52;
  *(&v50 - 4) = v39;
  *(&v50 - 3) = v41;
  v49 = &protocol witness table for GPInProcessImagePickerViewController;
  v58[0] = v39;
  sub_1D2794A80(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel);
  sub_1D28719D8();

  v42 = *(v18 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v42 + 8) = &protocol witness table for GPInProcessImagePickerViewController;
  swift_unknownObjectWeakAssign();
  v43 = v53;
  (*(v54 + 104))(v53, *MEMORY[0x1E696E2D0], v56);
  v44 = sub_1D2870F78();
  PickerEditorView.init(viewModel:sceneIdentifier:)(v44, v43, v16);
  v45 = v50;
  sub_1D23C6A20(v16, v50);
  v46 = objc_allocWithZone(type metadata accessor for PickerViewController());
  *&v46[qword_1EC6E0100] = 0;
  v46[qword_1EC6E0108] = 0;
  *&v46[qword_1EC6E0110] = 0;
  sub_1D23C6A20(v45, v57);
  v47 = sub_1D28759F8();
  sub_1D26D934C(v45);
  sub_1D26D934C(v16);
  *(v47 + qword_1EC6E0100) = v18;

  return v47;
}

uint64_t sub_1D27946A8(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v4 && *&v4[qword_1EC6E0100])
  {
    v7 = result;
    v8 = v4;
    sub_1D2870F78();
    PlaygroundHomeViewModel.photoGridViewModel.getter();

    a3(v7, a2);
  }

  return result;
}

uint64_t sub_1D2794764(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v2 && *&v2[qword_1EC6E0100])
  {
    v3 = result;
    v4 = v2;
    sub_1D2870F78();
    PlaygroundHomeViewModel.photoGridViewModel.getter();

    sub_1D257BB30(v3);
  }

  return result;
}

uint64_t sub_1D2794804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2793820(a1, v4, v5, v7, v6);
}

unint64_t type metadata accessor for GPInProcessImagePickerViewController()
{
  result = qword_1EC6E1B40;
  if (!qword_1EC6E1B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E1B40);
  }

  return result;
}

uint64_t objectdestroyTm_34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D27949A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D2793820(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2794A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GPInProcessImageEditionViewController.style.getter()
{
  v1 = OBJC_IVAR___GPInProcessImageEditionViewController_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPInProcessImageEditionViewController.generatedAssets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1D2794DA8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 generatedAssets];
  sub_1D2878C28();
  v4 = sub_1D28783E8();

  *a2 = v4;
}

void sub_1D2794E0C(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1D2878C28();
  v3 = sub_1D28783C8();
  [v2 setGeneratedAssets_];
}

void *GPInProcessImageEditionViewController.sourceImage.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + qword_1EC6E0778);
  v3 = v2;
  return v2;
}

uint64_t GPInProcessImageEditionViewController.isLoadingRecipe.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (v1)
  {
    return *(v1 + qword_1EC6E0768);
  }

  else
  {
    return 0;
  }
}

void GPInProcessImageEditionViewController.isLoadingRecipe.setter(char a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (v7)
  {
    v7[qword_1EC6E0768] = a1 & 1;
    v13 = v7;
    sub_1D2701EF0();
    v8 = v13;
  }

  else
  {
    sub_1D28725E8();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "imageEditionViewController can't be nil when loading recipe", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

id sub_1D27951AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (v4)
  {
    v5 = *(v4 + *a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *GPInProcessImageEditionViewController.recipe.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + qword_1EC6E0770);
  v3 = v2;
  return v2;
}

void sub_1D27952D0(void *a1, void *a2, void (*a3)(void), const char *a4)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController);
  if (v13)
  {
    v14 = *&v13[*a2];
    *&v13[*a2] = a1;
    v15 = v13;
    v21 = a1;

    a3();
    v16 = v21;
  }

  else
  {
    sub_1D28725E8();
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A28();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, a4, v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t GPInProcessImageEditionViewController.sourceImageIsSketch.getter()
{
  v1 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPInProcessImageEditionViewController.sourceImageIsSketch.setter(char a1)
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1D2872678();
}

uint64_t GPInProcessImageEditionViewController.localizedCreateButtonTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v2 = *v1;
  sub_1D2870F68();
  return v2;
}

uint64_t GPInProcessImageEditionViewController.localizedCreateButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_1D2872678();
}

void sub_1D27957A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedCreateButtonTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D28780A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D2795810(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1D2878068();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLocalizedCreateButtonTitle_];
}

uint64_t GPInProcessImageEditionViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *GPInProcessImageEditionViewController.appleConnectTokenProvider.getter()
{
  v1 = OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GPInProcessImageEditionViewController.appleConnectTokenProvider.setter(void *a1)
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (*(v1 + v3))
  {
    sub_1D2795B84();
  }
}

void sub_1D2795B84()
{
  v1 = OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController;
  if (!*&v0[OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController])
  {
    v2 = [v0 appleConnectTokenProvider];
    if (v2)
    {
      v3 = v2;
      sub_1D2709CB4([v0 style], &v10);
      v4 = v10;
      v5 = [v0 undoManager];
      if (!v5)
      {
        v5 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
      }

      v6 = OBJC_IVAR___GPInProcessImageEditionViewController_servicesFetcher;
      swift_beginAccess();
      if (*&v0[v6])
      {
        v7 = *&v0[v6];
      }

      else
      {
        type metadata accessor for ServicesFetcher();
        v7 = swift_allocObject();
        *(v7 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
      }

      sub_1D2870F78();
      v8 = sub_1D2796BE0(v4, v0, v5, v7);

      [v0 gp:v8 addChildViewController:?];
      v9 = *&v0[v1];
      *&v0[v1] = v8;
    }
  }
}

id GPInProcessImageEditionViewController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch] = 0;
  v1 = &v0[OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle];
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider] = 0;
  *&v0[OBJC_IVAR___GPInProcessImageEditionViewController_servicesFetcher] = 0;
  *&v0[OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController] = 0;
  *&v0[OBJC_IVAR___GPInProcessImageEditionViewController_style] = 1;
  v3.receiver = v0;
  v3.super_class = GPInProcessImageEditionViewController;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id GPInProcessImageEditionViewController.init(style:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithStyle_];
}

{
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch] = 0;
  v3 = &v1[OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_servicesFetcher] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_style] = a1;
  v5.receiver = v1;
  v5.super_class = GPInProcessImageEditionViewController;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id GPInProcessImageEditionViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_generatedAssets] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR___GPInProcessImageEditionViewController_sourceImageIsSketch] = 0;
  v3 = &v1[OBJC_IVAR___GPInProcessImageEditionViewController_localizedCreateButtonTitle];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_appleConnectTokenProvider] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_servicesFetcher] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_imageEditionViewController] = 0;
  *&v1[OBJC_IVAR___GPInProcessImageEditionViewController_style] = 1;
  v6.receiver = v1;
  v6.super_class = GPInProcessImageEditionViewController;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t GPInProcessImageEditionViewController.servicesFetcher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GPInProcessImageEditionViewController_servicesFetcher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id GPInProcessImageEditionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D2878068();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_1D27962F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1D27963BC;

  return sub_1D23F4380(a4);
}

uint64_t sub_1D27963BC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2796500, v3, v2);
}

uint64_t sub_1D2796500()
{
  v1 = *(v0 + 48);

  if (!v1)
  {
    v9 = [*(v0 + 16) delegate];
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      [v10 imageEditionViewControllerDidCancel:*(v0 + 16) requiresShowingGrid:0];
    }

    goto LABEL_8;
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D28809B0;
  *(v4 + 32) = v2;
  sub_1D2878C28();
  v5 = v2;
  v6 = sub_1D28783C8();

  [v3 setGeneratedAssets_];

  v7 = [v3 delegate];
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      [v8 imageEditionViewControllerDidFinishEditing:*(v0 + 16) error:0];

LABEL_8:
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

LABEL_11:
  v11 = *(v0 + 8);

  return v11();
}

id sub_1D27966C0(char a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725E8();
  v8 = sub_1D2873CA8();
  v9 = sub_1D28789F8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v8, v9, "creationViewModelDidCancel", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = [v2 delegate];
  if (result)
  {
    v12 = result;
    if ([result respondsToSelector_])
    {
      [v12 imageEditionViewControllerDidCancel:v2 requiresShowingGrid:a1 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D2796858(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725E8();
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "creationViewModelDidSaveImage", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1D2878568();
  sub_1D2870F78();
  v15 = v2;
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a1;
  v17[5] = v15;
  sub_1D22AE01C(0, 0, v6, &unk_1D28A55D0, v17);
}

unint64_t type metadata accessor for GPInProcessImageEditionViewController()
{
  result = qword_1EC6E1BF0;
  if (!qword_1EC6E1BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E1BF0);
  }

  return result;
}

uint64_t sub_1D2796B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D27962F4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2796BE0(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  type metadata accessor for SessionUndoManager();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = _s7ManagerCMa();
  swift_allocObject();
  v9 = a3;
  v10 = sub_1D2870F78();
  v44 = v8;
  v45 = &off_1F4DC2000;
  v41 = sub_1D239E2B0(v10, 1);
  type metadata accessor for ComposingViewModel(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  sub_1D2870F78();
  sub_1D2870F78();
  v18 = sub_1D256D120(a4, v17, v7, a1, 0, 0, 0, 0, v11);

  __swift_destroy_boxed_opaque_existential_0(&v41);
  type metadata accessor for PhotoGridViewModel();
  v19 = swift_allocObject();
  *(v19 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 80) = 1;
  *(v19 + 97) = 1;
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v21 = sub_1D2871818();
  v22 = *(*(v21 - 8) + 56);
  v22(v19 + v20, 1, 1, v21);
  v23 = (v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v23 = 0;
  v23[1] = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v22(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels[0]) = v24;
  *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2870F78();
  sub_1D2871A18();
  *(v19 + 16) = a4;
  *(v19 + 88) = v7;
  *(v19 + 96) = 0;
  *(v19 + 24) = a1;
  *(v19 + 72) = 0;
  swift_unknownObjectWeakAssign();
  v25 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC6D8B50;
  v27 = sub_1D2870F78();
  sub_1D2581C34(v27, v26);

  v53 = 0;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAA0);
  sub_1D28772F8();
  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  v53 = qword_1ED8A0608;
  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2870F78();
  sub_1D28772F8();
  v38 = v42;
  v39 = v41;
  KeyPath = swift_getKeyPath();
  LOBYTE(v41) = 0;
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v29 = qword_1EC6E3B98;
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();

  type metadata accessor for HomeAnimationCoordinator();
  v30 = swift_allocObject();
  v22(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID, 1, 1, v21);
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v31 = (v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v32 = 0xD000000000000025;
  v32[1] = 0x80000001D28B37F0;
  sub_1D2871A18();

  v33 = v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v33 + 8) = &protocol witness table for GPInProcessImageEditionViewController;
  swift_unknownObjectWeakAssign();

  v34 = v41;
  v41 = v18;
  v42 = 0;
  v43 = v19;
  v44 = 0;
  v45 = 0;
  v46 = v30;
  v47 = 0;
  v48 = v39;
  v49 = v38;
  v50 = KeyPath;
  v51 = v34;
  v52 = v29;
  v35 = objc_allocWithZone(type metadata accessor for EditorViewController());
  v36 = sub_1D27024D4();

  *(v36 + qword_1EC6E0758) = v18;

  return v36;
}

void sub_1D27971C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1D2878068();
    if (a3)
    {
LABEL_3:
      v7 = sub_1D28714A8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

float sub_1D2797250@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2799258(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize);
  *a2 = result;
  return result;
}

void __swiftcall GPInProcessGenerationProgressViewController.init()(GPInProcessGenerationProgressViewController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id GPInProcessGenerationProgressViewController.init()()
{
  v1 = v0;
  v2 = sub_1D2871988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2871DD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  *&v0[OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR___GPInProcessGenerationProgressViewController_progress] = 0;
  *&v0[OBJC_IVAR___GPInProcessGenerationProgressViewController_generationViewController] = 0;
  sub_1D2871DC8();
  type metadata accessor for EffectViewModel();
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
  *v14 = 0;
  *(v14 + 8) = 0x80;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = 1065353216;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0]) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871978();
  (*(v3 + 32))(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices, v5, v2);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = 0;
  v15 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
  *v15 = 0;
  v15[1] = 0;
  sub_1D2871A18();
  v16 = *(v7 + 16);
  v16(v9, v12, v6);
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = 0x3FF0000000000000;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs) = MEMORY[0x1E69E7CC0];
  sub_1D2871A18();
  *(v13 + 17) = 1;
  v16((v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio), v9, v6);
  *(v13 + 16) = 0;
  sub_1D233EE24(*v17);
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate) = 0;
  sub_1D2756CAC();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);
  *&v1[OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel] = v13;
  v20.receiver = v1;
  v20.super_class = GPInProcessGenerationProgressViewController;
  return objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
}

id GPInProcessGenerationProgressViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D2871988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871DD8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  *&v1[OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration] = 0x3FE0000000000000;
  *&v1[OBJC_IVAR___GPInProcessGenerationProgressViewController_progress] = 0;
  *&v1[OBJC_IVAR___GPInProcessGenerationProgressViewController_generationViewController] = 0;
  sub_1D2871DC8();
  type metadata accessor for EffectViewModel();
  v15 = swift_allocObject();
  v16 = v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
  *v16 = 0;
  *(v16 + 8) = 0x80;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = 1065353216;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0]) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871978();
  (*(v5 + 32))(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices, v7, v4);
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = 0;
  v17 = (v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
  *v17 = 0;
  v17[1] = 0;
  sub_1D2871A18();
  v18 = *(v9 + 16);
  v18(v11, v14, v8);
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = 0x3FF0000000000000;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs) = MEMORY[0x1E69E7CC0];
  sub_1D2871A18();
  *(v15 + 17) = 1;
  v18((v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio), v11, v8);
  *(v15 + 16) = 0;
  sub_1D233EE24(*v19);
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate) = 0;
  sub_1D2756CAC();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v20(v14, v8);
  *&v2[OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel] = v15;
  v23.receiver = v2;
  v23.super_class = GPInProcessGenerationProgressViewController;
  v21 = objc_msgSendSuper2(&v23, sel_initWithCoder_, a1);

  if (v21)
  {
  }

  return v21;
}

uint64_t GPInProcessGenerationProgressViewController.isShowingError.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = a1;
  v3 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v2, sub_1D23410CC, v3);
}

float GPInProcessGenerationProgressViewController.rampSize.getter()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  swift_getKeyPath();
  sub_1D2799258(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize);
}

uint64_t GPInProcessGenerationProgressViewController.rampSize.setter(float a1)
{
  v3 = *(v1 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D2758420(v3, sub_1D2798F74, v4);

  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) == a1)
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2799258(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  return result;
}

double GPInProcessGenerationProgressViewController.transitionToImageDuration.getter()
{
  v1 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GPInProcessGenerationProgressViewController.transitionToImageDuration.setter(double a1)
{
  v3 = OBJC_IVAR___GPInProcessGenerationProgressViewController_transitionToImageDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1D2758420(v4, sub_1D2798F9C, v5);
}

Swift::Void __swiftcall GPInProcessGenerationProgressViewController.transitionToGeneratingState()()
{
  v1 = *(v0 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) = 1;
  sub_1D277D804(0, 0x80u);
  sub_1D277D804(0x4008000000000000, 0);
  v2 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v1, sub_1D2798FA4, v2);

  sub_1D277E434(0x4008000000000000uLL, 0, 1, v1);
}

Swift::Void __swiftcall GPInProcessGenerationProgressViewController.transition(toFinalImage:)(UIImage toFinalImage)
{
  v3 = *(v1 + OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel);
  v4 = toFinalImage.super.isa;
  sub_1D277DED8(toFinalImage.super.isa);

  sub_1D277E434(4uLL, 128, 1, v3);
}

float GPInProcessGenerationProgressViewController.progress.getter()
{
  v1 = v0 + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress;
  swift_beginAccess();
  return *v1;
}

uint64_t GPInProcessGenerationProgressViewController.progress.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___GPInProcessGenerationProgressViewController_progress);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

Swift::Void __swiftcall GPInProcessGenerationProgressViewController.viewDidLoad()()
{
  v1 = v0;
  v15.super_class = GPInProcessGenerationProgressViewController;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR___GPInProcessGenerationProgressViewController_viewModel];
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C28));
  swift_retain_n();
  v4 = sub_1D28759F8();
  v5 = *&v0[OBJC_IVAR___GPInProcessGenerationProgressViewController_generationViewController];
  *&v1[OBJC_IVAR___GPInProcessGenerationProgressViewController_generationViewController] = v4;
  v6 = v4;

  [v1 setIsAnimating_];
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    [v8 setBackgroundColor_];

    v11 = [v6 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 clearColor];
      [v12 setBackgroundColor_];

      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) = 1;
      sub_1D277D804(0, 0x80u);
      sub_1D277D804(0x4008000000000000, 0);
      v14 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      sub_1D2758420(v2, sub_1D2799304, v14);

      [v1 gp:v6 addChildViewController:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall GPInProcessGenerationProgressViewController.init(nibName:bundle:)(GPInProcessGenerationProgressViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_1D2878068();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t sub_1D2798BE4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AbstractEffectViewModel();
  sub_1D2799258(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D2870F78();
  sub_1D2877638();
  v2 = type metadata accessor for EffectView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = sub_1D2877848();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C58);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D28800F0;
  sub_1D2877098();
  *(v11 + 32) = sub_1D28776B8();
  *(v11 + 40) = v12;
  sub_1D28770A8();
  *(v11 + 48) = sub_1D28776B8();
  *(v11 + 56) = v13;
  sub_1D28770A8();
  *(v11 + 64) = sub_1D28776B8();
  *(v11 + 72) = v14;
  sub_1D2877098();
  *(v11 + 80) = sub_1D28776B8();
  *(v11 + 88) = v15;
  sub_1D28776C8();
  sub_1D2874C88();
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C60) + 36);
  *v16 = v8;
  *(v16 + 8) = v10;
  *(v16 + 16) = v29;
  *(v16 + 40) = v31;
  *(v16 + 24) = v30;
  v17 = sub_1D2877848();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D28800F0;
  sub_1D2877098();
  *(v20 + 32) = sub_1D28776B8();
  *(v20 + 40) = v21;
  sub_1D28770A8();
  *(v20 + 48) = sub_1D28776B8();
  *(v20 + 56) = v22;
  sub_1D28770A8();
  *(v20 + 64) = sub_1D28776B8();
  *(v20 + 72) = v23;
  sub_1D2877098();
  *(v20 + 80) = sub_1D28776B8();
  *(v20 + 88) = v24;
  sub_1D28776C8();
  sub_1D2874C88();
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C68) + 36);
  *v25 = v17;
  *(v25 + 8) = v19;
  *(v25 + 16) = v32;
  *(v25 + 40) = v34;
  *(v25 + 24) = v33;
  v26 = sub_1D2874F98();
  LOBYTE(v17) = sub_1D2876338();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C70);
  v28 = a1 + *(result + 36);
  *v28 = v26;
  *(v28 + 8) = v17;
  return result;
}

unint64_t type metadata accessor for GPInProcessGenerationProgressViewController()
{
  result = qword_1EC6E1C38;
  if (!qword_1EC6E1C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E1C38);
  }

  return result;
}

unint64_t sub_1D2799084()
{
  result = qword_1EC6E1C78;
  if (!qword_1EC6E1C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1C70);
    sub_1D2799110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1C78);
  }

  return result;
}

unint64_t sub_1D2799110()
{
  result = qword_1EC6E1C80;
  if (!qword_1EC6E1C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1C68);
    sub_1D279919C();
    sub_1D27992A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1C80);
  }

  return result;
}

unint64_t sub_1D279919C()
{
  result = qword_1EC6E1C88;
  if (!qword_1EC6E1C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1C60);
    sub_1D2799258(qword_1ED8A5160, type metadata accessor for EffectView);
    sub_1D27992A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1C88);
  }

  return result;
}

uint64_t sub_1D2799258(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D27992A0()
{
  result = qword_1EC6E1C98;
  if (!qword_1EC6E1C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1C98);
  }

  return result;
}

uint64_t sub_1D279930C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D279C058();
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]);
  return result;
}

uint64_t static GPInProcessMagicPaperViewController.prewarmEffectAndKeepIt(inMemory:withCompletion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A5830, v11);
}

uint64_t sub_1D2799594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_1D2878568();
  v6[5] = sub_1D2878558();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_1D279965C;

  return sub_1D26F5750(a4);
}

uint64_t sub_1D279965C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2799798, v1, v0);
}

uint64_t sub_1D2799798()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2799804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D2799594(a1, v4, v5, v6, v8, v7);
}

id sub_1D2799A38(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_wandSelectionSignpostState] = 0;
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState] = 0;
  v3 = &v1[OBJC_IVAR___GPInProcessMagicPaperViewController_initialState];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController] = 0;
  v7.receiver = v1;
  v7.super_class = GPInProcessMagicPaperViewController;
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  v5 = a1;
  sub_1D2799B08(a1);

  return v4;
}

void sub_1D2799B08(void *a1)
{
  v3 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  if (!*&v1[v3])
  {
    v4 = *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_initialState + 16];
    v12[0] = *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_initialState];
    v12[1] = v4;
    v13 = v1[OBJC_IVAR___GPInProcessMagicPaperViewController_initialState + 32];
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
    }

    v6 = a1;
    v7 = sub_1D279CC44(v1, v12, v5);

    [v1 gp:v7 addChildViewController:?];
    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor_];

      v11 = *&v1[v3];
      *&v1[v3] = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

id GPInProcessMagicPaperViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_wandSelectionSignpostState] = 0;
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState] = 0;
  v6 = &v1[OBJC_IVAR___GPInProcessMagicPaperViewController_initialState];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v1[OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController] = 0;
  v14.receiver = v1;
  v14.super_class = GPInProcessMagicPaperViewController;
  v7 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  if (v7)
  {
    v8 = sub_1D28785F8();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_1D2878568();
    v9 = v7;
    v10 = sub_1D2878558();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_1D22AE01C(0, 0, v5, &unk_1D28A5840, v11);

    a1 = v9;
  }

  return v7;
}

uint64_t sub_1D2799E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2799F18, v6, v5);
}

uint64_t sub_1D2799F18()
{
  v1 = *(v0 + 16);

  v2 = [v1 undoManager];
  sub_1D2799B08(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2799F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2799E80(a1, v4, v5, v6);
}

uint64_t GPInProcessMagicPaperViewController.isAnimating.getter()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 && *(v6 + qword_1EC6E06F0))
  {
    sub_1D2870F78();
    v7 = *(sub_1D27FE818() + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused);

    if (v7)
    {

      v8 = 0;
    }

    else
    {
      v12 = sub_1D28016A4();
      swift_getKeyPath();
      v15 = v12;
      sub_1D279C058();
      sub_1D28719E8();

      v13 = *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]);

      v8 = v13 ^ 1;
    }
  }

  else
  {
    sub_1D28725E8();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "magicViewModel can't be nil when setting state", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t GPInProcessMagicPaperViewController.isAnimating.setter(char a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 && *(v8 + qword_1EC6E06F0))
  {
    sub_1D2870F78();
    v9 = (a1 & 1) == 0;
    *(sub_1D27FE818() + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = v9;
    sub_1D275746C();

    v10 = sub_1D28016A4();
    v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0];
    if (v9 == *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]))
    {

      *(v10 + v11) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v17[-2] = v10;
      LOBYTE(v17[-1]) = v9;
      v17[2] = v10;
      sub_1D279C058();
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D28725E8();
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A28();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D226E000, v13, v14, "magicViewModel can't be nil when setting state", v15, 2u);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

Swift::Void __swiftcall GPInProcessMagicPaperViewController.setState(_:)(GPMagicPaperState *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 && *(v8 + qword_1EC6E06F0))
  {
    sub_1D2870F78();
    v9 = [(GPMagicPaperState *)a1 isEditing];
    v10 = v9;
    v11 = 0;
    v12 = 0;
    if (v9)
    {
      [(GPMagicPaperState *)a1 frame];
      v11.y = v13;
      v12.y = v14;
    }

    v18[0] = v11;
    v18[1] = v12;
    v19 = v10 ^ 1;
    sub_1D2802914(v18);
  }

  else
  {
    sub_1D28725E8();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A28();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "magicViewModel can't be nil when setting state", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D279A7FC(void *a1)
{
  v27 = a1;
  v1 = sub_1D2873C48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v29 = sub_1D2873C28();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v14 = *(v2 + 8);
  v28 = v1;
  v14(v7, v1);
  sub_1D28720E8();
  v15 = sub_1D2873C38();
  v16 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v15, v16, v18, "Generative Tool Selection", "", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  v19 = v29;
  (*(v8 + 16))(v10, v13, v29);
  sub_1D2873C88();
  swift_allocObject();
  v20 = sub_1D2873C78();
  v14(v4, v28);
  v21 = v30;
  *(v30 + OBJC_IVAR___GPInProcessMagicPaperViewController_wandSelectionSignpostState) = v20;

  v22 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (v23)
  {
    swift_endAccess();
    v24 = v23;
    sub_1D26F44F0(v27);

    return (*(v8 + 8))(v13, v19);
  }

  else
  {
    (*(v8 + 8))(v13, v19);
    return swift_endAccess();
  }
}

void sub_1D279AC58(void *a1)
{
  v2 = v1;
  v4 = sub_1D2873C58();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D2873C28();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1D2873C48();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14)
  {
    v15 = v14;
    sub_1D26F4688(a1);
  }

  v16 = OBJC_IVAR___GPInProcessMagicPaperViewController_wandSelectionSignpostState;
  if (*(v2 + OBJC_IVAR___GPInProcessMagicPaperViewController_wandSelectionSignpostState))
  {
    v24 = v7;
    sub_1D2870F78();
    sub_1D28720E8();
    v17 = sub_1D2873C38();
    sub_1D2873C68();
    v23 = sub_1D2878BA8();
    if (sub_1D2878EE8())
    {
      sub_1D2870F78();
      sub_1D2873C98();

      v18 = v25;
      if ((*(v25 + 88))(v6, v4) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v4);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v17, v23, v21, "Generative Tool Selection", v19, v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    (*(v27 + 8))(v9, v24);
    (*(v10 + 8))(v12, v26);
    *(v2 + v16) = 0;
  }
}

void sub_1D279B1E0(void *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = v8;
    sub_1D26F4894(a1);
  }

  else
  {
    sub_1D28725E8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A28();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "magicViewController can't be nil when loading recipe", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1D279B368()
{
  v1 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *&v2[qword_1EC6E06F0];
    if (v3)
    {
      v4 = (v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame);
      v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTopButtonsFrame + 8);
      v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame);
      v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 8);
      v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 16);
      v9 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 24);
      v10 = v2;
      sub_1D2870F78();
      v11.origin.x = v6;
      v11.origin.y = v7;
      v11.size.width = v8;
      v11.size.height = v9;
      CGRectGetWidth(v11);
      CGRectGetHeight(*v4);

      CGRectMake(v6, v5);
    }
  }
}

Swift::Void __swiftcall GPInProcessMagicPaperViewController.upscaleIfPossible()()
{
  v1 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_1EC6E06F0);
    if (v3)
    {
      if ((*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_isShareLinkVisible) & 1) == 0)
      {
        sub_1D2870F78();
        MagicViewModel.performUpscalingOrCancel()();
      }
    }
  }
}

id GPInProcessMagicPaperViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D2878068();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id GPInProcessMagicPaperViewController.magicViewModelViewDidAppear(_:)()
{
  result = [v0 delegate];
  if (result)
  {
    [result magicPaperViewControllerViewDidAppear_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id GPInProcessMagicPaperViewController.magicViewModelDidGenerate(_:image:isPreview:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v59 = a2;
  v7 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2873C58();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2873C28();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2873C48();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2873CB8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState;
  if (*&v4[OBJC_IVAR___GPInProcessMagicPaperViewController_blobToFirstPreviewSignpostState])
  {
    v55 = v4;
    sub_1D2870F78();
    v54 = a3;
    if ((a3 & 1) == 0)
    {
      sub_1D28725E8();
      v22 = sub_1D2873CA8();
      v23 = sub_1D2878A18();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v53 = a1;
        v25 = v24;
        *v24 = 0;
        _os_log_impl(&dword_1D226E000, v22, v23, "magic view model generated full image while still waiting for first preview", v24, 2u);
        v26 = v25;
        a1 = v53;
        MEMORY[0x1D38A3520](v26, -1, -1);
      }

      (*(v18 + 8))(v20, v17);
    }

    sub_1D28720E8();
    v27 = sub_1D2873C38();
    sub_1D2873C68();
    v28 = sub_1D2878BA8();
    if (sub_1D2878EE8())
    {
      v53 = a1;
      sub_1D2870F78();
      v29 = v56;
      sub_1D2873C98();

      v31 = v57;
      v30 = v58;
      if ((*(v57 + 88))(v29, v58) == *MEMORY[0x1E69E93E8])
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v29, v30);
        v32 = "";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v27, v28, v34, "Generative Tool Preview", v32, v33, 2u);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    (*(v62 + 8))(v13, v63);
    (*(v60 + 8))(v16, v61);
    v4 = v55;
    *&v55[v21] = 0;

    LOBYTE(a3) = v54;
  }

  if ((a3 & 1) == 0)
  {
    v37 = OBJC_IVAR___GPInProcessMagicPaperViewController_magicViewController;
    swift_beginAccess();
    v38 = *&v4[v37];
    if (v38)
    {
      v39 = v38;
      sub_1D26F4A7C();
    }

    v40 = [v4 delegate];
    v41 = v59;
    v42 = v64;
    if (!v40)
    {
      goto LABEL_25;
    }

    v43 = v40;
    if (*(v59 + 8) == 2)
    {
      v44 = *v59;
    }

    else
    {
      v45 = sub_1D262B684();
      if (v45)
      {
        v46 = v45;
        result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v45 imageOrientation:sub_1D263073C(*(v41 + 24))];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v48 = result;

        goto LABEL_24;
      }

      v44 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v48 = v44;
LABEL_24:
    [v43 magicPaperViewController:v4 didGenerateImage:v48];

    swift_unknownObjectRelease();
LABEL_25:
    sub_1D28018E4(0, 2, v42);
    v49 = [v4 delegate];
    if (v49)
    {
      v50 = v49;
      if (([v49 respondsToSelector_] & 1) == 0)
      {
        sub_1D279D738(v42, type metadata accessor for Analytics.ImageGenerationEventPayload);
        return swift_unknownObjectRelease();
      }

      v51 = [v50 magicPaperViewControllerImageGenerationEvent_];
      swift_unknownObjectRelease();
      v52 = swift_unknownObjectRetain();
      sub_1D241609C(v52, v65);
      sub_1D279C5A8(v65);
      swift_unknownObjectRelease();
    }

    v36 = v42;
    return sub_1D279D738(v36, type metadata accessor for Analytics.ImageGenerationEventPayload);
  }

  v35 = v64;
  sub_1D28018E4(0, 1, v64);
  v36 = v35;
  return sub_1D279D738(v36, type metadata accessor for Analytics.ImageGenerationEventPayload);
}