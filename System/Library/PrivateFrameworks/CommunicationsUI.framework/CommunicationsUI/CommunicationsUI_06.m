uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2D0F964()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_animationDuration) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_updateReason) = 1024;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaCap) = 1048576000;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_deltaFloor) = 1036831949;
  v1 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  *(v0 + v1) = [objc_opt_self() whiteColor];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_remoteValues) = v2;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___backdropLayer) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView____lazy_storage___audioView) = 0;
  sub_1C2E766F4();
  __break(1u);
}

void sub_1C2D0FA6C()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_needsFilterInLayer) = 1;
  v1 = OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_barColor;
  *(v0 + v1) = [objc_opt_self() whiteColor];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_power) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_bandViews) = v2;
  v3 = v0 + OBJC_IVAR____TtC16CommunicationsUIP33_7D546AE62F90BDA71C61319073C0DD1B18DeviceWaveformView_numBands;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_1C2E766F4();
  __break(1u);
}

uint64_t ButtonShelfViewModel.collapsedButtonCount.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
LABEL_28:
    v3 = sub_1C2E764E4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  if (v3 <= 4)
  {
LABEL_18:
    sub_1C2E71A64();

    v8 = *(v1 + 24);
    if (v8 >> 62)
    {
      return sub_1C2E764E4();
    }

    else
    {
      return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    sub_1C2E71A64();

    v1 = *(v1 + 24);
    v12 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      v4 = sub_1C2E764E4();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v5 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C6927010](v5, v1);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v6 = *(v1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_17;
          }
        }

        if (*(v6 + 16))
        {
        }

        else
        {
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
        }

        ++v5;
        if (v7 == v4)
        {
          v10 = v12;
          goto LABEL_22;
        }
      }
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_22:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      v9 = sub_1C2E764E4();
    }

    else
    {
      v9 = *(v10 + 16);
    }
  }

  return v9;
}

uint64_t ButtonShelfViewModel.expandedButtonCount.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    goto LABEL_27;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5)
  {
    while (1)
    {
      swift_getKeyPath();
      sub_1C2E71A64();

      v1 = *(v1 + 24);
      v9 = MEMORY[0x1E69E7CC0];
      if (v1 >> 62)
      {
        v3 = sub_1C2E764E4();
      }

      else
      {
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v3)
      {
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }

      v4 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6927010](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }

LABEL_12:
        if (*(v5 + 16))
        {
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_17;
        }
      }

      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v5 = *(v1 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v7 = v9;
LABEL_19:

      if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
      {
        v1 = sub_1C2E764E4();
      }

      else
      {
        v1 = *(v7 + 16);
      }

      if (v1 > 0)
      {
        result = v1 + 1;
        if (!__OFADD__(v1, 1))
        {
          return result;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        if (sub_1C2E764E4() >= 5)
        {
          continue;
        }
      }

      return 0;
    }
  }

  return 0;
}

uint64_t sub_1C2D10054()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();
}

uint64_t ButtonShelfViewModel.isExpanded.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 32);
}

void (*ButtonShelfViewModel.isExpanded.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D13818(v4);
  return sub_1C2D102E4;
}

uint64_t sub_1C2D102F0(char a1)
{
  v3 = type metadata accessor for ControlButtonElement(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - v8;
  if (*(v1 + 18) == 1 && !*(v1 + 64))
  {
    v10 = *(v1 + 24);
    swift_getKeyPath();
    if (a1)
    {
      v19 = v10;
      sub_1C2D1603C(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      *v9 = xmmword_1C2E808F0;
      v9[16] = 1;
      swift_storeEnumTagMultiPayload();

      sub_1C2D7DE6C(v9);

      swift_getKeyPath();
      v18[0] = v10;
      sub_1C2E71A64();

      result = swift_beginAccess();
      if (!*(v10 + 24))
      {
        return result;
      }

      v11 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_21;
    }

    v19 = v10;
    sub_1C2D1603C(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
    sub_1C2E71A64();

    swift_beginAccess();
    v13 = *(v1 + 64);
    if (v13 <= 2)
    {
      if (*(v1 + 64))
      {
        if (v13 == 1)
        {
          v15 = 0x80000001C2E962C0;
          v14 = 0xD000000000000016;
        }

        else
        {
          v15 = 0xE900000000000065;
          v14 = 0x7669737275632E66;
        }
      }

      else
      {
        v15 = 0xEA00000000006C6CLL;
        v14 = 0x69662E6F65646976;
      }
    }

    else if (*(v1 + 64) > 4u)
    {
      if (v13 == 5)
      {
        v15 = 0x80000001C2E96280;
        v14 = 0xD000000000000013;
      }

      else
      {
        v15 = 0x80000001C2E96260;
        v14 = 0xD00000000000001CLL;
      }
    }

    else if (v13 == 3)
    {
      v14 = 0xD000000000000010;
      v15 = 0x80000001C2E962A0;
    }

    else
    {
      v15 = 0xE600000000000000;
      v14 = 0x696A6F6D656DLL;
    }

    *v6 = v14;
    *(v6 + 1) = v15;
    v6[16] = 1;
    swift_storeEnumTagMultiPayload();

    sub_1C2D7DE6C(v6);

    swift_getKeyPath();
    v18[0] = v10;
    sub_1C2E71A64();

    result = swift_beginAccess();
    if (*(v10 + 24))
    {
      v16 = *(v1 + 32);
      v17 = *(v1 + 40);

      v11 = v16;
      v12 = v17;
LABEL_21:
      sub_1C2E1BDDC(v11, v12);
    }
  }

  return result;
}

double ButtonShelfViewModel.rotationAngle.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 40);
}

double ButtonShelfViewModel.phoneLandscapeMaxWidth.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 48);
}

void __swiftcall ButtonShelfViewModel.ButtonConfig.init(label:accessibilityIdentifier:buttonAction:)(CommunicationsUI::ButtonShelfViewModel::ButtonConfig *__return_ptr retstr, Swift::String label, Swift::String accessibilityIdentifier, CommunicationsUI::ButtonShelfViewModel::ActionType buttonAction)
{
  v4 = *buttonAction;
  retstr->label = label;
  retstr->accessibilityIdentifier = accessibilityIdentifier;
  retstr->buttonAction = v4;
}

uint64_t ButtonShelfViewModel.__allocating_init(cameraEffects:cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:tapHandler:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v27 = *a1;
  v17 = *(a1 + 2);
  v26 = *(a1 + 3);
  LOBYTE(a1) = *(a1 + 32);
  v30 = *a2;
  v28 = *(a2 + 3);
  v29 = *(a2 + 2);
  LOBYTE(a2) = *(a2 + 32);
  v34 = *a3;
  v32 = *(a3 + 3);
  v33 = *(a3 + 2);
  LOBYTE(a3) = *(a3 + 32);
  v37 = *a4;
  v35 = *(a4 + 3);
  v36 = *(a4 + 2);
  LOBYTE(a4) = *(a4 + 32);
  v40 = *a5;
  v38 = *(a5 + 3);
  v39 = *(a5 + 2);
  LOBYTE(a5) = *(a5 + 32);
  v43 = *a6;
  v41 = *(a6 + 3);
  v42 = *(a6 + 2);
  LOBYTE(a6) = *(a6 + 32);
  v47 = *a7;
  v45 = *(a7 + 3);
  v46 = *(a7 + 2);
  v44 = *(a7 + 32);
  *(v16 + 20) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = MEMORY[0x1E69E7CC0];
  *(v16 + 32) = 0;
  *(v16 + 40) = xmmword_1C2E80900;
  *(v16 + 56) = 4;
  sub_1C2E71A94();
  v48 = v27;
  v49 = v17;
  v50 = v26;
  v51 = a1;
  type metadata accessor for ButtonShelfButtonViewModel();
  v18 = swift_allocObject();

  sub_1C2D14C1C(&v48, 1, a8, a9);
  *(v16 + 64) = v18;
  v48 = v30;
  v49 = v29;
  v50 = v28;
  v51 = a2;
  v19 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 72) = v19;
  v48 = v34;
  v49 = v33;
  v50 = v32;
  v51 = a3;
  v20 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 80) = v20;
  v48 = v37;
  v49 = v36;
  v50 = v35;
  v51 = a4;
  v21 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 88) = v21;
  v48 = v40;
  v49 = v39;
  v50 = v38;
  v51 = a5;
  v22 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 96) = v22;
  v48 = v43;
  v49 = v42;
  v50 = v41;
  v51 = a6;
  v23 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 104) = v23;
  v48 = v47;
  v49 = v46;
  v50 = v45;
  v51 = v44;
  v24 = swift_allocObject();
  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v16 + 112) = v24;
  return v16;
}

CommunicationsUI::ButtonShelfViewModel::Capabilities __swiftcall ButtonShelfViewModel.Capabilities.init(cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:)(Swift::Bool cinematicFraming, Swift::Bool cameraBlur, Swift::Bool studioLight, Swift::Bool memoji, Swift::Bool reactionGestures, Swift::Bool backgroundReplacement)
{
  *v6 = cinematicFraming;
  v6[1] = cameraBlur;
  v6[2] = studioLight;
  v6[3] = memoji;
  v6[4] = reactionGestures;
  v6[5] = backgroundReplacement;
  result.cinematicFraming = cinematicFraming;
  return result;
}

uint64_t sub_1C2D10BCC()
{
  v1 = v0[4];
  if (*v0 == 1)
  {
    if (v0[1])
    {
      if (v0[2])
      {
        if (v0[3])
        {
          if (v1)
          {
            result = 5;
            if (v0[5])
            {
              goto LABEL_39;
            }
          }

          else
          {
            result = 4;
            if (v0[5])
            {
              goto LABEL_39;
            }
          }

          return result;
        }

        v3 = v1 == 0;
        v4 = 3;
LABEL_35:
        if (v3)
        {
          result = v4;
        }

        else
        {
          result = v4 + 1;
        }

        if (v0[5])
        {
          goto LABEL_39;
        }

        return result;
      }

      if ((v0[3] & 1) == 0)
      {
        v3 = v1 == 0;
        v4 = 2;
        goto LABEL_35;
      }

LABEL_24:
      if (v1)
      {
        result = 4;
        if (v0[5])
        {
          goto LABEL_39;
        }
      }

      else
      {
        result = 3;
        if (v0[5])
        {
          goto LABEL_39;
        }
      }

      return result;
    }
  }

  else if ((v0[1] & 1) == 0)
  {
    if ((v0[2] & 1) == 0)
    {
      if ((v0[3] & 1) == 0)
      {
        if (v1)
        {
          result = 1;
          if (v0[5])
          {
            goto LABEL_39;
          }
        }

        else
        {
          result = 0;
          if (v0[5])
          {
            goto LABEL_39;
          }
        }

        return result;
      }

      v3 = v1 == 0;
      v4 = 1;
      goto LABEL_35;
    }

    if (v0[3])
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v1)
    {
      result = 2;
      if (v0[5])
      {
        goto LABEL_39;
      }
    }

    else
    {
      result = 1;
      if (v0[5])
      {
        goto LABEL_39;
      }
    }

    return result;
  }

  if ((v0[2] & 1) == 0)
  {
    if (v0[3])
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v0[3])
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v1)
  {
    result = 3;
    if (v0[5])
    {
      goto LABEL_39;
    }
  }

  else
  {
    result = 2;
    if (v0[5])
    {
LABEL_39:
      ++result;
    }
  }

  return result;
}

void ButtonShelfViewModel.ActionType.systemImage.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v3 = 0xEA00000000006C6CLL;
    v8 = 0x80000001C2E962C0;
    v9 = 0xD000000000000016;
    if (v2 != 1)
    {
      v9 = 0x7669737275632E66;
      v8 = 0xE900000000000065;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0x69662E6F65646976;
    }

    if (!v10)
    {
      v3 = v8;
    }
  }

  else
  {
    v3 = 0x80000001C2E96280;
    v4 = 0xD00000000000001CLL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x80000001C2E96260;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001C2E962A0;
    if (v2 != 3)
    {
      v5 = 0x696A6F6D656DLL;
      v6 = 0xE600000000000000;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }
  }

  *a1 = v7;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
}

int8x16_t ButtonShelfViewModel.ActionType.toggledOnSystemImage.getter@<Q0>(int8x16_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  v3 = vdup_n_s32(*v1 == 0);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), xmmword_1C2E808F0);
  *a1 = result;
  a1[1].i8[0] = v2;
  return result;
}

uint64_t ButtonShelfViewModel.ActionType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

BOOL ButtonShelfViewModel.isExpandable.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_1C2E764E4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 > 4;
}

uint64_t ButtonShelfViewModel.cinematicFramingIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1C2D1101C()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16) == 1 && (*(v1 + 17) & 1) != 0 || (v2 = *(v0 + 80), *(v2 + 16) == 1) && (*(v2 + 17) & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 88);
    if (*(v4 + 16) == 1)
    {
      v3 = *(v4 + 17);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = *(v0 + 64);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *(v5 + 17) = v3 & ~*(v0 + 32) & 1;
  return sub_1C2D148E8();
}

uint64_t (*sub_1C2D11144(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D11198;
}

uint64_t sub_1C2D11198(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 72);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 16);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  return result;
}

uint64_t sub_1C2D11260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t ButtonShelfViewModel.cinematicFramingIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
    v5 = *(v1 + 72);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 16);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D114F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  v4 = *(a1 + 72);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 16);
  sub_1C2D148E8();
  return sub_1C2D1101C();
}

void (*ButtonShelfViewModel.cinematicFramingIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D11144(v4);
  return sub_1C2D11710;
}

uint64_t ButtonShelfViewModel.cameraBlurIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t (*sub_1C2D117D0(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D11824;
}

uint64_t sub_1C2D11824(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 80);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 17);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  return result;
}

uint64_t sub_1C2D118EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t ButtonShelfViewModel.cameraBlurIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
    v5 = *(v1 + 80);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 17);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D11B80(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 17) = a2;
  v4 = *(a1 + 80);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 17);
  sub_1C2D148E8();
  return sub_1C2D1101C();
}

void (*ButtonShelfViewModel.cameraBlurIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D117D0(v4);
  return sub_1C2D11D9C;
}

uint64_t ButtonShelfViewModel.studioLightIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t (*sub_1C2D11E5C(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D11EB0;
}

uint64_t sub_1C2D11EB0(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 88);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 18);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  return result;
}

uint64_t sub_1C2D11F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t ButtonShelfViewModel.studioLightIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
    v5 = *(v1 + 88);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 18);
    sub_1C2D148E8();
    return sub_1C2D1101C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D1220C(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 18) = a2;
  v4 = *(a1 + 88);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 18);
  sub_1C2D148E8();
  return sub_1C2D1101C();
}

void (*ButtonShelfViewModel.studioLightIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D11E5C(v4);
  return sub_1C2D12428;
}

uint64_t ButtonShelfViewModel.memojiIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 19);
}

uint64_t (*sub_1C2D124E8(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D1253C;
}

uint64_t sub_1C2D1253C(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 96);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 19);
    return sub_1C2D148E8();
  }

  return result;
}

uint64_t sub_1C2D125FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 19);
  return result;
}

uint64_t ButtonShelfViewModel.memojiIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 19) == v2)
  {
    *(v1 + 19) = v2;
    v5 = *(v1 + 96);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 19);
    return sub_1C2D148E8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D12888(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 19) = a2;
  v4 = *(a1 + 96);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 19);
  return sub_1C2D148E8();
}

void (*ButtonShelfViewModel.memojiIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D124E8(v4);
  return sub_1C2D12A9C;
}

uint64_t ButtonShelfViewModel.reactionEffectGestureIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t (*sub_1C2D12B5C(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D12BB0;
}

uint64_t sub_1C2D12BB0(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 104);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 20);
    return sub_1C2D148E8();
  }

  return result;
}

uint64_t sub_1C2D12C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 20);
  return result;
}

uint64_t ButtonShelfViewModel.reactionEffectGestureIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 20) == v2)
  {
    *(v1 + 20) = v2;
    v5 = *(v1 + 104);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 20);
    return sub_1C2D148E8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D12EFC(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 20) = a2;
  v4 = *(a1 + 104);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 20);
  return sub_1C2D148E8();
}

void (*ButtonShelfViewModel.reactionEffectGestureIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D12B5C(v4);
  return sub_1C2D13110;
}

uint64_t ButtonShelfViewModel.backgroundReplacementIsEnabled.getter()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 21);
}

