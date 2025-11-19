uint64_t sub_1D5324EC4(char a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for MusicSearchResultGroup();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v34 - v17);
  if (*(a2 + 16))
  {
    v39 = v7;
    v40 = v6;
    v41 = v16;
    v42 = v15;
    v19 = sub_1D5325E50(a1);
    v37 = v20;
    v38 = v19;
    v21 = sub_1D5325AA0(a1);
    v35 = v22;
    v36 = v21;
    v43 = a2;
    type metadata accessor for GenericMusicItem();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
    sub_1D5326718(&qword_1EDD5C600, type metadata accessor for GenericMusicItem);
    sub_1D4E62A60(&qword_1EDD528A8, &qword_1EC7EF3B8, &qword_1D5631140);
    sub_1D560DAD8();
    if (sub_1D5325E50(a1) == 0x6C75736552706F74 && v23 == 0xEA00000000007374)
    {

      v25 = 1;
    }

    else
    {
      v25 = sub_1D5616168();
    }

    v27 = v39;
    v26 = v40;
    v28 = v37;
    *v18 = v38;
    v18[1] = v28;
    v29 = v35;
    v18[2] = v36;
    v18[3] = v29;
    (*(v27 + 32))(v18 + *(v11 + 24), v10, v26);
    *(v18 + *(v11 + 28)) = v25 & 1;
    sub_1D5326610();
    sub_1D4EFF570();
    v30 = *(*a3 + 16);
    sub_1D4EFF7B8(v30);
    sub_1D5326668(v18, type metadata accessor for MusicSearchResultGroup);
    v31 = *a3;
    *(v31 + 16) = v30 + 1;
    v32 = v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v33 = *(v42 + 72);
    result = sub_1D53266C0();
    *a3 = v31;
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.InternalResults.appendExtendedDescription(for:forDebugging:to:)(uint64_t a1)
{
  v2 = sub_1D560D9A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD53C88);
  sub_1D5326718(&qword_1EDD53C20, MEMORY[0x1E6974F80]);
  if (OUTLINED_FUNCTION_63_19())
  {
    v9 = OUTLINED_FUNCTION_58_30();
    v10(v9);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v11, v12, &unk_1D5653240);
    return sub_1D56155F8();
  }

  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD53D50);
  if (OUTLINED_FUNCTION_63_19())
  {
    v13 = OUTLINED_FUNCTION_58_30();
    v14(v13);
    v15 = *(type metadata accessor for MusicLibrarySearchResponse.InternalResults() + 20);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v16, v17, &unk_1D561C400);
    return sub_1D56155F8();
  }

  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD53C40);
  v18 = OUTLINED_FUNCTION_63_19();
  v19 = OUTLINED_FUNCTION_58_30();
  result = v20(v19);
  if (v18)
  {
    v22 = *(type metadata accessor for MusicLibrarySearchResponse.InternalResults() + 28);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v23, v24, &unk_1D561C080);
    return sub_1D56155F8();
  }

  return result;
}

Swift::Void __swiftcall MusicLibrarySearchResponse.InternalResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  v3 = type metadata accessor for MusicLibrarySearchResponse.InternalResults();
  v4 = *(v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_6_104();
  sub_1D4E62A60(v5, v6, &qword_1D561C540);
  sub_1D56155F8();
  v7 = *(v2 + *(v3 + 36));

  OUTLINED_FUNCTION_73_21();
  sub_1D4E62A60(&qword_1EC7EF2B0, &qword_1EC7EF2A8, &qword_1D5630F98);
  sub_1D56155F8();
}

uint64_t sub_1D53256DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561CA30;
  v5 = v4 + v3;
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53C88);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7(v5 + v2, v8, v0);
  if (qword_1EDD53D98 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDD53DA0);
  v7(v5 + 2 * v2, v9, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  result = (v7)(v5 + 3 * v2, v10, v0);
  qword_1EC7F43B8 = v4;
  return result;
}

uint64_t static MusicLibrarySearchResponse.InternalResults.extendedSupportedTypeValues.getter()
{
  if (qword_1EC7E9420 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D5325988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5326718(&qword_1EDD53B08, type metadata accessor for MusicLibrarySearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFF0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5325A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5326718(&qword_1EC7F4468, type metadata accessor for MusicLibrarySearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFE8](a1, a2, a3, v6);
}

uint64_t sub_1D5325AA0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      if (qword_1EDD525B0 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  return sub_1D560BDB8();
}

uint64_t sub_1D5325E50(char a1)
{
  result = 0x6C75736552706F74;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x7265736F706D6F63;
      break;
    case 4:
      result = 0x646956636973756DLL;
      break;
    case 5:
      result = 0x7473696C79616C70;
      break;
    case 6:
      result = 0x73676E6F73;
      break;
    case 7:
      result = 0x766F4D646E417674;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5325F74()
{
  result = qword_1EC7F43F0;
  if (!qword_1EC7F43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F43F0);
  }

  return result;
}

uint64_t sub_1D5325FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4408, &qword_1D5653268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D53260A8()
{
  sub_1D532618C();
  if (v0 <= 0x3F)
  {
    sub_1D5326220();
    if (v1 <= 0x3F)
    {
      sub_1D53262B4();
      if (v2 <= 0x3F)
      {
        sub_1D5326348();
        if (v3 <= 0x3F)
        {
          sub_1D53263DC();
          if (v4 <= 0x3F)
          {
            sub_1D5326470();
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

void sub_1D532618C()
{
  if (!qword_1EDD53BE0)
  {
    type metadata accessor for Composer();
    sub_1D5326718(&qword_1EDD54820, type metadata accessor for Composer);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53BE0);
    }
  }
}

void sub_1D5326220()
{
  if (!qword_1EDD53BF8)
  {
    type metadata accessor for MusicMovie();
    sub_1D5326718(&qword_1EDD59308, type metadata accessor for MusicMovie);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53BF8);
    }
  }
}

void sub_1D53262B4()
{
  if (!qword_1EDD53B98)
  {
    type metadata accessor for Playlist.Folder.Item();
    sub_1D5326718(&qword_1EDD52C90, type metadata accessor for Playlist.Folder.Item);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53B98);
    }
  }
}

void sub_1D5326348()
{
  if (!qword_1EDD53BD8)
  {
    type metadata accessor for TVEpisode();
    sub_1D5326718(&qword_1EDD54508, type metadata accessor for TVEpisode);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53BD8);
    }
  }
}

void sub_1D53263DC()
{
  if (!qword_1EDD53C18)
  {
    type metadata accessor for GenericMusicItem();
    sub_1D5326718(&qword_1EDD5C600, type metadata accessor for GenericMusicItem);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53C18);
    }
  }
}

void sub_1D5326470()
{
  if (!qword_1EDD528A0)
  {
    type metadata accessor for MusicSearchResultGroup();
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD528A0);
    }
  }
}

_BYTE *_s5ErrorOwst_1(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D5326578()
{
  result = qword_1EC7F4450;
  if (!qword_1EC7F4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4450);
  }

  return result;
}

uint64_t sub_1D5326610()
{
  v2 = OUTLINED_FUNCTION_106_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1D5326668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D53266C0()
{
  v2 = OUTLINED_FUNCTION_106_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1D5326718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_57_31()
{
  result = v0;
  v3 = *(v1 - 320);
  return result;
}

void OUTLINED_FUNCTION_68_23()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_71_20(unint64_t *a1)
{

  return sub_1D5326718(a1, v1);
}

uint64_t OUTLINED_FUNCTION_72_24()
{

  return sub_1D4E628D4(v0 - 144, v0 - 184);
}

uint64_t OUTLINED_FUNCTION_74_23()
{

  return sub_1D560DAD8();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.Position.description.getter()
{
  if (*v0)
  {
    result = 1684956462;
  }

  else
  {
    result = 0x696E6E696765622ELL;
  }

  *v0;
  return result;
}

uint64_t MusicLibraryPlaylistViewModel.Delta.Position.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5326970()
{
  result = qword_1EC7F4480;
  if (!qword_1EC7F4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4480);
  }

  return result;
}

_BYTE *_s8PositionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Item.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatusController.Item.Kind.description.getter()
{
  result = 0x676E6F732ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6956636973756D2ELL;
      break;
    case 2:
    case 3:
      result = 0x6564616F6C70752ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5326BC8()
{
  result = qword_1EC7F4488;
  if (!qword_1EC7F4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4488);
  }

  return result;
}

_BYTE *_s4KindOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t static MusicFavoriteStatusController.Item.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v42[0] = *a1;
  v42[1] = v3;
  v42[2] = v4;
  v42[3] = v5;
  v43 = v6;
  v44 = v8;
  v45 = v7;
  v46 = v10;
  v47 = v9;
  v48 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_32;
      }

      v25 = v2 == v8 && v3 == v7;
      if (!v25 && (OUTLINED_FUNCTION_3_141() & 1) == 0)
      {
        LOBYTE(v6) = 1;
        v27 = OUTLINED_FUNCTION_0_183();
        v31 = 1;
        goto LABEL_33;
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_1_140();
        v13 = sub_1D5616168();
        LOBYTE(v6) = 1;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 1;
        goto LABEL_31;
      }

      LOBYTE(v6) = 1;
      v32 = v8;
      v33 = v7;
      v34 = v4;
      v35 = v5;
      v36 = 1;
      goto LABEL_38;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_32;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_141();
        LOBYTE(v6) = 2;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 2;
        goto LABEL_31;
      }

      LOBYTE(v6) = 2;
      OUTLINED_FUNCTION_1_140();
      v36 = 2;
      goto LABEL_38;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_32;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_141();
        LOBYTE(v6) = 3;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 3;
LABEL_31:
        sub_1D531A63C(v19, v20, v21, v22, v23);
        goto LABEL_40;
      }

      LOBYTE(v6) = 3;
      OUTLINED_FUNCTION_1_140();
      v36 = 3;
LABEL_38:
      sub_1D531A63C(v32, v33, v34, v35, v36);
      goto LABEL_39;
    default:
      if (v11)
      {
LABEL_32:
        v27 = OUTLINED_FUNCTION_0_183();
LABEL_33:
        sub_1D531A63C(v27, v28, v29, v30, v31);
        v13 = 0;
      }

      else if (v2 == v8 && v3 == v7)
      {
        OUTLINED_FUNCTION_1_140();
        sub_1D531A63C(v37, v38, v39, v40, 0);
        LOBYTE(v6) = 0;
LABEL_39:
        v13 = 1;
      }

      else
      {
        v13 = sub_1D5616168();
        v14 = OUTLINED_FUNCTION_0_183();
        sub_1D531A63C(v14, v15, v16, v17, 0);
        LOBYTE(v6) = 0;
      }

LABEL_40:
      sub_1D531A63C(v2, v3, v4, v5, v6);
      sub_1D5326F28(v42);
      return v13 & 1;
  }
}

uint64_t sub_1D5326F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4490, &qword_1D5653628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicFavoriteStatusController.Item.ID.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 32))
  {
    case 1:
      v5 = v0[2];
      v4 = v0[3];
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      goto LABEL_7;
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
      goto LABEL_5;
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1DA6EC0D0](v3);
      OUTLINED_FUNCTION_2_59();
LABEL_7:

      return sub_1D5614E28();
  }
}

uint64_t MusicFavoriteStatusController.Item.ID.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1D56162D8();
  switch(v5)
  {
    case 1:
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      goto LABEL_7;
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      v6 = 3;
      goto LABEL_5;
    default:
      v6 = 0;
LABEL_5:
      MEMORY[0x1DA6EC0D0](v6);
      OUTLINED_FUNCTION_2_59();
LABEL_7:
      sub_1D5614E28();
      return sub_1D5616328();
  }
}

uint64_t sub_1D5327124()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_1D56162D8();
  MusicFavoriteStatusController.Item.ID.hash(into:)();
  return sub_1D5616328();
}

unint64_t MusicFavoriteStatusController.Item.ID.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 32))
  {
    case 1:
      v7 = v0[2];
      v6 = v0[3];
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v9 = 0xD000000000000010;
      MEMORY[0x1DA6EAC70](v2, v1);
      MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568B240);
      v4 = v7;
      v5 = v6;
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x7972617262696C2ELL;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x736168637275702ELL;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x676F6C617461632ELL;
LABEL_6:
      v9 = v3;
      v4 = v2;
      v5 = v1;
LABEL_8:
      MEMORY[0x1DA6EAC70](v4, v5);
      MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
      return v9;
  }
}

unint64_t sub_1D5327300()
{
  result = qword_1EC7F4498;
  if (!qword_1EC7F4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4498);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5327378(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D53273B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id Artwork.Gradient.color.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Artwork.Gradient.y1.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t Artwork.Gradient.y2.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t static Artwork.Gradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5614028();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44A0, &qword_1D5653798) - 8) + 64);
  OUTLINED_FUNCTION_11();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - v20;
  v22 = *a2;
  if (*a1)
  {
    if (!v22)
    {
      goto LABEL_28;
    }

    v43 = v19;
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_2_138();
    sub_1D5328124(v23, v24);
    v44 = v16;
    v25 = v22;
    v16 = v44;
    v26 = sub_1D560C518();

    v19 = v43;
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v27 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_28;
    }
  }

  v28 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 33) == *(a2 + 33))
  {
    v29 = v19;
    v30 = type metadata accessor for Artwork.Gradient();
    v31 = *(v30 + 32);
    v32 = *(v29 + 48);
    sub_1D520EBBC(a1 + v31, v21);
    sub_1D520EBBC(a2 + v31, &v21[v32]);
    OUTLINED_FUNCTION_11_2(v21);
    if (v33)
    {
      OUTLINED_FUNCTION_11_2(&v21[v32]);
      if (v33)
      {
        sub_1D4E6C9CC(v21, &qword_1EC7F1E70, &qword_1D5653790);
        goto LABEL_31;
      }
    }

    else
    {
      sub_1D520EBBC(v21, v16);
      OUTLINED_FUNCTION_11_2(&v21[v32]);
      if (!v33)
      {
        (*(v7 + 32))(v12, &v21[v32], v4);
        OUTLINED_FUNCTION_1_141();
        sub_1D5328124(v36, v37);
        v38 = sub_1D5614D18();
        v39 = *(v7 + 8);
        v39(v12, v4);
        v39(v16, v4);
        sub_1D4E6C9CC(v21, &qword_1EC7F1E70, &qword_1D5653790);
        if ((v38 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        v40 = *(v30 + 36);
        v41 = *(a1 + v40);
        v42 = *(a2 + v40);
        sub_1D4F286E0();
        return v34 & 1;
      }

      (*(v7 + 8))(v16, v4);
    }

    sub_1D4E6C9CC(v21, &qword_1EC7F44A0, &qword_1D5653798);
  }

LABEL_28:
  v34 = 0;
  return v34 & 1;
}

uint64_t type metadata accessor for Artwork.Gradient()
{
  result = qword_1EC7F44D0;
  if (!qword_1EC7F44D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Artwork.Gradient.hash(into:)()
{
  v1 = sub_1D5614028();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*v0)
  {
    OUTLINED_FUNCTION_27();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_2_138();
    sub_1D5328124(v14, v15);
    sub_1D560C528();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v16 = *(v0 + 8);
    OUTLINED_FUNCTION_27();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x1DA6EC100](v17);
  }

  if (*(v0 + 32) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v18 = *(v0 + 24);
    OUTLINED_FUNCTION_27();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x1DA6EC100](v19);
  }

  v20 = *(v0 + 33);
  sub_1D56162F8();
  v21 = type metadata accessor for Artwork.Gradient();
  sub_1D520EBBC(v0 + *(v21 + 32), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v9, v13, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_141();
    sub_1D5328124(v22, v23);
    sub_1D5614CB8();
    (*(v4 + 8))(v9, v1);
  }

  v24 = *(v0 + *(v21 + 36));
  sub_1D4F31AC0();
}

uint64_t Artwork.Gradient.hashValue.getter()
{
  sub_1D56162D8();
  Artwork.Gradient.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5327B24()
{
  sub_1D56162D8();
  Artwork.Gradient.hash(into:)();
  return sub_1D5616328();
}

uint64_t Artwork.Gradient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_1D56140C8();
  v4 = OUTLINED_FUNCTION_4(v26);
  v24 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44B0, &qword_1D56537A0);
  OUTLINED_FUNCTION_4(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1D4E628D4(a1, v25);
  sub_1D560F978();
  v19 = MEMORY[0x1E6975950];
  sub_1D5328124(&qword_1EC7F44B8, MEMORY[0x1E6975950]);
  OUTLINED_FUNCTION_3_142();
  sub_1D5328124(v20, v19);
  sub_1D5610768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5610748();
  sub_1D5327D74(v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v24 + 8))(v10, v26);
  return (*(v13 + 8))(v18, v11);
}

uint64_t sub_1D5327D74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D5614098();
  v3 = sub_1D5614068();
  v5 = v4;
  v6 = sub_1D5614078();
  v8 = v7;
  v9 = sub_1D5614058();
  v10 = type metadata accessor for Artwork.Gradient();
  v11 = a1 + *(v10 + 32);
  sub_1D56140A8();
  result = sub_1D56140B8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 33) = v9 & 1;
  *(a1 + *(v10 + 36)) = result;
  return result;
}

uint64_t Artwork.Gradient.encode(to:)(uint64_t a1)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44B0, &qword_1D56537A0);
  OUTLINED_FUNCTION_4(v37);
  v39 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v34 = v33 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = sub_1D56140C8();
  v12 = OUTLINED_FUNCTION_4(v11);
  v35 = v13;
  v36 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v20 = *v1;
  v19 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v33[3] = *(v1 + 32);
  v23 = *(v1 + 33);
  v24 = type metadata accessor for Artwork.Gradient();
  sub_1D520EBBC(v1 + *(v24 + 32), v10);
  v25 = *(v1 + *(v24 + 36));
  v26 = v20;

  v27 = v34;
  sub_1D5614088();
  sub_1D5614048();
  v28 = MEMORY[0x1E6975950];
  sub_1D5328124(&qword_1EC7F44B8, MEMORY[0x1E6975950]);
  OUTLINED_FUNCTION_3_142();
  v29 = v28;
  v30 = v37;
  sub_1D5328124(v31, v29);
  sub_1D5610778();
  (*(v39 + 8))(v27, v30);
  return (*(v35 + 8))(v18, v36);
}

