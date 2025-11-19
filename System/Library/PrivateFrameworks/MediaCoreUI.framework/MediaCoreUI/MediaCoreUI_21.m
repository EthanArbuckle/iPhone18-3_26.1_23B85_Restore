uint64_t sub_1C5B50BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float sub_1C5B50C98()
{
  swift_getKeyPath();
  sub_1C5B51124();
  sub_1C5BC7B74();

  return *(v0 + 16);
}

float sub_1C5B50D08@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B51124();
  sub_1C5BC7B74();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1C5B50D80(float a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5B51124();
    sub_1C5BC7B64();
  }
}

uint64_t NowPlayingViewModel.VolumeControl.deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13VolumeControl___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingViewModel.VolumeControl.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13VolumeControl___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B50F74()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel13VolumeControlP33_F913C71E0C68724A4AEE47C526AAF02510MiniPlayer___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall NowPlayingViewModel.VolumeControl.setVolume(_:)(Swift::Float a1)
{
  swift_getKeyPath();
  sub_1C5B51124();
  sub_1C5BC7B74();

  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5BC7B64();
  }
}

unint64_t sub_1C5B51124()
{
  result = qword_1EDA4A998;
  if (!qword_1EDA4A998)
  {
    type metadata accessor for NowPlayingViewModel.VolumeControl(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A998);
  }

  return result;
}

float sub_1C5B5117C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

void static NowPlayingButtonID.routeAndVolumeControl.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001C5BFC490;
  *(a1 + 16) = 0;
}

uint64_t sub_1C5B51200()
{
  result = sub_1C5BC7BB4();
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s13VolumeControlC6ActionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VolumeControlC6ActionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C5B51304(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B51320(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformView.ProcessID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WaveformView.ProcessID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1C5B513CC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA48);
  __swift_project_value_buffer(v0, qword_1EDA5DA48);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5B51444(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ELL;
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000020;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000099;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 4)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1C5B5156C()
{
  result = qword_1EC198C58;
  if (!qword_1EC198C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198C58);
  }

  return result;
}

uint64_t sub_1C5B515C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BCB0B4();
  *a1 = result;
  return result;
}

uint64_t sub_1C5B51638(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void sub_1C5B517BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
      if (v10)
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1C5B51A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1C5B51B18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1C5B51CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1C5B51D44(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_currentTexture] = 0;
  v6 = OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_displayModeSubject;
  LOBYTE(v18[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938);
  swift_allocObject();
  *&v2[v6] = sub_1C5BC7F84();
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_image] = a1;
  *&v2[OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_textureLoader] = a2;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v7 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v19, sel_init, v18[0]);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v9;

  v12 = [v7 CGImage];
  if (v12)
  {
    v13 = v12;
    if (qword_1EC1908E8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Option(0);
    sub_1C5B52764();
    v14 = sub_1C5BCACA4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C5B52758;
    *(v15 + 24) = v10;
    v18[4] = sub_1C5A11004;
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1C5B51CC4;
    v18[3] = &block_descriptor_20;
    v16 = _Block_copy(v18);

    [v8 newTextureWithCGImage:v13 options:v14 completionHandler:v16];

    _Block_release(v16);
  }

  else
  {
    sub_1C5B52004(1, 1);

    v14 = v11;
  }

  return v11;
}

void sub_1C5B52004(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      if (qword_1EC190888 != -1)
      {
        swift_once();
      }

      v6 = sub_1C5BC7D64();
      __swift_project_value_buffer(v6, qword_1EC1A6D48);
      sub_1C5A1100C(a1);
      v7 = sub_1C5BC7D44();
      v8 = sub_1C5BCB4D4();
      sub_1C5A1101C(a1, 1);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        sub_1C5A111A0();
        swift_allocError();
        *v11 = a1;
        sub_1C5A1100C(a1);
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1C5922000, v7, v8, "MetalImageTextureProvider failed to load texture: %{public}@", v9, 0xCu);
        sub_1C5B0A754(v10);
        MEMORY[0x1C69510F0](v10, -1, -1);
        MEMORY[0x1C69510F0](v9, -1, -1);
      }
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider_currentTexture) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_1C5BC7F54();
    }
  }
}

uint64_t sub_1C5B521F0()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI25MetalImageTextureProvider____lazy_storage___displayModePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193938);
    sub_1C5B526F4();
    v2 = sub_1C5BC8064();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C5B52298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198C98);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E69743F8];
  *(inited + 32) = *MEMORY[0x1E69743F8];
  v2 = MEMORY[0x1E69E6370];
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 40) = 0;
  v3 = *MEMORY[0x1E6974408];
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  *(inited + 104) = MEMORY[0x1E69E6810];
  *(inited + 80) = 3;
  v4 = v1;
  v5 = v3;
  v6 = sub_1C59ADDF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA0);
  result = swift_arrayDestroy();
  qword_1EC198C60 = v6;
  return result;
}

uint64_t sub_1C5B5237C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1C5BCB214();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1C5BCB1E4();
  swift_unknownObjectRetain();

  v12 = a2;
  v13 = sub_1C5BCB1D4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a2;
  sub_1C5AD0FB8(0, 0, v10, &unk_1C5BED300, v14);
}

uint64_t sub_1C5B524C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1C5BCB1E4();
  v7[6] = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B52564, v9, v8);
}

uint64_t sub_1C5B52564()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    v3 = swift_unknownObjectRetain();
    v2(v3, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    (v0[3])(v0[5], 1);
  }

  v4 = v0[1];

  return v4();
}

unint64_t sub_1C5B526F4()
{
  result = qword_1EC193940;
  if (!qword_1EC193940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193940);
  }

  return result;
}

unint64_t sub_1C5B52764()
{
  result = qword_1EDA4E610;
  if (!qword_1EDA4E610)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E610);
  }

  return result;
}

uint64_t sub_1C5B527BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C592ABD4;

  return sub_1C5B524C8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI25MetalImageTextureProviderC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B528B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5B52920(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C5BC7B04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1C5B5F300(&qword_1EC196A58, MEMORY[0x1E69695A8]), v7 = sub_1C5BCAD34(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1C5B5F300(&qword_1EC196A60, MEMORY[0x1E69695A8]);
      v15 = sub_1C5BCADB4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C5B52B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v6 = sub_1C5BCBF94();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C5BCBDE4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C5B52C38()
{
  sub_1C5B5E770();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B52CC0(uint64_t a1)
{
  sub_1C59318C8(a1, v3);
  sub_1C59318C8(v3, &v2);
  sub_1C5B5E770();
  sub_1C5BC8F54();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t MCUINamespace<A>.marqueeAnimationDirection(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t MCUINamespace<A>.coordinatedMarquees()(uint64_t a1, uint64_t a2)
{
  sub_1C5BCA684();
  MEMORY[0x1C694E550](&v5, *(a1 + 16), &type metadata for CoordinatedMarquees, a2);
}

uint64_t sub_1C5B52E7C()
{
  sub_1C59E71A8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t Marquee.init(spacing:rate:delay:isAnimating:preferredFrameRateRange:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v16 = type metadata accessor for Marquee();
  v17 = (a5 + v16[10]);
  sub_1C5BCA684();
  *v17 = v25;
  v17[1] = v26;
  v18 = a5 + v16[11];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a5 + v16[12];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = a5 + v16[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a5 + v16[14];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a5 + v16[9];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  *(v22 + 24) = a1;
  *(v22 + 28) = a2;
  *(v22 + 36) = a3;
  *(v22 + 40) = BYTE4(a3) & 1;
  *(v22 + 48) = 7104878;
  *(v22 + 56) = 0xE300000000000000;
  result = a4();
  v24 = a5 + v16[15];
  *v24 = 0;
  *(v24 + 8) = 1;
  return result;
}

uint64_t MCUINamespace<A>.marqueeFeathering(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v5, v7);
  swift_getKeyPath();
  if (a2)
  {
    v11 = sub_1C5960930(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BD4D40;
    *(inited + 32) = 0;
    *(inited + 40) = a1;
    *(inited + 48) = 1;
    *(inited + 56) = a1;
    v11 = sub_1C5960930(inited);
    swift_setDeallocating();
  }

  v14[9] = v11;
  sub_1C5BC9DF4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnvironmentValues.marqueeCanExtendContentBeyondFrame.getter()
{
  sub_1C5B5CDD4();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B532D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1C5B5CB30(v7, v8) & 1;
}

uint64_t sub_1C5B5331C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_1C5B53478(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    sub_1C5957038(*v7, v9);
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E48C(v8, v9, v10, v11, 0);
    (*(v4 + 8))(v6, v3);
    return v14;
  }

  return v8;
}

uint64_t sub_1C5B53610()
{
  sub_1C5955914();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B53650(uint64_t *a1)
{
  sub_1C5957038(*a1, a1[1]);
  sub_1C5955914();
  return sub_1C5BC8F54();
}

uint64_t sub_1C5B536AC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C5B53800(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[1];
  }

  return v8;
}

uint64_t sub_1C5B5397C(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C5B539E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a3;
  v79 = a2;
  v66 = a1;
  v81 = a6;
  type metadata accessor for Marquee.MarqueeingContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0);
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  v82 = a5;
  v9 = type metadata accessor for Marquee.ContentWithBadge();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  sub_1C5BC8AB4();
  v10 = sub_1C5BC8AB4();
  v86[12] = swift_getWitnessTable();
  v86[13] = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0);
  v86[10] = swift_getWitnessTable();
  v86[11] = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = v9;
  v86[8] = v12;
  v86[9] = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  v86[6] = swift_getWitnessTable();
  v86[7] = sub_1C5953670();
  v77 = v8;
  v87 = v8;
  v88 = v10;
  v76 = v10;
  v74 = WitnessTable;
  v89 = WitnessTable;
  v90 = swift_getWitnessTable();
  v70 = v90;
  v75 = type metadata accessor for ShownWhenAppeared();
  v71 = *(v75 - 8);
  v14 = MEMORY[0x1EEE9AC00](v75);
  v73 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v72 = &v61 - v17;
  v18 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  v24 = sub_1C5BC8AB4();
  v65 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v61 - v25;
  v68 = sub_1C5BC8AB4();
  v67 = *(v68 - 8);
  v27 = MEMORY[0x1EEE9AC00](v68);
  v69 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v61 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v83 = &v61 - v32;
  v33 = v66;
  (*(v18 + 16))(v21, v66, a4);
  sub_1C596500C(v21, a4, v23);
  LODWORD(v63) = sub_1C5BC98E4();
  v78 = a4;
  v34 = type metadata accessor for Marquee();
  if (sub_1C5B536AC(v34))
  {
    v35 = v12;
    v36 = sub_1C5B5331C(v34);
    v37 = sub_1C59651B8(1, v36);

    if (v37 || (v38 = sub_1C5B53478(v34), v39) && (v62 = v38, , , , (v62 & 1) == 0))
    {
      v12 = v35;
    }

    else
    {
      if (*(sub_1C5B53800(v34) + 16))
      {
        sub_1C5960A1C(1);
      }

      v12 = v35;
    }
  }

  sub_1C5BCA2F4();
  (*(v64 + 8))(v23, v13);
  v40 = swift_allocObject();
  v41 = v79;
  v42 = v80;
  *(v40 + 16) = v79;
  *(v40 + 24) = v42;
  v86[4] = v12;
  v86[5] = MEMORY[0x1E697E5D8];

  v43 = swift_getWitnessTable();
  sub_1C5BCA324();

  v65[1](v26, v24);
  v86[2] = v43;
  v86[3] = MEMORY[0x1E69805D0];
  v44 = v68;
  v63 = swift_getWitnessTable();
  sub_1C593EDC0(v31, v44, v63);
  v45 = v67;
  v46 = *(v67 + 8);
  v64 = v67 + 8;
  v65 = v46;
  v47 = (v46)(v31, v44);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = v82;
  *(&v61 - 6) = v78;
  *(&v61 - 5) = v49;
  *(&v61 - 4) = v33;
  *(&v61 - 3) = v41;
  *(&v61 - 2) = v42;
  MEMORY[0x1EEE9AC00](v48);
  *(&v61 - 4) = v51;
  *(&v61 - 3) = v50;
  *(&v61 - 2) = v33;
  v52 = v73;
  sub_1C59652A0(sub_1C5B5F36C, sub_1C5B5F39C, v77, v76, v73);
  v53 = v75;
  v54 = swift_getWitnessTable();
  v55 = v72;
  sub_1C593EDC0(v52, v53, v54);
  v56 = v71;
  v57 = *(v71 + 8);
  v57(v52, v53);
  v58 = v69;
  (*(v45 + 16))(v69, v83, v44);
  v87 = v58;
  (*(v56 + 16))(v52, v55, v53);
  v88 = v52;
  v86[0] = v44;
  v86[1] = v53;
  v84 = v63;
  v85 = v54;
  sub_1C594226C(&v87, 2uLL, v86);
  v57(v55, v53);
  v59 = v65;
  (v65)(v83, v44);
  v57(v52, v53);
  return (v59)(v58, v44);
}

uint64_t sub_1C5B5440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v46 = a2;
  v48 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Marquee.MarqueeingContent();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0);
  v13 = sub_1C5BC8AB4();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - v14;
  v15 = sub_1C5BC8AB4();
  v45 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v41 - v19;
  (*(v7 + 16))(v9, a1, a4);
  v20 = type metadata accessor for Marquee();
  v21 = (a1 + *(v20 + 36));
  v22 = v21[3];
  v54[2] = v21[2];
  v54[3] = v22;
  v23 = v21[1];
  v54[0] = *v21;
  v54[1] = v23;
  sub_1C5B5E4F4(v54, v53);
  v24 = sub_1C5965B5C();
  sub_1C5B549A4(v9, v54, v25, v26, a4, v12, v24);
  swift_getKeyPath();
  v27 = (a1 + *(v20 + 60));
  if (v27[1])
  {
    v28 = sub_1C5B53800(v20);
  }

  else
  {
    v29 = *v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BD4D40;
    *(inited + 32) = 0;
    *(inited + 40) = v29;
    *(inited + 48) = 1;
    *(inited + 56) = v29;
    v28 = sub_1C5960930(inited);
    swift_setDeallocating();
  }

  v53[0] = v28;
  WitnessTable = swift_getWitnessTable();
  v32 = v42;
  sub_1C5BC9DF4();

  (*(v41 + 8))(v12, v10);
  v33 = swift_allocObject();
  v34 = v47;
  *(v33 + 16) = v46;
  *(v33 + 24) = v34;
  v35 = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0);
  v51 = WitnessTable;
  v52 = v35;

  v36 = swift_getWitnessTable();
  sub_1C5BCA324();

  (*(v44 + 8))(v32, v13);
  v49 = v36;
  v50 = MEMORY[0x1E69805D0];
  v37 = swift_getWitnessTable();
  v38 = v43;
  sub_1C593EDC0(v18, v15, v37);
  v39 = *(v45 + 8);
  v39(v18, v15);
  sub_1C593EDC0(v38, v15, v37);
  return (v39)(v38, v15);
}

uint64_t sub_1C5B549A4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v12 = type metadata accessor for Marquee.MarqueeingContent();
  v13 = (a6 + v12[9]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v15 = a2[3];
  v13[2] = a2[2];
  v13[3] = v15;
  v16 = a6 + v12[10];
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = a7;
  v17 = a6 + v12[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = a6 + v12[12];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a6 + v12[13];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  return result;
}

void sub_1C5B54ABC(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA46950);

  oslog = sub_1C5BC7D44();
  v7 = sub_1C5BCB4B4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1C592ADA8(a1, a2, &v11);
    _os_log_impl(&dword_1C5922000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1C69510F0](v9, -1, -1);
    MEMORY[0x1C69510F0](v8, -1, -1);
  }
}

uint64_t sub_1C5B54C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  v38 = v6;
  v39 = v7;
  v40 = v7;
  v8 = type metadata accessor for Marquee.ContentWithBadge();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  v11 = sub_1C5BC8AB4();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1C5BC8AB4();
  v31 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  (*(v27 + 16))(v5, v29, a2);
  sub_1C596500C(v5, a2, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA3B4();
  (*(v28 + 8))(v10, v8);
  v21 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  v35 = WitnessTable;
  v36 = v21;
  v22 = swift_getWitnessTable();
  sub_1C5BCA254();
  (*(v30 + 8))(v13, v11);
  v23 = sub_1C5953670();
  v33 = v22;
  v34 = v23;
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(v17, v14, v24);
  v25 = *(v31 + 8);
  v25(v17, v14);
  sub_1C593EDC0(v19, v14, v24);
  return (v25)(v19, v14);
}

double sub_1C5B55018(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
  MEMORY[0x1C694EA50](v7, v5);
  return *v7;
}

double sub_1C5B55078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
  sub_1C5BCA834();
  return v1;
}