uint64_t (*sub_1C2D131D0(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D13224;
}

uint64_t sub_1C2D13224(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    v6 = *(v5 + 112);
    swift_getKeyPath();
    *a1 = v5;
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v6 + 17) = *(v5 + 21);
    return sub_1C2D148E8();
  }

  return result;
}

uint64_t sub_1C2D132E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  result = swift_beginAccess();
  *a2 = *(v3 + 21);
  return result;
}

uint64_t ButtonShelfViewModel.backgroundReplacementIsEnabled.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 21) == v2)
  {
    *(v1 + 21) = v2;
    v5 = *(v1 + 112);
    swift_getKeyPath();
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A64();

    *(v5 + 17) = *(v1 + 21);
    return sub_1C2D148E8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D13570(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 21) = a2;
  v4 = *(a1 + 112);
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *(v4 + 17) = *(a1 + 21);
  return sub_1C2D148E8();
}

void (*ButtonShelfViewModel.backgroundReplacementIsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2D131D0(v4);
  return sub_1C2D13784;
}

uint64_t type metadata accessor for ButtonShelfViewModel()
{
  result = qword_1EC05C1E8;
  if (!qword_1EC05C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2D137DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
}

uint64_t (*sub_1C2D13818(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2D1386C;
}

uint64_t sub_1C2D1386C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C2D1101C();
  }

  return result;
}

uint64_t ButtonShelfViewModel.isExpanded.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
    return sub_1C2D1101C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }
}

double sub_1C2D139C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t ButtonShelfViewModel.rotationAngle.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }

  return result;
}

void (*ButtonShelfViewModel.rotationAngle.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2D13D18;
}

double sub_1C2D13D24@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t ButtonShelfViewModel.phoneLandscapeMaxWidth.setter(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
    sub_1C2E71A54();
  }

  return result;
}

void (*ButtonShelfViewModel.phoneLandscapeMaxWidth.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2D14074;
}

uint64_t ButtonShelfViewModel.init(cameraEffects:cinematicFraming:cameraBlur:studioLight:memoji:reactionGestures:backgroundReplacement:tapHandler:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = *(a1 + 32);
  v27 = *a1;
  v28 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 3);
  v17 = *(a2 + 32);
  v31 = *a3;
  v18 = *(a3 + 3);
  v30 = *(a3 + 2);
  v29 = *(a3 + 32);
  v35 = *a4;
  v33 = *(a4 + 3);
  v34 = *(a4 + 2);
  v32 = *(a4 + 32);
  v39 = *a5;
  v37 = *(a5 + 3);
  v38 = *(a5 + 2);
  v36 = *(a5 + 32);
  v43 = *a6;
  v41 = *(a6 + 3);
  v42 = *(a6 + 2);
  v40 = *(a6 + 32);
  v47 = *a7;
  v45 = *(a7 + 3);
  v46 = *(a7 + 2);
  v44 = *(a7 + 32);
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 0;
  *(v10 + 40) = xmmword_1C2E80900;
  *(v10 + 56) = 4;
  sub_1C2E71A94();
  v48 = v27;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  type metadata accessor for ButtonShelfButtonViewModel();
  v19 = swift_allocObject();

  sub_1C2D14C1C(&v48, 1, a8, a9);
  *(v10 + 64) = v19;
  v48 = v28;
  v49 = v15;
  v50 = v16;
  v51 = v17;
  v20 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 72) = v20;
  v48 = v31;
  v49 = v30;
  v50 = v18;
  v51 = v29;
  v21 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 80) = v21;
  v48 = v35;
  v49 = v34;
  v50 = v33;
  v51 = v32;
  v22 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 88) = v22;
  v48 = v39;
  v49 = v38;
  v50 = v37;
  v51 = v36;
  v23 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 96) = v23;
  v48 = v43;
  v49 = v42;
  v50 = v41;
  v51 = v40;
  v24 = swift_allocObject();

  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 104) = v24;
  v48 = v47;
  v49 = v46;
  v50 = v45;
  v51 = v44;
  v25 = swift_allocObject();
  sub_1C2D14C1C(&v48, 0, a8, a9);
  *(v10 + 112) = v25;
  return v10;
}

Swift::Void __swiftcall ButtonShelfViewModel.update(_:)(CommunicationsUI::ButtonShelfViewModel::Capabilities a1)
{
  v2 = **&a1.cinematicFraming;
  v3 = *(*&a1.cinematicFraming + 1);
  v4 = *(*&a1.cinematicFraming + 2);
  v5 = *(*&a1.cinematicFraming + 3);
  v6 = *(*&a1.cinematicFraming + 4);
  v7 = *(*&a1.cinematicFraming + 5);
  v17 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C2D10BCC();
  if (v8 >= 5)
  {

    MEMORY[0x1C6926780](v9);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
    if ((v2 & 1) == 0)
    {
LABEL_10:
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_7:
    *(v1[9] + 16) = v8 > 4;

    MEMORY[0x1C6926780](v10);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
    goto LABEL_10;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_11:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_17:
  *(v1[10] + 16) = v8 > 4;

  MEMORY[0x1C6926780](v11);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (!v4)
  {
LABEL_12:
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_20:
  *(v1[11] + 16) = v8 > 4;

  MEMORY[0x1C6926780](v12);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (!v5)
  {
LABEL_13:
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_23:

  MEMORY[0x1C6926780](v13);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (!v6)
  {
LABEL_14:
    if (!v7)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_26:

  MEMORY[0x1C6926780](v14);
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
  if (v7)
  {
LABEL_29:

    MEMORY[0x1C6926780](v15);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
  }

LABEL_32:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2D1603C(&qword_1EC05C1F8, type metadata accessor for ButtonShelfViewModel);
  sub_1C2E71A54();
}

uint64_t ButtonShelfViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI20ButtonShelfViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ButtonShelfViewModel.__deallocating_deinit()
{
  ButtonShelfViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C2D148E8()
{
  swift_getKeyPath();
  sub_1C2D1603C(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 17);

  if (v1 == 1)
  {
    v2 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  }

  else
  {
    v2 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  }

  sub_1C2D7E3B0(v2);

  swift_getKeyPath();
  sub_1C2E71A64();

  v3 = *(v0 + 17);
  if (v3)
  {
    v4 = *MEMORY[0x1E69DDA08];
  }

  else
  {
    v4 = 0;
  }

  sub_1C2D7FBDC(v4, v3 ^ 1);

  if (*(v0 + 17) == 1)
  {
    if (qword_1EC05CA18 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EC0759F8;
  }

  else
  {
    if (qword_1EC05CA10 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EC0759D8;
  }

  v6 = *v5;
  v7 = v5[2];
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  sub_1C2CC290C(*v5, v8);
  sub_1C2CC290C(v7, v9);
  swift_getKeyPath();
  sub_1C2E71A64();

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2D1603C(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A54();
  sub_1C2CC2678(v6, v8);
  sub_1C2CC2678(v7, v9);
}

uint64_t sub_1C2D14C1C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v72 = sub_1C2E757E4();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v62 - v11;
  v12 = type metadata accessor for ControlButtonElement(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v21 = *(a1 + 32);
  *(v4 + 16) = 0;
  v68 = v17;
  *(v4 + 32) = v17;
  *(v4 + 40) = v18;
  v66 = v19;
  *(v4 + 48) = v19;
  *(v4 + 56) = v20;
  *(v4 + 64) = v21;
  *(v4 + 18) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  v22 = qword_1EC05CA10;

  v69 = v18;

  v76 = v20;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC0759D8;
  v24 = byte_1EC0759E0;
  v25 = qword_1EC0759E8;
  v26 = byte_1EC0759F0;
  v74 = v4;
  v73 = a4;
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        v28 = 0x80000001C2E962C0;
        v27 = 0xD000000000000016;
      }

      else
      {
        v28 = 0xE900000000000065;
        v27 = 0x7669737275632E66;
      }
    }

    else
    {
      v28 = 0xEA00000000006C6CLL;
      v27 = 0x69662E6F65646976;
    }
  }

  else if (v21 > 4)
  {
    if (v21 == 5)
    {
      v28 = 0x80000001C2E96280;
      v27 = 0xD000000000000013;
    }

    else
    {
      v28 = 0x80000001C2E96260;
      v27 = 0xD00000000000001CLL;
    }
  }

  else if (v21 == 3)
  {
    v27 = 0xD000000000000010;
    v28 = 0x80000001C2E962A0;
  }

  else
  {
    v28 = 0xE600000000000000;
    v27 = 0x696A6F6D656DLL;
  }

  *v16 = v27;
  *(v16 + 1) = v28;
  v16[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1C2CC290C(v23, v24);
  sub_1C2CC290C(v25, v26);
  v62 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v65 = v16;
  v29 = v75;
  sub_1C2D15F5C(v16, v75);
  type metadata accessor for ControlButtonConfiguration(0);
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(v31 + 56) = -256;
  v32 = (v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v32 = 0;
  v32[1] = 0;
  v33 = v23;
  v34 = (v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v34 = 0;
  v34[1] = 0;
  v35 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v35 = 0;
  v63 = v35;
  *(v35 + 8) = 1;
  v36 = OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration___observationRegistrar;
  v37 = v76;

  v64 = v36;
  sub_1C2E71A94();
  *(v30 + 16) = 1;
  *(v30 + 24) = v33;
  *(v30 + 32) = v24;
  *(v30 + 40) = v25;
  v38 = v62;
  *(v30 + 48) = v26;
  sub_1C2D15F5C(v29, v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element);
  *(v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = v38;
  v39 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v30 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v40 = sub_1C2D15D8C;
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v83 = -256;

  sub_1C2D7E988(v81);
  sub_1C2D7F264(v66, v37);
  swift_beginAccess();
  if (v34[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v62 - 3) = 0;
    *(&v62 - 2) = 0;
    *(&v62 - 4) = v30;
    v80 = v30;
    sub_1C2D1603C(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
  }

  v42 = v63;
  swift_beginAccess();
  v43 = v65;
  if (*(v42 + 8))
  {
    v66 = 0;

    sub_1C2D15FC0(v75);
    sub_1C2D15FC0(v43);
    *v42 = 0;
    *(v42 + 8) = 1;
  }

  else
  {
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    *(&v62 - 4) = v30;
    *(&v62 - 3) = 0;
    *(&v62 - 16) = 1;
    v79 = v30;
    sub_1C2D1603C(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
    sub_1C2E71A54();
    v66 = 0;

    sub_1C2D15FC0(v75);
    sub_1C2D15FC0(v43);
  }

  v45 = v69;

  v46 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v47 = sub_1C2E74534();
  v48 = v67;
  (*(*(v47 - 8) + 56))(v67, 1, 1, v47);
  v49 = sub_1C2E745C4();
  sub_1C2CB410C(v48);
  v50 = v71;
  v51 = v70;
  v52 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x1E6981DF0], v72);
  type metadata accessor for ControlTextConfiguration();
  v53 = swift_allocObject();
  v54 = v53 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v54 = 0;
  v54[8] = 1;
  sub_1C2E71A94();
  v53[2] = v68;
  v53[3] = v45;
  v53[4] = v46;
  v53[5] = v49;
  (*(v50 + 32))(v53 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v51, v52);
  v55 = OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText;
  *(v53 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v54 = 0;
  v54[8] = 1;
  v56 = OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment;
  *(v53 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;

  swift_beginAccess();
  if (*(v53 + v55))
  {
    *(v53 + v55) = 1;
  }

  else
  {
    v57 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v57);
    *(&v62 - 2) = v53;
    *(&v62 - 8) = 1;
    v78 = v53;
    sub_1C2D1603C(&qword_1EC05BE58, type metadata accessor for ControlTextConfiguration);
    sub_1C2E71A54();
  }

  sub_1C2E1D8BC(2, 0);
  swift_beginAccess();
  if (sub_1C2E73384())
  {
    *(v53 + v56) = 1;
  }

  else
  {
    v58 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v58);
    *(&v62 - 2) = v53;
    *(&v62 - 8) = 1;
    v77 = v53;
    sub_1C2D1603C(&qword_1EC05BE58, type metadata accessor for ControlTextConfiguration);
    sub_1C2E71A54();
  }

  type metadata accessor for StackedControlButtonConfiguration();
  v59 = swift_allocObject();
  *(v59 + 24) = 0;

  sub_1C2E71A94();
  *(v59 + 16) = v30;
  v60 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v60);
  *(&v62 - 2) = v59;
  *(&v62 - 1) = v53;
  v77 = v59;
  sub_1C2D1603C(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  result = v74;
  *(v74 + 24) = v59;
  return result;
}

uint64_t sub_1C2D15870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 32) = v2;
  return sub_1C2D1101C();
}

uint64_t sub_1C2D158CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1C2D15920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

unint64_t sub_1C2D15978()
{
  result = qword_1EC05F7C8;
  if (!qword_1EC05F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F7C8);
  }

  return result;
}

uint64_t sub_1C2D159D4()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonShelfViewModel.Capabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
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

uint64_t storeEnumTagSinglePayload for ButtonShelfViewModel.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonShelfViewModel.ActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ButtonShelfViewModel.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C2D15CF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C2D15D38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C2D15D94()
{

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C2D15DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E765D4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2D15E34@<X0>(uint64_t a1@<X8>)
{
  v2 = _UISolariumEnabled();
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v3 = sub_1C2E74F74();

  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v4 = sub_1C2E74F74();

  if (v2)
  {
    v6 = 0x80;
  }

  else
  {
    v6 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_1C2D15ECC()
{
  v0 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v1 = sub_1C2E74F74();

  qword_1EC0759F8 = v0;
  byte_1EC075A00 = 1;
  qword_1EC075A08 = v1;
  byte_1EC075A10 = 1;
  return result;
}

uint64_t sub_1C2D15F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButtonElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D15FC0(uint64_t a1)
{
  v2 = type metadata accessor for ControlButtonElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D1603C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D160E4(uint64_t a1)
{
  v2 = sub_1C2E730D4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C2E738C4();
}

uint64_t BannerCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __swiftcall BannerCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(UIView *__return_ptr retstr, UIViewController *hostingVC, UIButton *leadingButton, UIButton *trailingButton)
{
  v29 = hostingVC;
  v7 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F7D0);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v30 = *v4;
  BannerCallScreeningReceptionistRingingComposer.compose(leadingButton:trailingButton:)(leadingButton, trailingButton, &v28 - v16);
  KeyPath = swift_getKeyPath();
  v19 = &v17[*(v9 + 44)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v21 = *MEMORY[0x1E697DBA8];
  v22 = sub_1C2E730D4();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = KeyPath;
  sub_1C2C736A4(v17, v15, &qword_1EC05F7D0);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F7D8));
  sub_1C2C736A4(v15, v12, &qword_1EC05F7D0);
  v24 = sub_1C2E73E44();
  sub_1C2C73644(v15, &qword_1EC05F7D0);
  sub_1C2C73644(v17, &qword_1EC05F7D0);
  v25 = v24;
  v26 = v29;
  [(UIViewController *)v29 addChildViewController:v25];
  [v25 didMoveToParentViewController_];
  sub_1C2E743A4();
  sub_1C2E73E14();
  v27 = [v25 view];

  if (v27)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t BannerCallScreeningReceptionistRingingComposer.compose(leadingButton:trailingButton:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F7E0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v43 - v9);
  v11 = *v3;
  v50 = sub_1C2E73DC4();
  v63 = 0;
  sub_1C2D16828(v11, a1, a2, &v52);
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v64 = v52;
  v65 = v53;
  v74[6] = v58;
  v74[7] = v59;
  v74[8] = v60;
  v74[2] = v54;
  v74[3] = v55;
  v74[4] = v56;
  v74[5] = v57;
  v73 = v61;
  v75 = v61;
  v74[0] = v52;
  v74[1] = v53;
  sub_1C2C736A4(&v64, v51, &qword_1EC05F7E8);
  sub_1C2C73644(v74, &qword_1EC05F7E8);
  *(&v62[6] + 7) = v70;
  *(&v62[7] + 7) = v71;
  *(&v62[8] + 7) = v72;
  *(&v62[2] + 7) = v66;
  *(&v62[3] + 7) = v67;
  *(&v62[4] + 7) = v68;
  *(&v62[5] + 7) = v69;
  *(v62 + 7) = v64;
  *(&v62[9] + 7) = v73;
  *(&v62[1] + 7) = v65;
  v49 = v63;
  v48 = sub_1C2E74444();
  sub_1C2E73034();
  v46 = v13;
  v47 = v12;
  v44 = v15;
  v45 = v14;
  v51[0] = 0;
  LOBYTE(a2) = sub_1C2E74464();
  sub_1C2E73034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v52) = 0;
  LOBYTE(a1) = sub_1C2E74474();
  sub_1C2E73034();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v51[0] = 0;
  v32 = sub_1C2E757A4();
  swift_getKeyPath();
  *&v52 = v11;
  sub_1C2D16CBC();
  sub_1C2E71A64();

  v33 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v11 + v33, v10 + *(v8 + 44), &qword_1EC05E088);
  *v10 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F7F0);
  sub_1C2C736A4(v10, a3 + *(v34 + 36), &qword_1EC05F7E0);
  v35 = v62[7];
  *(a3 + 113) = v62[6];
  *(a3 + 129) = v35;
  *(a3 + 145) = v62[8];
  *(a3 + 160) = *(&v62[8] + 15);
  v36 = v62[3];
  *(a3 + 49) = v62[2];
  *(a3 + 65) = v36;
  v37 = v62[5];
  *(a3 + 81) = v62[4];
  *(a3 + 97) = v37;
  v38 = v62[1];
  *(a3 + 17) = v62[0];
  *a3 = v50;
  *(a3 + 8) = 0;
  v39 = v48;
  *(a3 + 16) = v49;
  *(a3 + 33) = v38;
  *(a3 + 176) = v39;
  v40 = v46;
  *(a3 + 184) = v47;
  *(a3 + 192) = v40;
  v41 = v44;
  *(a3 + 200) = v45;
  *(a3 + 208) = v41;
  *(a3 + 216) = 0;
  *(a3 + 224) = a2;
  *(a3 + 232) = v17;
  *(a3 + 240) = v19;
  *(a3 + 248) = v21;
  *(a3 + 256) = v23;
  *(a3 + 264) = 0;
  *(a3 + 272) = a1;
  *(a3 + 280) = v25;
  *(a3 + 288) = v27;
  *(a3 + 296) = v29;
  *(a3 + 304) = v31;
  *(a3 + 312) = 0;
  return sub_1C2C73644(v10, &qword_1EC05F7E0);
}

uint64_t sub_1C2D16828@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C2E73C24();
  LOBYTE(v32[0]) = 0;
  sub_1C2D16A94(a2, a3, &v37);
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  v30[0] = v37;
  v30[1] = v38;
  v30[2] = v39;
  v30[3] = v40;
  sub_1C2C736A4(&v26, v46, &qword_1EC05F848);
  sub_1C2C73644(v30, &qword_1EC05F848);
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *&v25[55] = v29;
  v9 = v32[0];
  LOBYTE(a3) = sub_1C2E74474();
  sub_1C2E73034();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v46[0] = a1;
  type metadata accessor for IntelligenceMessageViewModel();

  sub_1C2E75174();
  v18 = v37;
  v32[0] = v8;
  v32[1] = 0;
  v33[0] = v9;
  *&v33[17] = *&v25[16];
  *&v33[33] = *&v25[32];
  *&v33[49] = *&v25[48];
  *&v33[64] = *&v25[63];
  *&v33[1] = *v25;
  v33[72] = a3;
  *&v33[76] = *&v31[3];
  *&v33[73] = *v31;
  *&v34 = v11;
  *(&v34 + 1) = v13;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v36 = 0;
  LOBYTE(v45) = 0;
  v43 = v34;
  v44 = v35;
  v41 = *&v33[48];
  v42 = *&v33[64];
  v39 = *&v33[16];
  v40 = *&v33[32];
  v37 = v8;
  v38 = *v33;
  v19 = v35;
  *(a4 + 96) = v34;
  *(a4 + 112) = v19;
  v20 = v45;
  v21 = v40;
  *(a4 + 32) = v39;
  *(a4 + 48) = v21;
  v22 = v42;
  *(a4 + 64) = v41;
  *(a4 + 80) = v22;
  v23 = v38;
  *a4 = v37;
  *(a4 + 16) = v23;
  *(a4 + 128) = v20;
  *(a4 + 136) = v18;
  sub_1C2C736A4(v32, v46, &qword_1EC05F850);
  v49 = *&v25[16];
  v50 = *&v25[32];
  *v51 = *&v25[48];
  v46[0] = v8;
  v46[1] = 0;
  v47 = v9;
  *&v51[15] = *&v25[63];
  v48 = *v25;
  v52 = a3;
  *&v53[3] = *&v31[3];
  *v53 = *v31;
  v54 = v11;
  v55 = v13;
  v56 = v15;
  v57 = v17;
  v58 = 0;
  return sub_1C2C73644(v46, &qword_1EC05F850);
}

__n128 sub_1C2D16A94@<Q0>(void *a1@<X2>, void *a2@<X3>, __n128 *a3@<X8>)
{
  type metadata accessor for ParticipantLabelViewModel();

  sub_1C2E75174();
  v6 = a1;
  a2;
  sub_1C2E75174();
  sub_1C2E75174();
  result = v8;
  *a3 = v8;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u8[8] = 1;
  a3[2] = v8;
  a3[3].n128_u64[0] = v9;
  a3[3].n128_u64[1] = v10;
  return result;
}

uint64_t sub_1C2D16B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D16CBC();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v4, a2, &qword_1EC05E088);
}

uint64_t sub_1C2D16C10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C736A4(a1, &v6 - v3, &qword_1EC05E088);
  return sub_1C2D412FC(v4);
}

unint64_t sub_1C2D16CBC()
{
  result = qword_1EC05E090;
  if (!qword_1EC05E090)
  {
    type metadata accessor for IntelligenceMessageViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E090);
  }

  return result;
}

unint64_t sub_1C2D16D24()
{
  result = qword_1EC05F7F8;
  if (!qword_1EC05F7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F7F0);
    sub_1C2D16E38(&qword_1EC05F800, &qword_1EC05F808, &unk_1C2E80F70, sub_1C2D16E08);
    sub_1C2C94F38(&qword_1EC05F840, &qword_1EC05F7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F7F8);
  }

  return result;
}