uint64_t sub_1D5328124(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5328194()
{
  sub_1D53282E0(319, &qword_1EC7EB398, type metadata accessor for CGColor);
  if (v0 <= 0x3F)
  {
    sub_1D5328290();
    if (v1 <= 0x3F)
    {
      sub_1D53282E0(319, &qword_1EC7F44E0, MEMORY[0x1E6976F50]);
      if (v2 <= 0x3F)
      {
        sub_1D4E5CF94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5328290()
{
  if (!qword_1EDD52730)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52730);
    }
  }
}

void sub_1D53282E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5328334@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1D5610088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  (*(v6 + 16))(&v47 - v11, v3, v5);
  sub_1D560F1E8();
  v12 = sub_1D5615298();

  if (v12)
  {
    v13 = *(v6 + 8);
LABEL_4:
    v15 = OUTLINED_FUNCTION_63_1();
    v13(v15);
    sub_1D560D908();
    goto LABEL_5;
  }

  sub_1D560F1C8();
  sub_1D4EC620C();
  v14 = OUTLINED_FUNCTION_0_11();
  v13 = *(v6 + 8);
  (v13)(v10, v5);
  if (v14)
  {
    goto LABEL_4;
  }

  sub_1D560F698();
  OUTLINED_FUNCTION_4_107();
  OUTLINED_FUNCTION_3_143();
  if ((v2 & 1) == 0)
  {
    sub_1D560F668();
    OUTLINED_FUNCTION_0_11();
    v20 = OUTLINED_FUNCTION_2_139();
    v13(v20);
    if ((v14 & 1) == 0)
    {
      if (qword_1EDD552E0 != -1)
      {
        swift_once();
      }

      if (sub_1D5615298())
      {
        v22 = OUTLINED_FUNCTION_63_1();
        v13(v22);
        if (qword_1EDD53C80 != -1)
        {
          swift_once();
        }

        v23 = sub_1D560D9A8();
        v24 = v23;
        v25 = qword_1EDD53C88;
      }

      else
      {
        sub_1D5610E88();
        OUTLINED_FUNCTION_4_107();
        OUTLINED_FUNCTION_3_143();
        if (v2)
        {
          v26 = OUTLINED_FUNCTION_63_1();
          v13(v26);
          if (qword_1EC7E9090 != -1)
          {
            swift_once();
          }

          v23 = sub_1D560D9A8();
          v24 = v23;
          v25 = qword_1EC7F1B20;
        }

        else
        {
          sub_1D560F9D8();
          OUTLINED_FUNCTION_4_107();
          OUTLINED_FUNCTION_3_143();
          if (qword_1EDD56770 != -1)
          {
            swift_once();
          }

          if (sub_1D5615298())
          {
            v28 = OUTLINED_FUNCTION_63_1();
            v13(v28);
            if (qword_1EDD53D70 != -1)
            {
              swift_once();
            }

            v23 = sub_1D560D9A8();
            v24 = v23;
            v25 = qword_1EDD53D78;
          }

          else
          {
            sub_1D560F358();
            OUTLINED_FUNCTION_4_107();
            OUTLINED_FUNCTION_3_143();
            if (v2)
            {
              v29 = OUTLINED_FUNCTION_63_1();
              v13(v29);
              sub_1D560D918();
              goto LABEL_5;
            }

            if (qword_1EDD5C7A0 != -1)
            {
              swift_once();
            }

            if (sub_1D5615298())
            {
              v30 = OUTLINED_FUNCTION_63_1();
              v13(v30);
              if (qword_1EDD53D48 != -1)
              {
                swift_once();
              }

              v23 = sub_1D560D9A8();
              v24 = v23;
              v25 = qword_1EDD53D50;
            }

            else
            {
              sub_1D560CF58();
              OUTLINED_FUNCTION_4_107();
              OUTLINED_FUNCTION_3_143();
              if (v2 & 1) != 0 || (sub_1D560CF38(), OUTLINED_FUNCTION_0_11(), v31 = OUTLINED_FUNCTION_2_139(), v13(v31), (v14))
              {
                v32 = OUTLINED_FUNCTION_63_1();
                v13(v32);
                sub_1D560D878();
                goto LABEL_5;
              }

              sub_1D5610278();
              OUTLINED_FUNCTION_4_107();
              OUTLINED_FUNCTION_3_143();
              if (v2 & 1) != 0 || (sub_1D56100D8(), OUTLINED_FUNCTION_0_11(), v33 = OUTLINED_FUNCTION_2_139(), v13(v33), (v14))
              {
                v34 = OUTLINED_FUNCTION_63_1();
                v13(v34);
                sub_1D560D968();
                goto LABEL_5;
              }

              sub_1D5611B48();
              OUTLINED_FUNCTION_0_11();
              v35 = OUTLINED_FUNCTION_2_139();
              v13(v35);
              sub_1D5610B38();
              OUTLINED_FUNCTION_4_107();
              OUTLINED_FUNCTION_3_143();
              if (v2)
              {
                v36 = OUTLINED_FUNCTION_63_1();
                v13(v36);
                sub_1D560D888();
                goto LABEL_5;
              }

              sub_1D56118C8();
              OUTLINED_FUNCTION_4_107();
              OUTLINED_FUNCTION_3_143();
              sub_1D5614908();
              OUTLINED_FUNCTION_4_107();
              OUTLINED_FUNCTION_3_143();
              sub_1D56148E8();
              v37 = OUTLINED_FUNCTION_0_11();
              (v13)(v10, v5);
              if (v37)
              {
                v38 = OUTLINED_FUNCTION_63_1();
                v13(v38);
                sub_1D560D8E8();
                goto LABEL_5;
              }

              sub_1D560FBE8();
              v39 = sub_1D5615298();

              if (v39)
              {
                v40 = OUTLINED_FUNCTION_63_1();
                v13(v40);
                sub_1D560D958();
                goto LABEL_5;
              }

              if (qword_1EDD57200 != -1)
              {
                swift_once();
              }

              if (sub_1D5615298())
              {
                v41 = OUTLINED_FUNCTION_63_1();
                v13(v41);
                if (qword_1EDD53C38 != -1)
                {
                  swift_once();
                }

                v23 = sub_1D560D9A8();
                v24 = v23;
                v25 = qword_1EDD53C40;
              }

              else
              {
                if (qword_1EDD578A8 != -1)
                {
                  swift_once();
                }

                if (sub_1D5615298())
                {
                  v42 = OUTLINED_FUNCTION_63_1();
                  v13(v42);
                  if (qword_1EDD53C58 != -1)
                  {
                    swift_once();
                  }

                  v23 = sub_1D560D9A8();
                  v24 = v23;
                  v25 = qword_1EDD53C60;
                }

                else
                {
                  if (qword_1EDD588B0 != -1)
                  {
                    swift_once();
                  }

                  if (sub_1D5615298())
                  {
                    v43 = OUTLINED_FUNCTION_63_1();
                    v13(v43);
                    if (qword_1EC7E95E8 != -1)
                    {
                      swift_once();
                    }

                    v23 = sub_1D560D9A8();
                    v24 = v23;
                    v25 = qword_1EC7F5D98;
                  }

                  else
                  {
                    if (qword_1EDD56520 != -1)
                    {
                      swift_once();
                    }

                    if (sub_1D5615298())
                    {
                      v44 = OUTLINED_FUNCTION_63_1();
                      v13(v44);
                      if (qword_1EC7E8F18 != -1)
                      {
                        swift_once();
                      }

                      v23 = sub_1D560D9A8();
                      v24 = v23;
                      v25 = qword_1EC7F08A0;
                    }

                    else
                    {
                      if (qword_1EDD562A8 != -1)
                      {
                        swift_once();
                      }

                      v45 = sub_1D5615298();
                      v46 = OUTLINED_FUNCTION_63_1();
                      v13(v46);
                      if ((v45 & 1) == 0)
                      {
                        v16 = sub_1D560D9A8();
                        v17 = a1;
                        v18 = 1;
                        return __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
                      }

                      if (qword_1EDD53CE8 != -1)
                      {
                        swift_once();
                      }

                      v23 = sub_1D560D9A8();
                      v24 = v23;
                      v25 = qword_1EDD53CF0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v27 = __swift_project_value_buffer(v23, v25);
      (*(*(v24 - 8) + 16))(a1, v27, v24);
      v17 = a1;
      v18 = 0;
      v16 = v24;
      return __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
    }
  }

  v21 = OUTLINED_FUNCTION_63_1();
  v13(v21);
  sub_1D560D938();
LABEL_5:
  v16 = sub_1D560D9A8();
  v17 = a1;
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
}

uint64_t MusicLibrary.pinsObserver.getter()
{
  sub_1D4E5A1CC();
  sub_1D5329168();
  OUTLINED_FUNCTION_107_5();

  return v0;
}

uint64_t sub_1D5328DA4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v2)
        {
          if (v2 != 1)
          {
            OUTLINED_FUNCTION_179_6();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v7 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_54_31();
              if (!v7)
              {
                break;
              }

              v8 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_40_0();
              if (v7)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v7 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_54_31();
            if (!v7)
            {
              break;
            }

            v8 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v7)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v2)
      {
        if (v2 != 1)
        {
          OUTLINED_FUNCTION_179_6();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v7 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_54_31();
            if (!v7)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v7)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v4 = sub_1D5615C58();
      }

      result = OUTLINED_FUNCTION_329_0(v4);
      if (v7)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_80_7();
              while (1)
              {
                OUTLINED_FUNCTION_22_0();
                if (!v7 & v9)
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_54_31();
                if (!v7)
                {
                  goto LABEL_72;
                }

                v8 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_72;
                }

                OUTLINED_FUNCTION_40_0();
                if (v7)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_72;
        }

        goto LABEL_83;
      }

      if (v6 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (result)
          {
            v19 = 10;
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_72;
              }

              v21 = 10 * v8;
              if ((v8 * v19) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_72;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_72;
              }

              result = OUTLINED_FUNCTION_324_0(result);
              if (v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_72:
        v8 = 0;
        v12 = 1;
        goto LABEL_73;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_80_7();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v7 & v9)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_54_31();
              if (!v7)
              {
                goto LABEL_72;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_40_0();
              if (v7)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_63:
          v12 = 0;
LABEL_73:
          v24 = v12;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v8 = sub_1D533F9CC(result, a2, 10);
  v24 = v25;
LABEL_74:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t MusicLibrary.cloudStatusController.getter()
{
  v0 = *(sub_1D4E5A1CC() + 48);

  return v0;
}

id MusicLibrary.isRemovalRestricted.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D533F4D0(0xD000000000000017, 0x80000001D568B260);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D38();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id MusicLibrary.isDownloadActionAvailable.getter()
{
  v0 = sub_1D4E5A1CC();
  v1 = v0[6];

  v2 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  OUTLINED_FUNCTION_107_5();

  v3 = [v0 canShowCloudDownloadButtons];

  return v3;
}

uint64_t sub_1D5329168()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 48);
    v4 = *(v2 + 56);
    v5 = type metadata accessor for MusicLibraryPinsObserver(0);
    OUTLINED_FUNCTION_2_19(v5);

    sub_1D51FDCD0();
    v1 = v6;
    v7 = *(v2 + 64);
    *(v2 + 64) = v6;
  }

  return v1;
}

uint64_t MusicLibrary.add<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_194_6(v3, v4, v5, v6, v7);
  v2[14] = v8;
  v10 = *(v9 + 64);
  v2[15] = OUTLINED_FUNCTION_167();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v11 = sub_1D5613838();
  v2[18] = v11;
  v12 = sub_1D5613D28();
  v2[19] = v12;
  v2[2] = v1;
  v13 = MEMORY[0x1E6976BB0];
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v0;
  v2[6] = v13;
  v2[7] = MEMORY[0x1E6976E50];
  v14 = type metadata accessor for MusicLibraryImportChangeRequest();
  v2[20] = v14;
  OUTLINED_FUNCTION_69(v14);
  v2[21] = v15;
  v17 = *(v16 + 64);
  v2[22] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_167();
  v22 = OUTLINED_FUNCTION_297_1(v21);
  OUTLINED_FUNCTION_259_0(v22);
  v23 = sub_1D560C368();
  v2[25] = v23;
  OUTLINED_FUNCTION_69(v23);
  v2[26] = v24;
  v26 = *(v25 + 64);
  v2[27] = OUTLINED_FUNCTION_127();
  v27 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D5329688()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (v0)
  {
    v9 = *(v3 + 232);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5329788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_300_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = v18[33];
  if (v22)
  {
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v17 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v17 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed add operation for item %{public}s");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v36 = v18[29];
    v37 = v18[14];
    v16 = v18[15];
    v38 = v18[9];

    v39 = OUTLINED_FUNCTION_128();
    v23(v39);
  }

  OUTLINED_FUNCTION_207_3();
  v40 = OUTLINED_FUNCTION_327_0();
  v41(v40);
  sub_1D4E7661C(v16, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D5329930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[27];
  v13 = v10[23];
  v12 = v10[24];
  v15 = v10[16];
  v14 = v10[17];
  v16 = v10[15];
  (*(v10[21] + 8))(v10[22], v10[20]);
  sub_1D4E7661C(v12, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_55();
  v17 = v10[35];
  OUTLINED_FUNCTION_25_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D5329A08()
{
  OUTLINED_FUNCTION_60();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[27] = v5;
  v1[28] = v6;
  v1[18] = v7;
  v1[25] = v8;
  v1[26] = v7;
  v1[19] = v5;
  v1[20] = v6;
  v1[21] = v3;
  v1[22] = v4;
  v1[23] = v2;
  v9 = type metadata accessor for MusicLibraryImportChangeRequest();
  v1[33] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[34] = v10;
  v1[35] = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5329AD8()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[25];
  v4 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1(v4);
  v0[37] = v5;
  v6 = v5;
  OUTLINED_FUNCTION_183();

  v7 = *(v3 + *(v2 + 80));
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1D5329C18;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D553D18C;
  v0[13] = &block_descriptor_188;
  v0[14] = v8;
  [v1 performLibraryImportChangeWithRequest:v7 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1D5329C18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5329D14()
{
  OUTLINED_FUNCTION_100();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v17 = *(v0 + 240);

  v8 = *(v4 + 16);
  v9 = OUTLINED_FUNCTION_182_3();
  v10(v9);
  v11 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = v17;
  v13 = *(v4 + 32);
  OUTLINED_FUNCTION_102();
  v14();
  sub_1D4FDC9B8();

  OUTLINED_FUNCTION_22_1();

  return v15();
}

uint64_t sub_1D5329E34()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v5 = v0[38];

  return v4();
}

uint64_t MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v9 = OUTLINED_FUNCTION_145_8(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_312_0(v12);
  v0[21] = v13;
  v15 = *(v14 + 64);
  v0[22] = OUTLINED_FUNCTION_167();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_297_1(v16);
  v18 = OUTLINED_FUNCTION_235_1(v17);
  v0[25] = v18;
  OUTLINED_FUNCTION_69(v18);
  v0[26] = v19;
  v21 = *(v20 + 64);
  v22 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258_2(v22);
  v23 = sub_1D560C368();
  v0[28] = v23;
  OUTLINED_FUNCTION_69(v23);
  v0[29] = v24;
  v26 = *(v25 + 64);
  v0[30] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_348_0();
  return OUTLINED_FUNCTION_223_4(v27, v28, v29);
}

uint64_t sub_1D5329FEC()
{
  v62 = v1;
  OUTLINED_FUNCTION_118_11();
  v6 = sub_1D560C338();
  v8 = v7;
  v58 = v6;
  v1[31] = v6;
  v1[32] = v7;
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_74_0();
  v11(v10);
  v14 = *(v3 + 16);
  v12 = v3 + 16;
  v13 = v14;
  v1[33] = v14;
  v1[34] = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15 = OUTLINED_FUNCTION_159();
  v14(v15);
  OUTLINED_FUNCTION_24_0(v5);
  (*(v16 + 16))(v4, v59, v5);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);

  v20 = OUTLINED_FUNCTION_170_5();
  sub_1D4F5AA20(v20, v21, v22, 1, v23, v5, v24, v2, v25, v55, v56, v57);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v26 = OUTLINED_FUNCTION_345_0();
  v1[35] = __swift_project_value_buffer(v26, qword_1EC87C110);
  v27 = OUTLINED_FUNCTION_182_3();
  v13(v27);

  v28 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v60 = v8;
    v30 = v1[23];
    v29 = v1[24];
    v31 = v1[21];
    v32 = v1[11];
    OUTLINED_FUNCTION_144();
    v61 = OUTLINED_FUNCTION_137_11();
    OUTLINED_FUNCTION_303_1(4.8752e-34);
    v34 = sub_1D4E6835C(v58, v60, v33);
    OUTLINED_FUNCTION_41_41(v34);
    (v13)(v29, v30, v32);
    sub_1D5614DB8();
    v35 = OUTLINED_FUNCTION_278_1();
    v13(v35);
    v36 = sub_1D4E6835C(v29, v12, &v61);

    *(v12 + 14) = v36;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    OUTLINED_FUNCTION_238_2();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v42 = v1[23];
    v43 = v1[21];
    v44 = v1[11];

    v13 = *(v43 + 8);
    v45 = OUTLINED_FUNCTION_128();
    v13(v45);
  }

  v1[36] = v13;
  v46 = swift_task_alloc();
  v1[37] = v46;
  *v46 = v1;
  v46[1] = sub_1D532A2C8;
  v47 = v1[18];
  v48 = v1[19];
  v49 = v1[16];
  v50 = v1[17];
  v51 = v1[13];
  v52 = v1[14];
  v53 = v1[12];
  OUTLINED_FUNCTION_93_0(v1[27]);

  return sub_1D5329A08();
}

uint64_t sub_1D532A2C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 304) = v0;

  if (v0)
  {
    v9 = *(v3 + 256);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D532A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_260_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = v17[36];
  if (v22)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v16 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v16 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed add operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v36 = v17[32];
    v38 = v17[21];
    v37 = v17[22];
    v39 = v17[11];

    v40 = OUTLINED_FUNCTION_128();
    v23(v40);
  }

  OUTLINED_FUNCTION_231_2();
  v41 = *(v18 + 8);
  v42 = OUTLINED_FUNCTION_128();
  v43(v42);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D532A558()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v1 = v0[30];
  v2 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  (*(v0[26] + 8))(v0[27], v0[25]);

  OUTLINED_FUNCTION_55();
  v6 = v0[38];
  OUTLINED_FUNCTION_376();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t MusicLibrary.import<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_194_6(v3, v4, v5, v6, v7);
  v2[14] = v8;
  v10 = *(v9 + 64);
  v2[15] = OUTLINED_FUNCTION_167();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v11 = sub_1D5613838();
  v2[18] = v11;
  v12 = sub_1D5613D28();
  v2[19] = v12;
  v2[2] = v1;
  v13 = MEMORY[0x1E6976BB0];
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v0;
  v2[6] = v13;
  v2[7] = MEMORY[0x1E6976E50];
  v14 = type metadata accessor for MusicLibraryImportChangeRequest();
  v2[20] = v14;
  OUTLINED_FUNCTION_69(v14);
  v2[21] = v15;
  v17 = *(v16 + 64);
  v2[22] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_167();
  v22 = OUTLINED_FUNCTION_297_1(v21);
  OUTLINED_FUNCTION_259_0(v22);
  v23 = sub_1D560C368();
  v2[25] = v23;
  OUTLINED_FUNCTION_69(v23);
  v2[26] = v24;
  v26 = *(v25 + 64);
  v2[27] = OUTLINED_FUNCTION_127();
  v27 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D532AAAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (v0)
  {
    v9 = *(v3 + 232);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D532ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_300_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = v18[33];
  if (v22)
  {
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v17 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v17 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed import operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v36 = v18[29];
    v37 = v18[14];
    v16 = v18[15];
    v38 = v18[9];

    v39 = OUTLINED_FUNCTION_128();
    v23(v39);
  }

  OUTLINED_FUNCTION_207_3();
  v40 = OUTLINED_FUNCTION_327_0();
  v41(v40);
  sub_1D4E7661C(v16, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MusicLibrary.import<A, B, C, D>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v9 = OUTLINED_FUNCTION_145_8(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_312_0(v12);
  v0[21] = v13;
  v15 = *(v14 + 64);
  v0[22] = OUTLINED_FUNCTION_167();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_297_1(v16);
  v18 = OUTLINED_FUNCTION_235_1(v17);
  v0[25] = v18;
  OUTLINED_FUNCTION_69(v18);
  v0[26] = v19;
  v21 = *(v20 + 64);
  v22 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258_2(v22);
  v23 = sub_1D560C368();
  v0[28] = v23;
  OUTLINED_FUNCTION_69(v23);
  v0[29] = v24;
  v26 = *(v25 + 64);
  v0[30] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_348_0();
  return OUTLINED_FUNCTION_223_4(v27, v28, v29);
}

uint64_t sub_1D532AE98()
{
  v62 = v1;
  OUTLINED_FUNCTION_118_11();
  v6 = sub_1D560C338();
  v8 = v7;
  v58 = v6;
  v1[31] = v6;
  v1[32] = v7;
  v9 = *(v0 + 8);
  v10 = OUTLINED_FUNCTION_74_0();
  v11(v10);
  v14 = *(v3 + 16);
  v12 = v3 + 16;
  v13 = v14;
  v1[33] = v14;
  v1[34] = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15 = OUTLINED_FUNCTION_159();
  v14(v15);
  OUTLINED_FUNCTION_24_0(v5);
  (*(v16 + 16))(v4, v59, v5);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);

  v20 = OUTLINED_FUNCTION_170_5();
  sub_1D4F5AA20(v20, v21, v22, 0, v23, v5, v24, v2, v25, v55, v56, v57);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v26 = OUTLINED_FUNCTION_345_0();
  v1[35] = __swift_project_value_buffer(v26, qword_1EC87C110);
  v27 = OUTLINED_FUNCTION_182_3();
  v13(v27);

  v28 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v60 = v8;
    v30 = v1[23];
    v29 = v1[24];
    v31 = v1[21];
    v32 = v1[11];
    OUTLINED_FUNCTION_144();
    v61 = OUTLINED_FUNCTION_137_11();
    OUTLINED_FUNCTION_303_1(4.8752e-34);
    v34 = sub_1D4E6835C(v58, v60, v33);
    OUTLINED_FUNCTION_41_41(v34);
    (v13)(v29, v30, v32);
    sub_1D5614DB8();
    v35 = OUTLINED_FUNCTION_278_1();
    v13(v35);
    v36 = sub_1D4E6835C(v29, v12, &v61);

    *(v12 + 14) = v36;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    OUTLINED_FUNCTION_238_2();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v42 = v1[23];
    v43 = v1[21];
    v44 = v1[11];

    v13 = *(v43 + 8);
    v45 = OUTLINED_FUNCTION_128();
    v13(v45);
  }

  v1[36] = v13;
  v46 = swift_task_alloc();
  v1[37] = v46;
  *v46 = v1;
  v46[1] = sub_1D532B174;
  v47 = v1[18];
  v48 = v1[19];
  v49 = v1[16];
  v50 = v1[17];
  v51 = v1[13];
  v52 = v1[14];
  v53 = v1[12];
  OUTLINED_FUNCTION_93_0(v1[27]);

  return sub_1D5329A08();
}

uint64_t sub_1D532B174()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 304) = v0;

  if (v0)
  {
    v9 = *(v3 + 256);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D532B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_260_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = v17[36];
  if (v22)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v16 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v16 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed import operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v36 = v17[32];
    v38 = v17[21];
    v37 = v17[22];
    v39 = v17[11];

    v40 = OUTLINED_FUNCTION_128();
    v23(v40);
  }

  OUTLINED_FUNCTION_231_2();
  v41 = *(v18 + 8);
  v42 = OUTLINED_FUNCTION_128();
  v43(v42);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MusicLibrary.add<A>(_:to:tracks:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v6;
  v1[32] = v4;
  v1[29] = v7;
  v1[30] = v8;
  v1[27] = v9;
  v1[28] = v10;
  v11 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v14 = sub_1D5614898();
  v1[36] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[37] = v15;
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_127();
  v18 = sub_1D5613AF8();
  v1[18] = v5;
  v1[39] = v18;
  v1[19] = v18;
  v1[20] = v3;
  v1[21] = MEMORY[0x1E6976CF0];
  v19 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  v1[40] = v19;
  OUTLINED_FUNCTION_69(v19);
  v1[41] = v20;
  v22 = *(v21 + 64);
  v1[42] = OUTLINED_FUNCTION_127();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  v1[43] = OUTLINED_FUNCTION_167();
  v1[44] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1D532B590()
{
  v36 = v0;
  v1 = v0[44];
  v30 = v0[43];
  v34 = v0[42];
  v2 = v0[38];
  v32 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v33 = v0[33];
  v31 = v0[31];
  v29 = v0[30];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = OUTLINED_FUNCTION_45_1();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
  (*(v3 + 16))(v2, v8, v4);
  OUTLINED_FUNCTION_24_0(v6);
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_45_3();
  v16(v15);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
  v0[26] = v7;
  v35 = 1;
  sub_1D533F530(v1, v30, &qword_1EC7EEC30, &unk_1D5620CE0);

  sub_1D4EA73A4(v29);
  v20 = OUTLINED_FUNCTION_159();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_102();
  sub_1D51ADFE8(v23, v24, v25);
  sub_1D50580F4(v2, v5, (v0 + 26), &v35, v30, v29, v31, v6, v34, v32, v22, v33, MEMORY[0x1E6976CF0]);
  v26 = swift_task_alloc();
  v0[45] = v26;
  *v26 = v0;
  v26[1] = sub_1D532B7A8;
  v27 = v0[42];
  OUTLINED_FUNCTION_93_0(v0[40]);

  return sub_1D50585C0();
}

uint64_t sub_1D532B7A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 360);
  *v3 = *v1;
  *(v2 + 368) = v6;
  *(v2 + 376) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532B8A8()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_304_1();
  v4 = v1[46];
  v5 = v1[34];
  v6 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v6);
  v1[48] = v7;
  v8 = v7;
  OUTLINED_FUNCTION_103_13();

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D532B9BC;
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_136_10(v10);
  v1[11] = 1107296256;
  v1[12] = sub_1D5341F98;
  v1[13] = &block_descriptor_20;
  v1[14] = v9;
  [v2 performAddToPlaylistWithRequest:v4 completionHandler:v0];
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1D532B9BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D532BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 384);
  v12 = *(v10 + 344);
  v13 = *(v10 + 352);
  v15 = *(v10 + 328);
  v14 = *(v10 + 336);
  v16 = *(v10 + 320);
  v17 = *(v10 + 304);
  v18 = *(v10 + 280);

  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_70();
  v21(v20);
  sub_1D4E7661C(v13, &qword_1EC7EEC30, &unk_1D5620CE0);
  __swift_destroy_boxed_opaque_existential_1((v10 + 176));

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_348_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1D532BB90()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[44];
  (*(v0[41] + 8))(v0[42], v0[40]);
  sub_1D4E7661C(v1, &qword_1EC7EEC30, &unk_1D5620CE0);
  v2 = v0[47];
  OUTLINED_FUNCTION_339();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D532BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = v10[48];
  v11 = v10[49];
  v13 = v10[46];
  v14 = v10[44];
  v16 = v10[41];
  v15 = v10[42];
  v17 = v10[40];
  swift_willThrow();

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_81_0();
  v20(v19);
  sub_1D4E7661C(v14, &qword_1EC7EEC30, &unk_1D5620CE0);

  v21 = v10[49];
  OUTLINED_FUNCTION_339();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t MusicLibrary.add<A, B>(_:to:referralItem:tracks:importAllowedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v19 = v18;
  v21 = v20;
  v17[36] = a16;
  v17[37] = v16;
  v17[34] = v18;
  v17[35] = a15;
  v17[32] = v22;
  v17[33] = v20;
  v17[30] = v23;
  v17[31] = v24;
  v17[28] = v25;
  v17[29] = v26;
  OUTLINED_FUNCTION_258_2(v27);
  v28 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  v17[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v31 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v17[39] = OUTLINED_FUNCTION_127();
  v34 = sub_1D5614898();
  v17[40] = v34;
  OUTLINED_FUNCTION_69(v34);
  v17[41] = v35;
  v37 = *(v36 + 64);
  v17[42] = OUTLINED_FUNCTION_127();
  v17[18] = v21;
  v17[19] = v19;
  v17[20] = a15;
  v17[21] = a16;
  v38 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  v17[43] = v38;
  OUTLINED_FUNCTION_69(v38);
  v17[44] = v39;
  v41 = *(v40 + 64);
  v17[45] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v42, v43, v44);
}

uint64_t sub_1D532C070()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 368);
  *v3 = *v1;
  *(v2 + 376) = v6;
  *(v2 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532C170()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_304_1();
  v4 = v1[47];
  v5 = v1[37];
  v6 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v6);
  v1[49] = v7;
  v8 = v7;
  OUTLINED_FUNCTION_103_13();

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D532C284;
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_136_10(v10);
  v1[11] = 1107296256;
  v1[12] = sub_1D5341F98;
  v1[13] = &block_descriptor_14;
  v1[14] = v9;
  [v2 performAddToPlaylistWithRequest:v4 completionHandler:v0];
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1D532C284()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D532C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 392);
  v13 = *(v10 + 352);
  v12 = *(v10 + 360);
  v15 = *(v10 + 336);
  v14 = *(v10 + 344);
  v17 = *(v10 + 304);
  v16 = *(v10 + 312);

  v18 = *(v13 + 8);
  v19 = OUTLINED_FUNCTION_159();
  v20(v19);
  __swift_destroy_boxed_opaque_existential_1((v10 + 176));

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1D532C430()
{
  OUTLINED_FUNCTION_80();
  (*(v0[44] + 8))(v0[45], v0[43]);
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D532C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[49];
  v11 = v10[50];
  v13 = v10[47];
  v15 = v10[44];
  v14 = v10[45];
  v16 = v10[43];
  swift_willThrow();

  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_159();
  v19(v18);

  v20 = v10[50];
  v21 = v10[45];
  v22 = v10[42];
  v24 = v10[38];
  v23 = v10[39];

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t *sub_1D532C580(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514(v6, v7);
  }

  else if (a2)
  {
    v9 = MEMORY[0x1E69E7C98] + 8;
    *&v8 = a2;
    swift_unknownObjectRetain();
    return sub_1D4F231B8(v6, &v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_275_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  *(v1 + 105) = *v0;
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_275_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  *(v1 + 105) = *v0;
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D532C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_80();
  v20 = *(v19 + 105);
  v21 = *(v19 + 80);
  sub_1D5613AF8();
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_176_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v19 + 104) = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v19 + 88) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_224_3(v26);
  OUTLINED_FUNCTION_323();

  return MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D532C774()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D532C86C()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E7661C(*(v0 + 80), &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D532C8E0()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E7661C(*(v0 + 80), &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v22 = v21;
  v24 = v23;
  *(v20 + 328) = a19;
  *(v20 + 336) = v19;
  *(v20 + 312) = a17;
  *(v20 + 320) = a18;
  *(v20 + 296) = v25;
  *(v20 + 304) = v21;
  *(v20 + 280) = v26;
  *(v20 + 288) = v27;
  *(v20 + 264) = v28;
  *(v20 + 272) = v29;
  *(v20 + 256) = v30;
  v31 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  *(v20 + 344) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  v34 = sub_1D56158D8();
  *(v20 + 352) = v34;
  OUTLINED_FUNCTION_69(v34);
  *(v20 + 360) = v35;
  v37 = *(v36 + 64);
  *(v20 + 368) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v38 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  *(v20 + 376) = OUTLINED_FUNCTION_127();
  v41 = *(a19 + 8);
  *(v20 + 384) = v41;
  *(v20 + 184) = v22;
  *(v20 + 192) = a17;
  *(v20 + 200) = a18;
  *(v20 + 208) = v41;
  v42 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  *(v20 + 392) = v42;
  OUTLINED_FUNCTION_69(v42);
  *(v20 + 400) = v43;
  v45 = *(v44 + 64);
  *(v20 + 408) = OUTLINED_FUNCTION_127();
  v46 = sub_1D5614898();
  *(v20 + 416) = v46;
  OUTLINED_FUNCTION_69(v46);
  *(v20 + 424) = v47;
  *(v20 + 432) = *(v48 + 64);
  *(v20 + 440) = OUTLINED_FUNCTION_167();
  *(v20 + 448) = swift_task_alloc();
  *(v20 + 456) = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  *(v20 + 464) = v49;
  *(v20 + 472) = *(v50 + 64);
  *(v20 + 480) = OUTLINED_FUNCTION_167();
  *(v20 + 488) = swift_task_alloc();
  v51 = sub_1D560C368();
  *(v20 + 496) = v51;
  OUTLINED_FUNCTION_69(v51);
  *(v20 + 504) = v52;
  v54 = *(v53 + 64);
  *(v20 + 512) = OUTLINED_FUNCTION_127();
  *(v20 + 625) = *v24;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_376();
  return OUTLINED_FUNCTION_223_4(v55, v56, v57);
}

uint64_t sub_1D532CBD4()
{
  v98 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  sub_1D560C358();
  v4 = sub_1D560C338();
  v6 = v5;
  v91 = v4;
  *(v0 + 520) = v4;
  *(v0 + 528) = v5;
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_159();
  v9(v8);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v10 = *(v0 + 488);
  v11 = *(v0 + 464);
  v94 = *(v0 + 456);
  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  v14 = *(v0 + 304);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = sub_1D560C758();
  *(v0 + 536) = __swift_project_value_buffer(v17, qword_1EC87C110);
  v19 = *(v11 + 16);
  v18 = v11 + 16;
  *(v0 + 544) = v19;
  *(v0 + 552) = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = OUTLINED_FUNCTION_184();
  v95 = v21;
  v21(v20);
  v22 = *(v13 + 16);
  *(v0 + 560) = v22;
  *(v0 + 568) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v93 = v22;
  (v22)(v94, v15, v12);

  v23 = sub_1D560C738();
  v24 = sub_1D56156E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v6;
    v86 = *(v0 + 625);
    v26 = *(v0 + 480);
    v27 = *(v0 + 488);
    v28 = *(v0 + 464);
    v29 = *(v0 + 424);
    v82 = *(v0 + 416);
    v84 = *(v0 + 456);
    v89 = v24;
    v30 = *(v0 + 304);
    v31 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v31 = 136446978;
    v32 = sub_1D4E6835C(v91, v25, &v97);
    v33 = OUTLINED_FUNCTION_233_2(v32);
    v95(v33);
    OUTLINED_FUNCTION_131();
    sub_1D5614DB8();
    v34 = OUTLINED_FUNCTION_254_2();
    v35(v34);
    v36 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v36, v37, v38);
    OUTLINED_FUNCTION_333_0();

    *(v31 + 14) = v30;
    *(v31 + 22) = v18;
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v39, 255, v40);
    sub_1D56160F8();
    v41 = OUTLINED_FUNCTION_280_0();
    v25(v41);
    v42 = OUTLINED_FUNCTION_121();
    v45 = sub_1D4E6835C(v42, v43, v44);

    *(v31 + 24) = v45;
    *(v31 + 32) = v18;
    *(v0 + 624) = v86;
    v46 = sub_1D5614DB8();
    sub_1D4E6835C(v46, v47, &v97);
    OUTLINED_FUNCTION_103_13();

    *(v31 + 34) = v26;
    OUTLINED_FUNCTION_346_0(&dword_1D4E3F000, "[%{public}s] Adding %{public}s to %{public}s with duplicate policy %{public}s.", v89);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v48 = *(v0 + 488);
    v49 = *(v0 + 456);
    v50 = *(v0 + 464);
    v51 = *(v0 + 416);
    v52 = *(v0 + 424);
    v53 = *(v0 + 304);

    v25 = *(v52 + 8);
    v54 = OUTLINED_FUNCTION_70();
    v25(v54);
    v55 = *(v50 + 8);
    v56 = OUTLINED_FUNCTION_121();
    v57(v56);
  }

  *(v0 + 576) = v25;
  v81 = *(v0 + 625);
  v58 = *(v0 + 416);
  v59 = *(v0 + 376);
  v90 = *(v0 + 384);
  v92 = *(v0 + 408);
  v60 = *(v0 + 360);
  v83 = *(v0 + 368);
  v61 = *(v0 + 352);
  v85 = *(v0 + 320);
  v87 = *(v0 + 448);
  v88 = *(v0 + 312);
  v63 = *(v0 + 296);
  v62 = *(v0 + 304);
  v65 = *(v0 + 280);
  v64 = *(v0 + 288);
  v67 = *(v0 + 264);
  v66 = *(v0 + 272);
  v93();
  v68 = OUTLINED_FUNCTION_93();
  v95(v68);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v62);
  *(v0 + 248) = 0;
  v96 = v81;
  v72 = *(v60 + 16);
  v73 = OUTLINED_FUNCTION_258();
  v74(v73);
  v75 = v64;
  sub_1D4EA73A4(v64);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
  OUTLINED_FUNCTION_96();
  sub_1D51ADFE8(v77, &qword_1EC7EFBD8, &unk_1D56346A0);
  sub_1D50580F4(v87, v59, v0 + 248, &v96, v83, v75, v63, v62, v92, v88, v76, v85, v90);
  v78 = swift_task_alloc();
  *(v0 + 584) = v78;
  *v78 = v0;
  v78[1] = sub_1D532D09C;
  v79 = *(v0 + 408);
  OUTLINED_FUNCTION_93_0(*(v0 + 392));

  return sub_1D50585C0();
}