uint64_t sub_1C5B550DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a5;
  v61 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = v50 - v12;
  v14 = *(v13 + 24);
  v50[0] = *(v13 + 16);
  v50[1] = v14;
  v66 = v50[0];
  v67 = v15;
  v68 = v14;
  v69 = v16;
  v17 = type metadata accessor for Marquee.ContentWithBadge();
  v53 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v52 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v51 = v50 - v20;
  v21 = sub_1C5BC8F34();
  v54 = *(v21 - 8);
  v55 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C5BC92D4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v62 = v50 - v26;
  v27 = v5 + *(a2 + 44);
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  LODWORD(v27) = *(v27 + 32);
  v63 = v30;
  if (v27 == 1)
  {
    sub_1C5957038(v29, v28);
    v32 = v28;
    v33 = v62;
    if (!v32)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v56 = v28;

    sub_1C5BCB4E4();
    v57 = v31;
    v34 = v17;
    v35 = v25;
    v36 = v24;
    v37 = a4;
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a4 = v37;
    v24 = v36;
    v25 = v35;
    v17 = v34;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E48C(v29, v56, v63, v57, 0);
    (*(v54 + 8))(v23, v55);
    LOBYTE(v29) = v66;
    v32 = v67;
    v31 = v69;
    v63 = v68;
    v33 = v62;
    if (!v67)
    {
LABEL_8:
      v45 = v60;
      sub_1C593EDC0(a1, a3, a4);
      v46 = v58;
      sub_1C593EDC0(v45, a3, a4);
      swift_getWitnessTable();
      sub_1C5941738(v46, v17, a3);
      v47 = *(v61 + 8);
      v47(v46, a3);
      v47(v45, a3);
      goto LABEL_9;
    }
  }

  if ((v29 & 1) == 0)
  {

    goto LABEL_8;
  }

  v39 = *(v61 + 16);
  v56 = v32;
  v57 = v31;
  v40 = v60;
  v39(v60, a1, a3);
  v41 = v52;
  sub_1C596500C(v40, a3, v52);
  WitnessTable = swift_getWitnessTable();
  v43 = v51;
  sub_1C593EDC0(v41, v17, WitnessTable);
  v61 = a4;
  v44 = *(v53 + 8);
  v44(v41, v17);
  sub_1C593EDC0(v43, v17, WitnessTable);
  sub_1C5950E54(v41, v17);

  v44(v41, v17);
  v44(v43, v17);
  a4 = v61;
LABEL_9:
  v64 = swift_getWitnessTable();
  v65 = a4;
  v48 = swift_getWitnessTable();
  sub_1C593EDC0(v33, v24, v48);
  return (*(v25 + 8))(v33, v24);
}

uint64_t sub_1C5B556B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v79 = sub_1C5BC8F34();
  v86 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1C5BC96A4();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v6 = *(a1 + 24);
  v99 = *(a1 + 16);
  v5 = v99;
  v100 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = v5;
  v100 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = v5;
  v100 = OpaqueTypeMetadata2;
  v101 = v6;
  v102 = OpaqueTypeConformance2;
  type metadata accessor for Marquee.ContentWithBadge();
  v9 = sub_1C5BC92D4();
  WitnessTable = swift_getWitnessTable();
  v98 = OpaqueTypeConformance2;
  v10 = swift_getWitnessTable();
  v99 = v5;
  v100 = v9;
  v101 = v6;
  v102 = v10;
  type metadata accessor for Marquee.MarqueeAnimationView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CE0);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v11 = sub_1C5BCA714();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = swift_getWitnessTable();
  v99 = v11;
  v100 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v77 = v19;
  v20 = sub_1C5BC8AB4();
  v82 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v70 - v21;
  v83 = v22;
  v23 = sub_1C5BC8AB4();
  v84 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v70 - v26;
  v90 = v5;
  v91 = v6;
  v27 = v89;
  v92 = v89;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v28 = v71;
  sub_1C5BC9684();
  v74 = v18;
  v75 = v15;
  sub_1C5BCA0C4();
  (*(v72 + 8))(v28, v73);
  (*(v12 + 8))(v14, v11);
  sub_1C5BC98C4();
  v29 = v27 + v88[12];
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v31 == 1)
  {

    v32 = v30;
    v33 = v79;
    v34 = v78;
  }

  else
  {

    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v34 = v78;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v30, 0);
    v33 = v79;
    (*(v86 + 8))(v34, v79);
    v32 = v99;
  }

  v36 = sub_1C59651B8(0, v32);

  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v89 + v88[13];
  v38 = *v37;
  if (*(v37 + 8) == 1)
  {

    if (!*(v38 + 16))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1C5BCB4E4();
  v39 = v34;
  v40 = v33;
  v41 = sub_1C5BC9844();
  sub_1C5BC7C54();

  v33 = v40;
  v34 = v39;
  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5B5E4E8(v38, 0);
  (*(v86 + 8))(v39, v33);
  if (*(v99 + 16))
  {
LABEL_10:
    sub_1C5960A1C(0);
  }

LABEL_11:

LABEL_12:
  v99 = v11;
  v100 = v75;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v77;
  v44 = v74;
  sub_1C5BCA2F4();
  (*(v76 + 8))(v44, v43);
  LODWORD(v79) = sub_1C5BC98E4();
  if (v31)
  {

    v45 = v86;
  }

  else
  {

    sub_1C5BCB4E4();
    v46 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v30, 0);
    v45 = v86;
    (*(v86 + 8))(v34, v33);
    v30 = v99;
  }

  v47 = sub_1C59651B8(1, v30);

  if (v47)
  {
    v48 = v89 + v88[11];
    v49 = *v48;
    v50 = *(v48 + 8);
    v52 = *(v48 + 16);
    v51 = *(v48 + 24);
    if (*(v48 + 32) == 1)
    {
      sub_1C5957038(*v48, v50);
      if (!v50)
      {
        goto LABEL_22;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v53 = sub_1C5BC9844();
      v86 = v23;
      v54 = v42;
      v55 = v34;
      v56 = v45;
      v57 = v53;
      sub_1C5BC7C54();

      v45 = v56;
      v34 = v55;
      v42 = v54;
      v23 = v86;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5B5E48C(v49, v50, v52, v51, 0);
      (*(v45 + 8))(v34, v33);
      LOBYTE(v49) = v99;
      if (!v100)
      {
        goto LABEL_22;
      }
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_22:
    v58 = v89 + v88[13];
    v59 = *v58;
    if (*(v58 + 8) == 1)
    {

      if (!*(v59 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v60 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5B5E4E8(v59, 0);
      (*(v45 + 8))(v34, v33);
      if (!*(v99 + 16))
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    sub_1C5960A1C(1);
    goto LABEL_27;
  }

LABEL_28:
  v61 = MEMORY[0x1E697E5D8];
  v95 = v42;
  v96 = MEMORY[0x1E697E5D8];
  v62 = v83;
  v63 = swift_getWitnessTable();
  v64 = v80;
  v65 = v87;
  sub_1C5BCA2F4();
  (*(v82 + 8))(v65, v62);
  v93 = v63;
  v94 = v61;
  v66 = swift_getWitnessTable();
  v67 = v81;
  sub_1C593EDC0(v64, v23, v66);
  v68 = *(v84 + 8);
  v68(v64, v23);
  sub_1C593EDC0(v67, v23, v66);
  return (v68)(v67, v23);
}

uint64_t sub_1C5B562F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v117 = a1;
  v131 = a4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CE0);
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CE8);
  v124 = *(v9 - 8);
  v125 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v106 = (&v103 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v103 - v14;
  v15 = sub_1C5BC8F34();
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CD8);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v103 - v19;
  v120 = sub_1C5BC9C34();
  v118 = *(v120 - 1);
  MEMORY[0x1EEE9AC00](v120);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  *&v146 = a2;
  *(&v146 + 1) = a3;
  v23 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v116 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v112 = &v103 - v25;
  *&v146 = v22;
  *(&v146 + 1) = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v146 = v22;
  *(&v146 + 1) = OpaqueTypeMetadata2;
  v27 = v22;
  *&v147 = a3;
  *(&v147 + 1) = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v107 = OpaqueTypeConformance2;
  type metadata accessor for Marquee.ContentWithBadge();
  v29 = sub_1C5BC92D4();
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v103 - v30;
  WitnessTable = swift_getWitnessTable();
  v156 = v28;
  v110 = swift_getWitnessTable();
  *&v146 = v27;
  *(&v146 + 1) = v29;
  *&v147 = a3;
  *(&v147 + 1) = v110;
  v111 = type metadata accessor for Marquee.MarqueeAnimationView();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v32 = &v103 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD0);
  v114 = sub_1C5BC8AB4();
  v121 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v103 - v33;
  v136 = sub_1C5BC8AB4();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v134 = &v103 - v36;
  sub_1C5BC9C24();
  v37 = v112;
  v38 = v117;
  sub_1C5BC9D54();
  (*(v118 + 8))(v21, v120);
  v39 = v27;
  v40 = type metadata accessor for Marquee.MarqueeingContent();
  v41 = v108;
  sub_1C5B550DC(v37, v40, OpaqueTypeMetadata2, v107, v108);
  (*(v116 + 8))(v37, OpaqueTypeMetadata2);
  v42 = (v38 + v40[9]);
  v43 = v42[1];
  v163 = *v42;
  v164 = v43;
  v44 = v42[3];
  v165 = v42[2];
  v166 = v44;
  sub_1C5B5E4F4(&v163, &v146);
  v45 = v38;
  v46 = sub_1C5B55078();
  v48 = v47;
  v50 = v49;
  v51 = v46;
  (*(v113 + 32))(v32, v41, v29);
  *&v146 = v39;
  *(&v146 + 1) = v29;
  *&v147 = v23;
  *(&v147 + 1) = v110;
  v52 = type metadata accessor for Marquee.MarqueeAnimationView();
  v53 = &v32[*(v52 + 52)];
  v54 = v164;
  *v53 = v163;
  *(v53 + 1) = v54;
  v55 = v166;
  *(v53 + 2) = v165;
  *(v53 + 3) = v55;
  v56 = &v32[*(v52 + 56)];
  *v56 = v48;
  *(v56 + 1) = v50;
  v56[2] = v51;
  v57 = v45;
  *&v146 = sub_1C5B55018(v40);
  v58 = v111;
  v59 = swift_getWitnessTable();
  sub_1C5B5E52C();
  v60 = v109;
  sub_1C5BC9D44();
  (*(v115 + 8))(v32, v58);
  *&v146 = swift_getKeyPath();
  BYTE8(v148) = 0;
  v61 = sub_1C5924F54(&qword_1EDA461A8, &qword_1EC198CD0);
  v153 = v59;
  v154 = v61;
  v62 = v136;
  v63 = v114;
  v64 = swift_getWitnessTable();
  v65 = v135;
  MEMORY[0x1C694E550](&v146, v63, &type metadata for MarqueeMaskModifier, v64);
  sub_1C5B5E580(&v146);
  (*(v121 + 8))(v60, v63);
  v66 = sub_1C5B5E5B0();
  v151 = v64;
  v152 = v66;
  v118 = swift_getWitnessTable();
  sub_1C593EDC0(v65, v62, v118);
  v67 = v62;
  v68 = v57;
  v120 = *(v133 + 8);
  v121 = v133 + 8;
  v120(v65, v67);
  v69 = v57 + v40[11];
  v70 = *v69;
  v71 = *(v69 + 8);
  v73 = *(v69 + 16);
  v72 = *(v69 + 24);
  if (*(v69 + 32) == 1)
  {
    v74 = v119;
    sub_1C5957038(v70, v71);
    v76 = v122;
    v75 = v123;
    if (!v71)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v77 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v78 = v119;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E48C(v70, v71, v73, v72, 0);
    v76 = v122;
    v74 = v78;
    v79 = v78;
    v75 = v123;
    (*(v122 + 8))(v79, v123);
    LOBYTE(v70) = v146;
    v71 = *(&v146 + 1);
    v72 = *(&v147 + 1);
    v73 = v147;
    if (!*(&v146 + 1))
    {
      goto LABEL_10;
    }
  }

  if ((v70 & 1) == 0)
  {
    v80 = v68 + v40[13];
    v81 = *v80;
    if (*(v80 + 8) == 1)
    {

      if (!*(v81 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v83 = v76;
      v84 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5B5E4E8(v81, 0);
      (*(v83 + 8))(v74, v75);
      if (!*(v146 + 16))
      {
LABEL_13:

        sub_1C5BCAA54();
        sub_1C5BC85D4();
        v122 = v159;
        v123 = v157;
        v119 = v161;
        v117 = v162;
        LOBYTE(v141) = 1;
        LOBYTE(v140[0]) = v158;
        LOBYTE(v137) = v160;
        v146 = xmmword_1C5BED3B0;
        LOBYTE(v147) = 0;
        *(&v147 + 1) = MEMORY[0x1E69E7CC0];
        v85 = v104;
        sub_1C5BCA094();
        v86 = v141;
        v87 = v140[0];
        v88 = v137;
        v89 = v105;
        sub_1C59400B0(v85, v105, &qword_1EC195080);
        v90 = v106;
        *v106 = 0;
        *(v90 + 8) = v86;
        v91 = v122;
        *(v90 + 16) = v123;
        *(v90 + 24) = v87;
        *(v90 + 32) = v91;
        *(v90 + 40) = v88;
        v92 = v117;
        *(v90 + 48) = v119;
        *(v90 + 56) = v92;
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CF0);
        sub_1C59400B0(v89, v90 + *(v93 + 48), &qword_1EC195080);
        v94 = (v90 + *(v93 + 64));
        *v94 = v71;
        v94[1] = v73;
        v94[2] = v72;

        sub_1C5924EF4(v85, &qword_1EC195080);

        sub_1C5924EF4(v89, &qword_1EC195080);
        v82 = v127;
        sub_1C59E7D34(v90, v127, &qword_1EC198CE8);
        (*(v124 + 56))(v82, 0, 1, v125);
        goto LABEL_14;
      }
    }

    sub_1C5960A1C(1);
    goto LABEL_13;
  }

LABEL_10:
  v82 = v127;
  (*(v124 + 56))(v127, 1, 1, v125);
LABEL_14:
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  LOBYTE(v140[0]) = 0;
  v141 = xmmword_1C5BED3B0;
  LOBYTE(v142) = 0;
  *(&v142 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1918A0);
  sub_1C59AEE44();
  v95 = v130;
  sub_1C5BCA094();
  v148 = v143;
  v149 = v144;
  v150 = v145;
  v146 = v141;
  v147 = v142;
  sub_1C5924EF4(&v146, &qword_1EC1918A0);
  v96 = v134;
  v98 = v135;
  v97 = v136;
  (*(v133 + 16))(v135, v134, v136);
  *&v141 = v98;
  v99 = v128;
  sub_1C59400B0(v82, v128, &qword_1EC198CD8);
  *(&v141 + 1) = v99;
  v100 = v132;
  sub_1C59400B0(v95, v132, &qword_1EC198CE0);
  *&v142 = v100;
  v140[0] = v97;
  v140[1] = v126;
  v140[2] = v129;
  v137 = v118;
  v138 = sub_1C5B5E604();
  v139 = sub_1C5B5E6B4();
  sub_1C594226C(&v141, 3uLL, v140);
  sub_1C5924EF4(v95, &qword_1EC198CE0);
  sub_1C5924EF4(v82, &qword_1EC198CD8);
  v101 = v120;
  v120(v96, v97);
  sub_1C5924EF4(v100, &qword_1EC198CE0);
  sub_1C5924EF4(v99, &qword_1EC198CD8);
  return v101(v98, v97);
}

double sub_1C5B5722C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
  sub_1C5BCA834();
  return v1;
}