uint64_t sub_1C2D16E38(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D16EBC()
{
  result = qword_1EC05F820;
  if (!qword_1EC05F820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F828);
    sub_1C2C94F38(&qword_1EC05F830, &qword_1EC05F838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F820);
  }

  return result;
}

uint64_t BannerCallScreeningReceptionistIncomingComposer.init(bottomStatusViewModel:participantViewModel:bodyViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void __swiftcall BannerCallScreeningReceptionistIncomingComposer.compose(hostingVC:)(UIView *__return_ptr retstr, UIViewController *hostingVC)
{
  v4 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F858);
  v6 = v5 - 8;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v31 - v13);
  v15 = *(v2 + 2);
  v31 = *v2;
  v32 = v15;
  BannerCallScreeningReceptionistIncomingComposer.compose()(v33);
  KeyPath = swift_getKeyPath();
  v17 = (v14 + *(v6 + 44));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v19 = *MEMORY[0x1E697DBA8];
  v20 = sub_1C2E730D4();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = KeyPath;
  v21 = v34[0];
  v14[10] = v33[10];
  v14[11] = v21;
  *(v14 + 185) = *(v34 + 9);
  v22 = v33[7];
  v14[6] = v33[6];
  v14[7] = v22;
  v23 = v33[9];
  v14[8] = v33[8];
  v14[9] = v23;
  v24 = v33[3];
  v14[2] = v33[2];
  v14[3] = v24;
  v25 = v33[5];
  v14[4] = v33[4];
  v14[5] = v25;
  v26 = v33[1];
  *v14 = v33[0];
  v14[1] = v26;
  sub_1C2D173EC(v14, v12);
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F860));
  sub_1C2D173EC(v12, v9);
  v28 = sub_1C2E73E44();
  sub_1C2D1745C(v12);
  sub_1C2D1745C(v14);
  v29 = v28;
  [(UIViewController *)hostingVC addChildViewController:v29];
  [v29 didMoveToParentViewController_];
  sub_1C2E743A4();
  sub_1C2E73E14();
  v30 = [v29 view];

  if (v30)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t BannerCallScreeningReceptionistIncomingComposer.compose()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntelligenceMessageViewModel();

  sub_1C2E75174();
  type metadata accessor for ParticipantLabelViewModel();

  sub_1C2E75174();
  type metadata accessor for IntelligenceBodyViewModel(0);

  sub_1C2E75174();
  KeyPath = swift_getKeyPath();
  v3 = sub_1C2E74444();
  sub_1C2E73034();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1C2E74464();
  sub_1C2E73034();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1C2E74474();
  result = sub_1C2E73034();
  *a1 = v27;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v27;
  *(a1 + 40) = v28;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = v3;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 88) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0;
  *(a1 + 112) = v12;
  *(a1 + 120) = v14;
  *(a1 + 128) = v16;
  *(a1 + 136) = v18;
  *(a1 + 144) = v20;
  *(a1 + 152) = 0;
  *(a1 + 160) = v21;
  *(a1 + 168) = v23;
  *(a1 + 176) = v24;
  *(a1 + 184) = v25;
  *(a1 + 192) = v26;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_1C2D173EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D1745C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D17534(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D175B8()
{
  result = qword_1EC05F898;
  if (!qword_1EC05F898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F8A0);
    sub_1C2D17644();
    sub_1C2D17698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F898);
  }

  return result;
}

unint64_t sub_1C2D17644()
{
  result = qword_1EC05F8A8;
  if (!qword_1EC05F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F8A8);
  }

  return result;
}

unint64_t sub_1C2D17698()
{
  result = qword_1EC05F8B0;
  if (!qword_1EC05F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F8B0);
  }

  return result;
}

void sub_1C2D176FC(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 24 * v2;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v1[1] = v2 + 1;
    v8 = v1[2];
    if (!__OFADD__(v8, 1))
    {
      v1[2] = v8 + 1;
      *a1 = v8;
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      sub_1C2C70B1C(v5, v6, v7);
      return;
    }
  }

  __break(1u);
}

double OffsetImageStack.init(imageProvider:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C2C716EC(a1, a2);
  result = 64.0;
  *(a2 + 40) = xmmword_1C2E810C0;
  *(a2 + 56) = 0x4018000000000000;
  return result;
}

id OffsetImageStack.makeUIView(context:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for OffsetCircles();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount] = 0;
  *&v8[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_iconSize] = v6;
  *&v8[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_interCircleSpacing] = v4;
  *&v8[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_offset] = v5;
  v9 = v4 + v6 + v5 * (*(v3 + 16) - 1);
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, v9, v6 + v4);
  sub_1C2D17D74(v3);

  return v10;
}

id OffsetCircles.__allocating_init(images:iconSize:interCircleSpacing:offset:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount] = 0;
  *&v9[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_iconSize] = a2;
  *&v9[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_interCircleSpacing] = a3;
  *&v9[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_offset] = a4;
  v10 = (*(a1 + 16) - 1) * a4 + a2 + a3;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, v10, a2 + a3);
  sub_1C2D17D74(a1);

  return v11;
}

uint64_t OffsetImageStack.updateUIView(_:context:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_1C2D17D74(v3);
}

uint64_t OffsetImageStack.spacing(iconSize:offset:interCircleSpacing:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  result = sub_1C2C6E3A4(v4, a1);
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  return result;
}

uint64_t sub_1C2D17AAC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_1C2D17D74(v3);
}

uint64_t sub_1C2D17B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D185B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2D17BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2D185B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2D17C1C()
{
  sub_1C2D185B8();
  sub_1C2E73EE4();
  __break(1u);
}

id OffsetCircles.init(images:iconSize:interCircleSpacing:offset:)(uint64_t a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_iconSize] = a2;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_interCircleSpacing] = a3;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_offset] = a4;
  v6 = (*(a1 + 16) - 1) * a4 + a2 + a3;
  v7 = a2 + a3;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for OffsetCircles();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, v6, v7);
  sub_1C2D17D74(a1);

  return v8;
}

id sub_1C2D17D74(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount] = *(a1 + 16);
  [v2 invalidateIntrinsicContentSize];
  v4 = [v2 layer];
  [v2 intrinsicContentSize];
  [v4 frame];
  [v4 setFrame_];

  v5 = [v2 layer];
  sub_1C2D1860C();
  v6 = sub_1C2E75D64();
  [v5 setSublayers_];

  v40 = 0;
  v41 = 0;
  v39 = a1;
  v7 = OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_offset;
  v8 = OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_interCircleSpacing;
  v9 = OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_iconSize;

  sub_1C2D176FC(&v35);
  v10 = v38;
  if (v38 != 255)
  {
    v11 = v35;
    v12 = v36;
    v13 = v37;
    v31 = *MEMORY[0x1E6979DF0];
    v29 = v7;
    v30 = *MEMORY[0x1E69796E8];
    do
    {
      v33 = v13;
      v34 = v11;
      v14 = *&v2[v7] * v11;
      v15 = v12;
      v32 = v12;
      v16 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      v17 = *&v2[v8];
      v18 = v16;
      [v18 setPosition_];
      v19 = *&v2[v9];
      [v18 bounds];
      [v18 setBounds_];
      [v18 setMasksToBounds_];
      v35 = v15;
      v36 = v13;
      LOBYTE(v37) = v10;
      v20 = SystemImage.cgImage.getter();
      [v18 setContents_];

      [v18 setContentsGravity_];
      [v18 setAnchorPoint_];
      [v18 setCornerRadius_];
      [v18 setCornerCurve_];
      [v18 setAllowsEdgeAntialiasing_];
      [v18 setAllowsGroupOpacity_];
      v21 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v21 setPosition_];
      [v21 bounds];
      [v21 setBounds_];
      [v21 setContentsGravity_];
      [v21 setAnchorPoint_];
      [v21 setCornerRadius_];
      [v21 setCornerCurve_];
      [v21 setAllowsEdgeAntialiasing_];
      [v21 setAllowsGroupOpacity_];
      [v21 setBorderWidth_];
      v22 = [objc_opt_self() redColor];
      v23 = [v22 CGColor];

      [v21 setBorderColor_];
      GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
      [v21 setBackgroundColor_];

      v25 = sub_1C2E75C24();
      [v21 setCompositingFilter_];

      v26 = [v2 layer];
      [v26 insertSublayer:v21 atIndex:0];

      v27 = [v2 layer];
      [v27 insertSublayer:v18 atIndex:0];

      v7 = v29;
      sub_1C2D18658(v34, v32, v33, v10);
      sub_1C2D176FC(&v35);
      v11 = v35;
      v12 = v36;
      v13 = v37;
      v10 = v38;
    }

    while (v38 != 255);
  }

  return [v2 setNeedsLayout];
}

void sub_1C2D1832C()
{
  if (__OFSUB__(*(v0 + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount), 1))
  {
    __break(1u);
  }
}

id OffsetCircles.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OffsetCircles.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OffsetCircles();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C2D1847C()
{
  result = qword_1EC05F8E0;
  if (!qword_1EC05F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F8E0);
  }

  return result;
}

uint64_t sub_1C2D184E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2D1852C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1C2D185B8()
{
  result = qword_1EC05F8E8;
  if (!qword_1EC05F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F8E8);
  }

  return result;
}

unint64_t sub_1C2D1860C()
{
  result = qword_1EC05F8F0;
  if (!qword_1EC05F8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05F8F0);
  }

  return result;
}

void sub_1C2D18658(int a1, void *a2, id a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1C2C77608(a2, a3, a4);
  }
}

uint64_t EnvironmentValues.activityEnvironment.getter()
{
  sub_1C2CBE714();

  return sub_1C2E73BB4();
}

uint64_t ActivityEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t sub_1C2D1879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2D1889C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.activityEnvironment.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C2CBE714();
  sub_1C2E73BB4();
  return sub_1C2D18860;
}

unint64_t sub_1C2D1889C()
{
  result = qword_1EC05F8F8;
  if (!qword_1EC05F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F8F8);
  }

  return result;
}

char *LockStateViewController.__allocating_init(_:)(void *a1)
{
  v3 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C2E75C14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  sub_1C2E75BB4();
  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v13 = sub_1C2E75C84();
  v15 = v14;
  (*(v5 + 8))(v10, v4);
  v16 = objc_allocWithZone(v1);
  return LockStateViewController.init(title:subtitle:contentViewController:)(v13, v15, 0, 0, a1);
}

