uint64_t sub_1C2CF52A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
}

void (*BasicApertureHudConfiguration.leadingAccessoryView.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF544C;
}

uint64_t BasicApertureHudConfiguration.badgeView.getter()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1C2CF551C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v5 = *(v3 + 120);
  v4 = *(v3 + 128);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2CF83F0;
  a2[1] = v6;
}

uint64_t sub_1C2CF5644(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);

  sub_1C2E71A54();
}

uint64_t sub_1C2CF576C()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A54();
}

uint64_t sub_1C2CF583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

void (*BasicApertureHudConfiguration.badgeView.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF59E8;
}

uint64_t BasicApertureHudConfiguration.buttons.getter()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_1C2CF5AB8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v5 = *(v3 + 136);
  v4 = *(v3 + 144);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C2CF83B8;
  a2[1] = v6;
}

uint64_t sub_1C2CF5C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
}

void (*BasicApertureHudConfiguration.buttons.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF5DAC;
}

uint64_t BasicApertureHudConfiguration.currentLayout.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a1 = *(v1 + 152);
  return result;
}

uint64_t sub_1C2CF5E74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 152);
  return result;
}

uint64_t BasicApertureHudConfiguration.currentLayout.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 152) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

void (*BasicApertureHudConfiguration.currentLayout.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF61C4;
}

void sub_1C2CF61D0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C2E71A74();

  free(v1);
}

uint64_t BasicApertureHudConfiguration.__allocating_init(apertureAccessoryTemplate:title:subtitles:leadingAccessoryView:badgeView:buttons:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  LOBYTE(v24[0]) = 2;
  v23 = 0;
  type metadata accessor for ApertureElementConfiguration();
  swift_allocObject();
  *(v16 + 16) = ApertureElementConfiguration.init(maximumLayout:preferredLayout:showsLargeWhileFullScreen:)(v24, &v23, 0);
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 152) = 3;
  sub_1C2E71A94();
  v17 = *(v16 + 40);
  v24[0] = *(v16 + 24);
  v24[1] = v17;
  v18 = *(v16 + 72);
  v24[2] = *(v16 + 56);
  v24[3] = v18;
  sub_1C2CF452C(v24);
  v19 = a1[1];
  *(v16 + 24) = *a1;
  *(v16 + 40) = v19;
  v20 = a1[3];
  *(v16 + 56) = a1[2];
  *(v16 + 72) = v20;
  *(v16 + 88) = a2;
  *(v16 + 96) = a3;
  *(v16 + 104) = a4;
  *(v16 + 112) = a5;
  *(v16 + 120) = a6;
  *(v16 + 128) = a7;
  *(v16 + 136) = a8;
  *(v16 + 144) = a9;
  return v16;
}

uint64_t BasicApertureHudConfiguration.init(apertureAccessoryTemplate:title:subtitles:leadingAccessoryView:badgeView:buttons:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(v24[0]) = 2;
  v23 = 0;
  type metadata accessor for ApertureElementConfiguration();
  swift_allocObject();
  *(v9 + 16) = ApertureElementConfiguration.init(maximumLayout:preferredLayout:showsLargeWhileFullScreen:)(v24, &v23, 0);
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0;
  *(v9 + 152) = 3;
  sub_1C2E71A94();
  v17 = *(v9 + 40);
  v24[0] = *(v9 + 24);
  v24[1] = v17;
  v18 = *(v9 + 72);
  v24[2] = *(v9 + 56);
  v24[3] = v18;
  sub_1C2CF452C(v24);
  v19 = a1[1];
  *(v9 + 24) = *a1;
  *(v9 + 40) = v19;
  v20 = a1[3];
  *(v9 + 56) = a1[2];
  *(v9 + 72) = v20;

  *(v9 + 88) = a2;
  *(v9 + 96) = a3;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 136) = a8;
  *(v9 + 144) = a9;
  return v9;
}

uint64_t BasicApertureHudConfiguration.deinit()
{

  sub_1C2CF7F3C(*(v0 + 24));

  v1 = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BasicApertureHudConfiguration.__deallocating_deinit()
{
  BasicApertureHudConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1C2CF65AC()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_1C2CF6668()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CF6720()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1C2CF67E4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a1 = *(v1 + 152);
  return result;
}

void (*sub_1C2CF68CC(uint64_t **a1))(void *)
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
  v2[4] = BasicApertureHudConfiguration.currentLayout.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2CF693C()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1C2CF6A00()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_1C2CF6AC4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v10[2] = *(v3 + 56);
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v7;
  a1[2] = *(v3 + 56);
  a1[3] = v6;
  return sub_1C2CF42FC(v10, v9);
}

uint64_t sub_1C2CF6BB0(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A54();
  sub_1C2CF452C(v4);
}

void (*sub_1C2CF6C94(uint64_t **a1))(void *)
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
  v2[4] = BasicApertureHudConfiguration.apertureAccessoryTemplate.modify(v2);
  return sub_1C2CF6D08;
}

uint64_t sub_1C2CF6D0C()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CF6E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = sub_1C2E74ED4();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C2CF6ECC(unint64_t a1, uint64_t a2, unint64_t *a3)
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

    v5 = sub_1C2C6E1B4(0, a3);
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
          v16 = MEMORY[0x1C6927010](v13 - 4, v4);
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

        v17 = MEMORY[0x1C6927010](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1C2E76234();

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
      v19 = sub_1C2E76234();

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
    v31 = sub_1C2E764E4();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1C2E764E4();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C2CF7134(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    result = *(a1 + v3 + 40);
    v5 = *(a1 + v3 + 48);
    v6 = *(a1 + v3 + 56);
    v7 = *(a1 + v3 + 64);
    v8 = *(a1 + v3 + 72);
    v9 = *(a1 + v3 + 80);
    v30[0] = *(a1 + v3 + 32);
    v30[1] = result;
    v30[2] = v5;
    v30[3] = v6;
    v31 = v7;
    v32 = v8;
    v33 = v9;
    if (!v2)
    {
      break;
    }

    v10 = *(a2 + v3 + 40);
    v11 = *(a2 + v3 + 48);
    v12 = *(a2 + v3 + 56);
    v13 = *(a2 + v3 + 64);
    v14 = *(a2 + v3 + 72);
    v25 = v2;
    v26[0] = *(a2 + v3 + 32);
    v26[1] = v10;
    v26[2] = v11;
    v26[3] = v12;
    v27 = v13;
    v28 = v14;
    v29 = *(a2 + v3 + 80);
    v15 = v29;

    sub_1C2CF836C(v7, v8, v9);

    sub_1C2CF836C(v13, v14, v15);
    v16 = _s16CommunicationsUI16ControlSelectionV2eeoiySbAC_ACtFZ_0(v30, v26);
    v17 = v27;
    v18 = v28;
    v19 = v29;

    sub_1C2C9E060(v17, v18, v19);
    v20 = v31;
    v21 = v32;
    v22 = v33;

    sub_1C2C9E060(v20, v21, v22);
    if (v16)
    {
      v2 = v25 - 1;
      v3 += 56;
      if (v25 != 1)
      {
        continue;
      }
    }

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CF72CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71EA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1C2CF83F8(&qword_1EC05BB70, MEMORY[0x1E6995D28]);
    v21 = sub_1C2E75BA4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CF74E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1C2E764E4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_1C2E72DB4();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1C2E764E4();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6927010](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x1C6927010](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1C2CF83F8(&qword_1EC05D528, MEMORY[0x1E695BF10]);
      v15 = sub_1C2E75BA4();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C2CF7770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitOnHoldViewModel.AudioCategory(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WaitOnHoldViewModel.TranscriptComponent(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v38 = *(v16 + 72);
  v39 = &v37 - v17;
  do
  {
    sub_1C2CF8244(v21, v18);
    sub_1C2CF8244(v22, v15);
    sub_1C2E76854();
    sub_1C2CF8244(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v40;
      sub_1C2CF82A8(v12, v40);
      sub_1C2E76854();
      sub_1C2E718A4();
      sub_1C2CF83F8(&qword_1EC05E340, MEMORY[0x1E69695A8]);
      sub_1C2E75B64();
      v24 = sub_1C2E76894();
      MEMORY[0x1C6927290](v24);
      sub_1C2CF830C(v23, type metadata accessor for WaitOnHoldViewModel.AudioCategory);
    }

    else
    {
      sub_1C2E76854();
      sub_1C2E75CC4();
      v25 = sub_1C2E76894();
      MEMORY[0x1C6927290](v25);
    }

    v41 = sub_1C2E76894();
    sub_1C2E76854();
    sub_1C2CF8244(v15, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v9;
      v27 = v15;
      v28 = v12;
      v29 = v9;
      v30 = v6;
      v31 = v40;
      sub_1C2CF82A8(v26, v40);
      sub_1C2E76854();
      sub_1C2E718A4();
      sub_1C2CF83F8(&qword_1EC05E340, MEMORY[0x1E69695A8]);
      sub_1C2E75B64();
      v32 = sub_1C2E76894();
      MEMORY[0x1C6927290](v32);
      v33 = v31;
      v6 = v30;
      v9 = v29;
      v12 = v28;
      v15 = v27;
      sub_1C2CF830C(v33, type metadata accessor for WaitOnHoldViewModel.AudioCategory);
    }

    else
    {
      sub_1C2E76854();
      sub_1C2E75CC4();
      v34 = sub_1C2E76894();
      MEMORY[0x1C6927290](v34);
    }

    v18 = v39;
    v35 = sub_1C2E76894();
    sub_1C2CF830C(v15, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
    sub_1C2CF830C(v18, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
    result = v41 == v35;
    if (v41 != v35)
    {
      break;
    }

    v22 += v38;
    v21 += v38;
    --v19;
  }

  while (v19);
  return result;
}

uint64_t sub_1C2CF7BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v6 == 2)
          {
            v9 = 0x6D6563696F76;
          }

          else
          {
            v9 = 0x6D6F65646976;
          }

          v7 = v9 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
          v8 = 0xE90000000000006CLL;
        }

        else
        {
          if (*v3)
          {
            v7 = 0x64657373696DLL;
          }

          else
          {
            v7 = 0x736C6C6163;
          }

          if (*v3)
          {
            v8 = 0xE600000000000000;
          }

          else
          {
            v8 = 0xE500000000000000;
          }
        }
      }

      else if (*v3 <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0x7374736575716572;
        }

        else
        {
          v7 = 1802401130;
        }

        if (v6 == 4)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xE400000000000000;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0xE700000000000000;
        v7 = 0x64656B636F6C62;
      }

      else if (v6 == 7)
      {
        v7 = 0x746C69466C6C6163;
        v8 = 0xED0000676E697265;
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x656D695465636166;
      }

      v10 = *v4;
      if (v10 <= 3)
      {
        if (*v4 > 1u)
        {
          if (v10 == 2)
          {
            v12 = 0x6D6563696F76;
          }

          else
          {
            v12 = 0x6D6F65646976;
          }

          v11 = 0xE90000000000006CLL;
          if (v7 != (v12 & 0xFFFFFFFFFFFFLL | 0x6961000000000000))
          {
LABEL_5:
            v5 = sub_1C2E767A4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }

        else if (*v4)
        {
          v11 = 0xE600000000000000;
          if (v7 != 0x64657373696DLL)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          if (v7 != 0x736C6C6163)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 <= 5u)
      {
        if (v10 == 4)
        {
          v11 = 0xE800000000000000;
          if (v7 != 0x7374736575716572)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xE400000000000000;
          if (v7 != 1802401130)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v10 == 6)
      {
        v11 = 0xE700000000000000;
        if (v7 != 0x64656B636F6C62)
        {
          goto LABEL_5;
        }
      }

      else if (v10 == 7)
      {
        v11 = 0xED0000676E697265;
        if (v7 != 0x746C69466C6C6163)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        if (v7 != 0x656D695465636166)
        {
          goto LABEL_5;
        }
      }

      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C2CF7EE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_1C2CF7F3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2CF7FA0(uint64_t a1)
{
  *(a1 + 8) = sub_1C2CF83F8(&qword_1EC05F388, type metadata accessor for BasicApertureHudConfiguration);
  result = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C2CF8028()
{
  result = qword_1EC05F390;
  if (!qword_1EC05F390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F390);
  }

  return result;
}

uint64_t sub_1C2CF8134()
{
  result = sub_1C2E71AA4();
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

uint64_t sub_1C2CF8244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitOnHoldViewModel.TranscriptComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CF82A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitOnHoldViewModel.AudioCategory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CF830C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1C2CF836C(id result, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1C2C70B1C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1C2CF83B8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C2CF83F8(unint64_t *a1, void (*a2)(uint64_t))
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

char *CNContact.handleStrings.getter()
{
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC50);
  v2 = sub_1C2E75D74();

  sub_1C2CF8F48(v2);
  v4 = v3;

  v5 = [v0 emailAddresses];
  v6 = sub_1C2E75D74();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    sub_1C2CA2CF0(v10);
    return v4;
  }

  v7 = sub_1C2E764E4();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1C2C7B754(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v20 = v4;
    v9 = 0;
    v10 = v21;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6927010](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 value];
      v14 = sub_1C2E75C64();
      v16 = v15;

      v18 = *(v21 + 16);
      v17 = *(v21 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C2C7B754((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v21 + 16) = v18 + 1;
      v19 = v21 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v7 != v9);

    v4 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_1C2CF86C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C2E764E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1C2CA4D84(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1C6927010](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          sub_1C2CA4D84((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v17 + 16) = v8 + 1;
        v9 = v17 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &off_1F4299680;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      v12 = *(v17 + 16);
      v13 = 16 * v12;
      do
      {
        v14 = *v11;
        v15 = *(v17 + 24);

        if (v12 >= v15 >> 1)
        {
          sub_1C2CA4D84((v15 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v16 = v17 + v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = &off_1F4299680;
        v13 += 16;
        ++v11;
        ++v12;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CF8860(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C2E764E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_1C2E76634();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1C6927010]();
          sub_1C2CF97A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D9F0);
          swift_dynamicCast();
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_1C2CF97A8();
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D9F0);
          swift_dynamicCast();
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

void __swiftcall CNContact.predicateForCalls()(NSPredicate *__return_ptr retstr)
{
  v2 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC50);
  v3 = sub_1C2E75D74();

  v4 = sub_1C2CF9264(v3);

  v5 = [v1 emailAddresses];
  v6 = sub_1C2E75D74();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2E764E4())
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {

      v13 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    v21 = MEMORY[0x1E69E7CC0];
    sub_1C2E76634();
    if (i < 0)
    {
      break;
    }

    v20 = v4;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6927010](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 value];
      [objc_allocWithZone(MEMORY[0x1E6993578]) initWithType:3 value:v12];

      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
    }

    while (i != v9);

    v4 = v20;
    v13 = v21;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v14 = sub_1C2CF8860(v13);

    sub_1C2CA2DE4(v14);
    v6 = 0;
    v15 = *(v4 + 16);
    while (1)
    {
      if (v15 == v6)
      {

        v18 = objc_opt_self();
        sub_1C2CF97A8();
        v19 = sub_1C2E75D64();

        [v18 predicateForCallsWithAnyRemoteParticipantHandles_];

        return;
      }

      if (v6 >= *(v4 + 16))
      {
        break;
      }

      v16 = *(v4 + 8 * v6++ + 32);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x1C6926780]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
      }
    }

    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
}

void sub_1C2CF8D38(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 value];
  v4 = [v3 countryCode];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 digits];
    if (!v6)
    {
      sub_1C2E75C64();
      v6 = sub_1C2E75C24();
    }

    v7 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v6 isoCountryCode:v5];
  }

  else
  {
    v8 = [v3 unformattedInternationalStringValue];
    if (v8)
    {
      v5 = v8;
      v9 = [v3 formattedInternationalStringValue];
      if (!v9)
      {
        v9 = [v3 stringValue];
      }

      v10 = v9;
      sub_1C2E75C64();

      v11 = objc_allocWithZone(MEMORY[0x1E6993578]);
      v12 = sub_1C2E75C24();

      v7 = [v11 initWithType:2 value:v5 normalizedValue:v12];

      v3 = v12;
    }

    else
    {
      v13 = [v3 stringValue];
      if (!v13)
      {
        sub_1C2E75C64();
        v13 = sub_1C2E75C24();
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E6993578]) initWithType:2 value:v13];
      v5 = v3;
      v3 = v13;
    }
  }

  *a2 = v7;
}