id sub_1C5B57294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v47 = sub_1C5BC8F34();
  v54 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v50 = *(a2 + 16);
  *&v57 = v50;
  *(&v57 + 1) = v6;
  v48 = v6;
  v9 = v7;
  *&v58 = v7;
  *(&v58 + 1) = v8;
  v46 = v8;
  v49 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v44 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v15 = sub_1C5BC7D64();
  __swift_project_value_buffer(v15, qword_1EDA46950);
  (*(v11 + 16))(v14, v2, a2);
  v16 = sub_1C5BC7D44();
  v17 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v45 = v3;
    v20 = v19;
    *&v57 = v19;
    *v18 = 136446210;
    v21 = &v14[*(a2 + 52)];
    v22 = *(v21 + 7);
    v44 = *(v21 + 6);
    v23 = *(v11 + 8);

    v23(v14, a2);
    v24 = sub_1C592ADA8(v44, v22, &v57);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v16, v17, "[Context: %{public}s] Creating MarqueeUIView", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    v3 = v45;
    MEMORY[0x1C69510F0](v25, -1, -1);
    MEMORY[0x1C69510F0](v18, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, a2);
  }

  v26 = v50;
  *&v57 = v50;
  *(&v57 + 1) = v48;
  *&v58 = v9;
  *(&v58 + 1) = v46;
  v27 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView();
  v28 = (v3 + *(a2 + 52));
  v29 = v28[1];
  v57 = *v28;
  v58 = v29;
  v30 = v28[3];
  v59 = v28[2];
  v60 = v30;
  sub_1C5B5E4F4(&v57, v56);
  swift_getWitnessTable();
  sub_1C5BC96D4();
  v31 = v51;
  sub_1C5BC96C4();
  v32 = v52;
  sub_1C5B577A8(&v57, v26, v52);
  (*(v54 + 8))(v31, v47);
  v33 = sub_1C5B5722C();
  v35 = v34;
  v37 = v36;
  v38 = v33;
  v39 = objc_allocWithZone(v27);
  v40 = sub_1C5B5E924(v32, v35, v37, v38);

  (*(v55 + 8))(v32, v49);
  LODWORD(v41) = 1144750080;
  [v40 setContentHuggingPriority:1 forAxis:v41];
  LODWORD(v42) = 1144750080;
  [v40 setContentHuggingPriority:0 forAxis:v42];
  return v40;
}

uint64_t sub_1C5B577A8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  sub_1C5B5E8D0();
  sub_1C5BC8F44();
  *(a3 + 64) = v9;
  v7 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  sub_1C5BC8D94();
  sub_1C5B5F0B8();
  sub_1C5BC8F44();
  *(a3 + *(v7 + 60)) = a2;
  sub_1C59E71A8();
  result = sub_1C5BC8F44();
  *(a3 + *(v7 + 64)) = a2;
  return result;
}

uint64_t sub_1C5B5789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v46 = *(a3 + 16);
  *&v51 = v46;
  *(&v51 + 1) = v10;
  v45 = v10;
  v44 = v11;
  *&v52 = v11;
  *(&v52 + 1) = v12;
  v43 = v12;
  v13 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v36 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v19 = sub_1C5BC7D64();
  __swift_project_value_buffer(v19, qword_1EDA46950);
  (*(v15 + 16))(v18, v3, a3);
  v20 = sub_1C5BC7D44();
  v21 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v40 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v8;
    v38 = v24;
    *&v51 = v24;
    *v23 = 136446210;
    v25 = &v18[*(a3 + 52)];
    v37 = *(v25 + 6);
    v41 = v4;
    v26 = *(v25 + 7);
    v27 = *(v15 + 8);

    v27(v18, a3);
    v28 = sub_1C592ADA8(v37, v26, &v51);
    v4 = v41;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1C5922000, v20, v21, "[Context: %{public}s] Updating MarqueeUIView", v23, 0xCu);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    v8 = v39;
    MEMORY[0x1C69510F0](v29, -1, -1);
    MEMORY[0x1C69510F0](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, a3);
  }

  v30 = (v4 + *(a3 + 52));
  v31 = v30[1];
  v51 = *v30;
  v52 = v31;
  v32 = v30[3];
  v53 = v30[2];
  v54 = v32;
  sub_1C5B5E4F4(&v51, v50);
  swift_getWitnessTable();
  sub_1C5BC96D4();
  v33 = v49;
  sub_1C5BC96C4();
  v34 = v42;
  sub_1C5B577A8(&v51, v46, v42);
  (*(v8 + 8))(v33, v7);
  sub_1C5B57D24(v4, v34);
  return (*(v47 + 8))(v34, v48);
}

void sub_1C5B57D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *(v7 + 0x58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - v10;
  v14 = *((v13 & v12) + 0x78);
  swift_beginAccess();
  *&v15 = *(v7 + 80);
  *(&v15 + 1) = v8;
  *v25 = *(v7 + 96);
  *&v25[5] = *v25;
  *&v25[3] = v15;
  v16 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  (*(*(v16 - 8) + 24))(&v3[v14], a2, v16);
  swift_endAccess();
  v17 = *((*v6 & *v3) + 0x80);
  v18 = *&v3[v17];
  if (v18)
  {
    (*(v9 + 16))(v11, a1, v8);
    v19 = v18;
    sub_1C5BC91B4();
LABEL_6:

    sub_1C5B58A00();
    [v3 setNeedsLayout];
    return;
  }

  sub_1C5BC91C4();
  (*(v9 + 16))(v11, a1, v8);
  v20 = sub_1C5BC9194();
  sub_1C5B5EB9C(v20);

  v21 = sub_1C5B594F0();
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    v24 = *&v3[v17];
    if (v24)
    {
      v19 = v24;
      sub_1C5BC9184();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C5B57FDC()
{
  v0 = sub_1C5B594F0();
  if (v0)
  {
    v1 = v0;
    [v0 frame];
  }

  else
  {
    __break(1u);
  }
}

double sub_1C5B58030()
{
  sub_1C5B5E8D0();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5B5806C()
{
  sub_1C5B5F0B8();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B580B4()
{
  v1 = v0[1];
  v10[0] = *v0;
  v10[1] = v1;
  v2 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  v10[2] = v0[2];
  v10[3] = v2;
  v6 = v4;
  v7 = v3;
  v8 = v0[2];
  v9 = v0[3];
  sub_1C5B5E4F4(v10, v11);
  swift_getAtKeyPath();
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  return sub_1C5B5F088(v11);
}

uint64_t sub_1C5B581C0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1C5BC89D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = v0 + *((v2 & v1) + 0x78);
  swift_beginAccess();
  v12 = *(v3 + 96);
  v18[0] = *(v3 + 80);
  v18[1] = v12;
  v13 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v14 = v11[*(v13 + 60)];
  if (v14 == 1)
  {
    v15 = 1;
  }

  else if (v14 == 2)
  {
    (*(v5 + 16))(v10, &v11[*(v13 + 56)], v4);
    (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
    v15 = sub_1C5BC89C4();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C5B583D4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v12 = v3;
  v4 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *((v2 & v1) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  swift_getKeyPath();
  sub_1C5B580B4();

  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1C5B5857C()
{
  swift_getObjCClassMetadata();
  sub_1C5B585B4();

  return swift_getObjCClassFromMetadata();
}

void sub_1C5B585E0()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  *&v37.m11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  *&v37.m13 = v3;
  v4 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA46950);
  v9 = v0;
  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v38[0] = v14;
    *v13 = 136446466;
    v15 = sub_1C5B583D4();
    v17 = sub_1C592ADA8(v15, v16, v38);
    v35 = ObjectType;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    [v9 frame];
    v37.m11 = v19;
    v37.m12 = v20;
    v37.m13 = v21;
    v37.m14 = v22;
    type metadata accessor for CGRect(0);
    v23 = sub_1C5BCAEA4();
    v25 = sub_1C592ADA8(v23, v24, v38);

    *(v13 + 14) = v25;
    ObjectType = v35;
    _os_log_impl(&dword_1C5922000, v10, v11, "[Context: %{public}s] MarqueeUIView layoutSubviews with frame: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    v26 = v14;
    v2 = MEMORY[0x1E69E7D40];
    MEMORY[0x1C69510F0](v26, -1, -1);
    v27 = v13;
    v4 = v36;
    MEMORY[0x1C69510F0](v27, -1, -1);
  }

  v39.receiver = v9;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  sub_1C5B58A00();
  v28 = [v9 layer];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClassUnconditional();
  sub_1C5B57FDC();
  v31 = v30;
  v32 = *((*v2 & *v9) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9 + v32, v4);
  swift_getKeyPath();
  sub_1C5B580B4();

  (*(v5 + 8))(v7, v4);
  m11 = v37.m11;
  if (sub_1C5B581C0())
  {
    v34 = -(v31 + m11);
  }

  else
  {
    v34 = v31 + m11;
  }

  [v29 setInstanceCount_];
  CATransform3DMakeTranslation(&v37, v34, 0.0, 0.0);
  [v29 setInstanceTransform_];
  sub_1C5B58CB4();
}

void sub_1C5B58A00()
{
  v1 = sub_1C5B594F0();
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 sizeThatFits_];
  v4 = v3;
  v6 = v5;

  v7 = 0.0;
  if (sub_1C5B581C0())
  {
    [v0 frame];
    Width = CGRectGetWidth(v27);
    sub_1C5B57FDC();
    v7 = Width - v9;
  }

  v10 = sub_1C5B594F0();
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  [v10 setFrame_];

  if (qword_1EDA46948 != -1)
  {
    swift_once();
  }

  v12 = sub_1C5BC7D64();
  __swift_project_value_buffer(v12, qword_1EDA46950);
  v13 = v0;
  oslog = sub_1C5BC7D44();
  v14 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446466;
    v17 = sub_1C5B583D4();
    v19 = sub_1C592ADA8(v17, v18, &v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_1C5B594F0();

    if (v20)
    {
      [v20 frame];

      type metadata accessor for CGRect(0);
      v21 = sub_1C5BCAEA4();
      v23 = sub_1C592ADA8(v21, v22, &v25);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1C5922000, oslog, v14, "[Context: %{public}s] MarqueeUIView set hosting view frame to %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v16, -1, -1);
      MEMORY[0x1C69510F0](v15, -1, -1);

      return;
    }

    goto LABEL_15;
  }
}

void sub_1C5B58CB4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v61 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v62 = v4;
  v5 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = v1 + *((v3 & v2) + 0x78);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v12, v13, v5);
  swift_getKeyPath();
  sub_1C5B580B4();

  v15 = *(v6 + 8);
  v15(v12, v5);
  if (LOBYTE(v58) == 1)
  {
    v57 = v1;
    sub_1C5B57FDC();
    v17 = v16;
    v14(v12, v13, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    v15(v12, v5);
    v18 = v17 + v58;
    v14(v12, v13, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    v15(v12, v5);
    v19 = v18 / v58;
    v20 = sub_1C5BCAE44();
    v21 = [objc_opt_self() animationWithKeyPath_];

    v22 = v55;
    v54 = v13;
    v56 = v14;
    v14(v55, v13, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    v55 = v15;
    v15(v22, v5);
    if ((v60 & 1) == 0)
    {
      LODWORD(v24) = HIDWORD(v58);
      LODWORD(v25) = v59;
      LODWORD(v23) = LODWORD(v58);
      [v21 setPreferredFrameRateRange_];
    }

    v26 = v21;
    [v26 setDuration_];
    v27 = sub_1C5BCB394();
    [v26 setFromValue_];

    sub_1C5B581C0();
    v28 = sub_1C5BC7BD4();
    [v26 setToValue_];

    v52 = v26;
    [v26 setRemovedOnCompletion_];
    v29 = v54;
    v30 = v56;
    v56(v12, v54, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    v31 = v55;
    (v55)(v12, v5);
    v32 = v19 + v58;
    sub_1C5B5813C();
    v33 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
    v34 = v53;
    v30(v53, v29, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    v31(v34, v5);
    if ((v60 & 1) == 0)
    {
      LODWORD(v36) = HIDWORD(v58);
      LODWORD(v37) = v59;
      LODWORD(v35) = LODWORD(v58);
      [v33 setPreferredFrameRateRange_];
    }

    v38 = v33;
    v39 = CACurrentMediaTime();
    v40 = v54;
    v56(v12, v54, v5);
    swift_getKeyPath();
    sub_1C5B580B4();

    (v55)(v12, v5);
    [v38 setBeginTime_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1C5BED3C0;
    v42 = v52;
    *(v41 + 32) = v52;
    sub_1C592535C(0, &qword_1EDA45E90);
    v43 = sub_1C5BCB044();

    [v38 setAnimations_];

    v44 = v40[8];
    if (v44 >= v32)
    {
      if ((~*&v44 & 0x7FF0000000000000) != 0)
      {
        v32 = v40[8];
      }

      else if ((v40[8] & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v32 = v40[8];
      }
    }

    [v38 setDuration_];
    *&v49 = *(v40 + *(v5 + 64));
    [v38 setRepeatCount_];

    v50 = sub_1C5B594F0();
    if (v50)
    {
      v51 = v50;
      v47 = [v50 layer];

      v48 = sub_1C5BCAE44();
      [v47 addAnimation:v38 forKey:v48];

      goto LABEL_16;
    }
  }

  else
  {
    v45 = sub_1C5B594F0();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 layer];

      v48 = sub_1C5BCAE44();
      [v47 removeAnimationForKey_];
LABEL_16:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C5B593FC(void *a1)
{
  v1 = a1;
  sub_1C5B585E0();
}

double sub_1C5B59444(void *a1)
{
  v1 = a1;
  sub_1C5B59488();
  v3 = v2;

  return v3;
}

void sub_1C5B59488()
{
  v0 = sub_1C5B594F0();
  if (v0)
  {
    v1 = v0;
    [v0 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5B594F0()
{
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  if (result)
  {
    v2 = [result view];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5B59554(void *a1)
{
  if (a1)
  {
    v2 = [a1 view];
    if (!v2)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 removeFromSuperview];
  }

  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v1 addSubview_];
}

void sub_1C5B59690(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x78);
  v4 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

uint64_t sub_1C5B597D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5B5984C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C5B598C8()
{
  swift_getWitnessTable();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t Marquee.init(spacing:feathering:rate:delay:isAnimating:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for Marquee();
  v15 = (a3 + v14[10]);
  sub_1C5BCA684();
  *v15 = v23;
  v15[1] = v24;
  v16 = a3 + v14[11];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a3 + v14[12];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  v18 = a3 + v14[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a3 + v14[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a3 + v14[9];
  *v20 = a4;
  *(v20 + 8) = a6;
  *(v20 + 16) = a7;
  *(v20 + 24) = a1;
  *(v20 + 28) = 0;
  *(v20 + 36) = 0;
  *(v20 + 40) = 1;
  *(v20 + 48) = 7104878;
  *(v20 + 56) = 0xE300000000000000;
  result = a2();
  v22 = a3 + v14[15];
  *v22 = a5;
  *(v22 + 8) = 0;
  return result;
}

uint64_t Marquee.init(spacing:feathering:rate:delay:isAnimating:preferredFrameRateRange:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = type metadata accessor for Marquee();
  v19 = (a5 + v18[10]);
  sub_1C5BCA684();
  *v19 = v27;
  v19[1] = v28;
  v20 = a5 + v18[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a5 + v18[12];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = a5 + v18[13];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a5 + v18[14];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a5 + v18[9];
  *v24 = a6;
  *(v24 + 8) = a8;
  *(v24 + 16) = a9;
  *(v24 + 24) = a1;
  *(v24 + 28) = a2;
  *(v24 + 36) = a3;
  *(v24 + 40) = BYTE4(a3) & 1;
  *(v24 + 48) = 7104878;
  *(v24 + 56) = 0xE300000000000000;
  result = a4();
  v26 = a5 + v18[15];
  *v26 = a7;
  *(v26 + 8) = 0;
  return result;
}

uint64_t sub_1C5B59BFC()
{
  type metadata accessor for ShownWhenAppeared();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5B59C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D48);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D50);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D58);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9 - 8];
  sub_1C59F0224(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D60);
  if (swift_dynamicCast())
  {
    v11 = &v10[*(v8 + 36)];
    *v11 = sub_1C5B5A0B0;
    *(v11 + 1) = 0;
    v11[16] = 0;
    *(v11 + 3) = swift_getKeyPath();
    v11[32] = 0;
    v12 = *(type metadata accessor for BackdropMaskModifier(0) + 24);
    *&v11[v12] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D68);
    (*(*(v13 - 8) + 16))(v10, a1, v13);
    v14 = &qword_1EC198D58;
    sub_1C59400B0(v10, v7, &qword_1EC198D58);
    swift_storeEnumTagMultiPayload();
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    sub_1C5BC92C4();
    v15 = v10;
  }

  else
  {
    v16 = &v4[*(v2 + 36)];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    v17 = *(type metadata accessor for MaskView(0) + 20);
    *&v16[v17] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D68);
    (*(*(v18 - 8) + 16))(v4, a1, v18);
    v14 = &qword_1EC198D48;
    sub_1C59400B0(v4, v7, &qword_1EC198D48);
    swift_storeEnumTagMultiPayload();
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    sub_1C5BC92C4();
    v15 = v4;
  }

  sub_1C5924EF4(v15, v14);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_1C5B5A038()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B5A070@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5B5A0B0()
{
  v0 = sub_1C5BC7B04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  v4 = swift_allocObject();
  sub_1C5BC7AF4();
  v5 = sub_1C5BC7AD4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

uint64_t sub_1C5B5A1A4@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  if (v10 == 1)
  {

    v11 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v9, 0);
    (*(v6 + 8))(v8, v5);
    v11 = v80[0];
  }

  v13 = 8.0;
  if (*(v11 + 16))
  {
    v14 = sub_1C5960A1C(0);
    if (v15)
    {
      v13 = *(*(v11 + 56) + 8 * v14);
    }
  }

  if (v10)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v9, 0);
    (*(v6 + 8))(v8, v5);
    v9 = v80[0];
  }

  v17 = 8.0;
  if (*(v9 + 16))
  {
    v18 = sub_1C5960A1C(1);
    if (v19)
    {
      v17 = *(*(v9 + 56) + 8 * v18);
    }
  }

  *&v63[2] = v17;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D78);
  (*(*(v20 - 8) + 16))(a2, COERCE_DOUBLE(*&v64), v20);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D80) + 36);
  *v21 = v13;
  *(v21 + 8) = v17;
  *(v21 + 16) = 256;
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup);
  v22 = sub_1C5BC83A4();
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);

  v25 = sub_1C5BC98C4();
  sub_1C5BC8174();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v80[0]) = 0;
  v34 = sub_1C5BC98E4();
  sub_1C5BC8174();
  v36 = v35;
  v38 = v37;
  v64 = v13;
  v40 = v39;
  v42 = v41;
  v68 = 0;
  v43 = sub_1C5BCAA54();
  v45 = v44;
  *&v71 = v24;
  *(&v71 + 1) = v23;
  v63[1] = v3;
  LOBYTE(v72) = 1;
  *(&v72 + 1) = *v67;
  DWORD1(v72) = *&v67[3];
  BYTE8(v72) = v25;
  *(&v72 + 9) = *v66;
  HIDWORD(v72) = *&v66[3];
  *&v73 = v27;
  *(&v73 + 1) = v29;
  *&v74 = v31;
  *(&v74 + 1) = v33;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *&v70[3];
  *(&v75 + 1) = *v70;
  BYTE8(v75) = v34;
  HIDWORD(v75) = *&v69[3];
  *(&v75 + 9) = *v69;
  *&v76 = v36;
  *(&v76 + 1) = v38;
  *&v77 = v40;
  *(&v77 + 1) = v42;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = v43;
  v79 = v44;
  v46 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D88) + 36);
  v47 = v76;
  v48 = v78;
  *(v46 + 96) = v77;
  *(v46 + 112) = v48;
  *(v46 + 128) = v79;
  v49 = v72;
  v50 = v74;
  *(v46 + 32) = v73;
  *(v46 + 48) = v50;
  *(v46 + 64) = v75;
  *(v46 + 80) = v47;
  *v46 = v71;
  *(v46 + 16) = v49;
  v80[0] = v24;
  v80[1] = v23;
  v81 = 1;
  *v82 = *v67;
  *&v82[3] = *&v67[3];
  v83 = v25;
  *v84 = *v66;
  *&v84[3] = *&v66[3];
  v85 = v27;
  v86 = v29;
  v87 = v31;
  v88 = v33;
  v89 = 0;
  *&v90[3] = *&v70[3];
  *v90 = *v70;
  v91 = v34;
  *&v92[3] = *&v69[3];
  *v92 = *v69;
  v93 = v36;
  v94 = v38;
  v95 = v40;
  v96 = v42;
  v97 = 0;
  v98 = v43;
  v99 = v45;
  sub_1C59400B0(&v71, &v65, &qword_1EC198D90);
  sub_1C5924EF4(v80, &qword_1EC198D90);
  v51 = sub_1C5BCAA64();
  v53 = v52;
  v54 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D98) + 36);
  sub_1C5B5A7EC(MEMORY[0x1E6981508], MEMORY[0x1E6981510], MEMORY[0x1E6980D38], v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DA0);
  v56 = (v54 + *(v55 + 36));
  *v56 = v51;
  v56[1] = v53;
  v57 = sub_1C5BCAA74();
  v59 = v58;
  v60 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DA8) + 36);
  result = sub_1C5B5A7EC(MEMORY[0x1E6981510], MEMORY[0x1E6981508], MEMORY[0x1E6980D40], v60);
  v62 = (v60 + *(v55 + 36));
  *v62 = v57;
  v62[1] = v59;
  return result;
}

