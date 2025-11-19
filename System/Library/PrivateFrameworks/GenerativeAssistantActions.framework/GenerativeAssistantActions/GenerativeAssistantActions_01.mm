uint64_t TextAssistantHandoff.attemptHandoff(userQuery:)(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {

    return MEMORY[0x2822009F8](TextAssistantHandoff.attemptHandoff(userQuery:), 0, 0);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of OSSignpostID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FixedResponse.rawValue.getter()
{
  result = 0x636E6163202C4B4FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      return result;
    case 6:
      result = 0;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD0000000000000B2;
      break;
    case 9:
    case 0x15:
      result = 0xD000000000000035;
      break;
    case 0xA:
      result = 0xD000000000000033;
      break;
    case 0xB:
      result = 0x1000000000000062;
      break;
    case 0xC:
      result = 0xD00000000000002FLL;
      break;
    case 0xD:
      result = 0xD00000000000002DLL;
      break;
    case 0xE:
      result = 0xD00000000000002BLL;
      break;
    case 0xF:
      result = 0xD00000000000002ALL;
      break;
    case 0x10:
      result = 0xD000000000000028;
      break;
    case 0x11:
      result = 0xD00000000000001DLL;
      break;
    case 0x12:
      result = 0xD000000000000025;
      break;
    case 0x13:
      result = 0x100000000000003BLL;
      break;
    case 0x14:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0x100000000000002FLL;
      break;
  }

  return result;
}

GenerativeAssistantActions::FixedResponse_optional __swiftcall FixedResponse.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FixedResponse@<X0>(unint64_t *a1@<X8>)
{
  result = FixedResponse.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for userResponseAcceptValues()
{
  v0 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  v2 = *(type metadata accessor for LocalizedStringResource() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24FE1AA40;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 543912769;
  v6._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v7 = static Disclaimer.partnerName;

  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  result = LocalizedStringResource.init(stringInterpolation:)();
  static ConfirmationText.userResponseAcceptValues = v5;
  return result;
}

uint64_t one-time initialization function for userResponseDeclineValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  v0 = *(type metadata accessor for LocalizedStringResource() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24FE1AA50;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = LocalizedStringResource.init(stringLiteral:)();
  static ConfirmationText.userResponseDeclineValues = v3;
  return result;
}

uint64_t one-time initialization function for openSettingsDeclineValues()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
  v0 = *(type metadata accessor for LocalizedStringResource() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24FE1AA60;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = LocalizedStringResource.init(stringLiteral:)();
  static ConfirmationText.openSettingsDeclineValues = v3;
  return result;
}

uint64_t one-time initialization function for partnerName()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

  v5 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
  result = (*(v1 + 8))(v4, v0);
  static Disclaimer.partnerName = v5;
  return result;
}

uint64_t key path getter for static Disclaimer.partnerName : Disclaimer.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for partnerName != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static Disclaimer.partnerName + 1);
  *a1 = static Disclaimer.partnerName;
  a1[1] = v2;
}

uint64_t key path setter for static Disclaimer.partnerName : Disclaimer.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = one-time initialization token for partnerName;

  if (v3 != -1)
  {
    swift_once();
  }

  *&static Disclaimer.partnerName = v2;
  *(&static Disclaimer.partnerName + 1) = v1;
}

uint64_t one-time initialization function for textCreationProgressText()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v9 = 0xD00000000000001ALL;
  v10 = 0x800000024FE1FC40;
  type metadata accessor for GenerativeAssistantSettingsProvider();
  static GenerativeAssistantSettingsProvider.shared.getter();
  dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

  v5 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x253056FE0](v5, v7);

  result = MEMORY[0x253056FE0](10911970, 0xA300000000000000);
  static ProgressText.textCreationProgressText = v9;
  unk_27F39FC00 = v10;
  return result;
}

uint64_t static Disclaimer.partnerName.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t one-time initialization function for partnerPaneURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_allocate_value_buffer(v0, static DefaultURL.partnerPaneURL);
  __swift_project_value_buffer(v0, static DefaultURL.partnerPaneURL);
  return URL.init(string:)();
}

uint64_t static DefaultURL.partnerPaneURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for partnerPaneURL != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = __swift_project_value_buffer(v2, static DefaultURL.partnerPaneURL);
  return outlined init with copy of Date?(v3, a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

GenerativeAssistantActions::CatId_optional __swiftcall CatId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 47;
  switch(v3)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v5 = 1;
      goto LABEL_65;
    case 2:
      v5 = 2;
      goto LABEL_65;
    case 3:
      v5 = 3;
      goto LABEL_65;
    case 4:
      v5 = 4;
      goto LABEL_65;
    case 5:
      v5 = 5;
      goto LABEL_65;
    case 6:
      v5 = 6;
      goto LABEL_65;
    case 7:
      v5 = 7;
      goto LABEL_65;
    case 8:
      v5 = 8;
      goto LABEL_65;
    case 9:
      v5 = 9;
      goto LABEL_65;
    case 10:
      v5 = 10;
      goto LABEL_65;
    case 11:
      v5 = 11;
      goto LABEL_65;
    case 12:
      v5 = 12;
      goto LABEL_65;
    case 13:
      v5 = 13;
      goto LABEL_65;
    case 14:
      v5 = 14;
      goto LABEL_65;
    case 15:
      v5 = 15;
      goto LABEL_65;
    case 16:
      v5 = 16;
      goto LABEL_65;
    case 17:
      v5 = 17;
      goto LABEL_65;
    case 18:
      v5 = 18;
      goto LABEL_65;
    case 19:
      v5 = 19;
      goto LABEL_65;
    case 20:
      v5 = 20;
      goto LABEL_65;
    case 21:
      v5 = 21;
      goto LABEL_65;
    case 22:
      v5 = 22;
      goto LABEL_65;
    case 23:
      v5 = 23;
      goto LABEL_65;
    case 24:
      v5 = 24;
      goto LABEL_65;
    case 25:
      v5 = 25;
      goto LABEL_65;
    case 26:
      v5 = 26;
      goto LABEL_65;
    case 27:
      v5 = 27;
      goto LABEL_65;
    case 28:
      v5 = 28;
      goto LABEL_65;
    case 29:
      v5 = 29;
      goto LABEL_65;
    case 30:
      v5 = 30;
      goto LABEL_65;
    case 31:
      v5 = 31;
      goto LABEL_65;
    case 32:
      v5 = 32;
      goto LABEL_65;
    case 33:
      v5 = 33;
      goto LABEL_65;
    case 34:
      v5 = 34;
      goto LABEL_65;
    case 35:
      v5 = 35;
      goto LABEL_65;
    case 36:
      v5 = 36;
      goto LABEL_65;
    case 37:
      v5 = 37;
      goto LABEL_65;
    case 38:
      v5 = 38;
      goto LABEL_65;
    case 39:
      v5 = 39;
      goto LABEL_65;
    case 40:
      v5 = 40;
      goto LABEL_65;
    case 41:
      v5 = 41;
      goto LABEL_65;
    case 42:
      v5 = 42;
      goto LABEL_65;
    case 43:
      v5 = 43;
      goto LABEL_65;
    case 44:
      v5 = 44;
      goto LABEL_65;
    case 45:
      v5 = 45;
      goto LABEL_65;
    case 46:
      v5 = 46;
LABEL_65:
      v6 = v5;
      break;
    case 47:
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    default:
      v6 = 65;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t CatId.rawValue.getter()
{
  result = 0x73736572676F7270;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
    case 0xE:
    case 0x17:
    case 0x18:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    case 4:
      result = 0x725064616F6C7075;
      break;
    case 5:
    case 0x19:
    case 0x34:
    case 0x35:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    case 7:
    case 0x25:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 0x12:
    case 0x22:
      result = 0xD000000000000013;
      break;
    case 9:
    case 0x23:
    case 0x26:
      result = 0xD000000000000018;
      break;
    case 0xA:
    case 0x29:
      result = 0xD000000000000017;
      break;
    case 0xB:
    case 0x10:
    case 0x11:
    case 0x2A:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD00000000000001BLL;
      break;
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xF:
    case 0x24:
    case 0x27:
      result = 0xD00000000000001DLL;
      break;
    case 0x13:
    case 0x14:
    case 0x3C:
      result = 0xD000000000000021;
      break;
    case 0x15:
      result = 0x65526C65636E6163;
      break;
    case 0x16:
      result = 0xD000000000000010;
      break;
    case 0x1A:
    case 0x1B:
    case 0x2C:
    case 0x33:
      result = 0xD00000000000001ELL;
      break;
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 0x1D:
    case 0x1E:
    case 0x3D:
      result = 0xD00000000000001CLL;
      break;
    case 0x1F:
      result = 0xD000000000000023;
      break;
    case 0x20:
    case 0x21:
    case 0x2F:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0xD000000000000015;
      break;
    case 0x2B:
      result = 0x736B7341656D6361;
      break;
    case 0x2D:
      result = 0x6F54746E6573;
      break;
    case 0x2E:
      result = 0x6D69616C63736964;
      break;
    case 0x30:
      result = 0xD00000000000001BLL;
      break;
    case 0x31:
    case 0x3A:
      result = 0xD000000000000011;
      break;
    case 0x32:
      result = 0xD00000000000001BLL;
      break;
    case 0x36:
      result = 0xD00000000000001BLL;
      break;
    case 0x37:
    case 0x39:
    case 0x3E:
      result = 0xD000000000000022;
      break;
    case 0x38:
      result = 0xD00000000000001BLL;
      break;
    case 0x3F:
      result = 0x65526E496E676973;
      break;
    case 0x40:
      result = 0x7974706D65;
      break;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FixedResponse(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FixedResponse(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = Hasher.init(_seed:)();
  a3(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FixedResponse(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = Hasher.init(_seed:)();
  a4(v7);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CatId@<X0>(unint64_t *a1@<X8>)
{
  result = CatId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for webSources()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions11AttributionVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_24FE1AA50;
  *(result + 32) = 0x6F632E656C707061;
  *(result + 40) = 0xE90000000000006DLL;
  *(result + 48) = 0xD000000000000015;
  *(result + 56) = 0x800000024FE1FA60;
  strcpy((result + 64), "wikipedia.org");
  *(result + 78) = -4864;
  *(result + 80) = 0xD000000000000028;
  *(result + 88) = 0x800000024FE1FA80;
  strcpy((result + 96), "britannica.com");
  *(result + 111) = -18;
  *(result + 112) = 0xD00000000000002FLL;
  *(result + 120) = 0x800000024FE1FAB0;
  *(result + 128) = 0xD000000000000010;
  *(result + 136) = 0x800000024FE1FAE0;
  *(result + 144) = 0xD000000000000035;
  *(result + 152) = 0x800000024FE1FB00;
  *(result + 160) = 0xD000000000000010;
  *(result + 168) = 0x800000024FE1FAE0;
  *(result + 176) = 0xD000000000000049;
  *(result + 184) = 0x800000024FE1FB40;
  *(result + 192) = 0xD000000000000010;
  *(result + 200) = 0x800000024FE1FAE0;
  *(result + 208) = 0xD000000000000063;
  *(result + 216) = 0x800000024FE1FB90;
  static DummyKnowledgeSources.webSources = result;
  return result;
}

uint64_t static DummyKnowledgeSources.webSources.getter()
{
  if (one-time initialization token for webSources != -1)
  {
    swift_once();
  }
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 257) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 256) = a2;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeAssistantSettingsDestination();
  *(v5 + 64) = v9;
  v10 = *(v9 - 8);
  *(v5 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v5 + 88) = v12;
  v13 = *(v12 - 8);
  *(v5 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v15 = type metadata accessor for Calendar.Component();
  *(v5 + 112) = v15;
  v16 = *(v15 - 8);
  *(v5 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v18 = type metadata accessor for Calendar();
  *(v5 + 136) = v18;
  v19 = *(v18 - 8);
  *(v5 + 144) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v22 = type metadata accessor for Date();
  *(v5 + 176) = v22;
  v23 = *(v22 - 8);
  *(v5 + 184) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:), 0, 0);
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)()
{
  v57 = v0;
  if (*(v0 + 256) == 1)
  {
    if (*(v0 + 257) == 1)
    {
      v1 = *(v0 + 176);
      v2 = *(v0 + 184);
      v3 = *(v0 + 168);
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      static GenerativeAssistantSettingsUserDefaults.lastRateLimitFullMessageDate()();
      v4 = *(v2 + 48);
      if (v4(v3, 1, v1) == 1)
      {
        outlined destroy of Date?(*(v0 + 168));
LABEL_14:
        v40 = *(v0 + 184);
        v41 = *(v0 + 192);
        v42 = *(v0 + 176);
        v44 = *(v0 + 24);
        v43 = *(v0 + 32);
        Date.init()();
        static GenerativeAssistantSettingsUserDefaults.updateLastRateLimitFullMessageDate(_:)();
        (*(v40 + 8))(v41, v42);
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        v55 = 47;
        v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        v46.value._countAndFlagsBits = v44;
        v46.value._object = v43;
        v47 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v55, v46, v45);
        countAndFlagsBits = v47._countAndFlagsBits;
        object = v47._object;

        goto LABEL_15;
      }

      v19 = *(v0 + 176);
      v20 = *(v0 + 160);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = *(v0 + 128);
      v52 = v19;
      v54 = *(v0 + 136);
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);
      v50 = *(*(v0 + 184) + 32);
      v50(*(v0 + 208), *(v0 + 168));
      static Calendar.current.getter();
      (*(v24 + 104))(v23, *MEMORY[0x277CC9980], v25);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v22, v54);
      v26 = v4(v20, 1, v52);
      v27 = *(v0 + 160);
      if (v26 == 1)
      {
        (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
        outlined destroy of Date?(v27);
        goto LABEL_14;
      }

      (v50)(*(v0 + 200), *(v0 + 160), *(v0 + 176));
      Date.timeIntervalSinceNow.getter();
      v29 = *(v0 + 200);
      v28 = *(v0 + 208);
      v30 = *(v0 + 176);
      v31 = *(v0 + 184);
      if (v32 <= 0.0)
      {
        v39 = *(v31 + 8);
        v39(*(v0 + 200), *(v0 + 176));
        v39(v28, v30);
        goto LABEL_14;
      }

      v33 = *(v0 + 24);
      v34 = *(v0 + 32);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      v56 = 48;
      v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v36.value._countAndFlagsBits = v33;
      v36.value._object = v34;
      v37 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v56, v36, v35);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;

      v38 = *(v31 + 8);
      v38(v29, v30);
      v38(v28, v30);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

LABEL_15:
    *(v0 + 216) = countAndFlagsBits;
    *(v0 + 224) = object;
    v48 = *(MEMORY[0x277D0D738] + 4);
    v49 = swift_task_alloc();
    *(v0 + 232) = v49;
    *v49 = v0;
    v49[1] = static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:);

    return MEMORY[0x282165800]();
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.clearLastRateLimitFullMessageDate()();
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 104);
  v51 = *(v0 + 80);
  v53 = *(v0 + 56);
  v13 = *(v0 + 16);
  v14 = type metadata accessor for ModelDisclaimer();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  v15 = *(v0 + 8);

  return v15();
}

{
  v25 = v0[30];
  v27 = v0[31];
  v23 = v0[27];
  v24 = v0[28];
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v22 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  (*(v4 + 104))(v3, *MEMORY[0x277D0D748], v5);
  (*(v6 + 104))(v7, *MEMORY[0x277D0D750], v8);
  GenerativeAssistantSettingsDestination.fullURL(origin:)();
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  URL.absoluteString.getter();
  (*(v1 + 8))(v2, v22);
  ModelDisclaimer.init(message:displayUrl:url:)();
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  v26 = v0[10];
  v28 = v0[7];
  v18 = v0[2];
  v19 = type metadata accessor for ModelDisclaimer();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);

  v20 = v0[1];

  return v20();
}

uint64_t static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v6 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;

  return MEMORY[0x2822009F8](static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:), 0, 0);
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FixedResponse and conformance FixedResponse()
{
  result = lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse;
  if (!lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedResponse and conformance FixedResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CatId and conformance CatId()
{
  result = lazy protocol witness table cache variable for type CatId and conformance CatId;
  if (!lazy protocol witness table cache variable for type CatId and conformance CatId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatId and conformance CatId);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FixedResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FixedResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CatId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CatId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t PartnerStreamWrapper.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  v5 = type metadata accessor for GeneratedResponse(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = v3 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) = 0;
  *(v3 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted) = 0;
  return v3;
}

uint64_t PartnerStreamWrapper.init()()
{
  v1 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  v2 = type metadata accessor for GeneratedResponse(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) = 0;
  *(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted) = 0;
  return v0;
}

uint64_t closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v19;
  *(v8 + 88) = v20;
  *(v8 + 177) = v18;
  *(v8 + 176) = v17;
  *(v8 + 72) = v16;
  *(v8 + 56) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 + 64);
  *(v8 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 128) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 136) = v12;
  *(v8 + 144) = v11;

  return MEMORY[0x2822009F8](closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v12, v11);
}

uint64_t closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v24 = *(v0 + 177);
  v22 = *(v0 + 176);
  v5 = *(v0 + 88);
  v25 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v23 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 25) & ~*(v4 + 80);
  v9 = v8 + v2;
  v10 = (v8 + v2) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 152) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v22;
  (*(v4 + 32))(v11 + v8, v1, v3);
  *(v11 + v9) = v24;
  v12 = v11 + v10;
  *(v12 + 8) = v25;
  *(v12 + 16) = v5;
  v13 = *v23;

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 24);
  v19 = *(v0 + 32);

  return DefaultModelSession.generateStreamedResponse(userQuery:platformImage:useCaseID:keepAliveCallback:newElementCallback:)(v20, v19, v17, v18, v15, v16, partial apply for closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:), v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = v0;

  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  }

  else
  {
    v8 = closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

size_t closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1, Swift::String *a2, int a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v148 = a7;
  countAndFlagsBits = a6;
  LODWORD(object) = a5;
  v140 = a4;
  LODWORD(v141) = a3;
  v158 = a2;
  v151 = a1;
  v156 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v153 = *(v156 - 8);
  v7 = *(v153 + 64);
  v8 = MEMORY[0x28223BE20](v156);
  v138 = (&v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v155 = &v124 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v137 = *(v11 - 8);
  v12 = *(v137 + 64);
  MEMORY[0x28223BE20](v11);
  v152 = (&v124 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v159 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v124 - v18);
  v150 = type metadata accessor for GeneratedResponse(0);
  v157 = *(v150 - 8);
  v20 = *(v157 + 64);
  MEMORY[0x28223BE20](v150);
  v143 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v149 = &v124 - v24;
  v146 = type metadata accessor for GenerativeAssistantUseCase();
  v145 = *(v146 - 8);
  v25 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v154 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = (&v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v29);
  v139 = &v124 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v124 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v124 - v38;
  v40 = type metadata accessor for ModelResponse();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v144 = (&v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43);
  v46 = (&v124 - v45);
  outlined init with copy of Date?(v151, v39, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
  v47 = *(v41 + 48);
  v151 = v40;
  if (v47(v39, 1, v40) == 1)
  {
    result = outlined destroy of OnScreenContent.Document?(v39, &_s26GenerativeAssistantActions13ModelResponseVSgMd, &_s26GenerativeAssistantActions13ModelResponseVSgMR);
    *(&v158->_countAndFlagsBits + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) = 1;
  }

  else
  {
    v136 = v31;
    outlined init with take of GeneratedResponse.RichContentEntity(v39, v46, type metadata accessor for ModelResponse);
    v49 = v46;
    v50 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
    v51 = v158;
    swift_beginAccess();
    outlined init with copy of Date?(v51 + v50, v35, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v52 = v157;
    v53 = v150;
    v54 = (*(v157 + 48))(v35, 1, v150);
    outlined destroy of OnScreenContent.Document?(v35, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v55 = &v162;
    if (v54 != 1)
    {
LABEL_25:
      v121 = *(v55 - 32);
      PartnerStreamWrapper.mergeWithStreamedResponse(_:blockingResponse:)(v49, 0, v121);
      outlined destroy of GeneratedResponse(v49, type metadata accessor for ModelResponse);
      (v52[3]._object)(v121, 0, 1, v53);
      swift_beginAccess();
      outlined assign with take of GeneratedResponse?(v121, v51 + v50);
      return swift_endAccess();
    }

    v136 = v49;
    v124 = v50;
    if (one-time initialization token for modelInteraction != -1)
    {
      goto LABEL_32;
    }

LABEL_5:
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.modelInteraction);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v146;
    v61 = v145;
    v62 = v136;
    if (v59)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_24FD67000, v57, v58, "Initializing streamed response.", v63, 2u);
      MEMORY[0x253057F40](v63, -1, -1);
    }

    v64 = v62;
    v65 = v144;
    outlined init with copy of GeneratedResponse(v64, v144, type metadata accessor for ModelResponse);
    v66 = v154;
    (*(v61 + 16))(v154, v140, v60);
    v140 = type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v163) = 44;
    v67 = v148;

    v68 = MEMORY[0x277D84F90];
    v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v70.value._countAndFlagsBits = countAndFlagsBits;
    v71 = countAndFlagsBits;
    v70.value._object = v67;
    v72 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v163, v70, v69);

    v163 = xmmword_24FE1ADF0;
    v164 = 5;
    v165 = v72;
    v166 = v71;
    v167 = v67;
    outlined init with copy of DialogConfig(&v163, v161);

    LOBYTE(v161[0]) = v141;
    v141 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v161, v66, &v163, object & 1);
    outlined destroy of DialogConfig(&v163);
    v125 = v65[4];
    v73 = v151;
    v74 = (v65 + *(v151 + 56));
    v75 = v74[1];
    object = *v74;
    v76 = *v65;
    v78 = *(v151 + 32);
    v77 = *(v151 + 36);
    if (*(v65 + v77))
    {
      v79 = *(v65 + v77);
    }

    else
    {
      v79 = v68;
    }

    v130 = v79;
    outlined init with copy of Date?(v65 + v78, v149, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v80 = v65[2];
    v135 = v65[1];
    v126 = v80;
    v81 = v73[11];
    v133 = *(v65 + v73[10]);
    v134 = *(v65 + v81);
    v82 = v73[13];
    v83 = (v65 + v73[12]);
    v84 = v83[1];
    v131 = *v83;
    v127 = v84;
    v85 = v65 + v82;
    v86 = *(v65 + v82);
    v87 = *(v85 + 1);
    v132 = v86;
    v128 = v87;
    v151 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
    v161[3] = v151;
    v161[4] = MEMORY[0x277D0D628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v161);

    v88 = v75;

    static GenerativeAssistantFeatureFlagManager.instance.getter();
    v89 = v150;
    v90 = v143;
    v91 = &v143[*(v150 + 56)];
    swift_initStaticObject();
    v160 = 49;
    v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v93 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v160, 0, v92);
    v94 = v76;

    *v91 = v93;
    v95 = v149;
    *v90 = object;
    *(v90 + 8) = v88;
    v96 = v141;
    *(v90 + 16) = v76;
    *(v90 + 24) = v96;
    *(v90 + 32) = 64;
    *(v90 + 40) = v125;
    *(v90 + 48) = MEMORY[0x277D84F90];
    *(v90 + v89[15]) = v130;
    *(v90 + v89[12]) = 0;
    v97 = (v90 + v89[13]);
    v98 = v148;
    *v97 = countAndFlagsBits;
    v97[1] = v98;
    outlined init with copy of Date?(v95, v90 + v89[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v99 = (v90 + v89[11]);
    v100 = v126;
    *v99 = v135;
    v99[1] = v100;
    *(v90 + v89[16]) = v133;
    *(v90 + v89[17]) = v134;
    v101 = (v90 + v89[18]);
    v102 = v127;
    *v101 = v131;
    v101[1] = v102;
    v103 = (v90 + v89[19]);
    v104 = v128;
    *v103 = v132;
    v103[1] = v104;
    outlined init with copy of GenerativeAssistantFeatureFlagManaging(v161, v90 + v89[21]);
    *(v90 + v89[20]) = xmmword_24FE1AE00;

    if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
    {
      v105._countAndFlagsBits = object;
      v105._object = v88;
      v106 = GeneratedResponse.updateText(_:)(v105);

      countAndFlagsBits = v106._countAndFlagsBits;
      *v90 = v106;
      object = v106._object;
      v107 = (v137 + 56);
      v108 = (v137 + 48);
      v52 = *(v76 + 16);

      v51 = 0;
      v151 = v94;
      v148 = v94;
      v50 = v154;
      v49 = v52;
      while (1)
      {
        if (v51 == v52)
        {
          v109 = 1;
          v51 = v52;
          v111 = v157;
          v110 = v158;
        }

        else
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            swift_once();
            goto LABEL_5;
          }

          v111 = v157;
          if (v51 >= *(v151 + 16))
          {
            goto LABEL_31;
          }

          v112 = v151 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v51;
          v113 = *(v11 + 48);
          v114 = v152;
          *v152 = v51;
          outlined init with copy of GeneratedResponse(v112, v114 + v113, type metadata accessor for GeneratedResponse.RichContentEntity);
          v50 = v154;
          outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v114, v159, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
          v109 = 0;
          v51 = (v51 + 1);
          v110 = v158;
        }

        v115 = v159;
        (*v107)(v159, v109, 1, v11);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v115, v19, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v108)(v19, 1, v11) == 1)
        {

          outlined destroy of OnScreenContent.Document?(v149, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v145 + 8))(v50, v146);
          v90 = v143;
          goto LABEL_28;
        }

        v53 = *v19;
        v116 = v155;
        outlined init with take of GeneratedResponse.RichContentEntity(v19 + *(v11 + 48), v155, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of GeneratedResponse(v116, type metadata accessor for GeneratedResponse.RichContentEntity);
        v52 = v49;
        if (!EnumCaseMultiPayload)
        {
          v118 = v138;
          v119 = object;
          *v138 = countAndFlagsBits;
          v118[1] = v119;
          swift_storeEnumTagMultiPayload();

          v120 = v148;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v53 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
            v120 = result;
            if ((v53 & 0x8000000000000000) != 0)
            {
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }
          }

          if (v53 >= v120[2])
          {
            __break(1u);
            return result;
          }

          outlined assign with take of GeneratedResponse.RichContentEntity(v138, v120 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v53);
          v148 = v120;
          *(v143 + 2) = v120;
        }
      }
    }

    outlined destroy of OnScreenContent.Document?(v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v145 + 8))(v154, v146);
    v111 = v157;
    v110 = v158;