void sub_1C2CF8F48(unint64_t a1)
{
  v30 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6927010](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v29 = v5;
      sub_1C2CF8D38(&v29, &v28);

      if (v28)
      {
        MEMORY[0x1C6926780]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        v4 = v30;
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_38:

    return;
  }

  v8 = sub_1C2E764E4();
  if (!v8)
  {
    goto LABEL_38;
  }

LABEL_20:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6927010](v9, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 normalizedValue];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1C2E75C64();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C2DD2198(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_1C2DD2198((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        v20 = &v10[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      v21 = [v12 value];
      v22 = sub_1C2E75C64();
      v24 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1C2DD2198(0, *(v10 + 2) + 1, 1, v10);
      }

      v26 = *(v10 + 2);
      v25 = *(v10 + 3);
      if (v26 >= v25 >> 1)
      {
        v10 = sub_1C2DD2198((v25 > 1), v26 + 1, 1, v10);
      }

      ++v9;

      *(v10 + 2) = v26 + 1;
      v27 = &v10[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
    }

    while (v8 != v9);
    goto LABEL_38;
  }

  __break(1u);
}

unint64_t sub_1C2CF9264(unint64_t result)
{
  v1 = result;
  v33 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
    result = sub_1C2E764E4();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v31 = v2;
    v32 = v1 & 0xC000000000000001;
    v30 = v1;
    while (1)
    {
      if (v32)
      {
        v4 = MEMORY[0x1C6927010](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 value];
      v7 = [v6 countryCode];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 digits];
        if (!v9)
        {
          sub_1C2E75C64();
          v9 = sub_1C2E75C24();
        }

        v10 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v8];

        if (!v10)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v20 = [v6 unformattedInternationalStringValue];
        if (v20)
        {
          v21 = v20;
          v22 = [v6 formattedInternationalStringValue];

          if (!v22)
          {
            v22 = [v6 stringValue];
          }

          sub_1C2E75C64();

          v27 = objc_allocWithZone(MEMORY[0x1E6993578]);
          v28 = sub_1C2E75C24();

          v10 = [v27 initWithType:2 value:v21 normalizedValue:v28];

          if (!v10)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v26 = [v6 stringValue];
          if (!v26)
          {
            sub_1C2E75C64();
            v26 = sub_1C2E75C24();
          }

          v10 = [objc_allocWithZone(MEMORY[0x1E6993578]) initWithType:2 value:v26];

          if (!v10)
          {
LABEL_33:
            v18 = 0;
            goto LABEL_34;
          }
        }
      }

      v11 = v10;
      v12 = [v11 type];
      v13 = [v11 normalizedValue];
      if (v13)
      {
        v14 = v13;
        sub_1C2E75C64();

        v15 = [v11 value];
        if (!v15)
        {
          sub_1C2E75C64();
          v15 = sub_1C2E75C24();
        }

        v16 = objc_allocWithZone(MEMORY[0x1E6993578]);
        v17 = sub_1C2E75C24();

        v18 = [v16 initWithType:v12 value:v15 normalizedValue:v17];

        v19 = v11;
        v11 = v15;
      }

      else
      {
        if (v12 == 2)
        {
          v23 = [v6 countryCode];
          if (!v23)
          {
            v17 = [v11 value];
            if (!v17)
            {
              sub_1C2E75C64();
              v17 = sub_1C2E75C24();
              v1 = v30;
            }

            v18 = [objc_allocWithZone(MEMORY[0x1E6993578]) initWithType:2 value:v17];
            v19 = v11;
            goto LABEL_26;
          }
        }

        v24 = [v11 value];
        if (!v24)
        {
          sub_1C2E75C64();
          v24 = sub_1C2E75C24();
        }

        v25 = objc_opt_self();
        v19 = [v6 countryCode];
        v18 = [v25 normalizedHandleWithType:v12 value:v24 isoCountryCode:v19];

        v17 = v11;
      }

      v1 = v30;
LABEL_26:

      v2 = v31;
LABEL_34:
      v29 = v18;
      MEMORY[0x1C6926780]();
      if (*(v33 + 16) >= *(v33 + 24) >> 1)
      {
        sub_1C2E75D94();
        v1 = v30;
      }

      ++v3;
      sub_1C2E75DB4();

      if (v2 == v3)
      {
        return v33;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2CF97A8()
{
  result = qword_1EC05F3B0;
  if (!qword_1EC05F3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05F3B0);
  }

  return result;
}

uint64_t PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:iPadUsesiOS:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v34 = a6;
  v35 = a5;
  v32[1] = a4;
  v33 = a3;
  v36 = a2;
  v37 = a1;
  v38 = a7;
  v15 = sub_1C2E76424();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v32 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v32 - v23;
  v25 = *(a15 - 8);
  (*(v25 + 56))(v32 - v23, 1, 1, a15);
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((a14 == 2 || (a14 & 1) == 0) && v27 == 1)
  {
    v28 = v35;
  }

  else
  {
    v28 = v33;
  }

  v28();
  v29 = *(v16 + 8);
  v29(v24, v15);
  (*(v16 + 32))(v24, v22, v15);
  (*(v16 + 16))(v19, v24, v15);
  if ((*(v25 + 48))(v19, 1, a15) == 1)
  {
    v30 = (v29)(v19, v15);
    v37(v30);
    return (v29)(v24, v15);
  }

  else
  {
    v29(v24, v15);
    return (*(v25 + 32))(v38, v19, a15);
  }
}

uint64_t PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v31 = a15;
  v32 = a1;
  v33 = a2;
  v27 = a15;
  v28 = a3;
  v29 = a4;
  v23 = a15;
  v24 = a5;
  v25 = a6;
  return PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:iPadUsesiOS:)(sub_1C2CF9B90, v30, sub_1C2CF9B68, v26, sub_1C2CF9B90, v22, a7, v16, v17, v18, v19, v20, v21, [a14 splitViewControllerLayoutEnvironment] == 2, a15);
}

uint64_t sub_1C2CF9B94()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();

  return v2;
}

uint64_t JunkCellViewModel.JunkType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t JunkCellViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JunkCellViewModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t JunkCellViewModel.dateText.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t JunkCellViewModel.blockAction.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t JunkCellViewModel.markAsNotJunkAction.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t JunkCellViewModel.__allocating_init(title:subtitle:date:type:blockAction:markAsNotJunkAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a6;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC918]) init];
  v16 = sub_1C2E71804();
  [v15 setDate_];

  v17 = [v15 text];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1C2E75C64();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = sub_1C2E71844();
  (*(*(v22 - 8) + 8))(a5, v22);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 56) = v19;
  *(result + 64) = v21;
  *(result + 48) = v14;
  *(result + 72) = a7;
  *(result + 80) = a8;
  *(result + 88) = a9;
  *(result + 96) = a10;
  return result;
}

__n128 JunkCellViewModel.__allocating_init(title:subtitle:dateText:type:blockAction:markAsNotJunkAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v19 = *a7;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  *(v18 + 48) = v19;
  *(v18 + 72) = a8;
  result = a9;
  *(v18 + 80) = a9;
  *(v18 + 96) = a10;
  return result;
}

uint64_t JunkCellViewModel.init(title:subtitle:dateText:type:blockAction:markAsNotJunkAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = *a7;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 56) = a5;
  *(v10 + 64) = a6;
  *(v10 + 48) = v11;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t JunkCellViewModel.deinit()
{

  return v0;
}

uint64_t JunkCellViewModel.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C2CFA0CC()
{
  sub_1C2C74960();

  return sub_1C2E748A4();
}

double JunkCellView.init(viewModel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for CGSize(0);
  sub_1C2E75174();
  result = *&v5;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = a1;
  return result;
}

uint64_t JunkCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v4 = v1[3];
  v19 = v1[2];
  v20 = v4;
  v21 = *(v1 + 8);
  v16[3] = &type metadata for JunkCellViewState;
  v16[4] = &off_1F429AE68;
  v16[0] = v17;
  *(a1 + 136) = swift_getKeyPath();
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3B8) + 128);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  sub_1C2C6E3A4(v16, a1);
  swift_retain_n();
  sub_1C2CFA3B8(&v17, a1 + 40);
  *(a1 + 72) = xmmword_1C2E7F6B0;
  *(a1 + 88) = 0;
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  sub_1C2CFA648((a1 + 104));
  __swift_destroy_boxed_opaque_existential_1(v16);
  v6 = swift_allocObject();
  v7 = v20;
  *(v6 + 48) = v19;
  *(v6 + 64) = v7;
  *(v6 + 80) = v21;
  v8 = v18;
  *(v6 + 16) = v17;
  *(v6 + 32) = v8;
  sub_1C2CFAF68(&v17, v16);
  v9 = sub_1C2E75744();
  v11 = v10;

  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3C0) + 36));
  *v12 = sub_1C2E6E3CC;
  v12[1] = 0;
  v12[2] = v9;
  v12[3] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C2CFAF0C;
  *(v13 + 24) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3C8);
  v15 = (a1 + *(result + 36));
  *v15 = sub_1C2CFAFCC;
  v15[1] = v13;
  return result;
}

uint64_t sub_1C2CFA3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E73BA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v8 = *(*a1 + 64);
  *&v34 = *(*a1 + 56);
  *(&v34 + 1) = v8;
  sub_1C2C74960();

  v9 = sub_1C2E748A4();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 8);
  v36 = *(a1 + 40);
  v15 = *(a1 + 24);
  v34 = v14;
  v35 = v15;
  if (v36 == 1)
  {
    v32 = __PAIR128__(*(&v34 + 1), v14);
    v33 = v35;
    sub_1C2CFB554(&v34, v31);
  }

  else
  {
    sub_1C2CFB554(&v34, v31);
    sub_1C2E75FD4();
    v30 = v4;
    v16 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2CFB5C4(&v34);
    (*(v5 + 8))(v7, v30);
  }

  v17 = sub_1C2E747F4();
  v19 = v18;
  v21 = v20;
  sub_1C2C72340(v9, v11, v13 & 1);

  v31[0] = sub_1C2E740F4();
  v22 = sub_1C2E74794();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C2C72340(v17, v19, v21 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_1C2CFA648@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2C74960();

  v1 = sub_1C2E748A4();
  v24 = v2;
  v25 = v1;
  v4 = v3;
  sub_1C2C72330(v1, v2, v3 & 1);

  sub_1C2E75044();
  v5 = sub_1C2E748B4();
  v7 = v6;
  v9 = v8;
  sub_1C2CF9B94();
  v10 = sub_1C2E747B4();
  v12 = v11;
  v14 = v13;
  sub_1C2C72340(v5, v7, v9 & 1);

  v15 = sub_1C2E747C4();
  v22 = v16;
  v23 = v15;
  v18 = v17;
  v20 = v19;
  sub_1C2C72340(v10, v12, v14 & 1);

  sub_1C2C72340(v25, v24, v4 & 1);

  sub_1C2C72340(v25, v24, v4 & 1);

  *a1 = v23;
  a1[1] = v22;
  a1[2] = v18 & 1;
  a1[3] = v20;
  return result;
}

uint64_t JunkList.body.getter()
{
  v1 = sub_1C2E73404();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3D8);
  sub_1C2CFB000();
  sub_1C2E746E4();
  sub_1C2E733F4();
  sub_1C2C94F38(&qword_1EC05F3F0, &qword_1EC05F3D0);
  sub_1C2E74E64();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2CFAA70(unint64_t a1)
{
  if (a1 >> 62 && (result = sub_1C2E764E4(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F438);
    sub_1C2CFB474();
    sub_1C2CFB084();
    return sub_1C2E75434();
  }

  return result;
}

unint64_t sub_1C2CFAB74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6927010](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a2 + 8 * result + 32);

LABEL_5:
    KeyPath = swift_getKeyPath();
    type metadata accessor for CGSize(0);
    result = sub_1C2E75174();
    *a3 = v5;
    *(a3 + 8) = KeyPath;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = v7;
    *(a3 + 64) = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CFAC3C()
{
  v1 = sub_1C2E73404();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F3D8);
  sub_1C2CFB000();
  sub_1C2E746E4();
  sub_1C2E733F4();
  sub_1C2C94F38(&qword_1EC05F3F0, &qword_1EC05F3D0);
  sub_1C2E74E64();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2CFAE54()
{
  sub_1C2C7CFC4();

  return sub_1C2E73BC4();
}

uint64_t sub_1C2CFAECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

unint64_t sub_1C2CFB000()
{
  result = qword_1EC05F3E0;
  if (!qword_1EC05F3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F3D8);
    sub_1C2CFB084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F3E0);
  }

  return result;
}

unint64_t sub_1C2CFB084()
{
  result = qword_1EC05F3E8;
  if (!qword_1EC05F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F3E8);
  }

  return result;
}

unint64_t sub_1C2CFB0DC()
{
  result = qword_1EC05F3F8;
  if (!qword_1EC05F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F3F8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C2CFB208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C2CFB250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2CFB2C0()
{
  result = qword_1EC05F400;
  if (!qword_1EC05F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F3C8);
    sub_1C2CFB378();
    sub_1C2C94F38(&qword_1EC05F428, &qword_1EC05F430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F400);
  }

  return result;
}

unint64_t sub_1C2CFB378()
{
  result = qword_1EC05F408;
  if (!qword_1EC05F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F3C0);
    sub_1C2C94F38(&qword_1EC05F410, &qword_1EC05F3B8);
    sub_1C2C94F38(&qword_1EC05F418, &qword_1EC05F420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F408);
  }

  return result;
}

unint64_t sub_1C2CFB474()
{
  result = qword_1EC05B260;
  if (!qword_1EC05B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F438);
    sub_1C2CFB500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B260);
  }

  return result;
}

unint64_t sub_1C2CFB500()
{
  result = qword_1EC05B2D8;
  if (!qword_1EC05B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2D8);
  }

  return result;
}

uint64_t sub_1C2CFB554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CFB5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *CallRecordingViewConfig.init(inset:options:interComponentSpacing:maxAXContentSize:backgroundEffect:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *result;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  *(a5 + 32) = v9;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_1C2CFB70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2CFB754(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1C2CFB7B4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_configuration);
  swift_getKeyPath();
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      v4 = *(v3 + 16);
      swift_beginAccess();
      if (*(v4 + 16))
      {
        *(v4 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

        sub_1C2E71A54();
      }

      swift_getKeyPath();
      sub_1C2E71A64();

      v9 = *(v3 + 16);

      v10 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      swift_getKeyPath();
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A64();

      swift_getKeyPath();
      sub_1C2E71A84();

      swift_beginAccess();
      v11 = *(v9 + 24);
      *(v9 + 24) = v10;
      v12 = *(v9 + 32);
      *(v9 + 32) = 1;
      sub_1C2CC2678(v11, v12);
      swift_getKeyPath();
      sub_1C2E71A74();

      swift_getKeyPath();
      sub_1C2E71A64();

      v13 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
    }

    else
    {
      sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      v6 = *(v3 + 16);
      swift_beginAccess();
      if (*(v6 + 16))
      {
        v7 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v7);
        sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

        sub_1C2E71A54();
      }

      else
      {
        *(v6 + 16) = 0;
      }

      swift_getKeyPath();
      sub_1C2E71A64();

      v19 = *(v3 + 16);

      _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      v20 = sub_1C2E74F74();

      swift_getKeyPath();
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A64();

      swift_getKeyPath();
      sub_1C2E71A84();

      swift_beginAccess();
      v21 = *(v19 + 24);
      *(v19 + 24) = v20;
      v22 = *(v19 + 32);
      *(v19 + 32) = 1;
      sub_1C2CC2678(v21, v22);
      swift_getKeyPath();
      sub_1C2E71A74();

      swift_getKeyPath();
      sub_1C2E71A64();

      _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      v23 = sub_1C2E74F74();

      v13 = v23;
    }
  }

  else
  {
    sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
    sub_1C2E71A64();

    swift_beginAccess();
    v5 = *(v3 + 16);
    swift_beginAccess();
    if (*(v5 + 16))
    {
      *(v5 + 16) = 1;
    }

    else
    {
      v14 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v14);
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A54();
    }

    swift_getKeyPath();
    sub_1C2E71A64();

    v15 = *(v3 + 16);

    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v16 = sub_1C2E74F74();

    swift_getKeyPath();
    sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

    sub_1C2E71A64();

    swift_getKeyPath();
    sub_1C2E71A84();

    swift_beginAccess();
    v17 = *(v15 + 24);
    *(v15 + 24) = v16;
    v18 = *(v15 + 32);
    *(v15 + 32) = 1;
    sub_1C2CC2678(v17, v18);
    swift_getKeyPath();
    sub_1C2E71A74();

    swift_getKeyPath();
    sub_1C2E71A64();

    v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  }

  sub_1C2D7E3B0(v13);
}

uint64_t sub_1C2CFC1DC(char a1)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      v4 = *(v3 + 16);
      swift_beginAccess();
      if (*(v4 + 16))
      {
        *(v4 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

        sub_1C2E71A54();
      }

      swift_getKeyPath();
      sub_1C2E71A64();

      v9 = *(v3 + 16);

      v10 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      swift_getKeyPath();
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A64();

      swift_getKeyPath();
      sub_1C2E71A84();

      swift_beginAccess();
      v11 = *(v9 + 24);
      *(v9 + 24) = v10;
      v12 = *(v9 + 32);
      *(v9 + 32) = 1;
      sub_1C2CC2678(v11, v12);
      swift_getKeyPath();
      sub_1C2E71A74();

      swift_getKeyPath();
      sub_1C2E71A64();

      v13 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
    }

    else
    {
      sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      v6 = *(v3 + 16);
      swift_beginAccess();
      if (*(v6 + 16))
      {
        v7 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v7);
        sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

        sub_1C2E71A54();
      }

      else
      {
        *(v6 + 16) = 0;
      }

      swift_getKeyPath();
      sub_1C2E71A64();

      v19 = *(v3 + 16);

      _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      v20 = sub_1C2E74F74();

      swift_getKeyPath();
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A64();

      swift_getKeyPath();
      sub_1C2E71A84();

      swift_beginAccess();
      v21 = *(v19 + 24);
      *(v19 + 24) = v20;
      v22 = *(v19 + 32);
      *(v19 + 32) = 1;
      sub_1C2CC2678(v21, v22);
      swift_getKeyPath();
      sub_1C2E71A74();

      swift_getKeyPath();
      sub_1C2E71A64();

      _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
      v23 = sub_1C2E74F74();

      v13 = v23;
    }
  }

  else
  {
    sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
    sub_1C2E71A64();

    swift_beginAccess();
    v5 = *(v3 + 16);
    swift_beginAccess();
    if (*(v5 + 16))
    {
      *(v5 + 16) = 1;
    }

    else
    {
      v14 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v14);
      sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

      sub_1C2E71A54();
    }

    swift_getKeyPath();
    sub_1C2E71A64();

    v15 = *(v3 + 16);

    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v16 = sub_1C2E74F74();

    swift_getKeyPath();
    sub_1C2CFE2D0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

    sub_1C2E71A64();

    swift_getKeyPath();
    sub_1C2E71A84();

    swift_beginAccess();
    v17 = *(v15 + 24);
    *(v15 + 24) = v16;
    v18 = *(v15 + 32);
    *(v15 + 32) = 1;
    sub_1C2CC2678(v17, v18);
    swift_getKeyPath();
    sub_1C2E71A74();

    swift_getKeyPath();
    sub_1C2E71A64();

    v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  }

  sub_1C2D7E3B0(v13);
}

