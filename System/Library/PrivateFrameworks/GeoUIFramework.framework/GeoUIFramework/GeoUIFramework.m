uint64_t sub_24FF70A50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for WhereAmIView();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = *(v0 + v8 + 8);

  v12 = *(v0 + v8 + 24);

  v13 = *(v0 + v8 + 40);

  v14 = *(v0 + v8 + 56);

  v15 = v6[6];
  v16 = type metadata accessor for ActionHandler();
  (*(*(v16 - 8) + 8))(v0 + v8 + v15, v16);
  v17 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
  }

  else
  {
    v19 = *(v10 + v17);
  }

  outlined consume of Environment<VRXIdiom>.Content(*(v10 + v6[9]), *(v10 + v6[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24FF70C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMd, &_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24FF70DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMd, &_s7SwiftUI11EnvironmentVy10Foundation6LocaleVGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24FF70F20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  type metadata accessor for ButtonContainerView();
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FF71108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF71178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF711F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF712A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF71390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  type metadata accessor for ButtonContainerView();
  type metadata accessor for RFButtonStyle();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FF71574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF715E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF71654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF716C8()
{
  v1 = (type metadata accessor for ContactDisambiguationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 40);

  v8 = v1[9];
  v9 = type metadata accessor for ActionHandler();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FF717C8()
{
  v1 = type metadata accessor for PrimaryHeaderRichView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24FF7191C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF719C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF71AF4()
{
  v1 = type metadata accessor for PrimaryHeaderRichView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71B7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71C10()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24FF71C54()
{
  v1 = (type metadata accessor for ContactDisambiguationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for GeoContact() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v0 + v3;
  v11 = *(v10 + 8);

  v12 = *(v10 + 16);

  v13 = *(v10 + 40);

  v14 = v1[9];
  v15 = type metadata accessor for ActionHandler();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  v16 = *(v0 + v7 + 16);

  v17 = *(v0 + v7 + 32);

  v18 = *(v0 + v7 + 48);

  v19 = *(v0 + v7 + 64);

  v20 = v5[12];
  v21 = type metadata accessor for ImageElement.ImageStyle();
  (*(*(v21 - 8) + 8))(v0 + v7 + v20, v21);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_24FF71E1C()
{
  v1 = (type metadata accessor for TrafficDisambiguationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 40);

  v8 = v1[9];
  v9 = type metadata accessor for ActionHandler();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  outlined consume of Environment<VRXIdiom>.Content(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FF71F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24FF71FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionHandler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF7208C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionHandler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FF721B8()
{
  v1 = (type metadata accessor for TrafficDisambiguationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 16);

  v8 = *(v5 + 40);

  v9 = v1[9];
  v10 = type metadata accessor for ActionHandler();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  outlined consume of Environment<VRXIdiom>.Content(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v11 = *(v0 + v4 + 16);

  v12 = *(v0 + v4 + 32);

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_24FF722F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageElement.ImageStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FF723A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageElement.ImageStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s14GeoUIFramework0A10DataModelsO021TrafficDisambiguationC5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOs0H3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x74616469646E6163;
  }

  else
  {
    result = 0x65546D6574737973;
  }

  *v0;
  return result;
}

uint64_t WhereAmIView.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GeoDataModels.WhereAmIDataModel(v8, &v7);
}

uint64_t WhereAmIView.mapView.getter()
{
  v0 = *(*(type metadata accessor for MapAspectRatio() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D63BC8]);
  return MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
}

uint64_t WhereAmIView.personRFPin.getter()
{
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for RFMapMarker, 0x277D4C018);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return RFMapMarker.init(coordinate:title:image:tint:)();
}

uint64_t WhereAmIView.shareButton.getter@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = type metadata accessor for SeparatorStyle();
  v85 = *(v2 - 8);
  v86 = v2;
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v2);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for RFButtonStyle();
  v78 = *(v82 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ButtonContainerView();
  v76 = *(v79 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v67 - v11;
  v12 = type metadata accessor for WhereAmIView();
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = v14;
  v73 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CharacterSet();
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for EnvironmentValues();
  v68 = *(v69 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v67 - v24;
  v26 = type metadata accessor for URL();
  v91 = *(v26 - 8);
  v92 = v26;
  v27 = *(v91 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v70 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v90 = &v67 - v29;
  v30 = v1;
  v31 = *(v1 + 80);
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24FF6F000, v31, v32, "RF Share Button", v33, 2u);
    MEMORY[0x25305DF00](v33, -1, -1);
  }

  v34 = *(v30 + 48);
  v35 = *(v30 + 56);
  v87 = *(v30 + 64);
  v36 = v30 + *(v12 + 36);
  v37 = *v36;
  if (*(v36 + 8) == 1)
  {
  }

  else
  {

    outlined copy of Environment<VRXIdiom>.Content(v37, 0);
    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<VRXIdiom>.Content(v37, 0);
    (*(v68 + 8))(v21, v69);
  }

  v93 = v34;
  v94 = v35;
  v95 = v87;
  v39 = VRXIdiom.isWatchOS.getter();
  v93 = StandardMapData.makePunchoutURI(includeLabel:)((v39 & 1) == 0);
  v94 = v40;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v42 = v41;
  (*(v88 + 8))(v18, v89);

  if (v42)
  {
    URL.init(string:)();

    v43 = v91;
    v44 = v92;
  }

  else
  {
    v43 = v91;
    v44 = v92;
    (*(v91 + 56))(v25, 1, 1, v92);
  }

  result = (*(v43 + 48))(v25, 1, v44);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v46 = *(v43 + 32);
    v47 = v90;
    v46(v90, v25, v44);
    v48 = v70;
    (*(v43 + 16))(v70, v47, v44);
    v49 = v30;
    v50 = v73;
    outlined init with copy of WhereAmIView(v49, v73);
    v51 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v52 = (v27 + *(v71 + 80) + v51) & ~*(v71 + 80);
    v53 = swift_allocObject();
    v54 = v44;
    v55 = v53;
    v46((v53 + v51), v48, v54);
    outlined init with take of WhereAmIView(v50, v55 + v52);
    v56 = v74;
    ButtonContainerView.init(buttons:)();
    v57 = v77;
    static PrimitiveButtonStyle<>.rfButton.getter();
    v58 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
    v59 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
    v60 = v75;
    v61 = v79;
    v62 = v82;
    View.buttonStyle<A>(_:)();
    (*(v78 + 8))(v57, v62);
    (*(v76 + 8))(v56, v61);
    v64 = v85;
    v63 = v86;
    v65 = v83;
    (*(v85 + 104))(v83, *MEMORY[0x277D62F40], v86);
    v93 = v61;
    v94 = v62;
    *&v95 = v58;
    *(&v95 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    v66 = v81;
    View.separators(_:isOverride:)();
    (*(v64 + 8))(v65, v63);
    (*(v80 + 8))(v60, v66);
    (*(v91 + 8))(v90, v92);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for WhereAmIView()
{
  result = type metadata singleton initialization cache for WhereAmIView;
  if (!type metadata singleton initialization cache for WhereAmIView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined copy of Environment<VRXIdiom>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<VRXIdiom>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t closure #1 in WhereAmIView.shareButton.getter(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v54 = a1;
  v2 = type metadata accessor for Locale();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v51 - v6;
  v57 = type metadata accessor for ButtonItemButtonStyle.Role();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WhereAmIView();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
  v17 = *(v53 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v20 = &v51 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAsA07DefaultjK5LabelVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAsA07DefaultjK5LabelVG_Qo_MR);
  v61 = *(v64 - 8);
  v21 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v23 = &v51 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
  v24 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v26 = &v51 - v25;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAC07SnippetB0E10buttonRoleyQrAG010ButtonItemK5StyleV0J0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAvA07DefaultnO5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAQ6LocaleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAC07SnippetB0E10buttonRoleyQrAG010ButtonItemK5StyleV0J0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAvA07DefaultnO5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAQ6LocaleVGG_Qo_MR);
  v60 = *(v63 - 8);
  v27 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v59 = &v51 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMR);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24FF88410;
  (*(v13 + 16))(v16, v54, v12);
  outlined init with copy of WhereAmIView(v56, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject() + v29;
  v31 = v23;
  outlined init with take of WhereAmIView(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  v32 = v55;
  v33 = v57;
  (*(v55 + 104))(v9, *MEMORY[0x277D63A98], v57);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel> and conformance ShareLink<A, B, C, D>, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
  v34 = v53;
  View.buttonRole(_:)();
  (*(v32 + 8))(v9, v33);
  (*(v17 + 8))(v20, v34);
  KeyPath = swift_getKeyPath();
  v36 = [objc_opt_self() sharedPreferences];
  v37 = [v36 languageCode];

  if (v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v65;
    v38 = v66;
  }

  else
  {
    v40 = v51;
    static Locale.current.getter();
    Locale.identifier.getter();
    v39 = v65;
    v41 = v40;
    v38 = v66;
    (*(v65 + 8))(v41, v66);
  }

  v42 = v67;
  Locale.init(identifier:)();
  v43 = v62;
  v44 = &v26[*(v62 + 36)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMR);
  (*(v39 + 32))(v44 + *(v45 + 28), v42, v38);
  *v44 = KeyPath;
  (*(v61 + 32))(v26, v31, v64);
  v46 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>();
  v47 = v59;
  View.privacySensitive(_:)();
  outlined destroy of StandardActionHandler?(v26, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
  v68 = v43;
  v69 = v46;
  swift_getOpaqueTypeConformance2();
  v48 = v63;
  v49 = View.eraseToAnyView()();
  (*(v60 + 8))(v47, v48);
  result = v58;
  *(v58 + 32) = v49;
  return result;
}

void closure #1 in closure #1 in WhereAmIView.shareButton.getter(char a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D47B40]) init];
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = MEMORY[0x25305D940](v10, v12);

  [v9 setAceId_];

  v14 = a2 + *(type metadata accessor for WhereAmIView() + 40);
  v15 = *v14;
  if (*v14)
  {
    v16 = v9;
    v17 = v15;
    dispatch thunk of Context.perform(aceCommand:)();

    v18 = v17;
    if (a1)
    {
      dispatch thunk of Context.willBeginEditing()();
    }

    else
    {
      dispatch thunk of Context.didEndEditing()();
    }
  }

  else
  {
    v19 = *(v14 + 8);
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t key path setter for EnvironmentValues.locale : EnvironmentValues(uint64_t a1)
{
  v2 = *(*(type metadata accessor for Locale() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.locale.setter();
}

uint64_t WhereAmIView.header.getter()
{
  v4 = v0[6];
  v5 = v0[7];
  if (v0[5])
  {
    v1 = v0[4];
  }

  v3 = v0[5];

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
}

uint64_t WhereAmIView.body.getter()
{
  v1 = *(type metadata accessor for WhereAmIView() - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  outlined init with copy of WhereAmIView(v0, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  outlined init with take of WhereAmIView(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in WhereAmIView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v100 = a2;
  v93 = type metadata accessor for SeparatorStyle();
  v92 = *(v93 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_MR);
  v98 = *(v97 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  v90 = &v80 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_MR);
  v106 = *(v99 - 8);
  v6 = v106[8];
  v7 = MEMORY[0x28223BE20](v99);
  v96 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v80 - v9;
  v95 = type metadata accessor for PrimaryHeaderRichView();
  v105 = *(v95 - 8);
  v10 = v105[8];
  v11 = MEMORY[0x28223BE20](v95);
  v94 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v80 - v13;
  v14 = type metadata accessor for WhereAmIView();
  v15 = v14 - 8;
  v84 = *(v14 - 8);
  v83 = *(v84 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MapAspectRatio();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MapView();
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_MR);
  v87 = *(v86 - 8);
  v27 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v29 = &v80 - v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00dC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAcAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00dC0V_Qo__Qo_MR);
  v88 = *(v89 - 8);
  v30 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v82 = &v80 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v102 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v80 - v38;
  MEMORY[0x28223BE20](v37);
  v101 = &v80 - v40;
  (*(v19 + 104))(v22, *MEMORY[0x277D63BC8], v18);
  MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
  v41 = v81;
  outlined init with copy of WhereAmIView(v81, v17);
  v42 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v43 = swift_allocObject();
  outlined init with take of WhereAmIView(v17, v43 + v42);
  v44 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type MapView and conformance MapView, MEMORY[0x277D63F78]);
  View.onTapGesture(count:perform:)();

  (*(v85 + 8))(v26, v23);
  v45 = *(v41 + *(v15 + 36));
  Namespace.wrappedValue.getter();
  *&v111 = v23;
  *(&v111 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v82;
  v47 = v86;
  View.mapScope(_:)();
  (*(v87 + 8))(v29, v47);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v88 + 32))(v39, v46, v89);
  v48 = &v39[*(v33 + 44)];
  v49 = v116;
  *(v48 + 4) = v115;
  *(v48 + 5) = v49;
  *(v48 + 6) = v117;
  v50 = v112;
  *v48 = v111;
  *(v48 + 1) = v50;
  v51 = v114;
  *(v48 + 2) = v113;
  *(v48 + 3) = v51;
  v52 = v39;
  v53 = v101;
  sub_24FF71108(v52, v101);
  v54 = v103;
  WhereAmIView.header.getter();
  v55 = v90;
  WhereAmIView.shareButton.getter(v90);
  v56 = v92;
  v57 = v91;
  v58 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277D62F40], v93);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v60 = type metadata accessor for ButtonContainerView();
  v61 = type metadata accessor for RFButtonStyle();
  v62 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
  v63 = lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  v107 = v60;
  v108 = v61;
  v109 = v62;
  v110 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v59;
  v108 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v65 = v104;
  v66 = v97;
  View.separators(_:isOverride:)();
  (*(v56 + 8))(v57, v58);
  (*(v98 + 8))(v55, v66);
  v67 = v102;
  sub_24FF71178(v53, v102);
  v68 = v105[2];
  v69 = v94;
  v70 = v95;
  v68(v94, v54, v95);
  v71 = v106[2];
  v72 = v96;
  v73 = v99;
  v71(v96, v65, v99);
  v74 = v67;
  v75 = v100;
  sub_24FF71178(v74, v100);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVG_AO017PrimaryHeaderRichE0VAeOE10separators_10isOverrideQr0qG014SeparatorStyleO_SbtFQOyAeOEAY_AZQrA1__SbtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAO015ButtonContainerE0V_AO13RFButtonStyleVQo__Qo__Qo_tMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVG_AO017PrimaryHeaderRichE0VAeOE10separators_10isOverrideQr0qG014SeparatorStyleO_SbtFQOyAeOEAY_AZQrA1__SbtFQOyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAO015ButtonContainerE0V_AO13RFButtonStyleVQo__Qo__Qo_tMR);
  v68((v75 + *(v76 + 48)), v69, v70);
  v71((v75 + *(v76 + 64)), v72, v73);
  v77 = v106[1];
  v77(v104, v73);
  v78 = v105[1];
  v78(v103, v70);
  outlined destroy of StandardActionHandler?(v101, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
  v77(v72, v73);
  v78(v69, v70);
  return outlined destroy of StandardActionHandler?(v102, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAeAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00fE0V_Qo__Qo_AA16_FlexFrameLayoutVGMR);
}

uint64_t closure #1 in closure #1 in WhereAmIView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = type metadata accessor for WhereAmIView();
  v19 = a1 + *(v18 + 24);
  ActionHandler.wrappedValue.getter();
  v20 = type metadata accessor for StandardActionHandler();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    return outlined destroy of StandardActionHandler?(v17, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  v40 = v6;
  v42 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24FF88410;
  v24 = type metadata accessor for Command();
  v25 = MEMORY[0x277D63770];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = a1 + *(v18 + 36);
  v30 = *v29;
  if ((*(v29 + 8) & 1) == 0)
  {
    v39 = *(a1 + 64);
    v37 = v27;
    v38 = v26;

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<VRXIdiom>.Content(v30, 0);
    (*(v43 + 8))(v9, v40);
    v27 = v37;
    v26 = v38;
    v28 = v39;
  }

  v44 = v26;
  v45 = v27;
  v46 = v28;
  v32 = VRXIdiom.isWatchOS.getter();
  StandardMapData.makePunchoutURI(includeLabel:)((v32 & 1) == 0);
  v33 = boxed_opaque_existential_1;
  AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  (*(*(v24 - 8) + 104))(v33, *MEMORY[0x277D63738], v24);
  ActionProperty.init(_:)();
  v34 = type metadata accessor for ActionProperty();
  (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
  v35 = type metadata accessor for InteractionType();
  v36 = v42;
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v36, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v13, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v21 + 8))(v17, v20);
}

uint64_t WhereAmIView.init(model:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v5 = type metadata accessor for WhereAmIView();
  v6 = a2 + v5[6];
  ActionHandler.init()();
  *(a2 + v5[7]) = 0;
  v7 = v5[8];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v5[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = (a2 + v5[10]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.init()();
  *v9 = result;
  v9[1] = v11;
  return result;
}

uint64_t key path getter for EnvironmentValues.currentIdiom : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.currentIdiom.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance WhereAmIView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  outlined init with copy of WhereAmIView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of WhereAmIView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0P08_MapKit_aB0E8mapScopeyQrAA9NamespaceV2IDVFQOyAgAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB00gD0V_Qo__Qo_AA16_FlexFrameLayoutVG_AQ017PrimaryHeaderRichD0VAgQE10separators_10isOverrideQr0rH014SeparatorStyleO_SbtFQOyAgQEA__A0_QrA3__SbtFQOyAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAQ015ButtonContainerD0V_AQ13RFButtonStyleVQo__Qo__Qo_tGMR);
  return ComponentStack.init(content:)();
}

uint64_t static WhereAmIView_Previews.previews.getter()
{
  if (one-time initialization token for myLocation != -1)
  {
    swift_once();
  }

  type metadata accessor for WhereAmIView();
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type WhereAmIView and conformance WhereAmIView, type metadata accessor for WhereAmIView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static WhereAmIView_Previews.previews.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  v18 = a1[4];
  v4 = v18;
  v5 = a1[1];
  v15[0] = *a1;
  v6 = v15[0];
  v15[1] = v5;
  *(a2 + 32) = v16;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v6;
  *(a2 + 16) = v5;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  outlined init with copy of GeoDataModels.WhereAmIDataModel(v15, &v14);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v7 = type metadata accessor for WhereAmIView();
  v8 = a2 + v7[6];
  ActionHandler.init()();
  *(a2 + v7[7]) = 0;
  v9 = v7[8];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  swift_storeEnumTagMultiPayload();
  v10 = a2 + v7[9];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = (a2 + v7[10]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  result = EnvironmentObject.init()();
  *v11 = result;
  v11[1] = v13;
  return result;
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance WhereAmIView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance WhereAmIView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for myLocation()
{
  myLocation.label._countAndFlagsBits = 0xD000000000000010;
  myLocation.label._object = 0x800000024FF8A760;
  result = 37.3349;
  *&myLocation.latitude = xmmword_24FF88420;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with copy of WhereAmIView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhereAmIView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WhereAmIView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhereAmIView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in WhereAmIView.shareButton.getter()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for WhereAmIView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in WhereAmIView.shareButton.getter(v0 + v2, v5);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for RFMapMarker(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WhereAmIView_Previews and conformance WhereAmIView_Previews()
{
  result = lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews;
  if (!lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews;
  if (!lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WhereAmIView_Previews and conformance WhereAmIView_Previews);
  }

  return result;
}

void type metadata completion function for WhereAmIView()
{
  type metadata accessor for RFMapMarker(319, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Locale>(319, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x277CC9788]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<Locale>(319, &lazy cache variable for type metadata for Environment<VRXIdiom>, type metadata accessor for VRXIdiom);
        if (v3 <= 0x3F)
        {
          type metadata accessor for EnvironmentObject<Context>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<Locale>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for VRXIdiom()
{
  if (!lazy cache variable for type metadata for VRXIdiom)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for VRXIdiom);
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ButtonContainerView and conformance ButtonContainerView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in WhereAmIView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WhereAmIView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in WhereAmIView.body.getter(v4, a1);
}

uint64_t partial apply for closure #1 in closure #1 in WhereAmIView.body.getter()
{
  v1 = *(type metadata accessor for WhereAmIView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in WhereAmIView.body.getter(v2);
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

uint64_t outlined destroy of StandardActionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for WhereAmIView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = v1[6];
  v11 = type metadata accessor for ActionHandler();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Locale();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  outlined consume of Environment<VRXIdiom>.Content(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void partial apply for closure #1 in closure #1 in WhereAmIView.shareButton.getter(char a1)
{
  v3 = *(type metadata accessor for WhereAmIView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in closure #1 in WhereAmIView.shareButton.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP07SnippetB0E10buttonRoleyQrAF010ButtonItemI5StyleV0H0OFQOyAA9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAuA07DefaultlM5LabelVG_Qo_AA30_EnvironmentKeyWritingModifierVyAP6LocaleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel> and conformance ShareLink<A, B, C, D>, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMd, &_s7SwiftUI9ShareLinkVys15CollectionOfOneVy10Foundation3URLVGs5NeverOAkA07DefaultcD5LabelVGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Locale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy10Foundation6LocaleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonRole(_:)>>.0, _EnvironmentKeyWritingModifier<Locale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ParkingLocationView.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of GeoDataModels.ParkingLocationDataModel(v8, &v7);
}

id ParkingLocationView.navCommand.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
  [v1 setLat_];
  [v1 setLng_];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C1E8]) init];
  [v2 setLocation_];
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = MEMORY[0x25305D940](v4, v3);

  [v2 setName_];

  [v2 setDirectionsMode_];
  return v2;
}

uint64_t ParkingLocationView.parkingPin.getter()
{
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for RFMapMarker, 0x277D4C018);
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = objc_allocWithZone(MEMORY[0x277D4BF80]);

  [objc_msgSend(v5 init)];
  return RFMapMarker.init(coordinate:title:image:tint:)();
}

uint64_t ParkingLocationView.mapView.getter()
{
  v1 = type metadata accessor for MapAspectRatio();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24FF88670;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for RFMapMarker, 0x277D4C018);
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  v11 = objc_allocWithZone(MEMORY[0x277D4BF80]);

  [objc_msgSend(v11 init)];
  *(v6 + 32) = RFMapMarker.init(coordinate:title:image:tint:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D63BC8], v1);
  return MapView.init(markers:annotations:mapItemIdentifiers:polyline:aspectRatio:cameraDistance:showsUserLocation:)();
}

uint64_t ParkingLocationView.directionsButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v38 = type metadata accessor for SeparatorStyle();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for RFButtonStyle();
  v42 = *(v45 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ButtonContainerView();
  v37 = *(v41 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - v14;
  v15 = type metadata accessor for ParkingLocationView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = *(v2 + 80);
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v6;
    v21 = v3;
    v22 = v2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24FF6F000, v18, v19, "RF directions Button", v23, 2u);
    v24 = v23;
    v2 = v22;
    v3 = v21;
    v6 = v20;
    MEMORY[0x25305DF00](v24, -1, -1);
  }

  outlined init with copy of ParkingLocationView(v2, &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  ButtonContainerView.init(buttons:)();
  v27 = v36;
  static PrimitiveButtonStyle<>.rfButton.getter();
  v28 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
  v29 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  v30 = v39;
  v31 = v41;
  v32 = v45;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v27, v32);
  (*(v37 + 8))(v11, v31);
  v33 = v38;
  (*(v3 + 104))(v6, *MEMORY[0x277D62F40], v38);
  v46 = v31;
  v47 = v32;
  v48 = v28;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v44;
  View.separators(_:isOverride:)();
  (*(v3 + 8))(v6, v33);
  (*(v43 + 8))(v30, v34);
}

uint64_t type metadata accessor for ParkingLocationView()
{
  result = type metadata singleton initialization cache for ParkingLocationView;
  if (!type metadata singleton initialization cache for ParkingLocationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  v2 = type metadata accessor for ButtonItemButtonStyle.Role();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ParkingLocationView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMR);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA5LabelVyAMyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAA0G0VyAA5LabelVyAMyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo_MR);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E10buttonRoleyQrAE010ButtonItemI5StyleV0H0OFQOyAA0I0VyAA5LabelVyANyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAC07SnippetB0E10buttonRoleyQrAE010ButtonItemI5StyleV0H0OFQOyAA0I0VyAA5LabelVyANyAA4TextVAA5ImageVGAA05EmptyC0VGG_Qo__Qo_MR);
  v35 = *(v32 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = &v30 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI7AnyViewVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24FF88410;
  outlined init with copy of ParkingLocationView(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Label<Text, Image>, EmptyView> and conformance Label<A, B>, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMd, &_s7SwiftUI5LabelVyACyAA4TextVAA5ImageVGAA9EmptyViewVGMR);
  Button.init(action:label:)();
  v23 = v36;
  v22 = v37;
  v24 = v34;
  (*(v36 + 104))(v34, *MEMORY[0x277D63A98], v37);
  v25 = lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Label<Label<Text, Image>, EmptyView>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAEyAA4TextVAA5ImageVGAA9EmptyViewVGGMR);
  View.buttonRole(_:)();
  (*(v23 + 8))(v24, v22);
  (*(v31 + 8))(v11, v8);
  v39 = v8;
  v40 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.privacySensitive(_:)();
  (*(v33 + 8))(v15, v12);
  v39 = v12;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  v28 = View.eraseToAnyView()();
  (*(v35 + 8))(v18, v27);
  *(v19 + 32) = v28;
  return v19;
}

uint64_t outlined init with copy of ParkingLocationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParkingLocationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ParkingLocationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParkingLocationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ParkingLocationView.directionsButton.getter()
{
  v1 = *(type metadata accessor for ParkingLocationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in ParkingLocationView.directionsButton.getter(v2);
}

uint64_t closure #1 in closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = a1 + *(type metadata accessor for ParkingLocationView() + 24);
  ActionHandler.wrappedValue.getter();
  v15 = type metadata accessor for StandardActionHandler();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    return outlined destroy of StandardActionHandler?(v13, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24FF88410;
  v19 = type metadata accessor for Command();
  v20 = MEMORY[0x277D63770];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  *boxed_opaque_existential_1 = ParkingLocationView.navCommand.getter();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63710], v19);
  ActionProperty.init(_:)();
  v22 = type metadata accessor for ActionProperty();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  v23 = type metadata accessor for InteractionType();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v5, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v9, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v16 + 8))(v13, v15);
}

uint64_t closure #2 in closure #1 in ParkingLocationView.directionsButton.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  return Label.init(title:icon:)();
}

uint64_t closure #1 in closure #2 in closure #1 in ParkingLocationView.directionsButton.getter(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  lazy protocol witness table accessor for type String and conformance String();

  return Label<>.init<A>(_:systemImage:)();
}

uint64_t ParkingLocationView.header.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  if (v0[1])
  {
    v3 = *v0;
  }

  v5 = v0[1];

  return PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
}

uint64_t ParkingLocationView.body.getter()
{
  v1 = type metadata accessor for ParkingLocationView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  outlined init with copy of ParkingLocationView(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in ParkingLocationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65[1] = a1;
  v76 = a2;
  v69 = type metadata accessor for SeparatorStyle();
  v68 = *(v69 - 8);
  v2 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo_MR);
  v74 = *(v73 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = v65 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAcDEAE_AFQrAI_SbtFQOyAcAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAD0m9ContainerC0V_AD08RFButtonJ0VQo__Qo__Qo_MR);
  v82 = *(v75 - 8);
  v6 = v82[8];
  v7 = MEMORY[0x28223BE20](v75);
  v72 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = v65 - v9;
  v71 = type metadata accessor for PrimaryHeaderRichView();
  v81 = *(v71 - 8);
  v10 = v81[8];
  v11 = MEMORY[0x28223BE20](v71);
  v70 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = v65 - v13;
  v14 = type metadata accessor for MapView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapC0V_Qo_MR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVGMR);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v79 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v65 - v30;
  MEMORY[0x28223BE20](v29);
  v77 = v65 - v32;
  ParkingLocationView.mapView.getter();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type MapView and conformance MapView, MEMORY[0x277D63F78]);
  View.onTapGesture(count:perform:)();
  (*(v15 + 8))(v18, v14);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v20 + 32))(v31, v23, v19);
  v33 = &v31[*(v25 + 44)];
  v34 = v92;
  *(v33 + 4) = v91;
  *(v33 + 5) = v34;
  *(v33 + 6) = v93;
  v35 = v88;
  *v33 = v87;
  *(v33 + 1) = v35;
  v36 = v90;
  *(v33 + 2) = v89;
  *(v33 + 3) = v36;
  v37 = v77;
  sub_24FF71574(v31, v77);
  v38 = v78;
  ParkingLocationView.header.getter();
  v39 = v66;
  ParkingLocationView.directionsButton.getter(v66);
  v40 = v68;
  v41 = v67;
  v42 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277D62F40], v69);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy07SnippetB00g9ContainerC0V_AF08RFButtonE0VQo_MR);
  v44 = type metadata accessor for ButtonContainerView();
  v45 = type metadata accessor for RFButtonStyle();
  v46 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ButtonContainerView and conformance ButtonContainerView, MEMORY[0x277D63D38]);
  v47 = _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, MEMORY[0x277D63B70]);
  v83 = v44;
  v84 = v45;
  v85 = v46;
  v86 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v43;
  v84 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v80;
  v50 = v73;
  View.separators(_:isOverride:)();
  (*(v40 + 8))(v41, v42);
  (*(v74 + 8))(v39, v50);
  v51 = v79;
  sub_24FF715E4(v37, v79);
  v52 = v81[2];
  v53 = v70;
  v54 = v38;
  v55 = v71;
  v52(v70, v54, v71);
  v56 = v82[2];
  v57 = v72;
  v58 = v75;
  v56(v72, v49, v75);
  v59 = v51;
  v60 = v76;
  sub_24FF715E4(v59, v76);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVG_AI017PrimaryHeaderRichE0VAeIE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAeIEAR_ASQrAV_SbtFQOyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAI015ButtonContainerE0V_AI08RFButtonX0VQo__Qo__Qo_tMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapE0V_Qo_AA16_FlexFrameLayoutVG_AI017PrimaryHeaderRichE0VAeIE10separators_10isOverrideQr0K3Kit14SeparatorStyleO_SbtFQOyAeIEAR_ASQrAV_SbtFQOyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAI015ButtonContainerE0V_AI08RFButtonX0VQo__Qo__Qo_tMR);
  v52((v60 + *(v61 + 48)), v53, v55);
  v56((v60 + *(v61 + 64)), v57, v58);
  v62 = v82[1];
  v62(v80, v58);
  v63 = v81[1];
  v63(v78, v55);
  sub_24FF71654(v77);
  v62(v57, v58);
  v63(v53, v55);
  return sub_24FF71654(v79);
}