LABEL_28:
    outlined destroy of GeneratedResponse(v144, type metadata accessor for ModelResponse);
    outlined destroy of GeneratedResponse(v136, type metadata accessor for ModelResponse);
    v122 = v139;
    outlined init with copy of GeneratedResponse(v90, v139, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v161);
    outlined destroy of GeneratedResponse(v90, type metadata accessor for GeneratedResponse);
    (*(v111 + 56))(v122, 0, 1, v150);
    v123 = v124;
    swift_beginAccess();
    outlined assign with take of GeneratedResponse?(v122, v110 + v123);
    return swift_endAccess();
  }

  return result;
}

uint64_t PartnerStreamWrapper.mergeWithStreamedResponse(_:blockingResponse:)@<X0>(Swift::String *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v169) = a2;
  v159 = a1;
  v165 = a3;
  v173 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v170 = *(v173 - 8);
  v5 = *(v170 + 64);
  v6 = MEMORY[0x28223BE20](v173);
  v160 = (&v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v140 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v158 = (&v140 - v12);
  MEMORY[0x28223BE20](v11);
  v171 = &v140 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v162 = *(v14 - 8);
  v15 = *(v162 + 64);
  MEMORY[0x28223BE20](v14);
  v172 = (&v140 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v161 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v140 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v157 = &v140 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v140 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v168 = (&v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v167 = (&v140 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = (&v140 - v35);
  v37 = type metadata accessor for GeneratedResponse(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v163 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  object = &v140 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = (&v140 - v44);
  v46 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v4 + v46, v36, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v47 = *(v38 + 48);
  countAndFlagsBits = v37;
  if (v47(v36, 1, v37) == 1)
  {
    outlined destroy of OnScreenContent.Document?(v36, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    if (one-time initialization token for modelInteraction != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.modelInteraction);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v161;
      if (v51)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_24FD67000, v49, v50, "Error: Merging with nil streamed response.", v53, 2u);
        MEMORY[0x253057F40](v53, -1, -1);
      }

      v54 = type metadata accessor for URL();
      (*(*(v54 - 8) + 56))(v168, 1, 1, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
      v55 = ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v170 = *(v170 + 72);
      v56 = swift_allocObject();
      v171 = v56;
      *(v56 + 16) = xmmword_24FE1A560;
      v158 = v55;
      v57 = (v55 + v56);
      *v57 = 0;
      v57[1] = 0xE000000000000000;
      v169 = v57;
      swift_storeEnumTagMultiPayload();
      v167 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
      v180 = v167;
      v181 = MEMORY[0x277D0D628];
      object = __swift_allocate_boxed_opaque_existential_1(&v178);
      static GenerativeAssistantFeatureFlagManager.instance.getter();
      v58 = countAndFlagsBits;
      v59 = v163;
      v159 = &v163[countAndFlagsBits[14]];
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v176) = 49;
      v60 = MEMORY[0x277D84F90];
      v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v62 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v176, 0, v61);

      *v159 = v62;
      v63 = v168;
      *v59 = 0;
      *(v59 + 8) = 0xE000000000000000;
      v64 = v171;
      *(v59 + 16) = v171;
      *(v59 + 24) = v60;
      *(v59 + 32) = 64;
      *(v59 + 40) = v60;
      *(v59 + 48) = v60;
      *(v59 + v58[15]) = v60;
      *(v59 + v58[12]) = 1;
      v65 = (v59 + v58[13]);
      *v65 = 0;
      v65[1] = 0xE000000000000000;
      outlined init with copy of Date?(v63, v59 + v58[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v66 = (v59 + v58[11]);
      *v66 = 0;
      v66[1] = 0xE000000000000000;
      *(v59 + v58[16]) = 0;
      *(v59 + v58[17]) = 0;
      v67 = (v59 + v58[18]);
      *v67 = 0;
      v67[1] = 0xE000000000000000;
      v68 = (v59 + v58[19]);
      *v68 = 0;
      v68[1] = 0xE000000000000000;
      outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v178, v59 + v58[21]);
      *(v59 + v58[20]) = xmmword_24FE1AE00;
      if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
      {
LABEL_37:
        outlined destroy of OnScreenContent.Document?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_39:
        v138 = v59;
        v139 = v165;
        goto LABEL_42;
      }

      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v70 = GeneratedResponse.updateText(_:)(v69);
      countAndFlagsBits = v70._countAndFlagsBits;
      *v59 = v70;
      object = v70._object;
      v27 = *(v64 + 2);
      v71 = (v162 + 56);
      v45 = (v162 + 48);
      v72 = 0;

      while (v72 == v27)
      {
        v73 = 1;
        v72 = v27;
LABEL_12:
        (*v71)(v52, v73, 1, v14);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v52, v23, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
        if ((*v45)(v23, 1, v14) == 1)
        {
          outlined destroy of OnScreenContent.Document?(v168, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

          v59 = v163;
          goto LABEL_39;
        }

        v77 = *v23;
        outlined init with take of GeneratedResponse.RichContentEntity(v23 + *(v14 + 48), v10, type metadata accessor for GeneratedResponse.RichContentEntity);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of GeneratedResponse(v10, type metadata accessor for GeneratedResponse.RichContentEntity);
        if (!EnumCaseMultiPayload)
        {
          v79 = v160;
          v80 = object;
          *v160 = countAndFlagsBits;
          v79[1] = v80;
          swift_storeEnumTagMultiPayload();

          v36 = v167;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v77 & 0x8000000000000000) != 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
            v36 = result;
            if ((v77 & 0x8000000000000000) != 0)
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          if (v77 >= v36[2])
          {
            __break(1u);
LABEL_49:
            __break(1u);
            return result;
          }

          outlined assign with take of GeneratedResponse.RichContentEntity(v160, v158 + v36 + v77 * v170);
          v167 = v36;
          *(v163 + 2) = v36;
        }
      }

      if ((v72 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
    }

    if (v72 >= *(v171 + 2))
    {
      goto LABEL_45;
    }

    v74 = v169 + v72 * v170;
    v75 = *(v14 + 48);
    v76 = v172;
    *v172 = v72;
    outlined init with copy of GeneratedResponse(v74, v76 + v75, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v76, v52, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v73 = 0;
    ++v72;
    goto LABEL_12;
  }

LABEL_20:
  outlined init with take of GeneratedResponse.RichContentEntity(v36, v45, type metadata accessor for GeneratedResponse);
  v82 = v45;
  if ((v169 & 1) == 0)
  {
    v82 = (&v159->_countAndFlagsBits + *(type metadata accessor for ModelResponse() + 56));
  }

  v83 = *v82;
  v84 = v82[1];

  v178 = v83;
  v179 = v84;
  v176 = 28252;
  v177 = 0xE200000000000000;
  v174 = 10;
  v175 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v85 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v87 = v86;

  v178 = v85;
  v179 = v87;
  v176 = 92;
  v177 = 0xE100000000000000;
  v174 = 0;
  v175 = 0xE000000000000000;
  v88 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v90 = v89;

  v178 = v88;
  v179 = v90;
  v176 = 8796;
  v177 = 0xE200000000000000;
  v174 = 34;
  v175 = 0xE100000000000000;
  v91 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v156 = v91;
  v93 = v92;
  v159 = v92;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v94 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v169 = *(v170 + 72);
  v95 = swift_allocObject();
  v170 = v95;
  *(v95 + 16) = xmmword_24FE1A560;
  v140 = v94;
  v96 = (v95 + v94);
  *v96 = v91;
  v96[1] = v93;
  v168 = v96;
  swift_storeEnumTagMultiPayload();
  v142 = v45[3];
  v141 = v45[5];
  v161 = v45[6];
  v97 = v45;
  v98 = countAndFlagsBits;
  v163 = *(v45 + countAndFlagsBits[15]);
  v99 = countAndFlagsBits[13];
  v153 = *(v45 + countAndFlagsBits[12]);
  v100 = *(v45 + v99 + 8);
  v155 = *(v45 + v99);
  v160 = v100;
  outlined init with copy of Date?(v45 + countAndFlagsBits[10], v167, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v101 = v45 + v98[11];
  v102 = *(v101 + 1);
  v152 = *v101;
  v143 = v102;
  v147 = *(v45 + 32);
  v103 = v98[17];
  v150 = *(v45 + v98[16]);
  v151 = *(v45 + v103);
  v104 = v98[19];
  v105 = v45 + v98[18];
  v106 = *(v105 + 1);
  v148 = *v105;
  v144 = v106;
  v107 = *(v97 + v104 + 8);
  v149 = *(v97 + v104);
  v145 = v107;
  v154 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v180 = v154;
  v181 = MEMORY[0x277D0D628];
  v146 = __swift_allocate_boxed_opaque_existential_1(&v178);

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v108 = object;
  v109 = &object[v98[14]];
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v176) = 49;
  v110 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v111 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v176, 0, v110);
  v59 = v108;

  *v109 = v111;
  v23 = v156;
  v112 = v159;
  v113 = v170;
  *v108 = v156;
  *(v108 + 1) = v112;
  v114 = v142;
  *(v108 + 2) = v113;
  *(v108 + 3) = v114;
  v108[32] = v147;
  v115 = v167;
  v116 = v161;
  *(v59 + 40) = v141;
  *(v59 + 48) = v116;
  *(v59 + v98[15]) = v163;
  *(v59 + v98[12]) = v153;
  v117 = (v59 + v98[13]);
  v118 = v160;
  *v117 = v155;
  v117[1] = v118;
  outlined init with copy of Date?(v115, v59 + v98[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v119 = (v59 + v98[11]);
  v120 = v143;
  *v119 = v152;
  v119[1] = v120;
  *(v59 + v98[16]) = v150;
  *(v59 + v98[17]) = v151;
  v121 = (v59 + v98[18]);
  v122 = v144;
  *v121 = v148;
  v121[1] = v122;
  v123 = (v59 + v98[19]);
  v124 = v145;
  *v123 = v149;
  v123[1] = v124;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(&v178, v59 + v98[21]);
  *(v59 + v98[20]) = xmmword_24FE1AE00;
  if (dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter())
  {
    v163 = v97;
    v125._countAndFlagsBits = v23;
    v125._object = v112;
    v126 = GeneratedResponse.updateText(_:)(v125);

    v161 = v126._countAndFlagsBits;
    *v59 = v126;
    v160 = v126._object;
    v127 = (v162 + 56);
    v128 = (v162 + 48);
    v59 = *(v113 + 16);

    v10 = 0;
    countAndFlagsBits = v113;
    v63 = v157;
    v129 = v171;
    while (1)
    {
      if (v10 == v59)
      {
        v130 = 1;
        v10 = v59;
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v10 >= *(v170 + 16))
        {
          goto LABEL_46;
        }

        v131 = v168 + v10 * v169;
        v132 = *(v14 + 48);
        v133 = v172;
        *v172 = v10;
        outlined init with copy of GeneratedResponse(v131, v133 + v132, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v133, v63, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v130 = 0;
        ++v10;
      }

      (*v127)(v63, v130, 1, v14);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v63, v27, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v128)(v27, 1, v14) == 1)
      {
        break;
      }

      v23 = *v27;
      outlined init with take of GeneratedResponse.RichContentEntity(v27 + *(v14 + 48), v129, type metadata accessor for GeneratedResponse.RichContentEntity);
      v134 = swift_getEnumCaseMultiPayload();
      outlined destroy of GeneratedResponse(v129, type metadata accessor for GeneratedResponse.RichContentEntity);
      if (!v134)
      {
        v135 = v158;
        v136 = v160;
        *v158 = v161;
        v135[1] = v136;
        swift_storeEnumTagMultiPayload();

        v137 = countAndFlagsBits;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
          v137 = result;
          if ((v23 & 0x8000000000000000) != 0)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        if (v23 >= *(v137 + 2))
        {
          goto LABEL_49;
        }

        outlined assign with take of GeneratedResponse.RichContentEntity(v158, v137 + v140 + v23 * v169);
        countAndFlagsBits = v137;
        *(object + 2) = v137;
      }
    }

    v115 = v167;
    v59 = object;
    v97 = v163;
  }

  outlined destroy of OnScreenContent.Document?(v115, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of GeneratedResponse(v97, type metadata accessor for GeneratedResponse);
  v138 = v59;
  v139 = v165;
LABEL_42:
  outlined init with copy of GeneratedResponse(v138, v139, type metadata accessor for GeneratedResponse);
  __swift_destroy_boxed_opaque_existential_0(&v178);
  return outlined destroy of GeneratedResponse(v59, type metadata accessor for GeneratedResponse);
}

uint64_t PartnerStreamWrapper.waitForResponse()()
{
  v1[10] = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](PartnerStreamWrapper.waitForResponse(), 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  *(v0 + 192) = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v2 + v3, v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v4 = type metadata accessor for GeneratedResponse(0);
  *(v0 + 200) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  *(v0 + 208) = v6;
  *(v0 + 216) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v4);
  outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  if (v2 == 1)
  {
    v7 = *(v0 + 168);
    Date.init()();
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    outlined init with copy of Date?(*(v0 + 80) + *(v0 + 192), v11, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    if (v9(v11, 1, v10) == 1)
    {
      outlined destroy of OnScreenContent.Document?(*(v0 + 176), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
      if (one-time initialization token for modelInteraction != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      *(v0 + 224) = __swift_project_value_buffer(v12, static Logger.modelInteraction);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24FD67000, v13, v14, "streamed response is nil. Going to block...", v15, 2u);
        MEMORY[0x253057F40](v15, -1, -1);
      }

      v16 = *(v0 + 136);
      v17 = *(v0 + 120);
      v38 = *(v0 + 112);
      v19 = *(v0 + 96);
      v18 = *(v0 + 104);
      v20 = *(v0 + 88);

      static Clock<>.continuous.getter();
      *(v0 + 64) = xmmword_24FE1AE10;
      *(v0 + 48) = 0;
      *(v0 + 40) = 0;
      *(v0 + 56) = 1;
      v21 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
      dispatch thunk of Clock.now.getter();
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v22 = *(v19 + 8);
      *(v0 + 232) = v22;
      *(v0 + 240) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v18, v20);
      v23 = *(MEMORY[0x277D85A58] + 4);
      v24 = swift_task_alloc();
      *(v0 + 248) = v24;
      *v24 = v0;
      v24[1] = PartnerStreamWrapper.waitForResponse();
      v25 = *(v0 + 136);
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);

      return MEMORY[0x2822008C8](v27, v0 + 40, v26, v21);
    }

    v28 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    outlined destroy of OnScreenContent.Document?(v28, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  }

  v30 = *(v0 + 176);
  v29 = *(v0 + 184);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 136);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);

  v36 = *(v0 + 8);

  return v36();
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v10 = *v1;
  *(*v1 + 256) = v0;

  v4 = *(v2 + 240);
  if (v0)
  {
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    v5 = PartnerStreamWrapper.waitForResponse();
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v5 = PartnerStreamWrapper.waitForResponse();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v1, v3);
  if (v6 > 30.0)
  {
    v8 = *(v0 + 224);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 168);
    v13 = *(v0 + 144);
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24FD67000, v9, v10, "Timed out waiting for streamed response.", v14, 2u);
      MEMORY[0x253057F40](v14, -1, -1);
    }

    v7(v12, v13);
    goto LABEL_14;
  }

  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  outlined init with copy of Date?(*(v0 + 80) + *(v0 + 192), v18, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v19 = v16(v18, 1, v17);
  v20 = *(v0 + 176);
  if (v19 != 1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    outlined destroy of OnScreenContent.Document?(v20, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
LABEL_14:
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v40 = *(v0 + 160);
    v39 = *(v0 + 168);
    v41 = *(v0 + 136);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);

    v44 = *(v0 + 8);

    return v44();
  }

  outlined destroy of OnScreenContent.Document?(*(v0 + 176), &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  if (one-time initialization token for modelInteraction != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  *(v0 + 224) = __swift_project_value_buffer(v21, static Logger.modelInteraction);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_24FD67000, v22, v23, "streamed response is nil. Going to block...", v24, 2u);
    MEMORY[0x253057F40](v24, -1, -1);
  }

  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  v46 = *(v0 + 112);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 88);

  static Clock<>.continuous.getter();
  *(v0 + 64) = xmmword_24FE1AE10;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v30 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v31 = *(v28 + 8);
  *(v0 + 232) = v31;
  *(v0 + 240) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v29);
  v32 = *(MEMORY[0x277D85A58] + 4);
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = PartnerStreamWrapper.waitForResponse();
  v34 = *(v0 + 136);
  v36 = *(v0 + 112);
  v35 = *(v0 + 120);

  return MEMORY[0x2822008C8](v36, v0 + 40, v35, v30);
}

{
  v1 = v0[32];
  v2 = v0[28];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[19];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24FD67000, v4, v5, "Error while waiting for streamed response: %@.", v11, 0xCu);
    outlined destroy of OnScreenContent.Document?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x253057F40](v12, -1, -1);
    MEMORY[0x253057F40](v11, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v8, v9);
  v16 = v0[22];
  v15 = v0[23];
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[17];
  v21 = v0[13];
  v20 = v0[14];

  v22 = v0[1];

  return v22();
}

uint64_t PartnerStreamWrapper.getStreamedResponse()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = type metadata accessor for GeneratedResponse(0);
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](PartnerStreamWrapper.getStreamedResponse(), 0, 0);
}

uint64_t PartnerStreamWrapper.getStreamedResponse()()
{
  if (*(v0[11] + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamStarted))
  {
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = PartnerStreamWrapper.getStreamedResponse();
    v2 = v0[11];

    return PartnerStreamWrapper.waitForResponse()();
  }

  else
  {
    if (one-time initialization token for modelInteraction != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.modelInteraction);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24FD67000, v5, v6, "Call to return streamed response before stream started. Returning nil.", v7, 2u);
      MEMORY[0x253057F40](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[10];

    (*(v9 + 56))(v10, 1, 1, v8);
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v18 = v0[14];
    v17 = v0[15];

    v19 = v0[1];

    return v19();
  }
}

{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](PartnerStreamWrapper.getStreamedResponse(), 0, 0);
}