uint64_t (*AudioCallAddCallControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2CFCDA0;
}

uint64_t sub_1C2CFCC38()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    v4[0] = v1;
    sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
    sub_1C2E71A64();

    swift_beginAccess();
    sub_1C2CFD064(v1 + 24, v7);

    if (v8)
    {
      sub_1C2C6E3A4(v7, v4);
      sub_1C2C73644(v7, &qword_1EC05F460);
      v2 = v5;
      v3 = v6;
      __swift_project_boxed_opaque_existential_1(v4, v5);
      (*(v3 + 8))(v2, v3);
      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
      return sub_1C2C73644(v7, &qword_1EC05F460);
    }
  }

  return result;
}

uint64_t AudioCallAddCallControlViewModel.presentationDelegate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2CFD064(v1 + 24, a1);
}

uint64_t sub_1C2CFCE68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2CFD064(v3 + 24, a2);
}

uint64_t sub_1C2CFCF28(uint64_t a1)
{
  sub_1C2CFD064(a1, v2);
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &qword_1EC05F460);
}

uint64_t type metadata accessor for AudioCallAddCallControlViewModel()
{
  result = qword_1EC05F490;
  if (!qword_1EC05F490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2CFD064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioCallAddCallControlViewModel.presentationDelegate.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &qword_1EC05F460);
}

uint64_t sub_1C2CFD1B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C2CFE354(a2, a1 + 24);
  return swift_endAccess();
}

void (*AudioCallAddCallControlViewModel.presentationDelegate.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI32AudioCallAddCallControlViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CFD374;
}

void sub_1C2CFD374(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C2E71A74();

  free(v1);
}

uint64_t sub_1C2CFD418()
{
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CFD4D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_1C2CFD590(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2CFD6D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
}

uint64_t AudioCallAddCallControlViewModel.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallAddCallControlViewModel.init(service:)(a1);
  return v2;
}

void *AudioCallAddCallControlViewModel.init(service:)(void *a1)
{
  v2 = v1;
  v29 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F468);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - v4;
  v5 = sub_1C2E757E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  v12 = MEMORY[0x1E69E7CD0];
  *(v1 + 24) = 0u;
  *(v1 + 104) = v12;
  v33 = v1 + 104;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 64);
  v37 = 0xD00000000000001DLL;
  v38 = 0x80000001C2E95D80;
  v39 = 1;
  v30 = type metadata accessor for AudioCallAddCallControlViewModel;
  sub_1C2CFE2D0(&qword_1EC05F470, type metadata accessor for AudioCallAddCallControlViewModel);
  v13 = sub_1C2DFDC24(0, &v37);
  sub_1C2C77608(v37, v38, v39);
  v14 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v15 = sub_1C2E74534();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = sub_1C2E745C4();
  sub_1C2C73644(v11, &qword_1EC05D810);
  (*(v6 + 104))(v8, *MEMORY[0x1E6981DF0], v5);
  type metadata accessor for ControlTextConfiguration();
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v18 = 0;
  v18[8] = 1;
  sub_1C2E71A94();
  v17[2] = 6579265;
  v17[3] = 0xE300000000000000;
  v17[4] = v14;
  v17[5] = v16;
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v8, v5);
  *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v18 = 0;
  v18[8] = 1;
  *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v19 = swift_allocObject();
  v19[3] = 0;
  sub_1C2E71A94();
  v19[2] = v13;
  swift_getKeyPath();
  v35 = v19;
  v36 = v17;
  v37 = v19;
  sub_1C2CFE2D0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  v2[2] = v19;
  v20 = v29;
  v22 = v29[3];
  v21 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v22);
  v37 = (*(*(v21 + 8) + 8))(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F478);
  sub_1C2C94F38(&qword_1EC05F480, &qword_1EC05F478);
  v23 = v31;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05F488, &qword_1EC05F468);
  v24 = v32;
  sub_1C2E72F14();

  (*(v34 + 8))(v23, v24);
  swift_getKeyPath();
  v37 = v2;
  sub_1C2CFE2D0(&qword_1EC05F458, v30);
  sub_1C2E71A64();

  v37 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v37 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v25 = v2[11];
  v26 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v25);
  if (DisableableControlService.controlEnabled.getter(v25, *(v26 + 8)))
  {
    v27 = 0;
  }

  else
  {
    v27 = 2;
  }

  sub_1C2CFC1DC(v27);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v2;
}

void *sub_1C2CFDED8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[11];
    v2 = result[12];
    __swift_project_boxed_opaque_existential_1(result + 8, v1);
    if (DisableableControlService.controlEnabled.getter(v1, *(v2 + 8)))
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    sub_1C2CFC1DC(v3);
  }

  return result;
}

uint64_t AudioCallAddCallControlViewModel.deinit()
{

  sub_1C2C73644(v0 + 24, &qword_1EC05F460);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallAddCallControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallAddCallControlViewModel.__deallocating_deinit()
{

  sub_1C2C73644(v0 + 24, &qword_1EC05F460);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallAddCallControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2CFE10C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2CFE3F4;
}

uint64_t sub_1C2CFE170(uint64_t a1)
{
  result = sub_1C2CFE2D0(&qword_1EC05F458, type metadata accessor for AudioCallAddCallControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2CFE1E4()
{
  result = sub_1C2E71AA4();
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

uint64_t sub_1C2CFE2D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2CFE354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static ControlGridViewConfiguration.sixUp(arrangement:width:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  sub_1C2C6E3A4(a1, v50);
  sub_1C2C6E3A4(a2, v51 + 8);
  sub_1C2C6E3A4(a3, v52);
  sub_1C2C6E3A4(a4, v46);
  sub_1C2C6E3A4(a5, v47 + 8);
  sub_1C2C6E3A4(a6, v48);
  v36[4] = v51[2];
  v36[5] = v52[0];
  v36[6] = v52[1];
  v36[0] = v50[0];
  v36[1] = v50[1];
  v36[2] = v51[0];
  v36[3] = v51[1];
  v41 = v47[1];
  v40 = v47[0];
  v39 = v46[1];
  v38 = v46[0];
  v37 = v53;
  v45 = v49;
  v44 = v48[1];
  v43 = v48[0];
  v42 = v47[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C2E7A110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4A8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C2E7AA50;
  sub_1C2C736A4(v36, v30, &qword_1EC05F4B0);
  sub_1C2C716EC(v30, v14 + 32);
  sub_1C2C736A4(v36, v24, &qword_1EC05F4B0);
  sub_1C2C716EC(v25, v14 + 72);
  sub_1C2C736A4(v36, v18, &qword_1EC05F4B0);
  sub_1C2C716EC(v20, v14 + 112);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C2E7AA50;
  sub_1C2C736A4(v36, v30, &qword_1EC05F4B0);
  sub_1C2C716EC(v33, v15 + 32);
  sub_1C2C736A4(v36, v24, &qword_1EC05F4B0);
  sub_1C2C716EC(v28, v15 + 72);
  sub_1C2C736A4(v36, v18, &qword_1EC05F4B0);
  sub_1C2C716EC(v23, v15 + 112);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v30);
  *(v13 + 40) = v15;
  type metadata accessor for ControlGridViewConfiguration();
  v16 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2C73644(v36, &qword_1EC05F4B0);
  *(v16 + 16) = v13;
  *(v16 + 24) = a7;
  *(v16 + 32) = xmmword_1C2E7FD70;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0x4039000000000000;
  *(v16 + 72) = xmmword_1C2E7FD80;
  return v16;
}

uint64_t static ControlGridViewConfiguration.bottom(arrangement:width:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C2C736A4(a1, v26, &qword_1EC05F4B8);
  sub_1C2C736A4(a2, &v27, &qword_1EC05F4B8);
  sub_1C2C736A4(a3, &v28, &qword_1EC05F4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C2E7A930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C2E7AA50;
  sub_1C2C736A4(v26, v22, &qword_1EC05F4C0);
  v9 = v22[1];
  *(v8 + 32) = v22[0];
  *(v8 + 48) = v9;
  *(v8 + 64) = v23;
  sub_1C2C736A4(v26, v17, &qword_1EC05F4C0);
  *(v8 + 72) = v18;
  *(v8 + 88) = v19;
  *(v8 + 104) = v20;
  sub_1C2C736A4(v26, v13, &qword_1EC05F4C0);
  v10 = v15;
  *(v8 + 112) = *&v14[40];
  *(v8 + 128) = v10;
  *(v8 + 144) = v16;
  sub_1C2C73644(v14, &qword_1EC05F4B8);
  sub_1C2C73644(v13, &qword_1EC05F4B8);
  sub_1C2C73644(&v21, &qword_1EC05F4B8);
  sub_1C2C73644(v17, &qword_1EC05F4B8);
  sub_1C2C73644(&v25, &qword_1EC05F4B8);
  sub_1C2C73644(&v24, &qword_1EC05F4B8);
  *(v7 + 32) = v8;
  type metadata accessor for ControlGridViewConfiguration();
  v11 = swift_allocObject();
  sub_1C2E71A94();
  sub_1C2C73644(v26, &qword_1EC05F4C0);
  *(v11 + 16) = v7;
  *(v11 + 24) = a4;
  *(v11 + 32) = xmmword_1C2E7FD70;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 48) = 0x4039000000000000;
  *(v11 + 72) = xmmword_1C2E7FD80;
  return v11;
}

uint64_t FTPickerView.PickerItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E718A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FTPickerView.PickerItem.init(menuItem:isDisabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C2E71894();
  result = type metadata accessor for FTPickerView.PickerItem(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t FTPickerView.PickerItem.hash(into:)()
{
  sub_1C2E718A4();
  sub_1C2CFF5DC(&qword_1EC05E340, MEMORY[0x1E69695A8]);

  return sub_1C2E75B64();
}

uint64_t FTPickerView.PickerItem.hashValue.getter()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2CFF5DC(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

uint64_t sub_1C2CFEC10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E718A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C2CFEC78()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2CFF5DC(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

uint64_t sub_1C2CFED00()
{
  sub_1C2E718A4();
  sub_1C2CFF5DC(&qword_1EC05E340, MEMORY[0x1E69695A8]);

  return sub_1C2E75B64();
}

uint64_t sub_1C2CFED84()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2CFF5DC(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

uint64_t FTPickerView.init(menuItems:pickedItem:wantsToDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for FTPickerView.PickerItem(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a5[2] = a1;
  sub_1C2CFFAA0(a2, &v17 - v14, type metadata accessor for FTPickerView.PickerItem);
  type metadata accessor for FTPickerView(0);
  sub_1C2CFFAA0(v15, v13, type metadata accessor for FTPickerView.PickerItem);
  sub_1C2E75174();
  sub_1C2CFEF54(a2);
  result = sub_1C2CFEF54(v15);
  *a5 = a3;
  a5[1] = a4;
  return result;
}

uint64_t sub_1C2CFEF54(uint64_t a1)
{
  v2 = type metadata accessor for FTPickerView.PickerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FTPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for FTPickerView(0);
  v29 = *(v2 - 8);
  v28 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FTPickerView.PickerItem(0);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4C8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D0);
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8);
  sub_1C2E751A4();
  v31 = v1;
  sub_1C2CFF56C(v11, v9);
  sub_1C2E73D14();
  v32 = sub_1C2E74884();
  v33 = v14;
  v34 = v15 & 1;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4E0);
  sub_1C2CFF5DC(&qword_1EC05F4E8, type metadata accessor for FTPickerView.PickerItem);
  sub_1C2CFF624();
  sub_1C2E75284();
  sub_1C2CFF804(v11);
  sub_1C2E75184();
  v17 = v26;
  sub_1C2CFFAA0(v1, v26, type metadata accessor for FTPickerView);
  v18 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v19 = swift_allocObject();
  sub_1C2CFFB08(v17, v19 + v18);
  sub_1C2C94F38(&qword_1EC05F508, &qword_1EC05F4D0);
  sub_1C2CFF5DC(&qword_1EC05F510, type metadata accessor for FTPickerView.PickerItem);
  v20 = v30;
  v21 = v25;
  sub_1C2E74DD4();

  sub_1C2CFEF54(v5);
  (*(v27 + 8))(v13, v21);
  LODWORD(v9) = sub_1C2E740D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F518);
  *(v20 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_1C2CFF438()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F550);
  sub_1C2E718A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F500);
  sub_1C2C94F38(&qword_1EC05F558, &qword_1EC05F550);
  sub_1C2CFF6A8();
  sub_1C2CFF5DC(&qword_1EC05F560, type metadata accessor for FTPickerView.PickerItem);
  return sub_1C2E75444();
}

uint64_t sub_1C2CFF56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CFF5DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2CFF624()
{
  result = qword_1EC05F4F0;
  if (!qword_1EC05F4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F4E0);
    sub_1C2CFF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F4F0);
  }

  return result;
}

unint64_t sub_1C2CFF6A8()
{
  result = qword_1EC05F4F8;
  if (!qword_1EC05F4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D150);
    type metadata accessor for FTPickerView.PickerItem(255);
    swift_getOpaqueTypeConformance2();
    sub_1C2CFF5DC(&qword_1EC05F4E8, type metadata accessor for FTPickerView.PickerItem);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F4F8);
  }

  return result;
}

uint64_t sub_1C2CFF804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2CFF86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D150);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FTPickerView.PickerItem(0);
  sub_1C2E71EE4();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D140) + 36);
  sub_1C2CFFAA0(a1, v9, type metadata accessor for FTPickerView.PickerItem);
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D148) + 36)) = 1;
  (*(v5 + 32))(a2, v7, v4);
  LOBYTE(v4) = *(a1 + *(v8 + 24));
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F500);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_1C2C77650;
  v13[2] = v11;
  return result;
}

uint64_t sub_1C2CFFA28(uint64_t a1, uint64_t a2, uint64_t (**a3)(void))
{
  type metadata accessor for FTPickerView.PickerItem(0);
  v4 = sub_1C2E720B4();
  v4();

  result = sub_1C2E71F64();
  if (result)
  {
    if (*a3)
    {
      return (*a3)();
    }
  }

  return result;
}

uint64_t sub_1C2CFFAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2CFFB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CFFB6C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FTPickerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1C2CFFA28(a1, a2, v6);
}

void sub_1C2CFFCC4()
{
  sub_1C2CFFD98();
  if (v0 <= 0x3F)
  {
    sub_1C2CFFDFC(319, &qword_1EC05F530, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C2CFFDFC(319, &qword_1EC05F538, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2CFFD98()
{
  if (!qword_1EC05CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E0F8);
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CA50);
    }
  }
}

void sub_1C2CFFDFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FTPickerView.PickerItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C2CFFE84()
{
  result = sub_1C2E718A4();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E720E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2CFFF10()
{
  result = qword_1EC05F540;
  if (!qword_1EC05F540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F4D0);
    type metadata accessor for FTPickerView.PickerItem(255);
    sub_1C2C94F38(&qword_1EC05F508, &qword_1EC05F4D0);
    sub_1C2CFF5DC(&qword_1EC05F510, type metadata accessor for FTPickerView.PickerItem);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F540);
  }

  return result;
}

uint64_t EnvironmentValues.favoriteTileStyle.getter()
{
  sub_1C2C6EEF0();

  return sub_1C2E73BB4();
}

uint64_t FavoriteTileStyle.font.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double static FavoriteTileStyle.phoneBig.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E74624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E74644();
  v6 = *MEMORY[0x1E6980EA8];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_1C2E74664();

  v8 = *(v3 + 8);
  v8(v5, v2);

  sub_1C2E74644();
  v7(v5, v6, v2);
  sub_1C2E74664();

  v8(v5, v2);

  v9 = sub_1C2E744F4();
  result = 1.5125;
  *a1 = xmmword_1C2E7FF60;
  *(a1 + 16) = xmmword_1C2E7FF80;
  *(a1 + 32) = v9;
  return result;
}

__n128 sub_1C2D00414@<Q0>(void (*a1)(uint64_t)@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v13 = a3;
  v14 = a4;
  v6 = sub_1C2E74624();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EA8], v6);
  v11 = sub_1C2E74664();

  (*(v7 + 8))(v10, v6);
  result = v14;
  *a2 = v13;
  a2[1] = result;
  a2[2].n128_u64[0] = v11;
  return result;
}

double static FavoriteTileStyle.currentBig.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E74624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    sub_1C2E74674();
    (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
    v8 = sub_1C2E74664();

    (*(v3 + 8))(v5, v2);
    result = 1.52;
    *a1 = xmmword_1C2E7FF90;
    *(a1 + 16) = xmmword_1C2E7FFA0;
    *(a1 + 32) = v8;
  }

  else
  {

    return static FavoriteTileStyle.phoneBig.getter(a1);
  }

  return result;
}

void (*EnvironmentValues.favoriteTileStyle.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *(v3 + 88) = sub_1C2C6EEF0();
  sub_1C2E73BB4();
  return sub_1C2D0075C;
}

void sub_1C2D0075C(_OWORD **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  *(v2 + 40) = **a1;
  v4 = *(v2 + 4);
  *(v2 + 56) = v3;
  *(v2 + 9) = v4;
  if (a2)
  {

    sub_1C2E73BC4();
  }

  else
  {
    sub_1C2E73BC4();
  }

  free(v2);
}