void closure #1 in closure #1 in ParkingLocationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    URL.init(string:)();
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    v9 = 0;
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      URL._bridgeToObjectiveC()(v8);
      v9 = v10;
      (*(v7 + 8))(v3, v6);
    }

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 openSensitiveURL:v9 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ParkingLocationView.init(model:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v5 = a2 + *(type metadata accessor for ParkingLocationView() + 24);
  return ActionHandler.init()();
}

uint64_t protocol witness for View.body.getter in conformance ParkingLocationView(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of ParkingLocationView(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of ParkingLocationView(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA0D0PAAE12onTapGesture5count7performQrSi_yyctFQOy07SnippetB003MapD0V_Qo_AA16_FlexFrameLayoutVG_AK017PrimaryHeaderRichD0VAgKE10separators_10isOverrideQr0L3Kit14SeparatorStyleO_SbtFQOyAgKEAT_AUQrAX_SbtFQOyAgAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyAK015ButtonContainerD0V_AK08RFButtonY0VQo__Qo__Qo_tGMR);
  return ComponentStack.init(content:)();
}

uint64_t static ParkingLocationView_Previews.previews.getter()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  v0 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v2 = *pickupTruck.note.value._countAndFlagsBits;
  v1 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v9[2] = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v9[3] = v0;
  v9[0] = v2;
  v9[1] = v1;
  v3 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v10 = *pickupTruck.note.value._countAndFlagsBits;
  v11 = v3;
  v4 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v12 = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v13 = v4;
  v6[4] = v10;
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v4;
  v7 = 0x6F69746365726944;
  v8 = 0xEA0000000000736ELL;
  outlined init with copy of GeoParkedCar(v9, v6);
  type metadata accessor for ParkingLocationView();
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t pickupTruck.unsafeMutableAddressor()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  return pickupTruck.note.value._countAndFlagsBits;
}