{
  v73 = v0;
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamEnded) == 1)
  {
    (*(v0[22] + 56))(v0[10], 1, 1, v0[21]);
LABEL_25:
    v54 = v0[24];
    v53 = v0[25];
    v55 = v0[23];
    v57 = v0[19];
    v56 = v0[20];
    v58 = v0[18];
    v60 = v0[14];
    v59 = v0[15];

    v61 = v0[1];

    return v61();
  }

  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v5, v2, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  v6 = *(v4 + 48);
  if (v6(v2, 1, v3) != 1)
  {
LABEL_19:
    outlined init with take of GeneratedResponse.RichContentEntity(v0[25], v0[10], type metadata accessor for GeneratedResponse);
LABEL_24:
    (*(v0[22] + 56))(v0[10], 0, 1, v0[21]);
    goto LABEL_25;
  }

  v64 = v6;
  v8 = v0[23];
  v7 = v0[24];
  v68 = v7;
  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[13];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v13 = *(v11 + 72);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v71 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24FE1A560;
  v63 = v14;
  v16 = (v15 + v14);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v70 = v15 + v14;
  swift_storeEnumTagMultiPayload();
  v66 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v17 = MEMORY[0x277D0D628];
  v0[5] = v66;
  v0[6] = v17;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v18 = (v8 + v9[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v72 = 49;
  v19 = MEMORY[0x277D84F90];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v21 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v72, 0, v20);

  *v18 = v21;
  *v8 = 0;
  *(v8 + 8) = 0xE000000000000000;
  *(v8 + 16) = v15;
  *(v8 + 24) = v19;
  *(v8 + 32) = 64;
  *(v8 + 40) = v19;
  *(v8 + 48) = v19;
  *(v8 + v9[15]) = v19;
  *(v8 + v9[12]) = 1;
  v22 = (v8 + v9[13]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  outlined init with copy of Date?(v68, v8 + v9[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = (v8 + v9[11]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *(v8 + v9[16]) = 0;
  *(v8 + v9[17]) = 0;
  v24 = (v8 + v9[18]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v8 + v9[19]);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging((v0 + 2), v8 + v9[21]);
  *(v8 + v9[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    outlined destroy of OnScreenContent.Document?(v0[24], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_22:
    v50 = v0[25];
    v51 = v0[23];
    v52 = v0[21];
    outlined init with copy of GeneratedResponse(v51, v0[10], type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    outlined destroy of GeneratedResponse(v51, type metadata accessor for GeneratedResponse);
    if (v64(v50, 1, v52) != 1)
    {
      outlined destroy of OnScreenContent.Document?(v0[25], &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    }

    goto LABEL_24;
  }

  v26 = v0[23];
  v28 = v0[16];
  v27 = v0[17];
  v65 = v0[14];
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = GeneratedResponse.updateText(_:)(v29);
  *v26 = v30._countAndFlagsBits;
  *(v8 + 8) = v30._object;
  v31 = *(v15 + 16);
  v32 = (v27 + 56);
  v33 = (v27 + 48);

  v35 = 0;
  v67 = v15;
  v69 = v15;
  while (v35 == v31)
  {
    v36 = 1;
    v35 = v31;
LABEL_10:
    v41 = v0[19];
    v40 = v0[20];
    v42 = v0[16];
    (*v32)(v41, v36, 1, v42);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v41, v40, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v33)(v40, 1, v42) == 1)
    {
      outlined destroy of OnScreenContent.Document?(v0[24], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      goto LABEL_22;
    }

    v43 = v0[20];
    v44 = v0[12];
    v45 = *v43;
    outlined init with take of GeneratedResponse.RichContentEntity(v43 + *(v28 + 48), v0[15], type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = v0[15];
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of GeneratedResponse(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v48 = v0[14];
      v62 = v0[12];
      outlined destroy of GeneratedResponse(v47, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v48 = v30._countAndFlagsBits;
      *(v65 + 8) = v30._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v49 = v67;
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v67);
        v67 = result;
        v49 = result;
        if ((v45 & 0x8000000000000000) != 0)
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      if (v45 >= v49[2])
      {
        goto LABEL_29;
      }

      result = outlined assign with take of GeneratedResponse.RichContentEntity(v0[14], v49 + v63 + v45 * v71);
      *(v8 + 16) = v49;
    }
  }

  if (v35 < *(v69 + 16))
  {
    v38 = v0[18];
    v37 = v0[19];
    v39 = *(v28 + 48);
    *v38 = v35;
    outlined init with copy of GeneratedResponse(v70 + v35 * v71, v38 + v39, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v38, v37, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v36 = 0;
    ++v35;
    goto LABEL_10;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t PartnerStreamWrapper.deinit()
{
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession, &_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);
  return v0;
}

uint64_t PartnerStreamWrapper.__deallocating_deinit()
{
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_streamedResponse, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  outlined destroy of OnScreenContent.Document?(v0 + OBJC_IVAR____TtC26GenerativeAssistantActions20PartnerStreamWrapper_modelSession, &_s26GenerativeAssistantActions12ModelSession_pSgMd, _s26GenerativeAssistantActions12ModelSession_pSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t outlined init with copy of GenerativeAssistantFeatureFlagManaging(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PartnerStreamWrapper()
{
  result = type metadata singleton initialization cache for PartnerStreamWrapper;
  if (!type metadata singleton initialization cache for PartnerStreamWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PartnerStreamWrapper()
{
  type metadata accessor for GeneratedResponse?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PartnerStreamWrapper.getStreamedResponse()(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of PartnerStreamWrapper.getStreamedResponse();

  return v8(a1);
}

uint64_t dispatch thunk of PartnerStreamWrapper.getStreamedResponse()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void type metadata accessor for GeneratedResponse?()
{
  if (!lazy cache variable for type metadata for GeneratedResponse?)
  {
    type metadata accessor for GeneratedResponse(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeneratedResponse?);
    }
  }
}

uint64_t sub_24FD875A0()
{
  v1 = type metadata accessor for GenerativeAssistantUseCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

size_t partial apply for closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeAssistantUseCase() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + 24);

  return closure #1 in closure #1 in PartnerStreamWrapper.startStreaming(modelSession:platformImage:interactionMode:isFirstRequest:partnerName:userQuery:useCaseID:keepAliveCallback:)(a1, v7, v11, v1 + v4, v6, v9, v10);
}

uint64_t outlined init with take of GeneratedResponse.RichContentEntity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GeneratedResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GeneratedResponse(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of GeneratedResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError()
{
  result = lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError;
  if (!lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError;
  if (!lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance SharingMediaAttachmentError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SharingMediaAttachmentError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingMediaAttachmentError and conformance SharingMediaAttachmentError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance SharingMediaAttachmentError()
{
  v0 = static SharingMediaAttachmentError.errorDomain;

  return v0;
}

unint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SharingMediaAttachmentError()
{
  v1 = *(v0 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x800000024FE1FD40;
  *(inited + 48) = (v1 & 1) == 0;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(v3);
  return v4;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for SharingMediaAttachmentError(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SharingMediaAttachmentError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t dispatch thunk of TextAssistantExecutorProviding.execute(appBundleID:userQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = dispatch thunk of TextAssistantHandoffProviding.attemptHandoff(userQuery:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v8 = type metadata accessor for TypedValue.EnumerationValue();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueO2IDVSgMd, &_s7ToolKit10TypedValueO2IDVSgMR) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v12 = type metadata accessor for TypedValue.ID();
  v6[31] = v12;
  v13 = *(v12 - 8);
  v6[32] = v13;
  v14 = *(v13 + 64) + 15;
  v6[33] = swift_task_alloc();
  v15 = type metadata accessor for ToolInvocation();
  v6[34] = v15;
  v16 = *(v15 - 8);
  v6[35] = v16;
  v17 = *(v16 + 64) + 15;
  v6[36] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationVSgMd, &_s7ToolKit21DisplayRepresentationVSgMR) - 8) + 64) + 15;
  v6[37] = swift_task_alloc();
  v19 = type metadata accessor for TypedValue();
  v6[38] = v19;
  v20 = *(v19 - 8);
  v6[39] = v20;
  v21 = *(v20 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v22 = type metadata accessor for ToolExecutor.SessionOptions();
  v6[42] = v22;
  v23 = *(v22 - 8);
  v6[43] = v23;
  v24 = *(v23 + 64) + 15;
  v6[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](TextAssistantExecutor.execute(appBundleID:userQuery:), 0, 0);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v0[45] = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("SessionCreation.Time", 20, 2);
  static ToolExecutor.SessionOptions.default.getter();
  v2 = *(MEMORY[0x277D727A0] + 4);
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
  v4 = v0[44];

  return MEMORY[0x2821DADB0](v4);
}

{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v46 = v0[36];
  v47 = v0[48];
  v44 = v0[25];
  v45 = v0[24];
  v42 = v0[22];
  v43 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = type metadata accessor for TypedValue.PrimitiveValue();
  v8 = swift_allocBox();
  v10 = v9;
  v11 = type metadata accessor for DisplayRepresentation();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);

  TypedValue.PrimitiveValue.AppValue.init(bundleIdentifier:displayRepresentation:)();
  v39 = *(*(v7 - 8) + 104);
  v39(v10, *MEMORY[0x277D72970], v7);
  *v1 = v8;
  v41 = *MEMORY[0x277D72A58];
  v40 = *(v2 + 104);
  (v40)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7ToolKit25TypedValueAsyncResolvable_ptGMd, &_ss23_ContiguousArrayStorageCySS_7ToolKit25TypedValueAsyncResolvable_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A8C0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v13 = MEMORY[0x277D72A70];
  *(inited + 72) = v3;
  *(inited + 80) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  *(inited + 88) = 0x74706D6F7270;
  *(inited + 96) = 0xE600000000000000;
  v15 = swift_allocBox();
  *v16 = v42;
  v16[1] = v43;
  v39(v16, *MEMORY[0x277D729B8], v7);
  *(inited + 128) = v3;
  *(inited + 136) = MEMORY[0x277D72A70];
  *__swift_allocate_boxed_opaque_existential_1((inited + 104)) = v15;
  v40();

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7ToolKit25TypedValueAsyncResolvable_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7ToolKit25TypedValueAsyncResolvable_ptMd, &_sSS_7ToolKit25TypedValueAsyncResolvable_ptMR);
  swift_arrayDestroy();
  ToolInvocation.init(localToolId:parameterValuesByKey:)();
  if (v47)
  {
    v17 = v0[47];
    v18 = v0[45];
    v19 = v0[26];
    (*(v0[39] + 8))(v0[41], v0[38]);
    v20 = type metadata accessor for OSSignpostID();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v19);
    outlined destroy of OnScreenContent.Document?(v19, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_Md, &_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_MR);
    swift_getOpaqueTypeConformance2();
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();
    v21 = v0[44];
    v22 = v0[40];
    v23 = v0[41];
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[33];
    v28 = v0[29];
    v27 = v0[30];
    v29 = v0[26];

    v30 = v0[1];

    return v30(0);
  }

  else
  {
    v32 = *(MEMORY[0x277D72568] + 4);
    v33 = swift_task_alloc();
    v0[49] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_Md, &_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_MR);
    v0[50] = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[51] = OpaqueTypeConformance2;
    *v33 = v0;
    v33[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
    v36 = v0[47];
    v37 = v0[36];
    v38 = v0[30];

    return MEMORY[0x2821DAAB0](v38, v37, v34, OpaqueTypeConformance2);
  }
}

{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v3 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v33 = v0[50];
    v34 = v0[51];
    v31 = v0[45];
    v32 = v0[47];
    v4 = v0[41];
    v6 = v0[38];
    v5 = v0[39];
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[34];
    v10 = v0[26];
    outlined destroy of OnScreenContent.Document?(v3, &_s7ToolKit10TypedValueO2IDVSgMd, &_s7ToolKit10TypedValueO2IDVSgMR);
    lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v12 = type metadata accessor for OSSignpostID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v10);
    outlined destroy of OnScreenContent.Document?(v10, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();
    v13 = v0[44];
    v15 = v0[40];
    v14 = v0[41];
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[33];
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[26];

    v22 = v0[1];

    return v22(0);
  }

  else
  {
    (*(v2 + 32))(v0[33], v3, v1);
    v24 = *(MEMORY[0x277D72540] + 4);
    v25 = swift_task_alloc();
    v0[53] = v25;
    *v25 = v0;
    v25[1] = TextAssistantExecutor.execute(appBundleID:userQuery:);
    v26 = v0[50];
    v27 = v0[51];
    v28 = v0[47];
    v29 = v0[40];
    v30 = v0[33];

    return MEMORY[0x2821DAA80](v29, v30, v26, v27);
  }
}

{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v3 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if ((*(v0[39] + 88))(v0[40], v0[38]) == *MEMORY[0x277D729E8])
  {
    v1 = v0[40];
    v3 = v0[28];
    v2 = v0[29];
    v4 = v0[27];
    (*(v0[39] + 96))(v1, v0[38]);
    v5 = *v1;
    v6 = swift_projectBox();
    (*(v3 + 16))(v2, v6, v4);

    if (TypedValue.EnumerationValue.case.getter() == 0x73736563637573 && v7 == 0xE700000000000000)
    {

      v57 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v44 = v0[50];
    v46 = v0[51];
    v28 = v0[45];
    v42 = v0[47];
    v41 = v0[41];
    v48 = v0[44];
    v50 = v0[40];
    v29 = v0[38];
    v30 = v0[39];
    v31 = v0[36];
    v32 = v0[34];
    v33 = v0[35];
    v34 = v0[32];
    v35 = v0[33];
    v36 = v0[31];
    v56 = v0[30];
    v52 = v0[37];
    v54 = v0[29];
    v38 = v0[26];
    v37 = v0[27];
    (*(v0[28] + 8))();
    (*(v34 + 8))(v35, v36);
    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v41, v29);
    v39 = type metadata accessor for OSSignpostID();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v38);
    outlined destroy of OnScreenContent.Document?(v38, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();

    v26 = v0[1];
    v27 = v57 & 1;
  }

  else
  {
    v53 = v0[50];
    v55 = v0[51];
    v49 = v0[45];
    v51 = v0[47];
    v8 = v0[38];
    v9 = v0[35];
    v45 = v0[36];
    v47 = v0[41];
    v10 = v0[33];
    v43 = v0[34];
    v11 = v0[31];
    v12 = v0[32];
    v13 = v0[26];
    v14 = *(v0[39] + 8);
    v14(v0[40], v8);
    lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v12 + 8))(v10, v11);
    (*(v9 + 8))(v45, v43);
    v14(v47, v8);
    v16 = type metadata accessor for OSSignpostID();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v13);
    outlined destroy of OnScreenContent.Document?(v13, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    dispatch thunk of ToolExecutionSession.endSession()();
    swift_unknownObjectRelease();
    v17 = v0[44];
    v18 = v0[40];
    v19 = v0[41];
    v21 = v0[36];
    v20 = v0[37];
    v22 = v0[33];
    v24 = v0[29];
    v23 = v0[30];
    v25 = v0[26];

    v26 = v0[1];
    v27 = 0;
  }

  return v26(v27);
}

{
  v1 = v0[48];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];

  v11 = v0[1];

  return v11(0);
}

{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];
  v4 = v0[45];
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[26];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v7 + 8))(v5, v6);
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v8);
  outlined destroy of OnScreenContent.Document?(v8, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  dispatch thunk of ToolExecutionSession.endSession()();
  swift_unknownObjectRelease();
  v10 = v0[52];
  v11 = v0[44];
  v13 = v0[40];
  v12 = v0[41];
  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[26];

  v20 = v0[1];

  return v20(0);
}

{
  v23 = v0[50];
  v24 = v0[51];
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  v9 = v0[26];
  (*(v0[32] + 8))(v0[33], v0[31]);
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  v10 = type metadata accessor for OSSignpostID();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("SessionCreation.Time", 20, 2, v9);
  outlined destroy of OnScreenContent.Document?(v9, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  dispatch thunk of ToolExecutionSession.endSession()();
  swift_unknownObjectRelease();
  v11 = v0[54];
  v12 = v0[44];
  v14 = v0[40];
  v13 = v0[41];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[33];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[26];

  v21 = v0[1];

  return v21(0);
}

uint64_t TextAssistantExecutor.execute(appBundleID:userQuery:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  (*(v3[43] + 8))(v3[44], v3[42]);
  if (v1)
  {
    v7 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  else
  {
    v7 = TextAssistantExecutor.execute(appBundleID:userQuery:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t lazy protocol witness table accessor for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError()
{
  result = lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError;
  if (!lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError;
  if (!lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAssistantExecutor.ExecutorError and conformance TextAssistantExecutor.ExecutorError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextAssistantExecutor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TextAssistantExecutor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t SupportedDocumentHelper.getFileType(typeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v33 = a1;
  v34 = a2;
  v32 = &v33;
  v8 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v31, v7);
  if (v8)
  {
    v9 = MEMORY[0x277D0D690];
  }

  else
  {
    v10 = v3[2];
    v33 = a1;
    v34 = a2;
    MEMORY[0x28223BE20](v8);
    v30 = &v33;
    v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v11);
    if (v12)
    {
      v9 = MEMORY[0x277D0D6B8];
    }

    else
    {
      v13 = v3[3];
      v33 = a1;
      v34 = a2;
      MEMORY[0x28223BE20](v12);
      v30 = &v33;
      v15 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v14);
      if (v15)
      {
        v9 = MEMORY[0x277D0D6C8];
      }

      else
      {
        v16 = v3[4];
        v33 = a1;
        v34 = a2;
        MEMORY[0x28223BE20](v15);
        v30 = &v33;
        v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v17);
        if (v18)
        {
          v9 = MEMORY[0x277D0D6A8];
        }

        else
        {
          v19 = v3[5];
          v33 = a1;
          v34 = a2;
          MEMORY[0x28223BE20](v18);
          v30 = &v33;
          v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v20);
          if (v21)
          {
            v9 = MEMORY[0x277D0D698];
          }

          else
          {
            v22 = v3[6];
            v33 = a1;
            v34 = a2;
            MEMORY[0x28223BE20](v21);
            v30 = &v33;
            if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v29, v23) & 1) == 0)
            {
              v28 = type metadata accessor for SupportedDocumentType();
              return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
            }

            v9 = MEMORY[0x277D0D6B0];
          }
        }
      }
    }
  }

  v24 = *v9;
  v25 = type metadata accessor for SupportedDocumentType();
  v26 = *(v25 - 8);
  (*(v26 + 104))(a3, v24, v25);
  return (*(v26 + 56))(a3, 0, 1, v25);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized SupportedDocumentHelper.init()(char **a1@<X8>)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(&outlined read-only object #6 of SupportedDocumentHelper.init() + v2 + 32);
    v5 = *(v4 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *(&outlined read-only object #6 of SupportedDocumentHelper.init() + v2 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v10 = v6 + v5;
      }

      else
      {
        v10 = v6;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v3);
      if (*(v4 + 16))
      {
LABEL_13:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = *(v3 + 2);
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_21;
          }

          *(v3 + 2) = v13;
        }

        goto LABEL_3;
      }
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_3:
    v2 += 8;
    if (v2 == 48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      swift_arrayDestroy();
      *a1 = v3;
      a1[1] = &outlined read-only object #0 of SupportedDocumentHelper.init();
      a1[2] = &outlined read-only object #1 of SupportedDocumentHelper.init();
      a1[3] = &outlined read-only object #2 of SupportedDocumentHelper.init();
      a1[4] = &outlined read-only object #3 of SupportedDocumentHelper.init();
      a1[5] = &outlined read-only object #4 of SupportedDocumentHelper.init();
      a1[6] = &outlined read-only object #5 of SupportedDocumentHelper.init();
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for SupportedDocumentHelper(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SupportedDocumentHelper(uint64_t result, int a2, int a3)
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

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GenerateTextFromMediaController.logger);
  v1 = __swift_project_value_buffer(v0, static GenerateTextFromMediaController.logger);
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.genFromMediaController);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GenerateTextController.logger);
  v1 = __swift_project_value_buffer(v0, static GenerateTextController.logger);
  if (one-time initialization token for genFromTextController != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.genFromTextController);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t GenerateTextFromMediaController.Error.errorUserInfo.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FE1A560;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000024FE1FD40;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  outlined copy of GenerateTextFromMediaController.Error(a1, a2, a3);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of OnScreenContent.Document?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v7;
}

uint64_t protocol witness for static CustomNSError.errorDomain.getter in conformance GenerateTextFromMediaController.Error()
{
  v0 = static GenerateTextFromMediaController.Error.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._domain.getter in conformance GenerateTextFromMediaController.Error(uint64_t a1)
{
  TextFromMedia = lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();

  return MEMORY[0x28211F4B8](a1, TextFromMedia);
}

uint64_t protocol witness for Error._code.getter in conformance GenerateTextFromMediaController.Error(uint64_t a1)
{
  TextFromMedia = lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();

  return MEMORY[0x28211F4A8](a1, TextFromMedia);
}

uint64_t GenerateTextFromMediaController.init(featureFlagManager:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, v19);
  v18[3] = &type metadata for DefaultModelSessionFactory;
  v18[4] = &protocol witness table for DefaultModelSessionFactory;
  a2[23] = &type metadata for ContentLoader;
  a2[24] = &protocol witness table for ContentLoader;
  v4 = swift_allocObject();
  a2[20] = v4;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(a1, (v4 + 2));
  v5 = type metadata accessor for UIContextClient();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = UIContextClient.init()();
  v4[10] = &type metadata for ScreenLockChecker;
  v4[11] = &protocol witness table for ScreenLockChecker;
  v4[12] = v8;
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  swift_allocObject();
  v11 = UIContextClient.init()();
  a2[28] = &type metadata for ContentSelector;
  a2[29] = &protocol witness table for ContentSelector;
  v12 = swift_allocObject();
  a2[25] = v12;
  v12[6] = &type metadata for ManagedConfigurationProvider;
  v12[7] = &protocol witness table for ManagedConfigurationProvider;
  v12[11] = &type metadata for ScreenLockChecker;
  v12[12] = &protocol witness table for ScreenLockChecker;
  v13 = *(v5 + 48);
  v14 = *(v5 + 52);
  swift_allocObject();
  v15 = UIContextClient.init()();
  v12[16] = &type metadata for EntityConverter;
  v12[17] = &protocol witness table for EntityConverter;
  v12[13] = v15;
  v12[2] = v11;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v19, a2);
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v18, (a2 + 5));
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v19, (a2 + 15));
  a2[13] = &type metadata for DefaultPromptFactory;
  a2[14] = &protocol witness table for DefaultPromptFactory;
  v16 = swift_allocObject();
  a2[10] = v16;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging((a2 + 15), v16 + 16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_24FD8A338()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24FD8A380()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_24FD8A3D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 712) = v5;
  *(v6 + 704) = a4;
  *(v6 + 696) = a3;
  *(v6 + 688) = a2;
  *(v6 + 680) = a1;
  v8 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v6 + 720) = v8;
  v9 = *(v8 - 8);
  *(v6 + 728) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v6 + 752) = v11;
  v12 = *(v11 - 8);
  *(v6 + 760) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 768) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  v15 = type metadata accessor for GeneratedResponse(0);
  *(v6 + 792) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v6 + 800) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v6 + 808) = swift_task_alloc();
  v18 = type metadata accessor for GenerativeError.AuthenticationError();
  *(v6 + 816) = v18;
  v19 = *(v18 - 8);
  *(v6 + 824) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  v21 = type metadata accessor for GenerativeError.ErrorType();
  *(v6 + 856) = v21;
  v22 = *(v21 - 8);
  *(v6 + 864) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 872) = swift_task_alloc();
  v24 = type metadata accessor for GenerativeError();
  *(v6 + 880) = v24;
  v25 = *(v24 - 8);
  *(v6 + 888) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();
  v27 = type metadata accessor for GATError();
  *(v6 + 912) = v27;
  v28 = *(v27 - 8);
  *(v6 + 920) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  v30 = *(*(type metadata accessor for DocumentInfo(0) - 8) + 64) + 15;
  *(v6 + 944) = swift_task_alloc();
  v31 = *(*(type metadata accessor for ImageInfo(0) - 8) + 64) + 15;
  *(v6 + 952) = swift_task_alloc();
  v32 = type metadata accessor for ScreenContent(0);
  *(v6 + 960) = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  *(v6 + 968) = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v6 + 976) = swift_task_alloc();
  v35 = type metadata accessor for SelectedContent();
  *(v6 + 984) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = swift_task_alloc();
  v37 = *(a5 + 16);
  *(v6 + 288) = *a5;
  *(v6 + 304) = v37;
  *(v6 + 320) = *(a5 + 32);
  *(v6 + 336) = *(a5 + 48);
  *(v6 + 1008) = *(a5 + 56);
  v38 = *(a5 + 88);
  *(v6 + 344) = *(a5 + 72);
  *(v6 + 360) = v38;
  *(v6 + 376) = *(a5 + 104);
  v39 = *(a5 + 128);
  *(v6 + 1024) = *(a5 + 120);
  *(v6 + 1032) = v39;
  type metadata accessor for MainActor();
  *(v6 + 1040) = static MainActor.shared.getter();
  v41 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1048) = v41;
  *(v6 + 1056) = v40;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:), v41, v40);
}

uint64_t GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)()
{
  v17 = v0;
  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v1 = static Disclaimer.partnerName;
  *(v0 + 1064) = static Disclaimer.partnerName;
  v2 = one-time initialization token for genFromMediaController;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 696);
  v4 = type metadata accessor for Logger();
  *(v0 + 1080) = v4;
  *(v0 + 1088) = __swift_project_value_buffer(v4, static Logger.genFromMediaController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136316162;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, &v16);
    *(v9 + 22) = 2080;
    *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);
    *(v9 + 32) = 2080;
    *(v9 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, *(&v1 + 1), &v16);
    *(v9 + 42) = 1024;
    type metadata accessor for GenerativeAssistantSettingsUserDefaults();
    *(v9 + 44) = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s [userQuery = %s] [partner: %s] [isPartnerEnabled: %{BOOL}d", v9, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v10, -1, -1);
    MEMORY[0x253057F40](v9, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 1096) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("LoadScreenContent.Time", 22, 2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 712);
  *(v0 + 1104) = static SELFUtils.shared;
  SELFUtils.recordLoadScreenContentStarted()();
  __swift_project_boxed_opaque_existential_1((v11 + 160), *(v11 + 184));
  v15 = off_28627EF30 + *off_28627EF30;
  v12 = *(off_28627EF30 + 1);
  v13 = swift_task_alloc();
  *(v0 + 1112) = v13;
  *v13 = v0;
  v13[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);

  return (v15)(v0 + 392, &type metadata for ContentLoader, &protocol witness table for ContentLoader);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v9 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v4 = v2[134];

    v5 = v2[132];
    v6 = v2[131];
    v7 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v5 = v2[132];
    v6 = v2[131];
    v7 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  __swift_project_boxed_opaque_existential_1((v0[89] + 200), *(v0[89] + 224));
  v1 = swift_task_alloc();
  v0[141] = v1;
  *v1 = v0;
  v1[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  v2 = v0[124];

  return ContentSelector.select(from:)(v2, (v0 + 49));
}

{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v9 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v4 = v2[134];

    v5 = v2[132];
    v6 = v2[131];
    v7 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v5 = v2[132];
    v6 = v2[131];
    v7 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v59 = v0;
  v1 = (v0 + 344);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  outlined init with take of SelectedContent(*(v0 + 992), v5, type metadata accessor for SelectedContent);
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("LoadScreenContent.Time", 22, 2, v6);
  outlined destroy of OnScreenContent.Document?(v6, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  specialized SELFUtils.recordLoadScreenContentEnded(originalMediaType:originalMediaSizeInKBs:)();
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  outlined init with copy of ScreenContent(v5, v7, type metadata accessor for ScreenContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v0 + 1032);
  v12 = *(v0 + 1024);
  v13 = *(v0 + 1016);
  v14 = *(v0 + 1008);
  v15 = *(v0 + 1000);
  v16 = *(v0 + 984);
  v17 = *(v0 + 968);
  if (EnumCaseMultiPayload == 1)
  {
    v18 = outlined init with take of SelectedContent(v17, *(v0 + 944), type metadata accessor for DocumentInfo);
    v14(v18);
    v41 = *(v0 + 288);
    v43 = *(v0 + 304);
    v45 = *(v0 + 320);
    v49 = *v1;
    v47 = *(v0 + 336);
    v51 = *(v0 + 360);
    v53 = *(v0 + 376);
    v55 = v12;
    v56 = v4;
    v57 = 0;
    v58 = 0;

    IntentCallbackManager.updateIntentProgress(to:)(&v55);
    outlined consume of GenerativeAssistantProgressLevel(v55, v56, v57, v58);
    v19 = *(v16 + 20);
    v20 = *(v0 + 304);
    *(v0 + 16) = *(v0 + 288);
    *(v0 + 32) = v20;
    *(v0 + 48) = *(v0 + 320);
    v21 = *(v0 + 360);
    *(v0 + 88) = *v1;
    *(v0 + 64) = *(v0 + 336);
    *(v0 + 72) = v14;
    *(v0 + 80) = v13;
    *(v0 + 104) = v21;
    *(v0 + 120) = *(v0 + 376);
    *(v0 + 136) = v12;
    *(v0 + 144) = v11;
    v22 = swift_task_alloc();
    *(v0 + 1160) = v22;
    *v22 = v0;
    v22[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v23 = *(v0 + 944);
    v24 = *(v0 + 712);
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);

    return GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)(v28, v27, v26, v25, v23, v15 + v19, v0 + 16);
  }

  else
  {
    v30 = outlined init with take of SelectedContent(v17, *(v0 + 952), type metadata accessor for ImageInfo);
    v14(v30);
    v42 = *(v0 + 288);
    v44 = *(v0 + 304);
    v46 = *(v0 + 320);
    v50 = *v1;
    v48 = *(v0 + 336);
    v52 = *(v0 + 360);
    v54 = *(v0 + 376);
    v55 = v12;
    v56 = v4;
    v57 = 0;
    v58 = 0;

    IntentCallbackManager.updateIntentProgress(to:)(&v55);
    outlined consume of GenerativeAssistantProgressLevel(v55, v56, v57, v58);
    v31 = *(v16 + 20);
    v32 = *(v0 + 304);
    *(v0 + 152) = *(v0 + 288);
    *(v0 + 168) = v32;
    *(v0 + 184) = *(v0 + 320);
    *(v0 + 200) = *(v0 + 336);
    *(v0 + 208) = v14;
    *(v0 + 216) = v13;
    v33 = *(v0 + 360);
    *(v0 + 224) = *v1;
    *(v0 + 240) = v33;
    *(v0 + 256) = *(v0 + 376);
    *(v0 + 272) = v12;
    *(v0 + 280) = v11;
    v34 = swift_task_alloc();
    *(v0 + 1144) = v34;
    *v34 = v0;
    v34[1] = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
    v35 = *(v0 + 952);
    v36 = *(v0 + 712);
    v37 = *(v0 + 704);
    v38 = *(v0 + 696);
    v39 = *(v0 + 688);
    v40 = *(v0 + 680);

    return GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)(v40, v39, v38, v37, v35, v15 + v31, v0 + 152);
  }
}

{
  v59 = v0;
  v1 = *(v0 + 1040);

  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  v2 = *(v0 + 1136);
  *(v0 + 624) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 1088);
  if (v4)
  {

    v6 = *(v0 + 505);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v58[0] = v11;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v58);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v58);
      *(v9 + 22) = 2112;
      lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
      swift_allocError();
      *v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v13;
      *v10 = v13;
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s [ContentRequestErrors is = %@]", v9, 0x20u);
      outlined destroy of OnScreenContent.Document?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v11, -1, -1);
      MEMORY[0x253057F40](v9, -1, -1);
    }

    v14 = 1;
    switch(v6)
    {
      case 1:
        v14 = 2;
        goto LABEL_21;
      case 2:
        v14 = 3;
        goto LABEL_21;
      case 3:
        v14 = 12;
        goto LABEL_21;
      case 4:
        v14 = 4;
        goto LABEL_21;
      case 5:
        v14 = 5;
        goto LABEL_21;
      case 6:
        v14 = 6;
        goto LABEL_21;
      case 7:
        v14 = 7;
        goto LABEL_21;
      case 8:
        v14 = 11;
        goto LABEL_21;
      case 9:
        v14 = 13;
        goto LABEL_21;
      case 10:
        v31 = *(v0 + 1104);
        SELFUtils.recordRequestFailed(code:domain:)(14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v58[0]) = 9;

        v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v32);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        goto LABEL_22;
      case 11:
        v14 = 8;
        goto LABEL_21;
      case 12:
        v14 = 9;
        goto LABEL_21;
      case 13:
        v14 = 10;
        goto LABEL_21;
      default:
LABEL_21:
        v33 = *(v0 + 1104);
        SELFUtils.recordRequestFailed(code:domain:)(v14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v58[0]) = 17;

        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v34);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_22:
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        swift_willThrow();
        v30 = *(v0 + 624);
        break;
    }
  }

  else
  {

    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58[0] = v20;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v58);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v58);
      *(v18 + 22) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v22;
      *v19 = v22;
      _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s [error = %@]", v18, 0x20u);
      outlined destroy of OnScreenContent.Document?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);
    }

    v23 = *(v0 + 1104);
    v24 = *(v0 + 1096);
    MetricsUtils.emitSignpostEvent(_:)("Error.LoadScreenContent", 23, 2);
    SELFUtils.recordLoadScreenContentFailed(code:domain:)(100, 1);
    v25 = _convertErrorToNSError(_:)();
    v26 = [v25 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = _convertErrorToNSError(_:)();
    [v27 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v58[0]) = 17;
    v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v28);

    v29 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    v30 = v2;
  }

  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 952);
  v40 = *(v0 + 944);
  v41 = *(v0 + 936);
  v42 = *(v0 + 928);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v47 = *(v0 + 872);
  v48 = *(v0 + 848);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 808);
  v52 = *(v0 + 800);
  v53 = *(v0 + 784);
  v54 = *(v0 + 776);
  v55 = *(v0 + 768);
  v56 = *(v0 + 744);
  v57 = *(v0 + 736);

  v45 = *(v0 + 8);

  return v45();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1144);
  v9 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v4 = v2[132];
    v5 = v2[131];
    v6 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v7 = v2[134];

    v4 = v2[132];
    v5 = v2[131];
    v6 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[130];
  v2 = v0[125];
  v3 = v0[119];

  outlined destroy of DocumentInfo(v3, type metadata accessor for ImageInfo);
  outlined destroy of DocumentInfo(v2, type metadata accessor for SelectedContent);
  v4 = v0[125];
  v5 = v0[124];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[116];
  v12 = v0[113];
  v13 = v0[112];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[105];
  v19 = v0[104];
  v20 = v0[101];
  v21 = v0[100];
  v22 = v0[98];
  v23 = v0[97];
  v24 = v0[96];
  v25 = v0[93];
  v26 = v0[92];

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v9 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v4 = v2[132];
    v5 = v2[131];
    v6 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  else
  {
    v7 = v2[134];

    v4 = v2[132];
    v5 = v2[131];
    v6 = GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

{
  v1 = v0[130];
  v2 = v0[125];
  v3 = v0[118];

  outlined destroy of DocumentInfo(v3, type metadata accessor for DocumentInfo);
  outlined destroy of DocumentInfo(v2, type metadata accessor for SelectedContent);
  v4 = v0[125];
  v5 = v0[124];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[119];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[116];
  v12 = v0[113];
  v13 = v0[112];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[105];
  v19 = v0[104];
  v20 = v0[101];
  v21 = v0[100];
  v22 = v0[98];
  v23 = v0[97];
  v24 = v0[96];
  v25 = v0[93];
  v26 = v0[92];

  v14 = v0[1];

  return v14();
}

{
  v59 = v0;
  v1 = *(v0 + 1040);

  v2 = *(v0 + 1120);
  *(v0 + 624) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 1088);
  if (v4)
  {

    v6 = *(v0 + 505);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v58[0] = v11;
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v58);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v58);
      *(v9 + 22) = 2112;
      lazy protocol witness table accessor for type ContentRequestErrors and conformance ContentRequestErrors();
      swift_allocError();
      *v12 = v6;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v13;
      *v10 = v13;
      _os_log_impl(&dword_24FD67000, v7, v8, "%s.%s [ContentRequestErrors is = %@]", v9, 0x20u);
      outlined destroy of OnScreenContent.Document?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v11, -1, -1);
      MEMORY[0x253057F40](v9, -1, -1);
    }

    v14 = 1;
    switch(v6)
    {
      case 1:
        v14 = 2;
        goto LABEL_21;
      case 2:
        v14 = 3;
        goto LABEL_21;
      case 3:
        v14 = 12;
        goto LABEL_21;
      case 4:
        v14 = 4;
        goto LABEL_21;
      case 5:
        v14 = 5;
        goto LABEL_21;
      case 6:
        v14 = 6;
        goto LABEL_21;
      case 7:
        v14 = 7;
        goto LABEL_21;
      case 8:
        v14 = 11;
        goto LABEL_21;
      case 9:
        v14 = 13;
        goto LABEL_21;
      case 10:
        v31 = *(v0 + 1104);
        SELFUtils.recordRequestFailed(code:domain:)(14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v58[0]) = 9;

        v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v32);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
        goto LABEL_22;
      case 11:
        v14 = 8;
        goto LABEL_21;
      case 12:
        v14 = 9;
        goto LABEL_21;
      case 13:
        v14 = 10;
        goto LABEL_21;
      default:
LABEL_21:
        v33 = *(v0 + 1104);
        SELFUtils.recordRequestFailed(code:domain:)(v14, 6);
        swift_beginAccess();
        type metadata accessor for DialogEngineClient();
        swift_initStaticObject();
        LOBYTE(v58[0]) = 17;

        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
        DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v34);

        objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
LABEL_22:
        CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
        swift_willThrow();
        v30 = *(v0 + 624);
        break;
    }
  }

  else
  {

    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58[0] = v20;
      *v18 = 136315650;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v58);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v58);
      *(v18 + 22) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v22;
      *v19 = v22;
      _os_log_impl(&dword_24FD67000, v16, v17, "%s.%s [error = %@]", v18, 0x20u);
      outlined destroy of OnScreenContent.Document?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x253057F40](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v20, -1, -1);
      MEMORY[0x253057F40](v18, -1, -1);
    }

    v23 = *(v0 + 1104);
    v24 = *(v0 + 1096);
    MetricsUtils.emitSignpostEvent(_:)("Error.LoadScreenContent", 23, 2);
    SELFUtils.recordLoadScreenContentFailed(code:domain:)(100, 1);
    v25 = _convertErrorToNSError(_:)();
    v26 = [v25 domain];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = _convertErrorToNSError(_:)();
    [v27 code];

    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v58[0]) = 17;
    v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v58, 0, v28);

    v29 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    v30 = v2;
  }

  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 976);
  v38 = *(v0 + 968);
  v39 = *(v0 + 952);
  v40 = *(v0 + 944);
  v41 = *(v0 + 936);
  v42 = *(v0 + 928);
  v43 = *(v0 + 904);
  v44 = *(v0 + 896);
  v47 = *(v0 + 872);
  v48 = *(v0 + 848);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 808);
  v52 = *(v0 + 800);
  v53 = *(v0 + 784);
  v54 = *(v0 + 776);
  v55 = *(v0 + 768);
  v56 = *(v0 + 744);
  v57 = *(v0 + 736);

  v45 = *(v0 + 8);

  return v45();
}

{
  v228 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 952);

  outlined destroy of DocumentInfo(v2, type metadata accessor for ImageInfo);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 936);
  v5 = *(v0 + 912);
  *(v0 + 632) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1064);
    v9 = *(v0 + 936);
    v10 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = *(v0 + 712);
    v14 = v3;
    v15 = *(v0 + 680);

    (*(v11 + 32))(v10, v9, v12);
    specialized GenerateController.handleGATError(_:_:)(v10, v8, v7, v15);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 1000);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    v20 = *(v0 + 912);

    (*(v19 + 8))(v18, v20);
    outlined destroy of DocumentInfo(v17, type metadata accessor for SelectedContent);
    v60 = (v0 + 632);
LABEL_42:

    v172 = *(v0 + 1000);
    v173 = *(v0 + 992);
    v174 = *(v0 + 976);
    v175 = *(v0 + 968);
    v176 = *(v0 + 952);
    v177 = *(v0 + 944);
    v178 = *(v0 + 936);
    v179 = *(v0 + 928);
    v180 = *(v0 + 904);
    v181 = *(v0 + 896);
    v189 = *(v0 + 872);
    v192 = *(v0 + 848);
    v195 = *(v0 + 840);
    v197 = *(v0 + 832);
    v200 = *(v0 + 808);
    v202 = *(v0 + 800);
    v207 = *(v0 + 784);
    v212 = *(v0 + 776);
    v217 = *(v0 + 768);
    v223 = *(v0 + 744);
    v226 = *(v0 + 736);

    v96 = *(v0 + 8);
    goto LABEL_43;
  }

  v60 = (v0 + 640);

  *(v0 + 640) = v3;
  v22 = v3;
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 1072);
    v24 = *(v0 + 1064);
    v25 = *(v0 + 712);
    v26 = *(v0 + 680);

    v27 = *(v0 + 528);
    *(v0 + 472) = *(v0 + 512);
    *(v0 + 488) = v27;
    *(v0 + 504) = *(v0 + 544);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)(v0 + 472, v24, v23, v26);
    v28 = *(v0 + 1072);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined destroy of ModelOrchestrator.Error(v0 + 472);

    goto LABEL_42;
  }

  v60 = (v0 + 648);
  v29 = *(v0 + 904);
  v30 = *(v0 + 880);

  *(v0 + 648) = v3;
  v31 = v3;
  if (!swift_dynamicCast())
  {
    object = (v0 + 656);

    *(v0 + 656) = v3;
    v62 = v3;
    v63 = type metadata accessor for CustomErrorWithLocalizedDescription();
    if (!swift_dynamicCast())
    {
      v97 = *(v0 + 1088);

      v98 = v3;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v227[0] = v103;
        *v101 = 136315650;
        *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
        *(v101 + 12) = 2080;
        *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
        *(v101 + 22) = 2112;
        v104 = v3;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 24) = v105;
        *v102 = v105;
        _os_log_impl(&dword_24FD67000, v99, v100, "%s.%s [error = %@]", v101, 0x20u);
        outlined destroy of OnScreenContent.Document?(v102, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v102, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v103, -1, -1);
        MEMORY[0x253057F40](v101, -1, -1);
      }

      v106 = *(v0 + 1104);
      v107 = *(v0 + 1072);
      v108 = *(v0 + 1064);
      SELFUtils.recordRequestFailed(code:domain:)(100, 1);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v227[0]) = 5;
      v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v110.value._countAndFlagsBits = v108;
      v110.value._object = v107;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, v110, v109);

      *(v0 + 672) = v3;
      v111 = v3;
      if (swift_dynamicCast())
      {
        v112 = *(v0 + 600);
        v113 = *(v0 + 608);
        v114 = *(v0 + 616);
        if (v114 == 3)
        {
          outlined consume of GenerateTextFromMediaController.Error(v112, v113, 3u);

          LOBYTE(v227[0]) = 8;
          v115 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
          DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, 0, v115);
        }

        else
        {
          outlined consume of GenerateTextFromMediaController.Error(v112, v113, v114);
        }
      }

      v182 = *(v0 + 1000);
      v183 = _convertErrorToNSError(_:)();
      v184 = [v183 domain];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = _convertErrorToNSError(_:)();
      [v185 code];

      v186 = objc_allocWithZone(v63);
      CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
      swift_willThrow();

      outlined destroy of DocumentInfo(v182, type metadata accessor for SelectedContent);
      goto LABEL_16;
    }

    v64 = *(v0 + 1072);

    v60 = *(v0 + 664);
    if (one-time initialization token for genFromTextController != -1)
    {
LABEL_49:
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1080), static Logger.genFromTextController);
    v65 = v60;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 1000);
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v227[0] = v71;
      *v70 = 136315650;
      v219 = v69;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
      *(v70 + 12) = 2080;
      *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
      *(v70 + 22) = 2080;
      v72 = [v65 localizedDescription];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v227);

      *(v70 + 24) = v76;
      _os_log_impl(&dword_24FD67000, v66, v67, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v71, -1, -1);
      MEMORY[0x253057F40](v70, -1, -1);

      swift_willThrow();
      outlined destroy of DocumentInfo(v219, type metadata accessor for SelectedContent);
    }

    else
    {
LABEL_38:

      swift_willThrow();
      outlined destroy of DocumentInfo(v69, type metadata accessor for SelectedContent);
    }

    v21 = *object;
LABEL_15:

LABEL_16:
    v86 = *(v0 + 1000);
    v87 = *(v0 + 992);
    v88 = *(v0 + 976);
    v89 = *(v0 + 968);
    v90 = *(v0 + 952);
    v91 = *(v0 + 944);
    v92 = *(v0 + 936);
    v93 = *(v0 + 928);
    v94 = *(v0 + 904);
    v95 = *(v0 + 896);
    v187 = *(v0 + 872);
    v188 = *(v0 + 848);
    v190 = *(v0 + 840);
    v193 = *(v0 + 832);
    v196 = *(v0 + 808);
    v198 = *(v0 + 800);
    v201 = *(v0 + 784);
    v204 = *(v0 + 776);
    v209 = *(v0 + 768);
    v215 = *(v0 + 744);
    v221 = *(v0 + 736);

    v96 = *(v0 + 8);
LABEL_43:

    return v96();
  }

  v32 = *(v0 + 904);
  v33 = *(v0 + 896);
  v34 = *(v0 + 888);
  v35 = *(v0 + 880);
  v36 = *(v0 + 872);
  v37 = *(v0 + 864);
  v38 = *(v0 + 856);

  (*(v34 + 32))(v33, v32, v35);
  GenerativeError.type.getter();
  if ((*(v37 + 88))(v36, v38) != *MEMORY[0x277D0DB58])
  {
    v77 = *(v0 + 1072);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 896);
    v80 = *(v0 + 888);
    v203 = *(v0 + 880);
    v208 = *(v0 + 1000);
    v81 = *(v0 + 864);
    v214 = *(v0 + 856);
    v220 = *(v0 + 872);

    MEMORY[0x253056790](v82);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v227[0]) = 16;
    v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v84.value._countAndFlagsBits = v78;
    v84.value._object = v77;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, v84, v83);

    v85 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    (*(v80 + 8))(v79, v203);
    outlined destroy of DocumentInfo(v208, type metadata accessor for SelectedContent);
    (*(v81 + 8))(v220, v214);
    v21 = *(v0 + 648);
    goto LABEL_15;
  }

  v39 = *(v0 + 1088);
  v40 = *(v0 + 1072);
  v41 = *(v0 + 872);
  v42 = *(v0 + 864);
  v43 = *(v0 + 856);
  v44 = *(v0 + 848);
  v45 = *(v0 + 840);
  v46 = *(v0 + 824);
  v47 = *(v0 + 816);

  (*(v42 + 96))(v41, v43);
  (*(v46 + 32))(v44, v41, v47);
  v48 = *(v46 + 16);
  v48(v45, v44, v47);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 840);
  if (v51)
  {
    v213 = *(v0 + 832);
    v53 = *(v0 + 824);
    v54 = *(v0 + 816);
    v218 = v50;
    v55 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v227[0] = v224;
    *v55 = 136315650;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
    *(v55 + 12) = 2080;
    *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
    *(v55 + 22) = 2080;
    v48(v213, v52, v54);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    (*(v53 + 8))(v52, v54);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v227);

    *(v55 + 24) = v59;
    _os_log_impl(&dword_24FD67000, v49, v218, "%s.%s [Authentication Error = %s]", v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v224, -1, -1);
    MEMORY[0x253057F40](v55, -1, -1);
  }

  else
  {
    v116 = *(v0 + 824);
    v117 = *(v0 + 816);

    (*(v116 + 8))(v52, v117);
  }

  v118 = *(v0 + 808);
  v210 = v118;
  v119 = *(v0 + 800);
  v120 = *(v0 + 792);
  v121 = *(v0 + 728);
  v122 = *(v0 + 720);
  v123 = type metadata accessor for URL();
  (*(*(v123 - 8) + 56))(v118, 1, 1, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v124 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v222 = *(v121 + 72);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_24FE1A560;
  v199 = v124;
  v126 = (v125 + v124);
  *v126 = 0;
  v126[1] = 0xE000000000000000;
  v216 = v125 + v124;
  swift_storeEnumTagMultiPayload();
  v205 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v127 = MEMORY[0x277D0D628];
  *(v0 + 456) = v205;
  *(v0 + 464) = v127;
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v128 = (v119 + v120[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v227[0]) = 49;
  v129 = MEMORY[0x277D84F90];
  v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v131 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, 0, v130);
  object = v131._object;

  *v128 = v131;
  *v119 = 0;
  *(v119 + 8) = 0xE000000000000000;
  v225 = v125;
  *(v119 + 16) = v125;
  *(v119 + 24) = v129;
  *(v119 + 32) = 64;
  *(v119 + 40) = v129;
  *(v119 + 48) = v129;
  *(v119 + v120[15]) = v129;
  *(v119 + v120[12]) = 3;
  v132 = (v119 + v120[13]);
  *v132 = 0;
  v132[1] = 0xE000000000000000;
  outlined init with copy of Date?(v210, v119 + v120[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v133 = (v119 + v120[11]);
  *v133 = 0;
  v133[1] = 0xE000000000000000;
  *(v119 + v120[16]) = 0;
  *(v119 + v120[17]) = 0;
  v134 = (v119 + v120[18]);
  *v134 = 0;
  v134[1] = 0xE000000000000000;
  v135 = (v119 + v120[19]);
  *v135 = 0;
  v135[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 432, v119 + v120[21]);
  *(v119 + v120[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    v157 = *(v0 + 896);
    v158 = *(v0 + 888);
    v159 = *(v0 + 880);
    v160 = *(v0 + 848);
    v161 = *(v0 + 824);
    v162 = *(v0 + 816);
    outlined destroy of OnScreenContent.Document?(*(v0 + 808), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v161 + 8))(v160, v162);
    (*(v158 + 8))(v157, v159);
LABEL_41:
    v170 = *(v0 + 800);
    v171 = *(v0 + 680);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined init with copy of ScreenContent(v170, v171, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    outlined destroy of DocumentInfo(v170, type metadata accessor for GeneratedResponse);
    goto LABEL_42;
  }

  v136 = *(v0 + 800);
  v137 = *(v0 + 760);
  v138 = *(v0 + 752);
  v206 = *(v0 + 736);
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v140 = GeneratedResponse.updateText(_:)(v139);
  *v136 = v140._countAndFlagsBits;
  v194 = v119;
  *(v119 + 8) = v140._object;
  v141 = *(v225 + 16);
  v142 = (v137 + 56);
  v143 = (v137 + 48);
  v66 = 0;

  while (1)
  {
    while (1)
    {
      if (v66 == v141)
      {
        v144 = 1;
        v66 = v141;
      }

      else
      {
        if (v66 >= *(v225 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v145 = *(v0 + 776);
        v146 = *(v0 + 768);
        v147 = *(v138 + 48);
        *v146 = v66;
        outlined init with copy of ScreenContent(v216 + v66 * v222, v146 + v147, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v146, v145, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v144 = 0;
        ++v66;
      }

      v148 = *(v0 + 784);
      v149 = *(v0 + 776);
      v150 = *(v0 + 752);
      (*v142)(v149, v144, 1, v150);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v149, v148, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v143)(v148, 1, v150) == 1)
      {
        v163 = *(v0 + 896);
        v164 = *(v0 + 888);
        v165 = *(v0 + 880);
        v166 = *(v0 + 848);
        v167 = *(v0 + 824);
        v168 = *(v0 + 816);
        v169 = *(v0 + 808);

        outlined destroy of OnScreenContent.Document?(v169, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v167 + 8))(v166, v168);
        (*(v164 + 8))(v163, v165);
        goto LABEL_41;
      }

      v151 = *(v0 + 784);
      object = *(v0 + 720);
      v152 = *v151;
      outlined init with take of SelectedContent(v151 + *(v138 + 48), *(v0 + 744), type metadata accessor for GeneratedResponse.RichContentEntity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v154 = *(v0 + 744);
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      outlined destroy of DocumentInfo(v154, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    v155 = *(v0 + 736);
    v191 = *(v0 + 720);
    outlined destroy of DocumentInfo(v154, type metadata accessor for GeneratedResponse.RichContentEntity);
    *v155 = v140._countAndFlagsBits;
    object = v140._object;
    *(v206 + 8) = v140._object;
    swift_storeEnumTagMultiPayload();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v69 = v211;
      if ((v152 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v211);
      v211 = result;
      v69 = result;
      if ((v152 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v152 >= *(v69 + 16))
    {
      break;
    }

    outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 736), v69 + v199 + v152 * v222);
    *(v194 + 16) = v69;
  }

  __break(1u);
  return result;
}

{
  v228 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 944);

  outlined destroy of DocumentInfo(v2, type metadata accessor for DocumentInfo);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 936);
  v5 = *(v0 + 912);
  *(v0 + 632) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1064);
    v9 = *(v0 + 936);
    v10 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = *(v0 + 712);
    v14 = v3;
    v15 = *(v0 + 680);

    (*(v11 + 32))(v10, v9, v12);
    specialized GenerateController.handleGATError(_:_:)(v10, v8, v7, v15);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 1000);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    v20 = *(v0 + 912);

    (*(v19 + 8))(v18, v20);
    outlined destroy of DocumentInfo(v17, type metadata accessor for SelectedContent);
    v60 = (v0 + 632);
LABEL_42:

    v172 = *(v0 + 1000);
    v173 = *(v0 + 992);
    v174 = *(v0 + 976);
    v175 = *(v0 + 968);
    v176 = *(v0 + 952);
    v177 = *(v0 + 944);
    v178 = *(v0 + 936);
    v179 = *(v0 + 928);
    v180 = *(v0 + 904);
    v181 = *(v0 + 896);
    v189 = *(v0 + 872);
    v192 = *(v0 + 848);
    v195 = *(v0 + 840);
    v197 = *(v0 + 832);
    v200 = *(v0 + 808);
    v202 = *(v0 + 800);
    v207 = *(v0 + 784);
    v212 = *(v0 + 776);
    v217 = *(v0 + 768);
    v223 = *(v0 + 744);
    v226 = *(v0 + 736);

    v96 = *(v0 + 8);
    goto LABEL_43;
  }

  v60 = (v0 + 640);

  *(v0 + 640) = v3;
  v22 = v3;
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 1072);
    v24 = *(v0 + 1064);
    v25 = *(v0 + 712);
    v26 = *(v0 + 680);

    v27 = *(v0 + 528);
    *(v0 + 472) = *(v0 + 512);
    *(v0 + 488) = v27;
    *(v0 + 504) = *(v0 + 544);
    specialized GenerateController.handleModelOrchestratorError(error:partnerName:)(v0 + 472, v24, v23, v26);
    v28 = *(v0 + 1072);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined destroy of ModelOrchestrator.Error(v0 + 472);

    goto LABEL_42;
  }

  v60 = (v0 + 648);
  v29 = *(v0 + 904);
  v30 = *(v0 + 880);

  *(v0 + 648) = v3;
  v31 = v3;
  if (!swift_dynamicCast())
  {
    object = (v0 + 656);

    *(v0 + 656) = v3;
    v62 = v3;
    v63 = type metadata accessor for CustomErrorWithLocalizedDescription();
    if (!swift_dynamicCast())
    {
      v97 = *(v0 + 1088);

      v98 = v3;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v227[0] = v103;
        *v101 = 136315650;
        *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
        *(v101 + 12) = 2080;
        *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
        *(v101 + 22) = 2112;
        v104 = v3;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 24) = v105;
        *v102 = v105;
        _os_log_impl(&dword_24FD67000, v99, v100, "%s.%s [error = %@]", v101, 0x20u);
        outlined destroy of OnScreenContent.Document?(v102, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x253057F40](v102, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v103, -1, -1);
        MEMORY[0x253057F40](v101, -1, -1);
      }

      v106 = *(v0 + 1104);
      v107 = *(v0 + 1072);
      v108 = *(v0 + 1064);
      SELFUtils.recordRequestFailed(code:domain:)(100, 1);
      type metadata accessor for DialogEngineClient();
      swift_initStaticObject();
      LOBYTE(v227[0]) = 5;
      v109 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      v110.value._countAndFlagsBits = v108;
      v110.value._object = v107;
      DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, v110, v109);

      *(v0 + 672) = v3;
      v111 = v3;
      if (swift_dynamicCast())
      {
        v112 = *(v0 + 600);
        v113 = *(v0 + 608);
        v114 = *(v0 + 616);
        if (v114 == 3)
        {
          outlined consume of GenerateTextFromMediaController.Error(v112, v113, 3u);

          LOBYTE(v227[0]) = 8;
          v115 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
          DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, 0, v115);
        }

        else
        {
          outlined consume of GenerateTextFromMediaController.Error(v112, v113, v114);
        }
      }

      v182 = *(v0 + 1000);
      v183 = _convertErrorToNSError(_:)();
      v184 = [v183 domain];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = _convertErrorToNSError(_:)();
      [v185 code];

      v186 = objc_allocWithZone(v63);
      CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
      swift_willThrow();

      outlined destroy of DocumentInfo(v182, type metadata accessor for SelectedContent);
      goto LABEL_16;
    }

    v64 = *(v0 + 1072);

    v60 = *(v0 + 664);
    if (one-time initialization token for genFromTextController != -1)
    {
LABEL_49:
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1080), static Logger.genFromTextController);
    v65 = v60;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 1000);
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v227[0] = v71;
      *v70 = 136315650;
      v219 = v69;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
      *(v70 + 12) = 2080;
      *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
      *(v70 + 22) = 2080;
      v72 = [v65 localizedDescription];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v227);

      *(v70 + 24) = v76;
      _os_log_impl(&dword_24FD67000, v66, v67, "%s.%s [CustomErrorWithLocalizedDescription = %s]", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v71, -1, -1);
      MEMORY[0x253057F40](v70, -1, -1);

      swift_willThrow();
      outlined destroy of DocumentInfo(v219, type metadata accessor for SelectedContent);
    }

    else
    {
LABEL_38:

      swift_willThrow();
      outlined destroy of DocumentInfo(v69, type metadata accessor for SelectedContent);
    }

    v21 = *object;
LABEL_15:

LABEL_16:
    v86 = *(v0 + 1000);
    v87 = *(v0 + 992);
    v88 = *(v0 + 976);
    v89 = *(v0 + 968);
    v90 = *(v0 + 952);
    v91 = *(v0 + 944);
    v92 = *(v0 + 936);
    v93 = *(v0 + 928);
    v94 = *(v0 + 904);
    v95 = *(v0 + 896);
    v187 = *(v0 + 872);
    v188 = *(v0 + 848);
    v190 = *(v0 + 840);
    v193 = *(v0 + 832);
    v196 = *(v0 + 808);
    v198 = *(v0 + 800);
    v201 = *(v0 + 784);
    v204 = *(v0 + 776);
    v209 = *(v0 + 768);
    v215 = *(v0 + 744);
    v221 = *(v0 + 736);

    v96 = *(v0 + 8);