uint64_t DoubleLineCellView.init(state:leadingView:trailingView:titleLeadingText:titleTrailingView:subtitleView:subtitleTrailingView:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t (*a5)(void)@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, void (*a10)(uint64_t))
{
  v15 = type metadata accessor for DoubleLineCellView();
  v16 = a6 + v15[31];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  v17 = v15[32];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  v18 = sub_1C2C6E3A4(a1, a6);
  v19 = a2(v18);
  v20 = a3(v19);
  v21 = a4(v20);
  v22 = a6 + v15[27];
  *v22 = v21;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24 & 1;
  *(v22 + 24) = v25;
  v26 = a5();
  v27 = a8(v26);
  a10(v27);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DoubleLineCellViewStateModel.title.getter()
{
  v1 = *v0;
  sub_1C2C72330(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t DoubleLineCellViewStateModel.title.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C2C72340(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t DoubleLineCellViewStateModel.titleColor.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t DoubleLineCellViewStateModel.subtitleTruncatedSuffix.getter()
{
  v1 = v0[5];
  sub_1C2C7DD04(v1, v0[6], v0[7], v0[8]);
  return v1;
}

uint64_t DoubleLineCellViewStateModel.subtitleTruncatedSuffix.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C2C7F6D4(v4[5], v4[6], v4[7], v4[8]);
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

uint64_t DoubleLineCellViewStateModel.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t DoubleLineCellViewStateModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

__n128 DoubleLineCellViewStateModel.init(title:titleColor:subtitleTruncatedSuffix:accessibilityIdentifier:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u8[0] = a3 & 1;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t sub_1C2D00C6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C2E73BA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 124);
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  if (*(v9 + 32) == 1)
  {
    *a2 = v11;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  else
  {

    sub_1C2E75FD4();
    v15 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2CFAECC(v11, v10, v12, v13, 0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C2D00E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C2E73BA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C2C736A4(v2 + *(a1 + 128), &v15 - v10, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C2E73554();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C2E75FD4();
    v14 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C2D01020()
{
  v1 = *v0;
  sub_1C2C72330(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

uint64_t sub_1C2D01080()
{
  v1 = v0[5];
  sub_1C2C7DD04(v1, v0[6], v0[7], v0[8]);
  return v1;
}

uint64_t sub_1C2D010D0()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1C2D01100(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  LOBYTE(v4) = v8;
  v9 = sub_1C2E747C4();
  v11 = v10;
  v13 = v12;
  sub_1C2C72340(v5, v7, v4 & 1);

  sub_1C2D00C6C(a1, v22);

  v14 = sub_1C2E747F4();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;
  sub_1C2C72340(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v22[0] = v14;
  v22[1] = v16;
  LOBYTE(v23) = v7 & 1;
  v24 = v19;
  v25 = KeyPath;
  v26 = 2;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F580);
  sub_1C2C74F38();
  sub_1C2E74C54();
  sub_1C2C72340(v14, v16, v7 & 1);
}

uint64_t sub_1C2D012DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F578);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v48 - v6;
  v7 = sub_1C2E74874();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v9 = sub_1C2E73654();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = *(a1 + 80);
  v13 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v63 = v12;
  v64 = v13;
  WitnessTable = swift_getWitnessTable();
  v61 = v9;
  v62 = WitnessTable;
  v49 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v48 - v16;
  sub_1C2E74384();
  v51 = OpaqueTypeMetadata2;
  v18 = sub_1C2E73654();
  v52 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v53 = v11;
  sub_1C2E74E54();
  v24 = v3[3];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v24);
  v26 = (*(v25 + 24))(v24, v25);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = v26;
    v33 = v27;
    sub_1C2C72330(v26, v27, v28 & 1);

    v34 = v48;
    sub_1C2E74864();
    sub_1C2C7F6D4(v32, v33, v31, v30);
    sub_1C2C72340(v32, v33, v31 & 1);

    v36 = v56;
    v35 = v57;
    (*(v56 + 56))(v34, 0, 1, v57);
    v37 = v54;
    (*(v36 + 32))(v54, v34, v35);
    v38 = v37;
  }

  else
  {
    v36 = v56;
    v35 = v57;
    v39 = v48;
    (*(v56 + 56))(v48, 1, 1, v57);
    v38 = v54;
    sub_1C2E74854();
    if ((*(v36 + 48))(v39, 1, v35) != 1)
    {
      sub_1C2C73644(v39, &qword_1EC05F578);
    }
  }

  v40 = v49;
  v41 = v53;
  sub_1C2E74964();
  (*(v36 + 8))(v38, v35);
  (*(v55 + 8))(v41, v9);
  v61 = v9;
  v62 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v51;
  sub_1C2E74C54();
  (*(v50 + 8))(v17, v43);
  v44 = sub_1C2D06C00();
  v59 = OpaqueTypeConformance2;
  v60 = v44;
  v45 = swift_getWitnessTable();
  sub_1C2C6EE48(v21, v18, v45);
  v46 = *(v52 + 8);
  v46(v21, v18);
  sub_1C2C6EE48(v23, v18, v45);
  return (v46)(v23, v18);
}

uint64_t sub_1C2D018F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = *(a1 + 16);
  v37 = sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  v21 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  v20 = *(a1 + 40);
  v3 = sub_1C2E73654();
  v19 = *(a1 + 80);
  v35 = v19;
  v36 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v33 = v3;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v4 = *(a1 + 48);
  sub_1C2E73654();
  sub_1C2E73654();
  v5 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v38 = sub_1C2E752E4();
  v39 = v5;
  v6 = *(a1 + 24);
  v40 = sub_1C2E73654();
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  v7 = sub_1C2E75214();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  *&v14 = v22;
  *(&v14 + 1) = v6;
  *&v15 = v21;
  *(&v15 + 1) = v20;
  v25 = v14;
  v26 = v15;
  v27 = v4;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  v30 = v19;
  v31 = *(a1 + 88);
  v32 = v23;
  sub_1C2E73C24();
  sub_1C2E75204();
  v16 = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v7, v16);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1C2C6EE48(v13, v7, v16);
  return (v17)(v13, v7);
}

uint64_t sub_1C2D01E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void, void), uint64_t a11, uint64_t a12)
{
  v64 = a7;
  v65 = a8;
  v75 = a6;
  v80 = a5;
  v81 = a2;
  v82 = a4;
  v63 = a3;
  v66 = a1;
  v71 = a9;
  v83 = a12;
  v84 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v12 = sub_1C2E73654();
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v85 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  v87 = sub_1C2E73654();
  v17 = sub_1C2E73654();
  v67 = MEMORY[0x1E6980A18];
  v18 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v57 = a11;
  v120 = a11;
  v121 = v18;
  v77 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v110 = v17;
  v111 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v20 = v75;
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v59 = sub_1C2E75844();
  v58 = swift_getWitnessTable();
  v74 = sub_1C2E752E4();
  v79 = *(v74 - 8);
  v21 = MEMORY[0x1EEE9AC00](v74);
  v86 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v56 - v23;
  v24 = v81;
  v73 = sub_1C2E73654();
  v76 = *(v73 - 8);
  v25 = MEMORY[0x1EEE9AC00](v73);
  v72 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v56 - v27;
  v28 = v63;
  v110 = v24;
  v111 = v63;
  v112 = v82;
  v113 = v80;
  v29 = v64;
  v30 = v65;
  v114 = v20;
  v115 = v64;
  v116 = v65;
  v117 = v84;
  v118 = a11;
  v119 = v83;
  v31 = type metadata accessor for DoubleLineCellView();
  sub_1C2E744A4();
  v32 = v66;
  sub_1C2D00C6C(v31, &v110);

  v33 = v72;
  v34 = v81;
  sub_1C2E74D84();
  v108 = v29;
  v109 = MEMORY[0x1E697E5D8];
  v35 = v73;
  v60 = swift_getWitnessTable();
  sub_1C2C6EE48(v33, v35, v60);
  v36 = *(v76 + 8);
  v61 = v76 + 8;
  v62 = v36;
  v37 = v33;
  v36(v33, v35);
  sub_1C2E73DD4();
  v88 = v34;
  v89 = v28;
  v90 = v82;
  v91 = v80;
  v92 = v75;
  v93 = v29;
  v94 = v30;
  v95 = v84;
  v96 = v57;
  v97 = v83;
  v98 = v32;
  v38 = v86;
  sub_1C2E752D4();
  v39 = v74;
  v82 = swift_getWitnessTable();
  sub_1C2C6EE48(v38, v39, v82);
  v40 = *(v79 + 8);
  v83 = v79 + 8;
  v84 = v40;
  v40(v38, v39);
  sub_1C2D00C6C(v31, &v110);
  v81 = v113;

  sub_1C2D00C6C(v31, &v110);

  v41 = v85;
  sub_1C2E74CE4();

  v42 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v106 = v30;
  v107 = v42;
  v43 = v69;
  v77 = swift_getWitnessTable();
  v44 = v68;
  sub_1C2C6EE48(v41, v43, v77);
  v45 = v70;
  v80 = *(v70 + 8);
  (v80)(v41, v43);
  v46 = v37;
  v47 = v37;
  v48 = v73;
  (*(v76 + 16))(v47, v87, v73);
  v110 = v46;
  v49 = v78;
  v50 = v86;
  v51 = v74;
  (*(v79 + 16))(v86, v78, v74);
  v104 = v81;
  v105 = 0;
  v111 = v50;
  v112 = &v104;
  (*(v45 + 16))(v41, v44, v43);
  v113 = v41;
  v103[0] = v48;
  v103[1] = v51;
  v103[2] = MEMORY[0x1E6981840];
  v103[3] = v43;
  v99 = v60;
  v100 = v82;
  v101 = MEMORY[0x1E6981838];
  v102 = v77;
  sub_1C2C6EC40(&v110, 4uLL, v103);
  v52 = v80;
  (v80)(v44, v43);
  v53 = v84;
  v84(v49, v51);
  v54 = v62;
  v62(v87, v48);
  (v52)(v85, v43);
  v53(v86, v51);
  return v54(v72, v48);
}

uint64_t sub_1C2D02784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v118 = a7;
  v119 = a8;
  v111 = a6;
  v113 = a5;
  v114 = a2;
  v108 = a4;
  v115 = a3;
  v123 = a1;
  v103 = a9;
  v117 = a12;
  v116 = a10;
  v124 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v12 = sub_1C2E73654();
  v120 = MEMORY[0x1E6980A18];
  v164 = a11;
  v165 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v110 = MEMORY[0x1E697E858];
  v150 = v12;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E74384();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  v91 = sub_1C2E75844();
  v90 = swift_getWitnessTable();
  v93 = sub_1C2E75214();
  v98 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v112 = &v79 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v95 = sub_1C2E73654();
  v101 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v79 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  v96 = sub_1C2E73654();
  v102 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v79 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  v16 = sub_1C2E73654();
  v17 = *(v16 - 8);
  v99 = v16;
  v100 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v79 - v20;
  v107 = sub_1C2E750B4();
  v121 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  v22 = v108;
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v23 = sub_1C2E75214();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v79 - v25;
  v27 = sub_1C2E73654();
  v88 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v79 - v28;
  v105 = sub_1C2E73654();
  v109 = *(v105 - 8);
  v30 = MEMORY[0x1EEE9AC00](v105);
  v104 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v122 = &v79 - v32;
  sub_1C2E73C04();
  v136 = v114;
  v137 = v115;
  v138 = v22;
  v139 = v113;
  v140 = v111;
  v141 = v118;
  v142 = v119;
  v143 = v116;
  v33 = v123;
  v144 = v124;
  v145 = v117;
  v146 = v123;
  sub_1C2E75204();
  v34 = v33;
  v36 = v33[3];
  v35 = v33[4];
  __swift_project_boxed_opaque_existential_1(v34, v36);
  v150 = (*(v35 + 16))(v36, v35);
  v79 = MEMORY[0x1E69817F8];
  v37 = swift_getWitnessTable();
  sub_1C2E74A94();

  (*(v24 + 8))(v26, v23);
  v85 = *MEMORY[0x1E69816C8];
  v38 = v121;
  v39 = *(v121 + 104);
  v83 = v121 + 104;
  v84 = v39;
  v41 = v106;
  v40 = v107;
  v39(v106);
  v82 = sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
  v162 = v37;
  v163 = v82;
  v42 = swift_getWitnessTable();
  v43 = v104;
  sub_1C2E74944();
  v44 = *(v38 + 8);
  v121 = v38 + 8;
  v81 = v44;
  v44(v41, v40);
  v88[1](v29, v27);
  v80 = sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0);
  v160 = v42;
  v161 = v80;
  v45 = v105;
  v86 = swift_getWitnessTable();
  sub_1C2C6EE48(v43, v45, v86);
  v46 = *(v109 + 8);
  v87 = v109 + 8;
  v88 = v46;
  (v46)(v43, v45);
  sub_1C2E73C04();
  v47 = v114;
  v48 = v115;
  v125 = v114;
  v126 = v115;
  v49 = v108;
  v50 = v113;
  v127 = v108;
  v128 = v113;
  v51 = v111;
  v53 = v118;
  v52 = v119;
  v129 = v111;
  v130 = v118;
  v55 = v116;
  v54 = v117;
  v131 = v119;
  v132 = v116;
  v133 = v124;
  v134 = v117;
  v135 = v123;
  sub_1C2E75204();
  v150 = v47;
  WitnessTable = v48;
  v152 = v49;
  v153 = v50;
  v154 = v51;
  v155 = v53;
  v156 = v52;
  v157 = v55;
  v158 = v124;
  v159 = v54;
  v56 = type metadata accessor for DoubleLineCellView();
  sub_1C2D00C6C(v56, &v150);

  v57 = v93;
  v58 = swift_getWitnessTable();
  v59 = v89;
  v60 = v112;
  sub_1C2E74CE4();

  (*(v98 + 8))(v60, v57);
  v150 = sub_1C2E74FA4();
  v61 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v149[6] = v58;
  v149[7] = v61;
  v62 = v95;
  v63 = swift_getWitnessTable();
  v64 = v92;
  sub_1C2E74A94();

  (*(v101 + 8))(v59, v62);
  v65 = v106;
  v66 = v107;
  v84(v106, v85, v107);
  v149[4] = v63;
  v149[5] = v82;
  v67 = v96;
  v68 = swift_getWitnessTable();
  v69 = v94;
  sub_1C2E74944();
  v81(v65, v66);
  (*(v102 + 8))(v64, v67);
  v149[2] = v68;
  v149[3] = v80;
  v70 = v99;
  v71 = swift_getWitnessTable();
  v72 = v97;
  sub_1C2C6EE48(v69, v70, v71);
  v73 = v100;
  v74 = *(v100 + 8);
  v74(v69, v70);
  v76 = v104;
  v75 = v105;
  (*(v109 + 16))(v104, v122, v105);
  v150 = v76;
  (*(v73 + 16))(v69, v72, v70);
  WitnessTable = v69;
  v149[0] = v75;
  v149[1] = v70;
  v147 = v86;
  v148 = v71;
  sub_1C2C6EC40(&v150, 2uLL, v149);
  v74(v72, v70);
  v77 = v88;
  (v88)(v122, v75);
  v74(v69, v70);
  return (v77)(v76, v75);
}

uint64_t sub_1C2D03430@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a7;
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v41 = a1;
  v56 = a8;
  v43 = a11;
  v42 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v13 = sub_1C2E73654();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v16 = sub_1C2E73654();
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v40 - v17;
  sub_1C2E74384();
  v18 = sub_1C2E73654();
  v53 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v40 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F568);
  v23 = MEMORY[0x1EEE9AC00](v55);
  v50 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v47 = &v40 - v25;
  v69 = v41;
  v70 = a2;
  v71 = a3;
  v72 = v44;
  v73 = v45;
  v74 = v46;
  v75 = v48;
  v76 = a9;
  v77 = v42;
  v78 = v43;
  v26 = type metadata accessor for DoubleLineCellView();
  sub_1C2D01100(v26);
  sub_1C2D00C6C(v26, &v69);

  sub_1C2E74CE4();

  v27 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v67 = a9;
  v68 = v27;
  WitnessTable = swift_getWitnessTable();
  v29 = v49;
  sub_1C2E74E54();
  (*(v52 + 8))(v15, v13);
  v30 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v65 = WitnessTable;
  v66 = v30;
  v31 = swift_getWitnessTable();
  sub_1C2E74C54();
  (*(v54 + 8))(v29, v16);
  v32 = sub_1C2D06C00();
  v63 = v31;
  v64 = v32;
  v33 = swift_getWitnessTable();
  v34 = v51;
  sub_1C2C6EE48(v21, v18, v33);
  v35 = v53;
  v36 = *(v53 + 8);
  v36(v21, v18);
  v37 = v47;
  v38 = v50;
  sub_1C2C736A4(v47, v50, &qword_1EC05F568);
  v61 = 0x4014000000000000;
  v62 = 0;
  v69 = v38;
  v70 = &v61;
  (*(v35 + 16))(v21, v34, v18);
  v71 = v21;
  v60[0] = v55;
  v60[1] = MEMORY[0x1E6981840];
  v60[2] = v18;
  v57 = sub_1C2C7A37C();
  v58 = MEMORY[0x1E6981838];
  v59 = v33;
  sub_1C2C6EC40(&v69, 3uLL, v60);
  v36(v34, v18);
  sub_1C2C73644(v37, &qword_1EC05F568);
  v36(v21, v18);
  return sub_1C2C73644(v38, &qword_1EC05F568);
}