uint64_t implicit closure #1 in static ParkingLocationView_Previews.previews.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v11 = a1[2];
  v12 = v3;
  v13 = a1[4];
  v4 = v13;
  v5 = a1[1];
  v10[0] = *a1;
  v6 = v10[0];
  v10[1] = v5;
  *(a2 + 32) = v11;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v6;
  *(a2 + 16) = v5;
  type metadata accessor for RFMapMarker(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(v10, &v9);
  *(a2 + 80) = OS_os_log.init(subsystem:category:)();
  v7 = a2 + *(type metadata accessor for ParkingLocationView() + 24);
  return ActionHandler.init()();
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance ParkingLocationView_Previews()
{
  if (one-time initialization token for pickupTruck != -1)
  {
    swift_once();
  }

  v0 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v2 = *pickupTruck.note.value._countAndFlagsBits;
  v1 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v9[2] = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v9[3] = v0;
  v9[0] = v2;
  v9[1] = v1;
  v3 = *(pickupTruck.note.value._countAndFlagsBits + 16);
  v10 = *pickupTruck.note.value._countAndFlagsBits;
  v11 = v3;
  v4 = *(pickupTruck.note.value._countAndFlagsBits + 48);
  v12 = *(pickupTruck.note.value._countAndFlagsBits + 32);
  v13 = v4;
  v6[4] = v10;
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v4;
  v7 = 0x6F69746365726944;
  v8 = 0xEA0000000000736ELL;
  outlined init with copy of GeoParkedCar(v9, v6);
  type metadata accessor for ParkingLocationView();
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
  _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView);
  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance ParkingLocationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance ParkingLocationView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for pickupTruck()
{
  v0 = swift_slowAlloc();
  pickupTruck.note.value._countAndFlagsBits = v0;
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xD000000000000024;
  *(v0 + 24) = 0x800000024FF8A730;
  *(v0 + 32) = 0x432064656B726150;
  *(v0 + 40) = 0xEA00000000007261;
  result = 37.3349;
  *(v0 + 48) = xmmword_24FF88420;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews()
{
  result = lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews;
  if (!lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews;
  if (!lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParkingLocationView_Previews and conformance ParkingLocationView_Previews);
  }

  return result;
}

uint64_t type metadata completion function for ParkingLocationView()
{
  result = type metadata accessor for RFMapMarker(319, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s9SnippetUI19ButtonContainerViewVAC05SwiftB00E0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in ParkingLocationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ParkingLocationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in ParkingLocationView.body.getter(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ParkingLocationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 72);

  v9 = v1[8];
  v10 = type metadata accessor for ActionHandler();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ParkingLocationView.directionsButton.getter()
{
  v1 = *(type metadata accessor for ParkingLocationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in ParkingLocationView.directionsButton.getter(v2);
}

uint64_t GeoParkedCar.label.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall GeoParkedCar.init(note:localizedAddress:locationInfo:)(GeoUIFramework::GeoParkedCar *__return_ptr retstr, Swift::String_optional note, Swift::String_optional localizedAddress, GeoUIFramework::StandardMapData locationInfo)
{
  v4 = *locationInfo.label._countAndFlagsBits;
  v5 = *(locationInfo.label._countAndFlagsBits + 8);
  retstr->note = note;
  retstr->localizedAddress = localizedAddress;
  retstr->locationInfo.label._countAndFlagsBits = v4;
  retstr->locationInfo.label._object = v5;
  *&retstr->locationInfo.latitude = *(locationInfo.label._countAndFlagsBits + 16);
}

uint64_t GeoParkedCar.note.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GeoParkedCar.localizedAddress.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GeoParkedCar.locationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 48);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoParkedCar.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoParkedCar.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoParkedCar.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoParkedCar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v13 = v1[7];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  v15 = v24;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v15)
  {
    v17 = v20;
    v18 = v21;
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v18;
    v26 = v17;
    v27 = v12;
    v28 = v13;
    v29 = 2;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData()
{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

uint64_t GeoParkedCar.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D9ParkedCarV10CodingKeys33_D00CE07CA4CDF230011B65C15BB39B08LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v26 = v11;
  LOBYTE(v31[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v25 = v14;
  v36 = 2;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v34;
  v18 = v35;
  v19 = v26;
  *&v27 = v26;
  v20 = v25;
  *(&v27 + 1) = v13;
  *&v28 = v25;
  *(&v28 + 1) = v16;
  v29 = v34;
  v30 = v35;
  v21 = v28;
  *a2 = v27;
  a2[1] = v21;
  v22 = v30;
  a2[2] = v29;
  a2[3] = v22;
  outlined init with copy of GeoParkedCar(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v19;
  v31[1] = v13;
  v31[2] = v20;
  v31[3] = v16;
  v32 = v17;
  v33 = v18;
  return outlined destroy of GeoParkedCar(v31);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoParkedCar(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GeoParkedCar(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GeoParkedCar.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoParkedCar.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoParkedCar.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FF8A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ContactDisambiguationView.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for ContactDisambiguationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v5 = *(v40 - 8);
  v39 = *(v5 + 64);
  v6 = MEMORY[0x28223BE20](v40);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v37 = type metadata accessor for PrimaryHeaderRichView();
  v10 = *(v37 - 8);
  v36 = *(v10 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v16 = *v1;
  v15 = v1[1];
  v56 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D63F88];
  v54 = v16;
  v55 = v15;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v46 = 0u;
  v45 = 0u;
  v44 = 0;
  v43 = 0u;
  v42 = 0u;

  v33 = v14;
  PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)();
  *&v51 = v1[2];
  KeyPath = swift_getKeyPath();
  outlined init with copy of ContactDisambiguationView(v1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactDisambiguationView);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  outlined init with take of ContactDisambiguationView(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ContactDisambiguationView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [GeoContact] and conformance [A], &_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type GeoContact and conformance GeoContact, type metadata accessor for GeoContact);
  v19 = type metadata accessor for SimpleItemRichView();
  v20 = lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  v54 = v19;
  v55 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v9;
  ForEach<>.init(_:id:content:)();
  v22 = v35;
  v23 = v37;
  (*(v10 + 16))(v35, v14, v37);
  v24 = v38;
  v25 = v21;
  v26 = v21;
  v27 = v40;
  (*(v5 + 16))(v38, v25, v40);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = (v36 + *(v5 + 80) + v28) & ~*(v5 + 80);
  v30 = swift_allocObject();
  (*(v10 + 32))(v30 + v28, v22, v23);
  (*(v5 + 32))(v30 + v29, v24, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMd, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type DisambiguationStandardView<PrimaryHeaderRichView, ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0>> and conformance DisambiguationStandardView<A, B>, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMd, &_s9SnippetUI26DisambiguationStandardViewVyAA017PrimaryHeaderRichE0V05SwiftB07ForEachVySay14GeoUIFramework0L7ContactVGAkF0E0PAAE15componentTapped12isNavigation7performQrSb_yyctFQOyAA010SimpleItemhE0V_Qo_GGMR);
  ComponentStack.init(content:)();
  (*(v5 + 8))(v26, v27);
  return (*(v10 + 8))(v33, v23);
}

uint64_t type metadata accessor for ContactDisambiguationView()
{
  result = type metadata singleton initialization cache for ContactDisambiguationView;
  if (!type metadata singleton initialization cache for ContactDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v85 = a3;
  v4 = type metadata accessor for GeoContact();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = v6;
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContactDisambiguationView();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = v9;
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SimpleItemRichView();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ImageElement.ImageStyle();
  v73 = *(v86 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v86);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ImageElement.SourceType();
  v69 = *(v15 - 8);
  v16 = v69;
  v17 = *(v69 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  v23 = type metadata accessor for ImageElement();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v70 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for RFImageView();
  v74 = *(v87 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x28223BE20](v87);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  GeoContact.image.getter();
  v29 = *(v16 + 104);
  v29(v22, *MEMORY[0x277D62C90], v15);
  v71 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v68 = 0x800000024FF8A620;
  if (v71 == 2)
  {
    v30 = 0xD000000000000013;
  }

  else
  {
    v30 = 0x6C7070612E6D6F63;
  }

  if (v71 == 2)
  {
    v31 = 0x800000024FF8A620;
  }

  else
  {
    v31 = 0xEE007370614D2E65;
  }

  (*(v73 + 104))(v72, *MEMORY[0x277D62B78], v86);
  v73 = v30;
  ImageElement.AppIcon.init(_:imageStyle:)();
  v29(v20, *MEMORY[0x277D62C88], v15);
  static ImageElement.badgedImage(image:badge:)();
  v32 = *(v69 + 8);
  v32(v20, v15);
  v32(v22, v15);
  v33 = v31;
  v34 = v68;
  v86 = v28;
  RFImageView.init(_:)();
  v35 = 5459283;
  v114 = MEMORY[0x277D837D0];
  v115 = MEMORY[0x277D63F88];
  v36 = *(v88 + 32);
  v112 = *(v88 + 24);
  v113 = v36;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  if (v71 == 2 && v34 == v33)
  {

    v37 = 0xE300000000000000;
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      v35 = 0;
    }

    v37 = 0xE000000000000000;
    if (v38)
    {
      v37 = 0xE300000000000000;
    }
  }

  v102 = v35;
  v103 = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  static Color.green.getter();
  v44 = Text.foregroundColor(_:)();
  v46 = v45;
  v48 = v47;

  outlined consume of Text.Storage(v39, v41, v43 & 1);

  static Font.title2.getter();
  v49 = Text.font(_:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  outlined consume of Text.Storage(v44, v46, v48 & 1);

  v104 = MEMORY[0x277CE0BD0];
  v105 = MEMORY[0x277D638F0];
  v56 = swift_allocObject();
  v102 = v56;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53 & 1;
  *(v56 + 40) = v55;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v57 = v87;
  v89[3] = v87;
  v89[4] = MEMORY[0x277D63B18];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
  v59 = v74;
  (*(v74 + 16))(boxed_opaque_existential_1, v86, v57);
  v60 = v80;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  v61 = v77;
  outlined init with copy of ContactDisambiguationView(v78, v77, type metadata accessor for ContactDisambiguationView);
  v62 = v82;
  outlined init with copy of ContactDisambiguationView(v88, v82, type metadata accessor for GeoContact);
  v63 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v64 = (v76 + *(v79 + 80) + v63) & ~*(v79 + 80);
  v65 = swift_allocObject();
  outlined init with take of ContactDisambiguationView(v61, v65 + v63, type metadata accessor for ContactDisambiguationView);
  outlined init with take of ContactDisambiguationView(v62, v65 + v64, type metadata accessor for GeoContact);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  v66 = v84;
  View.componentTapped(isNavigation:perform:)();

  (*(v83 + 8))(v60, v66);
  return (*(v59 + 8))(v86, v87);
}

uint64_t partial apply for closure #1 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactDisambiguationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ContactDisambiguationView.body.getter(a1, v6, a2);
}

uint64_t closure #1 in closure #1 in ContactDisambiguationView.body.getter(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - v14;
  v16 = a1[3];
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24FF6F000, v16, v17, "component tapped", v18, 2u);
    MEMORY[0x25305DF00](v18, -1, -1);
  }

  v19 = a1 + *(type metadata accessor for ContactDisambiguationView() + 28);
  ActionHandler.wrappedValue.getter();
  v20 = type metadata accessor for StandardActionHandler();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    return outlined destroy of StandardActionHandler?(v15, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v23 = swift_allocObject();
  v34 = xmmword_24FF88410;
  *(v23 + 16) = xmmword_24FF88410;
  v24 = a1[4];
  v25 = a1[5];
  v35 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v34;
  v36 = 0x6E65697069636552;
  v37 = 0xE900000000000074;
  v27 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v29 = *(a2 + 56);
  v28 = *(a2 + 64);
  *(inited + 96) = v27;
  *(inited + 72) = v29;
  *(inited + 80) = v28;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StandardActionHandler?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v30 = type metadata accessor for Command();
  v31 = MEMORY[0x277D63770];
  *(v23 + 56) = v30;
  *(v23 + 64) = v31;
  __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  v32 = type metadata accessor for ActionProperty();
  (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
  v33 = type metadata accessor for InteractionType();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v7, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v11, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v21 + 8))(v15, v20);
}

uint64_t closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = type metadata accessor for PrimaryHeaderRichView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  (*(v5 + 16))(v8, v17[0], v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type PrimaryHeaderRichView and conformance PrimaryHeaderRichView, MEMORY[0x277D63DC0]);
  lazy protocol witness table accessor for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>();
  return DisambiguationStandardView.init(header:content:)();
}

uint64_t partial apply for closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimaryHeaderRichView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return closure #2 in ContactDisambiguationView.body.getter(v1 + v4, v7, a1);
}

uint64_t ContactDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  type metadata accessor for OS_os_log();
  *(a2 + 24) = OS_os_log.init(subsystem:category:)();
  *(a2 + 32) = 0xD00000000000002CLL;
  *(a2 + 40) = 0x800000024FF8A800;
  v3 = a2 + *(type metadata accessor for ContactDisambiguationView() + 28);
  return ActionHandler.init()();
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t static SampleView_Previews.previews.getter()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactDisambiguationView();
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static SampleView_Previews.previews.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  type metadata accessor for OS_os_log();

  a2[3] = OS_os_log.init(subsystem:category:)();
  a2[4] = 0xD00000000000002CLL;
  a2[5] = 0x800000024FF8A800;
  v5 = a2 + *(type metadata accessor for ContactDisambiguationView() + 28);
  return ActionHandler.init()();
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance SampleView_Previews()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactDisambiguationView();
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance SampleView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance SampleView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

uint64_t one-time initialization function for BrandonBacon()
{
  v0 = type metadata accessor for GeoContact();
  __swift_allocate_value_buffer(v0, BrandonBacon);
  v1 = __swift_project_value_buffer(v0, BrandonBacon);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x277D62AA0];
  v4 = type metadata accessor for ImageElement.ImageStyle();
  result = (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  strcpy((v1 + 24), "Brandon Bacon");
  *(v1 + 38) = -4864;
  *(v1 + 40) = 16962;
  *(v1 + 48) = 0xE200000000000000;
  *(v1 + 56) = 0xD0000000000000FCLL;
  *(v1 + 64) = 0x800000024FF8A960;
  *(v1 + 72) = 1;
  return result;
}

uint64_t one-time initialization function for TimBacon()
{
  v0 = type metadata accessor for GeoContact();
  __swift_allocate_value_buffer(v0, TimBacon);
  v1 = __swift_project_value_buffer(v0, TimBacon);
  v2 = *(v0 + 40);
  v3 = *MEMORY[0x277D62AA0];
  v4 = type metadata accessor for ImageElement.ImageStyle();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 1;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0x6F636142206D6954;
  *(v1 + 4) = 0xE90000000000006ELL;
  *(v1 + 5) = 16980;
  *(v1 + 6) = 0xE200000000000000;
  *(v1 + 7) = 0xD0000000000000FCLL;
  *(v1 + 8) = 0x800000024FF8A860;
  *(v1 + 9) = 2;
  return result;
}

uint64_t one-time initialization function for testView1()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14GeoUIFramework0D7ContactVGMd, &_ss23_ContiguousArrayStorageCy14GeoUIFramework0D7ContactVGMR);
  v0 = type metadata accessor for GeoContact();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  v3[1] = xmmword_24FF88A30;
  v4 = v3 + v2;
  if (one-time initialization token for BrandonBacon != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, BrandonBacon);
  outlined init with copy of ContactDisambiguationView(v5, v4, type metadata accessor for GeoContact);
  if (one-time initialization token for TimBacon != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, TimBacon);
  result = outlined init with copy of ContactDisambiguationView(v6, v4 + v1, type metadata accessor for GeoContact);
  testView1._rawValue = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14GeoUIFramework0D15TrafficIncidentVGMd, &_ss23_ContiguousArrayStorageCy14GeoUIFramework0D15TrafficIncidentVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24FF88EB0;
  if (one-time initialization token for crash != -1)
  {
    swift_once();
  }

  v2 = *(pickupTruck.localizedAddress.value._object + 4);
  v1 = *(pickupTruck.localizedAddress.value._object + 5);
  v3 = *(pickupTruck.localizedAddress.value._object + 1);
  *(v0 + 32) = *pickupTruck.localizedAddress.value._object;
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v4 = one-time initialization token for hazard;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(*&pickupTruck.locationInfo.latitude + 32);
  v5 = *(*&pickupTruck.locationInfo.latitude + 40);
  v7 = *(*&pickupTruck.locationInfo.latitude + 16);
  *(v0 + 80) = **&pickupTruck.locationInfo.latitude;
  *(v0 + 96) = v7;
  *(v0 + 112) = v6;
  *(v0 + 120) = v5;
  v8 = one-time initialization token for sc;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *(sc.index + 32);
  v9 = *(sc.index + 40);
  v11 = *(sc.index + 16);
  *(v0 + 128) = *sc.index;
  *(v0 + 144) = v11;
  *(v0 + 160) = v10;
  *(v0 + 168) = v9;
  testView1._rawValue = v0;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SampleView_Previews and conformance SampleView_Previews()
{
  result = lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews;
  if (!lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews;
  if (!lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SampleView_Previews and conformance SampleView_Previews);
  }

  return result;
}

unint64_t type metadata completion function for ContactDisambiguationView()
{
  result = type metadata accessor for OS_os_log();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActionHandler();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of ContactDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
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

uint64_t partial apply for closure #1 in closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimaryHeaderRichView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t partial apply for closure #2 in closure #2 in ContactDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E7ContactVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichH0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GeoContact], GeoContact, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of ContactDisambiguationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ContactDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for ContactDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeoContact() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in ContactDisambiguationView.body.getter((v0 + v2), v5);
}

uint64_t GeoTrafficIncident.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GeoTrafficIncident.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoTrafficIncident.CodingKeys()
{
  v1 = 0x7865646E69;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6F6C796150697264;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoTrafficIncident.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoTrafficIncident.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[4] = v1[2];
  v15[5] = v9;
  v12 = v1[5];
  v15[2] = v1[4];
  v15[3] = v11;
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v17 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t GeoTrafficIncident.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  MEMORY[0x25305DBD0](*v0);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return MEMORY[0x25305DBD0](v4);
}

Swift::Int GeoTrafficIncident.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  MEMORY[0x25305DBD0](v5);
  return Hasher._finalize()();
}

uint64_t GeoTrafficIncident.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D15TrafficIncidentV10CodingKeys33_B0A83B677A66C3649B8950C2007DD83CLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v24 = v12;
  v26 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v15;
  v25 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v18 = v23;
  v17 = v24;
  *a2 = v11;
  a2[1] = v17;
  v19 = v22;
  a2[2] = v14;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void __swiftcall GeoTrafficIncident.init(index:id:displayName:driPayload:)(GeoUIFramework::GeoTrafficIncident *__return_ptr retstr, Swift::Int index, Swift::String_optional id, Swift::String displayName, Swift::Int driPayload)
{
  retstr->index = index;
  retstr->id = id;
  retstr->displayName = displayName;
  retstr->driPayload = driPayload;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GeoTrafficIncident@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoTrafficIncident()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  MEMORY[0x25305DBD0](*v0);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return MEMORY[0x25305DBD0](v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoTrafficIncident()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  MEMORY[0x25305DBD0](v5);
  return Hasher._finalize()();
}

BOOL specialized static GeoTrafficIncident.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (v3)
  {
    if (!v7 || (a1[1] != a2[1] || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 == v10;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoTrafficIncident(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C796150697264 && a2 == 0xEA00000000006461)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t TrafficDisambiguationView.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TrafficDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for TrafficDisambiguationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v7 = *(v6 - 8);
  v35 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - v10;
  v12 = type metadata accessor for DisambiguationTitle();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v31 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v19 = *v2;
  v18 = v2[1];
  v42 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D63F88];
  v40 = v19;
  v41 = v18;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;

  DisambiguationTitle.init(text1:thumbnail:)();
  *&v37 = v2[2];
  v30[1] = swift_getKeyPath();
  outlined init with copy of TrafficDisambiguationView(v2, v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  outlined init with take of TrafficDisambiguationView(v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<<<opaque return type of View.mapScope(_:)>>.0, _FlexFrameLayout>, PrimaryHeaderRichView, <<opaque return type of View.separators(_:isOverride:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance [A], &_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
  lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident();
  v22 = type metadata accessor for SimpleItemRichView();
  v23 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  v40 = v22;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v24 = v32;
  v25 = v33;
  (*(v32 + 16))(v31, v17, v33);
  v26 = v34;
  (*(v7 + 16))(v34, v11, v6);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + v27, v26, v6);
  lazy protocol witness table accessor for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>();
  DisambiguationView.init(title:content:)();
  (*(v7 + 8))(v11, v6);
  return (*(v24 + 8))(v17, v25);
}

uint64_t type metadata accessor for TrafficDisambiguationView()
{
  result = type metadata singleton initialization cache for TrafficDisambiguationView;
  if (!type metadata singleton initialization cache for TrafficDisambiguationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in TrafficDisambiguationView.body.getter(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for SimpleItemRichView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[2];
  v44 = a1[1];
  v45 = v12;
  v43 = *a1;
  v18[3] = MEMORY[0x277D837D0];
  v18[4] = MEMORY[0x277D63F88];
  v18[0] = *(&v44 + 1);
  v18[1] = v12;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;

  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  outlined init with copy of TrafficDisambiguationView(a2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  outlined init with take of TrafficDisambiguationView(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v44;
  *v15 = v43;
  v15[1] = v16;
  v15[2] = v45;
  outlined init with copy of GeoTrafficIncident(&v43, v18);
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
  View.componentTapped(isNavigation:perform:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t outlined init with copy of TrafficDisambiguationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of TrafficDisambiguationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrafficDisambiguationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TrafficDisambiguationView.body.getter(__int128 *a1)
{
  v3 = *(type metadata accessor for TrafficDisambiguationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in TrafficDisambiguationView.body.getter(a1, v4);
}

uint64_t closure #1 in closure #1 in TrafficDisambiguationView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30[-4] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30[-4] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30[-4] - v14;
  v16 = a1 + *(type metadata accessor for TrafficDisambiguationView() + 28);
  ActionHandler.wrappedValue.getter();
  v17 = type metadata accessor for StandardActionHandler();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    return outlined destroy of StandardActionHandler?(v15, &_s9SnippetUI21StandardActionHandlerVSgMd, &_s9SnippetUI21StandardActionHandlerVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v20 = swift_allocObject();
  v29 = xmmword_24FF88410;
  *(v20 + 16) = xmmword_24FF88410;
  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = v29;
  strcpy(v30, "IncidentType");
  HIBYTE(v30[6]) = 0;
  v30[7] = -5120;
  AnyHashable.init<A>(_:)();
  v24 = *(a2 + 40);
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StandardActionHandler?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v25 = type metadata accessor for Command();
  v26 = MEMORY[0x277D63770];
  *(v20 + 56) = v25;
  *(v20 + 64) = v26;
  __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  v27 = type metadata accessor for ActionProperty();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  v28 = type metadata accessor for InteractionType();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  StandardActionHandler.perform(_:interactionType:)();
  outlined destroy of StandardActionHandler?(v7, &_s9SnippetUI15InteractionTypeOSgMd, &_s9SnippetUI15InteractionTypeOSgMR);
  outlined destroy of StandardActionHandler?(v11, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  return (*(v18 + 8))(v15, v17);
}

uint64_t partial apply for closure #2 in TrafficDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t lazy protocol witness table accessor for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMd, &_s7SwiftUI7ForEachVySay14GeoUIFramework0E15TrafficIncidentVGAfA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAJ014SimpleItemRichI0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, MEMORY[0x277D63D00]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[GeoTrafficIncident], GeoTrafficIncident, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t TrafficDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  type metadata accessor for OS_os_log();
  *(a2 + 24) = OS_os_log.init(subsystem:category:)();
  *(a2 + 32) = 0xD000000000000033;
  *(a2 + 40) = 0x800000024FF8AA60;
  v3 = type metadata accessor for TrafficDisambiguationView();
  v4 = a2 + v3[7];
  ActionHandler.init()();
  v5 = (a2 + v3[8]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = a2 + v3[9];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t static TrafficIncidentView_Previews.previews.getter()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for TrafficDisambiguationView();
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t implicit closure #1 in static TrafficIncidentView_Previews.previews.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  type metadata accessor for OS_os_log();

  a2[3] = OS_os_log.init(subsystem:category:)();
  a2[4] = 0xD000000000000033;
  a2[5] = 0x800000024FF8AA60;
  v5 = type metadata accessor for TrafficDisambiguationView();
  v6 = a2 + v5[7];
  ActionHandler.init()();
  v7 = (a2 + v5[8]);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
  *v7 = EnvironmentObject.init()();
  v7[1] = v8;
  v9 = a2 + v5[9];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  return result;
}

uint64_t protocol witness for static PreviewProvider.previews.getter in conformance TrafficIncidentView_Previews()
{
  if (one-time initialization token for testView1 != -1)
  {
    swift_once();
  }

  type metadata accessor for TrafficDisambiguationView();
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView);

  return SnippetPreview.init(snippetModel:content:)();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance TrafficIncidentView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews();

  return MEMORY[0x28212D8E8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance TrafficIncidentView_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews();

  return MEMORY[0x28212D8D8](a1, v2);
}

double one-time initialization function for crash()
{
  v0 = swift_slowAlloc();
  pickupTruck.localizedAddress.value._object = v0;
  result = 0.0;
  *v0 = xmmword_24FF88E50;
  v0[1] = xmmword_24FF88E60;
  *(v0 + 4) = 0xE500000000000000;
  *(v0 + 5) = 2;
  return result;
}

double one-time initialization function for hazard()
{
  v0 = swift_slowAlloc();
  *&pickupTruck.locationInfo.latitude = v0;
  *&result = 1;
  *v0 = xmmword_24FF88E70;
  *(v0 + 16) = xmmword_24FF88E80;
  *(v0 + 32) = 0xE600000000000000;
  *(v0 + 40) = 1;
  return result;
}

double one-time initialization function for sc()
{
  v0 = swift_slowAlloc();
  sc.index = v0;
  *&result = 2;
  *v0 = xmmword_24FF88E90;
  *(v0 + 16) = xmmword_24FF88EA0;
  *(v0 + 32) = 0xEB000000006B6365;
  *(v0 + 40) = 3;
  return result;
}

uint64_t crash.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews()
{
  result = lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews;
  if (!lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews;
  if (!lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentView_Previews and conformance TrafficIncidentView_Previews);
  }

  return result;
}

void type metadata completion function for TrafficDisambiguationView()
{
  type metadata accessor for OS_os_log();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionHandler();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EnvironmentObject<Context>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<VRXIdiom>();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<VRXIdiom>()
{
  if (!lazy cache variable for type metadata for Environment<VRXIdiom>)
  {
    type metadata accessor for VRXIdiom();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<VRXIdiom>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in TrafficDisambiguationView.body.getter()
{
  v1 = *(type metadata accessor for TrafficDisambiguationView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in closure #1 in TrafficDisambiguationView.body.getter(v0 + v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25305DA50](v9, a1);
      outlined destroy of AnyHashable(v9);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t GeoContact.image.getter()
{
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageElement.Contact.Content();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 2);
  if (v10)
  {
    v11 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24FF88410;
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;

    ImageElement.Contact.Avatar.init(contactIds:)();
    v13 = MEMORY[0x277D62D88];
  }

  else
  {
    v14 = *(v0 + 6);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *(v0 + 5) & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = *(v0 + 6);

      ImageElement.Contact.Monogram.init(letters:)();
      v13 = MEMORY[0x277D62D98];
    }

    else
    {
      ImageElement.Contact.Avatar.init(contactIds:)();
      v13 = MEMORY[0x277D62D88];
    }
  }

  (*(v6 + 104))(v9, *v13, v5);
  v17 = type metadata accessor for GeoContact();
  (*(v2 + 16))(v20, &v0[*(v17 + 40)], v1);
  return ImageElement.Contact.init(_:imageStyle:)();
}

uint64_t type metadata accessor for GeoContact()
{
  result = type metadata singleton initialization cache for GeoContact;
  if (!type metadata singleton initialization cache for GeoContact)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeoContact.app.getter()
{
  if ((*(v0 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t GeoContact.supplamentalText.getter()
{
  v1 = 5459283;
  v2 = *(v0 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (v2 == 2)
  {
    v3 = 0x800000024FF8A620;
  }

  else
  {
    v3 = 0xEE007370614D2E65;
  }

  if (v2 == 2 && 0x800000024FF8A620 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t GeoContact.init(index:id:displayName:initials:encodeBase64:shareLevel:imageStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v13 = *(type metadata accessor for GeoContact() + 40);
  v14 = type metadata accessor for ImageElement.ImageStyle();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a9[v13], a12, v14);
}

uint64_t GeoContact.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GeoContact.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t GeoContact.initials.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t GeoContact.encodeBase64.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t GeoContact.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeoContact() + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoContact.imageStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GeoContact() + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppID.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoContact.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x76654C6572616873;
  if (v1 != 5)
  {
    v3 = 0x7974536567616D69;
  }

  v4 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x614265646F636E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoContact.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoContact.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoContact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v23[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v23[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v23[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    v23[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[9];
    v23[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(type metadata accessor for GeoContact() + 40);
    v23[9] = 6;
    type metadata accessor for ImageElement.ImageStyle();
    lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GeoContact.hash(into:)()
{
  MEMORY[0x25305DBD0](*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  v4 = v0[5];
  v5 = v0[6];
  String.hash(into:)();
  v6 = v0[7];
  v7 = v0[8];
  String.hash(into:)();
  MEMORY[0x25305DBD0](v0[9]);
  v8 = *(type metadata accessor for GeoContact() + 40);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GeoContact.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  v4 = v0[5];
  v5 = v0[6];
  String.hash(into:)();
  v6 = v0[7];
  v7 = v0[8];
  String.hash(into:)();
  MEMORY[0x25305DBD0](v0[9]);
  v8 = *(type metadata accessor for GeoContact() + 40);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t GeoContact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D7ContactV10CodingKeys33_7AA47EFC1FAFF6C5CB67338E8D06FEBCLLOGMR);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = v28 - v9;
  v11 = type metadata accessor for GeoContact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  v34 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v17 = v7;
  v19 = v31;
  v18 = v32;
  v42 = 0;
  v20 = v33;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 1;
  v14[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14[2] = v21;
  v29 = v21;
  v40 = 2;
  v14[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[4] = v22;
  v28[1] = v22;
  v39 = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v28[0] = 0;
  v14[5] = v23;
  v14[6] = v24;
  v28[2] = v24;
  v38 = 4;
  v14[7] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[8] = v25;
  v37 = 5;
  v14[9] = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 6;
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08]);
  v29 = v17;
  v26 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v26, v20);
  (*(v30 + 32))(v14 + *(v11 + 40), v29, v4);
  outlined init with copy of GeoContact(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return outlined destroy of GeoContact(v14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoContact(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](*v2);
  if (v2[2])
  {
    v4 = v2[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = v2[3];
  v6 = v2[4];
  String.hash(into:)();
  v7 = v2[5];
  v8 = v2[6];
  String.hash(into:)();
  v9 = v2[7];
  v10 = v2[8];
  String.hash(into:)();
  MEMORY[0x25305DBD0](v2[9]);
  v11 = *(a2 + 40);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, MEMORY[0x277D62C08]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

GeoUIFramework::AppID_optional __swiftcall AppID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoUIFramework_AppID_messages;
  }

  else
  {
    v4.value = GeoUIFramework_AppID_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v5 = 0xEE007370614D2E65;
  }

  else
  {
    v5 = 0x800000024FF8A620;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v7 = 0x800000024FF8A620;
  }

  else
  {
    v7 = 0xEE007370614D2E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppID()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppID@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AppID(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FF8A620;
  v3 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE007370614D2E65;
  }

  *a1 = v3;
  a1[1] = v2;
}

Swift::String __swiftcall INPerson.getContactInitials()()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  [v10 setStyle_];
  v11 = [v1 nameComponents];
  if (v11)
  {
    v12 = v11;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v14 = [v10 stringFromPersonNameComponents_];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    (*(v3 + 8))(v9, v2);
    goto LABEL_22;
  }

  v18 = [v1 displayName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v17 = 0xE000000000000000;
  if (v22)
  {
    v23 = [v1 displayName];
    if (!v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x25305D940](v24);
    }

    v25 = [v10 personNameComponentsFromString_];

    if (v25)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v27 = [v10 stringFromPersonNameComponents_];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v28;

      (*(v3 + 8))(v7, v2);
LABEL_22:
      v35 = v15;
      v36 = v17;
      goto LABEL_24;
    }

    v31 = [v1 displayName];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v32;
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v44 = v29;
  v45 = v30;
  v33 = lazy protocol witness table accessor for type String and conformance String();
  v34 = MEMORY[0x25305DA30](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v33);

  v44 = 0;
  v45 = 0xE000000000000000;
  v37 = *(v34 + 16);
  if (!v37)
  {
    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v38 = 0;
  v39 = (v34 + 56);
  while (v38 < *(v34 + 16))
  {
    if ((*(v39 - 2) ^ *(v39 - 3)) >= 0x4000)
    {
      v41 = *(v39 - 1);
      v40 = *v39;

      v42 = Substring.subscript.getter();
      MEMORY[0x25305D980](v42);
    }

    ++v38;
    v39 += 4;
    if (v37 == v38)
    {
      v15 = v44;
      v17 = v45;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t specialized static GeoContact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v7 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v8 = *(type metadata accessor for GeoContact() + 40);

  return MEMORY[0x2821C9788](a1 + v8, a2 + v8);
}

unint64_t lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GeoContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoContact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeoContact(uint64_t a1)
{
  v2 = type metadata accessor for GeoContact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AppID and conformance AppID()
{
  result = lazy protocol witness table cache variable for type AppID and conformance AppID;
  if (!lazy protocol witness table cache variable for type AppID and conformance AppID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppID and conformance AppID);
  }

  return result;
}

void type metadata completion function for GeoContact()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageElement.ImageStyle();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppID(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GeoContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeoContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized GeoContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614265646F636E65 && a2 == 0xEC00000034366573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6572616873 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974536567616D69 && a2 == 0xEA0000000000656CLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double StandardMapData.center.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t StandardMapData.makePunchoutURL(idiom:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v15 = *v1;
  v16 = v8;
  v17 = *(v1 + 16);
  v9 = VRXIdiom.isWatchOS.getter();
  v15 = StandardMapData.makePunchoutURI(includeLabel:)((v9 & 1) == 0);
  v16 = v10;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v12 = v11;
  (*(v4 + 8))(v7, v3);

  if (v12)
  {
    URL.init(string:)();
  }

  else
  {
    v14 = type metadata accessor for URL();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t StandardMapData.makeAppPunchout(idiom:)()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  v1 = VRXIdiom.isWatchOS.getter();
  StandardMapData.makePunchoutURI(includeLabel:)((v1 & 1) == 0);

  return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
}

GeoUIFramework::StandardMapData __swiftcall StandardMapData.init(label:latitude:longitude:)(Swift::String label, Swift::Double latitude, Swift::Double longitude)
{
  *v3 = label;
  *(v3 + 16) = latitude;
  *(v3 + 24) = longitude;
  result.label = label;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

id static StandardMapData.blueTint.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D4BF80]) init];
  [v0 setName_];
  return v0;
}

uint64_t StandardMapData.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StandardMapData.CodingKeys()
{
  v1 = 0x656475746974616CLL;
  if (*v0 != 1)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StandardMapData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized StandardMapData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StandardMapData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StandardMapData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v13 = v15[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StandardMapData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework15StandardMapDataV10CodingKeys33_BAB33760CABF8DBFCB3BEFF0C744961BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v21 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t StandardMapData.makePunchoutURI(includeLabel:)(char a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D839F8];
  *(v7 + 16) = xmmword_24FF88410;
  v9 = MEMORY[0x277D83A80];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v6;
  v10 = String.init(format:_:)();
  MEMORY[0x25305D990](v10);

  MEMORY[0x25305D990](44, 0xE100000000000000);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24FF88410;
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = v5;
  v12 = String.init(format:_:)();
  v14 = v13;

  MEMORY[0x25305D990](v12, v14);

  if ((a1 & 1) != 0 && (v4 || v3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    MEMORY[0x25305D990](v16);

    MEMORY[0x25305D990](15729, 0xE200000000000000);

    MEMORY[0x25305D990](1030515750, 0xE400000000000000);
  }

  else
  {
    MEMORY[0x25305D990](1030515750, 0xE400000000000000);
  }

  return 0xD000000000000017;
}

unint64_t lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys;
  if (!lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys);
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

uint64_t getEnumTagSinglePayload for StandardMapData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for StandardMapData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized StandardMapData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static MapsAppProperties.getBundleID(idiom:)(uint64_t a1)
{
  if (a1 == 6)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance GeoUIPluginProviding@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t specialized GeoUIPluginProviding.snippet(for:mode:idiom:)(uint64_t *a1)
{
  v38 = type metadata accessor for WhereAmIView();
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TrafficDisambiguationView();
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for ParkingLocationView();
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContactDisambiguationView();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      *v7 = v16;
      v7[1] = v15;
      v7[2] = v17;
      type metadata accessor for OS_os_log();

      v7[3] = OS_os_log.init(subsystem:category:)();
      v7[4] = 0xD000000000000033;
      v7[5] = 0x800000024FF8AA60;
      v22 = v37;
      v23 = v7 + *(v37 + 28);
      ActionHandler.init()();
      v24 = (v7 + *(v22 + 32));
      type metadata accessor for Context();
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v24 = EnvironmentObject.init()();
      v24[1] = v25;
      v26 = v7 + *(v22 + 36);
      *v26 = swift_getKeyPath();
      v26[8] = 0;
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type TrafficDisambiguationView and conformance TrafficDisambiguationView, type metadata accessor for TrafficDisambiguationView);
      v19 = View.eraseToAnyView()();
      v20 = type metadata accessor for TrafficDisambiguationView;
      v21 = v7;
    }

    else
    {
      *v4 = v16;
      *(v4 + 1) = v15;
      *(v4 + 2) = v17;
      *(v4 + 24) = *(a1 + 3);
      *(v4 + 40) = *(a1 + 5);
      *(v4 + 56) = *(a1 + 7);
      *(v4 + 9) = a1[9];
      type metadata accessor for OS_os_log();
      v40 = v16;
      v41 = v15;
      v42 = v17;
      v43 = *(a1 + 3);
      v44 = *(a1 + 5);
      v45 = *(a1 + 7);
      v46 = a1[9];
      v47 = 3;
      outlined init with copy of GeoDataModels.WhereAmIDataModel(&v40, v39);
      *(v4 + 10) = OS_os_log.init(subsystem:category:)();
      v28 = v38;
      v29 = &v4[*(v38 + 24)];
      ActionHandler.init()();
      *&v4[v28[7]] = 0;
      v30 = v28[8];
      *&v4[v30] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMR);
      swift_storeEnumTagMultiPayload();
      v31 = &v4[v28[9]];
      *v31 = swift_getKeyPath();
      v31[8] = 0;
      v32 = &v4[v28[10]];
      type metadata accessor for Context();
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68]);
      *v32 = EnvironmentObject.init()();
      v32[1] = v33;
      lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type WhereAmIView and conformance WhereAmIView, type metadata accessor for WhereAmIView);
      v19 = View.eraseToAnyView()();
      v20 = type metadata accessor for WhereAmIView;
      v21 = v4;
    }
  }

  else if (*(a1 + 80))
  {
    *v10 = v16;
    *(v10 + 1) = v15;
    *(v10 + 2) = v17;
    *(v10 + 24) = *(a1 + 3);
    *(v10 + 40) = *(a1 + 5);
    *(v10 + 56) = *(a1 + 7);
    *(v10 + 9) = a1[9];
    type metadata accessor for OS_os_log();
    v40 = v16;
    v41 = v15;
    v42 = v17;
    v43 = *(a1 + 3);
    v44 = *(a1 + 5);
    v45 = *(a1 + 7);
    v46 = a1[9];
    v47 = 1;
    outlined init with copy of GeoDataModels.ParkingLocationDataModel(&v40, v39);
    *(v10 + 10) = OS_os_log.init(subsystem:category:)();
    v27 = &v10[*(v36 + 24)];
    ActionHandler.init()();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ParkingLocationView and conformance ParkingLocationView, type metadata accessor for ParkingLocationView);
    v19 = View.eraseToAnyView()();
    v20 = type metadata accessor for ParkingLocationView;
    v21 = v10;
  }

  else
  {
    *v14 = v16;
    v14[1] = v15;
    v14[2] = v17;
    type metadata accessor for OS_os_log();

    v14[3] = OS_os_log.init(subsystem:category:)();
    v14[4] = 0xD00000000000002CLL;
    v14[5] = 0x800000024FF8A800;
    v18 = v14 + *(v11 + 28);
    ActionHandler.init()();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ContactDisambiguationView and conformance ContactDisambiguationView, type metadata accessor for ContactDisambiguationView);
    v19 = View.eraseToAnyView()();
    v20 = type metadata accessor for ContactDisambiguationView;
    v21 = v14;
  }

  outlined destroy of WhereAmIView(v21, v20);
  return v19;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels()
{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of WhereAmIView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall GeoDataModels.WhereAmIDataModel.init(meID:buttonLabel:localizedAddress:currentLocation:)(GeoUIFramework::GeoDataModels::WhereAmIDataModel *__return_ptr retstr, Swift::String_optional meID, Swift::String buttonLabel, Swift::String_optional localizedAddress, GeoUIFramework::StandardMapData currentLocation)
{
  v5 = *currentLocation.label._countAndFlagsBits;
  v6 = *(currentLocation.label._countAndFlagsBits + 8);
  retstr->meID = meID;
  retstr->buttonLabel = buttonLabel;
  retstr->localizedAddress = localizedAddress;
  retstr->currentLocation.label._countAndFlagsBits = v5;
  retstr->currentLocation.label._object = v6;
  *&retstr->currentLocation.latitude = *(currentLocation.label._countAndFlagsBits + 16);
}

void __swiftcall GeoDataModels.ParkingLocationDataModel.init(parkedCar:buttonLabel:)(GeoUIFramework::GeoDataModels::ParkingLocationDataModel *__return_ptr retstr, GeoUIFramework::GeoParkedCar *parkedCar, Swift::String buttonLabel)
{
  localizedAddress = parkedCar->localizedAddress;
  retstr->parkedCar.note = parkedCar->note;
  retstr->parkedCar.localizedAddress = localizedAddress;
  v4 = *&parkedCar->locationInfo.latitude;
  retstr->parkedCar.locationInfo.label = parkedCar->locationInfo.label;
  *&retstr->parkedCar.locationInfo.latitude = v4;
  retstr->buttonLabel = buttonLabel;
}

GeoUIFramework::GeoDataModels::ContactDisambiguationDataModel __swiftcall GeoDataModels.ContactDisambiguationDataModel.init(systemText:candidates:)(Swift::String systemText, Swift::OpaquePointer candidates)
{
  *v2 = systemText;
  *(v2 + 16) = candidates;
  result.systemText = systemText;
  result.candidates = candidates;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.candidates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021ContactDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
  v18 = 1;
  lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14GeoUIFramework0A7ContactVGMd, &_sSay14GeoUIFramework0A7ContactVGMR);
    lazy protocol witness table accessor for type GeoContact and conformance GeoContact(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GeoContact and conformance GeoContact(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoContact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.parkedCar.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of GeoParkedCar(v7, &v6);
}

uint64_t GeoDataModels.ParkingLocationDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x614C6E6F74747562;
  }

  else
  {
    result = 0x614364656B726170;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614364656B726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.ParkingLocationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = v1[1];
  v22 = *v1;
  v23 = v9;
  v10 = v1[3];
  v24 = v1[2];
  v25 = v10;
  v11 = *(v1 + 9);
  v26 = *(v1 + 8);
  v14 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of GeoParkedCar(&v22, &v18);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v17 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  outlined destroy of GeoParkedCar(v16);
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO015ParkingLocationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v20;
  v35 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v10 + 8))(v8, v4);
  v15 = v30;
  v16 = v31;
  v21[0] = v30;
  v21[1] = v31;
  v17 = v33;
  v21[2] = v32;
  v21[3] = v33;
  *&v22 = v12;
  *(&v22 + 1) = v14;
  v11[2] = v32;
  v11[3] = v17;
  *v11 = v15;
  v11[1] = v16;
  v11[4] = v22;
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(v21, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v23[0] = v30;
  v23[1] = v31;
  v23[2] = v32;
  v23[3] = v33;
  v24 = v12;
  v25 = v14;
  return outlined destroy of GeoDataModels.ParkingLocationDataModel(v23);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO021TrafficDisambiguationF5ModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14GeoUIFramework0A15TrafficIncidentVGMd, &_sSay14GeoUIFramework0A15TrafficIncidentVGMR);
  v18 = 1;
  lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GeoDataModels.WhereAmIDataModel.meID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.localizedAddress.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GeoDataModels.WhereAmIDataModel.currentLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 64);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  v1 = 1145660781;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x4C746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x614C6E6F74747562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.WhereAmIDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.WhereAmIDataModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[6];
  v21 = v1[7];
  v22 = v12;
  v13 = v1[8];
  v14 = v1[9];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v28) = 0;
  v16 = v27;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    LOBYTE(v28) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v28) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v18;
    v29 = v17;
    v30 = v13;
    v31 = v14;
    v32 = 3;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.WhereAmIDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v12;
  LOBYTE(v39[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v14;
  v30 = v13;
  LOBYTE(v39[0]) = 2;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v15;
  v43 = 3;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v27 = *(&v41 + 1);
  v28 = v41;
  v16 = v42;
  *&v34 = v11;
  v17 = v33;
  *(&v34 + 1) = v33;
  v18 = v30;
  *&v35 = v30;
  v19 = v32;
  *(&v35 + 1) = v32;
  v20 = v29;
  *&v36 = v29;
  v21 = v31;
  *(&v36 + 1) = v31;
  v37 = v41;
  v38 = v42;
  v22 = v34;
  v23 = v35;
  v24 = v42;
  v25 = v36;
  a2[3] = v41;
  a2[4] = v24;
  a2[1] = v23;
  a2[2] = v25;
  *a2 = v22;
  outlined init with copy of GeoDataModels.WhereAmIDataModel(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v11;
  v39[1] = v17;
  v39[2] = v18;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v28;
  v39[7] = v27;
  v40 = v16;
  return outlined destroy of GeoDataModels.WhereAmIDataModel(v39);
}

uint64_t GeoDataModels.snippetHidden(for:idiom:)()
{
  v1 = type metadata accessor for DeviceIdiom();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 80) | 2) == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v4;
    (*(v2 + 104))(v6, *MEMORY[0x277D61BE8], v4);
    v7 = static DeviceIdiom.== infix(_:_:)();
    (*(v2 + 8))(v6, v8);
  }

  return v7 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.CodingKeys()
{
  v1 = 0x4C676E696B726170;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x496D416572656877;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25305DBD0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeoDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v32 = *(v33 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v31 = *(v13 - 8);
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedEncodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = v2[1];
  v40 = *v2;
  v41 = v21;
  v42 = v2[2];
  v22 = *(v2 + 80);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      LOBYTE(v45) = 2;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
      v12 = v34;
      v24 = v44;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
      v25 = v36;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = v35;
    }

    else
    {
      LOBYTE(v45) = 3;
      lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
      v12 = v37;
      v24 = v44;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v28 = *(v2 + 5);
      v48 = *(v2 + 3);
      v49 = v28;
      v50 = *(v2 + 7);
      v51 = v2[9];
      lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
      v25 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = v38;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    LOBYTE(v45) = 1;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
    v24 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v27 = *(v2 + 5);
    v48 = *(v2 + 3);
    v49 = v27;
    v50 = *(v2 + 7);
    v51 = v2[9];
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
    v25 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v32;
LABEL_8:
    (*(v26 + 8))(v12, v25);
    return (*(v43 + 8))(v20, v24);
  }

  LOBYTE(v45) = 0;
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
  v24 = v44;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v45 = v40;
  v46 = v41;
  v47 = v42;
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v31 + 8))(v16, v13);
  return (*(v43 + 8))(v20, v24);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO18WhereAmICodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v61 = *(v59 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v52 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31TrafficDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v60 = *(v57 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  v62 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO25ParkingLocationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v58 = *(v55 - 8);
  v7 = *(v58 + 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO31ContactDisambiguationCodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMd, &_ss22KeyedDecodingContainerVy14GeoUIFramework0D10DataModelsO10CodingKeys33_882E58619A019CD438BB91EBFDDE66DALLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  v21 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v53 = v10;
    v22 = v62;
    v23 = v63;
    v65 = v15;
    v24 = v64;
    v54 = v14;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
    {
      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v31 = &type metadata for GeoDataModels;
      v33 = v18;
      v34 = v54;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v65 + 8))(v33, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = v25;
      if (v27 > 1)
      {
        v58 = v18;
        v45 = v24;
        if (v27 == 2)
        {
          LOBYTE(v66) = 2;
          lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
          v37 = v22;
          v38 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
          v46 = v57;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v47 = (v65 + 8);
          (*(v60 + 8))(v37, v46);
          (*v47)(v58, v38);
          swift_unknownObjectRelease();
          v43 = v66;
          v44 = v67;
        }

        else
        {
          LOBYTE(v66) = 3;
          lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
          v41 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
          v48 = v59;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v49 = v65;
          (*(v61 + 8))(v23, v48);
          (*(v49 + 8))(v58, v41);
          swift_unknownObjectRelease();
          v43 = v66;
          v44 = v67;
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
        }
      }

      else
      {
        if (v27)
        {
          LOBYTE(v66) = 1;
          lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
          v39 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
          v40 = v55;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v58 + 1))(v9, v40);
          (*(v65 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v43 = v66;
          v44 = v67;
          v72 = v68;
          v73 = v69;
          v74 = v70;
          v75 = v71;
        }

        else
        {
          LOBYTE(v66) = 0;
          lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
          v35 = v13;
          v36 = v54;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
          v42 = v53;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v56 + 8))(v35, v42);
          (*(v65 + 8))(v18, v36);
          swift_unknownObjectRelease();
          v43 = v66;
          v44 = v67;
        }

        v45 = v24;
      }

      *v45 = v43;
      *(v45 + 8) = v44;
      v51 = v73;
      *(v45 + 24) = v72;
      *(v45 + 40) = v51;
      *(v45 + 56) = v74;
      *(v45 + 72) = v75;
      *(v45 + 80) = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t protocol witness for SnippetPluginModel.snippetHidden(for:idiom:) in conformance GeoDataModels()
{
  v1 = type metadata accessor for DeviceIdiom();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 80) | 2) == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v4;
    (*(v2 + 104))(v6, *MEMORY[0x277D61BE8], v4);
    v7 = static DeviceIdiom.== infix(_:_:)();
    (*(v2 + 8))(v6, v8);
  }

  return v7 & 1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for GeoDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.WhereAmIDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145660781 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FF8A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized GeoDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024FF8ABA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FF8ABC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496D416572656877 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA20]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB60]();
}