LABEL_43:

    return v96();
  }

  v32 = *(v0 + 904);
  v33 = *(v0 + 896);
  v34 = *(v0 + 888);
  v35 = *(v0 + 880);
  v36 = *(v0 + 872);
  v37 = *(v0 + 864);
  v38 = *(v0 + 856);

  (*(v34 + 32))(v33, v32, v35);
  GenerativeError.type.getter();
  if ((*(v37 + 88))(v36, v38) != *MEMORY[0x277D0DB58])
  {
    v77 = *(v0 + 1072);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 896);
    v80 = *(v0 + 888);
    v203 = *(v0 + 880);
    v208 = *(v0 + 1000);
    v81 = *(v0 + 864);
    v214 = *(v0 + 856);
    v220 = *(v0 + 872);

    MEMORY[0x253056790](v82);
    type metadata accessor for DialogEngineClient();
    swift_initStaticObject();
    LOBYTE(v227[0]) = 16;
    v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v84.value._countAndFlagsBits = v78;
    v84.value._object = v77;
    DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, v84, v83);

    v85 = objc_allocWithZone(type metadata accessor for CustomErrorWithLocalizedDescription());
    CustomErrorWithLocalizedDescription.init(domain:code:errorDescription:)();
    swift_willThrow();
    (*(v80 + 8))(v79, v203);
    outlined destroy of DocumentInfo(v208, type metadata accessor for SelectedContent);
    (*(v81 + 8))(v220, v214);
    v21 = *(v0 + 648);
    goto LABEL_15;
  }

  v39 = *(v0 + 1088);
  v40 = *(v0 + 1072);
  v41 = *(v0 + 872);
  v42 = *(v0 + 864);
  v43 = *(v0 + 856);
  v44 = *(v0 + 848);
  v45 = *(v0 + 840);
  v46 = *(v0 + 824);
  v47 = *(v0 + 816);

  (*(v42 + 96))(v41, v43);
  (*(v46 + 32))(v44, v41, v47);
  v48 = *(v46 + 16);
  v48(v45, v44, v47);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 840);
  if (v51)
  {
    v213 = *(v0 + 832);
    v53 = *(v0 + 824);
    v54 = *(v0 + 816);
    v218 = v50;
    v55 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v227[0] = v224;
    *v55 = 136315650;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v227);
    *(v55 + 12) = 2080;
    *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x800000024FE1FDC0, v227);
    *(v55 + 22) = 2080;
    v48(v213, v52, v54);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    (*(v53 + 8))(v52, v54);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v227);

    *(v55 + 24) = v59;
    _os_log_impl(&dword_24FD67000, v49, v218, "%s.%s [Authentication Error = %s]", v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v224, -1, -1);
    MEMORY[0x253057F40](v55, -1, -1);
  }

  else
  {
    v116 = *(v0 + 824);
    v117 = *(v0 + 816);

    (*(v116 + 8))(v52, v117);
  }

  v118 = *(v0 + 808);
  v210 = v118;
  v119 = *(v0 + 800);
  v120 = *(v0 + 792);
  v121 = *(v0 + 728);
  v122 = *(v0 + 720);
  v123 = type metadata accessor for URL();
  (*(*(v123 - 8) + 56))(v118, 1, 1, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMd, &_ss23_ContiguousArrayStorageCy26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityOGMR);
  v124 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v222 = *(v121 + 72);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_24FE1A560;
  v199 = v124;
  v126 = (v125 + v124);
  *v126 = 0;
  v126[1] = 0xE000000000000000;
  v216 = v125 + v124;
  swift_storeEnumTagMultiPayload();
  v205 = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  v127 = MEMORY[0x277D0D628];
  *(v0 + 456) = v205;
  *(v0 + 464) = v127;
  __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v128 = (v119 + v120[14]);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v227[0]) = 49;
  v129 = MEMORY[0x277D84F90];
  v130 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v131 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v227, 0, v130);
  object = v131._object;

  *v128 = v131;
  *v119 = 0;
  *(v119 + 8) = 0xE000000000000000;
  v225 = v125;
  *(v119 + 16) = v125;
  *(v119 + 24) = v129;
  *(v119 + 32) = 64;
  *(v119 + 40) = v129;
  *(v119 + 48) = v129;
  *(v119 + v120[15]) = v129;
  *(v119 + v120[12]) = 3;
  v132 = (v119 + v120[13]);
  *v132 = 0;
  v132[1] = 0xE000000000000000;
  outlined init with copy of Date?(v210, v119 + v120[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v133 = (v119 + v120[11]);
  *v133 = 0;
  v133[1] = 0xE000000000000000;
  *(v119 + v120[16]) = 0;
  *(v119 + v120[17]) = 0;
  v134 = (v119 + v120[18]);
  *v134 = 0;
  v134[1] = 0xE000000000000000;
  v135 = (v119 + v120[19]);
  *v135 = 0;
  v135[1] = 0xE000000000000000;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 432, v119 + v120[21]);
  *(v119 + v120[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
    v157 = *(v0 + 896);
    v158 = *(v0 + 888);
    v159 = *(v0 + 880);
    v160 = *(v0 + 848);
    v161 = *(v0 + 824);
    v162 = *(v0 + 816);
    outlined destroy of OnScreenContent.Document?(*(v0 + 808), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v161 + 8))(v160, v162);
    (*(v158 + 8))(v157, v159);
LABEL_41:
    v170 = *(v0 + 800);
    v171 = *(v0 + 680);
    outlined destroy of DocumentInfo(*(v0 + 1000), type metadata accessor for SelectedContent);
    outlined init with copy of ScreenContent(v170, v171, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    outlined destroy of DocumentInfo(v170, type metadata accessor for GeneratedResponse);
    goto LABEL_42;
  }

  v136 = *(v0 + 800);
  v137 = *(v0 + 760);
  v138 = *(v0 + 752);
  v206 = *(v0 + 736);
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v140 = GeneratedResponse.updateText(_:)(v139);
  *v136 = v140._countAndFlagsBits;
  v194 = v119;
  *(v119 + 8) = v140._object;
  v141 = *(v225 + 16);
  v142 = (v137 + 56);
  v143 = (v137 + 48);
  v66 = 0;

  while (1)
  {
    while (1)
    {
      if (v66 == v141)
      {
        v144 = 1;
        v66 = v141;
      }

      else
      {
        if (v66 >= *(v225 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v145 = *(v0 + 776);
        v146 = *(v0 + 768);
        v147 = *(v138 + 48);
        *v146 = v66;
        outlined init with copy of ScreenContent(v216 + v66 * v222, v146 + v147, type metadata accessor for GeneratedResponse.RichContentEntity);
        outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v146, v145, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
        v144 = 0;
        ++v66;
      }

      v148 = *(v0 + 784);
      v149 = *(v0 + 776);
      v150 = *(v0 + 752);
      (*v142)(v149, v144, 1, v150);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v149, v148, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
      if ((*v143)(v148, 1, v150) == 1)
      {
        v163 = *(v0 + 896);
        v164 = *(v0 + 888);
        v165 = *(v0 + 880);
        v166 = *(v0 + 848);
        v167 = *(v0 + 824);
        v168 = *(v0 + 816);
        v169 = *(v0 + 808);

        outlined destroy of OnScreenContent.Document?(v169, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v167 + 8))(v166, v168);
        (*(v164 + 8))(v163, v165);
        goto LABEL_41;
      }

      v151 = *(v0 + 784);
      object = *(v0 + 720);
      v152 = *v151;
      outlined init with take of SelectedContent(v151 + *(v138 + 48), *(v0 + 744), type metadata accessor for GeneratedResponse.RichContentEntity);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v154 = *(v0 + 744);
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      outlined destroy of DocumentInfo(v154, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    v155 = *(v0 + 736);
    v191 = *(v0 + 720);
    outlined destroy of DocumentInfo(v154, type metadata accessor for GeneratedResponse.RichContentEntity);
    *v155 = v140._countAndFlagsBits;
    object = v140._object;
    *(v206 + 8) = v140._object;
    swift_storeEnumTagMultiPayload();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v69 = v211;
      if ((v152 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v211);
      v211 = result;
      v69 = result;
      if ((v152 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v152 >= *(v69 + 16))
    {
      break;
    }

    outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 736), v69 + v199 + v152 * v222);
    *(v194 + 16) = v69;
  }

  __break(1u);
  return result;
}

uint64_t GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1312) = v7;
  *(v8 + 1304) = a5;
  *(v8 + 1296) = a4;
  *(v8 + 1288) = a3;
  *(v8 + 1280) = a2;
  *(v8 + 1272) = a1;
  v10 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v8 + 1320) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1328) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1336) = swift_task_alloc();
  *(v8 + 1344) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v8 + 1352) = v13;
  v14 = *(v13 - 8);
  *(v8 + 1360) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 1368) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  v17 = type metadata accessor for GeneratedResponse(0);
  *(v8 + 1392) = v17;
  v18 = *(v17 - 8);
  *(v8 + 1400) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 1408) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  *(v8 + 1416) = swift_task_alloc();
  v21 = type metadata accessor for UploadableMedia.Source(0);
  *(v8 + 1424) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v8 + 1432) = swift_task_alloc();
  v23 = type metadata accessor for UploadableImageData(0);
  *(v8 + 1440) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 1448) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  v26 = type metadata accessor for ModelResponse();
  *(v8 + 1472) = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  v28 = type metadata accessor for GATError();
  *(v8 + 1512) = v28;
  v29 = *(v28 - 8);
  *(v8 + 1520) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 1528) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  *(v8 + 1536) = swift_task_alloc();
  v32 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 1544) = v32;
  v33 = *(v32 - 8);
  *(v8 + 1552) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  *(v8 + 1576) = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR) - 8) + 64) + 15;
  *(v8 + 1584) = swift_task_alloc();
  v36 = type metadata accessor for ConfirmationActionName();
  *(v8 + 1592) = v36;
  v37 = *(v36 - 8);
  *(v8 + 1600) = v37;
  v38 = *(v37 + 64) + 15;
  *(v8 + 1608) = swift_task_alloc();
  *(v8 + 1616) = swift_task_alloc();
  v39 = type metadata accessor for SnippetPluginContainer();
  *(v8 + 1624) = v39;
  v40 = *(v39 - 8);
  *(v8 + 1632) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 1640) = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v8 + 1648) = swift_task_alloc();
  v43 = type metadata accessor for SupportedDocumentType();
  *(v8 + 1656) = v43;
  v44 = *(v43 - 8);
  *(v8 + 1664) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 1672) = swift_task_alloc();
  v46 = type metadata accessor for AttachmentConfirmationPayload();
  *(v8 + 1680) = v46;
  v47 = *(v46 - 8);
  *(v8 + 1688) = v47;
  v48 = *(v47 + 64) + 15;
  *(v8 + 1696) = swift_task_alloc();
  *(v8 + 1704) = swift_task_alloc();
  v49 = type metadata accessor for Attachment.LocalizedName();
  *(v8 + 1712) = v49;
  v50 = *(v49 - 8);
  *(v8 + 1720) = v50;
  v51 = *(v50 + 64) + 15;
  *(v8 + 1728) = swift_task_alloc();
  *(v8 + 1736) = swift_task_alloc();
  v52 = type metadata accessor for IntentDialog();
  *(v8 + 1744) = v52;
  v53 = *(v52 - 8);
  *(v8 + 1752) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 1760) = swift_task_alloc();
  *(v8 + 1768) = swift_task_alloc();
  v55 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v8 + 1776) = v55;
  v56 = *(v55 - 8);
  *(v8 + 1784) = v56;
  v57 = *(v56 + 64) + 15;
  *(v8 + 1792) = swift_task_alloc();
  v58 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v8 + 1800) = v58;
  v59 = *(v58 - 8);
  *(v8 + 1808) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  v61 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 1832) = v61;
  v62 = *(v61 - 8);
  *(v8 + 1840) = v62;
  v63 = *(v62 + 64) + 15;
  *(v8 + 1848) = swift_task_alloc();
  *(v8 + 1856) = swift_task_alloc();
  *(v8 + 1864) = swift_task_alloc();
  *(v8 + 1872) = swift_task_alloc();
  v64 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v8 + 1880) = swift_task_alloc();
  *(v8 + 1888) = swift_task_alloc();
  *(v8 + 1896) = swift_task_alloc();
  *(v8 + 1904) = swift_task_alloc();
  *(v8 + 1912) = swift_task_alloc();
  *(v8 + 1920) = swift_task_alloc();
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd, &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR) - 8) + 64) + 15;
  *(v8 + 1928) = swift_task_alloc();
  v66 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 1936) = v66;
  v67 = *(v66 - 8);
  *(v8 + 1944) = v67;
  v68 = *(v67 + 64) + 15;
  *(v8 + 1952) = swift_task_alloc();
  *(v8 + 1960) = swift_task_alloc();
  v69 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR) - 8) + 64) + 15;
  *(v8 + 1968) = swift_task_alloc();
  *(v8 + 1976) = swift_task_alloc();
  v70 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 1984) = v70;
  v71 = *(v70 - 8);
  *(v8 + 1992) = v71;
  v72 = *(v71 + 64) + 15;
  *(v8 + 2000) = swift_task_alloc();
  *(v8 + 2008) = swift_task_alloc();
  v73 = *(a7 + 112);
  *(v8 + 112) = *(a7 + 96);
  *(v8 + 128) = v73;
  *(v8 + 144) = *(a7 + 128);
  v74 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v74;
  v75 = *(a7 + 80);
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = v75;
  v76 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v76;
  *(v8 + 2016) = type metadata accessor for MainActor();
  *(v8 + 2024) = static MainActor.shared.getter();
  v78 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 2032) = v78;
  *(v8 + 2040) = v77;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v78, v77);
}

uint64_t GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:)()
{
  v363 = v0;
  v2 = *(v0 + 2008);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1984);
  v5 = *(v0 + 1304);
  *(v0 + 2048) = *v5;
  *(v0 + 2056) = v5[1];
  IntelligenceFile.attributes.getter();
  v6 = IntelligenceFile.Attributes.fileSize.getter();
  v8 = v7;
  v9 = *(v3 + 8);
  *(v0 + 2064) = v9;
  *(v0 + 2072) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  if (v8)
  {
    v10 = *(v0 + 2024);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    SELFUtils.recordRequestFailed(code:domain:)(0, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v11 = 0xD000000000000037;
    *(v11 + 8) = 0x800000024FE1FE90;
    *(v11 + 16) = 0;
    goto LABEL_12;
  }

  v12 = *(v0 + 1976);
  v13 = *(v0 + 1304);
  v350 = v6;
  *(v0 + 2080) = v6;
  v14 = *(type metadata accessor for ImageInfo(0) + 32);
  outlined init with copy of Date?(v13 + v14, v12, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v15 = type metadata accessor for OnScreenContent.UIMetadata();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v15) == 1)
  {
    v18 = *(v0 + 2024);
    v19 = *(v0 + 1976);

    outlined destroy of OnScreenContent.Document?(v19, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
LABEL_9:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    SELFUtils.recordRequestFailed(code:domain:)(1, 1);
    lazy protocol witness table accessor for type GenerateTextFromMediaController.Error and conformance GenerateTextFromMediaController.Error();
    swift_allocError();
    *v26 = 0xD000000000000041;
    *(v26 + 8) = 0x800000024FE1FED0;
    *(v26 + 16) = 1;
LABEL_12:
    swift_willThrow();
LABEL_13:
    v27 = *(v0 + 2008);
    v28 = *(v0 + 2000);
    v29 = *(v0 + 1976);
    v30 = *(v0 + 1968);
    v31 = *(v0 + 1960);
    v32 = *(v0 + 1952);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = *(v0 + 1912);
    v36 = *(v0 + 1904);
    v261 = *(v0 + 1896);
    v262 = *(v0 + 1888);
    v264 = *(v0 + 1880);
    v266 = *(v0 + 1872);
    v268 = *(v0 + 1864);
    v270 = *(v0 + 1856);
    v272 = *(v0 + 1848);
    v274 = *(v0 + 1824);
    v276 = *(v0 + 1816);
    v278 = *(v0 + 1792);
    v280 = *(v0 + 1768);
    v282 = *(v0 + 1760);
    v284 = *(v0 + 1736);
    v286 = *(v0 + 1728);
    v288 = *(v0 + 1704);
    v290 = *(v0 + 1696);
    v292 = *(v0 + 1672);
    v294 = *(v0 + 1648);
    v296 = *(v0 + 1640);
    v298 = *(v0 + 1616);
    v300 = *(v0 + 1608);
    v302 = *(v0 + 1584);
    v304 = *(v0 + 1576);
    v306 = *(v0 + 1568);
    v308 = *(v0 + 1560);
    v310 = *(v0 + 1536);
    v312 = *(v0 + 1528);
    v314 = *(v0 + 1504);
    v316 = *(v0 + 1496);
    v318 = *(v0 + 1488);
    v320 = *(v0 + 1480);
    v322 = *(v0 + 1464);
    v324 = *(v0 + 1456);
    v326 = *(v0 + 1448);
    v328 = *(v0 + 1432);
    v330 = *(v0 + 1416);
    v332 = *(v0 + 1408);
    v335 = *(v0 + 1384);
    v338 = *(v0 + 1376);
    v341 = *(v0 + 1368);
    v344 = *(v0 + 1344);
    v347 = *(v0 + 1336);

    v37 = *(v0 + 8);
    goto LABEL_14;
  }

  v346 = v13;
  v20 = *(v0 + 1976);
  v21 = *(v0 + 1960);
  v22 = *(v0 + 1944);
  v23 = *(v0 + 1936);
  OnScreenContent.UIMetadata.window.getter();
  v340 = *(v16 + 8);
  v340(v20, v15);
  OnScreenContent.UIMetadata.Window.boundingBox.getter();
  v24 = *(v22 + 8);
  v24(v21, v23);
  *(v0 + 2088) = *(v0 + 1080);
  *(v0 + 2096) = *(v0 + 1088);
  if (*(v0 + 1096))
  {
    v25 = *(v0 + 2024);

    goto LABEL_9;
  }

  v39 = v24;
  v40 = *(v0 + 1968);
  outlined init with copy of Date?(v346 + v14, v40, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR);
  v41 = v17(v40, 1, v15);
  v42 = *(v0 + 1968);
  if (v41 == 1)
  {
    v43 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd;
    v44 = &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR;
LABEL_21:
    outlined destroy of OnScreenContent.Document?(v42, v43, v44);
    v51 = 0;
    goto LABEL_23;
  }

  v45 = *(v0 + 1952);
  v46 = *(v0 + 1936);
  v47 = *(v0 + 1928);
  OnScreenContent.UIMetadata.window.getter();
  v340(v42, v15);
  OnScreenContent.UIMetadata.Window.intelligenceUserActivity.getter();
  v39(v45, v46);
  v48 = type metadata accessor for IntelligenceUserActivity();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v47, 1, v48);
  v42 = *(v0 + 1928);
  if (v50 == 1)
  {
    v43 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd;
    v44 = &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR;
    goto LABEL_21;
  }

  v51 = IntelligenceUserActivity.userActivity.getter();
  (*(v49 + 8))(v42, v48);
LABEL_23:
  *(v0 + 2104) = v51;
  if (one-time initialization token for genFromMediaController != -1)
  {
    swift_once();
  }

  v52 = (v0 + 1097);
  v336 = type metadata accessor for Logger();
  *(v0 + 2112) = __swift_project_value_buffer(v336, static Logger.genFromMediaController);
  v53 = v51;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  v348 = v53;
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v342 = swift_slowAlloc();
    *&v353[0] = v342;
    *v56 = 136315650;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
    *(v56 + 12) = 2080;
    *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
    *(v56 + 22) = 2080;
    if (v51)
    {
      v57 = [v53 webpageURL];
      if (v57)
      {
        v58 = *(v0 + 1912);
        v59 = v57;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v63 = *(v0 + 1920);
      v64 = *(v0 + 1912);
      v65 = type metadata accessor for URL();
      v66 = *(v65 - 8);
      (*(v66 + 56))(v64, v60, 1, v65);
      outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v64, v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v67 = (*(v66 + 48))(v63, 1, v65);
      v52 = (v0 + 1097);
      v53 = v348;
      if (v67 != 1)
      {
        v68 = 0xE400000000000000;
        v69 = 1702195828;
        goto LABEL_34;
      }
    }

    else
    {
      v61 = *(v0 + 1920);
      v62 = type metadata accessor for URL();
      (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    }

    v68 = 0xE500000000000000;
    v69 = 0x65736C6166;
LABEL_34:
    outlined destroy of OnScreenContent.Document?(*(v0 + 1920), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, v353);

    *(v56 + 24) = v70;
    _os_log_impl(&dword_24FD67000, v54, v55, "%s.%s [NSUserActivity webpageURL provided = %s]", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v342, -1, -1);
    MEMORY[0x253057F40](v56, -1, -1);
  }

  if (v51)
  {
    v71 = [v53 activityType];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  v75 = *(v0 + 1312);
  LOBYTE(v75) = GenerateTextFromMediaController.isFromWebsite(activityType:)(v72, v74);
  *v52 = v75 & 1;

  if ((v75 & 1) != 0 && v51)
  {
    v76 = [v53 webpageURL];
    if (v76)
    {
      v77 = *(v0 + 1896);
      v78 = v76;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v82 = *(v0 + 1904);
    v83 = *(v0 + 1896);
    v84 = type metadata accessor for URL();
    (*(*(v84 - 8) + 56))(v83, v79, 1, v84);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v83, v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v80 = *(v0 + 1904);
    v81 = type metadata accessor for URL();
    (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
  }

  if (one-time initialization token for partnerName != -1)
  {
    swift_once();
  }

  v85 = *(v0 + 1304);
  v86 = static Disclaimer.partnerName;
  *(v0 + 2120) = static Disclaimer.partnerName;
  LODWORD(v85) = *(v85 + 16);
  v52[1] = v85;
  v87 = MEMORY[0x277D0D648];
  if (v85 != 1)
  {

    v96 = *v87;
    goto LABEL_52;
  }

  v88 = *(v0 + 1872);
  v89 = *(v0 + 1840);
  v90 = *(v0 + 1832);
  v91 = *(v0 + 1296);
  v92 = *(type metadata accessor for GenerativeRequestMetadata() + 32);
  LODWORD(v333) = *v87;
  (*(v89 + 104))(v88);
  lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660]);

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v93 = *(v0 + 1872);
  v94 = *(v0 + 1840);
  v95 = *(v0 + 1832);
  if (*(v0 + 1240) == *(v0 + 1256) && *(v0 + 1248) == *(v0 + 1264))
  {
    (*(v94 + 8))(*(v0 + 1872), *(v0 + 1832));

LABEL_71:
    v145 = MobileGestalt_get_current_device();
    if (v145)
    {
      v150 = v145;
      v151 = *(v0 + 2024);

      internalBuild = MobileGestalt_get_internalBuild();

      v153 = *(v0 + 1904);
      v154 = *(v0 + 1272);
      if (internalBuild)
      {
        v155 = 6;
      }

      else
      {
        v155 = 17;
      }

      LOBYTE(v353[0]) = v155;
      static GeneratedResponse.failureResponse(_:partnerName:)(v353, v86, *(&v86 + 1), v154);

      outlined destroy of OnScreenContent.Document?(v153, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v156 = *(v0 + 2008);
      v157 = *(v0 + 2000);
      v158 = *(v0 + 1976);
      v159 = *(v0 + 1968);
      v160 = *(v0 + 1960);
      v161 = *(v0 + 1952);
      v162 = *(v0 + 1928);
      v163 = *(v0 + 1920);
      v164 = *(v0 + 1912);
      v165 = *(v0 + 1904);
      v263 = *(v0 + 1896);
      v265 = *(v0 + 1888);
      v267 = *(v0 + 1880);
      v269 = *(v0 + 1872);
      v271 = *(v0 + 1864);
      v273 = *(v0 + 1856);
      v275 = *(v0 + 1848);
      v277 = *(v0 + 1824);
      v279 = *(v0 + 1816);
      v281 = *(v0 + 1792);
      v283 = *(v0 + 1768);
      v285 = *(v0 + 1760);
      v287 = *(v0 + 1736);
      v289 = *(v0 + 1728);
      v291 = *(v0 + 1704);
      v293 = *(v0 + 1696);
      v295 = *(v0 + 1672);
      v297 = *(v0 + 1648);
      v299 = *(v0 + 1640);
      v301 = *(v0 + 1616);
      v303 = *(v0 + 1608);
      v305 = *(v0 + 1584);
      v307 = *(v0 + 1576);
      v309 = *(v0 + 1568);
      v311 = *(v0 + 1560);
      v313 = *(v0 + 1536);
      v315 = *(v0 + 1528);
      v317 = *(v0 + 1504);
      v319 = *(v0 + 1496);
      v321 = *(v0 + 1488);
      v323 = *(v0 + 1480);
      v325 = *(v0 + 1464);
      v327 = *(v0 + 1456);
      v329 = *(v0 + 1448);
      v331 = *(v0 + 1432);
      v334 = *(v0 + 1416);
      v337 = *(v0 + 1408);
      v339 = *(v0 + 1384);
      v343 = *(v0 + 1376);
      v345 = *(v0 + 1368);
      v349 = *(v0 + 1344);
      v352 = *(v0 + 1336);

      v37 = *(v0 + 8);
LABEL_14:

      return v37();
    }

    __break(1u);
    return MEMORY[0x2822009F8](v145, v146, v144);
  }

  v147 = *(v0 + 1248);
  v148 = *(v0 + 1264);
  v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v94 + 8))(v93, v95);

  if (v149)
  {
    goto LABEL_71;
  }

  v1 = vcvts_n_f32_s64(v350, 0x14uLL) * 1024.0;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    v174 = static SELFUtils.shared;
    v359 = 0;
    v360 = 0;
    v361 = 0;
    v362 = 0;
    LOBYTE(v355) = 0;
    LOBYTE(v353[0]) = 0;
    swift_beginAccess();
    v174[4] = 2;
    *(v174 + 20) = 0;
    *(v174 + 3) = v1;
    *(v174 + 32) = 0;
    v174[9] = 3;
    *(v174 + 40) = 0;
    v174[11] = 1;
    *(v174 + 48) = 0;
    v174[13] = 2;
    *(v174 + 56) = 0;
    *(v174 + 8) = v1;
    *(v174 + 72) = 0;
    *(v174 + 73) = v359;
    v96 = v333;
    if (one-time initialization token for selfSchemaLogger != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v336, static Logger.selfSchemaLogger);
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&dword_24FD67000, v175, v176, "Successfully updated GAT MediaQA usecase: GATMEDIAQNAUSECASE_SCREENSHOT", v177, 2u);
      MEMORY[0x253057F40](v177, -1, -1);
    }