uint64_t sub_1C5B5A7EC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v50 = a3;
  *&v46 = a2;
  v45 = a1;
  v51 = a4;
  v4 = sub_1C5BC89D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DB0);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v42 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198DB8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - v13;
  type metadata accessor for BackdropMaskModifier.BackdropGroup();
  sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup);
  v14 = sub_1C5BC83A4();
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v43 = v16;
  v44 = v15;

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v52[7] = v53;
  *&v52[23] = v54;
  *&v52[39] = v55;
  type metadata accessor for BackdropMaskModifier(0);
  sub_1C59EFDDC(v10);
  v17 = *MEMORY[0x1E697E7D0];
  v18 = *(v5 + 104);
  v18(v7, v17, v4);
  v19 = sub_1C5BC89C4();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C5BD4D40;
  if (v19)
  {
    *(v21 + 32) = v45();
    v22 = (v46)();
  }

  else
  {
    *(v21 + 32) = (v46)();
    v22 = v45();
  }

  *(v21 + 40) = v22;
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  MEMORY[0x1C694EBE0](v21);
  sub_1C5BC88B4();
  v23 = v56;
  KeyPath = swift_getKeyPath();
  v25 = &v12[*(v47 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C8) + 28);
  v47 = v57;
  v46 = v58;
  v27 = (v18)(v25 + v26, v17, v4);
  *v25 = KeyPath;
  v28 = *&v52[16];
  *(v12 + 17) = *v52;
  v29 = v44;
  *v12 = v43;
  *(v12 + 1) = v29;
  v12[16] = 0;
  *(v12 + 33) = v28;
  *(v12 + 49) = *&v52[32];
  *(v12 + 8) = *&v52[47];
  *(v12 + 9) = v23;
  v30 = v46;
  *(v12 + 5) = v47;
  *(v12 + 6) = v30;
  LOBYTE(v23) = v50(v27);
  sub_1C5BC8174();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v48;
  sub_1C59E7D34(v12, v48, &qword_1EC198DB0);
  v40 = v39 + *(v49 + 36);
  *v40 = v23;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  sub_1C5B5FBE4();
  sub_1C5BCA094();
  return sub_1C5924EF4(v39, &qword_1EC198DB8);
}

uint64_t sub_1C5B5AD30(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMinY(v9);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetWidth(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  return sub_1C5BC9B04();
}

double sub_1C5B5AE08@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C5B5AE74(uint64_t *a1))(void *a1)
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

uint64_t sub_1C5B5AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B60498();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5B5AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B60498();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5B5AFC4(uint64_t a1)
{
  v2 = sub_1C5B60498();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5B5B014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v9 == 1)
  {

    v10 = v8;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v8, 0);
    (*(v5 + 8))(v7, v4);
    v10 = *&v72[0];
  }

  if (*(v10 + 16))
  {
    sub_1C5960A1C(0);
  }

  if (v9)
  {
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E4E8(v8, 0);
    (*(v5 + 8))(v7, v4);
    v8 = *&v72[0];
  }

  if (*(v8 + 16))
  {
    sub_1C5960A1C(1);
  }

  v13 = sub_1C5BC8FC4();
  v59 = 0;
  sub_1C5B5B560(v2, &v46);
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v72[8] = v54;
  v72[9] = v55;
  v72[10] = v56;
  v72[4] = v50;
  v72[5] = v51;
  v72[6] = v52;
  v72[7] = v53;
  v72[0] = v46;
  v72[1] = v47;
  v71 = v57;
  v73 = v57;
  v72[2] = v48;
  v72[3] = v49;
  sub_1C59400B0(&v60, &v45, &qword_1EC198E78);
  sub_1C5924EF4(v72, &qword_1EC198E78);
  *(&v58[8] + 7) = v68;
  *(&v58[9] + 7) = v69;
  *(&v58[10] + 7) = v70;
  *(&v58[4] + 7) = v64;
  *(&v58[5] + 7) = v65;
  *(&v58[6] + 7) = v66;
  *(&v58[7] + 7) = v67;
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  *(&v58[2] + 7) = v62;
  *(&v58[11] + 7) = v71;
  *(&v58[3] + 7) = v63;
  v14 = v59;
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E80) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C8) + 28);
  v18 = *MEMORY[0x1E697E7D0];
  v19 = sub_1C5BC89D4();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v20 = v58[9];
  *(a1 + 145) = v58[8];
  *(a1 + 161) = v20;
  *(a1 + 177) = v58[10];
  *(a1 + 192) = *(&v58[10] + 15);
  v21 = v58[5];
  *(a1 + 81) = v58[4];
  *(a1 + 97) = v21;
  v22 = v58[7];
  *(a1 + 113) = v58[6];
  *(a1 + 129) = v22;
  v23 = v58[1];
  *(a1 + 17) = v58[0];
  *(a1 + 33) = v23;
  v24 = v58[3];
  *(a1 + 49) = v58[2];
  *a1 = v13;
  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 65) = v24;
  LOBYTE(v13) = sub_1C5BC98C4();
  sub_1C5BC8174();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E88) + 36);
  *v33 = v13;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  LOBYTE(v13) = sub_1C5BC98E4();
  sub_1C5BC8174();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198E90);
  v43 = a1 + *(result + 36);
  *v43 = v13;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_1C5B5B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_1C5BC89D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0);
  v10 = swift_allocObject();
  v31 = xmmword_1C5BD4D40;
  *(v10 + 16) = xmmword_1C5BD4D40;
  *(v10 + 32) = sub_1C5BCA484();
  *(v10 + 40) = sub_1C5BCA474();
  MEMORY[0x1C694EBE0](v10);
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  v30 = *(type metadata accessor for MaskView(0) + 20);
  sub_1C59EFDDC(v9);
  v11 = *MEMORY[0x1E697E7D0];
  v28 = *(v4 + 104);
  v28(v6, v11, v3);
  sub_1C5BC89C4();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v48 = v54;
  v49 = v55;
  *&v50 = v56;
  v33 = sub_1C5BCA474();
  v13 = swift_allocObject();
  *(v13 + 16) = v31;
  *(v13 + 32) = sub_1C5BCA474();
  *(v13 + 40) = sub_1C5BCA484();
  MEMORY[0x1C694EBE0](v13);
  sub_1C5BCABE4();
  sub_1C5BCABF4();
  sub_1C5BC88B4();
  sub_1C59EFDDC(v9);
  v28(v6, v11, v3);
  sub_1C5BC89C4();
  v12(v6, v3);
  v12(v9, v3);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v42 = v57;
  v43 = v58;
  *&v44 = v59;
  v14 = v51;
  v34[2] = v50;
  v34[3] = v51;
  v15 = v52;
  v34[4] = v52;
  v16 = v48;
  v17 = v49;
  v34[0] = v48;
  v34[1] = v49;
  v36[0] = v57;
  v36[1] = v58;
  v19 = v44;
  v18 = v45;
  v36[2] = v44;
  v36[3] = v45;
  v20 = v46;
  v36[4] = v46;
  *(a2 + 32) = v50;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  v21 = v53;
  v35 = v53;
  v22 = v47;
  v37 = v47;
  *a2 = v16;
  *(a2 + 16) = v17;
  v23 = v33;
  *(a2 + 80) = v21;
  *(a2 + 88) = v23;
  *(a2 + 176) = v22;
  *(a2 + 144) = v18;
  *(a2 + 160) = v20;
  v25 = v42;
  v24 = v43;
  *(a2 + 112) = v43;
  *(a2 + 128) = v19;
  *(a2 + 96) = v25;
  v38[2] = v19;
  v38[3] = v18;
  v38[4] = v20;
  v39 = v22;
  v38[0] = v25;
  v38[1] = v24;
  sub_1C59400B0(v34, v40, &qword_1EC1921E0);

  sub_1C59400B0(v36, v40, &qword_1EC1921E0);
  sub_1C5924EF4(v38, &qword_1EC1921E0);

  v40[2] = v50;
  v40[3] = v51;
  v40[4] = v52;
  v41 = v53;
  v40[0] = v48;
  v40[1] = v49;
  return sub_1C5924EF4(v40, &qword_1EC1921E0);
}

uint64_t sub_1C5B5BA04@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDA463A0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1C59318C8(&unk_1EDA463A8, v2);
}

uint64_t sub_1C5B5BA74@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  v6 = sub_1C5A1BA50(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1C5A1BC74(v4);
  v15 = v14;
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v3;
}

uint64_t Marquee.appending(badges:foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192978);
  v3 = sub_1C5BC8AB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  Marquee.appending(badges:foregroundColor:badgeFont:)(a1);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1C5924F54(&qword_1EC192970, &qword_1EC192978);
  v15[2] = WitnessTable;
  v15[3] = v11;
  v12 = swift_getWitnessTable();
  sub_1C593EDC0(v6, v3, v12);
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1C593EDC0(v9, v3, v12);
  return (v13)(v9, v3);
}

uint64_t sub_1C5B5BD18(uint64_t a1)
{
  swift_getKeyPath();
  if (a1)
  {
  }

  swift_getWitnessTable();
  sub_1C5BC9DF4();

  return sub_1C5B5CD34(a1);
}

uint64_t sub_1C5B5BE10(uint64_t a1)
{
  if (*(a1 + 16))
  {

    v2 = sub_1C5B5CC2C(a1);
  }

  else
  {
    v2 = 0;
  }

  sub_1C5B5BD18(v2);

  return sub_1C5B5CD34(v2);
}

uint64_t sub_1C5B5BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B5CE44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B5BF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B5FB60();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B5BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5924F54(&qword_1EDA45EA0, &qword_1EC198CB8);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.marqueeBoundsRestrictedEdges.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C5B5CD80();
  sub_1C5BC8F44();
  return sub_1C5B5C0D0;
}

uint64_t sub_1C5B5C0D0(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C5BC8F54();
  }

  sub_1C5BC8F54();
}

uint64_t (*EnvironmentValues.marqueeCanExtendContentBeyondFrame.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C5B5CDD4();
  sub_1C5BC8F44();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C5B5C1CC;
}

void *sub_1C5B5C204(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = *a1;
  if (v5 >= *a1)
  {
    if ((*&v5 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v4 = v5;
    }

    if ((~*&v5 & 0x7FF0000000000000) != 0)
    {
      v4 = v5;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t MarqueeAnimationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B5C2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D10);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D18) + 36));
  *v9 = sub_1C5B5E874;
  v9[1] = v7;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D20);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v13;
  return result;
}