uint64_t sub_1D532D09C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 584);
  *v4 = *v1;
  v3[74] = v7;
  v3[75] = v0;

  if (v0)
  {
    v8 = v3[66];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D532D1A8()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[74];
  v3 = v0[67];
  v4 = v0[66];

  v5 = v2;
  v6 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    v7 = v0[74];
    v8 = v0[66];
    v9 = v0[65];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v4 = 136446466;
    v10 = OUTLINED_FUNCTION_45_3();
    v13 = sub_1D4E6835C(v10, v11, v12);
    v14 = OUTLINED_FUNCTION_289_0(v13);
    v1 = [v14 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v15 = OUTLINED_FUNCTION_210();
    v18 = sub_1D4E6835C(v15, v16, v17);

    *(v4 + 14) = v18;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v19, v20, "[%{public}s] Performing add to playlist request: %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  v21 = v0[74];
  v22 = v0[42];
  v23 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v23);
  v0[76] = v24;
  v25 = v24;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v26;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v27);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v28 = OUTLINED_FUNCTION_166_4();
  [v28 v29];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1D532D380()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 616) = v4;
  if (v4)
  {
    v5 = *(v1 + 528);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D532D480()
{
  v76 = *(v0 + 608);
  v67 = *(v0 + 568);
  v1 = *(v0 + 560);
  v71 = *(v0 + 528);
  v73 = *(v0 + 536);
  v69 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 344);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_267_2();
  v10();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_59_19();
  sub_1D5616158();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_59_19();
  v13(v12);

  v14 = MEMORY[0x1E69773A0];
  OUTLINED_FUNCTION_128();
  sub_1D560EC98();
  *(v0 + 168) = v2;
  *(v0 + 176) = v14;
  __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  OUTLINED_FUNCTION_102();
  v1();
  swift_unknownObjectRetain();
  sub_1D56144C8();
  (v1)(v69, v5, v2);

  v15 = sub_1D560C738();
  v16 = sub_1D56156E8();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 576);
  v19 = *(v0 + 528);
  if (v17)
  {
    v20 = *(v0 + 520);
    v21 = *(v0 + 440);
    v22 = *(v0 + 416);
    v74 = *(v0 + 424);
    v23 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v23 = 136446466;
    v24 = OUTLINED_FUNCTION_176();
    v27 = sub_1D4E6835C(v24, v25, v26);

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v28, 255, v29);
    OUTLINED_FUNCTION_361_0();
    OUTLINED_FUNCTION_261();
    v30 = OUTLINED_FUNCTION_74_0();
    v18(v30);
    v31 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_368();
    *(v23 + 14) = v21;
    _os_log_impl(&dword_1D4E3F000, v15, v16, "[%{public}s] Completed add to playlist request: %{public}s.", v23, 0x16u);
    OUTLINED_FUNCTION_238_2();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v34 = *(v0 + 440);
    v35 = *(v0 + 416);
    v36 = *(v0 + 424);
    v37 = *(v0 + 528);

    v38 = OUTLINED_FUNCTION_159();
    v18(v38);
  }

  v39 = *(v0 + 568);
  v40 = *(v0 + 560);
  v41 = *(v0 + 552);
  v63 = *(v0 + 592);
  v64 = *(v0 + 512);
  v57 = *(v0 + 480);
  v42 = *(v0 + 464);
  v59 = *(v0 + 472);
  v43 = *(v0 + 448);
  v65 = *(v0 + 488);
  v66 = *(v0 + 456);
  v68 = *(v0 + 440);
  v60 = *(v0 + 432);
  v45 = *(v0 + 416);
  v44 = *(v0 + 424);
  v46 = *(v0 + 400);
  v61 = *(v0 + 392);
  v62 = *(v0 + 408);
  v70 = *(v0 + 376);
  v72 = *(v0 + 368);
  v75 = *(v0 + 344);
  v56 = *(v0 + 304);
  v58 = *(v0 + 320);
  v47 = *(v0 + 304);
  v48 = *(v0 + 264);
  v49 = *(v0 + 272);
  (*(v0 + 544))();
  v50 = OUTLINED_FUNCTION_161();
  v40(v50);
  v51 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v52 = (v59 + *(v44 + 80) + v51) & ~*(v44 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v56;
  *(v53 + 32) = v58;
  (*(v42 + 32))(v53 + v51, v57, v47);
  (*(v44 + 32))(v53 + v52, v43, v45);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v46 + 8))(v62, v61);

  OUTLINED_FUNCTION_22_1();

  return v54();
}