uint64_t sub_1C2D03A78@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a8;
  v49 = a7;
  v47 = a4;
  v45 = a3;
  v44 = a2;
  v51 = a1;
  v59 = a9;
  v48 = a12;
  v46 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v42[1] = a6;
  v54 = sub_1C2E73654();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v42 - v14;
  sub_1C2E74384();
  v56 = sub_1C2E73654();
  v57 = *(v56 - 8);
  v15 = MEMORY[0x1EEE9AC00](v56);
  v52 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = v42 - v17;
  v18 = sub_1C2E73654();
  v43 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v83 = a11;
  v84 = v43;
  v42[2] = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v73 = v18;
  v74 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1C2E73654();
  v60 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v42 - v24;
  v73 = v44;
  v74 = v45;
  v75 = v47;
  v76 = a5;
  v77 = a6;
  v78 = v49;
  v79 = v50;
  v80 = v46;
  v26 = v48;
  v81 = a11;
  v82 = v48;
  v27 = type metadata accessor for DoubleLineCellView();
  sub_1C2D012DC(v27, v23);
  v73 = v18;
  v74 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C2D06C00();
  v71 = OpaqueTypeConformance2;
  v72 = v29;
  v47 = swift_getWitnessTable();
  sub_1C2C6EE48(v23, v20, v47);
  v49 = *(v60 + 8);
  v50 = v60 + 8;
  v49(v23, v20);
  v30 = v53;
  sub_1C2E74E54();
  v69 = v26;
  v70 = v43;
  v31 = v54;
  v32 = swift_getWitnessTable();
  v33 = v52;
  sub_1C2E74C54();
  (*(v58 + 8))(v30, v31);
  v67 = v32;
  v68 = v29;
  v34 = v56;
  v35 = swift_getWitnessTable();
  v36 = v55;
  v37 = v33;
  sub_1C2C6EE48(v33, v34, v35);
  v38 = v57;
  v39 = *(v57 + 8);
  v39(v37, v34);
  (*(v60 + 16))(v23, v25, v20);
  v65 = 0;
  v66 = 1;
  v73 = v23;
  v74 = &v65;
  (*(v38 + 16))(v37, v36, v34);
  v75 = v37;
  v64[0] = v20;
  v64[1] = MEMORY[0x1E6981840];
  v64[2] = v34;
  v61 = v47;
  v62 = MEMORY[0x1E6981838];
  v63 = v35;
  sub_1C2C6EC40(&v73, 3uLL, v64);
  v39(v36, v34);
  v40 = v49;
  v49(v25, v20);
  v39(v37, v34);
  return v40(v23, v20);
}

uint64_t sub_1C2D040F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v21 = *(a1 + 32);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  v19[1] = sub_1C2E73654();
  v3 = *(a1 + 40);
  v4 = sub_1C2E73654();
  v20 = *(a1 + 80);
  v34 = v20;
  v35 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v32 = v4;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v5 = *(a1 + 48);
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  v6 = *(a1 + 24);
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v7 = sub_1C2E752E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  sub_1C2E73DD4();
  *&v14 = *(a1 + 16);
  *(&v14 + 1) = v6;
  *&v15 = v21;
  *(&v15 + 1) = v3;
  v24 = v14;
  v25 = v15;
  v26 = v5;
  v27 = *(a1 + 56);
  v28 = *(a1 + 72);
  v29 = v20;
  v30 = *(a1 + 88);
  v31 = v22;
  sub_1C2E752D4();
  v16 = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v7, v16);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1C2C6EE48(v13, v7, v16);
  return (v17)(v13, v7);
}

uint64_t sub_1C2D0457C@<X0>(void *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v136 = a8;
  v137 = a7;
  v119 = a6;
  v121 = a5;
  v134 = a3;
  v135 = a2;
  v130 = a1;
  v113 = a9;
  v124 = a12;
  v122 = a10;
  v133 = a11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v13 = sub_1C2E73654();
  v14 = *(v13 - 8);
  v111 = v13;
  v112 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v127 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v88 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v18 = sub_1C2E73654();
  v126 = MEMORY[0x1E6980A18];
  v19 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v179 = a11;
  v180 = v19;
  v117 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v164 = v18;
  v165 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E74384();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v100 = sub_1C2E75844();
  v103 = sub_1C2E75024();
  v106 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v120 = &v88 - v21;
  v104 = sub_1C2E73654();
  v108 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v88 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  v105 = sub_1C2E73654();
  v109 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v88 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  v107 = sub_1C2E73654();
  v125 = *(v107 - 8);
  v24 = MEMORY[0x1EEE9AC00](v107);
  v131 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v88 - v26;
  v115 = sub_1C2E750B4();
  v128 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  v89 = a4;
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v28 = sub_1C2E75024();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v88 - v30;
  v32 = sub_1C2E73654();
  v99 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - v33;
  v116 = sub_1C2E73654();
  v118 = *(v116 - 8);
  v35 = MEMORY[0x1EEE9AC00](v116);
  v129 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v88 - v37;
  v149 = v135;
  v150 = v134;
  v151 = a4;
  v152 = v121;
  v153 = v119;
  v154 = v137;
  v155 = v136;
  v156 = v122;
  v157 = v133;
  v158 = v124;
  v38 = v130;
  v159 = v130;
  v88 = MEMORY[0x1E6981F48];
  v39 = swift_getWitnessTable();
  sub_1C2E75014();
  v40 = v38;
  v42 = v38[3];
  v41 = v38[4];
  __swift_project_boxed_opaque_existential_1(v40, v42);
  v164 = (*(v41 + 16))(v42, v41);
  v178 = v39;
  v90 = MEMORY[0x1E6981600];
  v43 = swift_getWitnessTable();
  sub_1C2E74A94();

  (*(v29 + 8))(v31, v28);
  v96 = *MEMORY[0x1E69816C8];
  v44 = v128;
  v45 = *(v128 + 104);
  v94 = v128 + 104;
  v95 = v45;
  v47 = v114;
  v46 = v115;
  v45(v114);
  v93 = sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
  v176 = v43;
  v177 = v93;
  v48 = swift_getWitnessTable();
  v49 = v129;
  sub_1C2E74944();
  v50 = *(v44 + 8);
  v128 = v44 + 8;
  v92 = v50;
  v50(v47, v46);
  v99[1](v34, v32);
  v91 = sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0);
  v174 = v48;
  v175 = v91;
  v51 = v116;
  v97 = swift_getWitnessTable();
  sub_1C2C6EE48(v49, v51, v97);
  v52 = *(v118 + 8);
  v98 = v118 + 8;
  v99 = v52;
  (v52)(v49, v51);
  v53 = v134;
  v138 = v135;
  v139 = v134;
  v54 = v89;
  v55 = v121;
  v56 = v122;
  v140 = v89;
  v141 = v121;
  v57 = v119;
  v58 = v136;
  v142 = v119;
  v143 = v137;
  v144 = v136;
  v145 = v122;
  v59 = v124;
  v146 = v133;
  v147 = v124;
  v148 = v130;
  v60 = swift_getWitnessTable();
  sub_1C2E75014();
  v164 = v135;
  v165 = v53;
  v166 = v54;
  v167 = v55;
  v168 = v57;
  v169 = v137;
  v170 = v58;
  v171 = v56;
  v172 = v133;
  v173 = v59;
  v124 = type metadata accessor for DoubleLineCellView();
  sub_1C2D00C6C(v124, &v164);

  v163[11] = v60;
  v61 = v103;
  v62 = swift_getWitnessTable();
  v63 = v101;
  v64 = v120;
  sub_1C2E74CE4();

  (*(v106 + 8))(v64, v61);
  v164 = sub_1C2E74FA4();
  v137 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v163[9] = v62;
  v163[10] = v137;
  v65 = v104;
  v66 = swift_getWitnessTable();
  v67 = v102;
  sub_1C2E74A94();

  (*(v108 + 8))(v63, v65);
  v69 = v114;
  v68 = v115;
  v95(v114, v96, v115);
  v163[7] = v66;
  v163[8] = v93;
  v70 = v105;
  v71 = swift_getWitnessTable();
  v72 = v131;
  sub_1C2E74944();
  v92(v69, v68);
  (*(v109 + 8))(v67, v70);
  v163[5] = v71;
  v163[6] = v91;
  v73 = v107;
  v128 = swift_getWitnessTable();
  sub_1C2C6EE48(v72, v73, v128);
  v74 = *(v125 + 8);
  v133 = v125 + 8;
  v135 = v74;
  v74(v72, v73);
  sub_1C2D00C6C(v124, &v164);

  v75 = v127;
  v76 = v136;
  sub_1C2E74CE4();

  v163[3] = v76;
  v163[4] = v137;
  v77 = v111;
  v136 = swift_getWitnessTable();
  v78 = v110;
  sub_1C2C6EE48(v75, v77, v136);
  v79 = v112;
  v137 = *(v112 + 8);
  v137(v75, v77);
  v80 = v129;
  v81 = v116;
  (*(v118 + 16))(v129, v132, v116);
  v164 = v80;
  v82 = v131;
  v83 = v123;
  (*(v125 + 16))(v131, v123, v73);
  v165 = v82;
  (*(v79 + 16))(v75, v78, v77);
  v166 = v75;
  v163[0] = v81;
  v163[1] = v73;
  v163[2] = v77;
  v160 = v97;
  v161 = v128;
  v162 = v136;
  sub_1C2C6EC40(&v164, 3uLL, v163);
  v84 = v137;
  v137(v78, v77);
  v85 = v135;
  v135(v83, v73);
  v86 = v99;
  (v99)(v132, v81);
  v84(v127, v77);
  v85(v131, v73);
  return (v86)(v129, v81);
}

uint64_t sub_1C2D053E8@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a7;
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v40 = a2;
  v39 = a1;
  v53 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  v12 = sub_1C2E73654();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v15 = sub_1C2E73654();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_1C2E74384();
  v47 = sub_1C2E73654();
  v51 = *(v47 - 8);
  v18 = MEMORY[0x1EEE9AC00](v47);
  v45 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v38 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F568);
  v21 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v38 - v23;
  v58 = v39;
  v59 = v40;
  v60 = a3;
  v61 = v41;
  v62 = v42;
  v63 = v43;
  v64 = v44;
  v65 = a9;
  v66 = a10;
  v67 = a11;
  v24 = type metadata accessor for DoubleLineCellView();
  sub_1C2D01100(v24);
  sub_1C2D00C6C(v24, &v58);

  sub_1C2E74CE4();

  v25 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  v57[6] = a9;
  v57[7] = v25;
  WitnessTable = swift_getWitnessTable();
  sub_1C2E74E54();
  (*(v50 + 8))(v14, v12);
  v27 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v57[4] = WitnessTable;
  v57[5] = v27;
  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_1C2E74C54();
  (*(v52 + 8))(v17, v15);
  v30 = sub_1C2D06C00();
  v57[2] = v28;
  v57[3] = v30;
  v31 = v47;
  v32 = swift_getWitnessTable();
  v33 = v48;
  sub_1C2C6EE48(v29, v31, v32);
  v34 = v51;
  v35 = *(v51 + 8);
  v35(v29, v31);
  v36 = v46;
  sub_1C2C736A4(v54, v46, &qword_1EC05F568);
  v58 = v36;
  (*(v34 + 16))(v29, v33, v31);
  v59 = v29;
  v57[0] = v49;
  v57[1] = v31;
  v55 = sub_1C2C7A37C();
  v56 = v32;
  sub_1C2C6EC40(&v58, 2uLL, v57);
  v35(v33, v31);
  sub_1C2C73644(v54, &qword_1EC05F568);
  v35(v29, v31);
  return sub_1C2C73644(v36, &qword_1EC05F568);
}

uint64_t sub_1C2D059D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a8;
  v55 = a7;
  v52 = a4;
  v50 = a3;
  v49 = a2;
  v54 = a1;
  v65 = a9;
  v53 = a12;
  v51 = a10;
  sub_1C2E74384();
  v44 = a6;
  v61 = sub_1C2E73654();
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v44 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  v58 = sub_1C2E73654();
  v63 = *(v58 - 8);
  v15 = MEMORY[0x1EEE9AC00](v58);
  v59 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v44 - v17;
  v18 = sub_1C2E73654();
  v57 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v80 = a11;
  v81 = v57;
  v48 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v70 = v18;
  v71 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1C2E73654();
  v66 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v44 - v24;
  v70 = v49;
  v71 = v50;
  v72 = v52;
  v73 = a5;
  v74 = a6;
  v75 = v55;
  v76 = v56;
  v77 = v51;
  v25 = v53;
  v78 = a11;
  v79 = v53;
  v26 = type metadata accessor for DoubleLineCellView();
  sub_1C2D012DC(v26, v23);
  v70 = v18;
  v71 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C2D06C00();
  v69[6] = OpaqueTypeConformance2;
  v69[7] = v28;
  v55 = swift_getWitnessTable();
  v45 = v23;
  v46 = v20;
  sub_1C2C6EE48(v23, v20, v55);
  v29 = *(v66 + 8);
  v52 = v66 + 8;
  v56 = v29;
  v29(v23, v20);
  v30 = v60;
  sub_1C2E74C54();
  v69[4] = v25;
  v69[5] = v28;
  v31 = v61;
  v32 = swift_getWitnessTable();
  v33 = v59;
  sub_1C2E74E54();
  (*(v64 + 8))(v30, v31);
  v69[2] = v32;
  v69[3] = v57;
  v34 = v58;
  v35 = swift_getWitnessTable();
  v36 = v62;
  sub_1C2C6EE48(v33, v34, v35);
  v37 = v63;
  v38 = *(v63 + 8);
  v38(v33, v34);
  v39 = v45;
  v40 = v47;
  v41 = v46;
  (*(v66 + 16))(v45, v47, v46);
  v70 = v39;
  (*(v37 + 16))(v33, v36, v34);
  v71 = v33;
  v69[0] = v41;
  v69[1] = v34;
  v67 = v55;
  v68 = v35;
  sub_1C2C6EC40(&v70, 2uLL, v69);
  v38(v36, v34);
  v42 = v56;
  v56(v40, v41);
  v38(v33, v34);
  return v42(v39, v41);
}

uint64_t sub_1C2D06048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a8;
  v60 = a7;
  v64 = a6;
  v66 = a5;
  v67 = a4;
  v54 = a3;
  v57 = a2;
  v62 = a1;
  v63 = a9;
  v59 = a12;
  v58 = a10;
  v65 = a11;
  v70 = sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  v12 = sub_1C2E73654();
  v56 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570);
  v84 = a11;
  v85 = v56;
  v55 = MEMORY[0x1E697E858];
  v82 = v12;
  WitnessTable = swift_getWitnessTable();
  v53 = MEMORY[0x1E69811A0];
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  v13 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v71 = sub_1C2E752E4();
  v72 = v13;
  v14 = v54;
  v73 = sub_1C2E73654();
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  v15 = sub_1C2E75214();
  v52 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v49 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  v19 = sub_1C2E73654();
  v80 = v65;
  v81 = v56;
  v20 = swift_getWitnessTable();
  v70 = v19;
  v71 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  v21 = v14;
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v22 = sub_1C2E752E4();
  v49 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - v26;
  v28 = sub_1C2E73554();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v15;
  v55 = sub_1C2E73F54();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v33 = &v49 - v32;
  v70 = v57;
  v71 = v21;
  v72 = v67;
  v73 = v66;
  v74 = v64;
  v75 = v60;
  v76 = v61;
  v77 = v58;
  v78 = v65;
  v79 = v59;
  v34 = type metadata accessor for DoubleLineCellView();
  sub_1C2D00E1C(v34, v31);
  v35 = sub_1C2E73544();
  (*(v29 + 8))(v31, v28);
  if (v35)
  {
    sub_1C2D040F4(v34, v25);
    v36 = swift_getWitnessTable();
    sub_1C2C6EE48(v25, v22, v36);
    v37 = *(v49 + 8);
    v37(v25, v22);
    sub_1C2C6EE48(v27, v22, v36);
    swift_getWitnessTable();
    sub_1C2C76E34(v25, v22);
    v37(v25, v22);
    v38 = v27;
    v39 = v22;
  }

  else
  {
    v40 = v51;
    sub_1C2D018F4(v34, v51);
    v41 = v56;
    v42 = swift_getWitnessTable();
    v43 = v50;
    sub_1C2C6EE48(v40, v41, v42);
    v37 = *(v52 + 8);
    v37(v40, v41);
    sub_1C2C6EE48(v43, v41, v42);
    swift_getWitnessTable();
    sub_1C2C78970(v40, v22, v41);
    v37(v40, v41);
    v38 = v43;
    v39 = v41;
  }

  v37(v38, v39);
  v44 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v68 = v44;
  v69 = v45;
  v46 = v55;
  v47 = swift_getWitnessTable();
  sub_1C2C6EE48(v33, v46, v47);
  return (*(v53 + 8))(v33, v46);
}