uint64_t View.coordinatedMarquees()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  View.mcui.getter(a1, &v9 - v6);
  MCUINamespace<A>.coordinatedMarquees()(v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t View.marqueeFeathering(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for MCUINamespace();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  View.mcui.getter(a3, &v11 - v8);
  MCUINamespace<A>.marqueeFeathering(_:)(a1, a2 & 1, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t View.marqueeFeathering(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MCUINamespace();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  View.mcui.getter(a4, &v15 - v12);
  MCUINamespace<A>.marqueeFeathering(_:_:)(a1 & 1, a2, a3 & 1, v10, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t View.marqueeAnimationDirection(_:)(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v9[-v6]);
  v9[15] = a1;
  MCUINamespace<A>.marqueeAnimationDirection(_:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1C5B5C850(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C5B5F07C(a4, a5 & 1);
    v10 = sub_1C5B5ED00(v9, a2, a3);

    sub_1C5B5E4E8(a4, a5 & 1);
    sub_1C5B5E4E8(a4, a5 & 1);
    return v10;
  }

  return result;
}

uint64_t sub_1C5B5C90C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868);
  result = sub_1C5BCBC74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    sub_1C5BCBF54();
    sub_1C5BC8884();
    sub_1C5BCBF74();
    result = sub_1C5BCBF94();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C5B5CB30(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  v6 = sub_1C5BCB514();
  a2 = v4;
  v7 = v6;
  a1 = v5;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  return sub_1C5BCBDE4();
}

uint64_t sub_1C5B5CC2C(uint64_t result)
{
  if (!*(result + 16))
  {
    v1 = result;
    if (qword_1EDA46948 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA46950);
    v3 = sub_1C5BC7D44();
    v4 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C5922000, v3, v4, "Initialized BadgeConfiguration.Display with an empty badge list; this configuration is unsupported.", v5, 2u);
      MEMORY[0x1C69510F0](v5, -1, -1);
    }

    return v1;
  }

  return result;
}

uint64_t sub_1C5B5CD34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C5B5CD80()
{
  result = qword_1EDA46350;
  if (!qword_1EDA46350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46350);
  }

  return result;
}

unint64_t sub_1C5B5CDD4()
{
  result = qword_1EDA46348;
  if (!qword_1EDA46348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46348);
  }

  return result;
}

unint64_t sub_1C5B5CE44()
{
  result = qword_1EDA47CE0;
  if (!qword_1EDA47CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CE0);
  }

  return result;
}

uint64_t sub_1C5B5CEA8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1C5B5D00C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 56) = 0;
          result = 0.0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1C5B5D214()
{
  result = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MediaCoreB019CoordinatedMarquees33_7D7F54989E0BD2C2C05089BF2F1B885FLLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1C5BC8AB4();
  a3();
  return swift_getWitnessTable();
}

void sub_1C5B5D388()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5B5D43C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
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

double sub_1C5B5D580(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFE8)
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
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 56) = 0;
          result = 0.0;
          *(v20 + 40) = 0u;
          *(v20 + 24) = 0u;
          *(v20 + 8) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 56) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

uint64_t sub_1C5B5D778()
{
  result = sub_1C5BC89D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5B5D83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B5D884(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1C5B5D8E4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
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

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
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

LABEL_26:
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

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

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

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  v25 = v24 - 1;
  if (v25 < 0)
  {
    v25 = -1;
  }

  return (v25 + 1);
}

unsigned int *sub_1C5B5DAC0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
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

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v26 = a2 - 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        v26[1] = a2;
      }
    }
  }

  return result;
}

uint64_t sub_1C5B5DD30(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1C5B5DE94(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 56) = 0;
          result = 0.0;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1C5B5E09C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1C5B5E1E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 16) = 0;
          *(v18 + 24) = 0;
          *(v18 + 32) = 0;
          *v18 = a2 - 255;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 32) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 33);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1C5B5E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1C5B5E498(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1C5B5E498(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C5B5E4E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1C5B5E52C()
{
  result = qword_1EDA47AB0[0];
  if (!qword_1EDA47AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47AB0);
  }

  return result;
}

unint64_t sub_1C5B5E5B0()
{
  result = qword_1EDA4B250;
  if (!qword_1EDA4B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B250);
  }

  return result;
}

unint64_t sub_1C5B5E604()
{
  result = qword_1EDA45F38;
  if (!qword_1EDA45F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD8);
    sub_1C5924F54(&qword_1EDA45F40, &qword_1EC198CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F38);
  }

  return result;
}

unint64_t sub_1C5B5E6B4()
{
  result = qword_1EDA464A8;
  if (!qword_1EDA464A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CE0);
    sub_1C59AEE44();
    sub_1C5B5F300(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464A8);
  }

  return result;
}

unint64_t sub_1C5B5E770()
{
  result = qword_1EDA46398;
  if (!qword_1EDA46398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46398);
  }

  return result;
}

unint64_t sub_1C5B5E7C4()
{
  result = qword_1EDA45F50;
  if (!qword_1EDA45F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8);
    sub_1C5924F54(&qword_1EDA45F58, &qword_1EC198D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F50);
  }

  return result;
}

unint64_t sub_1C5B5E8D0()
{
  result = qword_1EDA46358;
  if (!qword_1EDA46358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46358);
  }

  return result;
}

id sub_1C5B5E924(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40] & *v5;
  *&v5[*(v12 + 0x80)] = 0;
  v13 = *((*v11 & *v5) + 0x78);
  v14 = *(v12 + 96);
  v26 = *(v12 + 80);
  v27 = v14;
  v15 = type metadata accessor for Marquee.MarqueeAnimationView.MarqueeUIView.Configuration();
  (*(*(v15 - 8) + 16))(&v5[v13], a1, v15);
  v16 = &v5[*((*v11 & *v5) + 0x70)];
  *v16 = a2;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  v25.receiver = v5;
  v25.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C5BCFF00;
  v22 = sub_1C5BC7DE4();
  v23 = MEMORY[0x1E69DC0A0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();

  swift_unknownObjectRelease();

  return v19;
}

void sub_1C5B5EB9C(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_1C5B59554(v4);
}

uint64_t sub_1C5B5EC08(uint64_t a1, char a2)
{
  sub_1C5B57FDC();
  if (a2)
  {
    return 0x4024000000000000;
  }

  else
  {
    return a1;
  }
}

void sub_1C5B5EC5C()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80)) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t sub_1C5B5ED00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = sub_1C5BC8884();
    result = sub_1C5BC8884();
    if (v15 != result)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1C5B5C90C(v18, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1C5B5C90C(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B5EE3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  v20 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  sub_1C5B5F07C(a2, a3 & 1);
  v14 = sub_1C5B5F07C(a2, a3 & 1);
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();
      v18 = a3 & 1;
      sub_1C5B5F07C(a2, v18);
      v22 = v18;
      v21 = v20 & 1;
      v15 = sub_1C5B5C850(v17, v12, a1, a2, v18);
      MEMORY[0x1C69510F0](v17, -1, -1);
      sub_1C5B5E4E8(a2, v18);
      sub_1C5B5E4E8(a2, v18);
      return v15;
    }

    v6 = v5;
  }

  MEMORY[0x1EEE9AC00](v14);
  bzero(&v19[-((v13 + 15) & 0x3FFFFFFFFFFFFFF0)], v13);
  sub_1C5B5F07C(a2, a3 & 1);
  v15 = sub_1C5B5ED00(&v19[-((v13 + 15) & 0x3FFFFFFFFFFFFFF0)], v12, a1);
  sub_1C5B5E4E8(a2, a3 & 1);
  if (v6)
  {
    swift_willThrow();
  }

  sub_1C5B5E4E8(a2, a3 & 1);
  sub_1C5B5E4E8(a2, a3 & 1);
  return v15;
}

uint64_t sub_1C5B5F07C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1C5B5F0B8()
{
  result = qword_1EDA46368;
  if (!qword_1EDA46368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46368);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for ShownWhenAppeared() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v5 - 8) + 8))(v3 + v2[15]);

  return swift_deallocObject();
}

uint64_t sub_1C5B5F300(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5B5F3CC()
{
  result = qword_1EDA46388;
  if (!qword_1EDA46388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46388);
  }

  return result;
}

uint64_t sub_1C5B5F48C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1C5B5F4D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1C5B5F58C()
{
  sub_1C5B5F640();
  if (v0 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8);
    if (v1 <= 0x3F)
    {
      sub_1C5B5F6D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B5F640()
{
  if (!qword_1EDA46708)
  {
    type metadata accessor for BackdropMaskModifier.BackdropGroup();
    sub_1C5B5F300(&qword_1EDA49230, type metadata accessor for BackdropMaskModifier.BackdropGroup);
    v0 = sub_1C5BC83B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46708);
    }
  }
}

void sub_1C5B5F6D4()
{
  if (!qword_1EDA46758)
  {
    sub_1C5BC89D4();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46758);
    }
  }
}

unint64_t sub_1C5B5F72C()
{
  result = qword_1EDA464C8;
  if (!qword_1EDA464C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D20);
    sub_1C5B5F7E4();
    sub_1C5924F54(&qword_1EDA46060, &qword_1EC198758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464C8);
  }

  return result;
}

unint64_t sub_1C5B5F7E4()
{
  result = qword_1EDA465E8;
  if (!qword_1EDA465E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D18);
    sub_1C5924F54(&qword_1EDA46258, &qword_1EC198D10);
    sub_1C5924F54(&qword_1EDA461B0, &qword_1EC198D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465E8);
  }

  return result;
}

unint64_t sub_1C5B5F8CC()
{
  result = qword_1EC198D40;
  if (!qword_1EC198D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198D40);
  }

  return result;
}

unint64_t sub_1C5B5F994()
{
  result = qword_1EDA46640;
  if (!qword_1EDA46640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D58);
    sub_1C5924F54(&qword_1EDA462B0, &qword_1EC198D68);
    sub_1C5B5F300(qword_1EDA49188, type metadata accessor for BackdropMaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46640);
  }

  return result;
}

unint64_t sub_1C5B5FA7C()
{
  result = qword_1EDA46648;
  if (!qword_1EDA46648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D48);
    sub_1C5924F54(&qword_1EDA462B0, &qword_1EC198D68);
    sub_1C5924F54(&qword_1EDA466E0, &qword_1EC198D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46648);
  }

  return result;
}

unint64_t sub_1C5B5FB60()
{
  result = qword_1EDA45ED0;
  if (!qword_1EDA45ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CC8);
    sub_1C59AEC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45ED0);
  }

  return result;
}

unint64_t sub_1C5B5FBE4()
{
  result = qword_1EC198DC0;
  if (!qword_1EC198DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DB8);
    sub_1C5B5FC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DC0);
  }

  return result;
}

unint64_t sub_1C5B5FC70()
{
  result = qword_1EC198DC8;
  if (!qword_1EC198DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DB0);
    sub_1C5B5FD28();
    sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DC8);
  }

  return result;
}

unint64_t sub_1C5B5FD28()
{
  result = qword_1EC198DD0;
  if (!qword_1EC198DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DD8);
    sub_1C5A49984();
    sub_1C5924F54(&qword_1EC198DE0, &qword_1EC198DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DD0);
  }

  return result;
}

void sub_1C5B5FE28()
{
  sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8);
  if (v0 <= 0x3F)
  {
    sub_1C5B5F6D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5B5FED4()
{
  result = qword_1EDA462F0;
  if (!qword_1EDA462F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DF0);
    sub_1C5B5F994();
    sub_1C5B5FA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA462F0);
  }

  return result;
}

unint64_t sub_1C5B5FF60()
{
  result = qword_1EC198DF8;
  if (!qword_1EC198DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E00);
    sub_1C5B60018();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198DF8);
  }

  return result;
}

unint64_t sub_1C5B60018()
{
  result = qword_1EC198E08;
  if (!qword_1EC198E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E08);
  }

  return result;
}

unint64_t sub_1C5B6006C()
{
  result = qword_1EC198E10;
  if (!qword_1EC198E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198DA8);
    sub_1C5B60124();
    sub_1C5924F54(&qword_1EC198E50, &qword_1EC198DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E10);
  }

  return result;
}

unint64_t sub_1C5B60124()
{
  result = qword_1EC198E18;
  if (!qword_1EC198E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D98);
    sub_1C5B601DC();
    sub_1C5924F54(&qword_1EC198E50, &qword_1EC198DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E18);
  }

  return result;
}

unint64_t sub_1C5B601DC()
{
  result = qword_1EC198E20;
  if (!qword_1EC198E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D88);
    sub_1C5B60294();
    sub_1C5924F54(&qword_1EC198E48, &qword_1EC198D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E20);
  }

  return result;
}

unint64_t sub_1C5B60294()
{
  result = qword_1EC198E28;
  if (!qword_1EC198E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D80);
    sub_1C5924F54(&qword_1EC198E30, &qword_1EC198D78);
    sub_1C5924F54(&qword_1EC198E38, &qword_1EC198E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E28);
  }

  return result;
}

unint64_t sub_1C5B603C0()
{
  result = qword_1EC198E68;
  if (!qword_1EC198E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E68);
  }

  return result;
}

unint64_t sub_1C5B60418()
{
  result = qword_1EC198E70;
  if (!qword_1EC198E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E70);
  }

  return result;
}

unint64_t sub_1C5B60498()
{
  result = qword_1EC198E98;
  if (!qword_1EC198E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198E98);
  }

  return result;
}

unint64_t sub_1C5B604EC()
{
  result = qword_1EDA46458;
  if (!qword_1EDA46458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E90);
    sub_1C5B60578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46458);
  }

  return result;
}

unint64_t sub_1C5B60578()
{
  result = qword_1EDA46470;
  if (!qword_1EDA46470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E88);
    sub_1C5B60604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46470);
  }

  return result;
}

unint64_t sub_1C5B60604()
{
  result = qword_1EDA46500;
  if (!qword_1EDA46500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198E80);
    sub_1C5924F54(&qword_1EDA45FB8, &qword_1EC198EA0);
    sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46500);
  }

  return result;
}

uint64_t (*MCUINamespace<A>.miniPlayerWidth.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C594CF14();
  sub_1C5BC8F44();
  return sub_1C5B60790;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.hash(into:)()
{
  sub_1C5BCAF04();
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B609CC()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B60A74()
{
  sub_1C5BCAF04();
}

uint64_t sub_1C5B60B08()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B60BAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5B60D68();
  *a1 = result;
  return result;
}

void sub_1C5B60BDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v5 = 0x7274736E6F636E75;
    v4 = 0xED000064656E6961;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.WidthConstraint.description.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7274736E6F636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1C5B60CA0()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7274736E6F636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

unint64_t sub_1C5B60D14()
{
  result = qword_1EC198EB0;
  if (!qword_1EC198EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198EB0);
  }

  return result;
}