uint64_t sub_1D532D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  (*(v12[50] + 8))(v12[51], v12[49]);
  v22 = v12[75];
  OUTLINED_FUNCTION_226_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_1D532D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[77];
  v16 = v14[76];
  v17 = v14[74];
  v19 = v14[50];
  v18 = v14[51];
  v20 = v14[49];
  swift_willThrow();

  v21 = *(v19 + 8);
  v22 = OUTLINED_FUNCTION_159();
  v23(v22);

  v33 = v14[77];
  OUTLINED_FUNCTION_226_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, a11, a12, a13, a14);
}

uint64_t sub_1D532DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[12] = a2;
  v6[13] = a3;
  v6[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D532DB04, 0, 0);
}

uint64_t sub_1D532DB04()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADA8, &unk_1D561DB90);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 56) = v1;
  *(inited + 64) = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  OUTLINED_FUNCTION_24_0(v1);
  (*(v5 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[17] = v6;
  *v6 = v7;
  v6[1] = sub_1D532DC18;
  v8 = v0[13];
  v9 = v0[11];

  return sub_1D542C4D8();
}

uint64_t sub_1D532DC18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  swift_setDeallocating();
  sub_1D4EFF288();
  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t MusicLibrary.add<A, B>(_:to:with:duplicatePolicy:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_211_3(v5, v6, v7, v8, v3, v9, v10, v11);
  *(v1 + 272) = v12;
  *(v1 + 280) = v13;
  *(v1 + 256) = v14;
  *(v1 + 264) = v15;
  *(v1 + 248) = v16;
  v17 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  *(v1 + 352) = OUTLINED_FUNCTION_127();
  v20 = sub_1D56158D8();
  *(v1 + 360) = v20;
  OUTLINED_FUNCTION_69(v20);
  *(v1 + 368) = v21;
  *(v1 + 376) = *(v22 + 64);
  *(v1 + 384) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v23 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  *(v1 + 392) = OUTLINED_FUNCTION_127();
  v26 = sub_1D5613AF8();
  *(v1 + 184) = v0;
  *(v1 + 400) = v26;
  *(v1 + 192) = v26;
  *(v1 + 200) = v2;
  *(v1 + 208) = MEMORY[0x1E6976CF0];
  v27 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  *(v1 + 408) = v27;
  OUTLINED_FUNCTION_69(v27);
  *(v1 + 416) = v28;
  v30 = *(v29 + 64);
  *(v1 + 424) = OUTLINED_FUNCTION_127();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  *(v1 + 432) = OUTLINED_FUNCTION_167();
  *(v1 + 440) = swift_task_alloc();
  v34 = sub_1D5614898();
  *(v1 + 448) = v34;
  OUTLINED_FUNCTION_69(v34);
  *(v1 + 456) = v35;
  *(v1 + 464) = *(v36 + 64);
  v37 = OUTLINED_FUNCTION_167();
  *(v1 + 480) = OUTLINED_FUNCTION_296_0(v37);
  *(v1 + 488) = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  *(v1 + 496) = v38;
  *(v1 + 504) = *(v39 + 64);
  *(v1 + 512) = OUTLINED_FUNCTION_167();
  *(v1 + 520) = swift_task_alloc();
  v40 = sub_1D560C368();
  *(v1 + 528) = v40;
  OUTLINED_FUNCTION_69(v40);
  *(v1 + 536) = v41;
  v43 = *(v42 + 64);
  *(v1 + 544) = OUTLINED_FUNCTION_127();
  *(v1 + 673) = *v4;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();
  return OUTLINED_FUNCTION_342_0(v44, v45, v46);
}

uint64_t sub_1D532DFCC()
{
  v101 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  sub_1D560C358();
  v4 = sub_1D560C338();
  v6 = v5;
  v94 = v4;
  *(v0 + 552) = v4;
  *(v0 + 560) = v5;
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_159();
  v9(v8);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v10 = *(v0 + 520);
  v11 = *(v0 + 496);
  v97 = *(v0 + 488);
  v12 = *(v0 + 448);
  v13 = *(v0 + 456);
  v14 = *(v0 + 304);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v17 = sub_1D560C758();
  *(v0 + 568) = __swift_project_value_buffer(v17, qword_1EC87C110);
  v19 = *(v11 + 16);
  v18 = v11 + 16;
  *(v0 + 576) = v19;
  *(v0 + 584) = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = OUTLINED_FUNCTION_184();
  v98 = v21;
  v21(v20);
  v22 = *(v13 + 16);
  *(v0 + 592) = v22;
  *(v0 + 600) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v96 = v22;
  v22(v97, v15, v12);

  v23 = sub_1D560C738();
  v24 = sub_1D56156E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v6;
    v89 = *(v0 + 673);
    v26 = *(v0 + 520);
    v27 = *(v0 + 512);
    v28 = *(v0 + 496);
    v29 = *(v0 + 456);
    v85 = *(v0 + 448);
    v87 = *(v0 + 488);
    v92 = v24;
    v30 = *(v0 + 304);
    v31 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v31 = 136446978;
    v32 = sub_1D4E6835C(v94, v25, v100);
    v33 = OUTLINED_FUNCTION_233_2(v32);
    v98(v33);
    OUTLINED_FUNCTION_131();
    sub_1D5614DB8();
    v34 = OUTLINED_FUNCTION_254_2();
    v35(v34);
    v36 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v36, v37, v38);
    OUTLINED_FUNCTION_333_0();

    *(v31 + 14) = v30;
    *(v31 + 22) = v18;
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v39, 255, v40);
    sub_1D56160F8();
    v41 = OUTLINED_FUNCTION_280_0();
    v25(v41);
    v42 = OUTLINED_FUNCTION_121();
    v45 = sub_1D4E6835C(v42, v43, v44);

    *(v31 + 24) = v45;
    *(v31 + 32) = v18;
    *(v0 + 672) = v89;
    v46 = sub_1D5614DB8();
    sub_1D4E6835C(v46, v47, v100);
    OUTLINED_FUNCTION_103_13();

    *(v31 + 34) = v27;
    OUTLINED_FUNCTION_346_0(&dword_1D4E3F000, "[%{public}s] Adding %{public}s to %{public}s with duplicate policy %{public}s.", v92);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v48 = *(v0 + 520);
    v49 = *(v0 + 488);
    v50 = *(v0 + 496);
    v51 = *(v0 + 448);
    v52 = *(v0 + 456);
    v53 = *(v0 + 304);

    v25 = *(v52 + 8);
    v54 = OUTLINED_FUNCTION_70();
    v25(v54);
    v55 = *(v50 + 8);
    v56 = OUTLINED_FUNCTION_121();
    v57(v56);
  }

  *(v0 + 608) = v25;
  v84 = *(v0 + 673);
  v58 = *(v0 + 480);
  v60 = *(v0 + 440);
  v59 = *(v0 + 448);
  v61 = *(v0 + 392);
  v62 = *(v0 + 368);
  v79 = *(v0 + 384);
  v80 = *(v0 + 360);
  v93 = *(v0 + 320);
  v95 = *(v0 + 424);
  v63 = *(v0 + 304);
  v86 = *(v0 + 432);
  v88 = *(v0 + 312);
  v90 = *(v0 + 336);
  v91 = *(v0 + 296);
  v82 = *(v0 + 288);
  v83 = *(v0 + 400);
  v64 = *(v0 + 272);
  v81 = *(v0 + 280);
  v66 = *(v0 + 256);
  v65 = *(v0 + 264);
  v67 = OUTLINED_FUNCTION_20_22();
  __swift_storeEnumTagSinglePayload(v67, v68, 1, v69);
  v96(v58, v65, v59);
  (v98)(v61, v66, v63);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v63);
  *(v0 + 616) = *(v62 + 16);
  *(v0 + 624) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v73 = OUTLINED_FUNCTION_140_3();
  v74(v73);
  v99 = v84;
  sub_1D533F530(v60, v86, &qword_1EC7EEC30, &unk_1D5620CE0);
  v75 = OUTLINED_FUNCTION_99();
  sub_1D4EA73A4(v75);
  sub_1D50580F4(v58, v61, v79, &v99, v86, v81, v82, v63, v95, v83, v91, v93, MEMORY[0x1E6976CF0]);
  v76 = swift_task_alloc();
  *(v0 + 632) = v76;
  *v76 = v0;
  v76[1] = sub_1D532E4BC;
  v77 = *(v0 + 424);
  OUTLINED_FUNCTION_93_0(*(v0 + 408));

  return sub_1D50585C0();
}

uint64_t sub_1D532E4BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 632);
  *v4 = *v1;
  v3[80] = v7;
  v3[81] = v0;

  if (v0)
  {
    v8 = v3[70];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D532E5C8()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[80];
  v3 = v0[71];
  v4 = v0[70];

  v5 = v2;
  v6 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    v7 = v0[80];
    v8 = v0[70];
    v9 = v0[69];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v4 = 136446466;
    v10 = OUTLINED_FUNCTION_45_3();
    v13 = sub_1D4E6835C(v10, v11, v12);
    v14 = OUTLINED_FUNCTION_289_0(v13);
    v1 = [v14 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v15 = OUTLINED_FUNCTION_210();
    v18 = sub_1D4E6835C(v15, v16, v17);

    *(v4 + 14) = v18;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v19, v20, "[%{public}s] Performing add to playlist request: %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  v21 = v0[80];
  v22 = v0[43];
  v23 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v23);
  v0[82] = v24;
  v25 = v24;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v26;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v27);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v28 = OUTLINED_FUNCTION_166_4();
  [v28 v29];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1D532E7A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 664) = v4;
  if (v4)
  {
    v5 = *(v1 + 560);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D532E8A0()
{
  v1 = *(v0 + 592);
  v85 = *(v0 + 656);
  v86 = *(v0 + 568);
  v83 = *(v0 + 560);
  v79 = *(v0 + 600);
  v81 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 352);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_267_2();
  v10();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_59_19();
  sub_1D5616158();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_59_19();
  v13(v12);

  v14 = MEMORY[0x1E69773A0];
  OUTLINED_FUNCTION_93();
  sub_1D560EC98();
  *(v0 + 168) = v2;
  *(v0 + 176) = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  v1(boxed_opaque_existential_0, v4, v2);
  swift_unknownObjectRetain();
  sub_1D56144C8();
  v1(v81, v5, v2);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v17 = os_log_type_enabled(v16, v2);
  v18 = *(v0 + 608);
  v19 = *(v0 + 560);
  if (v17)
  {
    v20 = *(v0 + 552);
    v21 = *(v0 + 472);
    v22 = *(v0 + 448);
    v87 = *(v0 + 456);
    v23 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v23 = 136446466;
    v24 = OUTLINED_FUNCTION_176();
    v27 = sub_1D4E6835C(v24, v25, v26);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v28, 255, v29);
    OUTLINED_FUNCTION_361_0();
    OUTLINED_FUNCTION_261();
    v30 = OUTLINED_FUNCTION_74_0();
    v18(v30);
    v31 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_368();
    *(v23 + 14) = v21;
    _os_log_impl(&dword_1D4E3F000, v16, v2, "[%{public}s] Completed add to playlist request: %{public}s.", v23, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_46_6();
  }

  else
  {
    v34 = *(v0 + 472);
    v35 = *(v0 + 448);
    v36 = *(v0 + 456);
    v37 = *(v0 + 560);

    v38 = OUTLINED_FUNCTION_159();
    v18(v38);
  }

  v75 = *(v0 + 640);
  v39 = *(v0 + 624);
  v67 = *(v0 + 600);
  v65 = *(v0 + 592);
  v57 = *(v0 + 576);
  v58 = *(v0 + 584);
  v76 = *(v0 + 544);
  v77 = *(v0 + 520);
  v62 = *(v0 + 512);
  v69 = *(v0 + 504);
  v40 = *(v0 + 496);
  v78 = *(v0 + 488);
  v41 = *(v0 + 480);
  v64 = v41;
  v42 = *(v0 + 456);
  v70 = *(v0 + 464);
  v43 = *(v0 + 448);
  v63 = v43;
  v74 = *(v0 + 440);
  v80 = *(v0 + 432);
  v73 = *(v0 + 424);
  v71 = *(v0 + 416);
  v72 = *(v0 + 408);
  v82 = *(v0 + 392);
  v88 = *(v0 + 384);
  v44 = *(v0 + 368);
  v56 = *(v0 + 376);
  v60 = *(v0 + 360);
  v84 = *(v0 + 352);
  v68 = *(v0 + 336);
  v66 = *(v0 + 296);
  v59 = *(v0 + 304);
  v61 = *(v0 + 320);
  v46 = *(v0 + 264);
  v45 = *(v0 + 272);
  v47 = *(v0 + 304);
  v48 = *(v0 + 256);
  (*(v0 + 616))();
  v49 = OUTLINED_FUNCTION_45_3();
  v57(v49);
  v65(v41, v46, v43);
  v50 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v51 = (v56 + *(v40 + 80) + v50) & ~*(v40 + 80);
  v52 = (v69 + *(v42 + 80) + v51) & ~*(v42 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v66;
  *(v53 + 24) = v59;
  *(v53 + 40) = v61;
  *(v53 + 56) = v68;
  (*(v44 + 32))(v53 + v50, v88, v60);
  (*(v40 + 32))(v53 + v51, v62, v47);
  (*(v42 + 32))(v53 + v52, v64, v63);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v71 + 8))(v73, v72);
  sub_1D4E7661C(v74, &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_22_1();

  return v54();
}

uint64_t sub_1D532EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[55];
  (*(v14[52] + 8))(v14[53], v14[51]);
  sub_1D4E7661C(v15, &qword_1EC7EEC30, &unk_1D5620CE0);
  v16 = v14[81];
  OUTLINED_FUNCTION_195_4();
  v28 = v17;
  v29 = v14[44];
  v30 = v18;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, a12, a13, a14);
}

uint64_t sub_1D532EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = v16[83];
  v18 = v16[82];
  v19 = v16[80];
  v20 = v16[55];
  v22 = v16[52];
  v21 = v16[53];
  v23 = v16[51];
  swift_willThrow();

  v24 = *(v22 + 8);
  v25 = OUTLINED_FUNCTION_81_0();
  v26(v25);
  sub_1D4E7661C(v20, &qword_1EC7EEC30, &unk_1D5620CE0);

  v27 = v16[83];
  OUTLINED_FUNCTION_195_4();
  v39 = v28;
  v40 = v16[44];
  v41 = v29;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, a13, a14, a15, a16);
}

uint64_t sub_1D532F048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = sub_1D56158D8();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = *(a5 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D532F17C, 0, 0);
}

uint64_t sub_1D532F17C()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v1 = v0[13];
  v2 = v0 + 12;
  v4 = v0 + 11;
  v3 = v0[11];
  v5 = v0[7];
  v6 = v0[4];
  v7 = OUTLINED_FUNCTION_48_22(v0[12]);
  v8(v7);
  OUTLINED_FUNCTION_57(v1, 1, v5);
  if (v9)
  {
    v10 = v0[13];
LABEL_6:
    (*(*v2 + 8))(v10, *v4);
    v17 = v0[10];
    v18 = v0[8];
    v19 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
    OUTLINED_FUNCTION_311_0();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D561C050;
    *(v20 + 56) = v18;
    *(v20 + 64) = v17;
    __swift_allocate_boxed_opaque_existential_0((v20 + 32));
    OUTLINED_FUNCTION_24_0(v18);
    (*(v21 + 16))();
    goto LABEL_8;
  }

  v11 = v0[15];
  v2 = v0 + 14;
  v12 = v0[14];
  v13 = v0[9];
  (*(v12 + 32))(v0[16], v0[13], v0[7]);
  v14 = *(v12 + 16);
  v15 = OUTLINED_FUNCTION_63_1();
  v14(v15);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_98();
  v0[2] = sub_1D5615318();
  OUTLINED_FUNCTION_4_32();
  v16 = sub_1D56152D8();
  swift_getWitnessTable();
  sub_1D5615678();
  OUTLINED_FUNCTION_283_0();
  v10 = v0[16];
  if (v16)
  {
    v4 = v0 + 7;
    goto LABEL_6;
  }

  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[9];
  v25 = v0[7];
  v26 = OUTLINED_FUNCTION_63_1();
  v14(v26);
  OUTLINED_FUNCTION_98();
  sub_1D5615318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  OUTLINED_FUNCTION_98();
  sub_1D5615D38();
  OUTLINED_FUNCTION_75_1();

  v27 = *(v23 + 8);
  v28 = OUTLINED_FUNCTION_121();
  v29(v28);
LABEL_8:
  sub_1D526F3EC();
  v0[17] = v30;

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[18] = v31;
  *v31 = v32;
  v31[1] = sub_1D532F448;
  v33 = v0[6];
  v34 = v0[3];
  OUTLINED_FUNCTION_73_0();

  return sub_1D542C4D8();
}