char *LockStateContentViewController.inLockStateViewController(subtitle:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C2E75C14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  sub_1C2E75BB4();
  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v13 = sub_1C2E75C84();
  v15 = v14;
  (*(v5 + 8))(v10, v4);
  v16 = type metadata accessor for LockStateViewController();

  v17 = v20[1];
  v18 = objc_allocWithZone(v16);
  return LockStateViewController.init(title:subtitle:contentViewController:)(v13, v15, v21, a2, v17);
}

char *LockStateViewController.init(title:subtitle:contentViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v12 = *v5;
  v13 = *MEMORY[0x1E69E7D40];
  *(v5 + qword_1EC05F918) = 0;
  *(v5 + qword_1EC05F920) = 0;
  *(v5 + qword_1EC05F928) = 0;
  *(v5 + qword_1EC05F930) = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EC05F938) = 2;
  v14 = (v5 + qword_1EC05F940);
  *v14 = a1;
  v14[1] = a2;
  v15 = (v5 + qword_1EC05F948);
  *v15 = a3;
  v15[1] = a4;
  *(v5 + qword_1EC05F950) = a5;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v24 = a5;
  v16 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v17 = *&v16[qword_1EC05F950];
  v18 = *((v13 & v12) + 0x58);
  v19 = *(v18 + 16);
  v20 = *((v13 & v12) + 0x50);
  v21 = v16;
  v22 = v17;
  v19(v16, &protocol witness table for LockStateViewController<A>, v20, v18);

  return v21;
}

Swift::Void __swiftcall LockStateViewController.viewDidLoad()()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:sub_1C2E76794() action:sel_wantsToUnlock];
  swift_unknownObjectRelease();
  v6 = [v0 view];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6;
  [v6 addGestureRecognizer_];

  v8 = *&v1[qword_1EC05F950];
  [v1 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  v13 = [v8 view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  [v12 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C2E7A700;
  v16 = [v8 view];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v15 + 32) = v22;
  v23 = [v8 view];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v15 + 40) = v29;
  v30 = [v8 view];
  if (!v30)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v15 + 48) = v36;
  v37 = [v8 view];
  if (!v37)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v39 constraintEqualToAnchor_];
  *(v15 + 56) = v43;
  [v8 didMoveToParentViewController_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A700;
  v45 = sub_1C2D1A4F0(&qword_1EC05F918, sub_1C2D1A2CC);
  v46 = [v45 topAnchor];

  v47 = [v1 view];
  if (!v47)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v48 = v47;
  v49 = [v47 topAnchor];

  v50 = [v46 constraintGreaterThanOrEqualToAnchor_];
  *(inited + 32) = v50;
  v51 = qword_1EC05F918;
  v52 = [*&v1[qword_1EC05F918] leadingAnchor];
  v53 = [v1 view];
  if (!v53)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v54 = v53;
  v55 = [v53 leadingAnchor];

  v56 = [v52 constraintEqualToAnchor_];
  *(inited + 40) = v56;
  v57 = [*&v1[v51] trailingAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v57 constraintEqualToAnchor_];
  *(inited + 48) = v61;
  v62 = [*&v1[v51] bottomAnchor];
  v63 = [v1 view];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 bottomAnchor];

    v66 = [v62 constraintEqualToAnchor:v65 constant:-39.0];
    *(inited + 56) = v66;
    sub_1C2CA2AE4(inited);
    v67 = objc_opt_self();
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v68 = sub_1C2E75D64();

    [v67 activateConstraints_];

    sub_1C2D197A8();
    sub_1C2D19940();

    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1C2D197A8()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  if (qword_1EC05CF40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2E72B44();
  __swift_project_value_buffer(v2, qword_1EC05F900);
  v3 = v0;
  v4 = sub_1C2E72B24();
  v5 = sub_1C2E75FE4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = sub_1C2D1A25C() & 1;

    _os_log_impl(&dword_1C2C6B000, v4, v5, "showLockedScreenState has updated to: %{BOOL}d", v6, 8u);
    MEMORY[0x1C6927DF0](v6, -1, -1);
  }

  else
  {

    v4 = v3;
  }

  if (sub_1C2D1A25C())
  {
    sub_1C2D1A7D4();
  }

  else
  {
    sub_1C2D1A86C();
  }

  return (*(*(v1 + 88) + 32))(*(&v3->isa + qword_1EC05F938) & 1, *(v1 + 80));
}

uint64_t sub_1C2D19940()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F9D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C2E7A930;
  v2 = sub_1C2E72BC4();
  v3 = MEMORY[0x1E69DC0E0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C2E76034();
  swift_unknownObjectRelease();
}

void sub_1C2D19A14(void *a1)
{
  v1 = a1;
  LockStateViewController.viewDidLoad()();
}

Swift::Void __swiftcall LockStateViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v30 = *v2;
  v29 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00);
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC08);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v32.receiver = v2;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, sel_viewWillAppear_, a1);
  v15 = qword_1EC05F930;
  swift_beginAccess();
  *(v2 + v15) = MEMORY[0x1E69E7CC0];

  sub_1C2E72234();
  sub_1C2E72224();
  v16 = MEMORY[0x1C6922C00]();

  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10);
  sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10);
  sub_1C2E72F04();

  v17 = [objc_opt_self() mainRunLoop];
  v31 = v17;
  v18 = sub_1C2E763E4();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_1C2C6E1B4(0, &qword_1EC05D100);
  sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00);
  sub_1C2D1B02C();
  v19 = v26;
  sub_1C2E72ED4();
  sub_1C2D1B094(v7);

  (*(v8 + 8))(v10, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v23 = v29;
  v22 = v30;
  v21[2] = *((v29 & v30) + 0x50);
  v21[3] = *((v23 & v22) + 0x58);
  v21[4] = v20;
  sub_1C2C94F38(&qword_1EC05DC20, &qword_1EC05DC08);
  v24 = v27;
  sub_1C2E72F14();

  (*(v28 + 8))(v14, v24);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28);
  sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28);
  sub_1C2E72DA4();
  swift_endAccess();
}

void sub_1C2D19F68(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C2D19FC4(v1);
  }
}

uint64_t sub_1C2D19FC4(char a1)
{
  v3 = sub_1C2D1A25C() & 1;
  *(v1 + qword_1EC05F938) = a1;
  result = sub_1C2D1A25C();
  if (v3 != (result & 1))
  {

    return sub_1C2D197A8();
  }

  return result;
}

void sub_1C2D1A030(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  LockStateViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall LockStateViewController.reset()()
{
  LockStateViewController.updateTitle(_:)(*(v0 + qword_1EC05F940));
  v1 = *(v0 + qword_1EC05F948);
  v2 = *(v0 + qword_1EC05F948 + 8);

  LockStateViewController.updateSubtitle(_:)(*&v1);
}

Swift::Void __swiftcall LockStateViewController.updateTitle(_:)(Swift::String a1)
{
  v1 = sub_1C2D1A4F0(&qword_1EC05F920, sub_1C2D1A554);
  v2 = sub_1C2E75C24();
  [v1 setText_];
}

Swift::Void __swiftcall LockStateViewController.updateSubtitle(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v3 = sub_1C2D1A4F0(&qword_1EC05F928, sub_1C2D1A678);
  if (object)
  {
    v4 = sub_1C2E75C24();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  v5 = *(v1 + qword_1EC05F928);

  [v5 setHidden_];
}

Swift::Bool __swiftcall LockStateViewController.toggleLockState()()
{
  v1 = sub_1C2D1A25C();
  sub_1C2D19FC4((v1 & 1) == 0);
  return *(v0 + qword_1EC05F938) & 1;
}

uint64_t sub_1C2D1A25C()
{
  v1 = v0;
  v2 = qword_1EC05F938;
  v3 = *(v0 + qword_1EC05F938);
  if (v3 == 2)
  {
    sub_1C2E72234();
    sub_1C2E72224();
    LOBYTE(v3) = MEMORY[0x1C6922C10]();

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

id sub_1C2D1A2CC(void *a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C2E81350;
  *(v2 + 32) = sub_1C2D1A4F0(&qword_1EC05F920, sub_1C2D1A554);
  *(v2 + 40) = sub_1C2D1A4F0(&qword_1EC05F928, sub_1C2D1A678);
  v3 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v4 = sub_1C2E75D64();

  v5 = [v3 initWithArrangedSubviews_];

  [v5 setAxis_];
  [v5 setAlignment_];
  [v5 setSpacing_];
  v6 = v5;
  [v6 setUserInteractionEnabled_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:sub_1C2E76794() action:sel_wantsToUnlock];
  swift_unknownObjectRelease();
  [v6 addGestureRecognizer_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  result = [a1 view];
  if (result)
  {
    v9 = result;
    [result addSubview_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C2D1A4F0(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1C2D1A554()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = sub_1C2E75C24();
  [v0 setText_];

  [v0 setTextAlignment_];
  return v0;
}

id sub_1C2D1A678(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v5 = v2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setTextAlignment_];
  v6 = *(a1 + qword_1EC05F948 + 8);
  if (v6)
  {
    v7 = sub_1C2E75C24();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText_];

  [v5 setHidden_];
  return v5;
}

void sub_1C2D1A7D4()
{
  v1 = sub_1C2D1A4F0(&qword_1EC05F918, sub_1C2D1A2CC);
  v2 = [v1 isHidden];

  if (v2)
  {
    v3 = *(v0 + qword_1EC05F918);

    [v3 setHidden_];
  }
}

void sub_1C2D1A86C()
{
  v1 = sub_1C2D1A4F0(&qword_1EC05F918, sub_1C2D1A2CC);
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + qword_1EC05F918);

    [v3 setHidden_];
  }
}

uint64_t LockStateViewController.requestUnlock(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C2E72234();
  sub_1C2E72224();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1C2C9A508(a1);
  sub_1C2E72214();
}

uint64_t sub_1C2D1A9A4(void *a1)
{
  sub_1C2E72234();
  v2 = a1;
  sub_1C2E72224();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1C2E72214();
}

void sub_1C2D1AA40(void *a1, id a2)
{
  v3 = [a2 _backlightLuminance];
  v4 = [a1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_1C2E72234();
    sub_1C2E72224();
    v7 = MEMORY[0x1C6922C10]();

    sub_1C2D19FC4(v7 & 1);
  }
}

id LockStateViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C2E75C24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1C2D1AB9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1C2D1B1B0();
}

id LockStateViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2D1AC44(uint64_t a1)
{
}

uint64_t LockStateViewController.requestFaceIDAuth(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  result = sub_1C2D1A25C();
  if ((result & 1) == 0)
  {
    if (!a1)
    {
      return result;
    }

    v10 = 1;
    return a1(v10);
  }

  sub_1C2E72234();
  sub_1C2E72224();
  v7 = sub_1C2E721F4();

  if ((v7 & 1) == 0)
  {
    if (!a1)
    {
      return result;
    }

    v10 = 0;
    return a1(v10);
  }

  sub_1C2E72224();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = *(v5 + 80);
  v9[3] = *(v5 + 88);
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  sub_1C2C9A508(a1);
  sub_1C2E72204();
}

void sub_1C2D1AE7C(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1C2D19FC4((a1 & 1) == 0);
  }

  if (a3)
  {
    a3(a1 & 1);
  }
}

uint64_t sub_1C2D1AF04(uint64_t a1, uint64_t a2)
{
  sub_1C2E72234();
  sub_1C2E72224();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1C2C9A508(a1);
  sub_1C2E72214();
}

uint64_t sub_1C2D1AFB0()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC05F900);
  __swift_project_value_buffer(v0, qword_1EC05F900);
  return sub_1C2E72B34();
}

unint64_t sub_1C2D1B02C()
{
  result = qword_1EC05D110;
  if (!qword_1EC05D110)
  {
    sub_1C2C6E1B4(255, &qword_1EC05D100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05D110);
  }

  return result;
}

uint64_t sub_1C2D1B094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C2D1B10C()
{
  *(v0 + qword_1EC05F918) = 0;
  *(v0 + qword_1EC05F920) = 0;
  *(v0 + qword_1EC05F928) = 0;
  *(v0 + qword_1EC05F930) = MEMORY[0x1E69E7CC0];
  *(v0 + qword_1EC05F938) = 2;
  sub_1C2E766F4();
  __break(1u);
}

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2D1B38C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t (*AudioCallMessageControlViewModel.buttonAction.getter())(uint64_t result)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2D1B550;
}

uint64_t sub_1C2D1B42C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = *(result + 16);
    v4 = *(result + 24);
    v5 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(result + 48);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1C2C6E3A4(result + 24, v12);
      sub_1C2D1CA24(v2, v1, v3, v4, v5, v6, v7);

      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v10[0] = v2;
      v10[1] = v1;
      v10[2] = v3;
      v10[3] = v4;
      v10[4] = v5;
      v10[5] = v6;
      v11 = v7;
      (*(v9 + 16))(v10, v8, v9);
      sub_1C2D1CA8C(v2, v1, v3, v4, v5, v6, v7);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  return result;
}

uint64_t sub_1C2D1B564()
{
  swift_getKeyPath();
  sub_1C2D1C868(&qword_1EC05FA20, type metadata accessor for AudioCallMessageControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2D1B61C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1C868(&qword_1EC05FA20, type metadata accessor for AudioCallMessageControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C2D1B6DC(uint64_t a1)
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
    sub_1C2D1C868(&qword_1EC05FA20, type metadata accessor for AudioCallMessageControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t AudioCallMessageControlViewModel.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallMessageControlViewModel.init(service:)(a1);
  return v2;
}

void *AudioCallMessageControlViewModel.init(service:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F9E0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v34 - v4;
  v5 = sub_1C2E757E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v34 - v10;
  v1[8] = MEMORY[0x1E69E7CD0];
  v40 = v1 + 8;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, (v1 + 3));
  v47 = xmmword_1C2E814F0;
  LOBYTE(v48) = 1;
  v37 = type metadata accessor for AudioCallMessageControlViewModel;
  sub_1C2D1C868(&qword_1EC05F9F0, type metadata accessor for AudioCallMessageControlViewModel);
  v12 = sub_1C2DFDC24(0, &v47);
  sub_1C2C77608(v47, *(&v47 + 1), v48);
  swift_getKeyPath();
  v43 = v12;
  v44 = sub_1C2D1C0E4;
  v45 = 0;
  v46 = 0;
  *&v47 = v12;
  sub_1C2D1C868(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
  v34[1] = 0;

  v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74534();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_1C2E745C4();
  sub_1C2CB410C(v11);
  v16 = v6;
  v17 = *(v6 + 104);
  v18 = v8;
  v19 = v8;
  v20 = v5;
  v17(v19, *MEMORY[0x1E6981DF0], v5);
  type metadata accessor for ControlTextConfiguration();
  v21 = swift_allocObject();
  v22 = v21 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v22 = 0;
  v22[8] = 1;
  sub_1C2E71A94();
  v21[2] = 0x6567617373654DLL;
  v21[3] = 0xE700000000000000;
  v21[4] = v13;
  v21[5] = v15;
  (*(v16 + 32))(v21 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v18, v20);
  *(v21 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v22 = 0;
  v22[8] = 1;
  *(v21 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  sub_1C2E71A94();
  *(v23 + 16) = v12;
  swift_getKeyPath();
  v41 = v23;
  v42 = v21;
  *&v47 = v23;
  sub_1C2D1C868(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  v2[2] = v23;
  v24 = v35;
  v25 = v35[3];
  v26 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v25);
  *&v47 = (*(v26 + 8))(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F9F8);
  sub_1C2C94F38(&qword_1EC05FA00, &qword_1EC05F9F8);
  sub_1C2D1C788();
  v27 = v36;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05FA18, &qword_1EC05F9E0);
  v28 = v38;
  sub_1C2E72F14();

  (*(v39 + 8))(v27, v28);
  swift_getKeyPath();
  *&v47 = v2;
  sub_1C2D1C868(&qword_1EC05FA20, v37);
  sub_1C2E71A64();

  *&v47 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  *&v47 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v29 = v2[2];
  swift_getKeyPath();
  *&v47 = v29;
  sub_1C2E71A64();

  swift_beginAccess();
  v30 = v2[6];
  v31 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v30);

  v32 = MessageControlServiceProtocol.selections.getter(v30, v31);
  v50 = 0;
  v47 = xmmword_1C2E81500;
  v48 = v32;
  v49 = 0;
  sub_1C2D7E988(&v47);

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v2;
}

double sub_1C2D1C0E4(uint64_t a1)
{
  v2 = sub_1C2E73DB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7.n128_u64[0] = 18.0;
  if (v6 != *MEMORY[0x1E697F658] && v6 != *MEMORY[0x1E697F690])
  {
    v9 = v6 == *MEMORY[0x1E697F698] || v6 == *MEMORY[0x1E697F680];
    v10 = v9 || v6 == *MEMORY[0x1E697F650];
    v11 = v10 || v6 == *MEMORY[0x1E697F660];
    if (!v11 && v6 != *MEMORY[0x1E697F630])
    {
      v7.n128_u64[0] = 22.0;
      if (v6 != *MEMORY[0x1E697F670] && v6 != *MEMORY[0x1E697F668] && v6 != *MEMORY[0x1E697F678] && v6 != *MEMORY[0x1E697F640] && v6 != *MEMORY[0x1E697F648])
      {
        (*(v3 + 8))(v5, v2, v7);
        v7.n128_u64[0] = 18.0;
      }
    }
  }

  return v7.n128_f64[0];
}

uint64_t sub_1C2D1C2B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    v2 = result;
    swift_getKeyPath();
    *&v5 = v1;
    sub_1C2D1C868(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
    sub_1C2E71A64();

    swift_beginAccess();
    v3 = v2[6];
    v4 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v3);

    v8 = 0;
    v5 = xmmword_1C2E81500;
    v6 = MessageControlServiceProtocol.selections.getter(v3, v4);
    v7 = 0;
    sub_1C2D7E988(&v5);
  }

  return result;
}

uint64_t AudioCallMessageControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallMessageControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallMessageControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallMessageControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2D1C528())(uint64_t result)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2D1CAF4;
}