LABEL_52:
    *(v0 + 1100) = v96;
    v97 = *(v0 + 1864);
    v98 = *(v0 + 1840);
    v99 = *(v0 + 1832);
    v100 = *(v0 + 1296);
    v101 = type metadata accessor for GenerativeRequestMetadata();
    *(v0 + 2136) = v101;
    v351 = v101;
    *(v0 + 2384) = *(v101 + 32);
    v102 = *(v98 + 104);
    *(v0 + 2144) = v102;
    *(v0 + 2152) = (v98 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v102(v97, v96, v99);
    *(v0 + 2160) = lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GenerativeAssistantUseCase and conformance GenerativeAssistantUseCase, MEMORY[0x277D0D660]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v103 = MEMORY[0x277D0D770];
    if (*(v0 + 1176) != *(v0 + 1192) || *(v0 + 1184) != *(v0 + 1200))
    {
      v104 = *(v0 + 1184);
      v105 = *(v0 + 1200);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v103 = MEMORY[0x277D0D778];
      }
    }

    v106 = *(v0 + 1864);
    v107 = *(v0 + 1840);
    v108 = *(v0 + 1832);
    v109 = *(v0 + 1824);
    v110 = *(v0 + 1808);
    v333 = *(v0 + 1800);
    v336 = *(v0 + 1816);
    v111 = *(v0 + 1792);
    v112 = *(v0 + 1784);
    v113 = *(v0 + 1776);
    v114 = *(v0 + 1296);
    v115 = *(v107 + 8);
    *(v0 + 2168) = v115;
    *(v0 + 2176) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v115(v106, v108);

    (*(v112 + 104))(v111, *v103, v113);
    *(v0 + 1099) = *(v114 + 40);
    v116 = (v114 + *(v351 + 52));
    *(v0 + 2184) = *v116;
    *(v0 + 2192) = v116[1];
    static GenerativeAssistantSettingsIntentHelper.responseType(for:isExplicitRequest:sessionId:)();
    (*(v112 + 8))(v111, v113);
    (*(v110 + 16))(v336, v109, v333);
    v117 = (*(v110 + 88))(v336, v333);
    if (v117 != *MEMORY[0x277D0D788])
    {
      break;
    }

    v118 = *(v0 + 2024);

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v353[0] = v122;
      *v121 = 136315394;
      *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
      *(v121 + 12) = 2080;
      *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
      _os_log_impl(&dword_24FD67000, v119, v120, "%s.%s Fallback to SiriX.", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v122, -1, -1);
      MEMORY[0x253057F40](v121, -1, -1);
    }

    v123 = *(v0 + 1528);
    v124 = *(v0 + 1520);
    v125 = *(v0 + 1512);
    *v123 = 0xD000000000000043;
    v123[1] = 0x800000024FE1FF90;
    v126 = *MEMORY[0x277D0D710];
    (*(v124 + 104))();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v127 = *(v0 + 1528);
    v128 = GATError.errorCode.getter();
    if (v128 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v128 <= 0x7FFFFFFF)
    {
      v129 = *(v0 + 1904);
      v130 = *(v0 + 1824);
      v131 = *(v0 + 1808);
      v132 = *(v0 + 1800);
      v133 = *(v0 + 1528);
      v134 = *(v0 + 1520);
      v135 = *(v0 + 1512);
      SELFUtils.recordRequestFailed(code:domain:)(v128, 4);
      lazy protocol witness table accessor for type GATError and conformance GATError(&lazy protocol witness table cache variable for type GATError and conformance GATError, MEMORY[0x277D0D728]);
      swift_allocError();
      (*(v134 + 32))(v136, v133, v135);
      swift_willThrow();

      (*(v131 + 8))(v130, v132);
      outlined destroy of OnScreenContent.Document?(v129, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_13;
    }

    __break(1u);
LABEL_119:
    swift_once();
  }

  if (v117 == *MEMORY[0x277D0D798])
  {
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&v353[0] = v140;
      *v139 = 136315394;
      *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
      *(v139 + 12) = 2080;
      *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
      _os_log_impl(&dword_24FD67000, v137, v138, "%s.%s Request confirmation", v139, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v140, -1, -1);
      MEMORY[0x253057F40](v139, -1, -1);
    }

    v141 = *(v0 + 2016);
    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager(v0 + 16, v0 + 696);
    *(v0 + 2200) = static MainActor.shared.getter();
    v142 = dispatch thunk of Actor.unownedExecutor.getter();
    v144 = v143;
    *(v0 + 2208) = v142;
    *(v0 + 2216) = v143;
    v145 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v146 = v142;

    return MEMORY[0x2822009F8](v145, v146, v144);
  }

  if (v117 == *MEMORY[0x277D0D790])
  {
    v166 = *(v0 + 2016);
    *(v0 + 2256) = static MainActor.shared.getter();
    v167 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v167;
    *(v0 + 552) = *(v0 + 144);
    v168 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v168;
    v169 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v169;
    v170 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v170;
    v171 = swift_task_alloc();
    *(v0 + 2264) = v171;
    *v171 = v0;
    v171[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v172 = *(v0 + 1312);
    v173 = *(v0 + 1296);

    return GenerateTextFromMediaController.surfaceJITEnablementSheet(intentCallbackManager:category:requestMetadata:)(v0 + 424, 1, v173);
  }

  else
  {
    v178 = *MEMORY[0x277D0D780];
    v179 = v117;
    v180 = Logger.logObject.getter();
    if (v179 == v178)
    {
      v181 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *&v353[0] = v183;
        *v182 = 136315394;
        *(v182 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
        *(v182 + 12) = 2080;
        *(v182 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
        _os_log_impl(&dword_24FD67000, v180, v181, "%s.%s Skipping confirmation: user previously confirmed media upload or denied screenshot upload in this session", v182, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v183, -1, -1);
        MEMORY[0x253057F40](v182, -1, -1);
      }
    }

    else
    {
      v184 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v180, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v353[0] = v186;
        *v185 = 136315394;
        *(v185 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
        *(v185 + 12) = 2080;
        *(v185 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
        _os_log_impl(&dword_24FD67000, v180, v184, "%s.%s Unkown Default when checking for confirmation vs enablement vs SiriX", v185, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253057F40](v186, -1, -1);
        MEMORY[0x253057F40](v185, -1, -1);
      }

      (*(*(v0 + 1808) + 8))(*(v0 + 1816), *(v0 + 1800));
    }

    v187 = *(v0 + 2112);
    v188 = *(v0 + 1288);
    v190 = *(v0 + 120);
    v189 = *(v0 + 128);
    *(v0 + 2336) = v190;
    *(v0 + 2344) = v189;
    v191 = *(v0 + 128);
    v353[6] = *(v0 + 112);
    v353[7] = v191;
    v354 = *(v0 + 144);
    v192 = *(v0 + 64);
    v353[2] = *(v0 + 48);
    v353[3] = v192;
    v193 = *(v0 + 96);
    v353[4] = *(v0 + 80);
    v353[5] = v193;
    v194 = *(v0 + 32);
    v353[0] = *(v0 + 16);
    v353[1] = v194;
    v355 = v190;
    v356 = v189;
    v357 = 0;
    v358 = 1;
    swift_bridgeObjectRetain_n();
    IntentCallbackManager.updateIntentProgress(to:)(&v355);
    outlined consume of GenerativeAssistantProgressLevel(v355, v356, v357, v358);

    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v195, v196))
    {
      v197 = *(v0 + 1288);
      v198 = *(v0 + 1280);
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v353[0] = v200;
      *v199 = 136315650;
      *(v199 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v353);
      *(v199 + 12) = 2080;
      *(v199 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v353);
      *(v199 + 22) = 2080;
      *(v199 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v197, v353);
      _os_log_impl(&dword_24FD67000, v195, v196, "%s.%s [userQuery = %s]", v199, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v200, -1, -1);
      MEMORY[0x253057F40](v199, -1, -1);
    }

    v201 = *(v0 + 2192);
    v202 = *(v0 + 2184);
    v203 = *(v0 + 1560);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    static SessionPersistenceUtils.clearStoredValuesForSession()();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v204 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
      swift_beginAccess();
      v205 = *v204;
      v206 = v204[4];
      *v204 = 4;
      v204[4] = 0;
      if ((v206 & 1) == 0 && v205 == 6)
      {
        *v204 = 6;
      }

      v207 = *(v0 + 1464);
      v208 = *(v0 + 1312);
      v209 = type metadata accessor for UploadableMedia(0);
      (*(*(v209 - 8) + 56))(v207, 1, 1, v209);
      v210 = *(v0 + 128);
      *(v0 + 384) = *(v0 + 112);
      *(v0 + 400) = v210;
      *(v0 + 416) = *(v0 + 144);
      v211 = *(v0 + 64);
      *(v0 + 320) = *(v0 + 48);
      *(v0 + 336) = v211;
      v212 = *(v0 + 96);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 368) = v212;
      v213 = *(v0 + 32);
      *(v0 + 288) = *(v0 + 16);
      *(v0 + 304) = v213;
      v214 = swift_task_alloc();
      *(v0 + 2352) = v214;
      *v214 = v0;
      v214[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
      v215 = *(v0 + 1496);
      v216 = *(v0 + 1464);
      v217 = *(v0 + 1296);
      v218 = *(v0 + 1288);
      v219 = *(v0 + 1280);
      v365 = 0;
      v220 = v0 + 288;
      v221 = 0;
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v222 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
      swift_beginAccess();
      v223 = *v222;
      v224 = v222[4];
      *v222 = 1;
      v222[4] = 0;
      if ((v224 & 1) == 0 && v223 == 6)
      {
        *v222 = 6;
      }

      if (*(v0 + 1097) == 1)
      {
        v225 = *(v0 + 2048);
        v226 = *(v0 + 1424);
        outlined init with copy of Date?(*(v0 + 1904), *(v0 + 1432), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v227 = *(v0 + 2072);
        v228 = *(v0 + 2064);
        v229 = *(v0 + 2048);
        v230 = *(v0 + 2000);
        v231 = *(v0 + 1984);
        v232 = *(v0 + 1416);

        v233 = IntelligenceFile.name.getter();
        v235 = v234;
        IntelligenceFile.attributes.getter();
        IntelligenceFile.Attributes.contentType.getter();
        v228(v230, v231);
        v236 = type metadata accessor for UTType();
        v237 = *(v236 - 8);
        v238 = (*(v237 + 48))(v232, 1, v236);
        v239 = *(v0 + 1416);
        if (v238 == 1)
        {
          outlined destroy of OnScreenContent.Document?(*(v0 + 1416), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v240 = 0;
          v241 = 0;
        }

        else
        {
          v240 = UTType.preferredMIMEType.getter();
          v241 = v242;
          (*(v237 + 8))(v239, v236);
        }

        v243 = *(v0 + 1432);
        v244 = *(v0 + 1424);
        *v243 = v233;
        v243[1] = v235;
        v243[2] = v240;
        v243[3] = v241;
        swift_storeEnumTagMultiPayload();
      }

      v245 = *(v0 + 1456);
      v246 = *(v0 + 1448);
      v247 = *(v0 + 1440);
      v248 = *(v0 + 1432);
      v249 = *(v0 + 1312);
      v250 = *(v0 + 1304);
      v251 = vcvts_n_f32_s64(*(v0 + 2080), 0x14uLL);
      v252 = *(v0 + 2088);
      *v246 = *(v0 + 2048);
      *(v246 + 8) = v252;
      *(v246 + 24) = 0;
      *(v246 + 28) = v251;
      *(v246 + 32) = 0;
      outlined init with take of SelectedContent(v248, v246 + *(v247 + 28), type metadata accessor for UploadableMedia.Source);
      outlined init with copy of ScreenContent(v246, v245, type metadata accessor for UploadableImageData);
      v253 = type metadata accessor for UploadableMedia(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v253 - 8) + 56))(v245, 0, 1, v253);
      v254 = *(v0 + 96);
      *(v0 + 216) = *(v0 + 80);
      v255 = *(v0 + 48);
      *(v0 + 200) = *(v0 + 64);
      *(v0 + 184) = v255;
      v256 = *(v0 + 16);
      *(v0 + 168) = *(v0 + 32);
      v257 = *(v0 + 112);
      *(v0 + 264) = *(v0 + 128);
      *(v0 + 248) = v257;
      *(v0 + 232) = v254;
      *(v0 + 280) = *(v0 + 144);
      *(v0 + 152) = v256;
      v259 = *(v250 + 24);
      v258 = *(v250 + 32);
      v260 = swift_task_alloc();
      *(v0 + 2368) = v260;
      *v260 = v0;
      v260[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
      v215 = *(v0 + 1488);
      v216 = *(v0 + 1456);
      v217 = *(v0 + 1296);
      v218 = *(v0 + 1288);
      v219 = *(v0 + 1280);
      v365 = v258;
      v220 = v0 + 152;
      v221 = v259;
    }

    return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v215, v219, v218, v217, v216, v220, 0, v221);
  }
}

{
  v45 = v0;
  v1 = *(v0 + 1099);
  v2 = *(v0 + 1098);
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1768);
  v5 = *(v0 + 1312);
  v6 = static Disclaimer.partnerName;

  GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(v6, v1, v2);
  GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(v6._countAndFlagsBits, v6._object, v1, v2);
  *(v0 + 2224) = IntelligenceFile.snippetPreviewFile()();
  LODWORD(v4) = *(v0 + 1098);
  v7 = *(v0 + 2056);
  v8 = *(v0 + 1736);
  v9 = *(v0 + 1720);
  v10 = *(v0 + 1712);
  v11 = vcvts_n_f32_s64(*(v0 + 2080), 0x14uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
  v12 = *(type metadata accessor for Attachment() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  v15 = MEMORY[0x277D0D858];
  if (!v4)
  {
    v15 = MEMORY[0x277D0D860];
  }

  (*(v9 + 104))(v8, *v15, v10);
  UIImage.getPlatformData()();

  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 2184);
  v29 = *(v0 + 2192);
  v30 = *(v0 + 2048);
  v34 = *(v0 + 1904);
  v32 = *(v0 + 1888);
  v40 = *(v0 + 1768);
  v16 = *(v0 + 1672);
  v17 = *(v0 + 1664);
  v31 = *(v0 + 1656);
  v18 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1704);
  v38 = *(v0 + 1632);
  v39 = *(v0 + 1624);
  v41 = *(v0 + 1616);
  v19 = *(v0 + 1288);
  v33 = *(v0 + 1280);
  *(v0 + 2232) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v43 = 40;
  v20 = MEMORY[0x277D84F90];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v43, v6, v21);

  v44 = 39;
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v20);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v44, v6, v22);

  IntelligenceFile.name.getter();
  (*(v17 + 104))(v16, *MEMORY[0x277D0D6A0], v31);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  outlined init with copy of Date?(v34, v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v36);
  *(v0 + 1048) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 1056) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 1024));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v38 + 8))(v35, v39);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v24 = *(v0 + 64);
  v42 = (*(v0 + 56) + **(v0 + 56));
  v25 = *(*(v0 + 56) + 4);
  v26 = swift_task_alloc();
  *(v0 + 2240) = v26;
  *v26 = v0;
  v26[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  v27 = *(v0 + 1616);

  return v42(v0 + 1024, v27, 0);
}

{
  v2 = *(*v1 + 2240);
  v5 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v3 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v3 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[200] + 8))(v0[202], v0[199]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 128);
  v1 = v0[277];
  v2 = v0[276];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v45 = v0;
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2112);
  v4 = *(v0 + 1584);

  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2, v4);
  outlined destroy of OnScreenContent.Document?(v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v44);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v44);
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s User confirmed", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (*(v0 + 2192))
  {
    v10 = *(v0 + 2184);
    v11 = *(v0 + 1576);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      v12 = *(v0 + 2192);
      v13 = *(v0 + 2184);
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else if (*(v0 + 1098) != 1)
    {
      v27 = *(v0 + 2192);
      v28 = *(v0 + 2184);
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v29 = *(v0 + 2224);
    v30 = *(v0 + 1768);
    v31 = *(v0 + 1752);
    v32 = *(v0 + 1744);
    v33 = *(v0 + 1704);
    v34 = *(v0 + 1688);
    v35 = *(v0 + 1680);
    v36 = *(v0 + 1576);
    v37 = *(v0 + 1552);
    v38 = *(v0 + 1544);

    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v14 = *(v0 + 2112);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 2224);
    v19 = *(v0 + 1768);
    v20 = *(v0 + 1752);
    v21 = *(v0 + 1744);
    v22 = *(v0 + 1704);
    v23 = *(v0 + 1688);
    v24 = *(v0 + 1680);
    if (v17)
    {
      v43 = *(v0 + 1768);
      v25 = swift_slowAlloc();
      v42 = v21;
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v44);
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v44);
      _os_log_impl(&dword_24FD67000, v15, v16, "%s.%s Attempting to save the current sessionID but found nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v26, -1, -1);
      MEMORY[0x253057F40](v25, -1, -1);

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v43, v42);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v19, v21);
    }
  }

  outlined destroy of IntentCallbackManager(v0 + 16);
  v39 = *(v0 + 2040);
  v40 = *(v0 + 2032);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v40, v39);
}

{
  (*(v0[200] + 8))(v0[202], v0[199]);
  v1 = v0[277];
  v2 = v0[276];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[278];
  v2 = v0[275];
  v3 = v0[221];
  v4 = v0[219];
  v5 = v0[218];
  v6 = v0[213];
  v7 = v0[211];
  v8 = v0[210];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 128);
  v9 = v0[255];
  v10 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v10, v9);
}

{
  v73 = v0;
  v1 = v0[279];
  v2 = v0[253];

  outlined destroy of IntentCallbackManager((v0 + 2));
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v0[264];
  SELFUtils.recordRequestCanceled()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v72);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v72);
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s User cancelled", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v7, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v8 = v0[281];
  v9 = v0[266];
  v10 = v0[265];
  v11 = v0[263];
  v12 = v0[238];
  v13 = v0[228];
  v14 = v0[226];
  v15 = v0[225];
  v16 = v0[159];
  v71 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v71, v10, v9, v16);

  (*(v14 + 8))(v13, v15);
  outlined destroy of OnScreenContent.Document?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = v0[251];
  v18 = v0[250];
  v19 = v0[247];
  v20 = v0[246];
  v21 = v0[245];
  v22 = v0[244];
  v23 = v0[241];
  v24 = v0[240];
  v25 = v0[239];
  v26 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[235];
  v32 = v0[234];
  v33 = v0[233];
  v34 = v0[232];
  v35 = v0[231];
  v36 = v0[228];
  v37 = v0[227];
  v38 = v0[224];
  v39 = v0[221];
  v40 = v0[220];
  v41 = v0[217];
  v42 = v0[216];
  v43 = v0[213];
  v44 = v0[212];
  v45 = v0[209];
  v46 = v0[206];
  v47 = v0[205];
  v48 = v0[202];
  v49 = v0[201];
  v50 = v0[198];
  v51 = v0[197];
  v52 = v0[196];
  v53 = v0[195];
  v54 = v0[192];
  v55 = v0[191];
  v56 = v0[188];
  v57 = v0[187];
  v58 = v0[186];
  v59 = v0[185];
  v60 = v0[183];
  v61 = v0[182];
  v62 = v0[181];
  v63 = v0[179];
  v64 = v0[177];
  v65 = v0[176];
  v66 = v0[173];
  v67 = v0[172];
  v68 = v0[171];
  v69 = v0[168];
  v70 = v0[167];

  v27 = v0[1];

  return v27();
}

{
  v2 = *v1;
  v3 = *(*v1 + 2264);
  v15 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v4 = v2[282];
    v5 = v2[266];
    v6 = v2[252];

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v11 = v2[282];
    v12 = v2[252];
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v13;
    v10 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

{
  v1 = v0[282];
  v2 = v0[192];
  v3 = v0[175];
  v4 = v0[174];

  (*(v3 + 56))(v2, 1, 1, v4);
  v5 = v0[255];
  v6 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v6, v5);
}

{
  v73 = v0;
  v1 = v0[192];
  if ((*(v0[175] + 48))(v1, 1, v0[174]) == 1)
  {
    v2 = v0[264];
    outlined destroy of OnScreenContent.Document?(v1, &_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v72[0] = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v72);
      *(v5 + 12) = 2080;
      *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v72);
      _os_log_impl(&dword_24FD67000, v3, v4, "%s.%s Request confirmation", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v6, -1, -1);
      MEMORY[0x253057F40](v5, -1, -1);
    }

    v7 = v0[252];
    specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F600);
    outlined init with copy of IntentCallbackManager((v0 + 2), (v0 + 70));
    v0[285] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[286] = v9;
    v0[287] = v8;

    return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v9, v8);
  }

  else
  {
    v10 = v0[266];
    v11 = v0[263];
    v12 = v0[253];
    v13 = v0[238];
    v14 = v0[228];
    v15 = v0[226];
    v16 = v0[225];
    v17 = v0[159];

    (*(v15 + 8))(v14, v16);
    outlined destroy of OnScreenContent.Document?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with take of SelectedContent(v1, v17, type metadata accessor for GeneratedResponse);
    v18 = v0[251];
    v19 = v0[250];
    v20 = v0[247];
    v21 = v0[246];
    v22 = v0[245];
    v23 = v0[244];
    v24 = v0[241];
    v25 = v0[240];
    v26 = v0[239];
    v27 = v0[238];
    v30 = v0[237];
    v31 = v0[236];
    v32 = v0[235];
    v33 = v0[234];
    v34 = v0[233];
    v35 = v0[232];
    v36 = v0[231];
    v37 = v0[228];
    v38 = v0[227];
    v39 = v0[224];
    v40 = v0[221];
    v41 = v0[220];
    v42 = v0[217];
    v43 = v0[216];
    v44 = v0[213];
    v45 = v0[212];
    v46 = v0[209];
    v47 = v0[206];
    v48 = v0[205];
    v49 = v0[202];
    v50 = v0[201];
    v51 = v0[198];
    v52 = v0[197];
    v53 = v0[196];
    v54 = v0[195];
    v55 = v0[192];
    v56 = v0[191];
    v57 = v0[188];
    v58 = v0[187];
    v59 = v0[186];
    v60 = v0[185];
    v61 = v0[183];
    v62 = v0[182];
    v63 = v0[181];
    v64 = v0[179];
    v65 = v0[177];
    v66 = v0[176];
    v67 = v0[173];
    v68 = v0[172];
    v69 = v0[171];
    v70 = v0[168];
    v71 = v0[167];

    v28 = v0[1];

    return v28();
  }
}

{
  v1 = v0[282];

  v2 = v0[255];
  v3 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v3, v2);
}

{
  v1 = v0[263];
  v2 = v0[253];
  v3 = v0[238];
  v4 = v0[228];
  v5 = v0[226];
  v6 = v0[225];

  (*(v5 + 8))(v4, v6);
  outlined destroy of OnScreenContent.Document?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v61 = v0[284];
  v7 = v0[251];
  v8 = v0[250];
  v9 = v0[247];
  v10 = v0[246];
  v11 = v0[245];
  v12 = v0[244];
  v13 = v0[241];
  v14 = v0[240];
  v15 = v0[239];
  v16 = v0[238];
  v19 = v0[237];
  v20 = v0[236];
  v21 = v0[235];
  v22 = v0[234];
  v23 = v0[233];
  v24 = v0[232];
  v25 = v0[231];
  v26 = v0[228];
  v27 = v0[227];
  v28 = v0[224];
  v29 = v0[221];
  v30 = v0[220];
  v31 = v0[217];
  v32 = v0[216];
  v33 = v0[213];
  v34 = v0[212];
  v35 = v0[209];
  v36 = v0[206];
  v37 = v0[205];
  v38 = v0[202];
  v39 = v0[201];
  v40 = v0[198];
  v41 = v0[197];
  v42 = v0[196];
  v43 = v0[195];
  v44 = v0[192];
  v45 = v0[191];
  v46 = v0[188];
  v47 = v0[187];
  v48 = v0[186];
  v49 = v0[185];
  v50 = v0[183];
  v51 = v0[182];
  v52 = v0[181];
  v53 = v0[179];
  v54 = v0[177];
  v55 = v0[176];
  v56 = v0[173];
  v57 = v0[172];
  v58 = v0[171];
  v59 = v0[168];
  v60 = v0[167];

  v17 = v0[1];

  return v17();
}