uint64_t sub_1D532F448()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[13];
  v7 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D532F62C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 105);
  v2 = *(v0 + 80);
  sub_1D5613AF8();
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_176_4();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 88) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_224_3(v7);
  OUTLINED_FUNCTION_323();

  return MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)();
}

uint64_t sub_1D532F704()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_211_3(v5, v6, v7, v3, v8, v9, v10, v11);
  *(v1 + 272) = v12;
  *(v1 + 280) = v13;
  *(v1 + 256) = v14;
  *(v1 + 264) = v15;
  *(v1 + 248) = v16;
  OUTLINED_FUNCTION_1_0();
  *(v1 + 352) = v17;
  *(v1 + 360) = *(v18 + 64);
  *(v1 + 368) = OUTLINED_FUNCTION_127();
  v19 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  *(v1 + 376) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  v22 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  *(v1 + 384) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v25 = sub_1D56158D8();
  *(v1 + 392) = v25;
  OUTLINED_FUNCTION_69(v25);
  *(v1 + 400) = v26;
  v28 = *(v27 + 64);
  *(v1 + 408) = OUTLINED_FUNCTION_167();
  *(v1 + 416) = swift_task_alloc();
  v29 = *(v2 + 8);
  *(v1 + 424) = v29;
  *(v1 + 184) = v0;
  *(v1 + 192) = v0;
  *(v1 + 200) = v2;
  *(v1 + 208) = v29;
  v30 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest();
  *(v1 + 432) = v30;
  OUTLINED_FUNCTION_69(v30);
  *(v1 + 440) = v31;
  v33 = *(v32 + 64);
  *(v1 + 448) = OUTLINED_FUNCTION_127();
  v34 = sub_1D5614898();
  *(v1 + 456) = v34;
  OUTLINED_FUNCTION_69(v34);
  *(v1 + 464) = v35;
  *(v1 + 472) = *(v36 + 64);
  *(v1 + 480) = OUTLINED_FUNCTION_167();
  *(v1 + 488) = swift_task_alloc();
  v37 = sub_1D560C368();
  *(v1 + 496) = v37;
  OUTLINED_FUNCTION_69(v37);
  *(v1 + 504) = v38;
  v40 = *(v39 + 64);
  *(v1 + 512) = OUTLINED_FUNCTION_127();
  *(v1 + 617) = *v4;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();
  return OUTLINED_FUNCTION_342_0(v41, v42, v43);
}

uint64_t sub_1D532FA5C()
{
  v81 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  sub_1D560C358();
  *(v0 + 520) = sub_1D560C338();
  *(v0 + 528) = v4;
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_159();
  v7(v6);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v8 = *(v0 + 488);
  v9 = *(v0 + 456);
  v10 = *(v0 + 464);
  v11 = *(v0 + 264);
  v12 = sub_1D560C758();
  *(v0 + 536) = __swift_project_value_buffer(v12, qword_1EC87C110);
  *(v0 + 544) = *(v10 + 16);
  *(v0 + 552) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = OUTLINED_FUNCTION_182_3();
  v78 = v14;
  (v14)(v13);

  v15 = sub_1D560C738();
  LOBYTE(v11) = sub_1D56156E8();

  if (os_log_type_enabled(v15, v11))
  {
    v75 = *(v0 + 617);
    v16 = *(v0 + 488);
    v17 = *(v0 + 456);
    v18 = *(v0 + 464);
    v19 = OUTLINED_FUNCTION_138_0();
    v80 = OUTLINED_FUNCTION_355_0();
    *v19 = 136446722;
    v20 = OUTLINED_FUNCTION_45_3();
    *(v19 + 4) = sub_1D4E6835C(v20, v21, v22);
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v23, 255, v24);
    v25 = sub_1D56160F8();
    v26 = *(v18 + 8);
    v27 = OUTLINED_FUNCTION_184();
    v28(v27);
    v29 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v29, v30, v31);
    OUTLINED_FUNCTION_333_0();

    *(v19 + 14) = v16;
    *(v19 + 22) = 2082;
    *(v0 + 616) = v75;
    v32 = sub_1D5614DB8();
    sub_1D4E6835C(v32, v33, &v80);
    OUTLINED_FUNCTION_103_13();

    *(v19 + 24) = v25;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v39 = *(v0 + 488);
    v40 = *(v0 + 456);
    v41 = *(v0 + 464);

    v42 = *(v41 + 8);
    v43 = OUTLINED_FUNCTION_222();
    v44(v43);
  }

  v69 = *(v0 + 617);
  v72 = *(v0 + 480);
  v45 = *(v0 + 456);
  v46 = *(v0 + 416);
  v76 = *(v0 + 424);
  v77 = *(v0 + 448);
  v47 = *(v0 + 400);
  v49 = *(v0 + 384);
  v48 = *(v0 + 392);
  v50 = *(v0 + 352);
  v70 = *(v0 + 312);
  v71 = *(v0 + 336);
  v51 = *(v0 + 296);
  v73 = *(v0 + 304);
  v74 = *(v0 + 320);
  v52 = *(v0 + 288);
  v67 = v52;
  v68 = *(v0 + 408);
  v66 = *(v0 + 280);
  v53 = *(v0 + 264);
  v54 = *(v0 + 272);
  v55 = *(v0 + 256);
  v78();
  v56 = *(v47 + 16);
  v56(v46, v54, v48);
  v57 = *(v50 + 16);
  *(v0 + 560) = v57;
  *(v0 + 568) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57(v49, v55, v51);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v51);
  v79 = v69;
  v61 = OUTLINED_FUNCTION_71();
  (v56)(v61);
  v62 = OUTLINED_FUNCTION_63_1();
  sub_1D4EA73A4(v62);
  sub_1D50580F4(v72, v46, v49, &v79, v68, v66, v67, v73, v77, v73, v51, v74, v76);
  v63 = swift_task_alloc();
  *(v0 + 576) = v63;
  *v63 = v0;
  v63[1] = sub_1D532FE60;
  v64 = *(v0 + 448);
  OUTLINED_FUNCTION_93_0(*(v0 + 432));

  return sub_1D50585C0();
}

uint64_t sub_1D532FE60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 576);
  *v4 = *v1;
  v3[73] = v7;
  v3[74] = v0;

  if (v0)
  {
    v8 = v3[66];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D532FF6C()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[73];
  v3 = v0[67];
  v4 = v0[66];

  v5 = v2;
  v6 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    v7 = v0[73];
    v8 = v0[66];
    v9 = v0[65];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v4 = 136446466;
    v10 = OUTLINED_FUNCTION_45_3();
    v13 = sub_1D4E6835C(v10, v11, v12);
    v14 = OUTLINED_FUNCTION_289_0(v13);
    v1 = [v14 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v15 = OUTLINED_FUNCTION_210();
    v18 = sub_1D4E6835C(v15, v16, v17);

    *(v4 + 14) = v18;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v19, v20, "[%{public}s] Performing add to playlist request: %{public}s");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  v21 = v0[73];
  v22 = v0[43];
  v23 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v23);
  v0[75] = v24;
  v25 = v24;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v26;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v27);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v28 = OUTLINED_FUNCTION_166_4();
  [v28 v29];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1D5330144()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
    v5 = *(v1 + 528);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5330244()
{
  v1 = (v0 + 296);
  v2 = *(v0 + 600);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_127();
  (*(v6 + 16))();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_15_2();
  sub_1D5616158();
  v9 = *(v6 + 8);
  v10 = OUTLINED_FUNCTION_15_2();
  v11(v10);

  v12 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  v13 = OUTLINED_FUNCTION_221_3();
  v14 = *(v0 + 528);
  if (v13)
  {
    v15 = *(v0 + 520);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    *v2 = 136446210;
    v16 = OUTLINED_FUNCTION_99();
    v19 = sub_1D4E6835C(v16, v17, v18);

    *(v2 + 1) = v19;
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v20, v21, v22, v23, v2, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
  }

  v55 = *(v0 + 584);
  v44 = *(v0 + 560);
  v45 = *(v0 + 568);
  v24 = *(v0 + 552);
  v25 = *(v0 + 544);
  v56 = *(v0 + 512);
  v57 = *(v0 + 488);
  v43 = *(v0 + 480);
  v49 = *(v0 + 464);
  v50 = *(v0 + 472);
  v26 = *(v0 + 456);
  v52 = *(v0 + 440);
  v53 = *(v0 + 432);
  v54 = *(v0 + 448);
  v58 = *(v0 + 416);
  v59 = *(v0 + 408);
  v60 = *(v0 + 384);
  v27 = *(v0 + 368);
  v28 = *(v0 + 352);
  v29 = *(v0 + 264);
  v41 = *(v0 + 256);
  v42 = *(v0 + 360);
  v39 = v27;
  v40 = *(v0 + 248);
  v46 = *v1;
  v30 = *v1;
  v38 = *v1;
  v47 = *(v0 + 328);
  v48 = *(v0 + 312);
  v31 = MEMORY[0x1E69773A0];
  v51 = *(v0 + 376);
  sub_1D560EC98();
  *(v0 + 168) = v26;
  *(v0 + 176) = v31;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  v25(boxed_opaque_existential_0, v29, v26);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_258();
  sub_1D56144C8();
  v44(v27, v41, v30);
  v25(v43, v29, v26);
  v33 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v34 = (v42 + *(v49 + 80) + v33) & ~*(v49 + 80);
  v35 = swift_allocObject();
  *(v35 + 1) = v46;
  *(v35 + 2) = v48;
  *(v35 + 3) = v47;
  (*(v28 + 32))(&v35[v33], v39, v38);
  (*(v49 + 32))(&v35[v34], v43, v26);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v52 + 8))(v54, v53);

  OUTLINED_FUNCTION_22_1();

  return v36();
}

uint64_t sub_1D5330638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  (*(v12[55] + 8))(v12[56], v12[54]);
  v13 = v12[74];
  OUTLINED_FUNCTION_245_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1D53306F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[76];
  v14 = v12[75];
  v15 = v12[73];
  v17 = v12[55];
  v16 = v12[56];
  v18 = v12[54];
  swift_willThrow();

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_159();
  v21(v20);

  v22 = v12[76];
  OUTLINED_FUNCTION_245_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D53307C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = *(a4 - 8);
  v6[7] = v7;
  v8 = *(v7 + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5330884, 0, 0);
}

uint64_t sub_1D5330884()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = OUTLINED_FUNCTION_48_22(v0[7]);
  v6(v5);
  OUTLINED_FUNCTION_4_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_5();
  sub_1D5615318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  OUTLINED_FUNCTION_68_4();
  v0[9] = sub_1D5615D38();

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[10] = v7;
  *v7 = v8;
  v7[1] = sub_1D53309A0;
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D542C4D8();
}

uint64_t sub_1D53309A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t MusicLibrary.remove(_:from:)()
{
  OUTLINED_FUNCTION_60();
  v0[6] = v1;
  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44E8, &qword_1D5653938);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_127();
  v6 = sub_1D5614828();
  v0[9] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[10] = v7;
  v9 = *(v8 + 64);
  v0[11] = OUTLINED_FUNCTION_167();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v10 = sub_1D560C368();
  v0[14] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[15] = v11;
  v13 = *(v12 + 64);
  v0[16] = OUTLINED_FUNCTION_127();
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5330BEC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[17] = v4;
  v0[18] = v5;
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_159();
  v8(v7);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[6];
  v13 = sub_1D560C758();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v0[19] = v14;
  v0[20] = *(v11 + 16);
  v0[21] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15 = OUTLINED_FUNCTION_121();
  v16(v15);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_309_0();

  v18 = os_log_type_enabled(v17, v12);
  v19 = v0[13];
  v20 = v0[9];
  v21 = v0[10];
  if (v18)
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_142_10();
    *v14 = 136446466;
    v22 = OUTLINED_FUNCTION_93();
    v25 = sub_1D4E6835C(v22, v23, v24);
    OUTLINED_FUNCTION_42_39(v25);
    OUTLINED_FUNCTION_32_47();
    sub_1D4E413BC(v26, 255, v27);
    sub_1D56160F8();
    OUTLINED_FUNCTION_178_2();
    v28 = *(v21 + 8);
    v29 = OUTLINED_FUNCTION_184();
    v28(v29);
    v30 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_183();

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1D4E3F000, v17, v12, "[%{public}s] Removing playlist entry %{public}s.", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    v28 = *(v21 + 8);
    v33 = OUTLINED_FUNCTION_184();
    v28(v33);
  }

  v0[22] = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v34;
  *v34 = v35;
  v34[1] = sub_1D5330E54;
  v36 = v0[6];
  v37 = v0[7];
  OUTLINED_FUNCTION_89();

  return sub_1D51E57B0();
}

uint64_t sub_1D5330E54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5330F54()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  v5 = *(v1 + 144);
  v4 = *(v1 + 152);
  v6 = *(v1 + 96);
  v7 = *(v1 + 72);
  v8 = *(v1 + 48);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  *(v1 + 200) = v10;
  v3(v6, v8, v7);

  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  v12 = os_log_type_enabled(v11, v0);
  v13 = *(v1 + 176);
  if (v12)
  {
    v15 = *(v1 + 136);
    v14 = *(v1 + 144);
    v16 = *(v1 + 96);
    v43 = *(v1 + 80);
    v44 = v9;
    v17 = *(v1 + 72);
    v18 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v18 = 136446466;
    v19 = OUTLINED_FUNCTION_176();
    *(v18 + 4) = sub_1D4E6835C(v19, v20, v21);
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_32_47();
    sub_1D4E413BC(v22, 255, v23);
    OUTLINED_FUNCTION_361_0();
    OUTLINED_FUNCTION_261();
    v24 = OUTLINED_FUNCTION_74_0();
    v9 = v44;
    v13(v24);
    v25 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v25, v26, v27);
    OUTLINED_FUNCTION_368();
    *(v18 + 14) = v16;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v33 = *(v1 + 96);
    v34 = *(v1 + 72);
    v35 = *(v1 + 80);

    v36 = OUTLINED_FUNCTION_222();
    v13(v36);
  }

  *(v1 + 32) = v9;
  *(v1 + 40) = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 208) = v37;
  *v37 = v38;
  v37[1] = sub_1D5331154;
  v39 = *(v1 + 64);
  OUTLINED_FUNCTION_63_0();

  return MusicLibraryPlaylistRequest.response<>()(v40);
}