uint64_t sub_1C2D1C584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1C868(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A64();

  v4 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 8);
  v5 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return sub_1C2D1CA18();
}

uint64_t sub_1C2D1C644()
{
  swift_getKeyPath();
  sub_1C2D1C868(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);
  sub_1C2E71A54();
}

uint64_t type metadata accessor for AudioCallMessageControlViewModel()
{
  result = qword_1EC05FA28;
  if (!qword_1EC05FA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C2D1C788()
{
  result = qword_1EC05FA08;
  if (!qword_1EC05FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FA10);
    sub_1C2D1C80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FA08);
  }

  return result;
}

unint64_t sub_1C2D1C80C()
{
  result = qword_1EC05C418[0];
  if (!qword_1EC05C418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC05C418);
  }

  return result;
}

uint64_t sub_1C2D1C868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D1C8B0(uint64_t a1)
{
  result = sub_1C2D1C868(&qword_1EC05FA20, type metadata accessor for AudioCallMessageControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2D1C910()
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

void sub_1C2D1CA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_1C2CF836C(a5, a6, a7);
  }
}

void sub_1C2D1CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_1C2C9E060(a5, a6, a7);
  }
}

char *CustomApertureView.init(withConfiguration:host:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_contentView;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_contentView] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_activeConstraints] = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = &v3[OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_apertureViewBuilder];
  *v8 = v7;
  *(v8 + 1) = v6;
  swift_retain_n();
  v9 = v7(a2);

  v10 = *&v3[v5];
  *&v3[v5] = v9;

  v19.receiver = v3;
  v19.super_class = type metadata accessor for CustomApertureView();
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = v11;
  v13 = *&v11[OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_contentView];
  if (v13)
  {
    v14 = v11;
    v15 = v13;
    v16 = v14;
    v17 = v15;
    sub_1C2D1CE28(v17);
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C2D1CD28(char *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_contentView);
  if (v2 && (v3 = *a1, v11[0] = v2, sub_1C2C6E1B4(0, &qword_1EC062710), v4 = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA58), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v9 + 1))
    {
      sub_1C2C716EC(&v8, v11);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      LOBYTE(v8) = v3;
      (*(v6 + 8))(&v8, v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_1C2D1D0B8(&v8);
}

void sub_1C2D1CE28(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C2E7A700;
  v4 = [v1 leadingAnchor];
  v5 = [a1 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v1 trailingAnchor];
  v8 = [a1 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v1 topAnchor];
  v11 = [a1 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [a1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI18CustomApertureView_activeConstraints] = v3;

  v16 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);

  v17 = sub_1C2E75D64();

  [v16 activateConstraints_];
}

uint64_t sub_1C2D1D0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CustomApertureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CustomApertureView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomApertureView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C2D1D284@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v5 = *a1;
  v6 = objc_allocWithZone(type metadata accessor for CustomApertureView());
  result = CustomApertureView.init(withConfiguration:host:)(v5, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2D1D358()
{
  swift_getKeyPath();
  sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C2D1D408@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C2D1D4B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2D1D614()
{
  swift_getKeyPath();
  sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  return *(v0 + 64);
}

uint64_t sub_1C2D1D6B4(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2D1D7CC()
{
  swift_getKeyPath();
  sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  return *(v0 + 65);
}

uint64_t sub_1C2D1D86C(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2D1D984()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI25ReasonForCallingViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ReasonForCallingViewModel()
{
  result = qword_1EC05FA68;
  if (!qword_1EC05FA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2D1DA8C()
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

__n128 sub_1C2D1DB44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA80);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  *v7 = sub_1C2E73DD4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA88);
  sub_1C2D1DCD8(a1, &v7[*(v8 + 44)]);
  LOBYTE(a1) = sub_1C2E74444();
  sub_1C2E73034();
  v9 = &v7[*(v5 + 44)];
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  sub_1C2E75754();
  sub_1C2E737F4();
  sub_1C2C71D5C(v7, a2, &qword_1EC05FA80);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA90) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1C2D1DCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FA98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47[-v6];
  *v7 = sub_1C2E73C24();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v49 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAA0);
  sub_1C2D1E1CC(a1, &v7[*(v8 + 44)]);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v50 = sub_1C2E74F74();

  sub_1C2E75744();
  sub_1C2E73274();
  *&v83[6] = v85;
  *&v83[22] = v86;
  *&v83[38] = v87;
  sub_1C2E75744();
  sub_1C2E737F4();
  v51 = sub_1C2E744B4();
  sub_1C2E73034();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v84 = 0;
  swift_getKeyPath();
  v72 = a1;
  sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  v17 = *(a1 + 40);
  v72 = *(a1 + 32);
  *v73 = v17;
  sub_1C2C74960();

  v18 = sub_1C2E748A4();
  v20 = v19;
  v22 = v21;
  sub_1C2E745F4();
  v23 = sub_1C2E747F4();
  v25 = v24;
  v48 = v26;
  v28 = v27;

  sub_1C2C72340(v18, v20, v22 & 1);

  v29 = v49;
  v30 = v53;
  sub_1C2C736A4(v49, v53, &qword_1EC05FA98);
  v31 = v30;
  v32 = v52;
  sub_1C2C736A4(v31, v52, &qword_1EC05FA98);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAA8);
  v34 = (v32 + *(v33 + 48));
  v35 = v50;
  *&v62[0] = v50;
  WORD4(v62[0]) = 256;
  *(&v62[2] + 10) = *&v83[32];
  *(&v62[3] + 1) = *&v83[46];
  *(v62 + 10) = *v83;
  *(&v62[1] + 10) = *&v83[16];
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  v66 = v58;
  v36 = v62[1];
  v37 = v62[2];
  *v34 = v62[0];
  v34[1] = v36;
  v38 = v62[3];
  v39 = v64;
  v40 = v65;
  v34[4] = v63;
  v34[5] = v39;
  v34[2] = v37;
  v34[3] = v38;
  v42 = v68;
  v41 = v69;
  v43 = v66;
  v34[8] = v67;
  v34[9] = v42;
  LOBYTE(v20) = v51;
  LOBYTE(v70) = v51;
  DWORD1(v70) = *&v54[3];
  *(&v70 + 1) = *v54;
  *(&v70 + 1) = v10;
  *&v71[0] = v12;
  *(&v71[0] + 1) = v14;
  *&v71[1] = v16;
  BYTE8(v71[1]) = 0;
  v34[6] = v40;
  v34[7] = v43;
  v44 = v71[0];
  v34[11] = v70;
  v34[12] = v44;
  *(v34 + 201) = *(v71 + 9);
  v34[10] = v41;
  v45 = v32 + *(v33 + 64);
  *v45 = v23;
  *(v45 + 8) = v25;
  LOBYTE(v32) = v48 & 1;
  *(v45 + 16) = v48 & 1;
  *(v45 + 24) = v28;
  sub_1C2D1EE38(v62, &v72);
  sub_1C2C72330(v23, v25, v32);

  sub_1C2C73644(v29, &qword_1EC05FA98);
  sub_1C2C72340(v23, v25, v32);

  v72 = v35;
  *v73 = 256;
  *&v73[2] = *v83;
  v74 = *&v83[16];
  *v75 = *&v83[32];
  *&v75[7] = *&v83[46];
  *&v75[43] = v59;
  *&v75[51] = v60;
  *&v75[59] = v61;
  *&v75[11] = v55;
  *&v75[19] = v56;
  *&v75[27] = v57;
  *&v75[35] = v58;
  v76 = v20;
  *&v77[3] = *&v54[3];
  *v77 = *v54;
  v78 = v10;
  v79 = v12;
  v80 = v14;
  v81 = v16;
  v82 = 0;
  sub_1C2D1EEA8(&v72);
  return sub_1C2C73644(v53, &qword_1EC05FA98);
}

uint64_t sub_1C2D1E1CC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v96 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAB8);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = (&v80 - v3);
  v85 = sub_1C2E73DA4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAC0);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v80 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAC8);
  v6 = MEMORY[0x1EEE9AC00](v86);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v80 - v12;
  *&v99 = sub_1C2E756D4();
  *&v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v15 - 8);
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC16CommunicationsUI25ReasonForCallingViewModel___observationRegistrar;
  *&v105 = a1;
  v17 = sub_1C2D1F004(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  v92 = v16;
  v91 = v17;
  sub_1C2E71A64();

  v18 = *(a1 + 64) == 1;
  v90 = a1;
  if (v18)
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E75064();
    sub_1C2E73CC4();

    sub_1C2E73CE4();
    sub_1C2E73CD4();
    sub_1C2E73CE4();
    sub_1C2E73D24();
    v19 = sub_1C2E74884();
    v21 = v20;
    v23 = v22;
    sub_1C2E74514();
    v24 = sub_1C2E747F4();
    v26 = v25;
    v28 = v27;

    sub_1C2C72340(v19, v21, v23 & 1);

    LOBYTE(v105) = 2;
    *(&v105 + 1) = 0;
    LOBYTE(v106) = 1;
    sub_1C2D1EF10();
    sub_1C2E756C4();
    v29 = v99;
    v30 = sub_1C2E74794();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_1C2C72340(v24, v26, v28 & 1);

    (*(v98 + 8))(v14, v29);
    v100 = v30;
    v101 = v32;
    v102 = v34 & 1;
    v103 = v36;
    v104 = 0;
  }

  else
  {
    v37 = *(a1 + 24);
    *&v105 = *(a1 + 16);
    *(&v105 + 1) = v37;
    sub_1C2C74960();

    v38 = sub_1C2E748A4();
    v40 = v39;
    v42 = v41;
    sub_1C2E74514();
    v43 = sub_1C2E747F4();
    v45 = v44;
    v47 = v46;

    sub_1C2C72340(v38, v40, v42 & 1);

    LOBYTE(v105) = 2;
    *(&v105 + 1) = 0;
    LOBYTE(v106) = 1;
    sub_1C2D1EF10();
    sub_1C2E756C4();
    v48 = v99;
    v49 = sub_1C2E74794();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_1C2C72340(v43, v45, v47 & 1);

    (*(v98 + 8))(v14, v48);
    v100 = v49;
    v101 = v51;
    v102 = v53 & 1;
    v103 = v55;
    v104 = 1;
  }

  sub_1C2E73F44();
  v98 = v105;
  v99 = v106;
  v56 = v107;
  swift_getKeyPath();
  v57 = v90;
  *&v105 = v90;
  v59 = *(&v98 + 1);
  v58 = v98;
  v60 = v99;
  sub_1C2D1EF64(v98, *(&v98 + 1), v99);
  sub_1C2E71A64();

  v61 = 1;
  if (*(v57 + 65) == 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E208);
    sub_1C2C76120();
    v92 = v58;
    v62 = v80;
    sub_1C2E751C4();
    v63 = v83;
    sub_1C2E73D94();
    sub_1C2C94F38(&qword_1EC05FAE0, &qword_1EC05FAC0);
    sub_1C2D1F004(&qword_1EC05FAE8, MEMORY[0x1E697C540]);
    v64 = v87;
    v65 = v82;
    v66 = v85;
    sub_1C2E74974();
    (*(v84 + 8))(v63, v66);
    v67 = v62;
    v58 = v92;
    (*(v81 + 8))(v67, v65);
    v68 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAF0) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DFA8);
    sub_1C2E73814();
    *v68 = swift_getKeyPath();
    LODWORD(v68) = sub_1C2E740D4();
    *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAF8) + 36)) = v68;
    sub_1C2E75744();
    sub_1C2E73274();
    v69 = (v64 + *(v86 + 36));
    v70 = v106;
    *v69 = v105;
    v69[1] = v70;
    v69[2] = v107;
    v71 = v88;
    sub_1C2C736A4(v64, v88, &qword_1EC05FAC8);
    v72 = v89;
    *v89 = 0;
    *(v72 + 8) = 1;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB00);
    sub_1C2C736A4(v71, v72 + *(v73 + 48), &qword_1EC05FAC8);
    sub_1C2C73644(v64, &qword_1EC05FAC8);
    sub_1C2C73644(v71, &qword_1EC05FAC8);
    sub_1C2C71D5C(v72, v97, &qword_1EC05FAB8);
    v61 = 0;
  }

  v74 = v97;
  (*(v94 + 56))(v97, v61, 1, v95);
  v75 = v93;
  sub_1C2C736A4(v74, v93, &qword_1EC05FAD0);
  v76 = v96;
  v77 = v99;
  *v96 = v98;
  v76[1] = v77;
  *(v76 + 32) = v56;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAD8);
  sub_1C2C736A4(v75, v76 + *(v78 + 48), &qword_1EC05FAD0);
  sub_1C2D1EF64(v58, v59, v60);
  sub_1C2D1EFA0(v58, v59, v60);
  sub_1C2C73644(v74, &qword_1EC05FAD0);
  sub_1C2C73644(v75, &qword_1EC05FAD0);
  return sub_1C2D1EFA0(v58, v59, v60);
}

uint64_t sub_1C2D1ED80@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E75044();
  v3 = sub_1C2E74684();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_1C2D1EE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D1EEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2D1EF10()
{
  result = qword_1EC062740;
  if (!qword_1EC062740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062740);
  }

  return result;
}

uint64_t sub_1C2D1EF64(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C2C72330(a1, a2, a3 & 1);
}

uint64_t sub_1C2D1EFA0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C2C72340(a1, a2, a3 & 1);
}

uint64_t sub_1C2D1F004(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2D1F04C()
{
  result = qword_1EC05FB08;
  if (!qword_1EC05FB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FA90);
    sub_1C2D1F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FB08);
  }

  return result;
}

unint64_t sub_1C2D1F0D8()
{
  result = qword_1EC05FB10;
  if (!qword_1EC05FB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FA80);
    sub_1C2C94F38(&qword_1EC05FB18, &qword_1EC05FB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FB10);
  }

  return result;
}

unint64_t sub_1C2D1F1B0()
{
  result = qword_1EC05FB28;
  if (!qword_1EC05FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FB28);
  }

  return result;
}