{
  v49 = v0;
  v1 = *(v0 + 2272);
  v2 = *(v0 + 1099);
  v3 = *(v0 + 1098);
  v4 = *(v0 + 2048);
  v5 = *(v0 + 1760);
  v6 = *(v0 + 1312);
  v7 = static Disclaimer.partnerName;

  GenerateTextFromMediaController.getImageConfirmationText(partnerName:isExplicit:isScreenshot:)(v7, v2, v3);
  GenerateTextFromMediaController.getImageConfirmationSpokenDialog(partnerName:isExplicit:isScreenshot:)(v7._countAndFlagsBits, v7._object, v2, v3);
  v8 = IntelligenceFile.snippetPreviewFile()();
  if (v1)
  {

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  *(v0 + 2304) = v9;
  v10 = *(v0 + 1098);
  v11 = *(v0 + 2056);
  v12 = *(v0 + 1728);
  v13 = *(v0 + 1720);
  v14 = *(v0 + 1712);
  v15 = vcvts_n_f32_s64(*(v0 + 2080), 0x14uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy21GenerativeAssistantUI10AttachmentVGMR);
  v16 = *(type metadata accessor for Attachment() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_24FE1A560;
  v19 = MEMORY[0x277D0D858];
  if (!v10)
  {
    v19 = MEMORY[0x277D0D860];
  }

  (*(v13 + 104))(v12, *v19, v14);
  UIImage.getPlatformData()();

  Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 2184);
  v33 = *(v0 + 2192);
  v34 = *(v0 + 2048);
  v38 = *(v0 + 1904);
  v36 = *(v0 + 1888);
  v44 = *(v0 + 1760);
  v20 = *(v0 + 1672);
  v21 = *(v0 + 1664);
  v35 = *(v0 + 1656);
  v22 = *(v0 + 1648);
  v39 = *(v0 + 1640);
  v40 = *(v0 + 1696);
  v42 = *(v0 + 1632);
  v43 = *(v0 + 1624);
  v45 = *(v0 + 1608);
  v23 = *(v0 + 1288);
  v37 = *(v0 + 1280);
  *(v0 + 2312) = static MetricsUtils.shared;
  MetricsUtils.recordSignpostBegin(for:)("WaitUserConfirmToContinue.Time", 30, 2);
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  v47 = 40;
  v24 = MEMORY[0x277D84F90];
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v47, v7, v25);

  v48 = 39;
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(v24);
  DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(&v48, v7, v26);

  IntelligenceFile.name.getter();
  (*(v21 + 104))(v20, *MEMORY[0x277D0D6A0], v35);
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  outlined init with copy of Date?(v38, v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)();
  type metadata accessor for SnippetPluginUtils();
  static SnippetPluginUtils.createConfirmationContainer(payload:)(v40);
  *(v0 + 1008) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  *(v0 + 1016) = lazy protocol witness table accessor for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>(&lazy protocol witness table cache variable for type IntentResultContainer<Never, Never, _SnippetViewContainer, IntentDialog> and conformance IntentResultContainer<A, B, C, D>, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVys5NeverOAeA012_SnippetViewE0VAA0C6DialogVGMR);
  __swift_allocate_boxed_opaque_existential_1((v0 + 984));
  static IntentResult.result<>(pluginContainer:dialog:)();
  (*(v42 + 8))(v39, v43);
  static ConfirmationButtonActionUtils.getMediaConfirmationButtonActions()();
  v28 = *(v0 + 64);
  v46 = (*(v0 + 56) + **(v0 + 56));
  v29 = *(*(v0 + 56) + 4);
  v30 = swift_task_alloc();
  *(v0 + 2320) = v30;
  *v30 = v0;
  v30[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  v31 = *(v0 + 1608);

  return v46(v0 + 984, v31, 0);
}

{
  v2 = *(*v1 + 2320);
  v5 = *v1;
  *(*v1 + 2328) = v0;

  if (v0)
  {
    v3 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    v3 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[200] + 8))(v0[201], v0[199]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 123);
  v1 = v0[287];
  v2 = v0[286];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v45 = v0;
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2280);
  v3 = *(v0 + 2112);
  v4 = *(v0 + 1584);

  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  MetricsUtils.recordSignpostEnd(for:signPostID:)("WaitUserConfirmToContinue.Time", 30, 2, v4);
  outlined destroy of OnScreenContent.Document?(v4, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v44);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v44);
    _os_log_impl(&dword_24FD67000, v6, v7, "%s.%s User confirmed", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v9, -1, -1);
    MEMORY[0x253057F40](v8, -1, -1);
  }

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  if ((MEMORY[0x253056490]() & 1) == 0)
  {
    static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()();
  }

  if (*(v0 + 2192))
  {
    v10 = *(v0 + 2184);
    v11 = *(v0 + 1568);
    static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
    if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
    {
      v12 = *(v0 + 2192);
      v13 = *(v0 + 2184);
      static SessionPersistenceUtils.setConfirmation(forTextSession:)();
    }

    else if (*(v0 + 1098) != 1)
    {
      v27 = *(v0 + 2192);
      v28 = *(v0 + 2184);
      static SessionPersistenceUtils.setConfirmation(forMediaSession:)();
    }

    v29 = *(v0 + 2304);
    v30 = *(v0 + 1760);
    v31 = *(v0 + 1752);
    v32 = *(v0 + 1744);
    v33 = *(v0 + 1696);
    v34 = *(v0 + 1688);
    v35 = *(v0 + 1680);
    v36 = *(v0 + 1568);
    v37 = *(v0 + 1552);
    v38 = *(v0 + 1544);

    (*(v37 + 8))(v36, v38);
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v14 = *(v0 + 2112);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 2304);
    v19 = *(v0 + 1760);
    v20 = *(v0 + 1752);
    v21 = *(v0 + 1744);
    v22 = *(v0 + 1696);
    v23 = *(v0 + 1688);
    v24 = *(v0 + 1680);
    if (v17)
    {
      v43 = *(v0 + 1760);
      v25 = swift_slowAlloc();
      v42 = v21;
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315394;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, &v44);
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000084, 0x800000024FE1FFE0, &v44);
      _os_log_impl(&dword_24FD67000, v15, v16, "%s.%s Attempting to save the current sessionID but found nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253057F40](v26, -1, -1);
      MEMORY[0x253057F40](v25, -1, -1);

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v43, v42);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v19, v21);
    }
  }

  outlined destroy of IntentCallbackManager(v0 + 16);
  v39 = *(v0 + 2040);
  v40 = *(v0 + 2032);

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v40, v39);
}

{
  (*(v0[200] + 8))(v0[201], v0[199]);
  v1 = v0[287];
  v2 = v0[286];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v2, v1);
}

{
  v1 = v0[288];
  v2 = v0[285];
  v3 = v0[220];
  v4 = v0[219];
  v5 = v0[218];
  v6 = v0[212];
  v7 = v0[211];
  v8 = v0[210];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 123);
  v9 = v0[255];
  v10 = v0[254];

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:), v10, v9);
}

{
  v73 = v0;
  v1 = v0[289];
  v2 = v0[253];

  outlined destroy of IntentCallbackManager((v0 + 2));
  MetricsUtils.emitSignpostEvent(_:)("Event.UserCancelled", 19, 2);
  specialized static TipsDonationUtils.donateTipsSignal(tipSignal:)(0xD000000000000058, 0x800000024FE1F660);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = v0[264];
  SELFUtils.recordRequestCanceled()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v72);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v72);
    _os_log_impl(&dword_24FD67000, v4, v5, "%s.%s User cancelled", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v7, -1, -1);
    MEMORY[0x253057F40](v6, -1, -1);
  }

  v8 = v0[291];
  v9 = v0[266];
  v10 = v0[265];
  v11 = v0[263];
  v12 = v0[238];
  v13 = v0[228];
  v14 = v0[226];
  v15 = v0[225];
  v16 = v0[159];
  v71 = 21;
  static GeneratedResponse.failureResponse(_:partnerName:)(&v71, v10, v9, v16);

  (*(v14 + 8))(v13, v15);
  outlined destroy of OnScreenContent.Document?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = v0[251];
  v18 = v0[250];
  v19 = v0[247];
  v20 = v0[246];
  v21 = v0[245];
  v22 = v0[244];
  v23 = v0[241];
  v24 = v0[240];
  v25 = v0[239];
  v26 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[235];
  v32 = v0[234];
  v33 = v0[233];
  v34 = v0[232];
  v35 = v0[231];
  v36 = v0[228];
  v37 = v0[227];
  v38 = v0[224];
  v39 = v0[221];
  v40 = v0[220];
  v41 = v0[217];
  v42 = v0[216];
  v43 = v0[213];
  v44 = v0[212];
  v45 = v0[209];
  v46 = v0[206];
  v47 = v0[205];
  v48 = v0[202];
  v49 = v0[201];
  v50 = v0[198];
  v51 = v0[197];
  v52 = v0[196];
  v53 = v0[195];
  v54 = v0[192];
  v55 = v0[191];
  v56 = v0[188];
  v57 = v0[187];
  v58 = v0[186];
  v59 = v0[185];
  v60 = v0[183];
  v61 = v0[182];
  v62 = v0[181];
  v63 = v0[179];
  v64 = v0[177];
  v65 = v0[176];
  v66 = v0[173];
  v67 = v0[172];
  v68 = v0[171];
  v69 = v0[168];
  v70 = v0[167];

  v27 = v0[1];

  return v27();
}

{
  v82 = v0;
  v1 = *(v0 + 2112);
  v2 = *(v0 + 1288);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  *(v0 + 2336) = v4;
  *(v0 + 2344) = v3;
  v5 = *(v0 + 128);
  v76[6] = *(v0 + 112);
  v76[7] = v5;
  v77 = *(v0 + 144);
  v6 = *(v0 + 64);
  v76[2] = *(v0 + 48);
  v76[3] = v6;
  v7 = *(v0 + 96);
  v76[4] = *(v0 + 80);
  v76[5] = v7;
  v8 = *(v0 + 32);
  v76[0] = *(v0 + 16);
  v76[1] = v8;
  v78 = v4;
  v79 = v3;
  v80 = 0;
  v81 = 1;
  swift_bridgeObjectRetain_n();
  IntentCallbackManager.updateIntentProgress(to:)(&v78);
  outlined consume of GenerativeAssistantProgressLevel(v78, v79, v80, v81);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1288);
    v12 = *(v0 + 1280);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v76[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v76);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v76);
    *(v13 + 22) = 2080;
    *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v76);
    _os_log_impl(&dword_24FD67000, v9, v10, "%s.%s [userQuery = %s]", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v14, -1, -1);
    MEMORY[0x253057F40](v13, -1, -1);
  }

  v15 = *(v0 + 2192);
  v16 = *(v0 + 2184);
  v17 = *(v0 + 1560);
  static SessionPersistenceUtils.storedValuesForSession(sessionId:)();
  static SessionPersistenceUtils.clearStoredValuesForSession()();
  if (SessionPersistenceUtils.SessionStoredValues.didRemoveAttachment.getter())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v18 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[4];
    *v18 = 4;
    v18[4] = 0;
    if ((v20 & 1) == 0 && v19 == 6)
    {
      *v18 = 6;
    }

    v21 = *(v0 + 1464);
    v22 = *(v0 + 1312);
    v23 = type metadata accessor for UploadableMedia(0);
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = *(v0 + 128);
    *(v0 + 384) = *(v0 + 112);
    *(v0 + 400) = v24;
    *(v0 + 416) = *(v0 + 144);
    v25 = *(v0 + 64);
    *(v0 + 320) = *(v0 + 48);
    *(v0 + 336) = v25;
    v26 = *(v0 + 96);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 368) = v26;
    v27 = *(v0 + 32);
    *(v0 + 288) = *(v0 + 16);
    *(v0 + 304) = v27;
    v28 = swift_task_alloc();
    *(v0 + 2352) = v28;
    *v28 = v0;
    v28[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v29 = *(v0 + 1496);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1296);
    v32 = *(v0 + 1288);
    v33 = *(v0 + 1280);
    v84 = 0;
    v34 = v0 + 288;
    v35 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v36 = static SELFUtils.shared + OBJC_IVAR____TtC26GenerativeAssistantActions9SELFUtils_gatUsecase;
    swift_beginAccess();
    v37 = *v36;
    v38 = v36[4];
    *v36 = 1;
    v36[4] = 0;
    if ((v38 & 1) == 0 && v37 == 6)
    {
      *v36 = 6;
    }

    if (*(v0 + 1097) == 1)
    {
      v39 = *(v0 + 2048);
      v40 = *(v0 + 1424);
      outlined init with copy of Date?(*(v0 + 1904), *(v0 + 1432), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v41 = *(v0 + 2072);
      v42 = *(v0 + 2064);
      v43 = *(v0 + 2048);
      v44 = *(v0 + 2000);
      v45 = *(v0 + 1984);
      v46 = *(v0 + 1416);

      v47 = IntelligenceFile.name.getter();
      v49 = v48;
      IntelligenceFile.attributes.getter();
      IntelligenceFile.Attributes.contentType.getter();
      v42(v44, v45);
      v50 = type metadata accessor for UTType();
      v51 = *(v50 - 8);
      v52 = (*(v51 + 48))(v46, 1, v50);
      v53 = *(v0 + 1416);
      if (v52 == 1)
      {
        outlined destroy of OnScreenContent.Document?(*(v0 + 1416), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        v54 = 0;
        v55 = 0;
      }

      else
      {
        v54 = UTType.preferredMIMEType.getter();
        v55 = v56;
        (*(v51 + 8))(v53, v50);
      }

      v57 = *(v0 + 1432);
      v58 = *(v0 + 1424);
      *v57 = v47;
      v57[1] = v49;
      v57[2] = v54;
      v57[3] = v55;
      swift_storeEnumTagMultiPayload();
    }

    v59 = *(v0 + 1456);
    v60 = *(v0 + 1448);
    v61 = *(v0 + 1440);
    v62 = *(v0 + 1432);
    v63 = *(v0 + 1312);
    v64 = *(v0 + 1304);
    v65 = vcvts_n_f32_s64(*(v0 + 2080), 0x14uLL);
    v66 = *(v0 + 2088);
    *v60 = *(v0 + 2048);
    *(v60 + 8) = v66;
    *(v60 + 24) = 0;
    *(v60 + 28) = v65;
    *(v60 + 32) = 0;
    outlined init with take of SelectedContent(v62, v60 + *(v61 + 28), type metadata accessor for UploadableMedia.Source);
    outlined init with copy of ScreenContent(v60, v59, type metadata accessor for UploadableImageData);
    v67 = type metadata accessor for UploadableMedia(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(v59, 0, 1, v67);
    v68 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    v69 = *(v0 + 48);
    *(v0 + 200) = *(v0 + 64);
    *(v0 + 184) = v69;
    v70 = *(v0 + 16);
    *(v0 + 168) = *(v0 + 32);
    v71 = *(v0 + 112);
    *(v0 + 264) = *(v0 + 128);
    *(v0 + 248) = v71;
    *(v0 + 232) = v68;
    *(v0 + 280) = *(v0 + 144);
    *(v0 + 152) = v70;
    v73 = *(v64 + 24);
    v72 = *(v64 + 32);
    v74 = swift_task_alloc();
    *(v0 + 2368) = v74;
    *v74 = v0;
    v74[1] = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
    v29 = *(v0 + 1488);
    v30 = *(v0 + 1456);
    v31 = *(v0 + 1296);
    v32 = *(v0 + 1288);
    v33 = *(v0 + 1280);
    v84 = v72;
    v34 = v0 + 152;
    v35 = v73;
  }

  return ModelOrchestrator.generateAndPrompt(userQuery:requestMetadata:mediaToUpload:intentCallbackManager:enableBrowserTool:appBundleID:)(v29, v33, v32, v31, v30, v34, 0, v35);
}

{
  v2 = *v1;
  v3 = (*v1)[294];
  v11 = *v1;
  (*v1)[295] = v0;

  if (v0)
  {
    v4 = v2[293];
    v5 = v2[266];
    v6 = v2[183];

    outlined destroy of OnScreenContent.Document?(v6, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[255];
    v8 = v2[254];
    v9 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[183], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[255];
    v8 = v2[254];
    v9 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v183 = v0;
  v1 = *(v0 + 2024);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);

  outlined init with take of SelectedContent(v3, v2, type metadata accessor for ModelResponse);
  v4 = *(v0 + 2112);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v177[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v177);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v177);
    _os_log_impl(&dword_24FD67000, v5, v6, "%s.%s Generative response complete", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v8, -1, -1);
    MEMORY[0x253057F40](v7, -1, -1);
  }

  v9 = *(v0 + 2344);
  v10 = *(v0 + 2336);
  v151 = *(v0 + 2384);
  v11 = *(v0 + 2128);
  partnerName = *(v0 + 2120);
  partnerName_8 = *(v0 + 1880);
  v12 = *(v0 + 1848);
  v13 = *(v0 + 1840);
  v142 = *(v0 + 1832);
  v145 = v12;
  v14 = *(v0 + 1504);
  v15 = *(v0 + 1480);
  v16 = *(v0 + 1472);
  v158 = *(v0 + 2136);
  v163 = *(v0 + 1408);
  v17 = *(v0 + 1392);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 128);
  v177[6] = *(v0 + 112);
  v177[7] = v19;
  v178 = *(v0 + 144);
  v20 = *(v0 + 64);
  v177[2] = *(v0 + 48);
  v177[3] = v20;
  v21 = *(v0 + 96);
  v177[4] = *(v0 + 80);
  v177[5] = v21;
  v22 = *(v0 + 32);
  v177[0] = *(v0 + 16);
  v177[1] = v22;
  v179 = v10;
  v180 = v9;
  v181 = 0;
  v182 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v179);
  outlined consume of GenerativeAssistantProgressLevel(v179, v180, v181, v182);
  outlined init with copy of ScreenContent(v14, v15, type metadata accessor for ModelResponse);
  v148 = *(v18 + 41);
  (*(v13 + 16))(v12, v18 + v151, v142);
  LODWORD(v12) = *(v18 + *(v158 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v177[0]) = 44;

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v24.value._countAndFlagsBits = partnerName;
  v24.value._object = v11;
  v25 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v177, v24, v23);

  *(v0 + 832) = xmmword_24FE1ADF0;
  *(v0 + 848) = 5;
  *(v0 + 856) = v25;
  *(v0 + 872) = partnerName;
  v155 = v11;
  *(v0 + 880) = v11;
  outlined init with copy of DialogConfig(v0 + 832, v0 + 888);

  LOBYTE(v177[0]) = v148;
  v152 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v177, v145, v0 + 832, v12);
  outlined destroy of DialogConfig(v0 + 832);
  v26 = (v15 + v16[14]);
  v27 = v26[1];
  v132 = *v26;
  v124 = v27;
  v126 = v15[4];
  v28 = *v15;
  v29 = MEMORY[0x277D84F90];
  if (*(v15 + v16[9]))
  {
    v29 = *(v15 + v16[9]);
  }

  v134 = v29;
  outlined init with copy of Date?(v15 + v16[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = v15[2];
  v146 = v15[1];
  v140 = *(v15 + v16[10]);
  v143 = *(v15 + v16[11]);
  v31 = (v15 + v16[12]);
  v32 = *v31;
  v33 = v31[1];
  v34 = (v15 + v16[13]);
  v136 = v32;
  v138 = *v34;
  v129 = v34[1];
  *(v0 + 968) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 976) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 944));

  v35 = v28;

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v36 = (v163 + v17[14]);
  swift_initStaticObject();
  LOBYTE(v177[0]) = 49;
  v37 = MEMORY[0x277D84F90];
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v39 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v177, 0, v38);

  *v36 = v39;
  v40 = v35;
  *v163 = v132;
  *(v163 + 8) = v124;
  *(v163 + 16) = v35;
  *(v163 + 24) = v152;
  *(v163 + 32) = 64;
  *(v163 + 40) = v126;
  *(v163 + 48) = v37;
  *(v163 + v17[15]) = v134;
  *(v163 + v17[12]) = 0;
  v41 = (v163 + v17[13]);
  *v41 = partnerName;
  v41[1] = v155;
  outlined init with copy of Date?(partnerName_8, v163 + v17[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v42 = (v163 + v17[11]);
  *v42 = v146;
  v42[1] = v30;
  *(v163 + v17[16]) = v140;
  *(v163 + v17[17]) = v143;
  v43 = (v163 + v17[18]);
  *v43 = v136;
  v43[1] = v33;
  v44 = (v163 + v17[19]);
  *v44 = v138;
  v44[1] = v129;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 944, v163 + v17[21]);
  *(v163 + v17[20]) = xmmword_24FE1AE00;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_20:
    v71 = *(v0 + 2176);
    v72 = *(v0 + 2168);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1848);
    v75 = *(v0 + 1832);
    v76 = *(v0 + 1808);
    partnerNameb = *(v0 + 1800);
    partnerName_8b = *(v0 + 1824);
    v77 = *(v0 + 1552);
    v160 = *(v0 + 1544);
    v164 = *(v0 + 1560);
    v78 = *(v0 + 1504);
    v79 = *(v0 + 1480);

    outlined destroy of OnScreenContent.Document?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v72(v74, v75);
    outlined destroy of DocumentInfo(v79, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v78, type metadata accessor for ModelResponse);
    (*(v77 + 8))(v164, v160);
    (*(v76 + 8))(partnerName_8b, partnerNameb);