uint64_t sub_1C5B60D68()
{
  v0 = sub_1C5BCBCB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C5B60DB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1C5B60E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t SlideCarousel.init(speed:isAnimating:items:itemView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  sub_1C5BCA684();
  *(a7 + 56) = v17;
  *(a7 + 64) = v18;
  sub_1C5BCA684();
  *(a7 + 72) = v17;
  *(a7 + 80) = v18;
  sub_1C5BCA684();
  *(a7 + 88) = v17;
  *(a7 + 96) = v18;
  sub_1C5BCA684();
  *(a7 + 104) = v17;
  *(a7 + 112) = v18;
  sub_1C5BCA684();
  *(a7 + 120) = v17;
  *(a7 + 128) = v18;
  sub_1C5BCA684();
  *(a7 + 136) = v17;
  *(a7 + 144) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EE8);
  swift_allocObject();
  sub_1C5BC7F44();
  sub_1C5BCA684();
  *(a7 + 152) = v17;
  *(a7 + 160) = v18;
  sub_1C5BCA684();
  *(a7 + 168) = v17;
  *(a7 + 176) = v18;
  result = sub_1C5BCA684();
  *(a7 + 184) = v17;
  *(a7 + 192) = v18;
  *a7 = a8;
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1C5B610A0()
{
  sub_1C5BCAAE4();
  sub_1C5BC87F4();
}

uint64_t sub_1C5B61158(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 21);
  v7 = *(a1 + 22);
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v8 = type metadata accessor for SlideCarousel();
  *&v27 = v6;
  *(&v27 + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v9 = v17;
  v24 = a1[6];
  v25 = a1[7];
  v26 = *(a1 + 16);
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v18 = *a1;
  v19 = a1[1];
  v10 = *(a1 + 17);
  v11 = *(a1 + 18);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  v16 = *(a1 + 184);
  v12 = *(v8 - 8);
  (*(v12 + 16))(&v27, a1, v8);
  *&v27 = v10;
  *(&v27 + 1) = v11;
  v41 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v27 = v18;
  v28 = v19;
  v36 = v10;
  v37 = v11;
  v38 = v14;
  v39 = v15;
  v40 = v16;
  return (*(v12 + 8))(&v27, v8);
}

uint64_t sub_1C5B613B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[7];
  v57 = a1[6];
  v58 = v6;
  v59 = *(a1 + 16);
  v7 = a1[3];
  v53 = a1[2];
  v54 = v7;
  v8 = a1[5];
  v55 = a1[4];
  v56 = v8;
  v9 = a1[1];
  v51 = *a1;
  v52 = v9;
  v10 = *(a1 + 17);
  v11 = *(a1 + 18);
  v12 = *(a1 + 168);
  v48 = *(a1 + 152);
  v49 = v12;
  v50 = *(a1 + 184);
  *&v35 = a2;
  *(&v35 + 1) = a3;
  *&v36 = a4;
  *(&v36 + 1) = a5;
  v13 = type metadata accessor for SlideCarousel();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v35, a1, v13);
  *&v35 = v10;
  *(&v35 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v15 = *(a1 + 8);
  *&v35 = *(a1 + 7);
  *(&v35 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v16 = *(a1 + 24);
  LOBYTE(v35) = *(a1 + 184) & 1;
  *(&v35 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v17 = LOBYTE(v28[0]);
  v18 = a1[11];
  v45 = a1[10];
  v46 = v18;
  v47 = *(a1 + 24);
  v19 = a1[7];
  v41 = a1[6];
  v42 = v19;
  v20 = a1[9];
  v43 = a1[8];
  v44 = v20;
  v21 = a1[3];
  v37 = a1[2];
  v38 = v21;
  v22 = a1[5];
  v39 = a1[4];
  v40 = v22;
  v23 = a1[1];
  v35 = *a1;
  v36 = v23;
  v24 = sub_1C59B90AC();
  v25 = 0.0;
  if ((v24 & 1) == 0)
  {
    v25 = *v28;
  }

  v26 = -*v28;
  if ((v24 & 1) == 0)
  {
    v26 = *v28;
  }

  *&v28[0] = v10;
  if (v17)
  {
    v25 = v26;
  }

  v60 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v28[6] = v57;
  v28[7] = v58;
  v29 = v59;
  v28[2] = v53;
  v28[3] = v54;
  v28[4] = v55;
  v28[5] = v56;
  v28[0] = v51;
  v28[1] = v52;
  v30 = v10;
  v31 = v11;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  return (*(v14 + 8))(v28, v13);
}

uint64_t sub_1C5B61630(char a1, uint64_t a2)
{
  v5 = sub_1C5BCAC14();
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCAC44();
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C5BCAC64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v18 = v2[11];
  v103 = v2[10];
  v104 = v18;
  v105 = *(v2 + 24);
  v19 = v2[7];
  v100 = v2[6];
  *v101 = v19;
  v20 = v2[9];
  *&v101[16] = v2[8];
  v102 = v20;
  v21 = v2[3];
  v96 = v2[2];
  v97 = v21;
  v22 = v2[5];
  v98 = v2[4];
  v99 = v22;
  v23 = v2[1];
  v94 = *v2;
  v95 = v23;
  if ((a1 & 1) == 0)
  {
    v30 = v2[9];
    v31 = v2[11];
    v91 = v2[10];
    v92 = v31;
    v32 = v2[5];
    v33 = v2[7];
    v87 = v2[6];
    v88 = v33;
    v34 = v2[7];
    v35 = v2[9];
    v89 = v2[8];
    v90 = v35;
    v36 = v2[1];
    v37 = v2[3];
    v83 = v2[2];
    v84 = v37;
    v38 = v2[3];
    v39 = v2[5];
    v85 = v2[4];
    v86 = v39;
    v40 = v2[1];
    v81 = *v2;
    v82 = v40;
    v41 = v2[11];
    v78 = v91;
    v79 = v41;
    v74 = v87;
    v75 = v34;
    v76 = v89;
    v77 = v30;
    v70 = v83;
    v71 = v38;
    v72 = v85;
    v73 = v32;
    v93 = *(v2 + 24);
    v80 = *(v2 + 24);
    v68 = v81;
    v69 = v36;
    goto LABEL_5;
  }

  v64 = v15;
  v24 = v2[11];
  v91 = v2[10];
  v92 = v24;
  v93 = *(v2 + 24);
  v25 = v2[7];
  v87 = v2[6];
  v88 = v25;
  v26 = v2[9];
  v89 = v2[8];
  v90 = v26;
  v27 = v2[3];
  v83 = v2[2];
  v84 = v27;
  v28 = v2[5];
  v85 = v2[4];
  v86 = v28;
  v29 = v2[1];
  v81 = *v2;
  v82 = v29;
  if (sub_1C5B61CD8())
  {
    v91 = v103;
    v92 = v104;
    v87 = v100;
    v88 = *v101;
    v89 = *&v101[16];
    v90 = v102;
    v83 = v96;
    v84 = v97;
    v85 = v98;
    v86 = v99;
    v81 = v94;
    v82 = v95;
    v78 = v103;
    v79 = v104;
    v74 = v100;
    v75 = *v101;
    v76 = *&v101[16];
    v77 = v102;
    v70 = v96;
    v71 = v97;
    v72 = v98;
    v73 = v99;
    v93 = v105;
    v80 = v105;
    v68 = v94;
    v69 = v95;
LABEL_5:
    sub_1C5B61E0C();
    sub_1C5B61318();
  }

  v91 = v103;
  v92 = v104;
  v87 = v100;
  v88 = *v101;
  v89 = *&v101[16];
  v90 = v102;
  v83 = v96;
  v84 = v97;
  v85 = v98;
  v86 = v99;
  v81 = v94;
  v82 = v95;
  v78 = v103;
  v79 = v104;
  v74 = v100;
  v75 = *v101;
  v76 = *&v101[16];
  v77 = v102;
  v70 = v96;
  v71 = v97;
  v72 = v98;
  v73 = v99;
  v93 = v105;
  v80 = v105;
  v68 = v94;
  v69 = v95;
  sub_1C5B61EC0();
  sub_1C5B61318();

  sub_1C5929CA0();
  v63 = sub_1C5BCB5A4();
  sub_1C5BCAC54();
  v81 = *&v101[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  v60 = v17;
  sub_1C5BCAC84();
  v43 = *(v11 + 8);
  v61 = v11 + 8;
  v62 = v43;
  v43(v13, v64);
  v44 = swift_allocObject();
  v45 = *(a2 + 32);
  *(v44 + 16) = *(a2 + 16);
  *(v44 + 32) = v45;
  v46 = v104;
  *(v44 + 208) = v103;
  *(v44 + 224) = v46;
  *(v44 + 240) = v105;
  v47 = *v101;
  *(v44 + 144) = v100;
  *(v44 + 160) = v47;
  v48 = v102;
  *(v44 + 176) = *&v101[16];
  *(v44 + 192) = v48;
  v49 = v97;
  *(v44 + 80) = v96;
  *(v44 + 96) = v49;
  v50 = v99;
  *(v44 + 112) = v98;
  *(v44 + 128) = v50;
  v51 = v95;
  *(v44 + 48) = v94;
  *(v44 + 64) = v51;
  *&v70 = sub_1C5B666A0;
  *(&v70 + 1) = v44;
  *&v68 = MEMORY[0x1E69E9820];
  *(&v68 + 1) = 1107296256;
  *&v69 = sub_1C596D09C;
  *(&v69 + 1) = &block_descriptor_41;
  v59 = _Block_copy(&v68);
  (*(*(a2 - 8) + 16))(&v81, &v94, a2);

  v52 = v65;
  sub_1C5BCAC34();
  *&v81 = MEMORY[0x1E69E7CC0];
  sub_1C5B66460(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  v53 = v66;
  v54 = v67;
  v58 = v8;
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  v56 = v59;
  v55 = v60;
  v57 = v63;
  MEMORY[0x1C694F7C0](v60, v52, v7, v59);
  _Block_release(v56);

  (*(v54 + 8))(v7, v5);
  (*(v53 + 8))(v52, v58);
  return v62(v55, v64);
}

BOOL sub_1C5B61CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  if (fabs(v1) <= fabs(v1) * 0.07)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  return fabs(v1) * 0.93 <= fabs(v1);
}

uint64_t sub_1C5B61E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  sub_1C5BCAA84();
  sub_1C5BCAAC4();

  v0 = sub_1C5BCAA94();

  return v0;
}

uint64_t sub_1C5B61EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  sub_1C5BCAA84();
  v0 = sub_1C5BCAAC4();

  return v0;
}

uint64_t sub_1C5B61F58()
{
  type metadata accessor for SlideCarousel();
  sub_1C5B61E0C();
  sub_1C5B61318();
}

uint64_t sub_1C5B62030()
{
  sub_1C5BCAAE4();
  sub_1C5B61318();
}

uint64_t SlideCarousel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF0);
  *&v66 = *(a1 + 24);
  v4 = sub_1C5BCB144();
  *&v67 = *(a1 + 16);
  v5 = a1;
  v68 = a1;
  v6 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  *(&v65 + 1) = *(v5 + 40);
  *&v94 = v4;
  *(&v94 + 1) = v66;
  *&v95 = v6;
  *(&v95 + 1) = WitnessTable;
  *&v96 = *(&v65 + 1);
  sub_1C5BCA8C4();
  *&v65 = *(v5 + 32);
  v93 = v65;
  v92 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA904();
  swift_getWitnessTable();
  sub_1C5BC9A84();
  sub_1C5BC8AB4();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8);
  sub_1C5BC8AB4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F00);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697E5D8];
  v8 = MEMORY[0x1E697E858];
  v9 = swift_getWitnessTable();
  v64 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8);
  v88 = v9;
  v89 = v64;
  v62 = v8;
  v10 = swift_getWitnessTable();
  v63 = sub_1C5924F54(&qword_1EC198F10, &qword_1EC198F00);
  v86 = v10;
  v87 = v63;
  v84 = swift_getWitnessTable();
  v85 = sub_1C5B62B8C();
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC198F20, &qword_1EC198EF0);
  swift_getOpaqueTypeConformance2();
  v11 = sub_1C5BC8BB4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F28);
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(qword_1EC198F30, &qword_1EC198F28);
  swift_getOpaqueTypeMetadata2();
  *&v94 = v11;
  *(&v94 + 1) = v12;
  *&v95 = v13;
  *(&v95 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1C5BC81E4();
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v56 = sub_1C5BC8AB4();
  v18 = sub_1C5BC8AB4();
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = sub_1C5BC8AB4();
  v60 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v53 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  v23 = sub_1C5BC8AB4();
  v61 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v58 = &v53 - v26;
  v27 = v2[11];
  v104 = v2[10];
  v105 = v27;
  v106 = *(v2 + 24);
  v28 = v2[7];
  v100 = v2[6];
  v101 = v28;
  v29 = v2[9];
  v102 = v2[8];
  v103 = v29;
  v30 = v2[3];
  v96 = v2[2];
  v97 = v30;
  v31 = v2[5];
  v98 = v2[4];
  v99 = v31;
  v32 = v2[1];
  v94 = *v2;
  v95 = v32;
  sub_1C5BC9854();
  *&v33 = v67;
  *(&v33 + 1) = v66;
  v66 = v65;
  v67 = v33;
  v70 = v33;
  v71 = v65;
  v72 = &v94;
  sub_1C5BC81F4();
  v34 = swift_allocObject();
  v35 = v66;
  *(v34 + 16) = v67;
  *(v34 + 32) = v35;
  v36 = v105;
  *(v34 + 208) = v104;
  *(v34 + 224) = v36;
  *(v34 + 240) = v106;
  v37 = v101;
  *(v34 + 144) = v100;
  *(v34 + 160) = v37;
  v38 = v103;
  *(v34 + 176) = v102;
  *(v34 + 192) = v38;
  v39 = v97;
  *(v34 + 80) = v96;
  *(v34 + 96) = v39;
  v40 = v99;
  *(v34 + 112) = v98;
  *(v34 + 128) = v40;
  v41 = v95;
  v42 = v68;
  *(v34 + 48) = v94;
  *(v34 + 64) = v41;
  (*(*(v42 - 8) + 16))(v81, &v94);
  v43 = swift_getWitnessTable();
  sub_1C5B64944(sub_1C5B65BE0, v34, v43, v20);

  (*(v57 + 8))(v17, v15);
  sub_1C5BCAA54();
  v79 = v43;
  v80 = v64;
  v77 = swift_getWitnessTable();
  v78 = v63;
  v52 = swift_getWitnessTable();
  v44 = v54;
  sub_1C5BCA244();
  (*(v59 + 8))(v20, v18);
  swift_getKeyPath();
  v81[0] = 0;
  v75 = v52;
  v76 = MEMORY[0x1E697EBF8];
  v45 = swift_getWitnessTable();
  v46 = v55;
  sub_1C5BC9DF4();

  (*(v60 + 8))(v44, v21);
  v47 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v73 = v45;
  v74 = v47;
  v48 = swift_getWitnessTable();
  v49 = v58;
  sub_1C593EDC0(v46, v23, v48);
  v50 = *(v61 + 8);
  v50(v46, v23);
  sub_1C593EDC0(v49, v23, v48);
  return (v50)(v49, v23);
}

unint64_t sub_1C5B62B8C()
{
  result = qword_1EC198F18;
  if (!qword_1EC198F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198F18);
  }

  return result;
}