uint64_t sub_1C2D1F204(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v58 = a12;
  LODWORD(v53.size.height) = a2;
  *&v53.size.width = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB30);
  MEMORY[0x1EEE9AC00](v56);
  v19 = v51 - v18;
  v20 = sub_1C2E73344();
  v54 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v57 = v51 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v51 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v51 - v29;
  v31 = sub_1C2E73414();
  sub_1C2D1FA64();
  sub_1C2E75F44();
  result = sub_1C2E75F64();
  if (*&v60[0] != v63)
  {
    sub_1C2E73424();
    v59 = sub_1C2D1FABC();
    v55 = v30;
    sub_1C2E73354();
    if (LOBYTE(v53.size.height))
    {
      width = 10.0;
    }

    else
    {
      width = v53.size.width;
    }

    if (a11)
    {
      v34 = (width - v60[0]) * 0.5;
    }

    else
    {
      v34 = (width - v60[0]) / 3.0;
    }

    if (v58)
    {
      v35 = (width - v60[0]) * 0.5;
    }

    else
    {
      v35 = (width - v60[0]) / 3.0;
    }

    v64.origin.x = a3;
    v64.origin.y = a4;
    v64.size.width = a5;
    v64.size.height = a6;
    MinX = CGRectGetMinX(v64);
    *&v53.size.height = a11;
    v37 = 0.0;
    v52 = v34;
    if (a11 <= 2)
    {
      v37 = v34;
    }

    v38 = v37 + MinX;
    (*(*(v31 - 8) + 16))(v19, a9, v31);
    v39 = *(v56 + 36);
    v56 = a9;
    sub_1C2E75F44();
    v40 = (v54 + 16);
    v41 = (v54 + 8);
    do
    {
      sub_1C2E75F64();
      if (*&v19[v39] == *&v60[0])
      {
        break;
      }

      v42 = sub_1C2E75F84();
      (*v40)(v28);
      v42(v60, 0);
      sub_1C2E75F74();
      sub_1C2E73354();
      (*v41)(v28, v20);
    }

    while (v61 != 1 || v62 || v58 < 1);
    sub_1C2D1FB10(v19);
    sub_1C2E75F44();
    sub_1C2E75F64();
    v43 = *&v60[0];
    result = v55;
    if (v63 < *&v60[0])
    {
      __break(1u);
    }

    else
    {
      if (*&v60[0] == v63)
      {
        return (*v41)(v55, v20);
      }

      if (*&v60[0] < v63)
      {
        v53.origin.x = a3;
        v53.origin.y = a4;
        v53.size.width = a5;
        v53.size.height = a6;
        v51[1] = v41 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v54 = v63;
        while (1)
        {
          sub_1C2E73424();
          sub_1C2E73354();
          v46 = v61;
          v47 = v62;
          sub_1C2E73424();
          sub_1C2E73784();
          LOBYTE(v60[0]) = v48 & 1;
          LOBYTE(v63) = v49 & 1;
          sub_1C2E73314();
          v50 = *v41;
          (*v41)(v23, v20);
          if (v43 < 1)
          {
            if (!v47)
            {
              goto LABEL_26;
            }
          }

          else if ((v47 & 1) == 0)
          {
            v44 = v52;
            if (v46)
            {
              v44 = v35;
            }

            v38 = v38 + v44;
            goto LABEL_26;
          }

          CGRectGetMinX(v53);
LABEL_26:
          v45 = v43 + 1;
          if ((v46 & ~v47 & (v58 == 2)) != 0)
          {
            v38 = v35 + v38;
          }

          sub_1C2E73424();
          sub_1C2E758D4();
          LOBYTE(v60[0]) = 0;
          LOBYTE(v63) = 0;
          sub_1C2E73334();
          v50(v23, v20);
          v50(v57, v20);
          ++v43;
          if (v54 == v45)
          {
            return (v50)(v55, v20);
          }
        }
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_1C2D1F96C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CC3834;
}

unint64_t sub_1C2D1F9F8()
{
  result = qword_1EC05C5C0;
  if (!qword_1EC05C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5C0);
  }

  return result;
}

double sub_1C2D1FA4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = xmmword_1C2E80900;
  return result;
}

unint64_t sub_1C2D1FA64()
{
  result = qword_1EC05B9E8;
  if (!qword_1EC05B9E8)
  {
    sub_1C2E73414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9E8);
  }

  return result;
}

unint64_t sub_1C2D1FABC()
{
  result = qword_1EC05C610;
  if (!qword_1EC05C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C610);
  }

  return result;
}

uint64_t sub_1C2D1FB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2D1FB78()
{
  v0 = sub_1C2E73344();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E73414();
  sub_1C2D1FA64();
  sub_1C2E75F44();
  result = sub_1C2E75F64();
  if (v8 != v7)
  {
    sub_1C2E73424();
    sub_1C2E73784();
    LOBYTE(v8) = v5 & 1;
    LOBYTE(v7) = v6 & 1;
    sub_1C2E73314();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1C2D1FCE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C2D1FD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C2D1FDC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v75) = a2;
  v77 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB90);
  v6 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = v59 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB98);
  MEMORY[0x1EEE9AC00](v80);
  v9 = v59 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBA0);
  v10 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v12 = v59 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBA8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v59 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB0);
  v76 = *(v81 - 8);
  v14 = MEMORY[0x1EEE9AC00](v81);
  v71 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - v16;
  if ((sub_1C2E723F4() & 1) != 0 && (sub_1C2E723A4() & 1) == 0)
  {
    sub_1C2E723D4();
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    v52 = sub_1C2E71684();
    v54 = v53;

    v55 = swift_allocObject();
    *(v55 + 16) = a1;
    *(v55 + 24) = v75 & 1;
    *(v55 + 32) = a3;
    v82 = v52;
    v83 = v54;
    MEMORY[0x1EEE9AC00](v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    sub_1C2E751C4();

    v56 = v76;
    v57 = v81;
    (*(v76 + 16))(v79, v17, v81);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    v58 = sub_1C2D22150();
    v82 = v80;
    v83 = v58;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v56 + 8))(v17, v57);
  }

  else
  {
    sub_1C2E723D4();
    v70 = v10;
    type metadata accessor for StringDummy();
    v18 = swift_getObjCClassFromMetadata();
    v69 = v12;
    v19 = [objc_opt_self() bundleForClass_];
    v68 = v9;
    v20 = v19;
    v21 = sub_1C2E71684();
    v23 = v22;

    v24 = swift_allocObject();
    v67 = v6;
    *(v24 + 16) = a1;
    v25 = v75 & 1;
    *(v24 + 24) = v75 & 1;
    *(v24 + 32) = a3;
    v82 = v21;
    v83 = v23;
    MEMORY[0x1EEE9AC00](v24);

    v64 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    v26 = v71;
    sub_1C2E751C4();

    v63 = sub_1C2E73D14();
    v62 = v27;
    v61 = v28;
    v66 = v25;
    v85 = v25;
    v65 = a3;
    v86 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
    v29 = sub_1C2E751A4();
    v60 = v59;
    v59[3] = v84;
    MEMORY[0x1EEE9AC00](v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBC8);
    v75 = sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    v30 = v81;
    v31 = v73;
    sub_1C2E74B64();

    (*(v76 + 8))(v26, v30);
    v32 = sub_1C2E74EF4();
    KeyPath = swift_getKeyPath();
    v34 = v68;
    (*(v67 + 32))(v68, v31, v72);
    v35 = v80;
    v36 = (v34 + *(v80 + 36));
    *v36 = KeyPath;
    v36[1] = v32;
    v37 = v64;
    sub_1C2E72364();
    sub_1C2E75E34();
    v38 = v37;

    v39 = v65;

    v40 = sub_1C2E75E24();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    *(v41 + 16) = v40;
    *(v41 + 24) = v42;
    *(v41 + 32) = v38;
    LOBYTE(v30) = v66;
    *(v41 + 40) = v66;
    *(v41 + 48) = v39;

    v43 = sub_1C2E75E24();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    *(v44 + 32) = v38;
    *(v44 + 40) = v30;
    *(v44 + 48) = v39;
    sub_1C2E753A4();
    v45 = sub_1C2D22150();
    v46 = v69;
    sub_1C2E748C4();

    sub_1C2C8717C(v34);
    v47 = v70;
    v48 = v74;
    (*(v70 + 16))(v79, v46, v74);
    swift_storeEnumTagMultiPayload();
    v82 = v35;
    v83 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v47 + 8))(v46, v48);
  }
}

uint64_t sub_1C2D2094C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  sub_1C2E723D4();
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1C2E71684();
  v13 = v12;

  v17[0] = v11;
  v17[1] = v13;
  sub_1C2E73004();
  v14 = sub_1C2E73014();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  sub_1C2C74960();

  return sub_1C2E751D4();
}

uint64_t sub_1C2D20B5C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  result = sub_1C2E748A4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1C2D20C60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v27 - v7;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1C2E71684();
  v12 = v11;

  sub_1C2D22328(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1C2D21CAC(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v38[0] = v10;
  v38[1] = v12;
  v35 = v38;
  v36 = 0xD000000000000016;
  v37 = 0x80000001C2E96AD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
  sub_1C2E751C4();

  v28 = sub_1C2E73D14();
  v27[1] = v15;
  v16 = v2 + *(v4 + 32);
  v17 = *v16;
  v18 = *(v16 + 8);
  v39 = v17;
  v40 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  sub_1C2E751A4();
  v34 = v2;
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBC8);
  sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
  sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
  v19 = v29;
  v20 = v31;
  v21 = v32;
  sub_1C2E74B64();

  (*(v30 + 8))(v21, v19);
  v22 = sub_1C2E71B94();
  KeyPath = swift_getKeyPath();
  v24 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBF0) + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_1C2E71B74();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBF8);
  *(v20 + *(result + 36)) = v25;
  return result;
}

uint64_t sub_1C2D21148()
{
  type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  return sub_1C2E75194();
}

uint64_t sub_1C2D211BC(uint64_t a1)
{
  v2 = type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1C2E71684();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_1C2E73004();
  v13 = sub_1C2E73014();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_1C2D22328(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_1C2D21CAC(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1C2C74960();
  return sub_1C2E751D4();
}

uint64_t sub_1C2D2141C()
{
  sub_1C2E72344();
  type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  return sub_1C2E75194();
}

uint64_t sub_1C2D21494@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  v5 = sub_1C2E72374();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C2CAB500();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1C2E75C74();

  sub_1C2C74960();
  result = sub_1C2E748A4();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1C2D2161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1C2E72384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB58);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  swift_retain_n();
  if ((sub_1C2E72354() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1C2E72394();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1C2C73644(v9, &qword_1EC05FB50);
LABEL_5:
    v20 = 1;
    goto LABEL_7;
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v11 + 16))(v6 + *(v3 + 20), v13, v10);
  *v6 = a1;
  v21 = v6 + *(v3 + 24);
  v31 = 0;
  sub_1C2E75174();
  (*(v11 + 8))(v13, v10);
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  sub_1C2D21CAC(v6, v19);
  v20 = 0;
LABEL_7:
  (*(v4 + 56))(v19, v20, 1, v3);
  v23 = sub_1C2E72364();
  if (v23 >> 62)
  {
    v24 = sub_1C2E764E4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 < 1)
  {

    a1 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v31 = 0;
    sub_1C2E75174();
    v25 = v32;
    v26 = v33;
  }

  sub_1C2D21BB8(v19, v17);
  v27 = v30;
  sub_1C2D21BB8(v17, v30);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB60) + 48));
  sub_1C2D21C28(a1);
  sub_1C2D21C6C(a1);
  *v28 = a1;
  v28[1] = v25;
  v28[2] = v26;
  sub_1C2C73644(v19, &qword_1EC05FB58);
  sub_1C2D21C6C(a1);
  return sub_1C2C73644(v17, &qword_1EC05FB58);
}

uint64_t sub_1C2D21A74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB38);
  sub_1C2C94F38(&qword_1EC05FB40, &qword_1EC05FB38);
  sub_1C2E75484();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB48) + 36));
  *v4 = sub_1C2D21B68;
  v4[1] = v3;
  v4[2] = 0;
  v4[3] = 0;
}

uint64_t type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView()
{
  result = qword_1EC05FB68;
  if (!qword_1EC05FB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2D21BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D21C28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2D21C6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2D21CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C2D21D48()
{
  sub_1C2E72424();
  if (v0 <= 0x3F)
  {
    sub_1C2E72384();
    if (v1 <= 0x3F)
    {
      sub_1C2D21DE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D21DE4()
{
  if (!qword_1EC05E710)
  {
    v0 = sub_1C2E751B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05E710);
    }
  }
}

unint64_t sub_1C2D21E34()
{
  result = qword_1EC05FB78;
  if (!qword_1EC05FB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FB48);
    sub_1C2D21EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FB78);
  }

  return result;
}

unint64_t sub_1C2D21EC0()
{
  result = qword_1EC05FB80;
  if (!qword_1EC05FB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FB88);
    sub_1C2C94F38(&qword_1EC05FB40, &qword_1EC05FB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FB80);
  }

  return result;
}

uint64_t sub_1C2D22014()
{
  sub_1C2C74960();

  return sub_1C2E750F4();
}

uint64_t sub_1C2D220B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E723A4();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1C2D22150()
{
  result = qword_1EC05FBE0;
  if (!qword_1EC05FBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBC8);
    sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FBE0);
  }

  return result;
}

uint64_t sub_1C2D22328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1C2E72384();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2D224CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BlockUnblockReportView.ReportInitiatorActionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C2D22540()
{
  result = qword_1EC05FC00;
  if (!qword_1EC05FC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FC08);
    sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FB98);
    sub_1C2D22150();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FC00);
  }

  return result;
}

unint64_t sub_1C2D2263C()
{
  result = qword_1EC05FC10;
  if (!qword_1EC05FC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBF8);
    sub_1C2D226F4();
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FC10);
  }

  return result;
}

unint64_t sub_1C2D226F4()
{
  result = qword_1EC05FC18;
  if (!qword_1EC05FC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBC8);
    sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FC18);
  }

  return result;
}

uint64_t sub_1C2D22888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2C736A4(a3, v25 - v10, &unk_1EC064560);
  v12 = sub_1C2E75E74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2C73644(v11, &unk_1EC064560);
  }

  else
  {
    sub_1C2E75E64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2E75DD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2E75CB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC50);
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

      sub_1C2C73644(a3, &unk_1EC064560);

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

  sub_1C2C73644(a3, &unk_1EC064560);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC50);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C2D22B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2C736A4(a3, v25 - v10, &unk_1EC064560);
  v12 = sub_1C2E75E74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2C73644(v11, &unk_1EC064560);
  }

  else
  {
    sub_1C2E75E64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2E75DD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2E75CB4() + 32;
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

      sub_1C2C73644(a3, &unk_1EC064560);

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

  sub_1C2C73644(a3, &unk_1EC064560);
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

id sub_1C2D22E9C()
{
  result = [objc_allocWithZone(type metadata accessor for SafetyCheckManager()) init];
  qword_1EC05FC20 = result;
  return result;
}

id SafetyCheckManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SafetyCheckManager.shared.getter()
{
  if (qword_1EC05CF48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC05FC20;

  return v1;
}

Swift::Void __swiftcall SafetyCheckManager.fetchSharing()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  if (!*(v0 + OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask))
  {
    v5 = sub_1C2E75E74();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v0 + v4) = sub_1C2D22B9C(0, 0, v3, &unk_1C2E81E20, v6);
  }
}

uint64_t sub_1C2D2308C()
{
  sub_1C2E71BC4();
  *(v0 + 16) = sub_1C2E71BB4();
  v3 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C2D23144;

  return v3();
}

uint64_t sub_1C2D23144()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2D23254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2CC8E70;

  return sub_1C2D23070();
}