LABEL_22:
    v88 = *(v0 + 1408);
    v89 = *(v0 + 1272);
    outlined destroy of OnScreenContent.Document?(*(v0 + 1904), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of ScreenContent(v88, v89, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));
    outlined destroy of DocumentInfo(v88, type metadata accessor for GeneratedResponse);
    v90 = *(v0 + 2008);
    v91 = *(v0 + 2000);
    v92 = *(v0 + 1976);
    v93 = *(v0 + 1968);
    v94 = *(v0 + 1960);
    v95 = *(v0 + 1952);
    v96 = *(v0 + 1928);
    v97 = *(v0 + 1920);
    v98 = *(v0 + 1912);
    v99 = *(v0 + 1904);
    v101 = *(v0 + 1896);
    v102 = *(v0 + 1888);
    v103 = *(v0 + 1880);
    v104 = *(v0 + 1872);
    v105 = *(v0 + 1864);
    v106 = *(v0 + 1856);
    v107 = *(v0 + 1848);
    v108 = *(v0 + 1824);
    v109 = *(v0 + 1816);
    v110 = *(v0 + 1792);
    v111 = *(v0 + 1768);
    v112 = *(v0 + 1760);
    v113 = *(v0 + 1736);
    v114 = *(v0 + 1728);
    v115 = *(v0 + 1704);
    v116 = *(v0 + 1696);
    v117 = *(v0 + 1672);
    v118 = *(v0 + 1648);
    v119 = *(v0 + 1640);
    v120 = *(v0 + 1616);
    v121 = *(v0 + 1608);
    v122 = *(v0 + 1584);
    v123 = *(v0 + 1576);
    v125 = *(v0 + 1568);
    v127 = *(v0 + 1560);
    v128 = *(v0 + 1536);
    v130 = *(v0 + 1528);
    v131 = *(v0 + 1504);
    v133 = *(v0 + 1496);
    v135 = *(v0 + 1488);
    v137 = *(v0 + 1480);
    v139 = *(v0 + 1464);
    v141 = *(v0 + 1456);
    v144 = *(v0 + 1448);
    v147 = *(v0 + 1432);
    v150 = *(v0 + 1416);
    v154 = *(v0 + 1408);
    v157 = *(v0 + 1384);
    v162 = *(v0 + 1376);
    v166 = *(v0 + 1368);
    partnerNamed = *(v0 + 1344);
    partnerName_8d = *(v0 + 1336);

    v100 = *(v0 + 8);

    return v100();
  }

  v45 = *(v0 + 1408);
  v46 = *(v0 + 1360);
  v47 = *(v0 + 1352);
  v159 = *(v0 + 1336);
  partnerName_8a = *(v0 + 1328);
  v48._countAndFlagsBits = v132;
  v48._object = v124;
  v49 = GeneratedResponse.updateText(_:)(v48);

  *v45 = v49._countAndFlagsBits;
  *(v163 + 8) = v49._object;
  v50 = v35[2];
  v51 = (v46 + 56);
  v52 = (v46 + 48);

  v54 = 0;
  partnerNamea = v40;
  while (v54 == v50)
  {
    v55 = 1;
    v54 = v50;
LABEL_11:
    v60 = *(v0 + 1384);
    v61 = *(v0 + 1376);
    v62 = *(v0 + 1352);
    (*v51)(v61, v55, 1, v62);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v61, v60, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v52)(v60, 1, v62) == 1)
    {
      v153 = *(v0 + 2168);
      v156 = *(v0 + 2176);
      v80 = *(v0 + 2104);
      v81 = *(v0 + 1880);
      v82 = *(v0 + 1848);
      v83 = *(v0 + 1832);
      v84 = *(v0 + 1808);
      partnerNamec = *(v0 + 1800);
      partnerName_8c = *(v0 + 1824);
      v85 = *(v0 + 1552);
      v161 = *(v0 + 1544);
      v165 = *(v0 + 1560);
      v86 = *(v0 + 1504);
      v87 = *(v0 + 1480);

      outlined destroy of OnScreenContent.Document?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v153(v82, v83);
      outlined destroy of DocumentInfo(v87, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v86, type metadata accessor for ModelResponse);
      (*(v85 + 8))(v165, v161);
      (*(v84 + 8))(partnerName_8c, partnerNamec);
      goto LABEL_22;
    }

    v63 = *(v0 + 1384);
    v64 = *(v0 + 1320);
    v65 = *v63;
    outlined init with take of SelectedContent(v63 + *(v47 + 48), *(v0 + 1344), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v67 = *(v0 + 1344);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v67, type metadata accessor for GeneratedResponse.RichContentEntity);
    }

    else
    {
      v68 = *(v0 + 1336);
      v149 = *(v0 + 1320);
      outlined destroy of DocumentInfo(v67, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v68 = v49._countAndFlagsBits;
      *(v159 + 8) = v49._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v69 = partnerNamea;
        if ((v65 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v69 = result;
        if ((v65 & 0x8000000000000000) != 0)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      if (v65 >= v69[2])
      {
        goto LABEL_26;
      }

      v70 = v69;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1336), v69 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v65);
      partnerNamea = v70;
      *(v163 + 16) = v70;
    }
  }

  if (v54 < v40[2])
  {
    v56 = *(v0 + 1376);
    v57 = *(v0 + 1368);
    v58 = v40 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v54;
    v59 = *(v47 + 48);
    *v57 = v54;
    outlined init with copy of ScreenContent(v58, v57 + v59, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v57, v56, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v55 = 0;
    ++v54;
    goto LABEL_11;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v2 = *v1;
  v3 = (*v1)[296];
  v11 = *v1;
  (*v1)[297] = v0;

  if (v0)
  {
    v4 = v2[293];
    v5 = v2[266];
    v6 = v2[182];

    outlined destroy of OnScreenContent.Document?(v6, &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[255];
    v8 = v2[254];
    v9 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  else
  {
    outlined destroy of OnScreenContent.Document?(v2[182], &_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR);
    v7 = v2[255];
    v8 = v2[254];
    v9 = GenerateTextFromMediaController.generateTextFromImage(userQuery:requestMetadata:imageInfo:associatedScreenshot:intentCallbackManager:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v270 = v0;
  v1 = *(v0 + 2160);
  v2 = *(v0 + 2152);
  v3 = *(v0 + 2144);
  partnerName_8b = *(v0 + 2384);
  v4 = *(v0 + 1100);
  v5 = *(v0 + 2024);
  v6 = *(v0 + 1856);
  v7 = *(v0 + 1832);
  v8 = *(v0 + 1504);
  v9 = *(v0 + 1488);
  v10 = *(v0 + 1296);

  outlined init with take of SelectedContent(v9, v8, type metadata accessor for ModelResponse);
  v3(v6, v4, v7);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v0 + 2176);
  v12 = *(v0 + 2168);
  v13 = *(v0 + 1856);
  v14 = *(v0 + 1832);
  if (*(v0 + 1208) == *(v0 + 1224) && *(v0 + 1216) == *(v0 + 1232))
  {
    v12(*(v0 + 1856), *(v0 + 1832));

LABEL_5:
    v18 = *(v0 + 2376);
    v19 = *(v0 + 2048);
    v20 = IntelligenceFile.data.getter();
    if (v18)
    {
      v22 = *(v0 + 2344);
      v23 = *(v0 + 2128);
      v24 = *(v0 + 2104);
      partnerNameb = *(v0 + 1824);
      partnerName_8c = *(v0 + 1904);
      v25 = *(v0 + 1808);
      v26 = *(v0 + 1800);
      v27 = *(v0 + 1560);
      v28 = *(v0 + 1552);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1504);
      v31 = *(v0 + 1448);

      outlined destroy of DocumentInfo(v31, type metadata accessor for UploadableImageData);
      outlined destroy of DocumentInfo(v30, type metadata accessor for ModelResponse);
      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(partnerNameb, v26);
      outlined destroy of OnScreenContent.Document?(partnerName_8c, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v32 = *(v0 + 2008);
      v33 = *(v0 + 2000);
      v34 = *(v0 + 1976);
      v35 = *(v0 + 1968);
      v36 = *(v0 + 1960);
      v37 = *(v0 + 1952);
      v38 = *(v0 + 1928);
      v39 = *(v0 + 1920);
      v40 = *(v0 + 1912);
      v41 = *(v0 + 1904);
      v141 = *(v0 + 1896);
      v142 = *(v0 + 1888);
      v144 = *(v0 + 1880);
      v146 = *(v0 + 1872);
      v148 = *(v0 + 1864);
      v150 = *(v0 + 1856);
      v152 = *(v0 + 1848);
      v154 = *(v0 + 1824);
      v156 = *(v0 + 1816);
      v158 = *(v0 + 1792);
      v160 = *(v0 + 1768);
      v162 = *(v0 + 1760);
      v164 = *(v0 + 1736);
      v166 = *(v0 + 1728);
      v168 = *(v0 + 1704);
      v170 = *(v0 + 1696);
      v172 = *(v0 + 1672);
      v174 = *(v0 + 1648);
      v176 = *(v0 + 1640);
      v178 = *(v0 + 1616);
      v180 = *(v0 + 1608);
      v182 = *(v0 + 1584);
      v184 = *(v0 + 1576);
      v187 = *(v0 + 1568);
      v189 = *(v0 + 1560);
      v192 = *(v0 + 1536);
      v195 = *(v0 + 1528);
      v198 = *(v0 + 1504);
      v201 = *(v0 + 1496);
      v204 = *(v0 + 1488);
      v207 = *(v0 + 1480);
      v210 = *(v0 + 1464);
      v214 = *(v0 + 1456);
      v218 = *(v0 + 1448);
      v221 = *(v0 + 1432);
      v226 = *(v0 + 1416);
      v229 = *(v0 + 1408);
      v232 = *(v0 + 1384);
      v236 = *(v0 + 1376);
      v244 = *(v0 + 1368);
      partnerNamec = *(v0 + 1344);
      partnerName_8d = *(v0 + 1336);

      v42 = *(v0 + 8);
LABEL_32:

      return v42();
    }

    v43 = v20;
    v44 = v21;
    if (*(v0 + 2192))
    {
      v45 = *(v0 + 2184);
      outlined copy of Data._Representation(v20, v21);
      static SessionPersistenceUtils.setVisualIntelligenceImageData(_:forSession:)();
      outlined consume of Data._Representation(v43, v44);
    }

    goto LABEL_10;
  }

  v15 = *(v0 + 1216);
  v16 = *(v0 + 1232);
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12(v13, v14);

  if (v17)
  {
    goto LABEL_5;
  }

  v43 = 0;
  v44 = 0xF000000000000000;
LABEL_10:
  outlined destroy of DocumentInfo(*(v0 + 1448), type metadata accessor for UploadableImageData);
  v46 = *(v0 + 2112);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v233 = v44;
  v237 = v43;
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v264[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000024FE1B1F0, v264);
    *(v49 + 12) = 2080;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x800000024FE1FF20, v264);
    _os_log_impl(&dword_24FD67000, v47, v48, "%s.%s Generative response complete", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253057F40](v50, -1, -1);
    MEMORY[0x253057F40](v49, -1, -1);
  }

  v51 = *(v0 + 2344);
  v52 = *(v0 + 2336);
  v222 = *(v0 + 2384);
  v230 = *(v0 + 2136);
  v53 = *(v0 + 2128);
  partnerName = *(v0 + 2120);
  partnerName_8 = *(v0 + 1880);
  v54 = *(v0 + 1848);
  v55 = *(v0 + 1840);
  v211 = *(v0 + 1832);
  v215 = v54;
  v56 = *(v0 + 1504);
  v57 = *(v0 + 1480);
  v58 = *(v0 + 1472);
  v245 = *(v0 + 1408);
  v59 = *(v0 + 1392);
  v60 = *(v0 + 1296);
  v61 = *(v0 + 128);
  v264[6] = *(v0 + 112);
  v264[7] = v61;
  v265 = *(v0 + 144);
  v266 = v52;
  v62 = *(v0 + 64);
  v264[2] = *(v0 + 48);
  v264[3] = v62;
  v63 = *(v0 + 96);
  v264[4] = *(v0 + 80);
  v264[5] = v63;
  v64 = *(v0 + 32);
  v264[0] = *(v0 + 16);
  v264[1] = v64;
  v267 = v51;
  v268 = 0;
  v269 = 4;
  IntentCallbackManager.updateIntentProgress(to:)(&v266);
  outlined consume of GenerativeAssistantProgressLevel(v266, v267, v268, v269);
  outlined init with copy of ScreenContent(v56, v57, type metadata accessor for ModelResponse);
  v219 = *(v60 + 41);
  (*(v55 + 16))(v54, v60 + v222, v211);
  LODWORD(v54) = *(v60 + *(v230 + 48));
  type metadata accessor for DialogEngineClient();
  swift_initStaticObject();
  LOBYTE(v264[0]) = 44;

  v65 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v66.value._countAndFlagsBits = partnerName;
  v66.value._object = v53;
  v67 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v264, v66, v65);

  *(v0 + 832) = xmmword_24FE1ADF0;
  *(v0 + 848) = 5;
  *(v0 + 856) = v67;
  *(v0 + 872) = partnerName;
  v227 = v53;
  *(v0 + 880) = v53;
  outlined init with copy of DialogConfig(v0 + 832, v0 + 888);

  LOBYTE(v264[0]) = v219;
  v223 = ModelResponse.dialog(mode:useCaseID:config:isFirstRequest:)(v264, v215, v0 + 832, v54);
  outlined destroy of DialogConfig(v0 + 832);
  v185 = v57[4];
  v68 = (v57 + v58[14]);
  v69 = v68[1];
  v199 = *v68;
  v70 = *v57;
  v71 = MEMORY[0x277D84F90];
  if (*(v57 + v58[9]))
  {
    v71 = *(v57 + v58[9]);
  }

  v196 = v71;
  outlined init with copy of Date?(v57 + v58[8], partnerName_8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v72 = v57[2];
  v216 = v57[1];
  v208 = *(v57 + v58[10]);
  v212 = *(v57 + v58[11]);
  v73 = (v57 + v58[12]);
  v74 = *v73;
  v190 = v73[1];
  v75 = (v57 + v58[13]);
  v202 = v74;
  v205 = *v75;
  v193 = v75[1];
  *(v0 + 968) = type metadata accessor for GenerativeAssistantFeatureFlagManager();
  *(v0 + 976) = MEMORY[0x277D0D628];
  __swift_allocate_boxed_opaque_existential_1((v0 + 944));

  static GenerativeAssistantFeatureFlagManager.instance.getter();
  v76 = (v245 + v59[14]);
  swift_initStaticObject();
  LOBYTE(v264[0]) = 49;
  v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v78 = DialogEngineClient.executeCat(catId:partnerName:additionalParameters:)(v264, 0, v77);

  *v76 = v78;
  *v245 = v199;
  *(v245 + 8) = v69;
  *(v245 + 16) = v70;
  *(v245 + 24) = v223;
  *(v245 + 32) = 64;
  *(v245 + 40) = v185;
  *(v245 + 48) = MEMORY[0x277D84F90];
  *(v245 + v59[15]) = v196;
  *(v245 + v59[12]) = 0;
  v79 = (v245 + v59[13]);
  *v79 = partnerName;
  v79[1] = v227;
  outlined init with copy of Date?(partnerName_8, v245 + v59[10], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v80 = (v245 + v59[11]);
  *v80 = v216;
  v80[1] = v72;
  *(v245 + v59[16]) = v208;
  *(v245 + v59[17]) = v212;
  v81 = (v245 + v59[18]);
  *v81 = v202;
  v81[1] = v190;
  v82 = (v245 + v59[19]);
  *v82 = v205;
  v82[1] = v193;
  outlined init with copy of GenerativeAssistantFeatureFlagManaging(v0 + 944, v245 + v59[21]);
  v83 = (v245 + v59[20]);
  *v83 = v237;
  v83[1] = v233;
  if ((dispatch thunk of GenerativeAssistantFeatureFlagManaging.isDataDetectorEnabled.getter() & 1) == 0)
  {
LABEL_29:
    v112 = *(v0 + 2176);
    v113 = *(v0 + 2168);
    v114 = *(v0 + 1880);
    v115 = *(v0 + 1848);
    v116 = *(v0 + 1832);
    v117 = *(v0 + 1808);
    partnerNamed = *(v0 + 1800);
    partnerName_8e = *(v0 + 1824);
    v118 = *(v0 + 1552);
    v241 = *(v0 + 1544);
    v246 = *(v0 + 1560);
    v119 = *(v0 + 1504);
    v120 = *(v0 + 1480);

    outlined destroy of OnScreenContent.Document?(v114, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v113(v115, v116);
    outlined destroy of DocumentInfo(v120, type metadata accessor for ModelResponse);
    outlined destroy of DocumentInfo(v119, type metadata accessor for ModelResponse);
    (*(v118 + 8))(v246, v241);
    (*(v117 + 8))(partnerName_8e, partnerNamed);
LABEL_31:
    v129 = *(v0 + 1408);
    v130 = *(v0 + 1272);
    outlined destroy of OnScreenContent.Document?(*(v0 + 1904), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of ScreenContent(v129, v130, type metadata accessor for GeneratedResponse);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));
    outlined destroy of DocumentInfo(v129, type metadata accessor for GeneratedResponse);
    v131 = *(v0 + 2008);
    v132 = *(v0 + 2000);
    v133 = *(v0 + 1976);
    v134 = *(v0 + 1968);
    v135 = *(v0 + 1960);
    v136 = *(v0 + 1952);
    v137 = *(v0 + 1928);
    v138 = *(v0 + 1920);
    v139 = *(v0 + 1912);
    v140 = *(v0 + 1904);
    v143 = *(v0 + 1896);
    v145 = *(v0 + 1888);
    v147 = *(v0 + 1880);
    v149 = *(v0 + 1872);
    v151 = *(v0 + 1864);
    v153 = *(v0 + 1856);
    v155 = *(v0 + 1848);
    v157 = *(v0 + 1824);
    v159 = *(v0 + 1816);
    v161 = *(v0 + 1792);
    v163 = *(v0 + 1768);
    v165 = *(v0 + 1760);
    v167 = *(v0 + 1736);
    v169 = *(v0 + 1728);
    v171 = *(v0 + 1704);
    v173 = *(v0 + 1696);
    v175 = *(v0 + 1672);
    v177 = *(v0 + 1648);
    v179 = *(v0 + 1640);
    v181 = *(v0 + 1616);
    v183 = *(v0 + 1608);
    v186 = *(v0 + 1584);
    v188 = *(v0 + 1576);
    v191 = *(v0 + 1568);
    v194 = *(v0 + 1560);
    v197 = *(v0 + 1536);
    v200 = *(v0 + 1528);
    v203 = *(v0 + 1504);
    v206 = *(v0 + 1496);
    v209 = *(v0 + 1488);
    v213 = *(v0 + 1480);
    v217 = *(v0 + 1464);
    v220 = *(v0 + 1456);
    v225 = *(v0 + 1448);
    v228 = *(v0 + 1432);
    v231 = *(v0 + 1416);
    v235 = *(v0 + 1408);
    v240 = *(v0 + 1384);
    v243 = *(v0 + 1376);
    v248 = *(v0 + 1368);
    partnerNamef = *(v0 + 1344);
    partnerName_8g = *(v0 + 1336);

    v42 = *(v0 + 8);
    goto LABEL_32;
  }

  v84 = *(v0 + 1408);
  v85 = *(v0 + 1360);
  v86 = *(v0 + 1352);
  v238 = *(v0 + 1336);
  partnerName_8a = *(v0 + 1328);
  v87._countAndFlagsBits = v199;
  v87._object = v69;
  v88 = GeneratedResponse.updateText(_:)(v87);

  *v84 = v88._countAndFlagsBits;
  *(v245 + 8) = v88._object;
  v89 = *(v70 + 16);
  v90 = (v85 + 56);
  v91 = (v85 + 48);

  v93 = 0;
  partnerNamea = result;
  v94 = result;
  v95 = result;
  while (v93 == v89)
  {
    v96 = 1;
    v93 = v89;
LABEL_20:
    v101 = *(v0 + 1384);
    v102 = *(v0 + 1376);
    v103 = *(v0 + 1352);
    (*v90)(v102, v96, 1, v103);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v102, v101, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR);
    if ((*v91)(v101, 1, v103) == 1)
    {
      v234 = *(v0 + 2168);
      v239 = *(v0 + 2176);
      v121 = *(v0 + 2104);
      v122 = *(v0 + 1880);
      v123 = *(v0 + 1848);
      v124 = *(v0 + 1832);
      v125 = *(v0 + 1808);
      partnerNamee = *(v0 + 1800);
      partnerName_8f = *(v0 + 1824);
      v126 = *(v0 + 1552);
      v242 = *(v0 + 1544);
      v247 = *(v0 + 1560);
      v127 = *(v0 + 1504);
      v128 = *(v0 + 1480);

      outlined destroy of OnScreenContent.Document?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v234(v123, v124);
      outlined destroy of DocumentInfo(v128, type metadata accessor for ModelResponse);
      outlined destroy of DocumentInfo(v127, type metadata accessor for ModelResponse);
      (*(v126 + 8))(v247, v242);
      (*(v125 + 8))(partnerName_8f, partnerNamee);
      goto LABEL_31;
    }

    v104 = *(v0 + 1384);
    v105 = *(v0 + 1320);
    v106 = *v104;
    outlined init with take of SelectedContent(v104 + *(v86 + 48), *(v0 + 1344), type metadata accessor for GeneratedResponse.RichContentEntity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v108 = *(v0 + 1344);
    if (EnumCaseMultiPayload)
    {
      result = outlined destroy of DocumentInfo(v108, type metadata accessor for GeneratedResponse.RichContentEntity);
      v94 = v95;
    }

    else
    {
      v109 = *(v0 + 1336);
      v224 = *(v0 + 1320);
      outlined destroy of DocumentInfo(v108, type metadata accessor for GeneratedResponse.RichContentEntity);
      *v109 = v88._countAndFlagsBits;
      *(v238 + 8) = v88._object;
      swift_storeEnumTagMultiPayload();

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v110 = partnerNamea;
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(partnerNamea);
        v110 = result;
        if ((v106 & 0x8000000000000000) != 0)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      if (v106 >= v110[2])
      {
        goto LABEL_36;
      }

      v111 = v110;
      result = outlined assign with take of GeneratedResponse.RichContentEntity(*(v0 + 1336), v110 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v106);
      partnerNamea = v111;
      *(v245 + 16) = v111;
      v94 = v95;
    }
  }

  if (v93 < *(v94 + 16))
  {
    v97 = *(v0 + 1376);
    v98 = *(v0 + 1368);
    v99 = v94 + ((*(partnerName_8a + 80) + 32) & ~*(partnerName_8a + 80)) + *(partnerName_8a + 72) * v93;
    v100 = *(v86 + 48);
    *v98 = v93;
    outlined init with copy of ScreenContent(v99, v98 + v100, type metadata accessor for GeneratedResponse.RichContentEntity);
    outlined init with take of (offset: Int, element: GeneratedResponse.RichContentEntity)(v98, v97, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
    v96 = 0;
    ++v93;
    goto LABEL_20;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v1 = v0[263];
  v2 = v0[253];
  v3 = v0[238];
  v4 = v0[228];
  v5 = v0[226];
  v6 = v0[225];
  v7 = v0[195];
  v8 = v0[194];
  v9 = v0[193];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  outlined destroy of OnScreenContent.Document?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v64 = v0[295];
  v10 = v0[251];
  v11 = v0[250];
  v12 = v0[247];
  v13 = v0[246];
  v14 = v0[245];
  v15 = v0[244];
  v16 = v0[241];
  v17 = v0[240];
  v18 = v0[239];
  v19 = v0[238];
  v22 = v0[237];
  v23 = v0[236];
  v24 = v0[235];
  v25 = v0[234];
  v26 = v0[233];
  v27 = v0[232];
  v28 = v0[231];
  v29 = v0[228];
  v30 = v0[227];
  v31 = v0[224];
  v32 = v0[221];
  v33 = v0[220];
  v34 = v0[217];
  v35 = v0[216];
  v36 = v0[213];
  v37 = v0[212];
  v38 = v0[209];
  v39 = v0[206];
  v40 = v0[205];
  v41 = v0[202];
  v42 = v0[201];
  v43 = v0[198];
  v44 = v0[197];
  v45 = v0[196];
  v46 = v0[195];
  v47 = v0[192];
  v48 = v0[191];
  v49 = v0[188];
  v50 = v0[187];
  v51 = v0[186];
  v52 = v0[185];
  v53 = v0[183];
  v54 = v0[182];
  v55 = v0[181];
  v56 = v0[179];
  v57 = v0[177];
  v58 = v0[176];
  v59 = v0[173];
  v60 = v0[172];
  v61 = v0[171];
  v62 = v0[168];
  v63 = v0[167];

  v20 = v0[1];

  return v20();
}

{
  v1 = v0[263];
  v2 = v0[253];
  v3 = v0[238];
  v4 = v0[228];
  v5 = v0[226];
  v6 = v0[225];
  v7 = v0[195];
  v8 = v0[194];
  v9 = v0[193];
  v10 = v0[181];

  outlined destroy of DocumentInfo(v10, type metadata accessor for UploadableImageData);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  outlined destroy of OnScreenContent.Document?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v65 = v0[297];
  v11 = v0[251];
  v12 = v0[250];
  v13 = v0[247];
  v14 = v0[246];
  v15 = v0[245];
  v16 = v0[244];
  v17 = v0[241];
  v18 = v0[240];
  v19 = v0[239];
  v20 = v0[238];
  v23 = v0[237];
  v24 = v0[236];
  v25 = v0[235];
  v26 = v0[234];
  v27 = v0[233];
  v28 = v0[232];
  v29 = v0[231];
  v30 = v0[228];
  v31 = v0[227];
  v32 = v0[224];
  v33 = v0[221];
  v34 = v0[220];
  v35 = v0[217];
  v36 = v0[216];
  v37 = v0[213];
  v38 = v0[212];
  v39 = v0[209];
  v40 = v0[206];
  v41 = v0[205];
  v42 = v0[202];
  v43 = v0[201];
  v44 = v0[198];
  v45 = v0[197];
  v46 = v0[196];
  v47 = v0[195];
  v48 = v0[192];
  v49 = v0[191];
  v50 = v0[188];
  v51 = v0[187];
  v52 = v0[186];
  v53 = v0[185];
  v54 = v0[183];
  v55 = v0[182];
  v56 = v0[181];
  v57 = v0[179];
  v58 = v0[177];
  v59 = v0[176];
  v60 = v0[173];
  v61 = v0[172];
  v62 = v0[171];
  v63 = v0[168];
  v64 = v0[167];

  v21 = v0[1];

  return v21();
}

uint64_t GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1496) = v7;
  *(v8 + 1488) = a6;
  *(v8 + 1480) = a5;
  *(v8 + 1472) = a4;
  *(v8 + 1464) = a3;
  *(v8 + 1456) = a2;
  *(v8 + 1448) = a1;
  v10 = type metadata accessor for GeneratedResponse.RichContentEntity(0);
  *(v8 + 1504) = v10;
  v11 = *(v10 - 8);
  *(v8 + 1512) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 1520) = swift_task_alloc();
  *(v8 + 1528) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtMR);
  *(v8 + 1536) = v13;
  v14 = *(v13 - 8);
  *(v8 + 1544) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 1552) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMd, &_sSi6offset_26GenerativeAssistantActions17GeneratedResponseV17RichContentEntityO7elementtSgMR) - 8) + 64) + 15;
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  v17 = type metadata accessor for GeneratedResponse(0);
  *(v8 + 1576) = v17;
  v18 = *(v17 - 8);
  *(v8 + 1584) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 1592) = swift_task_alloc();
  v20 = type metadata accessor for GenerativeAssistantUseCase();
  *(v8 + 1600) = v20;
  v21 = *(v20 - 8);
  *(v8 + 1608) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 1616) = swift_task_alloc();
  v23 = type metadata accessor for UploadableDocumentData(0);
  *(v8 + 1624) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v8 + 1632) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions15UploadableMediaOSgMd, &_s26GenerativeAssistantActions15UploadableMediaOSgMR) - 8) + 64) + 15;
  *(v8 + 1640) = swift_task_alloc();
  *(v8 + 1648) = swift_task_alloc();
  *(v8 + 1656) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  *(v8 + 1664) = swift_task_alloc();
  *(v8 + 1672) = swift_task_alloc();
  v27 = type metadata accessor for UploadableMedia.Source(0);
  *(v8 + 1680) = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  *(v8 + 1688) = swift_task_alloc();
  *(v8 + 1696) = swift_task_alloc();
  v29 = type metadata accessor for IntelligenceFile.Attributes();
  *(v8 + 1704) = v29;
  v30 = *(v29 - 8);
  *(v8 + 1712) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 1720) = swift_task_alloc();
  *(v8 + 1728) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions9ImageInfoVSgMd, &_s26GenerativeAssistantActions9ImageInfoVSgMR) - 8) + 64) + 15;
  *(v8 + 1736) = swift_task_alloc();
  *(v8 + 1744) = swift_task_alloc();
  v33 = type metadata accessor for UploadableImageData(0);
  *(v8 + 1752) = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  *(v8 + 1760) = swift_task_alloc();
  v35 = type metadata accessor for ModelResponse();
  *(v8 + 1768) = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  *(v8 + 1776) = swift_task_alloc();
  *(v8 + 1784) = swift_task_alloc();
  *(v8 + 1792) = swift_task_alloc();
  *(v8 + 1800) = swift_task_alloc();
  *(v8 + 1808) = swift_task_alloc();
  *(v8 + 1816) = swift_task_alloc();
  *(v8 + 1824) = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21GenerativeAssistantUI10AttachmentVSgMd, &_s21GenerativeAssistantUI10AttachmentVSgMR) - 8) + 64) + 15;
  *(v8 + 1832) = swift_task_alloc();
  *(v8 + 1840) = swift_task_alloc();
  v38 = type metadata accessor for SessionPersistenceUtils.SessionStoredValues();
  *(v8 + 1848) = v38;
  v39 = *(v38 - 8);
  *(v8 + 1856) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 1864) = swift_task_alloc();
  v41 = type metadata accessor for GATError();
  *(v8 + 1872) = v41;
  v42 = *(v41 - 8);
  *(v8 + 1880) = v42;
  v43 = *(v42 + 64) + 15;
  *(v8 + 1888) = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeAssistantActions17GeneratedResponseVSgMd, &_s26GenerativeAssistantActions17GeneratedResponseVSgMR) - 8) + 64) + 15;
  *(v8 + 1896) = swift_task_alloc();
  v45 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.RequestType();
  *(v8 + 1904) = v45;
  v46 = *(v45 - 8);
  *(v8 + 1912) = v46;
  v47 = *(v46 + 64) + 15;
  *(v8 + 1920) = swift_task_alloc();
  v48 = type metadata accessor for GenerativeAssistantSettingsIntentHelper.ResponseType();
  *(v8 + 1928) = v48;
  v49 = *(v48 - 8);
  *(v8 + 1936) = v49;
  v50 = *(v49 + 64) + 15;
  *(v8 + 1944) = swift_task_alloc();
  *(v8 + 1952) = swift_task_alloc();
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v8 + 1960) = swift_task_alloc();
  *(v8 + 1968) = swift_task_alloc();
  *(v8 + 1976) = swift_task_alloc();
  *(v8 + 1984) = swift_task_alloc();
  *(v8 + 1992) = swift_task_alloc();
  v52 = type metadata accessor for OnScreenContent.UIMetadata.Window();
  *(v8 + 2000) = v52;
  v53 = *(v52 - 8);
  *(v8 + 2008) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 2016) = swift_task_alloc();
  *(v8 + 2024) = swift_task_alloc();
  v55 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMd, &_s23IntelligenceFlowContext15OnScreenContentV10UIMetadataVSgMR) - 8) + 64) + 15;
  *(v8 + 2032) = swift_task_alloc();
  *(v8 + 2040) = swift_task_alloc();
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMd, &_s21UIIntelligenceSupport24IntelligenceUserActivityVSgMR) - 8) + 64) + 15;
  *(v8 + 2048) = swift_task_alloc();
  v57 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMd, &_s25GenerativeAssistantCommon21SupportedDocumentTypeOSgMR) - 8) + 64) + 15;
  *(v8 + 2056) = swift_task_alloc();
  v58 = type metadata accessor for SupportedDocumentType();
  *(v8 + 2064) = v58;
  v59 = *(v58 - 8);
  *(v8 + 2072) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 2080) = swift_task_alloc();
  v61 = type metadata accessor for URL();
  *(v8 + 2088) = v61;
  v62 = *(v61 - 8);
  *(v8 + 2096) = v62;
  v63 = *(v62 + 64) + 15;
  *(v8 + 2104) = swift_task_alloc();
  *(v8 + 2112) = swift_task_alloc();
  *(v8 + 2120) = swift_task_alloc();
  v64 = *(a7 + 112);
  *(v8 + 112) = *(a7 + 96);
  *(v8 + 128) = v64;
  *(v8 + 144) = *(a7 + 128);
  v65 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v65;
  v66 = *(a7 + 80);
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = v66;
  v67 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v67;
  *(v8 + 2128) = type metadata accessor for MainActor();
  *(v8 + 2136) = static MainActor.shared.getter();
  v69 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 2144) = v69;
  *(v8 + 2152) = v68;

  return MEMORY[0x2822009F8](GenerateTextFromMediaController.generateTextFromDocument(userQuery:requestMetadata:documentInfo:associatedScreenshot:intentCallbackManager:), v69, v68);
}