uint64_t sub_1C5B62BE0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a4;
  v204 = a5;
  v205 = a2;
  v193 = a6;
  v10 = sub_1C5BC8244();
  v191 = *(v10 - 8);
  v192 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v189 = v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198F28);
  v190 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v188 = v154 - v12;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EF0);
  v187 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v186 = v154 - v13;
  v194 = a3;
  v14 = sub_1C5BCB144();
  v15 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  *&v213 = v14;
  *(&v213 + 1) = a3;
  *&v214 = v15;
  *(&v214 + 1) = WitnessTable;
  *&v215 = a5;
  sub_1C5BCA8C4();
  v237 = a4;
  v236 = swift_getWitnessTable();
  swift_getWitnessTable();
  v154[2] = sub_1C5BCA904();
  v154[1] = swift_getWitnessTable();
  v17 = sub_1C5BC9A84();
  v201 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v154[0] = v154 - v18;
  v19 = sub_1C5BC8AB4();
  v159 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v158 = v154 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F00);
  v21 = sub_1C5BC8AB4();
  v162 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v161 = v154 - v22;
  v23 = sub_1C5BC8AB4();
  v166 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v165 = v154 - v24;
  v25 = sub_1C5BC8AB4();
  v172 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v195 = v154 - v26;
  v202 = v17;
  v200 = swift_getWitnessTable();
  v234 = v200;
  v235 = MEMORY[0x1E697E5D8];
  v160 = v19;
  v27 = swift_getWitnessTable();
  v28 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8);
  v155 = v27;
  v232 = v27;
  v233 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1C5924F54(&qword_1EC198F10, &qword_1EC198F00);
  v230 = v29;
  v231 = v30;
  v163 = v21;
  v31 = swift_getWitnessTable();
  v32 = sub_1C5B62B8C();
  v156 = v31;
  v228 = v31;
  v229 = v32;
  v167 = v23;
  v157 = swift_getWitnessTable();
  v226 = v157;
  v227 = MEMORY[0x1E69805D0];
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E69E6370];
  *&v213 = v25;
  *(&v213 + 1) = MEMORY[0x1E69E6370];
  v35 = MEMORY[0x1E69E6388];
  *&v214 = v33;
  *(&v214 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v170 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v169 = v154 - v37;
  v173 = v25;
  *&v213 = v25;
  *(&v213 + 1) = v34;
  v164 = v33;
  *&v214 = v33;
  *(&v214 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v213 = OpaqueTypeMetadata2;
  *(&v213 + 1) = v34;
  *&v214 = OpaqueTypeConformance2;
  *(&v214 + 1) = v35;
  v39 = swift_getOpaqueTypeMetadata2();
  v176 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v196 = v154 - v40;
  v41 = sub_1C5924F54(&qword_1EC198F20, &qword_1EC198EF0);
  v171 = OpaqueTypeMetadata2;
  *&v213 = OpaqueTypeMetadata2;
  *(&v213 + 1) = v34;
  v168 = OpaqueTypeConformance2;
  *&v214 = OpaqueTypeConformance2;
  *(&v214 + 1) = v35;
  v42 = swift_getOpaqueTypeConformance2();
  *&v213 = v198;
  v177 = v39;
  *(&v213 + 1) = v39;
  v174 = v42;
  v175 = v41;
  *&v214 = v41;
  *(&v214 + 1) = v42;
  v43 = sub_1C5BC8BB4();
  v184 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v197 = v154 - v44;
  v45 = swift_getWitnessTable();
  v46 = sub_1C5924F54(qword_1EC198F30, &qword_1EC198F28);
  v185 = v43;
  *&v213 = v43;
  *(&v213 + 1) = v199;
  v180 = v46;
  v181 = v45;
  *&v214 = v45;
  *(&v214 + 1) = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v182 = *(v47 - 8);
  v183 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v178 = v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v179 = v154 - v50;
  v51 = v194;
  v206 = v205;
  v207 = v194;
  v52 = v203;
  v208 = v203;
  v53 = v204;
  v209 = v204;
  v210 = a1;
  sub_1C5BCAA54();
  v54 = v154[0];
  sub_1C5BC9A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FE0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C5BD4D40;
  LOBYTE(v39) = sub_1C5BC98C4();
  *(v55 + 32) = v39;
  v56 = sub_1C5BC98E4();
  *(v55 + 33) = v56;
  sub_1C5BC98D4();
  sub_1C5BC98D4();
  if (sub_1C5BC98D4() != v39)
  {
    sub_1C5BC98D4();
  }

  sub_1C5BC98D4();
  if (sub_1C5BC98D4() != v56)
  {
    sub_1C5BC98D4();
  }

  v57 = v158;
  v58 = v202;
  sub_1C5BCA2F4();
  (*(v201 + 8))(v54, v58);
  v59 = swift_allocObject();
  v60 = v205;
  *(v59 + 16) = v205;
  *(v59 + 24) = v51;
  v61 = v51;
  *(v59 + 32) = v52;
  *(v59 + 40) = v53;
  v62 = v52;
  v63 = a1[11];
  *(v59 + 208) = a1[10];
  *(v59 + 224) = v63;
  *(v59 + 240) = *(a1 + 24);
  v64 = a1[7];
  *(v59 + 144) = a1[6];
  *(v59 + 160) = v64;
  v65 = a1[9];
  *(v59 + 176) = a1[8];
  *(v59 + 192) = v65;
  v66 = a1[3];
  *(v59 + 80) = a1[2];
  *(v59 + 96) = v66;
  v67 = a1[5];
  *(v59 + 112) = a1[4];
  *(v59 + 128) = v67;
  v68 = a1[1];
  *(v59 + 48) = *a1;
  *(v59 + 64) = v68;
  *&v213 = v60;
  v69 = v60;
  *(&v213 + 1) = v51;
  *&v214 = v62;
  *(&v214 + 1) = v53;
  v201 = type metadata accessor for SlideCarousel();
  v70 = *(v201 - 8);
  v200 = *(v70 + 16);
  v202 = v70 + 16;
  v200(&v213, a1, v201);
  v71 = v160;
  v72 = v161;
  sub_1C5B64944(sub_1C5B664C0, v59, v155, v161);

  (*(v159 + 8))(v57, v71);
  v73 = *(a1 + 18);
  *&v213 = *(a1 + 17);
  *(&v213 + 1) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v74 = v211[0];
  v75 = *(a1 + 20);
  *&v213 = *(a1 + 19);
  *(&v213 + 1) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FF8);
  sub_1C5BCA694();
  *&v213 = v74;
  *(&v213 + 1) = v211[0];
  v76 = v165;
  v77 = v163;
  MEMORY[0x1C694E550](&v213, v163, &type metadata for SlideEffect, v156);

  (*(v162 + 8))(v72, v77);
  v78 = swift_allocObject();
  *(v78 + 16) = v69;
  *(v78 + 24) = v61;
  v79 = v69;
  v80 = v203;
  v81 = v204;
  *(v78 + 32) = v203;
  *(v78 + 40) = v81;
  v82 = a1[11];
  *(v78 + 208) = a1[10];
  *(v78 + 224) = v82;
  *(v78 + 240) = *(a1 + 24);
  v83 = a1[7];
  *(v78 + 144) = a1[6];
  *(v78 + 160) = v83;
  v84 = a1[9];
  *(v78 + 176) = a1[8];
  *(v78 + 192) = v84;
  v85 = a1[3];
  *(v78 + 80) = a1[2];
  *(v78 + 96) = v85;
  v86 = a1[5];
  *(v78 + 112) = a1[4];
  *(v78 + 128) = v86;
  v87 = a1[1];
  *(v78 + 48) = *a1;
  *(v78 + 64) = v87;
  v200(&v213, a1, v201);
  v88 = v167;
  sub_1C5BCA324();

  (*(v166 + 8))(v76, v88);
  v89 = a1[11];
  v223 = a1[10];
  v224 = v89;
  v225 = *(a1 + 24);
  v90 = a1[7];
  v219 = a1[6];
  v220 = v90;
  v91 = a1[9];
  v221 = a1[8];
  v222 = v91;
  v92 = a1[3];
  v215 = a1[2];
  v216 = v92;
  v93 = a1[5];
  v217 = a1[4];
  v218 = v93;
  v94 = a1[1];
  v213 = *a1;
  v214 = v94;
  v212 = sub_1C59B90AC() & 1;
  v95 = swift_allocObject();
  *(v95 + 16) = v79;
  v96 = v194;
  *(v95 + 24) = v194;
  *(v95 + 32) = v80;
  *(v95 + 40) = v81;
  v97 = a1[11];
  *(v95 + 208) = a1[10];
  *(v95 + 224) = v97;
  *(v95 + 240) = *(a1 + 24);
  v98 = a1[7];
  *(v95 + 144) = a1[6];
  *(v95 + 160) = v98;
  v99 = a1[9];
  *(v95 + 176) = a1[8];
  *(v95 + 192) = v99;
  v100 = a1[3];
  *(v95 + 80) = a1[2];
  *(v95 + 96) = v100;
  v101 = a1[5];
  *(v95 + 112) = a1[4];
  *(v95 + 128) = v101;
  v102 = a1[1];
  *(v95 + 48) = *a1;
  *(v95 + 64) = v102;
  v103 = v201;
  v104 = v200;
  v200(v211, a1, v201);
  v105 = v169;
  v106 = v173;
  v107 = v195;
  sub_1C5BCA344();

  (*(v172 + 8))(v107, v106);
  v108 = *(a1 + 24);
  LOBYTE(v213) = *(a1 + 184) & 1;
  *(&v213 + 1) = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v109 = swift_allocObject();
  *(v109 + 16) = v205;
  *(v109 + 24) = v96;
  v110 = v204;
  *(v109 + 32) = v203;
  *(v109 + 40) = v110;
  v111 = a1[11];
  *(v109 + 208) = a1[10];
  *(v109 + 224) = v111;
  *(v109 + 240) = *(a1 + 24);
  v112 = a1[7];
  *(v109 + 144) = a1[6];
  *(v109 + 160) = v112;
  v113 = a1[9];
  *(v109 + 176) = a1[8];
  *(v109 + 192) = v113;
  v114 = a1[3];
  *(v109 + 80) = a1[2];
  *(v109 + 96) = v114;
  v115 = a1[5];
  *(v109 + 112) = a1[4];
  *(v109 + 128) = v115;
  v116 = a1[1];
  *(v109 + 48) = *a1;
  *(v109 + 64) = v116;
  v104(&v213, a1, v103);
  v117 = v171;
  sub_1C5BCA344();

  (*(v170 + 8))(v105, v117);
  v118 = *(a1 + 20);
  *&v213 = *(a1 + 19);
  *(&v213 + 1) = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FF8);
  sub_1C5BCA694();
  *&v213 = v211[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EE8);
  sub_1C5924F54(&qword_1EC198FE8, &qword_1EC198EE8);
  sub_1C59AEC40();
  v119 = v186;
  sub_1C5BC80F4();

  v120 = swift_allocObject();
  v121 = v204;
  *(v120 + 16) = v205;
  *(v120 + 24) = v96;
  v122 = v203;
  *(v120 + 32) = v203;
  *(v120 + 40) = v121;
  v123 = a1[11];
  *(v120 + 208) = a1[10];
  *(v120 + 224) = v123;
  *(v120 + 240) = *(a1 + 24);
  v124 = a1[7];
  *(v120 + 144) = a1[6];
  *(v120 + 160) = v124;
  v125 = a1[9];
  *(v120 + 176) = a1[8];
  *(v120 + 192) = v125;
  v126 = a1[3];
  *(v120 + 80) = a1[2];
  *(v120 + 96) = v126;
  v127 = a1[5];
  *(v120 + 112) = a1[4];
  *(v120 + 128) = v127;
  v128 = a1[1];
  *(v120 + 48) = *a1;
  *(v120 + 64) = v128;
  v200(&v213, a1, v201);
  v129 = v198;
  v130 = v177;
  v131 = v196;
  sub_1C5BCA3D4();

  (*(v187 + 8))(v119, v129);
  (*(v176 + 8))(v131, v130);
  v132 = v189;
  sub_1C5BC8234();
  v133 = swift_allocObject();
  *(v133 + 16) = v205;
  *(v133 + 24) = v96;
  *(v133 + 32) = v122;
  *(v133 + 40) = v121;
  v134 = a1[11];
  *(v133 + 208) = a1[10];
  *(v133 + 224) = v134;
  *(v133 + 240) = *(a1 + 24);
  v135 = a1[7];
  *(v133 + 144) = a1[6];
  *(v133 + 160) = v135;
  v136 = a1[9];
  *(v133 + 176) = a1[8];
  *(v133 + 192) = v136;
  v137 = a1[3];
  *(v133 + 80) = a1[2];
  *(v133 + 96) = v137;
  v138 = a1[5];
  *(v133 + 112) = a1[4];
  *(v133 + 128) = v138;
  v139 = a1[1];
  *(v133 + 48) = *a1;
  *(v133 + 64) = v139;
  v140 = swift_allocObject();
  *(v140 + 16) = sub_1C5B665A8;
  *(v140 + 24) = v133;
  v200(&v213, a1, v201);
  v141 = v188;
  v142 = v192;
  sub_1C5BCA8D4();

  (*(v191 + 8))(v132, v142);
  sub_1C5BC8334();
  v143 = v178;
  v144 = v185;
  v145 = v199;
  v147 = v180;
  v146 = v181;
  v148 = v197;
  sub_1C5BCA0B4();
  (*(v190 + 8))(v141, v145);
  (*(v184 + 8))(v148, v144);
  *&v213 = v144;
  *(&v213 + 1) = v145;
  *&v214 = v146;
  *(&v214 + 1) = v147;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = v179;
  v151 = v183;
  sub_1C593EDC0(v143, v183, v149);
  v152 = *(v182 + 8);
  v152(v143, v151);
  sub_1C593EDC0(v150, v151, v149);
  return (v152)(v150, v151);
}

uint64_t sub_1C5B6406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a1;
  v20[1] = a6;
  v20[11] = sub_1C5BCB144();
  v20[12] = a3;
  v20[13] = sub_1C5BCB804();
  v20[14] = swift_getWitnessTable();
  v20[15] = a5;
  sub_1C5BCA8C4();
  v20[10] = a4;
  v20[9] = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1C5BCA904();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a5;
  v20[8] = v20[0];
  sub_1C5BCA8F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1C593EDC0(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1C5B642BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = sub_1C5BCB144();
  v31 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v42 = v11;
  v43 = a3;
  v44 = v31;
  v45 = WitnessTable;
  v46 = a5;
  v12 = sub_1C5BCA8C4();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &KeyPath - v16;
  v47 = *(a1 + 32);
  v48 = v47;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  v18 = *(a1 + 176);
  *(v17 + 208) = *(a1 + 160);
  *(v17 + 224) = v18;
  *(v17 + 240) = *(a1 + 192);
  v19 = *(a1 + 112);
  *(v17 + 144) = *(a1 + 96);
  *(v17 + 160) = v19;
  v20 = *(a1 + 144);
  *(v17 + 176) = *(a1 + 128);
  *(v17 + 192) = v20;
  v21 = *(a1 + 48);
  *(v17 + 80) = *(a1 + 32);
  *(v17 + 96) = v21;
  v22 = *(a1 + 80);
  *(v17 + 112) = *(a1 + 64);
  *(v17 + 128) = v22;
  v23 = *(a1 + 16);
  *(v17 + 48) = *a1;
  *(v17 + 64) = v23;
  (*(*(v11 - 8) + 16))(&v42, &v48, v11);
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v24 = type metadata accessor for SlideCarousel();
  (*(*(v24 - 8) + 16))(&v42, a1, v24);
  v41 = a4;
  v29 = swift_getWitnessTable();
  sub_1C5BCA8A4();
  v40 = v29;
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_1C593EDC0(v14, v12, v25);
  v27 = *(v34 + 8);
  v27(v14, v12);
  sub_1C593EDC0(v26, v12, v25);
  return (v27)(v26, v12);
}

uint64_t sub_1C5B645F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C5BCB804();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  (*(a2 + 40))(a1, v13);
  v19[1] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C593EDC0(v15, v8, WitnessTable);
  return (v17)(v15, v8);
}

uint64_t sub_1C5B6476C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v26 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = *(a1 + 8);
  v19 = *(a1 + 136);
  v20 = *(a1 + 152);
  v21 = *(a1 + 168);
  v22 = *(a1 + 184);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  v18 = *(a1 + 120);
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v12 = type metadata accessor for SlideCarousel();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v27, a1, v12);
  *&v27 = v10;
  *(&v27 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  *&v27 = v8;
  *(&v27 + 1) = v9;
  v41 = a6 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v8;
  v32 = v9;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  return (*(v13 + 8))(&v27, v12);
}