Swift::Void __swiftcall SafetyCheckManager.present(for:on:)(Swift::OpaquePointer a1, UIViewController_optional *on)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  if (on)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v10 = *(a1._rawValue + 2);
    v11 = a1._rawValue + 32;
    v12 = on;
    v13 = 0;
    while (1)
    {
      if (v10 == v13)
      {
        v17 = sub_1C2E75E74();
        (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v3;
        v18[5] = v9;
        v18[6] = v12;
        v19 = v3;
        sub_1C2D22B9C(0, 0, v8, &unk_1C2E81E30, v18);

        return;
      }

      if (v13 >= v10)
      {
        break;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_13;
      }

      v15 = *&v11[8 * v13++];
      if (v15)
      {
        v16 = v15;
        MEMORY[0x1C6926780]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        v9 = v21;
        v13 = v14;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

{
  v5 = sub_1C2E72A74();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC48) - 8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - v15;
  if (on)
  {
    v36 = v9;
    v37 = on;
    v38 = v2;
    v17 = *(a1._rawValue + 2);
    if (v17)
    {
      v18 = a1._rawValue + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v19 = *(v14 + 72);
      v20 = (v40 + 48);
      v42 = (v40 + 32);
      v21 = on;
      v22 = MEMORY[0x1E69E7CC0];
      v23 = &qword_1EC05FC48;
      v24 = v41;
      v39 = v19;
      do
      {
        sub_1C2C736A4(v18, v16, v23);
        sub_1C2D24D4C(v16, v13);
        if ((*v20)(v13, 1, v24) == 1)
        {
          sub_1C2C73644(v13, v23);
        }

        else
        {
          v25 = v23;
          v26 = *v42;
          (*v42)(v43, v13, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1C2DD23D8(0, *(v22 + 2) + 1, 1, v22);
          }

          v28 = *(v22 + 2);
          v27 = *(v22 + 3);
          if (v28 >= v27 >> 1)
          {
            v22 = sub_1C2DD23D8(v27 > 1, v28 + 1, 1, v22);
          }

          *(v22 + 2) = v28 + 1;
          v24 = v41;
          v26(&v22[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28], v43, v41);
          v19 = v39;
          v23 = v25;
        }

        v18 += v19;
        --v17;
      }

      while (v17);
    }

    else
    {
      v29 = on;
      v22 = MEMORY[0x1E69E7CC0];
    }

    v30 = sub_1C2E75E74();
    v31 = v36;
    (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v34 = v37;
    v33 = v38;
    v32[4] = v38;
    v32[5] = v22;
    v32[6] = v34;
    v35 = v33;
    sub_1C2D22B9C(0, 0, v31, &unk_1C2E81E48, v32);
  }
}

uint64_t sub_1C2D23604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v8 = sub_1C2E759D4();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_1C2E75A04();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[16] = v10;
  *v10 = v6;
  v10[1] = sub_1C2D23758;

  return sub_1C2D23B50(a5);
}

uint64_t sub_1C2D23758(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C2D23858, 0, 0);
}

uint64_t sub_1C2D23858()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[12];
    v14 = v0[14];
    v15 = v0[13];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    sub_1C2C9DC60();
    v13 = sub_1C2E76084();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1C2D2699C;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1C2CB2CC4;
    v0[5] = &block_descriptor_40_0;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1C2E759F4();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1C2D26890(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
    sub_1C2CF04C8();
    sub_1C2E76464();
    MEMORY[0x1C6926AC0](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2D23A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2CC8E70;

  return sub_1C2D23604(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C2D23B50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C2E71BE4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2D23C34, 0, 0);
}

uint64_t sub_1C2D23C34()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  v0[11] = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  v3 = *(v1 + v2);
  v0[12] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1C2D23DA4;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v5 = v0[3];
    v0[14] = sub_1C2E71BC4();
    v0[15] = sub_1C2E71BB4();
    v8 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1C2D23F84;

    return v8(v5, 0);
  }
}

uint64_t sub_1C2D23DA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2D23EA0, 0, 0);
}

uint64_t sub_1C2D23EA0()
{
  v1 = v0[11];
  v2 = v0[4];

  *(v2 + v1) = 0;

  v3 = v0[3];
  v0[14] = sub_1C2E71BC4();
  v0[15] = sub_1C2E71BB4();
  v6 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1C2D23F84;

  return v6(v3, 0);
}

uint64_t sub_1C2D23F84(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C2D240F8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C2D240F8()
{
  v1 = *(v0 + 136);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);

    (*(v6 + 32))(v3, v4, v5);
    if (qword_1EC05CF50 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = sub_1C2E72B44();
    __swift_project_value_buffer(v11, qword_1EC05FC28);
    v12 = *(v10 + 16);
    v12(v7, v8, v9);
    v13 = sub_1C2E72B24();
    v14 = sub_1C2E75FC4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v19 = 138412290;
      sub_1C2D26890(&qword_1EC05FC58, MEMORY[0x1E699A180]);
      swift_allocError();
      v12(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = *(v18 + 8);
      v23 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v16, v17);
      *(v19 + 4) = v21;
      *v42 = v21;
      _os_log_impl(&dword_1C2C6B000, v13, v14, "presentSafetyCheck: SCWB error %@", v19, 0xCu);
      sub_1C2C73644(v42, &unk_1EC062DD0);
      MEMORY[0x1C6927DF0](v42, -1, -1);
      MEMORY[0x1C6927DF0](v19, -1, -1);
    }

    else
    {

      v22 = *(v18 + 8);
      v23 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v16, v17);
    }

    *(v0 + 144) = v22;
    v35 = *(v0 + 56);
    v36 = *(v0 + 40);
    (*(*(v0 + 48) + 104))(v35, *MEMORY[0x1E699A170], v36);
    v37 = sub_1C2E71BD4();
    *(v0 + 152) = v23;
    v22(v35, v36);
    if (v37)
    {
      *(v0 + 160) = sub_1C2E71BB4();
      v43 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v38 = swift_task_alloc();
      *(v0 + 168) = v38;
      *v38 = v0;
      v38[1] = sub_1C2D24648;

      return v43();
    }

    v22(*(v0 + 72), *(v0 + 40));
    v40 = *(v0 + 16);
    goto LABEL_17;
  }

  if (qword_1EC05CF50 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 136);
  v25 = sub_1C2E72B44();
  __swift_project_value_buffer(v25, qword_1EC05FC28);
  v26 = v24;
  v27 = sub_1C2E72B24();
  v28 = sub_1C2E75FC4();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 136);
  if (!v29)
  {

    v40 = v30;
LABEL_17:

    goto LABEL_18;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v31 = 138412290;
  v33 = v30;
  v34 = _swift_stdlib_bridgeErrorToNSError();
  *(v31 + 4) = v34;
  *v32 = v34;
  _os_log_impl(&dword_1C2C6B000, v27, v28, "Failed to present safety check for handles: %@", v31, 0xCu);
  sub_1C2C73644(v32, &unk_1EC062DD0);
  MEMORY[0x1C6927DF0](v32, -1, -1);
  MEMORY[0x1C6927DF0](v31, -1, -1);

LABEL_18:

  v41 = *(v0 + 8);

  return v41(0);
}

uint64_t sub_1C2D24648()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2D24760, 0, 0);
}

uint64_t sub_1C2D24760()
{
  v1 = v0[3];
  v0[22] = sub_1C2E71BB4();
  v4 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1C2D24820;

  return v4(v1, 0);
}

uint64_t sub_1C2D24820(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1C2D269A0;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1C2D26994;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C2D24D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D24DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a6;
  v8 = sub_1C2E759D4();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_1C2E75A04();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[16] = v10;
  *v10 = v6;
  v10[1] = sub_1C2D24F10;

  return sub_1C2D25358(a5);
}

uint64_t sub_1C2D24F10(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C2D25010, 0, 0);
}

uint64_t sub_1C2D25010()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[12];
    v14 = v0[14];
    v15 = v0[13];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    sub_1C2C9DC60();
    v13 = sub_1C2E76084();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1C2D26860;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1C2CB2CC4;
    v0[5] = &block_descriptor_6;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1C2E759F4();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1C2D26890(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
    sub_1C2CF04C8();
    sub_1C2E76464();
    MEMORY[0x1C6926AC0](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v14 + 8))(v2, v15);
  }

  v11 = v0[1];

  return v11();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2D25290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C2CC8E70;

  return sub_1C2D24DBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C2D25358(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C2E71BE4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2D2543C, 0, 0);
}

uint64_t sub_1C2D2543C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  v0[11] = OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask;
  v3 = *(v1 + v2);
  v0[12] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1C2D255AC;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v5 = v0[3];
    v0[14] = sub_1C2E71BC4();
    v0[15] = sub_1C2E71BB4();
    v8 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1C2D2578C;

    return v8(0, v5);
  }
}

uint64_t sub_1C2D255AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2D256A8, 0, 0);
}

uint64_t sub_1C2D256A8()
{
  v1 = v0[11];
  v2 = v0[4];

  *(v2 + v1) = 0;

  v3 = v0[3];
  v0[14] = sub_1C2E71BC4();
  v0[15] = sub_1C2E71BB4();
  v6 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1C2D2578C;

  return v6(0, v3);
}

uint64_t sub_1C2D2578C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C2D25900, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C2D25900()
{
  v1 = *(v0 + 136);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);

    (*(v6 + 32))(v3, v4, v5);
    if (qword_1EC05CF50 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = sub_1C2E72B44();
    __swift_project_value_buffer(v11, qword_1EC05FC28);
    v12 = *(v10 + 16);
    v12(v7, v8, v9);
    v13 = sub_1C2E72B24();
    v14 = sub_1C2E75FC4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v19 = 138412290;
      sub_1C2D26890(&qword_1EC05FC58, MEMORY[0x1E699A180]);
      swift_allocError();
      v12(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = *(v18 + 8);
      v23 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v16, v17);
      *(v19 + 4) = v21;
      *v42 = v21;
      _os_log_impl(&dword_1C2C6B000, v13, v14, "presentSafetyCheck: SCWB error %@", v19, 0xCu);
      sub_1C2C73644(v42, &unk_1EC062DD0);
      MEMORY[0x1C6927DF0](v42, -1, -1);
      MEMORY[0x1C6927DF0](v19, -1, -1);
    }

    else
    {

      v22 = *(v18 + 8);
      v23 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v16, v17);
    }

    *(v0 + 144) = v22;
    v35 = *(v0 + 56);
    v36 = *(v0 + 40);
    (*(*(v0 + 48) + 104))(v35, *MEMORY[0x1E699A170], v36);
    v37 = sub_1C2E71BD4();
    *(v0 + 152) = v23;
    v22(v35, v36);
    if (v37)
    {
      *(v0 + 160) = sub_1C2E71BB4();
      v43 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v38 = swift_task_alloc();
      *(v0 + 168) = v38;
      *v38 = v0;
      v38[1] = sub_1C2D25E50;

      return v43();
    }

    v22(*(v0 + 72), *(v0 + 40));
    v40 = *(v0 + 16);
    goto LABEL_17;
  }

  if (qword_1EC05CF50 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 136);
  v25 = sub_1C2E72B44();
  __swift_project_value_buffer(v25, qword_1EC05FC28);
  v26 = v24;
  v27 = sub_1C2E72B24();
  v28 = sub_1C2E75FC4();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 136);
  if (!v29)
  {

    v40 = v30;
LABEL_17:

    goto LABEL_18;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v31 = 138412290;
  v33 = v30;
  v34 = _swift_stdlib_bridgeErrorToNSError();
  *(v31 + 4) = v34;
  *v32 = v34;
  _os_log_impl(&dword_1C2C6B000, v27, v28, "Failed to present safety check for handles: %@", v31, 0xCu);
  sub_1C2C73644(v32, &unk_1EC062DD0);
  MEMORY[0x1C6927DF0](v32, -1, -1);
  MEMORY[0x1C6927DF0](v31, -1, -1);

LABEL_18:

  v41 = *(v0 + 8);

  return v41(0);
}

uint64_t sub_1C2D25E50()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2D25F68, 0, 0);
}

uint64_t sub_1C2D25F68()
{
  v1 = v0[3];
  v0[22] = sub_1C2E71BB4();
  v4 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1C2D26028;

  return v4(0, v1);
}

uint64_t sub_1C2D26028(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1C2D26220;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1C2D2617C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C2D2617C()
{
  v1 = *(v0 + 192);
  (*(v0 + 144))(*(v0 + 72), *(v0 + 40));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C2D26220()
{
  (*(v0 + 144))(*(v0 + 72), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1(0);
}

id SafetyCheckManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI18SafetyCheckManager_fetchTask] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SafetyCheckManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2D26398()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC05FC28);
  __swift_project_value_buffer(v0, qword_1EC05FC28);
  return sub_1C2E72B34();
}

uint64_t sub_1C2D2643C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C2D26530;

  return v5(v2 + 32);
}

uint64_t sub_1C2D26530()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C2D26644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2CC8E70;

  return sub_1C2D2643C(a1, v4);
}

uint64_t sub_1C2D266FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2C7DC10;

  return sub_1C2D2643C(a1, v4);
}

uint64_t sub_1C2D267B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2C7DC10;

  return sub_1C2D23070();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D26890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2D268D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2CC8E70;

  return sub_1C2E43814(a1, v4);
}

uint64_t View.rosterScrollTransition(topLeading:bottomTrailing:itemWidth:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v3[2] = sub_1C2D26B48;
  v3[3] = 0;
  v3[4] = sub_1C2D26B60;
  v3[5] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FC68);
  sub_1C2E73844();
  sub_1C2D26D10();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C2E74B04();
}

double sub_1C2D26B48(char a1)
{
  result = -0.2;
  if (a1)
  {
    return 0.0;
  }

  return result;
}

double sub_1C2D26B60(char a1)
{
  result = *(v1 + 16);
  if (a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C2D26B74@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, double (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  a2(a1);
  v11 = sub_1C2E73844();
  v12 = sub_1C2D26D10();
  sub_1C2E73244();
  v13 = a3(a1);
  v16[2] = v11;
  v16[3] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1C6923C80](v7, OpaqueTypeConformance2, v13, 0.0);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1C2D26D10()
{
  result = qword_1EC05FC70;
  if (!qword_1EC05FC70)
  {
    sub_1C2E73844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FC70);
  }

  return result;
}

void ClippedImageBackgroundView.BackgroundStyle.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D27DB4(a1, v3);
    }

    else
    {
      MEMORY[0x1C6927290](v3 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);

    sub_1C2E74F24();
  }
}

uint64_t ClippedImageBackgroundView.BackgroundStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2E76854();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D27DB4(v4, v1);
    }

    else
    {
      MEMORY[0x1C6927290](v1 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);
    sub_1C2E74F24();
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2D26EAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2E76854();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D27DB4(v4, v1);
    }

    else
    {
      MEMORY[0x1C6927290](v1 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);
    sub_1C2E74F24();
  }

  return sub_1C2E76894();
}

void sub_1C2D26F48(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D27DB4(a1, v3);
    }

    else
    {
      MEMORY[0x1C6927290](v3 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);

    sub_1C2E74F24();
  }
}

uint64_t sub_1C2D26FEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2E76854();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D27DB4(v4, v1);
    }

    else
    {
      MEMORY[0x1C6927290](v1 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);
    sub_1C2E74F24();
  }

  return sub_1C2E76894();
}

uint64_t ClippedImageBackgroundView.ForegroundStyle.init(clipShapeColor:clippedImageSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  return sub_1C2D290C0(a2, a3 + *(v5 + 20), type metadata accessor for ClippedImage.ImageSize);
}

uint64_t sub_1C2D270DC()
{
  v0 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC05FC78);
  v1 = __swift_project_value_buffer(v0, qword_1EC05FC78);
  v2 = sub_1C2E74F44();
  type metadata accessor for ClippedImage.ImageSize(0);
  result = swift_storeEnumTagMultiPayload();
  *v1 = v2;
  return result;
}

uint64_t static ClippedImageBackgroundView.ForegroundStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05CF58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC05FC78);
  return sub_1C2D29058(v3, a1, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
}

uint64_t static ClippedImageBackgroundView.ForegroundStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C2E74ED4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0) + 20);

  return _s16CommunicationsUI12ClippedImageV0D4SizeO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t ClippedImageBackgroundView.ForegroundStyle.hash(into:)()
{
  sub_1C2E74F24();
  type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  return ClippedImage.ImageSize.hash(into:)();
}