unint64_t sub_1C2D06C00()
{
  result = qword_1EDDCDA08;
  if (!qword_1EDDCDA08)
  {
    sub_1C2E74384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDA08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2D06D50(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v38 = *(a3[2] - 8);
  v3 = *(v38 + 84);
  v4 = *(a3[3] - 8);
  v35 = v3;
  v34 = *(v4 + 84);
  if (v3 <= v34)
  {
    v3 = *(v4 + 84);
  }

  v5 = *(a3[4] - 8);
  v33 = *(v5 + 84);
  if (v3 <= v33)
  {
    v3 = *(v5 + 84);
  }

  v6 = *(a3[5] - 8);
  v32 = *(v6 + 84);
  if (v3 <= v32)
  {
    v3 = *(v6 + 84);
  }

  v7 = *(a3[6] - 8);
  v8 = *(v7 + 84);
  if (v3 > v8)
  {
    v8 = v3;
  }

  v36 = v8;
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1C2E73554() - 8);
  v11 = *(v10 + 64);
  v12 = *(v38 + 80);
  v13 = *(v38 + 64);
  v14 = *(v4 + 80);
  v15 = *(v5 + 80);
  v16 = *(v6 + 80);
  v17 = *(v7 + 80);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + 7;
  v19 = v15 + 32;
  v20 = *(v5 + 64) + v16;
  v21 = *(v6 + 64) + v17;
  if (a2 <= v9)
  {
    goto LABEL_36;
  }

  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = v11 + ((v22 + ((*(v7 + 64) + ((v21 + ((v20 + ((v19 + ((v18 + ((v13 + v14 + ((v12 + 40) & ~v12)) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v16)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v9 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v27 < 2)
    {
LABEL_36:
      if ((v36 & 0x80000000) != 0)
      {
        v30 = (a1 + v12 + 40) & ~v12;
        if (v35 == v9)
        {
          v31 = *(v38 + 48);
        }

        else
        {
          v30 = (v30 + v13 + v14) & ~v14;
          if (v34 == v9)
          {
            v31 = *(v4 + 48);
          }

          else
          {
            v30 = (v19 + ((v18 + v30) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
            if (v33 == v9)
            {
              v31 = *(v5 + 48);
            }

            else
            {
              v30 = (v20 + v30) & ~v16;
              if (v32 == v9)
              {
                v31 = *(v6 + 48);
              }

              else
              {
                v31 = *(v7 + 48);
                v30 = (v21 + v30) & ~v17;
              }
            }
          }
        }

        return v31(v30);
      }

      else
      {
        v29 = *(a1 + 3);
        if (v29 >= 0xFFFFFFFF)
        {
          LODWORD(v29) = -1;
        }

        return (v29 + 1);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_36;
  }

LABEL_25:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v9 + (v23 | v28) + 1;
}

void sub_1C2D0726C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v45 = v4;
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v39 = v6;
  v37 = v5;
  v36 = *(v6 + 84);
  if (v5 <= v36)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(a4[4] - 8);
  v44 = v7;
  v35 = *(v7 + 84);
  if (v5 <= v35)
  {
    v5 = *(v7 + 84);
  }

  v8 = *(a4[5] - 8);
  v34 = *(v8 + 84);
  if (v5 <= v34)
  {
    v5 = *(v8 + 84);
  }

  v9 = *(a4[6] - 8);
  v10 = *(v9 + 84);
  if (v5 > v10)
  {
    v10 = v5;
  }

  v38 = v10;
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v40 = v11;
  v12 = *(sub_1C2E73554() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v6 + 64) + 7;
  v18 = *(v7 + 80);
  v19 = *(v8 + 80);
  v20 = *(v7 + 64) + v19;
  v21 = *(v9 + 80);
  v22 = *(v8 + 64) + v21;
  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v13 + ((v23 + ((*(v9 + 64) + ((v22 + ((v20 + ((v18 + 32 + ((v17 + ((v15 + v16 + ((v14 + 40) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v19)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v23) + 1;
  if (a3 <= v40)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v40 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v40 >= a2)
  {
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v25[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      *&v25[v24] = 0;
    }

    else if (v26)
    {
      v25[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!a2)
    {
      return;
    }

LABEL_42:
    if ((v38 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *(v25 + 8) = 0u;
        *(v25 + 24) = 0u;
        *v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v25 + 3) = a2 - 1;
      }

      return;
    }

    v32 = &v25[v14 + 40] & ~v14;
    if (v37 == v40)
    {
      v33 = *(v45 + 56);
    }

    else
    {
      v32 = (v32 + v15 + v16) & ~v16;
      if (v36 == v40)
      {
        v33 = *(v39 + 56);

        goto LABEL_52;
      }

      v32 = (v18 + 32 + ((v17 + v32) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
      if (v35 == v40)
      {
        v33 = *(v44 + 56);
      }

      else
      {
        v32 = (v20 + v32) & ~v19;
        if (v34 == v40)
        {
          v33 = *(v8 + 56);
        }

        else
        {
          v33 = *(v9 + 56);
          v32 = (v22 + v32) & ~v21;
        }
      }
    }

LABEL_52:
    v33(v32);
    return;
  }

  v27 = ~v40 + a2;
  if (v24 < 4)
  {
    v28 = (v27 >> (8 * v24)) + 1;
    if (v24)
    {
      v31 = v27 & ~(-1 << (8 * v24));
      bzero(v25, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *v25 = v31;
          if (v26 > 1)
          {
LABEL_63:
            if (v26 == 2)
            {
              *&v25[v24] = v28;
            }

            else
            {
              *&v25[v24] = v28;
            }

            return;
          }
        }

        else
        {
          *v25 = v27;
          if (v26 > 1)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_60;
      }

      *v25 = v31;
      v25[2] = BYTE2(v31);
    }

    if (v26 > 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    bzero(v25, v24);
    *v25 = v27;
    v28 = 1;
    if (v26 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v26)
  {
    v25[v24] = v28;
  }
}

double ButtonShelfView.init(viewModel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F588);
  sub_1C2E75174();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  result = 22.0;
  *(a2 + 24) = xmmword_1C2E803A0;
  *(a2 + 40) = 0x4046000000000000;
  *a2 = a1;
  return result;
}

uint64_t ButtonShelfView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v37 = *v1;
  v38 = v2;
  v39 = v1[2];
  v3 = v37;
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  v36[0] = v37;
  v5 = sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  v6 = *(v37 + 24);
  if (v6 >> 62)
  {
    goto LABEL_53;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    swift_getKeyPath();
    if (v7 < 5)
    {
LABEL_18:
      v36[0] = v37;
      sub_1C2E71A64();

      v13 = *(v37 + 24);
      if (v13 >> 62)
      {
        v14 = sub_1C2E764E4();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v36[0] = v37;
      sub_1C2E71A64();

      v8 = *(v37 + 24);
      v36[0] = MEMORY[0x1E69E7CC0];
      if (v8 >> 62)
      {
        v9 = sub_1C2E764E4();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9)
      {
        v31 = v4;
        v33 = v5;
        v10 = 0;
        v5 = v8 & 0xC000000000000001;
        v4 = v8 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v5)
          {
            v11 = MEMORY[0x1C6927010](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_17;
            }
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v11 = *(v8 + 8 * v10 + 32);

            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          if (*(v11 + 16))
          {
          }

          else
          {
            sub_1C2E76614();
            sub_1C2E76644();
            sub_1C2E76654();
            sub_1C2E76624();
          }

          ++v10;
        }

        while (v12 != v9);
        v15 = v36[0];
        v4 = v31;
        v5 = v33;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
      {
        v14 = sub_1C2E764E4();
      }

      else
      {
        v14 = *(v15 + 16);
      }
    }

    swift_getKeyPath();
    v36[0] = v37;
    sub_1C2E71A64();

    v16 = *(v37 + 24);
    if (v16 >> 62)
    {
      if (sub_1C2E764E4() < 5)
      {
        break;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5)
    {
      break;
    }

    swift_getKeyPath();
    v36[0] = v37;
    v34 = v5;
    sub_1C2E71A64();

    v17 = *(v37 + 24);
    v36[0] = MEMORY[0x1E69E7CC0];
    if (v17 >> 62)
    {
      v18 = sub_1C2E764E4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v32 = v4;
    v19 = 0;
    v4 = v17 & 0xFFFFFFFFFFFFFF8;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6927010](v19, v17);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_41;
      }

LABEL_37:
      if (*(v20 + 16))
      {
        sub_1C2E76614();
        v5 = *(v36[0] + 16);
        sub_1C2E76644();
        sub_1C2E76654();
        sub_1C2E76624();
      }

      else
      {
      }

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_42;
      }
    }

    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_37;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v22 = v36[0];
    v4 = v32;
LABEL_44:

    v5 = v34;
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      v23 = sub_1C2E764E4();
    }

    else
    {
      v23 = *(v22 + 16);
    }

    if (v23 > 0)
    {
      v24 = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_56;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      v7 = sub_1C2E764E4();
      continue;
    }

    break;
  }

  v24 = 0;
LABEL_56:
  *a1 = v14;
  a1[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F590);
  swift_getKeyPath();
  v36[0] = v3;
  sub_1C2E71A64();

  v36[6] = *(v3 + 24);
  v25 = swift_allocObject();
  v26 = v38;
  v25[1] = v37;
  v25[2] = v26;
  v25[3] = v39;

  sub_1C2D08B04(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F5A0);
  sub_1C2C94F38(&qword_1EC05B2B8, &qword_1EC05F598);
  sub_1C2D08B3C();
  sub_1C2D08ED0(&qword_1EC05CA08, type metadata accessor for ButtonShelfButtonViewModel);
  sub_1C2E75444();
  v27 = sub_1C2E757A4();
  swift_getKeyPath();
  v36[0] = v3;
  sub_1C2E71A64();

  swift_beginAccess();
  v28 = *(v3 + 32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F5E0);
  v30 = a1 + *(result + 36);
  *v30 = v27;
  v30[8] = v28;
  return result;
}

double sub_1C2D0801C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = 1.0;
  if ((*(*a1 + 18) & 1) == 0)
  {
    v7 = *a2;
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

    swift_getKeyPath();
    v31[0] = v7;
    sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    swift_beginAccess();
    if (*(v7 + 32) == 1)
    {
      if (*(v5 + 16) != 1)
      {
LABEL_7:
        v6 = 0.0;
        goto LABEL_8;
      }

LABEL_3:
      swift_getKeyPath();
      v31[0] = v7;
      sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
      sub_1C2E71A64();

      swift_beginAccess();
      if (*(v7 + 32))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v9 = *(a2 + 16);
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 56) = *(a2 + 32);
  v10 = *(v5 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = v15;
  *(v13 + 64) = v5;
  v16 = *a2;
  swift_getKeyPath();

  sub_1C2D08B04(a2, v31);
  sub_1C2D08B04(a2, v31);
  sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);

  sub_1C2E71A64();

  swift_beginAccess();
  v17 = *(v16 + 40);
  type metadata accessor for ButtonShelfButtonViewModel();
  sub_1C2D08ED0(&qword_1EC05CA08, type metadata accessor for ButtonShelfButtonViewModel);
  v18 = sub_1C2E765D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F600);
  sub_1C2E75184();
  v19 = v12;
  if (*(v30 + 16))
  {
    v20 = sub_1C2D9226C(v18);
    v19 = v12;
    if (v21)
    {
      v19 = *(*(v30 + 56) + 8 * v20);
    }
  }

  v22 = *(a2 + 24);
  v29 = sub_1C2E757A4();
  swift_getKeyPath();
  sub_1C2E71A64();

  v23 = *(v16 + 40);
  v24 = *(v5 + 16);
  if (v24 == 1)
  {
    swift_getKeyPath();
    sub_1C2E71A64();

    swift_beginAccess();
    v25 = *(v16 + 32) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = v22 / v19;
  swift_getKeyPath();
  sub_1C2E71A64();

  v27 = *(v16 + 40);
  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v16 + 48);
  *a3 = sub_1C2D0921C;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0x4018000000000000;
  *(a3 + 48) = v6;
  *(a3 + 56) = sub_1C2D086D8;
  *(a3 + 64) = 0;
  *(a3 + 72) = sub_1C2D09228;
  *(a3 + 80) = v13;
  *(a3 + 88) = v17;
  *(a3 + 96) = 0x3FE0000000000000;
  *(a3 + 104) = v26;
  *(a3 + 112) = v29;
  *(a3 + 120) = v23;
  *(a3 + 128) = vdupq_n_s64(0x4046000000000000uLL);
  *(a3 + 144) = v24;
  *(a3 + 145) = v25 & 1;
  *(a3 + 152) = v27;
  *(a3 + 160) = result;
  return result;
}

uint64_t sub_1C2D08540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 18) == 1)
  {
    v4 = *a3;
    swift_getKeyPath();
    sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    v7[1] = v4;
    swift_getKeyPath();
    sub_1C2E71A84();

    swift_beginAccess();
    *(v4 + 32) = (*(v4 + 32) & 1) == 0;
    sub_1C2D1101C();
    swift_getKeyPath();
    sub_1C2E71A74();

    swift_getKeyPath();
    v7[0] = v4;
    sub_1C2E71A64();

    sub_1C2D102F0(*(v4 + 32));
  }

  v5 = *(a2 + 72);
  LOBYTE(v7[0]) = *(a2 + 64);
  return v5(v7);
}

uint64_t sub_1C2D086D8@<X0>(void *a1@<X8>)
{
  v2 = sub_1C2E73F64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E74144();
  sub_1C2E732E4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1C2D087E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_1C2D08ED0(&qword_1EC05CA08, type metadata accessor for ButtonShelfButtonViewModel);
  v4 = sub_1C2E765D4();
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10 = v6;
  v11 = v5;
  v9[2] = v5;
  v9[3] = v6;
  sub_1C2C736A4(&v11, v9, &qword_1EC05F588);
  sub_1C2C736A4(&v10, v9, &qword_1EC05F608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F600);
  sub_1C2E75184();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[0] = v9[4];
  sub_1C2D937CC(v4, isUniquelyReferenced_nonNull_native, v3);
  v9[0] = v5;
  v9[1] = v6;
  sub_1C2E75194();
  sub_1C2C73644(&v11, &qword_1EC05F588);
  return sub_1C2C73644(&v10, &qword_1EC05F608);
}

uint64_t sub_1C2D08984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 24);
}

uint64_t sub_1C2D08A30()
{
  swift_getKeyPath();
  sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A54();
}

unint64_t sub_1C2D08B3C()
{
  result = qword_1EC05B638;
  if (!qword_1EC05B638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5A0);
    sub_1C2D08BF4();
    sub_1C2C94F38(&qword_1EC05B4E0, &qword_1EC05F5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B638);
  }

  return result;
}

unint64_t sub_1C2D08BF4()
{
  result = qword_1EC05B678;
  if (!qword_1EC05B678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5A8);
    sub_1C2D08CAC();
    sub_1C2C94F38(&qword_1EC05B5F8, &qword_1EC05F5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B678);
  }

  return result;
}

unint64_t sub_1C2D08CAC()
{
  result = qword_1EC05B6F0;
  if (!qword_1EC05B6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5B0);
    sub_1C2D08D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6F0);
  }

  return result;
}

unint64_t sub_1C2D08D38()
{
  result = qword_1EC05B800;
  if (!qword_1EC05B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5B8);
    sub_1C2D08DF0();
    sub_1C2C94F38(&qword_1EC05B480, &qword_1EC05F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B800);
  }

  return result;
}

unint64_t sub_1C2D08DF0()
{
  result = qword_1EC05B9B8;
  if (!qword_1EC05B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5C0);
    sub_1C2D08E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9B8);
  }

  return result;
}

unint64_t sub_1C2D08E7C()
{
  result = qword_1EC05C138;
  if (!qword_1EC05C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C138);
  }

  return result;
}

uint64_t sub_1C2D08ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D08F18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D08ED0(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

unint64_t sub_1C2D09028()
{
  result = qword_1EC05B920;
  if (!qword_1EC05B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5E0);
    sub_1C2D090E0();
    sub_1C2C94F38(&qword_1EC05B5F0, &qword_1EC05F5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B920);
  }

  return result;
}

unint64_t sub_1C2D090E0()
{
  result = qword_1EC05BA00;
  if (!qword_1EC05BA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F590);
    sub_1C2C94F38(&qword_1EC05BA68, &qword_1EC05F5E8);
    sub_1C2D09198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BA00);
  }

  return result;
}

unint64_t sub_1C2D09198()
{
  result = qword_1EC05B300;
  if (!qword_1EC05B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F5F0);
    sub_1C2D08B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B300);
  }

  return result;
}

char *BasicApertureHudView.init(withConfiguration:host:)(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E7D40] & *v2;
  swift_unknownObjectWeakInit();
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setFont_];
  if (v6)
  {
    v8 = v6;
    [v7 setTextColor_];
  }

  *(v2 + qword_1EC05F618) = v7;
  *(v2 + qword_1EC05F620) = 0;
  v9 = qword_1EC05F628;
  v10 = [v3 systemFontOfSize_];
  v11 = [v5 secondaryLabelColor];
  v12 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v13 = v10;
  v14 = v11;
  v15 = [v12 init];
  [v15 setFont_];
  v16 = v14;
  [v15 setTextColor_];

  v17 = type metadata accessor for BadgedLabel();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  *&v18[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge] = 0;
  *&v18[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] = v15;
  *&v18[v19] = 0;
  v50.receiver = v18;
  v50.super_class = v17;
  v20 = v15;
  v21 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v21 addSubview_];

  *(v2 + v9) = v21;
  *(v2 + qword_1EC05F630) = 0;
  *(v2 + qword_1EC05F638) = 0x3FF0000000000000;
  v23 = *(v45 + 80);
  v22 = *(v45 + 88);
  v24 = v22[10](v23, v22);
  v25 = v24();
  v27 = v26;

  *(v2 + qword_1EC05F640) = v25;
  *(v2 + qword_1EC05F648) = v27;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for BasicApertureHudView();
  v46 = v25;
  v28 = v27;
  v29 = objc_msgSendSuper2(&v49, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v53 = v29;
  v54 = a1;
  v51 = v29;
  v52 = a1;
  sub_1C2E71A44();
  v30 = v22[5](v23, v22);
  v31 = v30();

  sub_1C2D0AE48(v31);

  v32 = qword_1EC05F628;
  v33 = v22[9];
  v34 = *&v29[qword_1EC05F628];
  v35 = v33(v23, v22);
  v36 = v35();

  v37 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  v38 = *&v34[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge];
  *&v34[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge] = v36;
  v39 = v36;
  [v38 removeFromSuperview];
  if (*&v34[v37])
  {
    [v34 addSubview_];
  }

  [v34 setNeedsLayout];

  [v29 addSubview_];
  [v29 addSubview_];
  if (*&v29[qword_1EC05F640])
  {
    [v29 addSubview_];
  }

  v40 = *&v29[qword_1EC05F648];
  if (v40)
  {
    v41 = v40;
    v42 = v29;
    v43 = v41;
    [v42 addSubview_];

    v28 = v43;
  }

  else
  {
    v42 = v29;
    v43 = v46;
  }

  swift_unknownObjectRelease();
  return v29;
}

void *sub_1C2D0988C(void *a1)
{
  v1 = *(a1 + qword_1EC05F618);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v4 = (*(v2 + 24))(v3, v2);
  [v1 setAttributedText_];

  v5 = (*(v2 + 32))(v3, v2);
  sub_1C2D0AF7C(v5);

  return (*(v2 + 48))(&v7, v3, v2);
}

uint64_t (*sub_1C2D099A0(uint64_t *a1, uint64_t a2))()
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = *((v4 & v3) + 0x50);
  v6[3] = *((v4 & v3) + 0x58);
  v6[4] = v5;
  v6[5] = a2;
  swift_unknownObjectRetain();
  return sub_1C2D0BCA8;
}

uint64_t sub_1C2D09A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1C2E75E74();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C2E75E34();

  swift_unknownObjectRetain();
  v12 = sub_1C2E75E24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;
  sub_1C2D22B9C(0, 0, v10, &unk_1C2E80648, v13);
}

uint64_t sub_1C2D09BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  sub_1C2E75E34();
  v5[18] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2D09C54, v7, v6);
}

uint64_t sub_1C2D09C54()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsLayout];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v0[17];
    v0[4] = v3;
    v0[5] = v4;
    v0[8] = v3;
    v0[9] = v4;
    v5 = v3;
    sub_1C2E71A44();
  }

  v6 = v0[1];

  return v6();
}