uint64_t sub_1D5331154()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[18];
  }

  else
  {
    sub_1D4E7661C(v3[8], &qword_1EC7F44E8, &qword_1D5653938);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D533126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = *(v15 + 168);
  v18 = *(v15 + 144);
  v17 = *(v15 + 152);
  (*(v15 + 160))(*(v15 + 88), *(v15 + 48), *(v15 + 72));

  v19 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  v20 = os_log_type_enabled(v19, v14);
  v21 = *(v15 + 200);
  v22 = *(v15 + 176);
  v23 = *(v15 + 144);
  if (v20)
  {
    v24 = *(v15 + 136);
    v25 = *(v15 + 88);
    a9 = *(v15 + 80);
    v26 = *(v15 + 72);
    v27 = OUTLINED_FUNCTION_144();
    a10 = v21;
    a11 = OUTLINED_FUNCTION_34_24();
    *v27 = 136446466;
    v28 = OUTLINED_FUNCTION_176();
    v31 = sub_1D4E6835C(v28, v29, v30);

    *(v27 + 4) = v31;
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_32_47();
    sub_1D4E413BC(v32, 255, v33);
    OUTLINED_FUNCTION_361_0();
    OUTLINED_FUNCTION_261();
    v34 = OUTLINED_FUNCTION_74_0();
    v22(v34);
    v35 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v35, v36, v37);
    OUTLINED_FUNCTION_368();
    *(v27 + 14) = v25;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v44 = *(v15 + 80);
    v43 = *(v15 + 88);
    v45 = *(v15 + 72);
    v46 = *(v15 + 144);

    v47 = OUTLINED_FUNCTION_222();
    v22(v47);
  }

  v48 = *(v15 + 128);
  v49 = *(v15 + 96);
  v50 = *(v15 + 104);
  v51 = *(v15 + 88);
  v52 = *(v15 + 64);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D533145C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_347_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D53314DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();

  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_347_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t MusicLibrary.updateSubscribedPlaylist(_:ignoreMinimumRefreshInterval:)()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 200) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  v4 = sub_1D560D838();
  *(v1 + 160) = v4;
  OUTLINED_FUNCTION_69(v4);
  *(v1 + 168) = v5;
  v7 = *(v6 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D533160C()
{
  OUTLINED_FUNCTION_75_0();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  sub_1D5614898();
  sub_1D560EC98();
  v5 = sub_1D560D768();
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_70();
  v11 = v10(v9);
  if (v7)
  {
    v12 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v13 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {

      goto LABEL_79;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v40 = OUTLINED_FUNCTION_71();
      v18 = sub_1D533FED4(v40, v41, 10);
      v25 = v42;
      goto LABEL_78;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      if (v5 == 43)
      {
        if (v12)
        {
          if (v12 != 1)
          {
            v18 = 0;
            OUTLINED_FUNCTION_179_6();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v17 && v19)
              {
                break;
              }

              OUTLINED_FUNCTION_271_1();
              if (!v17)
              {
                break;
              }

              OUTLINED_FUNCTION_243_2();
              if (v19)
              {
                break;
              }

              OUTLINED_FUNCTION_40_0();
              if (v17)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_91:
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v11);
      }

      if (v5 != 45)
      {
        if (v12)
        {
          v18 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v17 && v19)
            {
              break;
            }

            OUTLINED_FUNCTION_271_1();
            if (!v17)
            {
              break;
            }

            OUTLINED_FUNCTION_243_2();
            if (v19)
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v17)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          v18 = 0;
          OUTLINED_FUNCTION_179_6();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v17 && v19)
            {
              break;
            }

            OUTLINED_FUNCTION_271_1();
            if (!v17)
            {
              break;
            }

            v19 = 10 * v18 >= v22;
            v18 = 10 * v18 - v22;
            if (!v19)
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v17)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v14 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_71();
        v14 = sub_1D5615C58();
      }

      v11 = OUTLINED_FUNCTION_329_0(v14);
      if (v17)
      {
        if (v15 >= 1)
        {
          if (v15 != 1)
          {
            v18 = 0;
            if (v11)
            {
              OUTLINED_FUNCTION_80_7();
              while (1)
              {
                OUTLINED_FUNCTION_22_0();
                if (!v17 && v19)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_271_1();
                if (!v17)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_243_2();
                if (v19)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_40_0();
                if (v17)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_76;
        }

        goto LABEL_90;
      }

      if (v16 != 45)
      {
        if (v15)
        {
          v18 = 0;
          if (v11)
          {
            v23 = 10;
            while (1)
            {
              v24 = *v11 - 48;
              if (v24 > 9)
              {
                goto LABEL_76;
              }

              if (!is_mul_ok(v18, v23))
              {
                goto LABEL_76;
              }

              v19 = __CFADD__(10 * v18, v24);
              v18 = 10 * v18 + v24;
              if (v19)
              {
                goto LABEL_76;
              }

              v11 = OUTLINED_FUNCTION_324_0(v11);
              if (v17)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_76:
        v18 = 0;
        v21 = 1;
        goto LABEL_77;
      }

      if (v15 >= 1)
      {
        if (v15 != 1)
        {
          v18 = 0;
          if (v11)
          {
            OUTLINED_FUNCTION_80_7();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v17 && v19)
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_271_1();
              if (!v17)
              {
                goto LABEL_76;
              }

              v19 = 10 * v18 >= v20;
              v18 = 10 * v18 - v20;
              if (!v19)
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_40_0();
              if (v17)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_66:
          v21 = 0;
LABEL_77:
          v25 = v21;
LABEL_78:

          if (v25)
          {
            goto LABEL_79;
          }

          OUTLINED_FUNCTION_146_7();
          v30 = *(v0 + 152);
          v31 = *(v0 + 200);
          v32 = sub_1D4E5A1CC();
          v33 = v32[6];

          v34 = *(v33 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
          *(v0 + 184) = v34;
          v35 = v34;
          OUTLINED_FUNCTION_333_0();

          OUTLINED_FUNCTION_114_6();
          *(v0 + 16) = v36;
          v37 = OUTLINED_FUNCTION_99_14();
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
          OUTLINED_FUNCTION_35_7(v38);
          OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
          OUTLINED_FUNCTION_4_27();
          *(v0 + 104) = v39;
          *(v0 + 112) = v37;
          [v32 updateSubscribedPlaylistWithSagaID:v18 ignoreMinRefreshInterval:v31 completionHandler:v3];
          v11 = v25;

          return MEMORY[0x1EEE6DEC8](v11);
        }

        goto LABEL_76;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_79:
  sub_1D51E8560();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_199_3(v26, 7);
  swift_willThrow();
  v27 = *(v0 + 176);

  OUTLINED_FUNCTION_55();

  return v28();
}

uint64_t sub_1D5331A18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5331B14()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5331B74()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[22];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t MusicLibrary.setAddToPlaylistBehavior(_:)(_BYTE *a1)
{
  *(v2 + 144) = v1;
  *(v2 + 168) = *a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D5331C00()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = v1[18];
  v4 = *(sub_1D4E5A1CC() + 48);

  v5 = *(v4 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  v1[19] = v5;
  v6 = v5;

  v1[2] = v1;
  v1[3] = sub_1D5331D58;
  v7 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4FE2404;
  v1[13] = &block_descriptor_53;
  v1[14] = v7;
  [v6 setCloudAddToPlaylistBehavior:v2 completionHandler:v1 + 10];
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D5331D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5331E54()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5331EAC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 160);

  return v3();
}

uint64_t MusicLibrary.addToPlaylistBehavior()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D5331F28()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 24);
  v2 = *(sub_1D4E5A1CC() + 48);

  v3 = *(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

  v4 = [v3 cloudAddToPlaylistBehavior];

  if (v4 >= 3)
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    return sub_1D5615E08();
  }

  else
  {
    **(v0 + 16) = v4;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t MusicLibrary.download<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.download<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.download<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_171_5(v9, v10, v7, v5, v3, v1);
  v11 = sub_1D560C368();
  v0[29] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[30] = v12;
  v14 = *(v13 + 64);
  v0[31] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v0[32] = v15;
  v17 = *(v16 + 64);
  v0[33] = OUTLINED_FUNCTION_167();
  v0[34] = swift_task_alloc();
  v0[18] = v8;
  v0[19] = v6;
  v0[20] = v4;
  v0[21] = v2;
  v18 = type metadata accessor for MusicLibraryKeepLocalChangeRequest();
  v0[35] = v18;
  OUTLINED_FUNCTION_69(v18);
  v0[36] = v19;
  v21 = *(v20 + 64);
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D5332238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[37];
  v28 = v24[34];
  v29 = v24[31];
  v30 = v24[30];
  v31 = v24[26];
  v80 = v24[27];
  v81 = v24[29];
  v33 = v24[24];
  v32 = v24[25];
  v34 = v24[23];
  v82 = *(v24[32] + 16);
  (v82)(v28, v24[22], v33);

  sub_1D5391E6C(v28, 3, v34, MEMORY[0x1E69E7CC0], v33, v32, v31, v80, v27);
  sub_1D560C358();
  v35 = sub_1D560C338();
  v37 = v36;
  v24[38] = v35;
  v24[39] = v36;
  (*(v30 + 8))(v29, v81);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v38 = v24[33];
  v39 = v24[24];
  v40 = v24[22];
  v41 = sub_1D560C758();
  v24[40] = __swift_project_value_buffer(v41, qword_1EC87C110);
  v42 = OUTLINED_FUNCTION_121();
  (v82)(v42);

  v43 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v79 = v35;
    v44 = v24[33];
    v45 = v24[34];
    v46 = v24[32];
    v47 = v24[24];
    OUTLINED_FUNCTION_144();
    a13 = OUTLINED_FUNCTION_137_11();
    *v82 = 136446466;
    v48 = sub_1D4E6835C(v79, v37, &a13);
    OUTLINED_FUNCTION_41_41(v48);
    (v82)(v45, v44, v47);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    v49 = *(v46 + 8);
    v50 = OUTLINED_FUNCTION_258();
    v51(v50);
    v52 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v52, v53, v54);
    OUTLINED_FUNCTION_75_1();

    *(v82 + 14) = v37;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
    OUTLINED_FUNCTION_238_2();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v61 = v24[32];
    v60 = v24[33];
    v62 = v24[24];

    v63 = OUTLINED_FUNCTION_15_8();
    v64(v63);
  }

  OUTLINED_FUNCTION_86_6();
  v65 = v24[37];
  v66 = v24[35];
  v67 = v24[28];
  v68 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1(v68);
  v24[41] = v69;
  v70 = v69;
  OUTLINED_FUNCTION_183();

  v71 = *(v65 + *(v66 + 64));
  v24[42] = v71;
  v24[2] = v24;
  v72 = OUTLINED_FUNCTION_48_8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v73);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v24[12] = v74;
  v24[13] = &block_descriptor_59;
  v24[14] = v72;
  v75 = v71;
  OUTLINED_FUNCTION_372(v75, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v75);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v76);
}

uint64_t sub_1D5332558()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
    v5 = *(v1 + 312);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5332658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);
  v14 = *(v12 + 312);
  v15 = *(v12 + 320);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v17 = OUTLINED_FUNCTION_221_3();
  v18 = *(v12 + 312);
  if (v17)
  {
    v19 = *(v12 + 296);
    v20 = *(v12 + 304);
    v21 = *(v12 + 280);
    v22 = *(v12 + 288);
    v23 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v23 = 136446210;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    *(v23 + 4) = v20;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v27, v28, v29, v30);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v31 = *(v22 + 8);
    v32 = OUTLINED_FUNCTION_128();
  }

  else
  {
    v35 = *(v12 + 288);
    v34 = *(v12 + 296);
    v36 = *(v12 + 280);
    v37 = *(v12 + 312);

    v32 = OUTLINED_FUNCTION_15_8();
  }

  v33(v32);
  v38 = *(v12 + 296);
  v39 = *(v12 + 264);
  v40 = *(v12 + 272);
  v41 = *(v12 + 248);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1D53327A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[42];
  v13 = v12[43];
  v15 = v12[41];
  v17 = v12[36];
  v16 = v12[37];
  v19 = v12[34];
  v18 = v12[35];
  v20 = v12[33];
  v21 = v12[31];
  swift_willThrow();
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_159();
  v24(v23);

  OUTLINED_FUNCTION_55();
  v25 = v12[43];
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t MusicLibrary.download<A>(_:constraints:)()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_1D5613D28();
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_166_4();
  OUTLINED_FUNCTION_376();

  return MusicLibrary.download<A, B>(_:relatedItems:constraints:)();
}

uint64_t MusicLibrary.download<A, B>(_:relatedItems:constraints:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[24] = v5;
  v1[25] = v6;
  v1[22] = v7;
  v1[23] = v8;
  v1[18] = v6;
  v1[19] = v3;
  v1[20] = v4;
  v1[21] = v2;
  v9 = type metadata accessor for MusicLibraryKeepLocalChangeRequest();
  v1[30] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[31] = v10;
  v12 = *(v11 + 64);
  v1[32] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v1[33] = v13;
  v15 = *(v14 + 64);
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v16 = sub_1D560C368();
  v1[36] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[37] = v17;
  v19 = *(v18 + 64);
  v1[38] = OUTLINED_FUNCTION_127();
  v20 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D5332A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_32_5();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_234_0();
  a24 = v26;
  v30 = v26[37];
  v29 = v26[38];
  v31 = v26[36];
  sub_1D560C358();
  v32 = sub_1D560C338();
  v34 = v33;
  v26[39] = v32;
  v26[40] = v33;
  v35 = *(v30 + 8);
  v36 = OUTLINED_FUNCTION_68_4();
  v37(v36);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v38 = v26[35];
  v39 = v26[33];
  v41 = v26[24];
  v40 = v26[25];
  v42 = v26[22];
  v43 = sub_1D560C758();
  v26[41] = __swift_project_value_buffer(v43, qword_1EC87C110);
  v44 = *(v39 + 16);
  v45 = OUTLINED_FUNCTION_74_0();
  v94 = v46;
  v46(v45);

  v47 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();

  v48 = OUTLINED_FUNCTION_221_3();
  v49 = v26[35];
  if (v48)
  {
    v50 = v26[33];
    v51 = v26[34];
    v52 = v26[25];
    v93 = v26[24];
    v53 = OUTLINED_FUNCTION_138_0();
    a15 = OUTLINED_FUNCTION_355_0();
    *v53 = 136446722;
    v54 = OUTLINED_FUNCTION_98();
    v57 = sub_1D4E6835C(v54, v55, v56);
    OUTLINED_FUNCTION_41_41(v57);
    v58 = OUTLINED_FUNCTION_161();
    v94(v58);
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    v59 = *(v50 + 8);
    v60 = OUTLINED_FUNCTION_176();
    v61(v60);
    v62 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v62, v63, v64);
    OUTLINED_FUNCTION_75_1();

    *(v53 + 14) = v34;
    *(v53 + 22) = 2082;
    v65 = MEMORY[0x1DA6EAF70](v93, &type metadata for MusicLibrary.DownloadConstraint);
    v67 = sub_1D4E6835C(v65, v66, &a15);

    *(v53 + 24) = v67;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v68, v69, v70, v71, v72, 0x20u);
    OUTLINED_FUNCTION_340_0();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v73 = v26[33];
    v74 = v26[25];

    (*(v73 + 8))(v49, v74);
  }

  v75 = v26[34];
  v76 = v26[32];
  v77 = v26[29];
  v92 = v26[30];
  v79 = v26[27];
  v78 = v26[28];
  v81 = v26[25];
  v80 = v26[26];
  v82 = v26[23];
  v83 = v26[24];
  (v94)(v75, v26[22], v81);

  sub_1D5391E6C(v75, 3, v82, v83, v81, v80, v79, v78, v76);
  v84 = *(sub_1D4E5A1CC() + 24);
  v26[42] = v84;
  v85 = v84;
  OUTLINED_FUNCTION_82();

  v86 = *(v76 + *(v92 + 64));
  v26[43] = v86;
  v26[2] = v26;
  v26[3] = sub_1D5332E1C;
  v87 = swift_continuation_init();
  v26[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v26[14] = v87;
  v26[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v26[12] = v88;
  v26[13] = &block_descriptor_65;
  [v77 performLibraryKeepLocalChangeWithRequest:v86 completionHandler:v26 + 10];
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v89);
}

uint64_t sub_1D5332E1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
    v5 = *(v1 + 320);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5332F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 344);
  v14 = *(v12 + 320);
  v15 = *(v12 + 328);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v17 = OUTLINED_FUNCTION_221_3();
  v18 = *(v12 + 320);
  if (v17)
  {
    v19 = *(v12 + 312);
    v21 = *(v12 + 248);
    v20 = *(v12 + 256);
    v22 = *(v12 + 240);
    v23 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v23 = 136446210;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    *(v23 + 4) = v19;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v27, v28, v29, v30);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v31 = *(v21 + 8);
    v32 = OUTLINED_FUNCTION_128();
  }

  else
  {
    v35 = *(v12 + 248);
    v34 = *(v12 + 256);
    v36 = *(v12 + 240);
    v37 = *(v12 + 320);

    v32 = OUTLINED_FUNCTION_15_8();
  }

  v33(v32);
  v38 = *(v12 + 304);
  v39 = *(v12 + 272);
  v40 = *(v12 + 280);
  v41 = *(v12 + 256);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1D5333070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[43];
  v13 = v12[44];
  v15 = v12[42];
  v16 = v12[38];
  v18 = v12[34];
  v17 = v12[35];
  v20 = v12[31];
  v19 = v12[32];
  v21 = v12[30];
  swift_willThrow();
  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_201();
  v24(v23);

  OUTLINED_FUNCTION_55();
  v25 = v12[44];
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t MusicLibrary.download<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  OUTLINED_FUNCTION_1_0();
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_127();
  v10 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[13] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_69(AssociatedTypeWitness);
  v1[14] = v17;
  v19 = *(v18 + 64);
  v1[15] = OUTLINED_FUNCTION_127();
  v20 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D53332A4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[3];
  (*(v0[11] + 16))(v0[12], v0[2], v3);
  OUTLINED_FUNCTION_93();
  sub_1D5614F98();
  OUTLINED_FUNCTION_253_0();
  swift_getAssociatedConformanceWitness();
  sub_1D5615938();
  v4 = OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_57(v4, v5, v3);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_252_1();
    v8(v7);

    OUTLINED_FUNCTION_22_1();

    return v9();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_305();
    v12(v11);
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_106_11(v13);

    return MusicLibrary.download<A>(_:)();
  }
}

uint64_t sub_1D53333FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D53334F4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[8] + 8))(v0[9], v0[4]);
  OUTLINED_FUNCTION_253_0();
  swift_getAssociatedConformanceWitness();
  sub_1D5615938();
  v2 = OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_57(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_252_1();
    v6(v5);

    OUTLINED_FUNCTION_22_1();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_305();
    v10(v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_106_11();

    return MusicLibrary.download<A>(_:)();
  }
}

uint64_t sub_1D533362C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[4]);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_159();
  v8(v7);

  OUTLINED_FUNCTION_55();
  v9 = v0[17];
  OUTLINED_FUNCTION_376();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t MusicLibrary.downloadSize<A>(for:)()
{
  v1 = sub_1D56131C8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v43 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5614898();
  v10 = OUTLINED_FUNCTION_4(v9);
  v35 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v18 = *(v17 + 16);
  v19 = OUTLINED_FUNCTION_161();
  v20(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  if (!swift_dynamicCast())
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D4E7661C(&v39, &unk_1EC7F65D0, &qword_1D5638870);
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v24, 7);
    swift_willThrow();
    return v0;
  }

  sub_1D4E48324(&v39, v42);
  sub_1D4E62938(v42, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v36, &v39);
    if (sub_1D560EFB8())
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        if (([v21 isHomeSharingLibrary] & 1) == 0)
        {
          sub_1D4E62938(v42, v38);
          v34 = swift_dynamicCast();
          if (v34)
          {
            v27 = *(v35 + 8);
            v28 = OUTLINED_FUNCTION_45_3();
            v29(v28);
          }

          v30 = *(&v40 + 1);
          v31 = v41;
          __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
          v32 = v43;
          (*(v43 + 104))(v8, *MEMORY[0x1E6976988], v1);
          v33 = sub_1D5159364(v8, v30, v31);
          (*(v32 + 8))(v8, v1);
          v0 = [v22 downloadSizeForModelObject:v33 includingNonLibraryContent:v34];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v42);
          __swift_destroy_boxed_opaque_existential_1(&v39);
          return v0;
        }

        sub_1D51E8560();
        OUTLINED_FUNCTION_29();
        swift_allocError();
        OUTLINED_FUNCTION_199_3(v23, 3);
        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v25, 4);
    swift_willThrow();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(&v39);
    return v0;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1D4E7661C(v36, &unk_1EC7ED400, &qword_1D5620CF0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_117_11();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.remove<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.remove<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.remove<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v7 = *(v3 - 8);
  v1[31] = v7;
  v8 = *(v7 + 64);
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  v9 = sub_1D560C368();
  v1[34] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[35] = v10;
  v12 = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5333CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[35];
  v28 = v24[36];
  v30 = v24[33];
  v29 = v24[34];
  v31 = v24[31];
  v81 = v24[28];
  v83 = v24[29];
  v33 = v24[26];
  v32 = v24[27];
  v34 = v24[25];
  sub_1D560C358();
  v35 = sub_1D560C338();
  v37 = v36;
  v80 = v35;
  v24[37] = v35;
  v24[38] = v36;
  v38 = *(v27 + 8);
  v39 = OUTLINED_FUNCTION_68_4();
  v40(v39);
  v41 = v31 + 16;
  v42 = *(v31 + 16);
  v43 = OUTLINED_FUNCTION_99();
  v42(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v44 = sub_1D5615D38();
  sub_1D53584AC(v30, v44, v32, v83, (v24 + 18));
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v45 = v24[32];
  v46 = v24[27];
  v47 = v24[25];
  v48 = sub_1D560C758();
  v24[39] = OUTLINED_FUNCTION_375(v48, qword_1EC87C110);
  v49 = OUTLINED_FUNCTION_62_5();
  v42(v49);

  v50 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v51 = v24[33];
    v82 = v24[32];
    v84 = v42;
    v52 = v24[31];
    v53 = v24[27];
    OUTLINED_FUNCTION_144();
    a13 = OUTLINED_FUNCTION_137_11();
    *v30 = 136446466;
    v54 = sub_1D4E6835C(v80, v37, &a13);
    OUTLINED_FUNCTION_41_41(v54);
    (v84)(v51, v82, v53);
    OUTLINED_FUNCTION_59_19();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    (*(v52 + 8))(v82, v53);
    v55 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v55, v56, v57);
    OUTLINED_FUNCTION_75_1();

    *(v30 + 14) = v41;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v64 = v24[31];
    v63 = v24[32];
    v65 = v24[27];

    v66 = OUTLINED_FUNCTION_15_8();
    v67(v66);
  }

  OUTLINED_FUNCTION_86_6();
  v68 = v24[30];
  v69 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1(v69);
  v24[40] = v70;
  v71 = v70;
  OUTLINED_FUNCTION_183();

  v72 = v24[24];
  v24[41] = v72;
  v24[2] = v24;
  v73 = OUTLINED_FUNCTION_48_8();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v74);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v24[12] = v75;
  v24[13] = &block_descriptor_73_0;
  v24[14] = v73;
  v76 = v72;
  OUTLINED_FUNCTION_372(v76, sel_performDeleteEntityWithRequest_completionHandler_, v76);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v77);
}