uint64_t ClippedImageBackgroundView.ForegroundStyle.hashValue.getter()
{
  sub_1C2E76854();
  sub_1C2E74F24();
  type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2D272D8()
{
  sub_1C2E76854();
  sub_1C2E74F24();
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2D27374()
{
  sub_1C2E76854();
  sub_1C2E74F24();
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2D273C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C2E74ED4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s16CommunicationsUI12ClippedImageV0D4SizeO2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t ClippedImageBackgroundView.init(image:clipShape:imageSize:backgroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *a3;
  v20 = *(a3 + 8);
  if (qword_1EC05CF58 != -1)
  {
    v26 = v11;
    swift_once();
    v11 = v26;
  }

  v21 = __swift_project_value_buffer(v11, qword_1EC05FC78);
  sub_1C2D29058(v21, v13, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
  *a4 = v15;
  *(a4 + 8) = v14;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  *(a4 + 40) = a5;
  *(a4 + 48) = a5;
  *(a4 + 56) = 0;
  v22 = type metadata accessor for ClippedImageBackgroundView(0);
  sub_1C2D29058(v13, a4 + *(v22 + 32), type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
  if (v20)
  {
    if (v20 == 1)
    {
      result = sub_1C2D28028(v13);
      v14 = 0;
      v24 = -96;
    }

    else if (v19)
    {
      sub_1C2C70B1C(v15, v14, v16);
      result = sub_1C2D28028(v13);
      v24 = v16 | 0x80;
      v19 = v15;
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          sub_1C2C70B1C(v15, v14, 1u);
          v25 = sub_1C2E75064();
        }

        else
        {
          sub_1C2C70B1C(v15, v14, 2u);
          v25 = sub_1C2E75034();
        }
      }

      else
      {
        sub_1C2C70B1C(v15, v14, 0);
        v25 = sub_1C2E750D4();
      }

      v19 = v25;
      result = sub_1C2D28028(v13);
      v14 = 0;
      v24 = 96;
    }
  }

  else
  {
    result = sub_1C2D28028(v13);
    v14 = 0;
    v24 = 32;
  }

  *(a4 + 64) = v19;
  *(a4 + 72) = v14;
  *(a4 + 80) = v24;
  return result;
}

uint64_t ClippedImageBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 24) = xmmword_1C2E81F40;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC90);
  return sub_1C2D276C4(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_1C2D276C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v49 = type metadata accessor for ClippedImage(0);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FCF0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v45 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FCF8);
  v12 = *(v48 - 8);
  v13 = MEMORY[0x1EEE9AC00](v48);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  *v17 = v18;
  *(v17 + 1) = v19;
  v20 = *(a1 + 80);
  v17[16] = v20;
  *(v17 + 17) = 256;
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  sub_1C2C9651C(v18, v19, v20);
  if (v23)
  {
    if (v23 == 1)
    {
      sub_1C2C70B1C(v22, v21, 1u);
      v24 = sub_1C2E75064();
    }

    else
    {
      sub_1C2C70B1C(v22, v21, 2u);
      v24 = sub_1C2E75034();
    }
  }

  else
  {
    sub_1C2C70B1C(v22, v21, 0);
    v24 = sub_1C2E750D4();
  }

  v25 = v24;
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  v28 = (a1 + *(type metadata accessor for ClippedImageBackgroundView(0) + 32));
  v29 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  v30 = v49;
  sub_1C2D29058(v28 + *(v29 + 20), &v4[*(v49 + 24)], type metadata accessor for ClippedImage.ImageSize);
  v47 = *v28;
  v31 = v47;
  *v4 = v25;
  *(v4 + 1) = v26;
  v4[16] = v27;
  *&v4[*(v30 + 28)] = v31;
  sub_1C2D290C0(v4, v10, type metadata accessor for ClippedImage);
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D158) + 36)] = 257;
  v33 = v50;
  v32 = v51;
  v34 = v53;
  (*(v50 + 32))(v53, v10, v51);
  v35 = *(v12 + 16);
  v46 = v17;
  v36 = v17;
  v37 = v48;
  v35(v15, v36, v48);
  v38 = *(v33 + 16);
  v38(v54, v34, v32);
  v39 = v52;
  v35(v52, v15, v37);
  v40 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD00) + 48)];
  v41 = v54;
  v38(v40, v54, v32);
  v42 = *(v33 + 8);

  v42(v53, v32);
  v43 = *(v12 + 8);
  v43(v46, v37);
  v42(v41, v32);
  return (v43)(v15, v37);
}

uint64_t sub_1C2D27B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v3;
  *(a1 + 24) = xmmword_1C2E81F40;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FC90);
  return sub_1C2D276C4(v1, (a1 + *(v4 + 44)));
}

double sub_1C2D27B7C(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1C2D27BA8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C2E72FC4();
  return sub_1C2CC3834;
}

void sub_1C2D27C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1C6927290](v3);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 != 1)
      {
        MEMORY[0x1C6927290](2);
        goto LABEL_5;
      }

      MEMORY[0x1C6927290](1);

      sub_1C2E75CC4();
LABEL_4:
      sub_1C2C775D8(v5, v6, v7);
LABEL_5:
      if (!--v3)
      {
        return;
      }
    }

    MEMORY[0x1C6927290](0);
    if (v7)
    {
      if (v7 != 1)
      {
        sub_1C2C77478(v5, v6, 2u);
        sub_1C2C70B1C(v5, v6, 2u);
        v11 = [v5 description];
        sub_1C2E75C64();

        sub_1C2C775D8(v5, v6, 2u);
        goto LABEL_15;
      }

      sub_1C2C77478(v5, v6, 1u);
      v8 = v5;
      v9 = v6;
      v10 = 1;
    }

    else
    {
      sub_1C2C77478(v5, v6, 0);
      v8 = v5;
      v9 = v6;
      v10 = 0;
    }

    sub_1C2C70B1C(v8, v9, v10);
LABEL_15:
    sub_1C2E75CC4();

    goto LABEL_4;
  }
}

void sub_1C2D27DB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1C2E764E4();
    MEMORY[0x1C6927290](v8);
    v3 = sub_1C2E764E4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1C6927290](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1C6927010](i, a2);
      sub_1C2E76244();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C2E76244();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s16CommunicationsUI26ClippedImageBackgroundViewV0E5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1C2D29128(*a2, 0);
      sub_1C2D29128(v2, 0);
      v6 = sub_1C2E74ED4();
      sub_1C2D29144(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1C2D29128(*a2, 1);
      sub_1C2D29128(v2, 1);
      LOBYTE(v6) = sub_1C2CF6EB8(v2, v4);
      sub_1C2D29144(v2, 1);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_1C2D29144(v7, v8);
      return v6 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_1C2D29144(0, 2);
      sub_1C2D29144(0, 2);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != 1)
  {
LABEL_19:
    sub_1C2D29128(*a2, *(a2 + 8));
    sub_1C2D29128(v2, v3);
    sub_1C2D29144(v2, v3);
    sub_1C2D29144(v4, v5);
    return 0;
  }

  v11 = 1;
  sub_1C2D29144(1, 2);
  sub_1C2D29144(1, 2);
  return v11;
}

uint64_t sub_1C2D28028(uint64_t a1)
{
  v2 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2D28088()
{
  result = qword_1EC05FC98;
  if (!qword_1EC05FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FC98);
  }

  return result;
}

uint64_t sub_1C2D28168()
{
  result = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI26ClippedImageBackgroundViewV0E5StyleO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C2D2821C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2D28264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C2D282A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C2D282F8()
{
  result = type metadata accessor for ClippedImage.ImageSize(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C2D28374()
{
  result = qword_1EC05FCA8;
  if (!qword_1EC05FCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FC90);
    sub_1C2C94F38(&qword_1EC05FCB0, &qword_1EC05FCB8);
    sub_1C2C94F38(&qword_1EC05FCC0, &qword_1EC05FCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FCA8);
  }

  return result;
}

uint64_t sub_1C2D28458(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
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

uint64_t sub_1C2D284A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C2D28510()
{
  result = qword_1EC05FCD0;
  if (!qword_1EC05FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FCD0);
  }

  return result;
}

unint64_t sub_1C2D28568()
{
  result = qword_1EC05FCD8;
  if (!qword_1EC05FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FCD8);
  }

  return result;
}

uint64_t sub_1C2D285BC(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v95 = sub_1C2E73504();
  v91 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2E73414();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB30);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v82 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v70 - v19;
  v21 = sub_1C2E73344();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v81 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = v70 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v71 = v70 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v74 = v70 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v70 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v88 = v70 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v77 = v70 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v83 = v70 - v38;
  v73 = *v5;
  v70[1] = *(v5 + 16);
  v72 = *(v5 + 24);
  v39 = *(v13 + 16);
  v85 = a1;
  v80 = v13 + 16;
  v76 = v39;
  v39(v15, a1, v12);
  v40 = MEMORY[0x1E697E3C0];
  v41 = sub_1C2D28FBC(&qword_1EC05FCE0, MEMORY[0x1E697E3C0]);
  v79 = v15;
  v42 = v33;
  v75 = v41;
  sub_1C2E75D24();
  v78 = v16;
  v43 = *(v16 + 36);
  v44 = sub_1C2D28FBC(&qword_1EC05B9E8, v40);
  sub_1C2E75F64();
  if (*&v20[v43] == v97[0])
  {
    return sub_1C2D1FB10(v20);
  }

  v92 = (v22 + 16);
  v93 = (v22 + 32);
  v90 = (v22 + 8);
  ++v91;
  v87 = v44;
  while (1)
  {
    v45 = sub_1C2E75F84();
    v46 = v88;
    v89 = *v92;
    v89(v88);
    (v45)(v97, 0);
    sub_1C2E75F74();
    v47 = *v93;
    (*v93)(v42, v46, v21);
    v48 = v94;
    sub_1C2E73324();
    LOBYTE(v97[0]) = 0;
    v49 = sub_1C2D29004();
    LOBYTE(v45) = sub_1C2E734F4();
    v50 = *v91;
    (*v91)(v48, v95);
    if (v45)
    {
      break;
    }

    (*v90)(v42, v21);
    sub_1C2E75F64();
    if (*&v20[v43] == v97[0])
    {
      return sub_1C2D1FB10(v20);
    }
  }

  v88 = v50;
  sub_1C2D1FB10(v20);
  v52 = v77;
  v47(v77, v42, v21);
  v47(v83, v52, v21);
  v76(v79, v85, v12);
  v53 = v82;
  sub_1C2E75D24();
  v54 = *(v78 + 36);
  sub_1C2E75F64();
  v55 = *(v53 + v54) == v97[0];
  v56 = v81;
  v85 = v49;
  if (v55)
  {
LABEL_10:
    sub_1C2D1FB10(v53);
    return (*v90)(v83, v21);
  }

  else
  {
    v57 = v47;
    v58 = v54;
    v84 = v57;
    while (1)
    {
      v59 = sub_1C2E75F84();
      v60 = v86;
      v89(v86);
      (v59)(v97, 0);
      sub_1C2E75F74();
      v57(v56, v60, v21);
      v61 = v94;
      sub_1C2E73324();
      LOBYTE(v97[0]) = 1;
      LOBYTE(v59) = sub_1C2E734F4();
      (v88)(v61, v95);
      if (v59)
      {
        break;
      }

      (*v90)(v56, v21);
      sub_1C2E75F64();
      v57 = v84;
      if (*(v53 + v58) == v97[0])
      {
        goto LABEL_10;
      }
    }

    sub_1C2D1FB10(v53);
    v62 = v71;
    v63 = v84;
    v84(v71, v56, v21);
    v64 = v74;
    v63(v74, v62, v21);
    sub_1C2E758A4();
    LOBYTE(v97[0]) = 0;
    v96 = 0;
    sub_1C2E73334();
    if (v72 == 2)
    {
      v98.origin.x = a2;
      v98.origin.y = a3;
      v98.size.width = a4;
      v98.size.height = a5;
      CGRectGetWidth(v98);
      v99.origin.x = a2;
      v99.origin.y = a3;
      v99.size.width = a4;
      v99.size.height = a5;
      CGRectGetHeight(v99);
      sub_1C2E758F4();
    }

    else
    {
      v65 = a2;
      v66 = a3;
      v67 = a4;
      v68 = a5;
      if (v72)
      {
        CGRectGetMidX(*&v65);
        sub_1C2E758D4();
      }

      else
      {
        CGRectGetMinY(*&v65);
        sub_1C2E75904();
      }
    }

    LOBYTE(v97[0]) = 0;
    v96 = 0;
    sub_1C2E73334();
    v69 = *v90;
    (*v90)(v64, v21);
    return v69(v83, v21);
  }
}

uint64_t sub_1C2D28FBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2D29004()
{
  result = qword_1EC05FCE8;
  if (!qword_1EC05FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FCE8);
  }

  return result;
}

uint64_t sub_1C2D29058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D290C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D29128(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1C2D29144(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClippedImageBackgroundView.ScaledForegroundLayout.Alignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClippedImageBackgroundView.ScaledForegroundLayout.Alignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C2D291E8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1C2D291FC(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t CircularButtonStyle.init(size:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t CircularButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1C2E74024();
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E743E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD08);
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v21 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = v2[2];
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD10);
  sub_1C2D29BBC();
  sub_1C2E751C4();
  v17 = v22;
  sub_1C2E74014();
  sub_1C2C94F38(&qword_1EC05FD58, &qword_1EC05FD08);
  sub_1C2D29E0C();
  v18 = v21;
  v19 = v24;
  sub_1C2E74974();
  (*(v25 + 8))(v17, v19);
  return (*(v23 + 8))(v11, v18);
}

uint64_t sub_1C2D295E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E73BA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C2E75FD4();
    v10 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v7 + 8))(v9, v6);
    a1 = v24;
  }

  if (!a1)
  {
    LODWORD(v24) = sub_1C2E740F4();
    a1 = sub_1C2E73284();
  }

  sub_1C2E75744();
  sub_1C2E73274();
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v22 = v29;
  v23 = v28;
  v15 = sub_1C2E75744();
  v17 = v16;
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD10) + 36);
  sub_1C2E743C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD50);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  *a3 = a1;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  v21 = v22;
  *(a3 + 40) = v23;
  *(a3 + 48) = v21;
  return result;
}

uint64_t sub_1C2D2981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1C2E74024();
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E743E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD08);
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v21 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = v2[2];
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD10);
  sub_1C2D29BBC();
  sub_1C2E751C4();
  v17 = v22;
  sub_1C2E74014();
  sub_1C2C94F38(&qword_1EC05FD58, &qword_1EC05FD08);
  sub_1C2D29E0C();
  v18 = v21;
  v19 = v24;
  sub_1C2E74974();
  (*(v25 + 8))(v17, v19);
  return (*(v23 + 8))(v11, v18);
}

uint64_t sub_1C2D29B5C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C6924350]();
  *a1 = result;
  return result;
}

unint64_t sub_1C2D29BBC()
{
  result = qword_1EC05FD18;
  if (!qword_1EC05FD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FD10);
    sub_1C2D29C74();
    sub_1C2C94F38(&qword_1EC05FD48, &qword_1EC05FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FD18);
  }

  return result;
}

unint64_t sub_1C2D29C74()
{
  result = qword_1EC05FD20;
  if (!qword_1EC05FD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FD28);
    sub_1C2D29D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FD20);
  }

  return result;
}

unint64_t sub_1C2D29D00()
{
  result = qword_1EC05FD30;
  if (!qword_1EC05FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FD38);
    sub_1C2D29DB8();
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FD30);
  }

  return result;
}

unint64_t sub_1C2D29DB8()
{
  result = qword_1EC05FD40;
  if (!qword_1EC05FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FD40);
  }

  return result;
}

unint64_t sub_1C2D29E0C()
{
  result = qword_1EC05E958;
  if (!qword_1EC05E958)
  {
    sub_1C2E74024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E958);
  }

  return result;
}

uint64_t sub_1C2D29E8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C2D29ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id SuggestionsView.__allocating_init(axis:spacing:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded] = 0;
  v6 = &v5[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];

  return v7;
}

id SuggestionsView.init(axis:spacing:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded] = 0;
  v6 = &v2[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];

  return v7;
}

uint64_t SuggestionsView.isExpanded.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionsView.isExpanded.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    v7 = 0.0;
    if (a1)
    {
      v7 = 1.0;
    }

    [v1 setAlpha_];
    v8 = [v1 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v9 = sub_1C2E75D74();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
    {
      for (j = 0; ; ++j)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C6927010](j, v9);
        }

        else
        {
          if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * j + 32);
        }

        v13 = v12;
        v14 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v12 setHidden_];

        if (v14 == i)
        {
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return result;
}

void (*SuggestionsView.isExpanded.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1C2D2A418;
}

void sub_1C2D2A418(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_36;
    }

    v7 = *(v2 + 24);
    v8 = 0.0;
    if (v5)
    {
      v8 = 1.0;
    }

    [*(v2 + 24) setAlpha_];
    v9 = [v7 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v10 = sub_1C2E75D74();

    if (v10 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C6927010](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        [v13 setHidden_];

        ++v12;
        if (v15 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    goto LABEL_35;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_36;
  }

  v16 = *(v2 + 24);
  v17 = 0.0;
  if (v5)
  {
    v17 = 1.0;
  }

  [*(v2 + 24) setAlpha_];
  v18 = [v16 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v10 = sub_1C2E75D74();

  if (v10 >> 62)
  {
    v19 = sub_1C2E764E4();
    if (v19)
    {
LABEL_20:
      v20 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C6927010](v20, v10);
        }

        else
        {
          if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v21 = *(v10 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_29;
        }

        [v21 setHidden_];

        ++v20;
      }

      while (v23 != v19);
    }
  }

  else
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_20;
    }
  }

LABEL_35:

LABEL_36:

  free(v2);
}