id sub_1C2D09D90()
{
  v87.receiver = v0;
  v87.super_class = type metadata accessor for BasicApertureHudView();
  objc_msgSendSuper2(&v87, sel_layoutSubviews);
  Strong = swift_unknownObjectWeakLoadStrong();
  v83 = Strong;
  if (Strong)
  {

    v2 = 50.0;
  }

  else
  {
    v2 = 4.0;
  }

  [v0 bounds];
  v3 = (CGRectGetHeight(v88) + -50.0) * 0.5;
  v4 = swift_unknownObjectWeakLoadStrong();
  [v4 setFrame_];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 layer];

    [v7 setCornerRadius_];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 setClipsToBounds_];
  }

  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  [v0 bounds];
  v12 = CGRectGetWidth(v89) + -16.0;
  v90.origin.x = v10;
  v90.origin.y = v11;
  v90.size.width = 50.0;
  v90.size.height = 50.0;
  v13 = v12 + CGRectGetWidth(v90) * -0.5;
  [v0 bounds];
  Height = CGRectGetHeight(v91);
  v15 = *&v0[qword_1EC05F648];
  if (v15)
  {
    v16 = Height * 0.5;
    [*&v0[qword_1EC05F648] setBounds_];
    [v15 setCenter_];
  }

  v92.origin.x = v10;
  v92.origin.y = v11;
  v92.size.width = 50.0;
  v92.size.height = 50.0;
  Width = CGRectGetWidth(v92);
  v93.origin.x = v10;
  v93.origin.y = v11;
  v93.size.width = 50.0;
  v93.size.height = 50.0;
  v17 = CGRectGetWidth(v93);
  [v0 bounds];
  v18 = CGRectGetHeight(v94);
  v19 = *&v0[qword_1EC05F640];
  if (v19)
  {
    v20 = v3;
    v21 = v2;
    v22 = v18 * 0.5;
    [*&v0[qword_1EC05F640] setBounds_];
    v23 = v22;
    v2 = v21;
    v3 = v20;
    [v19 setCenter_];
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    v26 = sub_1C2E75C24();

    [v19 setAccessibilityLabel_];
  }

  if (v15)
  {
    type metadata accessor for StringDummy();
    v27 = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    v29 = sub_1C2E75C24();

    [v15 setAccessibilityLabel_];
  }

  if (v83)
  {
    v95.origin.x = 16.0;
    v95.origin.y = v3;
    v95.size.width = v2;
    v95.size.height = 50.0;
    v30 = CGRectGetMaxX(v95) + 9.0;
  }

  else
  {
    v30 = 29.0;
  }

  [v0 bounds];
  v31 = CGRectGetWidth(v96) + -136.0 - v30;
  if (v31 > 0.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = *&v0[qword_1EC05F618];
  result = [v33 font];
  if (result)
  {
    v35 = result;
    [result lineHeight];
    v37 = v36;

    [v0 bounds];
    v38 = CGRectGetHeight(v97);
    sub_1C2D0B10C(v32, v38 - v37);
    v40 = v39;
    v42 = v41;
    v43 = objc_opt_self();
    v44 = swift_allocObject();
    *(v44 + 16) = v0;
    *(v44 + 24) = v40;
    *(v44 + 32) = v42;
    v45 = swift_allocObject();
    v45[2] = sub_1C2D0B438;
    v45[3] = v44;
    aBlock[4] = sub_1C2D0B4AC;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2D0A7A0;
    aBlock[3] = &block_descriptor_4;
    v46 = _Block_copy(aBlock);
    v47 = v0;

    [v43 performWithoutAnimation_];
    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_56;
    }

    v49 = 53.0;
    if (!v83)
    {
      v49 = 99.0;
    }

    if (v40 <= v49)
    {
      [v47 bounds];
      v67 = (CGRectGetHeight(v100) - v42 - v37) * 0.5;
    }

    else
    {
      v84 = v32;
      v50 = [v47 SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v50 layoutFrame];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;

      v98.origin.x = v52;
      v98.origin.y = v54;
      v98.size.width = v56;
      v98.size.height = v58;
      MaxY = CGRectGetMaxY(v98);
      v60 = *&v47[qword_1EC05F628];
      v61 = *(v60 + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label);
      [v61 _tightBoundingRectOfFirstLine];
      [v61 convertPoint:v60 toCoordinateSpace:?];
      v63 = v62;
      v64 = *(v60 + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge);
      if (v64)
      {
        v65 = v64;
        [v65 frame];
        MinY = CGRectGetMinY(v99);

        v32 = v84;
        if (MinY >= v63)
        {
          MinY = v63;
        }
      }

      else
      {
        MinY = v62;
        v32 = v84;
      }

      v67 = MaxY - MinY;
    }

    v68 = *&v47[qword_1EC05F628];
    [v68 setFrame_];
    v101.origin.x = v30;
    v101.origin.y = v67;
    v101.size.width = v40;
    v101.size.height = v42;
    [v33 setFrame_];
    if ([v47 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v85[4] = swift_unknownObjectWeakLoadStrong();
      v85[5] = v68;
      v85[6] = v33;
      v85[7] = v19;
      v85[8] = v15;
      isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v69 = v15;
      v70 = v68;
      v71 = v33;
      v72 = v19;
      v73 = 0;
LABEL_33:
      if (v73 <= 5)
      {
        v74 = 5;
      }

      else
      {
        v74 = v73;
      }

      while (1)
      {
        if (v73 == 5)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC05F650);
          swift_arrayDestroy();
          if (isEscapingClosureAtFileLocation >> 62)
          {
            goto LABEL_57;
          }

          v77 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v77)
          {
            goto LABEL_45;
          }

          goto LABEL_58;
        }

        if (v74 == v73)
        {
          break;
        }

        v75 = v85[v73++ + 4];
        if (v75)
        {
          v76 = v75;
          MEMORY[0x1C6926780]();
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C2E75D94();
          }

          sub_1C2E75DB4();
          isEscapingClosureAtFileLocation = aBlock[0];
          goto LABEL_33;
        }
      }

      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v77 = sub_1C2E764E4();
        if (!v77)
        {
          break;
        }

LABEL_45:
        v78 = 0;
        while (1)
        {
          if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x1C6927010](v78, isEscapingClosureAtFileLocation);
          }

          else
          {
            if (v78 >= *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v79 = *(isEscapingClosureAtFileLocation + 8 * v78 + 32);
          }

          v80 = v79;
          v81 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            break;
          }

          aBlock[0] = v79;
          sub_1C2D0A7C8(aBlock, v47);

          ++v78;
          if (v81 == v77)
          {
            goto LABEL_58;
          }
        }
      }

LABEL_58:
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C2D0A7C8(void **a1, id a2)
{
  v2 = *a1;
  [a2 bounds];
  Width = CGRectGetWidth(v9);
  [v2 frame];
  v5 = Width - v4;
  [v2 frame];
  v6 = v5 - CGRectGetMinX(v10);
  [v2 frame];
  MinY = CGRectGetMinY(v11);
  [v2 frame];
  return [v2 setFrame_];
}

void sub_1C2D0A87C(void *a1)
{
  v1 = a1;
  sub_1C2D09D90();
}

uint64_t sub_1C2D0A8C4(double a1, double a2)
{
  if (a2 > 2.22507386e-308)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.79769313e308;
  }

  [*&v2[qword_1EC05F618] sizeThatFits_];
  [*&v2[qword_1EC05F628] sizeThatFits_];
  v7 = v6;
  v9 = v8;
  v26 = 0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = &v26;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C2D0B7B4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1C2D0BD8C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2D0A7A0;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v16 = [v14 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v16 layoutFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v27.origin.x = v18;
    v27.origin.y = v20;
    v27.size.width = v22;
    v27.size.height = v24;
    CGRectGetMaxY(v27);
  }

  return result;
}

id sub_1C2D0ABE4(uint64_t a1, double *a2, double a3, double a4)
{
  v7 = *(a1 + qword_1EC05F628);
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 setFrame_];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];
  v16 = *&v7[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label];
  [v16 _tightBoundingRectOfFirstLine];
  [v16 convertPoint:v7 toCoordinateSpace:?];
  v18 = v17;
  v19 = *&v7[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge];
  if (!v19 || (v20 = v19, [v20 frame], MinY = CGRectGetMinY(v24), v20, MinY >= v18))
  {
    MinY = v18;
  }

  *a2 = MinY;

  return [v7 setFrame_];
}

double sub_1C2D0AD3C(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1C2D0A8C4(a2, a3);
  v7 = v6;

  return v7;
}

double sub_1C2D0AD94(void *a1)
{
  v1 = a1;
  sub_1C2D0BBAC();
  v3 = v2;

  return v3;
}

double sub_1C2D0ADE8(void *a1)
{
  v1 = a1;
  sub_1C2D0AE2C();
  v3 = v2;

  return v3;
}

uint64_t sub_1C2D0AE48(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromSuperview];

  *(swift_allocObject() + 16) = v1;
  v4 = v1;
  if (a1)
  {
    v5 = v4;
    v6 = a1;
    swift_unknownObjectWeakAssign();
    [v5 addSubview_];
    [v5 setNeedsLayout];
  }
}

id sub_1C2D0AF18(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  [v1 addSubview_];

  return [v1 setNeedsLayout];
}

id sub_1C2D0AF7C(unint64_t a1)
{
  v2 = v1;
  if (*&v1[qword_1EC05F630])
  {

    sub_1C2DFBE38();
  }

  if (a1 >> 62)
  {
    if (sub_1C2E764E4() >= 2)
    {
      goto LABEL_5;
    }

    v7 = *&v1[qword_1EC05F628];
    result = sub_1C2E764E4();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= 1)
  {
    v7 = *&v1[qword_1EC05F628];
    if (result)
    {
LABEL_7:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C6927010](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v8 = *(a1 + 32);
      }

      v9 = v8;
      goto LABEL_14;
    }

LABEL_13:
    v9 = 0;
LABEL_14:
    [*&v7[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] setAttributedText_];
    [v7 setNeedsLayout];

    goto LABEL_15;
  }

LABEL_5:
  v5 = *&v1[qword_1EC05F628];

  v6 = sub_1C2D0B7C4(v5, a1, 2.5, 0, 0);

  sub_1C2DFB92C();
  *&v2[qword_1EC05F630] = v6;

LABEL_15:

  return [v2 setNeedsLayout];
}

void sub_1C2D0B10C(double a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + qword_1EC05F628);
  [v6 sizeThatFits_];
  v7 = *(v2 + qword_1EC05F630);
  if (v7)
  {
    v8 = *(v7 + 48);
    if (v8 >> 62)
    {
      goto LABEL_35;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      while (1)
      {
        v9 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label;
        v10 = *&v6[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label];

        v11 = [v10 attributedText];
        v12 = *(v7 + 48);
        if (v12 >> 62)
        {
          v33 = v11;
          v13 = sub_1C2E764E4();
          v11 = v33;
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = MEMORY[0x1E69E7CC0];
        if (!v13)
        {
          break;
        }

        v35 = v11;
        v36 = v6;
        v39 = MEMORY[0x1E69E7CC0];

        sub_1C2CA4DDC(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return;
        }

        v15 = 0;
        v14 = v39;
        while (1)
        {
          v6 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1C6927010](v15, v12);
          }

          else
          {
            if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v16 = *(v12 + 8 * v15 + 32);
          }

          v17 = v16;
          v37 = v16;
          sub_1C2D0B4EC(&v37, v3, &v38, a1, a2);

          v18 = v38;
          v39 = v14;
          v7 = *(v14 + 16);
          v19 = *(v14 + 24);
          if (v7 >= v19 >> 1)
          {
            v34 = v38;
            sub_1C2CA4DDC((v19 > 1), v7 + 1, 1);
            v18 = v34;
            v14 = v39;
          }

          *(v14 + 16) = v7 + 1;
          *(v14 + 16 * v7 + 32) = v18;
          ++v15;
          if (v6 == v13)
          {

            v6 = v36;
            v11 = v35;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        if (sub_1C2E764E4() < 2)
        {
          return;
        }
      }

LABEL_18:
      v20 = *&v6[v9];
      v21 = v11;
      [v20 setAttributedText_];
      [v6 setNeedsLayout];

      v22 = *(v14 + 16);
      if (v22)
      {
        v23 = v22 - 1;
        if (v23)
        {
          v24 = (v14 + 48);
          v25 = v23;
          v26 = *(v14 + 32);
          do
          {
            v27 = *v24;
            v24 += 2;
            v28 = v27;
            if (v26 < v27)
            {
              v26 = v28;
            }

            --v25;
          }

          while (v25);
          v29 = (v14 + 56);
          v30 = *(v14 + 40);
          do
          {
            v31 = *v29;
            v29 += 2;
            v32 = v31;
            if (v30 < v31)
            {
              v30 = v32;
            }

            --v23;
          }

          while (v23);
        }
      }

      else
      {
      }
    }
  }
}

id sub_1C2D0B438()
{
  v1 = *(*(v0 + 16) + qword_1EC05F628);
  [v1 setFrame_];
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C2D0B4EC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v8 = *(a2 + qword_1EC05F628);
  v9 = *&v8[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label];
  v10 = *a1;
  [v9 setAttributedText_];
  [v8 setNeedsLayout];

  result = [v8 sizeThatFits_];
  *a3 = v12;
  a3[1] = v13;
  return result;
}

id BasicApertureHudView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BasicApertureHudView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicApertureHudView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C2D0B6EC(uint64_t a1)
{
  MEMORY[0x1C6927ED0](a1 + qword_1EC05F610);

  v2 = *(a1 + qword_1EC05F648);
}

char *sub_1C2D0B788@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  result = BasicApertureHudView.__allocating_init(withConfiguration:host:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2D0B7C4(char *a1, unint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AlternatingLabelController();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 56) = 0;
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  result = sub_1C2E764E4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C6927010](0, a2);
    goto LABEL_6;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a2 + 32);
LABEL_6:
    v12 = v11;
LABEL_9:
    [*&a1[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] setAttributedText_];
    [a1 setNeedsLayout];

    *(v9 + 32) = &off_1F42A1808;
    swift_unknownObjectWeakAssign();
    *(v9 + 48) = a2;
    *(v9 + 40) = a3;
    *(v9 + 72) = a5;
    swift_unknownObjectWeakAssign();
    return v9;
  }

  __break(1u);
  return result;
}

void sub_1C2D0B914()
{
  swift_unknownObjectWeakInit();
  v1 = objc_opt_self();
  v2 = [v1 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v5 setFont_];
  if (v4)
  {
    v6 = v4;
    [v5 setTextColor_];
  }

  *(v0 + qword_1EC05F618) = v5;
  *(v0 + qword_1EC05F620) = 0;
  v7 = qword_1EC05F628;
  v8 = [v1 systemFontOfSize_];
  v9 = [v3 secondaryLabelColor];
  v10 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v11 = v8;
  v12 = v9;
  v13 = [v10 init];
  [v13 setFont_];
  v14 = v12;
  [v13 setTextColor_];

  v15 = type metadata accessor for BadgedLabel();
  v16 = objc_allocWithZone(v15);
  v17 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  *&v16[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge] = 0;
  *&v16[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] = v13;
  *&v16[v17] = 0;
  v20.receiver = v16;
  v20.super_class = v15;
  v18 = v13;
  v19 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v19 addSubview_];

  *(v0 + v7) = v19;
  *(v0 + qword_1EC05F630) = 0;
  *(v0 + qword_1EC05F638) = 0x3FF0000000000000;
  sub_1C2E766F4();
  __break(1u);
}

uint64_t sub_1C2D0BCB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2C7DC10;

  return sub_1C2D09BBC(a1, v4, v5, v7, v6);
}

uint64_t (*AudioCallFaceTimeControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2D0BE94;
}