uint64_t sub_1D533400C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 336) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D533410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = *(v10 + 328);
  v14 = *(v10 + 304);
  v13 = *(v10 + 312);

  v15 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v16 = OUTLINED_FUNCTION_165_0();
  v17 = *(v10 + 304);
  if (v16)
  {
    v18 = *(v10 + 296);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v19);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v18;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v20, v21, "[%{public}s] Completed remove from library operation.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v22 = *(v10 + 304);
  }

  sub_1D534045C(v10 + 144);
  v23 = *(v10 + 288);
  v24 = *(v10 + 256);
  v25 = *(v10 + 264);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1D533420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[41];
  v11 = v10[42];
  v13 = v10[40];
  v14 = v10[36];
  v16 = v10[32];
  v15 = v10[33];
  swift_willThrow();
  sub_1D534045C((v10 + 18));

  OUTLINED_FUNCTION_55();
  v17 = v10[42];
  OUTLINED_FUNCTION_14_47();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t MusicLibrary.remove(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[30] = v2;
  v1[31] = v0;
  v3 = type metadata accessor for Playlist.Folder();
  v1[32] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v6 = sub_1D560C368();
  v1[35] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[36] = v7;
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_127();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719B8);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D5334378()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v6 = v0[30];
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[38] = v7;
  v0[39] = v8;
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_159();
  v11(v10);
  sub_1D5341D10(v6, v4);
  v0[28] = v5;
  v0[29] = sub_1D4E413BC(&unk_1EDD52B98, 255, type metadata accessor for Playlist.Folder);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 25);
  v13 = OUTLINED_FUNCTION_201();
  sub_1D5341D10(v13, v14);
  sub_1D526F59C();
  v16 = v15;
  v17 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v0[40] = v17;
  v0[24] = v17;
  sub_1D4E62938((v0 + 25), (v0 + 18));
  v0[23] = v16;
  v17;

  sub_1D5340BF8(boxed_opaque_existential_0, (v0 + 18));
  sub_1D5358624();

  OUTLINED_FUNCTION_31_43();
  sub_1D5341038(v4, v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v19 = v0[33];
  v20 = v0[30];
  v21 = sub_1D560C758();
  v22 = __swift_project_value_buffer(v21, qword_1EC87C110);
  v0[41] = v22;
  v23 = OUTLINED_FUNCTION_131();
  sub_1D5341D10(v23, v24);

  v25 = sub_1D560C738();
  v26 = sub_1D56156E8();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[33];
  if (v27)
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_142_10();
    *v22 = 136446466;
    v29 = OUTLINED_FUNCTION_93();
    v32 = sub_1D4E6835C(v29, v30, v31);
    OUTLINED_FUNCTION_42_39(v32);
    Playlist.Folder.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_31_43();
    sub_1D5341038(v28, v33);
    v34 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v34, v35, v36);
    OUTLINED_FUNCTION_183();

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1D4E3F000, v25, v26, "[%{public}s] Removing %{public}s from the user’s library.", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_31_43();
    sub_1D5341038(v28, v37);
  }

  OUTLINED_FUNCTION_146_7();
  v38 = v0[31];
  v39 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v39);
  v0[42] = v40;
  v41 = v40;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v42;
  v43 = OUTLINED_FUNCTION_99_14();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v44);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v45;
  v0[14] = v43;
  OUTLINED_FUNCTION_150_11(v46, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v47);
}

uint64_t sub_1D53346E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
    v5 = *(v1 + 312);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D53347E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = *(v10 + 328);
  v14 = *(v10 + 312);
  v13 = *(v10 + 320);

  v15 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v16 = OUTLINED_FUNCTION_165_0();
  v17 = *(v10 + 312);
  if (v16)
  {
    v18 = *(v10 + 304);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v19);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v18;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v20, v21, "[%{public}s] Completed remove from library operation.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v22 = *(v10 + 312);
  }

  sub_1D534045C(v10 + 144);
  v23 = *(v10 + 296);
  v24 = *(v10 + 264);
  v25 = *(v10 + 272);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1D53348E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[42];
  v11 = v10[43];
  v13 = v10[40];
  v14 = v10[37];
  v16 = v10[33];
  v15 = v10[34];
  swift_willThrow();
  sub_1D534045C((v10 + 18));

  OUTLINED_FUNCTION_55();
  v17 = v10[43];
  OUTLINED_FUNCTION_14_47();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t MusicLibrary.removeDownload<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.removeDownload<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.removeDownload<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_171_5(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1_0();
  v0[29] = v7;
  v9 = *(v8 + 64);
  v0[30] = OUTLINED_FUNCTION_167();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_244_1(v10);
  v0[32] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[33] = v12;
  v14 = *(v13 + 64);
  v0[34] = OUTLINED_FUNCTION_127();
  v15 = sub_1D560C368();
  v0[35] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[36] = v16;
  v18 = *(v17 + 64);
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D5334B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_188_5();
  v21 = sub_1D560C338();
  v23 = v22;
  v15[38] = v21;
  v15[39] = v22;
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_68_4();
  v26(v25);
  v27 = *(v19 + 16);
  v28 = OUTLINED_FUNCTION_45_3();
  v27(v28);

  sub_1D5391E6C(v17, 2, v18, MEMORY[0x1E69E7CC0], v14, a12, a13, a14, a11);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v29 = OUTLINED_FUNCTION_343_0();
  v15[40] = OUTLINED_FUNCTION_375(v29, qword_1EC87C110);
  v30 = OUTLINED_FUNCTION_62_5();
  v27(v30);

  v31 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v33 = v15[30];
    v32 = v15[31];
    v34 = v15[29];
    v35 = v15[24];
    OUTLINED_FUNCTION_144();
    v74 = OUTLINED_FUNCTION_137_11();
    v41 = OUTLINED_FUNCTION_341_0(4.8752e-34, v74, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_41_41(v41);
    v42 = OUTLINED_FUNCTION_322_0();
    v43(v42);
    OUTLINED_FUNCTION_59_19();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    v44 = *(v34 + 8);
    v45 = OUTLINED_FUNCTION_210();
    v46(v45);
    v47 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v47, v48, v49);
    OUTLINED_FUNCTION_75_1();

    *(v16 + 14) = v23;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v56 = v15[29];
    v55 = v15[30];
    v57 = v15[24];

    v58 = OUTLINED_FUNCTION_15_8();
    v59(v58);
  }

  OUTLINED_FUNCTION_86_6();
  v60 = v15[34];
  v61 = v15[32];
  v62 = v15[28];
  v63 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1(v63);
  v15[41] = v64;
  v65 = v64;
  OUTLINED_FUNCTION_183();

  v66 = *(v60 + *(v61 + 64));
  v15[42] = v66;
  v15[2] = v15;
  v67 = OUTLINED_FUNCTION_48_8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v68);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v15[12] = v69;
  v15[13] = &block_descriptor_83;
  v15[14] = v67;
  v70 = v66;
  OUTLINED_FUNCTION_372(v70, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v70);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v71);
}

uint64_t sub_1D5334E18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
    v5 = *(v1 + 312);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5334F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);
  v14 = *(v12 + 312);
  v15 = *(v12 + 320);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v17 = OUTLINED_FUNCTION_221_3();
  v18 = *(v12 + 312);
  if (v17)
  {
    v19 = *(v12 + 304);
    v21 = *(v12 + 264);
    v20 = *(v12 + 272);
    v22 = *(v12 + 256);
    v23 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v23 = 136446210;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    *(v23 + 4) = v19;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v27, v28, v29, v30);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v31 = *(v21 + 8);
    v32 = OUTLINED_FUNCTION_128();
  }

  else
  {
    v35 = *(v12 + 264);
    v34 = *(v12 + 272);
    v36 = *(v12 + 256);
    v37 = *(v12 + 312);

    v32 = OUTLINED_FUNCTION_15_8();
  }

  v33(v32);
  v38 = *(v12 + 296);
  v39 = *(v12 + 272);
  v41 = *(v12 + 240);
  v40 = *(v12 + 248);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t MusicLibrary.cancelDownload<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.cancelDownload<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.cancelDownload<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_171_5(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1_0();
  v0[29] = v7;
  v9 = *(v8 + 64);
  v0[30] = OUTLINED_FUNCTION_167();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_244_1(v10);
  v0[32] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[33] = v12;
  v14 = *(v13 + 64);
  v0[34] = OUTLINED_FUNCTION_127();
  v15 = sub_1D560C368();
  v0[35] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[36] = v16;
  v18 = *(v17 + 64);
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D533525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_188_5();
  v21 = sub_1D560C338();
  v23 = v22;
  v15[38] = v21;
  v15[39] = v22;
  v24 = *(v20 + 8);
  v25 = OUTLINED_FUNCTION_68_4();
  v26(v25);
  v27 = *(v19 + 16);
  v28 = OUTLINED_FUNCTION_45_3();
  v27(v28);

  sub_1D5391E6C(v17, 1, v18, MEMORY[0x1E69E7CC0], v14, a12, a13, a14, a11);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v29 = OUTLINED_FUNCTION_343_0();
  v15[40] = OUTLINED_FUNCTION_375(v29, qword_1EC87C110);
  v30 = OUTLINED_FUNCTION_62_5();
  v27(v30);

  v31 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v33 = v15[30];
    v32 = v15[31];
    v34 = v15[29];
    v35 = v15[24];
    OUTLINED_FUNCTION_144();
    v74 = OUTLINED_FUNCTION_137_11();
    v41 = OUTLINED_FUNCTION_341_0(4.8752e-34, v74, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_41_41(v41);
    v42 = OUTLINED_FUNCTION_322_0();
    v43(v42);
    OUTLINED_FUNCTION_59_19();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    v44 = *(v34 + 8);
    v45 = OUTLINED_FUNCTION_210();
    v46(v45);
    v47 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v47, v48, v49);
    OUTLINED_FUNCTION_75_1();

    *(v16 + 14) = v23;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v56 = v15[29];
    v55 = v15[30];
    v57 = v15[24];

    v58 = OUTLINED_FUNCTION_15_8();
    v59(v58);
  }

  OUTLINED_FUNCTION_86_6();
  v60 = v15[34];
  v61 = v15[32];
  v62 = v15[28];
  v63 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1(v63);
  v15[41] = v64;
  v65 = v64;
  OUTLINED_FUNCTION_183();

  v66 = *(v60 + *(v61 + 64));
  v15[42] = v66;
  v15[2] = v15;
  v67 = OUTLINED_FUNCTION_48_8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v68);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v15[12] = v69;
  v15[13] = &block_descriptor_89_0;
  v15[14] = v67;
  v70 = v66;
  OUTLINED_FUNCTION_372(v70, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v70);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v71);
}

uint64_t sub_1D5335508()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
    v5 = *(v1 + 312);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5335608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);
  v14 = *(v12 + 312);
  v15 = *(v12 + 320);

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v17 = OUTLINED_FUNCTION_221_3();
  v18 = *(v12 + 312);
  if (v17)
  {
    v19 = *(v12 + 304);
    v21 = *(v12 + 264);
    v20 = *(v12 + 272);
    v22 = *(v12 + 256);
    v23 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v23 = 136446210;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    *(v23 + 4) = v19;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v27, v28, v29, v30);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v31 = *(v21 + 8);
    v32 = OUTLINED_FUNCTION_128();
  }

  else
  {
    v35 = *(v12 + 264);
    v34 = *(v12 + 272);
    v36 = *(v12 + 256);
    v37 = *(v12 + 312);

    v32 = OUTLINED_FUNCTION_15_8();
  }

  v33(v32);
  v38 = *(v12 + 296);
  v39 = *(v12 + 272);
  v41 = *(v12 + 240);
  v40 = *(v12 + 248);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1D533575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[42];
  v13 = v12[43];
  v15 = v12[41];
  v16 = v12[37];
  v18 = v12[33];
  v17 = v12[34];
  v20 = v12[31];
  v19 = v12[32];
  v21 = v12[30];
  swift_willThrow();
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_81_0();
  v24(v23);

  OUTLINED_FUNCTION_55();
  v25 = v12[43];
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

Swift::Void __swiftcall MusicLibrary.cancelAllDownloads()()
{
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v0 = sub_1D560C758();
  __swift_project_value_buffer(v0, qword_1EC87C110);
  v1 = sub_1D560C738();
  v2 = sub_1D56156E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D4E3F000, v1, v2, "Cancelling all downloads.", v3, 2u);
    OUTLINED_FUNCTION_54();
  }

  v4 = objc_opt_self();

  [v4 cancelAllDownloads];
}

uint64_t MusicLibrary.like<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_349_0(v1, v2);
  v0[31] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[32] = v4;
  v6 = *(v5 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v0[34] = v7;
  v9 = *(v8 + 64);
  v0[35] = OUTLINED_FUNCTION_127();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1D53359E4()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v5 = v1[35];
  v6 = v1[28];
  v7 = v1[29];
  v8 = OUTLINED_FUNCTION_48_22(v1[34]);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_102();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_86_6();
    OUTLINED_FUNCTION_270_1();
    v10 = *MEMORY[0x1E6976988];
    v11 = OUTLINED_FUNCTION_239_2(v4);
    v12(v11);
    v13 = OUTLINED_FUNCTION_131();
    v15 = sub_1D5159364(v13, v14, v2);
    v1[36] = v15;
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_201();
    v18(v17);
    v19 = *(sub_1D4E5A1CC() + 32);
    v1[37] = v19;
    v20 = v19;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_78_6();
    v1[2] = v21;
    OUTLINED_FUNCTION_48_8();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v22);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_123_10();
    [v3 setTasteType:1 forModelObject:v15 completionHandler:v0];
    OUTLINED_FUNCTION_89();

    MEMORY[0x1EEE6DEC8](v23);
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    sub_1D4E7661C((v1 + 23), &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
  }
}

uint64_t sub_1D5335BDC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5335CD8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);

  OUTLINED_FUNCTION_292_2((v0 + 144));

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5335D54()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  swift_willThrow();

  OUTLINED_FUNCTION_292_2(v0 + 18);

  OUTLINED_FUNCTION_55();
  v6 = v0[38];
  OUTLINED_FUNCTION_153_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D5335DD8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    v5 = OUTLINED_FUNCTION_143_5();

    return sub_1D4F23514(v5, v6);
  }

  else
  {
    v8 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t MusicLibrary.undoLike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_349_0(v1, v2);
  v0[31] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[32] = v4;
  v6 = *(v5 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v0[34] = v7;
  v9 = *(v8 + 64);
  v0[35] = OUTLINED_FUNCTION_127();
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1D5335F20()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v5 = v1[35];
  v6 = v1[28];
  v7 = v1[29];
  v8 = OUTLINED_FUNCTION_48_22(v1[34]);
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_102();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_86_6();
    OUTLINED_FUNCTION_270_1();
    v10 = *MEMORY[0x1E6976988];
    v11 = OUTLINED_FUNCTION_239_2(v4);
    v12(v11);
    v13 = OUTLINED_FUNCTION_131();
    v15 = sub_1D5159364(v13, v14, v2);
    v1[36] = v15;
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_201();
    v18(v17);
    v19 = *(sub_1D4E5A1CC() + 32);
    v1[37] = v19;
    v20 = v19;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_78_6();
    v1[2] = v21;
    OUTLINED_FUNCTION_48_8();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v22);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_123_10();
    [v3 setTasteType:0 forModelObject:v15 completionHandler:v0];
    OUTLINED_FUNCTION_89();

    MEMORY[0x1EEE6DEC8](v23);
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    sub_1D4E7661C((v1 + 23), &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
  }
}

uint64_t sub_1D5336118()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t MusicLibrary.dislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_291_2(v1, v2, v3);
  v0[73] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[74] = v5;
  v7 = *(v6 + 64);
  v0[75] = OUTLINED_FUNCTION_127();
  v8 = sub_1D56131C8();
  v0[76] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[77] = v9;
  v11 = *(v10 + 64);
  v0[78] = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1D53362FC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_290_0();
  if (!v1[47])
  {
    sub_1D4E7661C((v1 + 44), &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_24_6();
    *(v0 + 32) = 0;
    goto LABEL_9;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((OUTLINED_FUNCTION_246_1() & 1) == 0)
  {
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_24_6();
    goto LABEL_9;
  }

  if (!v1[42])
  {
LABEL_9:
    OUTLINED_FUNCTION_268_2();
    sub_1D4E7661C(v0, &qword_1EC7EC548, &qword_1D5621090);
    OUTLINED_FUNCTION_15_2();
    sub_1D560DB68();
    sub_1D4E7661C((v1 + 49), &qword_1EC7EEC40, &unk_1D561C070);
LABEL_10:
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  OUTLINED_FUNCTION_378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_293_0())
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    sub_1D4E7661C(v4, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_317_0();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_215_1();
  v5 = *MEMORY[0x1E6976988];
  v6 = OUTLINED_FUNCTION_319_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_63_1();
  v10 = sub_1D5159364(v8, v9, v0);
  v1[79] = v10;
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_70();
  v13(v12);
  sub_1D560D398();
  v14 = sub_1D560D3D8();
  v15 = *(v2 + 8);
  v16 = OUTLINED_FUNCTION_201();
  v17(v16);
  v18 = v1[72];
  if (v14)
  {
    v1[80] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest) initWithModelObject:v10 requestActionType:0];
    v19 = sub_1D4E5A1CC();
    OUTLINED_FUNCTION_112_11(v19);
    v1[81] = v20;
    v21 = v20;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[10] = v22;
    v1[11] = sub_1D5336698;
    swift_continuation_init();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_141_4(v23);
    v1[27] = 1107296256;
    OUTLINED_FUNCTION_140_11();
    OUTLINED_FUNCTION_150_11(v24, sel_performFavoriteStateChangeRequest_completionHandler_);
  }

  else
  {
    v25 = *(sub_1D4E5A1CC() + 32);
    v1[83] = v25;
    v26 = v25;

    OUTLINED_FUNCTION_114_6();
    v1[2] = v27;
    v28 = OUTLINED_FUNCTION_99_14();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_138_10(v29);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_147_8();
    v1[21] = v30;
    v1[22] = v28;
    [v26 setTasteType:2 forModelObject:v10 completionHandler:v1 + 18];
  }

  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_1D5336698()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 656) = *(v3 + 112);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336794()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t MusicLibrary.undoDislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_291_2(v1, v2, v3);
  v0[73] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[74] = v5;
  v7 = *(v6 + 64);
  v0[75] = OUTLINED_FUNCTION_127();
  v8 = sub_1D56131C8();
  v0[76] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[77] = v9;
  v11 = *(v10 + 64);
  v0[78] = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1D5336978()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_290_0();
  if (!v1[47])
  {
    sub_1D4E7661C((v1 + 44), &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_24_6();
    *(v0 + 32) = 0;
    goto LABEL_9;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((OUTLINED_FUNCTION_246_1() & 1) == 0)
  {
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_24_6();
    goto LABEL_9;
  }

  if (!v1[42])
  {
LABEL_9:
    OUTLINED_FUNCTION_268_2();
    sub_1D4E7661C(v0, &qword_1EC7EC548, &qword_1D5621090);
    OUTLINED_FUNCTION_15_2();
    sub_1D560DB68();
    sub_1D4E7661C((v1 + 49), &qword_1EC7EEC40, &unk_1D561C070);
LABEL_10:
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  OUTLINED_FUNCTION_378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_293_0())
  {
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    sub_1D4E7661C(v5, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_317_0();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_215_1();
  v6 = *MEMORY[0x1E6976988];
  v7 = OUTLINED_FUNCTION_319_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_63_1();
  v11 = sub_1D5159364(v9, v10, v0);
  v1[79] = v11;
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_70();
  v14(v13);
  sub_1D560D398();
  v15 = sub_1D560D3D8();
  v16 = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_201();
  v18(v17);
  v19 = v1[72];
  if (v15)
  {
    v1[80] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest) initWithModelObject:v11 requestActionType:1];
    v20 = sub_1D4E5A1CC();
    OUTLINED_FUNCTION_112_11(v20);
    v1[81] = v21;
    v22 = v21;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[10] = v23;
    v1[11] = sub_1D5336D10;
    swift_continuation_init();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_141_4(v24);
    v1[27] = 1107296256;
    OUTLINED_FUNCTION_140_11();
    OUTLINED_FUNCTION_150_11(v25, sel_performFavoriteStateChangeRequest_completionHandler_);
  }

  else
  {
    v26 = *(sub_1D4E5A1CC() + 32);
    v1[83] = v26;
    v27 = v26;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[2] = v28;
    v29 = OUTLINED_FUNCTION_99_14();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_138_10(v30);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_147_8();
    v1[21] = v31;
    v1[22] = v29;
    [v2 setTasteType:0 forModelObject:v11 completionHandler:v1 + 18];
  }

  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v32);
}