uint64_t sub_1C5B64944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8);
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v20 = sub_1C5B65DB0;
  v21 = 0;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FC8);
  sub_1C5924F54(&qword_1EC198FD0, &qword_1EC198FC8);
  v9 = a3;
  sub_1C5BC9D04();
  v10 = swift_allocObject();
  v11 = v16;
  *(v10 + 16) = v15;
  *(v10 + 24) = v11;
  v12 = sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8);
  v18 = v9;
  v19 = v12;

  swift_getWitnessTable();
  sub_1C5B6640C();
  sub_1C5B66460(&qword_1EDA45DC0, type metadata accessor for CGSize);
  sub_1C5BCA084();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C5B64BD8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  v7 = a1[5];
  v66 = a1[4];
  v67 = v7;
  *&v68 = *(a1 + 12);
  v8 = a1[1];
  v62 = *a1;
  v63 = v8;
  v64 = a1[2];
  v65 = v6;
  v9 = *(a1 + 13);
  v10 = *(a1 + 14);
  v33 = *(a1 + 168);
  v36 = *(a1 + 184);
  v27 = *(a1 + 136);
  v30 = *(a1 + 152);
  v24 = *(a1 + 120);
  *&v76 = a2;
  *(&v76 + 1) = a3;
  *&v77 = a4;
  *(&v77 + 1) = a5;
  v11 = type metadata accessor for SlideCarousel();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v76, a1, v11);
  sub_1C5BCB0F4();
  *&v76 = v9;
  *(&v76 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA6A4();
  v53[4] = v66;
  v53[5] = v67;
  v53[0] = v62;
  v53[1] = v63;
  v53[2] = v64;
  v53[3] = v65;
  v55 = v9;
  v58 = v27;
  v59 = v30;
  v54 = v68;
  v56 = v10;
  v60 = v33;
  v61 = v36;
  v57 = v24;
  v14 = *(v12 + 8);
  v14(v53, v11);
  v15 = *(a1 + 14);
  *&v76 = *(a1 + 13);
  *(&v76 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  v16 = v62;
  v37 = a1[4];
  v39 = a1[5];
  v41 = a1[6];
  v43 = *(a1 + 14);
  v25 = *a1;
  v28 = a1[1];
  v31 = a1[2];
  v34 = a1[3];
  v17 = *(a1 + 15);
  v18 = *(a1 + 16);
  v44 = *(a1 + 136);
  v46 = *(a1 + 152);
  v48 = *(a1 + 168);
  v50 = *(a1 + 184);
  v13(&v76, a1, v11);
  *&v76 = v17;
  *(&v76 + 1) = v18;
  *&v62 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA6A4();
  v66 = v37;
  v67 = v39;
  v68 = v41;
  v69 = v43;
  v62 = v25;
  v63 = v28;
  v64 = v31;
  v65 = v34;
  v70 = v17;
  v71 = v18;
  v72 = v44;
  v73 = v46;
  v74 = v48;
  v75 = v50;
  v14(&v62, v11);
  v19 = *(a1 + 8);
  *&v76 = *(a1 + 7);
  *(&v76 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  v20 = v25;
  v49 = a1[2];
  v51 = a1[3];
  v52 = *(a1 + 8);
  v45 = *a1;
  v47 = a1[1];
  v21 = *(a1 + 9);
  v22 = *(a1 + 10);
  v38 = *(a1 + 152);
  v40 = *(a1 + 168);
  v42 = *(a1 + 184);
  v26 = *(a1 + 88);
  v29 = *(a1 + 104);
  v32 = *(a1 + 120);
  v35 = *(a1 + 136);
  v13(&v76, a1, v11);
  *&v76 = v21;
  *(&v76 + 1) = v22;
  v90 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v78 = v49;
  v79 = v51;
  v80 = v52;
  v76 = v45;
  v77 = v47;
  v81 = v21;
  v82 = v22;
  v83 = v26;
  v84 = v29;
  v85 = v32;
  v89 = v42;
  v88 = v40;
  v87 = v38;
  v86 = v35;
  v14(&v76, v11);
  result = sub_1C59B90AC();
  if (result)
  {
    return sub_1C5B61630(0, v11);
  }

  return result;
}

uint64_t sub_1C5B65064(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[11];
  *&v89[32] = a1[10];
  *&v89[48] = v6;
  *&v89[64] = *(a1 + 24);
  v7 = a1[7];
  v87 = a1[6];
  v88 = v7;
  v8 = a1[9];
  *v89 = a1[8];
  *&v89[16] = v8;
  v9 = a1[3];
  v83 = a1[2];
  v84 = v9;
  v10 = a1[5];
  v85 = a1[4];
  v86 = v10;
  v11 = a1[1];
  v81 = *a1;
  v82 = v11;
  *&v55 = a2;
  *(&v55 + 1) = a3;
  *&v56 = a4;
  *(&v56 + 1) = a5;
  v12 = type metadata accessor for SlideCarousel();
  if (sub_1C59B90AC())
  {
    v13 = a1[11];
    *&v89[32] = a1[10];
    *&v89[48] = v13;
    *&v89[64] = *(a1 + 24);
    v14 = a1[7];
    v87 = a1[6];
    v88 = v14;
    v15 = a1[9];
    *v89 = a1[8];
    *&v89[16] = v15;
    v16 = a1[3];
    v83 = a1[2];
    v84 = v16;
    v17 = a1[5];
    v85 = a1[4];
    v86 = v17;
    v18 = a1[1];
    v81 = *a1;
    v82 = v18;
    return sub_1C5B61630(1, v12);
  }

  else
  {
    v20 = a1[3];
    v78 = a1[2];
    v79 = v20;
    v80 = *(a1 + 8);
    v21 = a1[1];
    v76 = *a1;
    v77 = v21;
    v22 = *(a1 + 9);
    v23 = *(a1 + 10);
    v24 = *(a1 + 136);
    v25 = *(a1 + 168);
    v73 = *(a1 + 152);
    v74 = v25;
    v75 = *(a1 + 184);
    v26 = *(a1 + 104);
    v69 = *(a1 + 88);
    v70 = v26;
    v71 = *(a1 + 120);
    v72 = v24;
    v42 = *(a1 + 184);
    v27 = *(a1 + 24);
    v28 = *(v12 - 8);
    v29 = *(v28 + 16);
    v29(&v81, a1, v12);
    LOBYTE(v81) = v42;
    *(&v81 + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
    sub_1C5BCA694();
    if (v55 != 1)
    {
      v31 = *(a1 + 8);
      *&v81 = *(a1 + 7);
      *(&v81 + 1) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
      sub_1C5BCA694();
    }

    v30 = *(a1 + 22);
    *&v81 = *(a1 + 21);
    *(&v81 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    *&v81 = v22;
    *(&v81 + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA6A4();
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v55 = v76;
    v56 = v77;
    v60 = v22;
    v61 = v23;
    v62 = v69;
    v63 = v70;
    v64 = v71;
    v68 = v75;
    v67 = v74;
    v66 = v73;
    v65 = v72;
    v32 = *(v28 + 8);
    v32(&v55, v12);
    v47 = a1[4];
    v48 = a1[5];
    v49 = a1[6];
    v50 = *(a1 + 14);
    v43 = *a1;
    v44 = a1[1];
    v45 = a1[2];
    v46 = a1[3];
    v33 = *(a1 + 15);
    v34 = *(a1 + 16);
    v53 = *(a1 + 168);
    v54 = *(a1 + 184);
    v51 = *(a1 + 136);
    v52 = *(a1 + 152);
    v35 = *(a1 + 13);
    v29(&v81, a1, v12);
    *&v81 = v35;
    *(&v81 + 1) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA694();
    v36 = v90;
    v37 = *(a1 + 10);
    *&v81 = *(a1 + 9);
    *(&v81 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    v38 = fabs(v90);
    v39 = *(a1 + 14);
    *&v81 = *(a1 + 13);
    *(&v81 + 1) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA694();
    v40 = v38 * v90;
    v41 = *(a1 + 8);
    *&v81 = *(a1 + 7);
    *(&v81 + 1) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    *&v81 = v33;
    *(&v81 + 1) = v34;
    v90 = v36 - v40 / v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA6A4();
    v85 = v47;
    v86 = v48;
    v87 = v49;
    *&v88 = v50;
    v81 = v43;
    v82 = v44;
    v83 = v45;
    v84 = v46;
    *(&v88 + 1) = v33;
    *v89 = v34;
    *&v89[56] = v54;
    *&v89[40] = v53;
    *&v89[24] = v52;
    *&v89[8] = v51;
    v32(&v81, v12);
    return sub_1C5B610A0();
  }
}

uint64_t sub_1C5B65584(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a2[9];
  *v55 = a2[8];
  *&v55[16] = v8;
  *&v55[32] = *(a2 + 20);
  v9 = a2[5];
  v51 = a2[4];
  v52 = v9;
  v10 = a2[7];
  v53 = a2[6];
  v54 = v10;
  v11 = a2[1];
  v47 = *a2;
  v48 = v11;
  v12 = a2[3];
  v49 = a2[2];
  v50 = v12;
  v13 = *(a2 + 21);
  v14 = *(a2 + 22);
  v32 = *(a2 + 184);
  *&v57 = a3;
  *(&v57 + 1) = a4;
  *&v58 = a5;
  *(&v58 + 1) = a6;
  v15 = type metadata accessor for SlideCarousel();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(&v57, a2, v15);
  *&v57 = v13;
  *(&v57 + 1) = v14;
  *&v43 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v65 = *v55;
  v66 = *&v55[16];
  v67 = *&v55[32];
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v68 = v13;
  v69 = v14;
  v70 = v32;
  v18 = *(v16 + 8);
  v18(&v57, v15);
  v19 = a2[11];
  *&v55[32] = a2[10];
  *&v55[48] = v19;
  *&v55[64] = *(a2 + 24);
  v20 = a2[7];
  v53 = a2[6];
  v54 = v20;
  v21 = a2[9];
  *v55 = a2[8];
  *&v55[16] = v21;
  v22 = a2[3];
  v49 = a2[2];
  v50 = v22;
  v23 = a2[5];
  v51 = a2[4];
  v52 = v23;
  v24 = a2[1];
  v47 = *a2;
  v48 = v24;
  result = sub_1C59B90AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    v33 = *(a2 + 21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    v26 = *(a2 + 14);
    *&v47 = *(a2 + 13);
    *(&v47 + 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA694();
    v27 = v33;
    v38 = a2[4];
    v39 = a2[5];
    v40 = a2[6];
    v41 = *(a2 + 14);
    v34 = *a2;
    v35 = a2[1];
    v36 = a2[2];
    v37 = a2[3];
    v28 = *(a2 + 15);
    v29 = *(a2 + 16);
    v30 = *(a2 + 152);
    v43 = *(a2 + 136);
    v44 = v30;
    v31 = *(a2 + 184);
    v45 = *(a2 + 168);
    v46 = v31;
    v17(&v47, a2, v15);
    *&v47 = v28;
    *(&v47 + 1) = v29;
    *&v42 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA6A4();
    v51 = v38;
    v52 = v39;
    v53 = v40;
    *&v54 = v41;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    *(&v54 + 1) = v28;
    *v55 = v29;
    *&v55[8] = v43;
    *&v55[24] = v44;
    *&v55[40] = v45;
    *&v55[56] = v46;
    v18(&v47, v15);
    v43 = *(a2 + 184);
    v56 = *(&v43 + 1);
    sub_1C5B665C8(&v56, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
    sub_1C5BCA694();
    v42 = v43;
    sub_1C5BCA6A4();
    sub_1C5B66638(&v43);
    return sub_1C5B61630(0, v15);
  }

  return result;
}

uint64_t sub_1C5B659A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_1C5B46010(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C0);
  MEMORY[0x1C694EA50](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  sub_1C5BCA824();
  sub_1C5A7B6C4(&v11);
}

uint64_t sub_1C5B65A58(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v24 = *(a1 + 10);
  v19 = *a1;
  v20 = a1[1];
  v8 = *(a1 + 11);
  v9 = *(a1 + 12);
  v13 = *(a1 + 104);
  v14 = *(a1 + 120);
  v17 = *(a1 + 168);
  v18 = *(a1 + 184);
  v15 = *(a1 + 136);
  v16 = *(a1 + 152);
  *&v25 = a2;
  *(&v25 + 1) = a3;
  *&v26 = a4;
  *(&v26 + 1) = a5;
  v10 = type metadata accessor for SlideCarousel();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v25, a1, v10);
  *&v25 = v8;
  *(&v25 + 1) = v9;
  v39 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA6A4();
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v25 = v19;
  v26 = v20;
  v31 = v8;
  v32 = v9;
  v34 = v14;
  v33 = v13;
  v38 = v18;
  v37 = v17;
  v36 = v16;
  v35 = v15;
  return (*(v11 + 8))(&v25, v10);
}

uint64_t sub_1C5B65C40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1C5B65CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5B65D08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B65DB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BCA484();
  result = sub_1C5BC86C4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C5B65E24(double a1)
{
  v3 = sub_1C5BCAC14();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BCAC44();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = a1;
  sub_1C5929CA0();
  v9 = sub_1C5BCB5A4();
  v10 = *(v1 + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C59F9CD0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5B66460(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v8, v5, v12);
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

CGFloat sub_1C5B66124@<D0>(uint64_t a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, 0.0);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t (*sub_1C5B66188(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1C5B661B4;
}

unint64_t sub_1C5B661E0()
{
  result = qword_1EC198FB8;
  if (!qword_1EC198FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198FB8);
  }

  return result;
}

uint64_t sub_1C5B66238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C5B6638C();

  return MEMORY[0x1EEDDEA98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1C5B662B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C5B6638C();

  return MEMORY[0x1EEDDEA80](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_1C5B6638C()
{
  result = qword_1EC198FC0;
  if (!qword_1EC198FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198FC0);
  }

  return result;
}

unint64_t sub_1C5B6640C()
{
  result = qword_1EC198FD8;
  if (!qword_1EC198FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC198FD8);
  }

  return result;
}

uint64_t sub_1C5B66460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5B665C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B66638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WaveformBarLayout.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t MCUINamespace<A>.waveformBarLayout(_:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5B668B0()
{
  sub_1C5B66A60();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B668F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B66A60();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C5B66998()
{
  result = qword_1EC199000;
  if (!qword_1EC199000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199000);
  }

  return result;
}

unint64_t sub_1C5B669FC()
{
  result = qword_1EC199010;
  if (!qword_1EC199010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199010);
  }

  return result;
}

unint64_t sub_1C5B66A60()
{
  result = qword_1EDA46380;
  if (!qword_1EDA46380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46380);
  }

  return result;
}

uint64_t sub_1C5B66AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5B66998();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5B66B2C(uint64_t a1)
{
  v2 = sub_1C5BC8284();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C5BC8CE4();
}

uint64_t sub_1C5B66BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5B68494(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C5B66CC4()
{
  v0 = [objc_opt_self() tertiarySystemFillColor];
  result = sub_1C5BCA424();
  qword_1EC199018 = result;
  return result;
}

uint64_t ParallaxButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a1;
  v16 = a2;
  v15 = sub_1C5BC9554();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = v2[2];
  v9 = *(v2 + 24);
  sub_1C5BC9564();
  sub_1C5BCA9F4();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199028);
  sub_1C5B68494(&qword_1EDA46200, MEMORY[0x1E697C8D0]);
  sub_1C5B67520();
  sub_1C5B67608();
  v11 = v15;
  v10 = v16;
  sub_1C5BCA354();
  (*(v3 + 8))(v5, v11);
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v12 = sub_1C5B67710();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199048);
  *(v10 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1C5B66F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    a2 = v17;
  }

  swift_getKeyPath();
  v17 = a2;
  sub_1C5B68494(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  v13 = *(a2 + 32);

  if (!v13)
  {
    sub_1C5BCA4C4();
    v13 = sub_1C5BCA534();
  }

  v14 = sub_1C5BC9554();
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199020);
  *(a4 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1C5B671A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199020);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;

  if ((a3 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    a2 = v22;
  }

  swift_getKeyPath();
  v22 = a2;
  sub_1C5B68494(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  v16 = *(a2 + 32);

  if (!v16)
  {
    v16 = sub_1C5BCA4C4();
  }

  v17 = sub_1C5BC9554();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  *&v14[*(v12 + 36)] = v16;
  v18 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199028) + 36);
  type metadata accessor for ParallaxContext();
  *v18 = sub_1C5BC8324();
  *(v18 + 8) = v19 & 1;
  type metadata accessor for ButtonBackground();
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC1A6DB0;
  sub_1C5A3B53C();
  sub_1C5BC84C4();
  return sub_1C59E7D34(v14, a4, &qword_1EC199020);
}

unint64_t sub_1C5B67520()
{
  result = qword_1EC199030;
  if (!qword_1EC199030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199020);
    sub_1C5B68494(&qword_1EDA46200, MEMORY[0x1E697C8D0]);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199030);
  }

  return result;
}

unint64_t sub_1C5B67608()
{
  result = qword_1EC199038;
  if (!qword_1EC199038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199028);
    sub_1C5B67520();
    sub_1C5B68494(&qword_1EC199040, type metadata accessor for ButtonBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199038);
  }

  return result;
}

uint64_t type metadata accessor for ButtonBackground()
{
  result = qword_1EC199058;
  if (!qword_1EC199058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C5B67710()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    result = 0.25;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v5, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.25;
    if (v9[15] != 1)
    {
      return result;
    }
  }

  v8 = sub_1C5BC9574();
  result = 1.0;
  if (v8)
  {
    return 0.5;
  }

  return result;
}

double sub_1C5B67894@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199088);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-v8];
  *v6 = sub_1C5BCAA54();
  v6[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199090);
  sub_1C5B67BF4(a1, v6 + *(v11 + 44));
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  type metadata accessor for ButtonBackground();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  sub_1C5BC84D4();
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v6, v9, &qword_1EC199080);
  v12 = &v9[*(v7 + 36)];
  v13 = v23;
  v12[4] = v22;
  v12[5] = v13;
  v12[6] = v24;
  v14 = *&v19[24];
  *v12 = *&v19[8];
  v12[1] = v14;
  v15 = v21;
  v12[2] = v20;
  v12[3] = v15;
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C59E7D34(v9, a2, &qword_1EC199088);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199098) + 36));
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  result = *&v27;
  v16[2] = v27;
  return result;
}