uint64_t sub_1C2D0BDF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C6E3A4(result + 24, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 24))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t sub_1C2D0BEA8()
{
  swift_getKeyPath();
  sub_1C2D0D074(&qword_1EC05F6F0, type metadata accessor for AudioCallFaceTimeControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2D0BF60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D0D074(&qword_1EC05F6F0, type metadata accessor for AudioCallFaceTimeControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C2D0C020(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D0D074(&qword_1EC05F6F0, type metadata accessor for AudioCallFaceTimeControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D0C168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t AudioCallFaceTimeControlViewModel.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallFaceTimeControlViewModel.init(service:)(a1);
  return v2;
}

void *AudioCallFaceTimeControlViewModel.init(service:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F6D8);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F468);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v9;
  v10 = sub_1C2E757E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - v15;
  v2[8] = MEMORY[0x1E69E7CD0];
  v47 = v2 + 8;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, (v2 + 3));
  v17 = a1;
  v51 = a1;
  v18 = a1[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  FaceTimeControlServiceProtocol.validityState.getter(v18, v19);
  v20 = 0x80000001C2E95FD0;
  v21 = 0xD000000000000017;
  if (v57)
  {
    v21 = 0x69662E6F65646976;
    v20 = 0xEA00000000006C6CLL;
  }

  v54 = v21;
  v55 = v20;
  v56 = 1;
  v43 = type metadata accessor for AudioCallFaceTimeControlViewModel;
  sub_1C2D0D074(&qword_1EC05F6E8, type metadata accessor for AudioCallFaceTimeControlViewModel);
  v22 = sub_1C2DFDC24(0, &v54);
  sub_1C2C77608(v54, v55, v56);
  v23 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v24 = sub_1C2E74534();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = sub_1C2E745C4();
  sub_1C2CB410C(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E6981DF0], v10);
  type metadata accessor for ControlTextConfiguration();
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v27 = 0;
  v27[8] = 1;
  sub_1C2E71A94();
  v26[2] = 0x656D695465636146;
  v26[3] = 0xE800000000000000;
  v26[4] = v23;
  v26[5] = v25;
  (*(v11 + 32))(v26 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v13, v10);
  *(v26 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v27 = 0;
  v27[8] = 1;
  *(v26 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v28 = swift_allocObject();
  v28[3] = 0;
  sub_1C2E71A94();
  v28[2] = v22;
  swift_getKeyPath();
  v52 = v28;
  v53 = v26;
  v54 = v28;
  sub_1C2D0D074(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  v2[2] = v28;
  v30 = v51[3];
  v29 = v51[4];
  v31 = v51;
  __swift_project_boxed_opaque_existential_1(v51, v30);
  v54 = (*(*(v29 + 8) + 8))(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F478);
  v42 = MEMORY[0x1E695BFB0];
  sub_1C2C94F38(&qword_1EC05F480, &qword_1EC05F478);
  v32 = v44;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05F488, &qword_1EC05F468);

  v33 = v45;
  sub_1C2E72F14();

  (*(v46 + 8))(v32, v33);
  swift_getKeyPath();
  v54 = v2;
  sub_1C2D0D074(&qword_1EC05F6F0, v43);
  sub_1C2E71A64();

  v54 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v54 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v34 = v31[3];
  v35 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v34);
  v54 = (*(v35 + 16))(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F6F8);
  sub_1C2C94F38(&qword_1EC05F700, &qword_1EC05F6F8);
  sub_1C2D0D0BC();
  v36 = v48;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();

  sub_1C2C94F38(&qword_1EC05F710, &qword_1EC05F6D8);
  v37 = v49;
  sub_1C2E72F14();

  (*(v50 + 8))(v36, v37);
  swift_getKeyPath();
  v54 = v2;
  sub_1C2E71A64();

  v54 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v54 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v38 = v2[6];
  v39 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v38);
  if (DisableableControlService.controlEnabled.getter(v38, *(v39 + 8)))
  {
    v40 = 0;
  }

  else
  {
    v40 = 2;
  }

  sub_1C2CFC19C(v40);
  sub_1C2D0CCEC();
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v2;
}

void *sub_1C2D0CC04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[6];
    v2 = result[7];
    __swift_project_boxed_opaque_existential_1(result + 3, v1);
    if (DisableableControlService.controlEnabled.getter(v1, *(v2 + 8)))
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    sub_1C2CFC19C(v3);
  }

  return result;
}

uint64_t sub_1C2D0CC94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2D0CCEC();
  }

  return result;
}

uint64_t sub_1C2D0CCEC()
{
  v1 = v0;
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[2];
  swift_getKeyPath();
  v12 = v5;
  sub_1C2D0D074(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v6 = v0[6];
  v7 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);

  FaceTimeControlServiceProtocol.validityState.getter(v6, v7);
  v8 = 0x80000001C2E95FD0;
  v9 = 0xD000000000000017;
  if (v11[7])
  {
    v9 = 0x69662E6F65646976;
    v8 = 0xEA00000000006C6CLL;
  }

  *v4 = v9;
  *(v4 + 1) = v8;
  v4[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1C2D7DE6C(v4);
}

uint64_t AudioCallFaceTimeControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI33AudioCallFaceTimeControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallFaceTimeControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI33AudioCallFaceTimeControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2D0CFC4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2D0D278;
}

uint64_t type metadata accessor for AudioCallFaceTimeControlViewModel()
{
  result = qword_1EC05F718;
  if (!qword_1EC05F718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2D0D074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2D0D0BC()
{
  result = qword_1EC05F708;
  if (!qword_1EC05F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F708);
  }

  return result;
}

uint64_t sub_1C2D0D118(uint64_t a1)
{
  result = sub_1C2D0D074(&qword_1EC05F6F0, type metadata accessor for AudioCallFaceTimeControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2D0D178()
{
  result = sub_1C2E71AA4();
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

uint64_t MuteState.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t MuteControlServiceProtocol.muteState.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  sub_1C2E72E04();
}

uint64_t MuteControlServiceProtocol.muteState.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  sub_1C2E72DF4();
}

void (*MuteControlServiceProtocol.muteState.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = *(a3 + 16);
  v7[3] = v8;
  v8(a2, a3);
  sub_1C2E72E04();

  return sub_1C2D0D470;
}

void sub_1C2D0D470(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 33);
  ((*a1)[3])(**a1);
  v1[32] = v2;
  sub_1C2E72DF4();

  free(v1);
}

unint64_t sub_1C2D0D4E4()
{
  result = qword_1EC05F728;
  if (!qword_1EC05F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F728);
  }

  return result;
}

double WaveformView.animationDuration.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_animationDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WaveformView.animationDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_animationDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WaveformView.updateReason.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_updateReason;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WaveformView.updateReason.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_updateReason;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float WaveformView.deltaCap.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaCap;
  swift_beginAccess();
  return *v1;
}

uint64_t WaveformView.deltaCap.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaCap);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float WaveformView.deltaFloor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaFloor;
  swift_beginAccess();
  return *v1;
}

uint64_t WaveformView.deltaFloor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaFloor);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float WaveformView.bandPadding.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding;
  swift_beginAccess();
  return *v1;
}

void sub_1C2D0D99C(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding);
  swift_beginAccess();
  *v3 = v2;
  v4 = sub_1C2D0DA98();
  *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding] = *v3;
  [v4 setNeedsLayout];
}

void WaveformView.bandPadding.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding);
  swift_beginAccess();
  *v3 = a1;
  v4 = sub_1C2D0DA98();
  *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding] = *v3;
  [v4 setNeedsLayout];
}

char *sub_1C2D0DA98()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView);
  }

  else
  {
    v4 = sub_1C2D0E034(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*WaveformView.bandPadding.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C2D0DB84;
}

void sub_1C2D0DB84(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1C2D0DA98();
    *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding] = *(v4 + v5);
    [v6 setNeedsLayout];
  }

  free(v3);
}

id WaveformView.barColor.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformView.barColor.setter(void *a1)
{
  sub_1C2D0F828(a1);
}

void (*WaveformView.barColor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C2D0DD10;
}

void sub_1C2D0DD10(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1C2D0DA98();
    v7 = *(v4 + v5);
    v8 = *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor];
    *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor] = v7;
    v9 = v7;

    [v6 setNeedsLayout];
  }

  free(v3);
}

uint64_t sub_1C2D0DE78(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t WaveformView.values.getter()
{
  v0 = sub_1C2D0DA98();
  v1 = *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power];

  return v1;
}

id sub_1C2D0DF6C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___backdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___backdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___backdropLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
    v5 = sub_1C2E75C24();
    [v4 setCompositingFilter_];

    [v4 setScale_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1C2D0E034(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_needsFilterWaveformBars);
  v3 = (a1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding);
  swift_beginAccess();
  v4 = *v3;
  v5 = objc_allocWithZone(type metadata accessor for DeviceWaveformView());
  v6 = sub_1C2D0F0D8(v2, 0.0, 0.0, 0.0, 0.0, v4);
  v7 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor];
  *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor] = v8;
  v10 = v8;

  v11 = v6;
  [v11 setNeedsLayout];

  *&v11[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding] = *v3;
  [v11 setNeedsLayout];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  return v11;
}

id WaveformView.init(needsBackdropFilterLayer:needsFilterWaveformBars:bandPadding:)(char a1, char a2, float a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_animationDuration] = 0x3FE0000000000000;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_updateReason] = 1024;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaCap] = 1048576000;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaFloor] = 1036831949;
  v8 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  *&v3[v8] = [objc_opt_self() whiteColor];
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_remoteValues] = v9;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___backdropLayer] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView] = 0;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding] = a3;
  v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_needsBackdropFilterLayer] = a1;
  v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_needsFilterWaveformBars] = a2;
  v17 = 1;
  sub_1C2E75FF4();
  v10 = &v3[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_framerateRange];
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C2D0E38C();

  return v14;
}

void sub_1C2D0E38C()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = sub_1C2D0DA98();
  [v0 addSubview_];

  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A700;
  v5 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView;
  v6 = [*&v0[OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [*&v0[v5] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v4 + 48) = v14;
  v15 = [*&v0[v5] bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 56) = v17;
  sub_1C2CBF630();
  v18 = sub_1C2E75D64();

  [v3 activateConstraints_];

  if (v0[OBJC_IVAR____TtC16CommunicationsUI12WaveformView_needsBackdropFilterLayer] == 1)
  {
    v19 = [v0 layer];
    v20 = sub_1C2D0DF6C();
    [v19 addSublayer_];
  }
}

Swift::Void __swiftcall WaveformView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(Swift::OpaquePointer latestRemoteSpectrum, Swift::OpaquePointer latestLocalSpectrum)
{
  v3 = v2;
  v5 = *(latestRemoteSpectrum._rawValue + 2);
  if (v5 <= 0x1D)
  {
    v7 = 30 - v5;
    rawValue = latestRemoteSpectrum._rawValue;
    v6 = sub_1C2E75DA4();
    *(v6 + 16) = v7;
    bzero((v6 + 32), 4 * v7);
    latestRemoteSpectrum._rawValue = rawValue;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  aBlock[0] = latestRemoteSpectrum._rawValue;

  sub_1C2CA2EE8(v6);
  v9 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_remoteValues;
  swift_beginAccess();
  *(v3 + v9) = aBlock[0];

  v10 = *(latestLocalSpectrum._rawValue + 2);
  if (v10 <= 0x1D)
  {
    v12 = 30 - v10;
    v11 = sub_1C2E75DA4();
    *(v11 + 16) = v12;
    bzero((v11 + 32), 4 * v12);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  aBlock[0] = latestLocalSpectrum._rawValue;

  sub_1C2CA2EE8(v11);
  v13 = sub_1C2D0EB34(latestLocalSpectrum._rawValue);
  v14 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues;
  swift_beginAccess();
  *(v3 + v14) = v13;

  v15 = sub_1C2D0DA98();
  v16 = *&v15[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power];

  v17 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView;
  v18 = *(v3 + v9);
  v19 = *(v3 + v14);
  v20 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView);

  v21 = sub_1C2D0EBEC(v18, v19);

  *&v20[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power] = v21;

  [v20 setNeedsLayout];

  [*(v3 + v17) setNeedsLayout];
  v22 = *(*(v3 + v17) + OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power);
  v23 = *(v16 + 16);
  if (v23 == *(v22 + 16))
  {
    if (v23)
    {
      v24 = (v3 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaCap);
      v25 = (v3 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaFloor);
      v26 = (v16 + 32);
      v27 = (v22 + 32);
      swift_beginAccess();
      swift_beginAccess();
      v28 = 0.0;
      do
      {
        v29 = *v26++;
        v30 = v29;
        v31 = *v27++;
        v32 = v31;
        if (v31 >= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        if (v30 <= v32)
        {
          v30 = v32;
        }

        v34 = v30 - v33;
        if (v34 >= *v24)
        {
          v34 = *v24;
        }

        if (*v25 > v34)
        {
          v34 = *v25;
        }

        if (v34 > v28)
        {
          v28 = v34;
        }

        --v23;
      }

      while (v23);
    }

    swift_beginAccess();
  }

  else
  {
  }

  LOBYTE(aBlock[0]) = 1;
  sub_1C2E75FF4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = objc_opt_self();
  v42 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_animationDuration;
  swift_beginAccess();
  v43 = *(v3 + v42);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v36;
  *(v45 + 28) = v38;
  *(v45 + 32) = v40;
  aBlock[4] = sub_1C2D0F8C8;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_5;
  v46 = _Block_copy(aBlock);

  [v41 animateWithDuration:0 delay:v46 usingSpringWithDamping:0 initialSpringVelocity:v43 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v46);
}

uint64_t sub_1C2D0EB34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C2D8E1B0(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C2D0EBEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4DFC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_30;
      }

      if (*v8 > *v9)
      {
        v13 = *v8;
      }

      else
      {
        v13 = *v9;
      }

      v28 = result;
      v15 = *(result + 16);
      v14 = *(result + 24);
      if (v15 >= v14 >> 1)
      {
        v23 = v12;
        sub_1C2CA4DFC((v14 > 1), v15 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v15 + 1;
      *(result + 4 * v15 + 32) = v13;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v5;
LABEL_16:
  if (v26 > v12)
  {
    v16 = v24 + 32;
    v17 = v25 + 32;
    while (v6 < v26)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_32;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_33;
        }

        v19 = *(v16 + 4 * v6) > *(v17 + 4 * v6) ? *(v16 + 4 * v6) : *(v17 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1C2CA4DFC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v19;
        ++v6;
        if (v18 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

void sub_1C2D0EDD0(float a1, float a2, float a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1C2D0FB40;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1C2CB1B14;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2D0A7A0;
    aBlock[3] = &block_descriptor_40;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    *&v13 = a1;
    *&v14 = a2;
    *&v15 = a3;
    [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v11);
  }
}

id WaveformView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1C2D0F01C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_1C2D0F0D8(char a1, double a2, double a3, double a4, double a5, float a6)
{
  v13 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_needsFilterInLayer;
  v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_needsFilterInLayer] = 1;
  v14 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor;
  *&v6[v14] = [objc_opt_self() whiteColor];
  v15 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandViews] = v15;
  v16 = &v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_numBands];
  *v16 = 0;
  v16[8] = 1;
  *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding] = a6;
  v6[v13] = a1;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for DeviceWaveformView();
  result = objc_msgSendSuper2(&v21, sel_initWithFrame_, a2, a3, a4, a5);
  if (a1)
  {
    v18 = result;
    v19 = [result layer];
    v20 = sub_1C2E75C24();
    [v19 setCompositingFilter_];

    return v18;
  }

  return result;
}

uint64_t sub_1C2D0F268()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for DeviceWaveformView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v26);
  v1 = &v0[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_numBands];
  v2 = v0[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_numBands + 8];
  *v1 = 30;
  v1[8] = 0;
  if (v2 == 1)
  {
    sub_1C2D0F5A0(30);
  }

  [v0 bounds];
  Height = CGRectGetHeight(v27);
  v4 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandViews;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2E764E4())
  {
    v23 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandPadding;
    v24 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power;
    v22 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor;

    if (!i)
    {
      break;
    }

    v7 = 0;
    v8 = (Height + -6.0) * 0.95;
    v9 = Height + -6.0 + -3.0;
    Height = 1.1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6927010](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v5 + 8 * v7 + 32);
      }

      v17 = v16;
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = *&v0[v24];
      v20 = 0.0;
      if (v7 < *(v19 + 16))
      {
        v20 = *(v19 + 4 * v7 + 32);
      }

      v10 = v9 * pow(v20, 1.1) + 3.0;
      if (v8 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v8;
      }

      v12 = (*&v0[v23] + 3.0) * v7 + *&v0[v23];
      [v0 bounds];
      v13 = CGRectGetHeight(v28) * 0.5;
      [v17 setBackgroundColor_];
      [v17 setBounds_];
      v14 = [v17 layer];
      [v14 setPosition_];

      v15 = [v17 layer];
      [v15 setCornerRadius_];

      ++v7;
      if (v18 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

void sub_1C2D0F5A0(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = v1;
      v4 = *MEMORY[0x1E69796E8];
      v5 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor;
      v6 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandViews;
      do
      {
        v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        v8 = [v7 layer];
        [v8 setAnchorPoint_];

        [v7 setBackgroundColor_];
        v9 = [v7 layer];
        [v9 setAllowsEdgeAntialiasing_];

        v10 = [v7 layer];
        [v10 setCornerCurve_];

        [v3 addSubview_];
        swift_beginAccess();
        v11 = v7;
        MEMORY[0x1C6926780]();
        if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        swift_endAccess();

        --v2;
      }

      while (v2);
    }
  }
}

id sub_1C2D0F794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceWaveformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C2D0F828(void *a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = sub_1C2D0DA98();
  v7 = *(v1 + v3);
  v8 = *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor];
  *&v6[OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor] = v7;
  v9 = v7;

  [v6 setNeedsLayout];
}