uint64_t sub_1D5336D10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 656) = *(v3 + 112);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336E0C()
{
  OUTLINED_FUNCTION_80();

  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = *(v0 + 600);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_292_2((v0 + 432));

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5336E9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336F98()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 664);
  v2 = *(v0 + 624);
  v3 = *(v0 + 600);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_292_2((v0 + 432));

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5337020()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  swift_willThrow();

  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D53370CC()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 672);
  swift_willThrow();
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 624);
  v5 = *(v0 + 600);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t MusicLibrary.favorite<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_360(v7);
  v9 = OUTLINED_FUNCTION_296_0(v8);
  v10 = OUTLINED_FUNCTION_367_0(v9);
  v0[61] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[62] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_359_0(v14);
  v0[64] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[65] = v16;
  v18 = *(v17 + 64);
  v0[66] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D5337668()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
    v5 = *(v1 + 544);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5337768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed favoriting operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.undoFavorite<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_360(v7);
  v9 = OUTLINED_FUNCTION_296_0(v8);
  v10 = OUTLINED_FUNCTION_367_0(v9);
  v0[61] = v10;
  OUTLINED_FUNCTION_69(v10);
  v0[62] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_359_0(v14);
  v0[64] = v15;
  OUTLINED_FUNCTION_69(v15);
  v0[65] = v16;
  v18 = *(v17 + 64);
  v0[66] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D5337DC0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
    v5 = *(v1 + 544);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5337EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed undo favorite operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.pin<A>(_:defaultAction:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  *(v1 + 400) = v4;
  *(v1 + 408) = v0;
  *(v1 + 384) = v5;
  *(v1 + 392) = v6;
  v7 = sub_1D56131C8();
  *(v1 + 416) = v7;
  OUTLINED_FUNCTION_69(v7);
  *(v1 + 424) = v8;
  v10 = *(v9 + 64);
  *(v1 + 432) = OUTLINED_FUNCTION_127();
  v11 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  *(v1 + 440) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  *(v1 + 448) = v14;
  v16 = *(v15 + 64);
  *(v1 + 456) = OUTLINED_FUNCTION_167();
  *(v1 + 464) = swift_task_alloc();
  v17 = sub_1D560C368();
  *(v1 + 472) = v17;
  OUTLINED_FUNCTION_69(v17);
  *(v1 + 480) = v18;
  v20 = *(v19 + 64);
  *(v1 + 488) = OUTLINED_FUNCTION_127();
  *(v1 + 634) = *v3;
  v21 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

void sub_1D53381B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_342();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_335();
  a26 = v28;
  v31 = *(v28 + 480);
  v32 = *(v28 + 488);
  v33 = *(v28 + 472);
  sub_1D560C358();
  v34 = sub_1D560C338();
  v36 = v35;
  v122 = v34;
  *(v28 + 496) = v34;
  *(v28 + 504) = v35;
  v37 = *(v31 + 8);
  v38 = OUTLINED_FUNCTION_68_4();
  v39(v38);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v40 = *(v28 + 464);
  v41 = *(v28 + 448);
  v43 = *(v28 + 384);
  v42 = *(v28 + 392);
  v44 = sub_1D560C758();
  v45 = __swift_project_value_buffer(v44, qword_1EC87C110);
  *(v28 + 512) = v45;
  v48 = *(v41 + 16);
  v47 = v41 + 16;
  v46 = v48;
  v49 = OUTLINED_FUNCTION_74_0();
  v48(v49);

  v121 = v45;
  v50 = sub_1D560C738();
  v51 = sub_1D56156E8();

  if (os_log_type_enabled(v50, v51))
  {
    HIDWORD(a11) = *(v28 + 634);
    a14 = v36;
    v53 = *(v28 + 456);
    v52 = *(v28 + 464);
    v54 = *(v28 + 448);
    v55 = *(v28 + 392);
    v56 = OUTLINED_FUNCTION_138_0();
    a12 = OUTLINED_FUNCTION_355_0();
    a16 = a12;
    OUTLINED_FUNCTION_251_1(4.8754e-34);
    v58 = sub_1D4E6835C(v122, a14, v57);
    OUTLINED_FUNCTION_42_39(v58);
    v59 = OUTLINED_FUNCTION_161();
    v46(v59);
    sub_1D5614DB8();
    v60 = OUTLINED_FUNCTION_326_0();
    v61(v60, v55);
    v62 = sub_1D4E6835C(v53, v47, &a16);

    *(v56 + 14) = v62;
    *(v56 + 22) = 2082;
    *(v28 + 633) = BYTE4(a11);
    v63 = sub_1D5614DB8();
    sub_1D4E6835C(v63, v64, &a16);
    OUTLINED_FUNCTION_283_0();
    *(v56 + 24) = v47;
    _os_log_impl(&dword_1D4E3F000, v50, v51, "[%{public}s] Pinning item %{public}s with action %{public}s.", v56, 0x20u);
    OUTLINED_FUNCTION_340_0();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v65 = *(v28 + 464);
    v66 = *(v28 + 448);
    v67 = *(v28 + 392);

    v68 = *(v66 + 8);
    v69 = OUTLINED_FUNCTION_70();
    v70(v69);
  }

  v71 = *(v28 + 384);
  v72 = *(*(v28 + 400) + 16);
  v72(*(v28 + 392));
  if (!*(v28 + 208))
  {
    v90 = *(v28 + 392);
    v89 = *(v28 + 400);
    v91 = *(v28 + 384);
    sub_1D4E7661C(v28 + 184, &qword_1EC7EC500, &unk_1D5621030);
    v92 = OUTLINED_FUNCTION_93();
    v72(v92);
    sub_1D4E7661C(v28 + 224, &qword_1EC7EC500, &unk_1D5621030);
LABEL_13:
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    OUTLINED_FUNCTION_341();
    return;
  }

  sub_1D4E48324((v28 + 184), v28 + 144);
  sub_1D4E62938(v28 + 144, v28 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!swift_dynamicCast())
  {
    *(v28 + 376) = 0;
    *(v28 + 344) = 0u;
    *(v28 + 360) = 0u;
    sub_1D4E7661C(v28 + 344, &unk_1EC7ED400, &qword_1D5620CF0);
    goto LABEL_13;
  }

  v73 = *(v28 + 408);
  sub_1D4E48324((v28 + 344), v28 + 264);
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D51FEDF8();
  OUTLINED_FUNCTION_309_0();

  v74 = sub_1D560C738();
  sub_1D56156E8();

  v75 = OUTLINED_FUNCTION_221_3();
  if (v51)
  {
    if (v75)
    {
      v76 = OUTLINED_FUNCTION_142();
      v77 = OUTLINED_FUNCTION_138_0();
      a16 = v77;
      v84 = OUTLINED_FUNCTION_350_0(4.8751e-34, v77, v78, v79, v80, v81, v82, v83);

      *(v76 + 4) = v84;
      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_370(v85, v86, v87, v88);
      __swift_destroy_boxed_opaque_existential_1(v77);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_54();
    }

    else
    {
    }

    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v112, 6);
    swift_willThrow();
    OUTLINED_FUNCTION_286_2();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_341();

    v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12, v121, a14, v122, a16, a17, a18, a19, a20);
  }

  else
  {
    if (v75)
    {
      v93 = OUTLINED_FUNCTION_142();
      v94 = OUTLINED_FUNCTION_138_0();
      a16 = v94;
      *(v93 + 4) = OUTLINED_FUNCTION_350_0(4.8751e-34, v94, v95, v96, v97, v98, v99, v100);
      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_370(v101, v102, v103, v104);
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_54();
    }

    v105 = *(v28 + 634);
    v106 = *(v28 + 408);
    v107 = *(v28 + 168);
    *(v28 + 520) = v107;
    *(v28 + 536) = __swift_project_boxed_opaque_existential_1((v28 + 144), v107);
    sub_1D4E5A1CC();
    *(v28 + 544) = sub_1D5329168();

    *(v28 + 632) = v105;
    *(v28 + 552) = sub_1D56153C8();
    *(v28 + 560) = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_341();

    MEMORY[0x1EEE6DFA0](v108, v109, v110);
  }
}

uint64_t sub_1D5338794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[55];

  sub_1D5201214();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D533882C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 634);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
  (*(v3 + 104))(v2, *MEMORY[0x1E6976988], v4);
  v6 = OUTLINED_FUNCTION_71();
  v8 = sub_1D5159364(v6, v7, v5);
  *(v0 + 568) = v8;
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_128();
  v11(v10);
  v12 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  v15 = [v12 initWithEntityToPin:v8 defaultAction:qword_1D5653F90[v1]];
  *(v0 + 576) = v15;

  v15;
  v16 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_152_0())
  {
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v19 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v1 + 4) = sub_1D4E6835C(v19, v17, v20);
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v21, v22, "[%{public}s] Performing pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  v23 = *(v0 + 408);
  v24 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v24);
  *(v0 + 584) = v25;
  v26 = v25;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  *(v0 + 16) = v27;
  OUTLINED_FUNCTION_99_14();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v28);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  OUTLINED_FUNCTION_150_11(v29, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1D5338A34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5338B30()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 576);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);

  v5 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v8);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v9, v10, "[%{public}s] Completed pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v11 = *(v0 + 552);
  v12 = *(v0 + 408);
  sub_1D4E5A1CC();
  *(v0 + 600) = sub_1D5329168();

  *(v0 + 608) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5338C40()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[55];

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5338CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v14 = v12[63];
  v15 = v12[64];

  v16 = sub_1D560C738();
  sub_1D56156E8();

  v17 = OUTLINED_FUNCTION_152_0();
  v18 = v12[72];
  v19 = v12[71];
  v20 = v12[63];
  if (v17)
  {
    v21 = v12[62];
    v22 = v12[55];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v23 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v25 = sub_1D4E6835C(v23, v20, v24);

    *(v13 + 4) = v25;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v26, v27, "[%{public}s] Discarded transient state for pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v22 = v12[55];
    v28 = v12[63];
  }

  sub_1D5341038(v22, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
  v29 = v12[61];
  v31 = v12[57];
  v30 = v12[58];
  v33 = v12[54];
  v32 = v12[55];
  __swift_destroy_boxed_opaque_existential_1(v12 + 33);
  OUTLINED_FUNCTION_292_2(v12 + 18);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_1D5338F7C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[55];

  OUTLINED_FUNCTION_371();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5338FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v13 = v10[63];
  v12 = v10[64];

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v15 = OUTLINED_FUNCTION_165_0();
  v16 = v10[63];
  if (v15)
  {
    v17 = v10[62];
    OUTLINED_FUNCTION_142();
    a9 = OUTLINED_FUNCTION_119_9();
    *v11 = 136446210;
    v18 = OUTLINED_FUNCTION_93();
    sub_1D4E6835C(v18, v19, v20);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v21, v22, "[%{public}s] Discarded transient state for pin change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v23 = v10[74];
  v24 = v10[72];
  v25 = v10[71];
  v26 = v10[55];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v26, v27);
  v28 = v10[74];
  OUTLINED_FUNCTION_286_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t MusicLibrary.unpin<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_1D56131C8();
  v1[22] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[23] = v6;
  v8 = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v1[26] = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258_2(v15);
  v16 = type metadata accessor for MusicPin();
  v1[28] = v16;
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[29] = OUTLINED_FUNCTION_167();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  v22 = sub_1D560C368();
  v1[34] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[35] = v23;
  v25 = *(v24 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v26 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1D53392E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_32_5();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_234_0();
  a24 = v26;
  v29 = v26[35];
  v30 = v26[36];
  v31 = v26[34];
  sub_1D560C358();
  v32 = sub_1D560C338();
  v34 = v33;
  v107 = v32;
  v26[37] = v32;
  v26[38] = v33;
  v35 = *(v29 + 8);
  v36 = OUTLINED_FUNCTION_68_4();
  v37(v36);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v38 = v26[33];
  v39 = v26[31];
  v41 = v26[18];
  v40 = v26[19];
  v42 = sub_1D560C758();
  v43 = __swift_project_value_buffer(v42, qword_1EC87C110);
  v26[39] = v43;
  v46 = *(v39 + 16);
  v45 = v39 + 16;
  v44 = v46;
  v47 = OUTLINED_FUNCTION_74_0();
  v46(v47);

  v48 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_309_0();

  v49 = os_log_type_enabled(v48, v40);
  v50 = v26[33];
  v108 = v34;
  if (v49)
  {
    a11 = v43;
    v51 = v26[31];
    v52 = v26[32];
    HIDWORD(a10) = v40;
    v53 = v26[19];
    OUTLINED_FUNCTION_144();
    a9 = OUTLINED_FUNCTION_142_10();
    a14 = a9;
    *v41 = 136446466;
    v54 = sub_1D4E6835C(v107, v34, &a14);
    OUTLINED_FUNCTION_42_39(v54);
    v55 = OUTLINED_FUNCTION_161();
    v44(v55);
    sub_1D5614DB8();
    v56 = OUTLINED_FUNCTION_326_0();
    v57(v56, v53);
    v58 = sub_1D4E6835C(v52, v45, &a14);

    *(v41 + 14) = v58;
    _os_log_impl(&dword_1D4E3F000, v48, BYTE4(a10), "[%{public}s] Unpinning item %{public}s.", v41, 0x16u);
    OUTLINED_FUNCTION_238_2();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v59 = v26[31];
    v60 = v26[19];

    (*(v59 + 8))(v50, v60);
  }

  v62 = v26[27];
  v61 = v26[28];
  v64 = v26[20];
  v63 = v26[21];
  v66 = v26[18];
  v65 = v26[19];
  sub_1D4E5A1CC();
  sub_1D5329168();

  sub_1D5200D64();

  OUTLINED_FUNCTION_57(v62, 1, v61);
  if (v67)
  {
    sub_1D4E7661C(v26[27], &qword_1EC7F1D88, &unk_1D5643CB0);

    v68 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_227_3();
    if (OUTLINED_FUNCTION_221_3())
    {
      v69 = OUTLINED_FUNCTION_142();
      v70 = OUTLINED_FUNCTION_138_0();
      a14 = v70;
      v75 = OUTLINED_FUNCTION_351_0(4.8751e-34, v70, v71, v72, v73, v74);

      *(v69 + 4) = v75;
      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_370(v76, v77, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_54();
    }

    else
    {
    }

    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v97, 5);
    swift_willThrow();
    OUTLINED_FUNCTION_294_1();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_16_5();

    return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, v107, v108, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_1D5340FD4(v26[27], v26[30]);

    v80 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_227_3();
    if (OUTLINED_FUNCTION_221_3())
    {
      v82 = OUTLINED_FUNCTION_142();
      v83 = OUTLINED_FUNCTION_138_0();
      a14 = v83;
      *(v82 + 4) = OUTLINED_FUNCTION_351_0(4.8751e-34, v83, v84, v85, v86, v87);
      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_370(v88, v89, v90, v91);
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_54();
    }

    v92 = v26[21];
    sub_1D4E5A1CC();
    v26[40] = sub_1D5329168();

    v26[41] = sub_1D56153C8();
    v26[42] = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_16_5();

    return MEMORY[0x1EEE6DFA0](v93, v94, v95);
  }
}

uint64_t sub_1D5339788()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[30];
  v4 = v0[26];

  sub_1D5201614(v3);

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D533980C()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  (*(v8 + 104))(v5, *MEMORY[0x1E6976988], v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_45_3();
  v11(v10);
  OUTLINED_FUNCTION_8_101();
  v12 = OUTLINED_FUNCTION_81_0();
  sub_1D5341D10(v12, v13);
  sub_1D4ECBE48();
  v15 = v14;
  v0[43] = v14;
  (*(v8 + 8))(v5, v7);
  v0[44] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToUnPin_];

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    v18 = v0[37];
    v17 = v0[38];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    *v6 = 136446210;
    v19 = OUTLINED_FUNCTION_99();
    *(v6 + 4) = sub_1D4E6835C(v19, v20, v21);
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v22, v23, v24, v25, v6, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  v26 = v0[21];
  v27 = sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11(v27);
  v0[45] = v28;
  v29 = v28;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v30;
  OUTLINED_FUNCTION_99_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v31);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  OUTLINED_FUNCTION_150_11(v32, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v33);
}

uint64_t sub_1D5339A20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5339B1C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);

  v4 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v7);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v8, v9, "[%{public}s] Completed unpin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v10 = *(v0 + 328);
  v11 = *(v0 + 168);
  sub_1D4E5A1CC();
  *(v0 + 376) = sub_1D5329168();

  *(v0 + 384) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5339C24()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[26];

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5339C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[38];
  v16 = v14[39];

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v18 = OUTLINED_FUNCTION_221_3();
  v19 = v14[43];
  v20 = v14[44];
  v21 = v14[38];
  if (v18)
  {
    v22 = v14[43];
    v23 = v14[37];
    a10 = v14[30];
    v24 = v14[26];
    v25 = OUTLINED_FUNCTION_142();
    a11 = OUTLINED_FUNCTION_138_0();
    *v25 = 136446210;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    *(v25 + 4) = v23;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v29, v30, v31, v32);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    OUTLINED_FUNCTION_4_108();
    sub_1D5341038(v24, v33);
    OUTLINED_FUNCTION_3_144();
    v35 = a10;
  }

  else
  {
    v36 = v14[30];
    v37 = v14[26];

    OUTLINED_FUNCTION_4_108();
    sub_1D5341038(v37, v38);
    OUTLINED_FUNCTION_3_144();
    v35 = v36;
  }

  sub_1D5341038(v35, v34);
  v39 = v14[36];
  v40 = v14[32];
  v41 = v14[33];
  v43 = v14[29];
  v42 = v14[30];
  v45 = v14[26];
  v44 = v14[27];
  v47 = v14[24];
  v46 = v14[25];

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D5339F8C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[26];

  OUTLINED_FUNCTION_371();

  v4 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5339FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v17 = v14[38];
  v16 = v14[39];

  v18 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v19 = OUTLINED_FUNCTION_165_0();
  v20 = v14[38];
  if (v19)
  {
    v21 = v14[37];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v22);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v21;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for unpin change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v25 = v14[46];
  v27 = v14[43];
  v26 = v14[44];
  v28 = v14[30];
  v29 = v14[26];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v29, v30);
  OUTLINED_FUNCTION_3_144();
  sub_1D5341038(v28, v31);
  v32 = v14[46];
  OUTLINED_FUNCTION_294_1();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.movePin(_:position:)()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_1D56131C8();
  v1[21] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[22] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_167();
  v9 = OUTLINED_FUNCTION_297_1(v8);
  v10 = OUTLINED_FUNCTION_259_0(v9);
  v11 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(v10);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v14 = type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v1[26] = OUTLINED_FUNCTION_167();
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_258_2(v17);
  v18 = sub_1D560C368();
  v1[28] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v22 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}