uint64_t sub_243D75CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D75CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_243D75CFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_243D75D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D75D70(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  return swift_getWitnessTable();
}

uint64_t sub_243D75F50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  return swift_getWitnessTable();
}

id sub_243D761C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (*(v3 + 16))
  {
    result = [*(v3 + 32) textProvider];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_243D76210(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ComplicationCurvedLabelViewConfiguration.textProvider.setter(v1);
}

uint64_t sub_243D76240@<X0>(uint64_t *a1@<X8>)
{
  result = ComplicationCurvedLabelViewConfiguration.contentProviders.getter();
  *a1 = result;
  return result;
}

uint64_t sub_243D7626C(uint64_t *a1)
{
  v1 = *a1;

  return ComplicationCurvedLabelViewConfiguration.contentProviders.setter(v2);
}

uint64_t sub_243D7629C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_243D762F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243DAD9E0();
  sub_243D940EC();
  return swift_getWitnessTable();
}

uint64_t sub_243D76354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 32);
  if (v7 != 255)
  {
    sub_243D942A8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), v7);
  }

  v8 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  sub_243D942A8(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16), *(v0 + v8 + 24), *(v0 + v8 + 32));

  return MEMORY[0x2821FE8E8](v0, v8 + 33, v3 | 7);
}

uint64_t sub_243D76440()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76488(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  return swift_getWitnessTable();
}

uint64_t sub_243D76648()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D767A8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v2;
  v9 = v3;
  return sub_243D9A4DC(&v6);
}

uint64_t sub_243D76800()
{
  v1 = *(v0 + 48);

  sub_243D9ACF4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  v2 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_243D7685C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ComplicationCornerViewConfiguration.outerLabel.setter(v1);
}

uint64_t get_enum_tag_for_layout_string_19ComplicationDisplay0A23CornerViewConfigurationV5LabelO_0(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_243D768B8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_243D768D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ComplicationCornerCircularView();
  type metadata accessor for ComplicationCornerTextView();
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView();
  sub_243DADC40();
  sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D9B860();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D9B8B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D9B908();
  swift_getWitnessTable();
  sub_243D940EC();
  swift_getWitnessTable();
  sub_243DAD990();
  return swift_getWitnessTable();
}

uint64_t sub_243D76B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76BF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243D76C24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_243D76C80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_243D76D34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243D76D6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76DA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243D76DDC()
{
  MEMORY[0x245D52770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76E20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2B8, &unk_243DB3390);
  v5 = *(a1 + 1);
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  return swift_getWitnessTable();
}

uint64_t sub_243D76F7C(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  swift_getWitnessTable();
  sub_243DADC70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAE20, &unk_243DB35A0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DADC40();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0);
  swift_getWitnessTable();
  sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00);
  swift_getWitnessTable();
  sub_243D940EC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_243D77188@<X0>(_BYTE *a1@<X8>)
{
  sub_243DA5D24();
  result = sub_243DADAD0();
  *a1 = v3;
  return result;
}

uint64_t sub_243D771D8(char *a1)
{
  v2 = *a1;
  sub_243DA5D24();
  return sub_243DADAE0();
}

uint64_t sub_243D77224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBB418, "*$");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243D772E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBB418, "*$");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_243D773A8()
{
  MEMORY[0x245D52770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D773E0()
{
  v1 = (type metadata accessor for ComplicationCurvedTextViewRepresentable() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 96);

  v9 = *(v0 + v3 + 112);

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD00, &qword_243DB1B28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_243DAD9F0();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  else
  {
    v13 = *(v6 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243D7757C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_243D775CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_243D77638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243D77690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_243D7770C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243DADAB0();
  *a1 = result;
  return result;
}

uint64_t sub_243D77738(uint64_t *a1)
{
  v1 = *a1;

  return sub_243DADAC0();
}

uint64_t sub_243D77768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243DADA50();
  *a1 = result;
  return result;
}

uint64_t sub_243D77794(uint64_t *a1)
{
  v1 = *a1;

  return sub_243DADA60();
}

BOOL CDTemplicateComplicationShouldPerformFullFade(void *a1)
{
  v1 = a1;
  v2 = [v1 conformsToProtocol:&unk_28570E750] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v1, "timelineAnimationFadeTypeOverride") == 1;

  return v2;
}

void sub_243D791A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CDGenerateMeterLayersOnLayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:18];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  for (i = 0; i != 18; ++i)
  {
    v7 = objc_opt_new();
    if (_CDMeterDisabledLayerActions_onceToken != -1)
    {
      CDGenerateMeterLayersOnLayer_cold_1();
    }

    [v7 setActions:_CDMeterDisabledLayerActions__dictionary];
    v8 = [MEMORY[0x277D75348] systemGrayColor];
    [v7 setFillColor:{objc_msgSend(v8, "CGColor")}];

    [v3 addSublayer:v7];
    [v5 addObject:v7];
    if (v4)
    {
      v4[2](v4, v7, i, i == 10, i / 18.0);
    }
  }

  [MEMORY[0x277CD9FF0] commit];

  return v5;
}

void CDColorizeMeterProgress(void *a1, void *a2, void *a3, double a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 count])
  {
    for (i = 0; i < [v7 count]; ++i)
    {
      v11 = [v7 objectAtIndexedSubscript:i];
      v12 = v11;
      if (i / 18.0 >= a4)
      {
        [v11 setFillColor:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = ([v8 count] * a4);
        if ([v8 count] <= v13)
        {
          [v8 lastObject];
        }

        else
        {
          [v8 objectAtIndexedSubscript:v13];
        }
        v14 = ;
        [v12 setFillColor:{objc_msgSend(v14, "CGColor")}];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v17[0] = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v12 setFilters:v15];

LABEL_11:
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

id CDGenerateMeterBackgroundGradientColors(uint64_t a1)
{
  v1 = a1;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    [i addObject:v3];
  }

  return i;
}

uint64_t CLKUpdateReasonFromCDReason(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

__n64 perpendicularClockwise(double a1)
{
  v1 = -*&a1;
  result.n64_u32[0] = vdup_lane_s32(*&a1, 1).u32[0];
  result.n64_f32[1] = v1;
  return result;
}

void sub_243D7E9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_243D7EC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return objc_opt_class();
}

uint64_t __CDShowGossamerUI_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_7);
  if (_block_invoke___cachedDevice_7)
  {
    v3 = _block_invoke___cachedDevice_7 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_7))
  {
    v5 = _block_invoke_value_3;
  }

  else
  {
    _block_invoke___cachedDevice_7 = v2;
    _block_invoke___previousCLKDeviceVersion_7 = [v2 version];
    v5 = __CDShowGossamerUI_block_invoke_2(_block_invoke___previousCLKDeviceVersion_7, v2);
    _block_invoke_value_3 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_7);

  return v5 & 1;
}

uint64_t __CDShowGossamerUI_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsPDRCapability:4263234939])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isPaired] ^ 1;
  }

  v4 = _os_feature_enabled_impl();

  return v3 & v4;
}

id CDRichComplicationMonoFontDescriptor()
{
  if (CDRichComplicationMonoFontDescriptor_onceToken != -1)
  {
    CDRichComplicationMonoFontDescriptor_cold_1();
  }

  v1 = CDRichComplicationMonoFontDescriptor_fontDescriptor;

  return v1;
}

void __CDRichComplicationMonoFontDescriptor_block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v11[0] = *MEMORY[0x277D74380];
  v9[0] = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v9[1] = *MEMORY[0x277D743D8];
  v10[0] = v1;
  v10[1] = *MEMORY[0x277D743C0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v3 = *MEMORY[0x277D74338];
  v12[0] = v2;
  v12[1] = &unk_285703638;
  v4 = *MEMORY[0x277D74348];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = *MEMORY[0x277CC4988];
  v12[2] = &unk_285703288;
  v12[3] = &unk_285702E78;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = [v0 fontDescriptorWithFontAttributes:v5];
  v7 = CDRichComplicationMonoFontDescriptor_fontDescriptor;
  CDRichComplicationMonoFontDescriptor_fontDescriptor = v6;

  v8 = *MEMORY[0x277D85DE8];
}

id CDRichComplicationSemiboldFontDescriptor()
{
  if (CDRichComplicationSemiboldFontDescriptor_onceToken != -1)
  {
    CDRichComplicationSemiboldFontDescriptor_cold_1();
  }

  v1 = CDRichComplicationSemiboldFontDescriptor_fontDescriptor;

  return v1;
}

void __CDRichComplicationSemiboldFontDescriptor_block_invoke()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v11[0] = *MEMORY[0x277D74380];
  v9[0] = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v9[1] = *MEMORY[0x277D743D8];
  v10[0] = v1;
  v10[1] = *MEMORY[0x277D743C0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v3 = *MEMORY[0x277D74338];
  v12[0] = v2;
  v12[1] = MEMORY[0x277CBEBF8];
  v4 = *MEMORY[0x277D74348];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = *MEMORY[0x277CC4988];
  v12[2] = &unk_285703288;
  v12[3] = &unk_285702E78;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = [v0 fontDescriptorWithFontAttributes:v5];
  v7 = CDRichComplicationSemiboldFontDescriptor_fontDescriptor;
  CDRichComplicationSemiboldFontDescriptor_fontDescriptor = v6;

  v8 = *MEMORY[0x277D85DE8];
}

id CDRichComplicationOpenFontDescriptor()
{
  if (CDRichComplicationOpenFontDescriptor_onceToken != -1)
  {
    CDRichComplicationOpenFontDescriptor_cold_1();
  }

  v1 = CDRichComplicationOpenFontDescriptor_fontDescriptor;

  return v1;
}

void __CDRichComplicationOpenFontDescriptor_block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v10[0] = *MEMORY[0x277D74380];
  v8 = *MEMORY[0x277D743D8];
  v9 = *MEMORY[0x277D743C0];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v2 = *MEMORY[0x277D74338];
  v11[0] = v1;
  v11[1] = &unk_285703650;
  v3 = *MEMORY[0x277D74348];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = *MEMORY[0x277CC4988];
  v11[2] = &unk_285703288;
  v11[3] = &unk_285702E78;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v5 = [v0 fontDescriptorWithFontAttributes:v4];
  v6 = CDRichComplicationOpenFontDescriptor_fontDescriptor;
  CDRichComplicationOpenFontDescriptor_fontDescriptor = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_243D86A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id _CDLoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&_CDLoggingObjectForDomain_onceTokens + 8 * a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___CDLoggingObjectForDomain_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = _CDLoggingObjectForDomain___logObjects[a1];

  return v4;
}

double __CDCircularSmallComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_10);
  if (_block_invoke___cachedDevice_10)
  {
    v3 = _block_invoke___cachedDevice_10 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_10))
  {
    v5 = _block_invoke_value_5;
  }

  else
  {
    _block_invoke___cachedDevice_10 = v2;
    _block_invoke___previousCLKDeviceVersion_10 = [v2 version];
    v5 = __CDCircularSmallComplicationDiameter_block_invoke_2(_block_invoke___previousCLKDeviceVersion_10, v2);
    _block_invoke_value_5 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_10);

  return *&v5;
}

double __CDCircularSmallComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v8[0] = &unk_285702FE0;
  v8[1] = &unk_285702FF8;
  v9[0] = &unk_285703348;
  v9[1] = &unk_285703358;
  v8[2] = &unk_285703010;
  v8[3] = &unk_285703028;
  v9[2] = &unk_285703368;
  v9[3] = &unk_285703378;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
  [v2 scaledValue:v3 withOverrides:32.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCircularMediumComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock);
  if (_block_invoke_2___cachedDevice)
  {
    v3 = _block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_2_value;
  }

  else
  {
    _block_invoke_2___cachedDevice = v2;
    _block_invoke_2___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCircularMediumComplicationDiameter_block_invoke_2(_block_invoke_2___previousCLKDeviceVersion, v2);
    _block_invoke_2_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock);

  return *&v5;
}

double __CDCircularMediumComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v8[0] = &unk_285702FE0;
  v8[1] = &unk_285702FF8;
  v9[0] = &unk_285703358;
  v9[1] = &unk_285703388;
  v8[2] = &unk_285703040;
  v8[3] = &unk_285703058;
  v9[2] = &unk_285703398;
  v9[3] = &unk_2857033A8;
  v8[4] = &unk_285703070;
  v8[5] = &unk_285703010;
  v9[4] = &unk_2857033A8;
  v9[5] = &unk_285703388;
  v8[6] = &unk_285703028;
  v8[7] = &unk_285703088;
  v9[6] = &unk_2857033B8;
  v9[7] = &unk_2857033B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:8];
  [v2 scaledValue:v3 withOverrides:42.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock);
  if (_block_invoke_3___cachedDevice)
  {
    v3 = _block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_3_value;
  }

  else
  {
    _block_invoke_3___cachedDevice = v2;
    _block_invoke_3___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke_2(_block_invoke_3___previousCLKDeviceVersion, v2);
    _block_invoke_3_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_3_lock);

  return *&v5;
}

double __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  v5 = [v4 scaledValue:3 withOverride:16.0 forSizeClass:19.0];
  v7 = v6;
  v8 = __CDCircularMediumComplicationDiameter_block_invoke(v5, v3);

  return v7 + (v8 + 4.0) * 0.5;
}

double __CDGraphicExtraLargeComplicationContentDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_4_lock);
  if (_block_invoke_4___cachedDevice)
  {
    v3 = _block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_4_value;
  }

  else
  {
    _block_invoke_4___cachedDevice = v2;
    _block_invoke_4___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicExtraLargeComplicationContentDiameter_block_invoke_2(_block_invoke_4___previousCLKDeviceVersion, v2);
    _block_invoke_4_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_4_lock);

  return *&v5;
}

double __CDGraphicExtraLargeComplicationContentDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v8[0] = &unk_285702FE0;
  v8[1] = &unk_2857030A0;
  v9[0] = &unk_2857033C8;
  v9[1] = &unk_2857033C8;
  v8[2] = &unk_285702FF8;
  v8[3] = &unk_285703058;
  v9[2] = &unk_2857033D8;
  v9[3] = &unk_2857033E8;
  v8[4] = &unk_285703070;
  v9[4] = &unk_2857033E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  [v2 scaledValue:v3 withOverrides:120.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDGraphicLargeRectangularComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_5_lock);
  if (_block_invoke_5___cachedDevice)
  {
    v3 = _block_invoke_5___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_5___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_5_value_0;
  }

  else
  {
    _block_invoke_5___cachedDevice = v2;
    _block_invoke_5___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationSize_block_invoke_2(_block_invoke_5___previousCLKDeviceVersion, v2);
    _block_invoke_5_value_0 = v5;
    _block_invoke_5_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_5_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationSize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v11[0] = &unk_285702FF8;
  v11[1] = &unk_285703058;
  v12[0] = &unk_2857033F8;
  v12[1] = &unk_285703408;
  v11[2] = &unk_285703070;
  v11[3] = &unk_285703010;
  v12[2] = &unk_285703408;
  v12[3] = &unk_285703418;
  v11[4] = &unk_285703028;
  v12[4] = &unk_285703428;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  [v2 scaledValue:v3 withOverrides:162.0];
  v5 = v4;

  v9[0] = &unk_285702FF8;
  v9[1] = &unk_285703040;
  v10[0] = &unk_285703438;
  v10[1] = &unk_285703448;
  v9[2] = &unk_285703058;
  v9[3] = &unk_285703070;
  v10[2] = &unk_285703458;
  v10[3] = &unk_285703458;
  v9[4] = &unk_285703010;
  v9[5] = &unk_285703028;
  v10[4] = &unk_285703468;
  v10[5] = &unk_285703478;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  [v2 scaledValue:v6 withOverrides:69.0];

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDGraphicLargeRectangularComplicationInset_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_6_lock);
  if (_block_invoke_6___cachedDevice)
  {
    v3 = _block_invoke_6___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_6___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_6_value;
  }

  else
  {
    _block_invoke_6___cachedDevice = v2;
    _block_invoke_6___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationInset_block_invoke_2(_block_invoke_6___previousCLKDeviceVersion, v2);
    _block_invoke_6_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_6_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationInset_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:*MEMORY[0x277CBB6B0]];
  v4 = v3;

  return v4;
}

double __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_7_lock);
  if (_block_invoke_7___cachedDevice)
  {
    v3 = _block_invoke_7___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_7___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_7_value;
  }

  else
  {
    _block_invoke_7___cachedDevice = v2;
    _block_invoke_7___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke_2(_block_invoke_7___previousCLKDeviceVersion, v2);
    _block_invoke_7_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_7_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:47.0 forSizeClass:54.0];
  v4 = v3;

  return v4;
}

double __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_8_lock);
  if (_block_invoke_8___cachedDevice)
  {
    v3 = _block_invoke_8___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_8___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_8_value;
  }

  else
  {
    _block_invoke_8___cachedDevice = v2;
    _block_invoke_8___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke_2(_block_invoke_8___previousCLKDeviceVersion, v2);
    _block_invoke_8_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_8_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:*MEMORY[0x277CBB6B8]];
  v4 = v3;

  return v4;
}

double __CDGraphicCircularScaledComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_9_lock);
  if (_block_invoke_9___cachedDevice)
  {
    v3 = _block_invoke_9___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_9___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_9_value;
  }

  else
  {
    _block_invoke_9___cachedDevice = v2;
    _block_invoke_9___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicCircularScaledComplicationDiameter_block_invoke_2(_block_invoke_9___previousCLKDeviceVersion, v2);
    _block_invoke_9_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_9_lock);

  return *&v5;
}

double __CDGraphicCircularScaledComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703040;
  v9[0] = &unk_285703488;
  v9[1] = &unk_285703358;
  v8[2] = &unk_285703058;
  v8[3] = &unk_285703070;
  v9[2] = &unk_285703498;
  v9[3] = &unk_285703498;
  v8[4] = &unk_285703010;
  v8[5] = &unk_285703028;
  v9[4] = &unk_285703488;
  v9[5] = &unk_2857034A8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  [v2 scaledValue:v3 withOverrides:34.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_10_lock);
  if (_block_invoke_10___cachedDevice)
  {
    v3 = _block_invoke_10___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_10___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_10_value_0;
  }

  else
  {
    _block_invoke_10___cachedDevice = v2;
    _block_invoke_10___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationSize_block_invoke_2(_block_invoke_10___previousCLKDeviceVersion, v2);
    _block_invoke_10_value_0 = v5;
    _block_invoke_10_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_10_lock);

  return *&v5;
}

double __CDCornerComplicationSize_block_invoke_2(uint64_t a1, void *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  v3 = CLKDeviceCategoryForSizeClass();
  if (v3 < 5)
  {
    v5 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];

    v18[0] = &unk_285702FF8;
    v17 = xmmword_243DB12B0;
    v6 = [MEMORY[0x277CCAE60] valueWithBytes:&v17 objCType:"{CGSize=dd}"];
    v19[0] = v6;
    v18[1] = &unk_285703040;
    v16 = xmmword_243DB12C0;
    v7 = [MEMORY[0x277CCAE60] valueWithBytes:&v16 objCType:"{CGSize=dd}"];
    v19[1] = v7;
    v18[2] = &unk_285703058;
    v15 = xmmword_243DB12D0;
    v8 = [MEMORY[0x277CCAE60] valueWithBytes:&v15 objCType:"{CGSize=dd}"];
    v19[2] = v8;
    v18[3] = &unk_285703070;
    v14 = xmmword_243DB12E0;
    v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v14 objCType:"{CGSize=dd}"];
    v19[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    [v5 scaledSize:v10 withOverrides:{77.5, 61.5}];
    v4 = v11;

    v2 = v5;
  }

  else
  {
    v4 = ___cornerComplicationSize_block_invoke(v3, v2);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

double __CDCornerComplicationKeylineSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_11_lock);
  if (_block_invoke_11___cachedDevice)
  {
    v3 = _block_invoke_11___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_11___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_11_value_0;
  }

  else
  {
    _block_invoke_11___cachedDevice = v2;
    _block_invoke_11___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationKeylineSize_block_invoke_2(_block_invoke_11___previousCLKDeviceVersion, v2);
    _block_invoke_11_value_0 = v5;
    _block_invoke_11_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_11_lock);

  return *&v5;
}

double __CDCornerComplicationKeylineSize_block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() == 5)
  {
    v3 = ___cornerComplicationSize_block_invoke(5, v2);
  }

  else
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];
    [v2 screenBounds];
    [v4 setScale:objc_msgSend(v2 forSizeClass:{"sizeClass"), v5 / 162.0}];
    v12 = &unk_285702FF8;
    v11 = xmmword_243DB12F0;
    v6 = [MEMORY[0x277CCAE60] valueWithBytes:&v11 objCType:"{CGSize=dd}"];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v4 scaledSize:v7 withOverrides:{77.5, 58.5}];
    v3 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

double __CDCornerComplicationKeylineInnerRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_12_lock);
  if (_block_invoke_12___cachedDevice)
  {
    v3 = _block_invoke_12___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_12___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_12_value;
  }

  else
  {
    _block_invoke_12___cachedDevice = v2;
    _block_invoke_12___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationKeylineInnerRadius_block_invoke_2(_block_invoke_12___previousCLKDeviceVersion, v2);
    _block_invoke_12_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_12_lock);

  return *&v5;
}

double __CDCornerComplicationKeylineInnerRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703010;
  v9[0] = &unk_2857034B8;
  v9[1] = &unk_2857034C8;
  v8[2] = &unk_285703028;
  v9[2] = &unk_2857034D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:84.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationCenterPointRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_13_lock);
  if (_block_invoke_13___cachedDevice)
  {
    v3 = _block_invoke_13___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_13___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_13_value;
  }

  else
  {
    _block_invoke_13___cachedDevice = v2;
    _block_invoke_13___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationCenterPointRadius_block_invoke_2(_block_invoke_13___previousCLKDeviceVersion, v2);
    _block_invoke_13_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_13_lock);

  return *&v5;
}

double __CDCornerComplicationCenterPointRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __CDCornerComplicationKeylineInnerRadius_block_invoke(v2, v2);
  v5 = ___cornerComplicationOuterRadius_block_invoke(v4, v2);
  [v2 screenCornerRadius];
  v7 = v6;

  return (v3 + v5 + v7 * -0.414213562) * 0.5;
}

double CDCornerComplicationClippingSliceAngle(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 sizeClass];
  if (CLKDeviceCategoryForSizeClass() < 5)
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v1 identitySizeClass:2];
    v9[0] = &unk_285703010;
    v9[1] = &unk_285703028;
    v10[0] = &unk_2857034E8;
    v10[1] = &unk_2857034E8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v4 constantValue:v5 withOverrides:56.0];
    v3 = v6;
  }

  else
  {
    v2 = 90.0 - CDCornerComplicationTopExclusionSliceAngle(v1) * 0.5;
    v3 = v2 - CDCornerComplicationSideExclusionSliceAngle(v1) * 0.5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

double CDCornerComplicationTopExclusionSliceAngle(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v7[0] = &unk_285703010;
  v7[1] = &unk_285703028;
  v8[0] = &unk_2857034F8;
  v8[1] = &unk_2857034F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v1 constantValue:v2 withOverrides:4.5];
  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

double CDCornerComplicationSideExclusionSliceAngle(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v7[0] = &unk_285703010;
  v7[1] = &unk_285703028;
  v8[0] = &unk_285703508;
  v8[1] = &unk_285703508;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v1 constantValue:v2 withOverrides:48.5];
  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

double __CDCornerComplicationInnerUpperCircleRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_14_lock);
  if (_block_invoke_14___cachedDevice)
  {
    v3 = _block_invoke_14___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_14___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_14_value;
  }

  else
  {
    _block_invoke_14___cachedDevice = v2;
    _block_invoke_14___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerUpperCircleRadius_block_invoke_2(_block_invoke_14___previousCLKDeviceVersion, v2);
    _block_invoke_14_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_14_lock);

  return *&v5;
}

double __CDCornerComplicationInnerUpperCircleRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703010;
  v9[0] = &unk_2857034B8;
  v9[1] = &unk_2857034C8;
  v8[2] = &unk_285703028;
  v9[2] = &unk_2857034D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:83.5];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_15_lock);
  if (_block_invoke_15___cachedDevice)
  {
    v3 = _block_invoke_15___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_15___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_15_value;
  }

  else
  {
    _block_invoke_15___cachedDevice = v2;
    _block_invoke_15___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke_2(_block_invoke_15___previousCLKDeviceVersion, v2);
    _block_invoke_15_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_15_lock);

  return *&v5;
}

double __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() == 5)
  {
    v3 = __CDCornerComplicationInnerUpperCircleRadius_block_invoke(5, v2);
  }

  else
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];

    v9[0] = &unk_285702FF8;
    v9[1] = &unk_285703058;
    v10[0] = &unk_285703518;
    v10[1] = &unk_285703528;
    v9[2] = &unk_285703070;
    v10[2] = &unk_285703528;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
    [v4 scaledValue:v5 withOverrides:80.5];
    v3 = v6;

    v2 = v4;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

double __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_16_lock);
  if (_block_invoke_16___cachedDevice)
  {
    v3 = _block_invoke_16___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_16___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_16_value;
  }

  else
  {
    _block_invoke_16___cachedDevice = v2;
    _block_invoke_16___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke_2(_block_invoke_16___previousCLKDeviceVersion, v2);
    _block_invoke_16_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_16_lock);

  return *&v5;
}

double __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703010;
  v9[0] = &unk_285703538;
  v9[1] = &unk_285703548;
  v8[2] = &unk_285703028;
  v9[2] = &unk_285703558;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:90.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_17_lock);
  if (_block_invoke_17___cachedDevice)
  {
    v3 = _block_invoke_17___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_17___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_17_value;
  }

  else
  {
    _block_invoke_17___cachedDevice = v2;
    _block_invoke_17___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke_2(_block_invoke_17___previousCLKDeviceVersion, v2);
    _block_invoke_17_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_17_lock);

  return *&v5;
}

double __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703010;
  v9[0] = &unk_285703568;
  v9[1] = &unk_285703578;
  v8[2] = &unk_285703028;
  v9[2] = &unk_285703588;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:94.0];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_18_lock);
  if (_block_invoke_18___cachedDevice)
  {
    v3 = _block_invoke_18___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_18___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_18_value;
  }

  else
  {
    _block_invoke_18___cachedDevice = v2;
    _block_invoke_18___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke_2(_block_invoke_18___previousCLKDeviceVersion, v2);
    _block_invoke_18_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_18_lock);

  return *&v5;
}

double __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703010;
  v9[0] = &unk_285703598;
  v9[1] = &unk_2857035A8;
  v8[2] = &unk_285703028;
  v9[2] = &unk_2857035B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:105.5];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationTopLeftCenterAngle_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_19_lock);
  if (_block_invoke_19___cachedDevice)
  {
    v3 = _block_invoke_19___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_19___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_19_value;
  }

  else
  {
    _block_invoke_19___cachedDevice = v2;
    _block_invoke_19___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationTopLeftCenterAngle_block_invoke_2(_block_invoke_19___previousCLKDeviceVersion, v2);
    _block_invoke_19_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_19_lock);

  return *&v5;
}

double __CDCornerComplicationTopLeftCenterAngle_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CDCornerComplicationClippingSliceAngle(v2);
  v4 = CDCornerComplicationTopExclusionSliceAngle(v2);

  return (v3 + v4) * 0.5;
}

double __CDCornerComplicationOuterImageCenterRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_20_lock);
  if (_block_invoke_20___cachedDevice)
  {
    v3 = _block_invoke_20___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_20___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_20_value;
  }

  else
  {
    _block_invoke_20___cachedDevice = v2;
    _block_invoke_20___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterImageCenterRadius_block_invoke_2(_block_invoke_20___previousCLKDeviceVersion, v2);
    _block_invoke_20_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_20_lock);

  return *&v5;
}

double __CDCornerComplicationOuterImageCenterRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_285703070;
  v8[1] = &unk_285703010;
  v9[0] = &unk_2857035C8;
  v9[1] = &unk_2857035D8;
  v8[2] = &unk_285703028;
  v9[2] = &unk_2857035E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 scaledValue:v3 withOverrides:109.5];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double __CDCornerComplicationOuterImageCenterPoint_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_21_lock);
  if (_block_invoke_21___cachedDevice)
  {
    v3 = _block_invoke_21___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_21___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_21_value_0;
  }

  else
  {
    _block_invoke_21___cachedDevice = v2;
    _block_invoke_21___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterImageCenterPoint_block_invoke_2(_block_invoke_21___previousCLKDeviceVersion, v2);
    _block_invoke_21_value_0 = v5;
    _block_invoke_21_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_21_lock);

  return *&v5;
}

double __CDCornerComplicationOuterImageCenterPoint_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x245D51E10]([v2 screenBounds]);
  v5 = v4;
  __CDCornerComplicationTopLeftCenterAngle_block_invoke(v3, v2);
  v7 = __CDCornerComplicationOuterImageCenterRadius_block_invoke(v6, v2);

  CLKDegreesToRadians();
  *&v8 = v8;
  sinf(*&v8);
  CLKDegreesToRadians();
  *&v9 = v9;
  return v5 - v7 * cosf(*&v9);
}

double __CDCornerComplicationCenterPoint_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_22_lock);
  if (_block_invoke_22___cachedDevice)
  {
    v3 = _block_invoke_22___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_22___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_22_value_0;
  }

  else
  {
    _block_invoke_22___cachedDevice = v2;
    _block_invoke_22___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationCenterPoint_block_invoke_2(_block_invoke_22___previousCLKDeviceVersion, v2);
    _block_invoke_22_value_0 = v5;
    _block_invoke_22_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_22_lock);

  return *&v5;
}

double __CDCornerComplicationCenterPoint_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() < 5)
  {
    v10 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v3 = MEMORY[0x245D51E10]([v2 screenBounds]);
    v5 = v4;
    __CDCornerComplicationTopLeftCenterAngle_block_invoke(v3, v2);
    v7 = __CDCornerComplicationCenterPointRadius_block_invoke(v6, v2);
    CLKDegreesToRadians();
    *&v8 = v8;
    sinf(*&v8);
    CLKDegreesToRadians();
    *&v9 = v9;
    v10 = v5 - v7 * cosf(*&v9);
  }

  return v10;
}

double ___cornerComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_23_lock);
  if (_block_invoke_23___cachedDevice)
  {
    v3 = _block_invoke_23___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_23___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_23_value_0;
  }

  else
  {
    _block_invoke_23___cachedDevice = v2;
    _block_invoke_23___previousCLKDeviceVersion = [v2 version];
    v5 = ___cornerComplicationSize_block_invoke_2(_block_invoke_23___previousCLKDeviceVersion, v2);
    _block_invoke_23_value_0 = v5;
    _block_invoke_23_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_23_lock);

  return *&v5;
}

double ___cornerComplicationSize_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __CDCornerComplicationKeylineInnerRadius_block_invoke(v2, v2);
  v4 = MEMORY[0x245D51E10]([v2 screenBounds]);
  v6 = v5;
  v7 = ___cornerComplicationOuterRadius_block_invoke(v4, v2);
  CDCornerComplicationClippingSliceAngle(v2);
  CLKDegreesToRadians();
  *&v8 = v8;
  v9 = v7 * sinf(*&v8);
  CLKDegreesToRadians();
  *&v10 = v10;
  v11 = v3 + v9 / sinf(*&v10);
  CDCornerComplicationTopExclusionSliceAngle(v2);
  CLKDegreesToRadians();
  *&v12 = v12;
  v13 = v6 + v11 * -0.5 * sinf(*&v12);
  CDCornerComplicationSideExclusionSliceAngle(v2);

  CLKDegreesToRadians();
  *&v14 = v14;
  sinf(*&v14);
  return v13;
}

double ___cornerComplicationOuterRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_24_lock);
  if (_block_invoke_24___cachedDevice)
  {
    v3 = _block_invoke_24___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_24___previousCLKDeviceVersion))
  {
    v5 = *&_block_invoke_24_value;
  }

  else
  {
    _block_invoke_24___cachedDevice = v2;
    _block_invoke_24___previousCLKDeviceVersion = [v2 version];
    ___cornerComplicationOuterRadius_block_invoke_2(_block_invoke_24___previousCLKDeviceVersion, v2);
    v5 = *&v6;
    _block_invoke_24_value = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_24_lock);

  return v5;
}

void ___cornerComplicationOuterRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x245D51E10]([v2 screenBounds]);
  CDCornerComplicationClippingSliceAngle(v2);
  CDCornerComplicationSideExclusionSliceAngle(v2);

  CLKDegreesToRadians();
  *&v3 = v3;
  tanf(*&v3);
  CLKDegreesToRadians();
  *&v4 = v4;
  atanf(*&v4);
  __asm { FMOV            V1.2D, #1.0 }
}

id _CDLayerMaskColorizationFilter(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  *v34 = 0u;
  v3 = a2;
  [a1 getRed:&v33 green:&v33 + 8 blue:v34 alpha:&v34[1]];
  v31 = 0u;
  v32 = 0u;
  [v3 getRed:&v31 green:&v31 + 8 blue:&v32 alpha:&v32 + 8];

  v4 = MEMORY[0x277CD9DA0];
  v5 = *(MEMORY[0x277CD9DA0] + 76);
  v6 = *&v33;
  v7 = *(&v33 + 1);
  v8 = v34[0];
  v9 = *&v31;
  v10 = *(&v31 + 1);
  v11 = *&v32;
  v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  *v17 = v6;
  *&v17[1] = v9;
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = v7;
  v21 = v10;
  v22 = *(v4 + 28);
  v23 = *(v4 + 36);
  v24 = v8;
  v25 = v11;
  v26 = 0;
  v13 = *(v4 + 68);
  v27 = *(v4 + 52);
  v28 = v13;
  v29 = 1065353216;
  v30 = v5;
  v14 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v17];
  [v12 setValue:v14 forKey:@"inputColorMatrix"];

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_243D8BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243D8BE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243D8C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

double CDRichComplicationCornerBaseCircularViewRect(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = ___LayoutConstants_block_invoke_11(v3, v3);
  v6 = v5;
  v7 = CDCornerComplicationSize(v3);
  if (CDUsingRadialCornerComplicationLayout(v3))
  {
    v8 = CDCornerComplicationCenterPoint(v3) - v4 * 0.5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v9 = v8;
    }

    else if (a2 == 3)
    {
      v9 = v7 - v8 - v4;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = v7 - v8 - v4;
    }
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

void sub_243D8EBB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v15 = [objc_opt_self() sharedRenderingContext];
  v16 = [v15 device];

  v49 = v16;
  v17 = CDRichComplicationCornerInnerImageMaxSize(v16);
  v19 = v18;
  v20 = MEMORY[0x277D84F90];
  v21 = *(a5 + 16);
  if (v21)
  {
    v58 = MEMORY[0x277D84F90];
    sub_243D93638(0, v21, 0);
    v22 = v58;
    v23 = 32;
    do
    {
      v24 = *(a5 + v23);
      v25 = [v24 textProvider];
      [v25 finalize];
      v26 = [v24 imageProvider];
      if (v26 && (v27 = v26, [v26 copy], v27, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
      {
        v28 = v57;
        type metadata accessor for WidgetNamedImageProvider(0);
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v29 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            v31 = (v29 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
            *v31 = v17;
            v31[1] = v19;
            *(v29 + v30) = 1;
          }
        }

        else
        {
          [v57 finalizeWithMaxSDKSize:0 maxDeviceSize:v17 maskToCircle:{v19, v17, v19}];
        }
      }

      else
      {
        v28 = 0;
      }

      v32 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v25 imageProvider:v28];

      v34 = *(v58 + 16);
      v33 = *(v58 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_243D93638((v33 > 1), v34 + 1, 1);
      }

      *(v58 + 16) = v34 + 1;
      *(v58 + 8 * v34 + 32) = v32;
      v23 += 8;
      --v21;
    }

    while (v21);

    v20 = MEMORY[0x277D84F90];
    v35 = *(a6 + 16);
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_28:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v22 = MEMORY[0x277D84F90];
  v35 = *(a6 + 16);
  if (!v35)
  {
    goto LABEL_28;
  }

LABEL_15:
  sub_243D93638(0, v35, 0);
  v36 = v20;
  v37 = 32;
  do
  {
    v38 = *(a6 + v37);
    v39 = [v38 textProvider];
    [v39 finalize];
    v40 = [v38 imageProvider];
    if (v40 && (v41 = v40, [v40 copy], v41, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
    {
      v42 = v57;
      type metadata accessor for WidgetNamedImageProvider(0);
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
        if ((*(v43 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
        {
          v45 = (v43 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
          *v45 = v17;
          v45[1] = v19;
          *(v43 + v44) = 1;
        }
      }

      else
      {
        [v57 finalizeWithMaxSDKSize:0 maxDeviceSize:v17 maskToCircle:{v19, v17, v19}];
      }
    }

    else
    {
      v42 = 0;
    }

    v46 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v39 imageProvider:v42];

    v48 = *(v36 + 16);
    v47 = *(v36 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_243D93638((v47 > 1), v48 + 1, 1);
    }

    *(v36 + 16) = v48 + 1;
    *(v36 + 8 * v48 + 32) = v46;
    v37 += 8;
    --v35;
  }

  while (v35);

LABEL_29:
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v22;
  *(a9 + 56) = v36;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
}

double sub_243D8F084()
{
  v6.origin.x = sub_243D8F0E8();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  MidX = CGRectGetMidX(v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMidY(v7);
  return MidX;
}

double sub_243D8F0E8()
{
  v1 = [objc_opt_self() sharedRenderingContext];
  v2 = [v1 device];

  CDRichComplicationCornerGaugeCustomViewRect(v2, *(v0 + 16));
  v4 = v3;

  return v4;
}

uint64_t sub_243D8F18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_243DAD9D0();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v7 = sub_243DAE070();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v11 = sub_243DAD9E0();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 24);
  v32 = v6;
  v33 = v18;
  v34 = v30;
  sub_243DAE090();
  sub_243DAE060();
  swift_getKeyPath();
  v19 = v28;
  v20 = v29;
  (*(v3 + 104))(v28, *MEMORY[0x277CDFA88], v29);
  WitnessTable = swift_getWitnessTable();
  sub_243DADE60();

  (*(v3 + 8))(v19, v20);
  (*(v26 + 8))(v10, v7);
  v22 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  v35 = WitnessTable;
  v36 = v22;
  v23 = swift_getWitnessTable();
  sub_243D9EE08(v15, v11, v23);
  v24 = *(v27 + 8);
  v24(v15, v11);
  sub_243D9EE08(v17, v11, v23);
  return (v24)(v17, v11);
}

void sub_243D8F5F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v75 = *(a2 - 8);
  v7 = *(v75 + 64);
  (MEMORY[0x28223BE20])();
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  v9 = sub_243DAD9E0();
  v78 = *(v9 - 8);
  v10 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v62 = &v62 - v11;
  v73 = sub_243DAD9E0();
  v82 = *(v73 - 8);
  v12 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v65 = &v62 - v13;
  v74 = sub_243DAD9E0();
  v84 = *(v74 - 8);
  v14 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v68 = &v62 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v81 = sub_243DAD9E0();
  v85 = *(v81 - 8);
  v16 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v69 = &v62 - v17;
  v76 = sub_243DAD9E0();
  v86 = *(v76 - 8);
  v18 = *(v86 + 64);
  v19 = (MEMORY[0x28223BE20])();
  v77 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v62 - v21;
  v64 = type metadata accessor for ComplicationCornerGaugeView();
  sub_243D8F0E8();
  v23 = v22 / *a1;
  v25 = v24 / *(a1 + 8);
  sub_243D8F0E8();
  v26 = *(a1 + 24);
  v80 = *(a1 + 16);
  v79 = v26;
  v27 = *(a1 + 56);
  v71 = *(a1 + 48);
  v70 = v27;
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  type metadata accessor for MonochromeModel();
  sub_243D910DC(&qword_27EDBABA0, type metadata accessor for MonochromeModel);
  v72 = v29;

  v30 = v28;
  v67 = sub_243DAD9C0();
  v66 = v31;
  v32 = *(a1 + 72);
  v33 = v63;
  (*(a1 + 64))();
  swift_getKeyPath();
  LOBYTE(v91[0]) = 1;
  v34 = v62;
  sub_243DADE60();

  (*(v75 + 8))(v33, a2);
  sub_243DAE0D0();
  v36 = v35;
  v38 = v37;
  v39 = sub_243D90C40(&qword_27EDBABA8, &qword_27EDBAB80, &qword_243DB16B8);
  v97[10] = a3;
  v97[11] = v39;
  WitnessTable = swift_getWitnessTable();
  v41 = v65;
  MEMORY[0x245D51680](v9, WitnessTable, v23, v25, v36, v38);
  (*(v78 + 8))(v34, v9);
  sub_243DAE090();
  v97[8] = WitnessTable;
  v97[9] = MEMORY[0x277CDF690];
  v42 = v73;
  v43 = swift_getWitnessTable();
  v44 = v68;
  sub_243DADEB0();
  (*(v82 + 8))(v41, v42);
  v97[6] = v43;
  v97[7] = MEMORY[0x277CDF678];
  v45 = v74;
  v46 = swift_getWitnessTable();
  sub_243D90BEC();
  v47 = v69;
  sub_243DADEF0();
  (*(v84 + 8))(v44, v45);
  sub_243D8F084();
  v48 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0);
  v97[4] = v46;
  v97[5] = v48;
  v49 = v81;
  v50 = swift_getWitnessTable();
  v51 = v77;
  sub_243DADEE0();
  (*(v85 + 8))(v47, v49);
  v97[2] = v50;
  v97[3] = MEMORY[0x277CDFB28];
  v52 = v76;
  v53 = swift_getWitnessTable();
  v54 = v83;
  sub_243D9EE08(v51, v52, v53);
  v55 = v86;
  v85 = *(v86 + 8);
  (v85)(v51, v52);
  v91[0] = v80;
  v91[1] = v79;
  v56 = v72;
  v92 = v72;
  v93 = v71;
  v94 = v70;
  v95 = v67;
  v57 = v66;
  v96 = v66;
  v97[0] = v91;
  (*(v55 + 16))(v51, v54, v52);
  v97[1] = v51;
  v58 = v56;

  v59 = v57;
  v90[0] = &type metadata for ComplicationCornerGaugeViewRepresentable;
  v90[1] = v52;
  v88 = sub_243D90C88();
  v89 = v53;
  sub_243D94ED4(v97, 2uLL, v90);

  v60 = v85;
  (v85)(v54, v52);
  v60(v51, v52);
  v61 = v92;
}

uint64_t sub_243D8FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_243D8F18C(a1, a2);
}

void sub_243D8FFE4(void *a1)
{
  v3 = sub_243D96AC0(v1[3]);
  v4 = sub_243D96AC0(v1[4]);
  [a1 handleGaugeProvider:v1[2] leftLabelProvider:v3 rightLabelProvider:v4];
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v5 >= 1.0)
  {
    [a1 updateMonochromeColor];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    [a1 transitionToMonochromeWithFraction_];
  }
}

id sub_243D9036C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerGaugeViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D8FFE4(v1);
  return v1;
}

uint64_t sub_243D90428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D911C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D9048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D911C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D904F0()
{
  sub_243D911C0();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D90518(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = [a1 style];
    v8 = *&v3[OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle];
    if (v7 == *MEMORY[0x277CBB698])
    {
      if (v8 != 7)
      {
        v9 = 7;
LABEL_7:
        *&v3[OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle] = v9;
        [v3 _replaceProgressView_];
      }
    }

    else if (v8 == 7)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for _ComplicationCornerDynamicGaugeView();
  return objc_msgSendSuper2(&v11, sel_handleGaugeProvider_leftLabelProvider_rightLabelProvider_, a1, a2, a3);
}

id sub_243D906E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243D907CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_243D90830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_243D90878(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_243D9090C()
{
  v1 = *v0;
  v2 = sub_243DAE160();
  v3 = MEMORY[0x245D51990](v2);

  return v3;
}

uint64_t sub_243D90948()
{
  v1 = *v0;
  sub_243DAE160();
  sub_243DAE170();
}

uint64_t sub_243D9099C()
{
  v1 = *v0;
  sub_243DAE160();
  sub_243DAE320();
  sub_243DAE170();
  v2 = sub_243DAE340();

  return v2;
}

uint64_t sub_243D90A18(uint64_t a1, id *a2)
{
  result = sub_243DAE140();
  *a2 = 0;
  return result;
}

uint64_t sub_243D90A90(uint64_t a1, id *a2)
{
  v3 = sub_243DAE150();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_243D90B10@<X0>(uint64_t *a1@<X8>)
{
  sub_243DAE160();
  v2 = sub_243DAE130();

  *a1 = v2;
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

unint64_t sub_243D90BEC()
{
  result = qword_27EDBABB0;
  if (!qword_27EDBABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABB0);
  }

  return result;
}

uint64_t sub_243D90C40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_243D90C88()
{
  result = qword_27EDBABC0;
  if (!qword_27EDBABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABC0);
  }

  return result;
}

id sub_243D90CDC()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D90D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_243DAE160();
  v6 = v5;
  if (v4 == sub_243DAE160() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_243DAE310();
  }

  return v9 & 1;
}

uint64_t sub_243D90DC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243DAE130();

  *a2 = v5;
  return result;
}

uint64_t sub_243D90E0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_243DAE160();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_243D90E38(uint64_t a1)
{
  v2 = sub_243D910DC(&qword_27EDBABF8, type metadata accessor for RBDrawableStatisticsKey);
  v3 = sub_243D910DC(&unk_27EDBAC00, type metadata accessor for RBDrawableStatisticsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_243D90EF4()
{
  result = qword_27EDBABC8;
  if (!qword_27EDBABC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBABC8);
  }

  return result;
}

void sub_243D90F84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243D90FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_243D91034(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_243D910DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243D911C0()
{
  result = qword_27EDBABF0;
  if (!qword_27EDBABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABF0);
  }

  return result;
}

uint64_t sub_243D91228()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243D91278(uint64_t a1, int a2)
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

uint64_t sub_243D912C0(uint64_t result, int a2, int a3)
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

uint64_t sub_243D91380(uint64_t a1)
{
  v2 = sub_243DAD9D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243DADA80();
}

double sub_243D9144C(uint64_t a1)
{
  v7.origin.x = sub_243D914B0(a1);
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  MidX = CGRectGetMidX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetMidY(v8);
  return MidX;
}

double sub_243D914B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedRenderingContext];
  v3 = [v2 device];

  v4 = CDRichComplicationCornerBaseCircularViewRect(v3, a1);
  return v4;
}

uint64_t sub_243D91558@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a5;
  v49[1] = a3;
  v49[0] = a2;
  v50 = a1;
  v64 = a6;
  v9 = sub_243DAD9D0();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a4 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243DAD9E0();
  v54 = *(v16 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v49 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v20 = sub_243DAD9E0();
  v55 = *(v20 - 8);
  v21 = *(v55 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v49 - v22;
  v24 = sub_243DAD9E0();
  v59 = *(v24 - 8);
  v25 = *(v59 + 64);
  MEMORY[0x28223BE20](v24);
  v51 = v49 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v58 = sub_243DAD9E0();
  v60 = *(v58 - 8);
  v27 = *(v60 + 64);
  v28 = MEMORY[0x28223BE20](v58);
  v52 = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v57 = v49 - v30;
  v31 = sub_243D914B0(a1);
  a2(v31);
  sub_243DAE090();
  v32 = v56;
  sub_243DADEB0();
  (*(v53 + 8))(v15, a4);
  v71 = v32;
  v72 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_243D90BEC();
  sub_243DADEF0();
  (*(v54 + 8))(v19, v16);
  sub_243D9144C(v50);
  v34 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0);
  v69 = WitnessTable;
  v70 = v34;
  v35 = swift_getWitnessTable();
  v36 = v51;
  sub_243DADEE0();
  (*(v55 + 8))(v23, v20);
  swift_getKeyPath();
  v37 = v61;
  v38 = v62;
  v39 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277CDFA88], v63);
  v67 = v35;
  v68 = MEMORY[0x277CDFB28];
  v40 = v24;
  v41 = swift_getWitnessTable();
  v42 = v52;
  sub_243DADE60();

  (*(v38 + 8))(v37, v39);
  (*(v59 + 8))(v36, v40);
  v43 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  v65 = v41;
  v66 = v43;
  v44 = v58;
  v45 = swift_getWitnessTable();
  v46 = v57;
  sub_243D9EE08(v42, v44, v45);
  v47 = *(v60 + 8);
  v47(v42, v44);
  sub_243D9EE08(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t ComplicationCurvedLabelViewConfiguration.curvedTextConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_243D91C88(v9, &v8);
}

__n128 ComplicationCurvedLabelViewConfiguration.curvedTextConfiguration.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_243D91D44(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t ComplicationCurvedLabelViewConfiguration.labelProviders.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

void *ComplicationCurvedLabelViewConfiguration.monochromeModel.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

__n128 ComplicationCurvedLabelViewConfiguration.init(curvedTextConfiguration:monochromeModel:labelProviders:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 96) = a3;
  *(a4 + 104) = a2;
  return result;
}

uint64_t ComplicationCurvedLabelView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_243D91EF8(v10, &v9);
}

double ComplicationCurvedLabelView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ComplicationCurvedTextViewRepresentable();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBACF8, &qword_243DB1AF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = v1[7];
  v67 = v1[6];
  v68 = v15;
  v69 = *(v1 + 16);
  v16 = v69;
  v17 = v1[3];
  v63 = v1[2];
  v64 = v17;
  v18 = v1[5];
  v65 = v1[4];
  v66 = v18;
  v19 = v1[1];
  v61 = *v1;
  v62 = v19;
  v20 = *(&v68 + 1);
  sub_243D91C88(&v61, &v55);
  sub_243D91C88(&v61, &v55);
  *&v55 = v20;
  *(&v55 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF8, &unk_243DB1E70);
  sub_243DADFF0();
  v21 = v51;
  v23 = *(&v67 + 1);
  v22 = v68;
  v24 = *(v4 + 40);
  *&v8[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD00, &qword_243DB1B28);
  swift_storeEnumTagMultiPayload();
  v25 = v64;
  *(v8 + 2) = v63;
  *(v8 + 3) = v25;
  v26 = v66;
  *(v8 + 4) = v65;
  *(v8 + 5) = v26;
  v27 = v62;
  *v8 = v61;
  *(v8 + 1) = v27;
  *(v8 + 14) = v21;
  *(v8 + 12) = v22;
  if (v23)
  {

    v28 = v23;
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for MonochromeModel());

    v30 = [v29 init];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v55 = 0x3FF0000000000000;
    v31 = v30;
    sub_243DAD870();
    v32 = sub_243DADF40();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v55 = v32;
    v33 = v31;
    sub_243DAD870();
    v34 = sub_243DADF40();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v55 = v34;
    v28 = v33;
    sub_243DAD870();
    v23 = 0;
  }

  *(v8 + 13) = v28;
  sub_243D93564(v8, v10);
  v35 = *(&v68 + 1);
  v36 = v69;
  v37 = v23;
  *&v55 = v35;
  *(&v55 + 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF8, &unk_243DB1E70);
  sub_243DADFF0();
  v38 = v51;
  sub_243D93564(v10, v14);
  *&v14[*(v11 + 36)] = v38;
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v55 = v61;
  v56 = v62;
  v48 = 0u;
  v49 = 0u;
  v50 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD08, &unk_243DB35C0);
  sub_243DADFE0();
  LOBYTE(v38) = v53;
  v39 = v54;
  v46 = v52;
  v47 = v51;
  sub_243D935C8(v14, a1);
  v40 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD10, &qword_243DB1C10) + 36);
  v41 = v58;
  *(v40 + 32) = v57;
  *(v40 + 48) = v41;
  v42 = v60;
  *(v40 + 64) = v59;
  *(v40 + 80) = v42;
  v43 = v56;
  *v40 = v55;
  *(v40 + 16) = v43;
  v45 = v46;
  result = *&v47;
  *(v40 + 96) = v47;
  *(v40 + 112) = v45;
  *(v40 + 128) = v38;
  *(v40 + 136) = v39;
  return result;
}

void sub_243D9231C()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:v0 identitySizeClass:2];

    [v2 scaledValue_];
    v4 = v3;

    qword_27EDBACF0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243D923B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[10];
  v8 = *(v1 + 128);
  v9 = *(v1 + 17);
  v10 = *(v1 + 7);
  v27 = *(v1 + 6);
  v28 = v10;
  LOBYTE(v29) = v8;
  v30 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  result = sub_243DADFF0();
  if (v21 == 2)
  {
    v12 = 0uLL;
    v13 = -1;
    v14 = 0uLL;
  }

  else
  {
    sub_243DADE20();
    v27 = 0x3FF0000000000000uLL;
    *&v28 = 0;
    *(&v28 + 1) = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0;
    sub_243DADDF0();
    v25[0] = v17;
    v25[1] = v18;
    v26 = v19;
    if (qword_27EDBAAA0 != -1)
    {
      swift_once();
    }

    sub_243DAD8C0();
    sub_243DADDB0();
    v15 = v23;
    v16 = v22;
    v13 = v24;
    sub_243D93C50(&v20);
    result = sub_243D93CA4(v25);
    v14 = v15;
    v12 = v16;
  }

  *a1 = v12;
  *(a1 + 16) = v14;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_243D92564(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a2[7];
  v22 = a2[6];
  v23 = v6;
  v8 = a2[6];
  v7 = a2[7];
  v24 = a2[8];
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v19 = v8;
  v20 = v7;
  v21 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  sub_243DADFF0();
  if (v13 == 2)
  {
    goto LABEL_3;
  }

  v19 = v12[0];
  v20 = v12[1];
  LOBYTE(v21) = v13;
  v14 = __PAIR64__(v3, v2);
  v15 = v4;
  v16 = v5;
  v17 = v9;
  v18 = v10;
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v19, &v14);
  if ((result & 1) == 0)
  {
LABEL_3:
    v19 = v22;
    v20 = v23;
    v21 = v24;
    v14 = v2 | (v3 << 32);
    v15 = v4;
    v16 = v5;
    v17 = v9;
    v18 = v10;
    sub_243D93F14(&v22, v12, &qword_27EDBADE0, &qword_243DB35B0);
    sub_243DAE000();
  }

  return result;
}

double sub_243D9268C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v35[6] = v2[6];
  v35[7] = v5;
  v35[8] = v2[8];
  v6 = v2[3];
  v35[2] = v2[2];
  v35[3] = v6;
  v7 = v2[5];
  v35[4] = v2[4];
  v35[5] = v7;
  v8 = v2[1];
  v35[0] = *v2;
  v35[1] = v8;
  v9 = swift_allocObject();
  v10 = v2[7];
  *(v9 + 7) = v2[6];
  *(v9 + 8) = v10;
  *(v9 + 9) = v2[8];
  v11 = v2[3];
  *(v9 + 3) = v2[2];
  *(v9 + 4) = v11;
  v12 = v2[5];
  *(v9 + 5) = v2[4];
  *(v9 + 6) = v12;
  v13 = v2[1];
  *(v9 + 1) = *v2;
  *(v9 + 2) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADC8, &qword_243DB1E40);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADD0, &qword_243DB1E48) + 36));
  *v15 = sub_243D93C10;
  v15[1] = v9;
  v16 = v2[7];
  v32 = v2[6];
  v33 = v16;
  v34 = v2[8];
  v17 = v2[3];
  v28 = v2[2];
  v29 = v17;
  v18 = v2[5];
  v30 = v2[4];
  v31 = v18;
  v19 = v2[1];
  v26 = *v2;
  v27 = v19;
  sub_243D93C18(v35, v24);
  sub_243D923B8(v24);
  v20 = v25;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADD8, &unk_243DB1E50) + 36);
  result = *v24;
  v23 = v24[1];
  *v21 = v24[0];
  *(v21 + 16) = v23;
  *(v21 + 32) = v20;
  return result;
}

__n128 ComplicationCurvedLabelView<>.init(configuration:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v50 = a1[4];
  v51 = v3;
  v52 = a1[6];
  v4 = a1[1];
  v46 = *a1;
  v47 = v4;
  v5 = a1[3];
  v48 = a1[2];
  v49 = v5;
  v6 = type metadata accessor for ComplicationCurvedTextMetricsObservable();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  if (qword_27EDBAAA8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EDBD7A8;
  v11 = byte_27EDBD7B0;
  *(v9 + 16) = xmmword_27EDBD790;
  *(v9 + 24) = *(&xmmword_27EDBD790 + 8);
  *(v9 + 40) = v10;
  *(v9 + 48) = v11;
  sub_243DAD7F0();
  v38 = v9;
  sub_243DADFE0();
  v12 = v36;
  v13 = v37;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v14 = v52.n128_u64[0];
  v15 = *(v52.n128_u64[0] + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v32 = v37;
    v33 = v36;
    v34 = a2;
    v17 = v51;
    sub_243D91EF8(&v46, &v36);
    v38 = v16;
    sub_243D93638(0, v15, 0);
    v16 = v38;
    v18 = (v14 + 32);
    do
    {
      v19 = *v18;
      v20 = [v19 textProvider];
      [v20 finalize];
      v21 = [v19 imageProvider];
      if (v21 && (v22 = v21, [v21 copy], v22, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
      {
        v23 = v35;
        type metadata accessor for WidgetNamedImageProvider(0);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v24 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            *(v24 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize) = v17;
            *(v24 + v25) = 1;
          }
        }

        else
        {
          [v35 finalizeWithMaxSDKSize:0 maxDeviceSize:v17 maskToCircle:v17];
        }
      }

      else
      {
        v23 = 0;
      }

      v26 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v20 imageProvider:v23];

      v38 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_243D93638((v27 > 1), v28 + 1, 1);
        v16 = v38;
      }

      *(v16 + 16) = v28 + 1;
      *(v16 + 8 * v28 + 32) = v26;
      ++v18;
      --v15;
    }

    while (v15);
    sub_243D93658(&v46);
    v12 = v33;
    a2 = v34;
    v13 = v32;
  }

  v29 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v29;
  *(a2 + 96) = v45;
  v30 = v40;
  *a2 = v39;
  *(a2 + 16) = v30;
  result = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = result;
  *(a2 + 112) = v16;
  *(a2 + 120) = v12;
  *(a2 + 128) = v13;
  return result;
}

id ComplicationCurvedLabelViewConfiguration.textProvider.getter()
{
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    return [*(v1 + 32) textProvider];
  }

  else
  {
    return 0;
  }
}

uint64_t ComplicationCurvedLabelViewConfiguration.textProvider.setter(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_243DB1AE0;
    *(v3 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v1 + 96);

  *(v1 + 96) = v3;
  return result;
}

void (*ComplicationCurvedLabelViewConfiguration.textProvider.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (*(v3 + 16))
  {
    v4 = [*(v3 + 32) textProvider];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_243D92CAC;
}

void sub_243D92CAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (a2)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_243DB1AE0;
      v6 = objc_allocWithZone(CDLabelProvider);
      v8 = v3;
      *(v5 + 32) = [v6 initWithTextProvider:v8 imageProvider:0];
    }

    else
    {
      v8 = 0;
      v5 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 96) = v5;
  }

  else
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB1AE0;
      *(v7 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 96) = v7;
  }
}

uint64_t ComplicationCurvedLabelViewConfiguration.contentProviders.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_243D93688(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = [v5 textProvider];
      v7 = [v5 imageProvider];

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_243D93688((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t ComplicationCurvedLabelViewConfiguration.contentProviders.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_243D93638(0, v3, 0);
    v4 = v12;
    v5 = (a1 + 40);
    do
    {
      v6 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*(v5 - 1) imageProvider:*v5];
      v13 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        sub_243D93638((v7 > 1), v8 + 1, 1);
        v6 = v9;
        v4 = v13;
      }

      v5 += 2;
      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v6;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v10 = *(v1 + 96);

  *(v1 + 96) = v4;
  return result;
}

uint64_t (*ComplicationCurvedLabelViewConfiguration.contentProviders.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = ComplicationCurvedLabelViewConfiguration.contentProviders.getter();
  return sub_243D930CC;
}

uint64_t sub_243D930CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return ComplicationCurvedLabelViewConfiguration.contentProviders.setter(*a1);
  }

  v4 = *a1;

  ComplicationCurvedLabelViewConfiguration.contentProviders.setter(v5);
}

__n128 ComplicationCurvedLabelViewConfiguration.init(contentSize:curvedTextConfiguration:textProvider:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_243DB1AE0;
    *(v6 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a2 imageProvider:0];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  *(a3 + 96) = v6;
  *(a3 + 104) = 0;
  return result;
}

double ComplicationCurvedLabelViewConfiguration.init(curvedTextConfiguration:monochromeModel:contentProviders:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v18 = *a1;
  v19 = a1[1];
  v7 = *(a3 + 16);
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_243D93638(0, v7, 0);
    v8 = v16;
    v9 = (a3 + 40);
    do
    {
      v10 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*(v9 - 1) imageProvider:*v9];
      v17 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        sub_243D93638((v11 > 1), v12 + 1, 1);
        v10 = v13;
        v8 = v17;
      }

      v9 += 2;
      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      --v7;
    }

    while (v7);

    v5 = a2;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  *(a4 + 64) = v22;
  *(a4 + 80) = v23;
  result = *&v18;
  *a4 = v18;
  *(a4 + 16) = v19;
  *(a4 + 96) = v8;
  *(a4 + 104) = v5;
  return result;
}

uint64_t sub_243D9336C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  *a2 = v5;
  return result;
}

uint64_t sub_243D933FC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  return sub_243DAD870();
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

uint64_t sub_243D934BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF0, &qword_243DB1E68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243D93F14(a1, &v6 - v4, &qword_27EDBADF0, &qword_243DB1E68);
  return sub_243DADAA0();
}

uint64_t sub_243D93564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationCurvedTextViewRepresentable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D935C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBACF8, &qword_243DB1AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_243D93638(char *a1, int64_t a2, char a3)
{
  result = sub_243D93CF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243D93688(char *a1, int64_t a2, char a3)
{
  result = sub_243D93E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_243D93710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_243D93758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D937C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_243D93834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_243D9387C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D938F4()
{
  result = qword_27EDBADA0;
  if (!qword_27EDBADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAD10, &qword_243DB1C10);
    sub_243D93980();
    sub_243D93AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADA0);
  }

  return result;
}

unint64_t sub_243D93980()
{
  result = qword_27EDBADA8;
  if (!qword_27EDBADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBACF8, &qword_243DB1AF0);
    sub_243D93A0C();
    sub_243D93A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADA8);
  }

  return result;
}

unint64_t sub_243D93A0C()
{
  result = qword_27EDBADB0;
  if (!qword_27EDBADB0)
  {
    type metadata accessor for ComplicationCurvedTextViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADB0);
  }

  return result;
}

unint64_t sub_243D93A64()
{
  result = qword_27EDBADB8;
  if (!qword_27EDBADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADB8);
  }

  return result;
}

unint64_t sub_243D93AB8()
{
  result = qword_27EDBADC0;
  if (!qword_27EDBADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADC0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_243D93B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_243D93B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_243D93CF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243D93E04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE8, &qword_243DB1E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243D93F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243D93F7C()
{
  result = qword_27EDBAE00;
  if (!qword_27EDBAE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADD8, &unk_243DB1E50);
    sub_243D94008();
    sub_243D940EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE00);
  }

  return result;
}

unint64_t sub_243D94008()
{
  result = qword_27EDBAE08;
  if (!qword_27EDBAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADD0, &qword_243DB1E48);
    sub_243D90C40(&qword_27EDBAE10, &qword_27EDBADC8, &qword_243DB1E40);
    sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE08);
  }

  return result;
}

unint64_t sub_243D940EC()
{
  result = qword_27EDBAE28;
  if (!qword_27EDBAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE28);
  }

  return result;
}

uint64_t View.complicationContainerPath(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return MEMORY[0x245D516E0](v6, a2, &type metadata for ComplicationContainerPathModifier, a3);
}

uint64_t static ComplicationContainerPathKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  v5 = byte_27EDBAE50;
  result = sub_243D94204(xmmword_27EDBAE30, *(&xmmword_27EDBAE30 + 1), qword_27EDBAE40, qword_27EDBAE48, byte_27EDBAE50);
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_243D94204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_243D94218(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_243D94218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t static ComplicationContainerPathKey.defaultValue.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  v5 = *(a1 + 16);
  xmmword_27EDBAE30 = *a1;
  *&qword_27EDBAE40 = v5;
  v6 = byte_27EDBAE50;
  byte_27EDBAE50 = *(a1 + 32);
  return sub_243D94294(v2, *(&v2 + 1), v3, v4, v6);
}

uint64_t sub_243D94294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_243D942A8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_243D942A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_243D9431C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  *a1 = xmmword_27EDBAE30;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_27EDBAE50;
  *(a1 + 32) = byte_27EDBAE50;
  return sub_243D94204(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t sub_243D9437C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  v6 = *(&xmmword_27EDBAE30 + 1);
  v11 = xmmword_27EDBAE30;
  v7 = qword_27EDBAE40;
  v8 = qword_27EDBAE48;
  *&xmmword_27EDBAE30 = v1;
  *(&xmmword_27EDBAE30 + 1) = v2;
  qword_27EDBAE40 = v3;
  qword_27EDBAE48 = v4;
  v9 = byte_27EDBAE50;
  byte_27EDBAE50 = v5;
  sub_243D94204(v1, v2, v3, v4, v5);
  return sub_243D94294(v11, v6, v7, v8, v9);
}

double static ComplicationContainerPathKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 32) == 255)
  {
    a2(&v10);
    result = *&v10;
    v4 = v11;
    *a1 = v10;
    *(a1 + 16) = v4;
    *(a1 + 32) = v12;
  }

  else
  {
    a2(v5);
    if (v6 != 255)
    {
      v7 = v5[0];
      v8 = v5[1];
      v9 = v6;
      v10 = 0x3FF0000000000000uLL;
      *&v11 = 0;
      *(&v11 + 1) = 0x3FF0000000000000;
      v12 = 0;
      v13 = 0;
      sub_243DADDA0();
      sub_243D944E0(v5);
    }
  }

  return result;
}

uint64_t sub_243D944E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE58, &qword_243DB1E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_243D94548(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 32) == 255)
  {
    a2(&v9);
    v7 = v11;
    result = *&v9;
    v8 = v10;
    *a1 = v9;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    a2(&v9);
    v4 = v11;
    if (v11 != 255)
    {
      v5 = v9;
      v6 = v10;
      v9 = 0x3FF0000000000000uLL;
      *&v10 = 0;
      *(&v10 + 1) = 0x3FF0000000000000;
      v11 = 0;
      v12 = 0;
      sub_243DADDA0();

      sub_243D94294(v5, *(&v5 + 1), v6, *(&v6 + 1), v4);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComplicationContainerPathKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ComplicationContainerPathKey(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_243D94770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_243D947BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_243D94830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE60, &qword_243DB2058);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v27 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *(v2 + 32);
  if (v13 == 255)
  {
    (*(v9 + 16))(v7, a1, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v14 = *(v2 + 24);
    v31 = *(v2 + 16);
    v32 = v14;
    v15 = *(v2 + 8);
    v28 = *v2;
    v29 = v15;
    (*(v9 + 16))(v12, a1, v8);
    v16 = *(v9 + 80);
    v30 = v4;
    v17 = (v16 + 16) & ~v16;
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v12, v8);
    v19 = v18 + ((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = *(v2 + 16);
    *v19 = *v2;
    *(v19 + 16) = v20;
    *(v19 + 32) = *(v2 + 32);
    v21 = v18 + ((v17 + v10 + 47) & 0xFFFFFFFFFFFFFFF8);
    v23 = v28;
    v22 = v29;
    *v21 = v28;
    *(v21 + 8) = v22;
    v25 = v31;
    v24 = v32;
    *(v21 + 16) = v31;
    *(v21 + 24) = v24;
    *(v21 + 32) = v13;
    *v7 = sub_243D94CF4;
    v7[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_243D94DB8(v2, v34);
    sub_243D94218(v23, v22, v25, v24, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE70, &qword_243DB2068);
  sub_243D90C40(&qword_27EDBAE78, &qword_27EDBAE70, &qword_243DB2068);
  sub_243D90C40(&qword_27EDBAE80, &qword_27EDBAE68, &qword_243DB2060);
  return sub_243DADC30();
}

double sub_243D94B24@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_243DADC60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DADD00();
  sub_243DAD910();
  (*(v5 + 8))(v8, v4);
  sub_243DADE00();
  v9 = v17;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE88, &qword_243DB2070) + 36);
  result = *&v15;
  v13 = v16;
  *v11 = v15;
  *(v11 + 16) = v13;
  *(v11 + 32) = v9;
  return result;
}

uint64_t sub_243D94CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 32);
  return sub_243D94830(a1, a2);
}

double sub_243D94CF4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);

  return sub_243D94B24(v1 + v4, a1);
}

unint64_t sub_243D94DF0()
{
  result = qword_27EDBAE90;
  if (!qword_27EDBAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBAE98, &qword_243DB2078);
    sub_243D90C40(&qword_27EDBAE78, &qword_27EDBAE70, &qword_243DB2068);
    sub_243D90C40(&qword_27EDBAE80, &qword_27EDBAE68, &qword_243DB2060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE90);
  }

  return result;
}

uint64_t sub_243D94ED4(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20]();
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v20 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x28223BE20]();
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (TupleTypeMetadata + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *a1++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_243DAE0B0();
}

void sub_243D950A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v18 = [objc_opt_self() sharedRenderingContext];
  v19 = [v18 device];

  v20 = CDRichComplicationCornerInnerImageMaxSize(v19);
  v22 = *(a4 + 16);
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    v38 = v19;
    v39 = a1;
    v40 = a2;
    v41 = a7;
    v42 = a3;
    v43 = a6;
    v45 = MEMORY[0x277D84F90];
    sub_243D93638(0, v22, 0);
    v25 = v45;
    v26 = 32;
    do
    {
      v27 = *(a4 + v26);
      v28 = [v27 textProvider];
      [v28 finalize];
      v29 = [v27 imageProvider];
      if (v29 && (v30 = v29, [v29 copy], v30, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
      {
        v31 = v44;
        type metadata accessor for WidgetNamedImageProvider(0);
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          v33 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v32 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            v34 = (v32 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
            *v34 = v23;
            v34[1] = v24;
            *(v32 + v33) = 1;
          }
        }

        else
        {
          [v44 finalizeWithMaxSDKSize:0 maxDeviceSize:v23 maskToCircle:{v24, v23, v24}];
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v28 imageProvider:v31];

      v37 = *(v45 + 16);
      v36 = *(v45 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_243D93638((v36 > 1), v37 + 1, 1);
      }

      *(v45 + 16) = v37 + 1;
      *(v45 + 8 * v37 + 32) = v35;
      v26 += 8;
      --v22;
    }

    while (v22);

    a6 = v43;
    a7 = v41;
    a3 = v42;
    a1 = v39;
    a2 = v40;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = v25;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
}

double sub_243D95398()
{
  v6.origin.x = sub_243D953FC();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  MidX = CGRectGetMidX(v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMidY(v7);
  return MidX;
}

double sub_243D953FC()
{
  v1 = [objc_opt_self() sharedRenderingContext];
  v2 = [v1 device];

  CDRichComplicationCornerTextCustomViewRect(v2, *(v0 + 16));
  v4 = v3;

  return v4;
}

uint64_t sub_243D954A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v29 = sub_243DAD9D0();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v7 = sub_243DAE070();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v11 = sub_243DAD9E0();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 24);
  v32 = v6;
  v33 = v18;
  v34 = v30;
  sub_243DAE090();
  sub_243DAE060();
  swift_getKeyPath();
  v19 = v28;
  v20 = v29;
  (*(v3 + 104))(v28, *MEMORY[0x277CDFA88], v29);
  WitnessTable = swift_getWitnessTable();
  sub_243DADE60();

  (*(v3 + 8))(v19, v20);
  (*(v26 + 8))(v10, v7);
  v22 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0);
  v35 = WitnessTable;
  v36 = v22;
  v23 = swift_getWitnessTable();
  sub_243D9EE08(v15, v11, v23);
  v24 = *(v27 + 8);
  v24(v15, v11);
  sub_243D9EE08(v17, v11, v23);
  return (v24)(v17, v11);
}

uint64_t sub_243D9590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v68 = *(a2 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](a1);
  v60[0] = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  v9 = sub_243DAD9E0();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v60 - v11;
  v64 = sub_243DAD9E0();
  v75 = *(v64 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = v60 - v14;
  v67 = sub_243DAD9E0();
  v77 = *(v67 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = v60 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v74 = sub_243DAD9E0();
  v78 = *(v74 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v74);
  v63 = v60 - v18;
  v19 = sub_243DAD9E0();
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = v60 - v23;
  v60[1] = type metadata accessor for ComplicationCornerTextView();
  sub_243D953FC();
  v25 = v24 / *a1;
  v27 = v26 / *(a1 + 8);
  sub_243D953FC();
  v28 = *(a1 + 24);
  v73 = *(a1 + 16);
  v72 = v28;
  v29 = *(a1 + 32);
  v70 = *(a1 + 40);
  type metadata accessor for MonochromeModel();
  sub_243D96718();

  v30 = v29;
  v66 = sub_243DAD9C0();
  v65 = v31;
  v32 = *(a1 + 56);
  v33 = v60[0];
  (*(a1 + 48))();
  swift_getKeyPath();
  LOBYTE(v84[0]) = 1;
  sub_243DADE60();

  (*(v68 + 8))(v33, a2);
  sub_243DAE0D0();
  v35 = v34;
  v37 = v36;
  v38 = sub_243D90C40(&qword_27EDBABA8, &qword_27EDBAB80, &qword_243DB16B8);
  v86[10] = a3;
  v86[11] = v38;
  WitnessTable = swift_getWitnessTable();
  v40 = v61;
  MEMORY[0x245D51680](v9, WitnessTable, v25, v27, v35, v37);
  (*(v71 + 8))(v12, v9);
  sub_243DAE090();
  v86[8] = WitnessTable;
  v86[9] = MEMORY[0x277CDF690];
  v41 = v64;
  v42 = swift_getWitnessTable();
  v43 = v62;
  sub_243DADEB0();
  (*(v75 + 8))(v40, v41);
  v86[6] = v42;
  v86[7] = MEMORY[0x277CDF678];
  v44 = v67;
  v45 = swift_getWitnessTable();
  sub_243D90BEC();
  v46 = v63;
  sub_243DADEF0();
  (*(v77 + 8))(v43, v44);
  sub_243D95398();
  v47 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0);
  v86[4] = v45;
  v86[5] = v47;
  v48 = v74;
  v49 = swift_getWitnessTable();
  v50 = v69;
  sub_243DADEE0();
  (*(v78 + 8))(v46, v48);
  v86[2] = v49;
  v86[3] = MEMORY[0x277CDFB28];
  v51 = swift_getWitnessTable();
  v52 = v76;
  sub_243D9EE08(v50, v19, v51);
  v53 = v79;
  v54 = *(v79 + 8);
  v54(v50, v19);
  v84[0] = v73;
  v84[1] = v72;
  v84[2] = v70;
  v84[3] = v66;
  v55 = v65;
  v85 = v65;
  v86[0] = v84;
  v56 = *(v53 + 16);
  v57 = v52;
  v56(v50, v52, v19);
  v86[1] = v50;

  v58 = v55;
  v83[0] = &type metadata for ComplicationCornerTextViewRepresentable;
  v83[1] = v19;
  v81 = sub_243D96770();
  v82 = v51;
  sub_243D94ED4(v86, 2uLL, v83);

  v54(v57, v19);
  v54(v50, v19);
}

uint64_t sub_243D961D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_243D954A0(a1, a2);
}

id sub_243D96214(void *a1)
{
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  sub_243D9F494(v1[2]);
  sub_243D96A78(0, &qword_27EDBAF30, off_278DF2F10);
  v3 = sub_243DAE1A0();

  [a1 setInnerLabelProviders_];

  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v5 >= 1.0)
  {
    return [a1 updateMonochromeColor];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return [a1 transitionToMonochromeWithFraction_];
}

id sub_243D96570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243D965C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_243D96618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_243D96660(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_243D96718()
{
  result = qword_27EDBABA0;
  if (!qword_27EDBABA0)
  {
    type metadata accessor for MonochromeModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABA0);
  }

  return result;
}

unint64_t sub_243D96770()
{
  result = qword_27EDBAF20;
  if (!qword_27EDBAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF20);
  }

  return result;
}

id sub_243D967C4()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D96214(v1);
  return v1;
}

uint64_t sub_243D96824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D96A24();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D96888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D96A24();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D968EC()
{
  sub_243D96A24();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D96914()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243D96980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_243D969C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D96A24()
{
  result = qword_27EDBAF28;
  if (!qword_27EDBAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF28);
  }

  return result;
}

uint64_t sub_243D96A78(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_243D96AC0(uint64_t a1)
{
  v2 = sub_243D9E690(a1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!sub_243DAE2E0())
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v3 = sub_243DAE1A0();

  v4 = [objc_opt_self() providerWithProviders_];

  if (v4)
  {
    v5 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v4 imageProvider:0];
    goto LABEL_9;
  }

LABEL_7:
  v6 = sub_243D97514(a1);
  if (!v6)
  {
    return 0;
  }

  v4 = v6;
  v5 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:0 imageProvider:v6];
LABEL_9:
  v7 = v5;

  return v7;
}

uint64_t sub_243D96BFC@<X0>(void *a1@<X8>)
{
  v19 = v1[1];
  v20 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  type metadata accessor for MonochromeModel();
  sub_243D96718();
  v8 = v3;

  v18 = v6;

  v9 = sub_243DAD9C0();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF38, &unk_243DB24B0) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAB90, &qword_243DB1AA0) + 28);
  v15 = *MEMORY[0x277CDFA88];
  v16 = sub_243DAD9D0();
  result = (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v4;
  a1[5] = v18;
  a1[6] = v5;
  a1[7] = v7;
  return result;
}

void sub_243D96D54(void *a1)
{
  v3 = sub_243D96AC0(v1[6]);
  v4 = sub_243D96AC0(v1[7]);
  [a1 handleGaugeProvider:v1[5] leftLabelProvider:v3 rightLabelProvider:v4];
  sub_243D9F494(v1[4]);
  sub_243D96A78(0, &qword_27EDBAF30, off_278DF2F10);
  v5 = sub_243DAE1A0();

  [a1 setOuterLabelProviders_];

  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v6 >= 1.0)
  {
    [a1 updateMonochromeColor];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    [a1 transitionToMonochromeWithFraction_];
  }
}

id sub_243D970F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243D9717C()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D971D4(uint64_t a1, int a2)
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

uint64_t sub_243D9721C(uint64_t result, int a2, int a3)
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

unint64_t sub_243D9727C()
{
  result = qword_27EDBAF40;
  if (!qword_27EDBAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAF38, &unk_243DB24B0);
    sub_243D97308();
    sub_243D9735C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF40);
  }

  return result;
}

unint64_t sub_243D97308()
{
  result = qword_27EDBAF48;
  if (!qword_27EDBAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF48);
  }

  return result;
}

unint64_t sub_243D9735C()
{
  result = qword_27EDBAB98;
  if (!qword_27EDBAB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAB98);
  }

  return result;
}

id sub_243D973C0()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D96D54(v1);
  return v1;
}

uint64_t sub_243D97420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D975A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D97484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D975A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D974E8()
{
  sub_243D975A4();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D97514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v3 = *i;
    v4 = [v3 imageProvider];
    if (v4)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  v6 = [v3 imageProvider];
  return v6;
}

unint64_t sub_243D975A4()
{
  result = qword_27EDBAF58;
  if (!qword_27EDBAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF58);
  }

  return result;
}

double MonochromeModel.fraction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v1;
}

double sub_243D9766C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_243D976EC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_243DAD870();
}

uint64_t MonochromeModel.fraction.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.fraction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

uint64_t sub_243D97898(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD840();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MonochromeModel.$fraction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$fraction.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__fraction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

uint64_t (*MonochromeModel.accent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

uint64_t sub_243D97DAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MonochromeModel.$accent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$accent.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__accent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

uint64_t sub_243D981EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v1;
}

uint64_t sub_243D9826C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.background.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243DAD850();
  return sub_243D98378;
}

uint64_t sub_243D98398(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MonochromeModel.$background.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$background.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__background;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D987C4;
}

uint64_t MonochromeModel.style.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v1;
}

uint64_t sub_243D9883C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  *a2 = v5;
  return result;
}

uint64_t sub_243D988BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_243DAD870();
}

uint64_t MonochromeModel.style.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.style.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

void sub_243D98A3C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243D98AC0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_243DAD830();
  return swift_endAccess();
}

uint64_t sub_243D98B38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_243DAD830();
  return swift_endAccess();
}

uint64_t sub_243D98BB4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD840();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MonochromeModel.$style.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$style.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__style;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

void sub_243D98FE0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_243DAD840();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_243DAD840();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id MonochromeModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MonochromeModel.init()()
{
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__fraction;
  v25 = 0;
  sub_243DAD820();
  (*(v11 + 32))(&v0[v15], v14, v10);
  v16 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__accent;
  v25 = sub_243DADF30();
  sub_243DAD820();
  v17 = *(v6 + 32);
  v17(&v0[v16], v9, v5);
  v18 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__background;
  v25 = sub_243DADF30();
  sub_243DAD820();
  v17(&v0[v18], v9, v5);
  v19 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__style;
  v25 = 1;
  type metadata accessor for CLKMonochromeFilterStyle(0);
  sub_243DAD820();
  (*(v1 + 32))(&v0[v19], v4, v22);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

id MonochromeModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243D995FC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_243DAD810();
  *a1 = result;
  return result;
}

UIColor_optional __swiftcall MonochromeModel.color(for:accented:)(UIView *a1, Swift::Bool accented)
{
  v2 = sub_243D99AFC();
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall MonochromeModel.backgroundColor(for:)(UIView *a1)
{
  v1 = 0;
  result.value.super.isa = v1;
  return result;
}

uint64_t sub_243D99838()
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v0 = sub_243DAE220();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v1 = sub_243DAE220();
  v2 = CLKUIMonochromeFiltersForStyle();

  if (!v2)
  {
    return 0;
  }

  sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
  v3 = sub_243DAE1B0();

  return v3;
}

uint64_t sub_243D99994()
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v0 = sub_243DAE220();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v1 = sub_243DAE220();
  v2 = CLKUIMonochromeFiltersForStyle();

  if (!v2)
  {
    return 0;
  }

  sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
  v3 = sub_243DAE1B0();

  return v3;
}

uint64_t sub_243D99AFC()
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return sub_243DAE220();
}

uint64_t type metadata accessor for MonochromeModel()
{
  result = qword_27EDBAFB8;
  if (!qword_27EDBAFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243D99C18()
{
  sub_243D99D3C(319, &qword_27EDBAFC8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_243D99D3C(319, &qword_27EDBAFD0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_243D99D88();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243D99D3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_243DAD880();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_243D99D88()
{
  if (!qword_27EDBAFD8)
  {
    type metadata accessor for CLKMonochromeFilterStyle(255);
    v0 = sub_243DAD880();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDBAFD8);
    }
  }
}

float ComplicationCurvedTextMetrics.angularRange.getter()
{
  result = *v0;
  v2 = *(v0 + 4);
  return result;
}

double ComplicationCurvedTextMetrics.accessoryCenter.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

void ComplicationCurvedTextMetrics.init(angularRange:accessoryCenter:accessoryRotation:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
}

double sub_243D99E8C()
{
  byte_27EDBD7B0 = 0;
  result = 0.0;
  xmmword_27EDBD790 = 0u;
  unk_27EDBD7A0 = 0u;
  return result;
}

double sub_243D99EA4()
{
  if (qword_27EDBAAA8 != -1)
  {
    swift_once();
  }

  result = *&qword_27EDBD7A8;
  qword_27EDBD7B8 = xmmword_27EDBD790;
  unk_27EDBD7C0 = *(&xmmword_27EDBD790 + 8);
  qword_27EDBD7D0 = qword_27EDBD7A8;
  byte_27EDBD7D8 = 1;
  return result;
}

double sub_243D99F24()
{
  if (qword_27EDBAAB0 != -1)
  {
    swift_once();
  }

  result = *&qword_27EDBD7D0;
  qword_27EDBB050 = qword_27EDBD7B8;
  *algn_27EDBB058 = unk_27EDBD7C0;
  qword_27EDBB068 = qword_27EDBD7D0;
  byte_27EDBB070 = byte_27EDBD7D8;
  return result;
}

double static ComplicationCurvedTextMetricsKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27EDBB068;
  v3 = byte_27EDBB070;
  *a1 = qword_27EDBB050;
  *(a1 + 8) = *algn_27EDBB058;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t static ComplicationCurvedTextMetricsKey.defaultValue.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27EDBB050 = v1;
  *algn_27EDBB058 = v2;
  qword_27EDBB060 = v3;
  qword_27EDBB068 = v4;
  byte_27EDBB070 = v5;
  return result;
}

uint64_t (*static ComplicationCurvedTextMetricsKey.defaultValue.modify())()
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_243D9A150@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27EDBB068;
  v3 = byte_27EDBB070;
  *a1 = qword_27EDBB050;
  *(a1 + 8) = *algn_27EDBB058;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_243D9A1E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27EDBB050 = v1;
  *algn_27EDBB058 = v2;
  qword_27EDBB060 = v3;
  qword_27EDBB068 = v4;
  byte_27EDBB070 = v5;
  return result;
}

void *static ComplicationCurvedTextMetricsKey.reduce(value:nextValue:)(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 32) == 1)
  {
    result = a2(&v7);
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v6 = 0;
    v3 = *result;
    v4 = *(result + 1);
    v5 = result[3];
  }

  *v2 = v3;
  *(v2 + 1) = v4;
  v2[3] = v5;
  *(v2 + 32) = v6;
  return result;
}

void *sub_243D9A2F4(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 32) == 1)
  {
    result = a2(&v7);
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v6 = 0;
    v3 = *result;
    v4 = *(result + 1);
    v5 = result[3];
  }

  *v2 = v3;
  *(v2 + 1) = v4;
  v2[3] = v5;
  *(v2 + 32) = v6;
  return result;
}

double sub_243D9A36C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  result = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

double sub_243D9A3FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  result = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = *(v3 + 16);
  *(a2 + 8) = *(v3 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_243D9A48C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = *a2;
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = v2;
  v9 = v3;
  return sub_243D9A4DC(&v6);
}

uint64_t sub_243D9A4DC(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 32);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v3 = *(v1 + 48);
  v11 = *(v1 + 40);
  v12 = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v9, v7);
  if (result)
  {
    v6 = v14;
    *(v1 + 16) = v13;
    *(v1 + 32) = v6;
    *(v1 + 48) = v15;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    v9 = v1;
    sub_243D9AA14();
    sub_243DAD7B0();
  }

  return result;
}

__n128 sub_243D9A60C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(a2 + 32);
  return result;
}

uint64_t sub_243D9A620()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay39ComplicationCurvedTextMetricsObservable___observationRegistrar;
  v2 = sub_243DAD800();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

__n128 sub_243D9A6BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  v12 = *(v5 + 24);
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB098, &qword_243DB29D8);
  v9 = *(v5 + 16);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB0A0, &qword_243DB29E0) + 36);
  *v10 = v9;
  result = v12;
  *(v10 + 8) = v12;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  return result;
}

uint64_t _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  if (sub_243DADF00())
  {
    return v6 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D9A83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_243D9A890(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ComplicationCurvedTextMetricsObservable()
{
  result = qword_27EDBB080;
  if (!qword_27EDBB080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D9A94C()
{
  result = sub_243DAD800();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_243D9AA14()
{
  result = qword_27EDBB090;
  if (!qword_27EDBB090)
  {
    type metadata accessor for ComplicationCurvedTextMetricsObservable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB090);
  }

  return result;
}

__n128 sub_243D9AA6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

unint64_t sub_243D9AA84()
{
  result = qword_27EDBB0A8;
  if (!qword_27EDBB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0A0, &qword_243DB29E0);
    sub_243D90C40(&qword_27EDBB0B0, &qword_27EDBB098, &qword_243DB29D8);
    sub_243D90C40(&qword_27EDBB0B8, &qword_27EDBB0C0, &qword_243DB29E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0A8);
  }

  return result;
}

double ComplicationCornerViewConfiguration.contentSize.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ComplicationCornerViewConfiguration.outerLabelProviders.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void *ComplicationCornerViewConfiguration.innerContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_243D9AC40(v2, v3, v4, v5);
}

void *sub_243D9AC40(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
  }
}

__n128 ComplicationCornerViewConfiguration.innerContent.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_243D9ACF4(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

void *sub_243D9ACF4(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:outerLabelProviders:innerContent:position:fontStyle:monochromeModel:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v8 = a2[1].n128_u64[0];
  v9 = a2[1].n128_u8[8];
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a1;
  result = *a2;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  return result;
}

__n128 CornerComplicationView.init(configuration:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

void sub_243D9AE20(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 56);
  v8 = [objc_opt_self() currentDevice];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() hitTestPathWithViewBounds:v7 position:v8 forDevice:{0.0, 0.0, a2, a3}];

    v11 = [v10 CGPath];
    sub_243DADE30();

    *a1 = v12;
    *(a1 + 16) = v13;
    *(a1 + 32) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CornerComplicationView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v34[2] = v2[2];
  v34[3] = v4;
  v5 = v2[5];
  v34[4] = v2[4];
  v34[5] = v5;
  v6 = v2[1];
  v34[0] = *v2;
  v34[1] = v6;
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  v9 = v2[3];
  *(v7 + 64) = v2[2];
  *(v7 + 80) = v9;
  v10 = v2[5];
  *(v7 + 96) = v2[4];
  *(v7 + 112) = v10;
  v11 = v2[1];
  *(v7 + 32) = *v2;
  *(v7 + 48) = v11;
  (*(*(a1 - 8) + 16))(v33, v34, a1);
  type metadata accessor for ComplicationCornerCircularView();
  type metadata accessor for ComplicationCornerTextView();
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView();
  sub_243DADC40();
  sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  WitnessTable = swift_getWitnessTable();
  v31 = sub_243D9B860();
  v32 = swift_getWitnessTable();
  v29 = WitnessTable;
  v30 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v27 = sub_243D9B8B4();
  v28 = swift_getWitnessTable();
  v25 = v13;
  v26 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = sub_243D9B908();
  v21 = swift_getWitnessTable();
  v22 = sub_243D940EC();
  swift_getWitnessTable();
  v19 = sub_243DAD980();
  v20 = v14;
  v15 = sub_243DAD990();
  swift_getWitnessTable();
  v16 = *(*(v15 - 8) + 16);
  v16(v33, &v19, v15);

  v19 = v33[0];
  v20 = v33[1];
  v16(a2, &v19, v15);
}

uint64_t sub_243D9B28C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v43[1] = a1;
  v51 = a3;
  v50 = sub_243DADA20();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = type metadata accessor for ComplicationCornerCircularView();
  v43[2] = type metadata accessor for ComplicationCornerTextView();
  v43[4] = sub_243DADC40();
  v43[3] = sub_243DADC40();
  v43[5] = type metadata accessor for ComplicationCornerGaugeView();
  v45 = sub_243DADC40();
  v7 = sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  v8 = sub_243DAD9E0();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = v43 - v10;
  v11 = sub_243DAD9E0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v46 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = v43 - v16;
  v17 = a2[3];
  v81 = a2[2];
  v82 = v17;
  v18 = a2[5];
  v83 = a2[4];
  v84 = v18;
  v19 = a2[1];
  v79 = *a2;
  v80 = v19;
  v20 = type metadata accessor for CornerComplicationView();
  sub_243D9B96C(v20, &v73);
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v67 = v73;
  v68 = v74;
  sub_243DADA10();
  sub_243DAD900();
  sub_243D9AE20(v85, v21, v22);
  v64 = v85[0];
  v65 = v85[1];
  v66 = v86;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_243D9B860();
  v25 = swift_getWitnessTable();
  v62 = v24;
  v63 = v25;
  v26 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_243D9B8B4();
  v29 = swift_getWitnessTable();
  v58 = v28;
  v59 = v29;
  v30 = swift_getWitnessTable();
  v56 = v27;
  v57 = v30;
  v31 = swift_getWitnessTable();
  sub_243D9EDB4();
  v32 = v44;
  sub_243DADE80();
  sub_243D93CA4(v85);
  (*(v48 + 8))(v6, v50);
  v87[2] = v69;
  v87[3] = v70;
  v87[4] = v71;
  v88 = v72;
  v87[0] = v67;
  v87[1] = v68;
  (*(*(v7 - 8) + 8))(v87, v7);
  sub_243DAD900();
  sub_243D9AE20(&v73, v33, v34);
  v79 = v73;
  v80 = v74;
  LOBYTE(v81) = v75;
  v35 = sub_243D9B908();
  v54 = v31;
  v55 = v35;
  v36 = swift_getWitnessTable();
  v37 = v46;
  View.complicationContainerPath(_:)(&v79, v8, v36);
  sub_243D93CA4(&v73);
  (*(v49 + 8))(v32, v8);
  v38 = sub_243D940EC();
  v52 = v36;
  v53 = v38;
  swift_getWitnessTable();
  v39 = v12[2];
  v40 = v47;
  v39(v47, v37, v11);
  v41 = v12[1];
  v41(v37, v11);
  v39(v51, v40, v11);
  return (v41)(v40, v11);
}

uint64_t sub_243D9B854@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_243D9B28C(a1, (v2 + 32), a2);
}

unint64_t sub_243D9B860()
{
  result = qword_27EDBB0D0;
  if (!qword_27EDBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0D0);
  }

  return result;
}

unint64_t sub_243D9B8B4()
{
  result = qword_27EDBB0D8;
  if (!qword_27EDBB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0D8);
  }

  return result;
}

unint64_t sub_243D9B908()
{
  result = qword_27EDBB0E0[0];
  if (!qword_27EDBB0E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDBB0E0);
  }

  return result;
}

uint64_t sub_243D9B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = a2;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v181 = *(v2 + 32);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  if (!*(v2 + 48))
  {
    v177 = *(v2 + 64);
    if (*(v7 + 16))
    {
      v39 = objc_opt_self();
      v40 = v9;
      v41 = v39;
      v180 = v40;
      sub_243D9AC40(v8, v181, v40, 0);
      v167 = v11;
      v42 = [v41 sharedRenderingContext];
      v43 = [v42 device];

      v44 = CDRichComplicationCornerTextOuterImageMaxSize(v43);
      v46 = *(v7 + 16);
      v47 = MEMORY[0x277D84F90];
      v175 = v8;
      v169 = v43;
      v171 = v10;
      if (v46)
      {
        v48 = v44;
        v49 = v45;
        *&v215 = MEMORY[0x277D84F90];
        sub_243D93638(0, v46, 0);
        v50 = v215;
        v51 = (v7 + 32);
        do
        {
          v52 = *v51;
          v53 = [v52 textProvider];
          [v53 finalize];
          v54 = [v52 imageProvider];
          if (v54 && (v55 = v54, [v54 copy], v55, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
          {
            v56 = v205;
            type metadata accessor for WidgetNamedImageProvider(0);
            v57 = swift_dynamicCastClass();
            if (v57)
            {
              v58 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
              if ((*(v57 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
              {
                v59 = (v57 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
                *v59 = v48;
                v59[1] = v49;
                *(v57 + v58) = 1;
              }
            }

            else
            {
              [v205 finalizeWithMaxSDKSize:0 maxDeviceSize:v48 maskToCircle:{v49, v48, v49}];
            }
          }

          else
          {
            v56 = 0;
          }

          v60 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v53 imageProvider:v56];

          *&v215 = v50;
          v62 = *(v50 + 16);
          v61 = *(v50 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_243D93638((v61 > 1), v62 + 1, 1);
            v50 = v215;
          }

          *(v50 + 16) = v62 + 1;
          *(v50 + 8 * v62 + 32) = v60;
          ++v51;
          --v46;
        }

        while (v46);
        v3 = a1;
        v43 = v169;
        v10 = v171;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      v124 = CDRichComplicationCornerInnerImageMaxSize(v43);
      v126 = v8[2];
      if (v126)
      {
        v127 = v124;
        v128 = v125;
        *&v215 = v47;
        sub_243D93638(0, v126, 0);
        v129 = v47;
        v130 = v8 + 4;
        do
        {
          v131 = *v130;
          v132 = [v131 textProvider];
          [v132 finalize];
          v133 = [v131 imageProvider];
          if (v133 && (v134 = v133, [v133 copy], v134, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
          {
            v135 = v205;
            type metadata accessor for WidgetNamedImageProvider(0);
            v136 = swift_dynamicCastClass();
            if (v136)
            {
              v137 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
              if ((*(v136 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
              {
                v138 = (v136 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
                *v138 = v127;
                v138[1] = v128;
                *(v136 + v137) = 1;
              }
            }

            else
            {
              [v205 finalizeWithMaxSDKSize:0 maxDeviceSize:v127 maskToCircle:{v128, v127, v128}];
            }
          }

          else
          {
            v135 = 0;
          }

          v139 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v132 imageProvider:v135];

          *&v215 = v129;
          v141 = *(v129 + 16);
          v140 = *(v129 + 24);
          if (v141 >= v140 >> 1)
          {
            sub_243D93638((v140 > 1), v141 + 1, 1);
            v129 = v215;
          }

          *(v129 + 16) = v141 + 1;
          *(v129 + 8 * v141 + 32) = v139;
          ++v130;
          --v126;
        }

        while (v126);
        sub_243D9ACF4(v175, v181, v180, 0);

        v3 = a1;
        v10 = v171;
      }

      else
      {
        sub_243D9ACF4(v8, v181, v180, 0);

        v129 = MEMORY[0x277D84F90];
      }

      *&v215 = v10;
      *(&v215 + 1) = v177;
      *&v216 = v167;
      *(&v216 + 1) = v50;
      *&v217 = v129;
      v142 = *(v3 + 16);
      v143 = *(v3 + 24);
      type metadata accessor for ComplicationCornerTextView();
      sub_243D9B860();
      swift_getWitnessTable();
      sub_243DA3554(&v215, &type metadata for ComplicationCornerStackedTextView);

      v243 = v255;
      v244 = v256;
      LOBYTE(v245) = v257;
      v242 = v254;
      v241 = v253;
      v4 = a2;
    }

    else
    {

      sub_243D9AC40(v8, v181, v9, 0);
      v72 = *(v3 + 16);
      v73 = *(v3 + 24);
      sub_243D950A4(v10, v177, v11, v8, v12, v13, &v253, v6, v5);
      v74 = type metadata accessor for ComplicationCornerTextView();
      swift_getWitnessTable();
      v75 = *(v74 - 8);
      v76 = *(v75 + 16);
      v76(&v187, &v253, v74);
      v192 = v253;
      v193 = v254;
      v194 = v255;
      v195 = v256;
      v77 = *(v75 + 8);
      v77(&v192, v74);
      v223 = v187;
      v224 = v188;
      v225 = v189;
      v226 = v190;
      v253 = v187;
      v254 = v188;
      v255 = v189;
      v256 = v190;
      v76(&v182, &v253, v74);
      v229 = v253;
      v230 = v254;
      v231 = v255;
      v232 = v256;
      v76(&v215, &v223, v74);
      v77(&v229, v74);
      v235 = v182;
      v236 = v183;
      v237 = v184;
      v238 = v185;
      v241 = v182;
      v242 = v183;
      v243 = v184;
      v244 = v185;
      v76(&v253, &v235, v74);
      sub_243D9B860();
      sub_243DA364C(&v241, &type metadata for ComplicationCornerStackedTextView, v74);
      v247 = v241;
      v248 = v242;
      v249 = v243;
      v250 = v244;
      v77(&v247, v74);
      v205 = v182;
      v206 = v183;
      v207 = v184;
      v208 = v185;
      v77(&v205, v74);
      v215 = v187;
      v216 = v188;
      v217 = v189;
      v218 = v190;
      v77(&v215, v74);
      v243 = v255;
      v244 = v256;
      LOBYTE(v245) = v257;
      v242 = v254;
      v241 = v253;
    }

    v255 = v243;
    v256 = v244;
    LOBYTE(v257) = v245;
    v253 = v241;
    v254 = v242;
    type metadata accessor for ComplicationCornerTextView();
    v144 = sub_243DADC40();
    sub_243D9B860();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v145 = *(v144 - 8);
    v146 = *(v145 + 16);
    v146(&v187, &v253, v144);
    v194 = v255;
    v195 = v256;
    LOBYTE(v196) = v257;
    v192 = v253;
    v193 = v254;
    v146(&v215, &v241, v144);
    v147 = *(v145 + 8);
    v147(&v192, v144);
    v225 = v189;
    v226 = v190;
    LOBYTE(v227) = v191;
    v223 = v187;
    v224 = v188;
    v217 = v189;
    v218 = v190;
    LOBYTE(v219) = v191;
    v215 = v187;
    v216 = v188;
    v146(&v253, &v223, v144);
    v148 = type metadata accessor for ComplicationCornerCircularView();
    swift_getWitnessTable();
    sub_243DA364C(&v215, v148, v144);
    v231 = v217;
    v232 = v218;
    LOBYTE(v233) = v219;
    v229 = v215;
    v230 = v216;
    v147(&v229, v144);
    v249 = v255;
    v250 = v256;
    LOWORD(v251) = v257;
    v248 = v254;
    v247 = v253;
    v149 = sub_243DADC40();
    type metadata accessor for ComplicationCornerGaugeView();
    sub_243DADC40();
    swift_getWitnessTable();
    sub_243D9B8B4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_243DA3554(&v247, v149);
    v147(&v241, v144);
    v207 = v249;
    v208 = v250;
    LOWORD(v209) = v251;
    v205 = v247;
    v206 = v248;
    (*(*(v149 - 8) + 8))(&v205, v149);
    v237 = v189;
    v238 = v190;
    LOBYTE(v239) = v191;
    v235 = v187;
    v236 = v188;
    v147(&v235, v144);
    goto LABEL_82;
  }

  if (*(v2 + 48) != 1)
  {
    *&v253 = nullsub_1(v10, v12, v13, *(a1 + 16), *(a1 + 24));
    *(&v253 + 1) = v63;
    *&v254 = v64;
    v65 = type metadata accessor for ComplicationCornerCircularView();
    swift_getWitnessTable();
    v66 = *(*(v65 - 8) + 16);
    v66(&v241, &v253, v65);

    v253 = v241;
    *&v254 = v242;
    v66(&v235, &v253, v65);
    v215 = v235;
    *&v216 = v236;
    type metadata accessor for ComplicationCornerTextView();
    sub_243DADC40();
    sub_243D9B860();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_243DA3554(&v215, v65);
    v249 = v255;
    v250 = v256;
    LOWORD(v251) = v257;
    v248 = v254;
    v247 = v253;
    v67 = sub_243DADC40();
    type metadata accessor for ComplicationCornerGaugeView();
    sub_243DADC40();
    swift_getWitnessTable();
    sub_243D9B8B4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_243DA3554(&v247, v67);
    v207 = v249;
    v208 = v250;
    LOWORD(v209) = v251;
    v205 = v247;
    v206 = v248;
    (*(*(v67 - 8) + 8))(&v205, v67);

LABEL_82:
    v255 = v217;
    v256 = v218;
    v257 = v219;
    v258 = v220;
    v253 = v215;
    v254 = v216;
    goto LABEL_83;
  }

  v174 = *(v2 + 24);
  v176 = *(v2 + 64);
  if (*(v7 + 16))
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = v14;
    v17 = v181;
    v179 = v15;
    sub_243D9AC40(v8, v181, v15, 1);
    v166 = v11;
    v165 = v8;
    v18 = [v16 sharedRenderingContext];
    v19 = [v18 device];

    v168 = v19;
    v20 = CDRichComplicationCornerGaugeOuterImageMaxSize(v19);
    v22 = MEMORY[0x277D84F90];
    v23 = *(v7 + 16);
    v170 = v10;
    if (v23)
    {
      v24 = v20;
      v25 = v21;
      *&v215 = MEMORY[0x277D84F90];
      sub_243D93638(0, v23, 0);
      v26 = v215;
      v27 = (v7 + 32);
      do
      {
        v28 = *v27;
        v29 = [v28 textProvider];
        [v29 finalize];
        v30 = [v28 imageProvider];
        if (v30 && (v31 = v30, [v30 copy], v31, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v32 = v205;
          type metadata accessor for WidgetNamedImageProvider(0);
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v34 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v33 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v35 = (v33 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v35 = v24;
              v35[1] = v25;
              *(v33 + v34) = 1;
            }
          }

          else
          {
            [v205 finalizeWithMaxSDKSize:0 maxDeviceSize:v24 maskToCircle:{v25, v24, v25}];
          }
        }

        else
        {
          v32 = 0;
        }

        v36 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v29 imageProvider:v32];

        *&v215 = v26;
        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_243D93638((v37 > 1), v38 + 1, 1);
          v26 = v215;
        }

        *(v26 + 16) = v38 + 1;
        *(v26 + 8 * v38 + 32) = v36;
        ++v27;
        --v23;
      }

      while (v23);
      v17 = v181;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v78 = CDRichComplicationCornerInnerImageMaxSize(v168);
    v80 = v79;
    v81 = *(v17 + 16);
    if (v81)
    {
      *&v215 = v22;
      sub_243D93638(0, v81, 0);
      v82 = v22;
      v83 = 32;
      do
      {
        v84 = *(v17 + v83);
        v85 = [v84 textProvider];
        [v85 finalize];
        v86 = [v84 imageProvider];
        if (v86 && (v87 = v86, [v86 copy], v87, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v88 = v205;
          type metadata accessor for WidgetNamedImageProvider(0);
          v89 = swift_dynamicCastClass();
          if (v89)
          {
            v90 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v89 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v91 = (v89 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v91 = v78;
              v91[1] = v80;
              *(v89 + v90) = 1;
            }
          }

          else
          {
            [v205 finalizeWithMaxSDKSize:0 maxDeviceSize:v78 maskToCircle:{v80, v78, v80}];
          }
        }

        else
        {
          v88 = 0;
        }

        v92 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v85 imageProvider:v88];

        *&v215 = v82;
        v94 = *(v82 + 16);
        v93 = *(v82 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_243D93638((v93 > 1), v94 + 1, 1);
          v82 = v215;
        }

        *(v82 + 16) = v94 + 1;
        *(v82 + 8 * v94 + 32) = v92;
        v83 += 8;
        --v81;
        v17 = v181;
      }

      while (v81);

      v22 = MEMORY[0x277D84F90];
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    v95 = *(v179 + 16);
    if (v95)
    {
      *&v215 = v22;
      sub_243D93638(0, v95, 0);
      v96 = v22;
      v97 = 32;
      do
      {
        v98 = *(v179 + v97);
        v99 = [v98 textProvider];
        [v99 finalize];
        v100 = [v98 imageProvider];
        if (v100 && (v101 = v100, [v100 copy], v101, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v102 = v205;
          type metadata accessor for WidgetNamedImageProvider(0);
          v103 = swift_dynamicCastClass();
          if (v103)
          {
            v104 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v103 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v105 = (v103 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v105 = v78;
              v105[1] = v80;
              *(v103 + v104) = 1;
            }
          }

          else
          {
            [v205 finalizeWithMaxSDKSize:0 maxDeviceSize:v78 maskToCircle:{v80, v78, v80}];
          }
        }

        else
        {
          v102 = 0;
        }

        v106 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v99 imageProvider:v102];

        *&v215 = v96;
        v108 = *(v96 + 16);
        v107 = *(v96 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_243D93638((v107 > 1), v108 + 1, 1);
          v96 = v215;
        }

        *(v96 + 16) = v108 + 1;
        *(v96 + 8 * v108 + 32) = v106;
        v97 += 8;
        --v95;
      }

      while (v95);

      v10 = v170;
    }

    else
    {

      v96 = MEMORY[0x277D84F90];
    }

    *&v215 = v10;
    *(&v215 + 1) = v176;
    *&v216 = v166;
    *(&v216 + 1) = v26;
    *&v217 = v165;
    *(&v217 + 1) = v82;
    *&v218 = v96;
    v110 = *(a1 + 16);
    v109 = *(a1 + 24);
    type metadata accessor for ComplicationCornerGaugeView();
    sub_243D9B8B4();
    swift_getWitnessTable();
    sub_243DA3554(&v215, &type metadata for ComplicationCornerStackedGaugeView);
    v111 = v216;
    v112 = v217;
  }

  else
  {

    sub_243D9AC40(v8, v181, v9, 1);
    v163 = *(v3 + 16);
    v164 = *(v3 + 24);
    sub_243D8EBB8(v10, v176, v11, v8, v181, v9, v12, v13, &v253, v6, v5);
    v68 = type metadata accessor for ComplicationCornerGaugeView();
    swift_getWitnessTable();
    v69 = *(v68 - 8);
    v70 = *(v69 + 16);
    v70(&v187, &v253, v68);
    v194 = v255;
    v195 = v256;
    v196 = v257;
    v192 = v253;
    v193 = v254;
    v71 = *(v69 + 8);
    v71(&v192, v68);
    v225 = v189;
    v226 = v190;
    v227 = v191;
    v223 = v187;
    v224 = v188;
    v255 = v189;
    v256 = v190;
    v257 = v191;
    v253 = v187;
    v254 = v188;
    v70(&v182, &v253, v68);
    v231 = v255;
    v232 = v256;
    v233 = v257;
    v229 = v253;
    v230 = v254;
    v70(&v215, &v223, v68);
    v71(&v229, v68);
    v237 = v184;
    v238 = v185;
    v239 = v186;
    v235 = v182;
    v236 = v183;
    v207 = v184;
    v208 = v185;
    v209 = v186;
    v205 = v182;
    v206 = v183;
    v70(&v253, &v235, v68);
    sub_243D9B8B4();
    sub_243DA364C(&v205, &type metadata for ComplicationCornerStackedGaugeView, v68);
    v243 = v207;
    v244 = v208;
    v245 = v209;
    v242 = v206;
    v241 = v205;
    v71(&v241, v68);
    v249 = v184;
    v250 = v185;
    v251 = v186;
    v248 = v183;
    v247 = v182;
    v71(&v247, v68);
    v217 = v189;
    v218 = v190;
    v219 = v191;
    v215 = v187;
    v216 = v188;
    v71(&v215, v68);
  }

  v207 = v255;
  v208 = v256;
  v209 = v257;
  LOBYTE(v210) = v258;
  v205 = v253;
  v206 = v254;
  type metadata accessor for ComplicationCornerGaugeView();
  v113 = sub_243DADC40();
  v114 = sub_243D9B8B4();
  WitnessTable = swift_getWitnessTable();
  v221 = v114;
  v222 = WitnessTable;
  swift_getWitnessTable();
  v116 = *(v113 - 8);
  v117 = *(v116 + 16);
  v117(&v223, &v253, v113);
  v231 = v255;
  v232 = v256;
  v233 = v257;
  v234 = v258;
  v229 = v253;
  v230 = v254;
  v117(&v215, &v205, v113);
  v118 = *(v116 + 8);
  v118(&v229, v113);
  v237 = v225;
  v238 = v226;
  v239 = v227;
  v240 = v228;
  v235 = v223;
  v236 = v224;
  v255 = v225;
  v256 = v226;
  v257 = v227;
  LOBYTE(v258) = v228;
  v253 = v223;
  v254 = v224;
  v117(&v215, &v235, v113);
  type metadata accessor for ComplicationCornerCircularView();
  type metadata accessor for ComplicationCornerTextView();
  sub_243DADC40();
  v119 = sub_243DADC40();
  v120 = swift_getWitnessTable();
  v121 = sub_243D9B860();
  v122 = swift_getWitnessTable();
  v213 = v121;
  v214 = v122;
  v123 = swift_getWitnessTable();
  v211 = v120;
  v212 = v123;
  swift_getWitnessTable();
  sub_243DA364C(&v253, v119, v113);
  v118(&v205, v113);

  v243 = v255;
  v244 = v256;
  v245 = v257;
  v246 = v258;
  v241 = v253;
  v242 = v254;
  v118(&v241, v113);
  v249 = v225;
  v250 = v226;
  v251 = v227;
  v252 = v228;
  v247 = v223;
  v248 = v224;
  v118(&v247, v113);
  v255 = v217;
  v256 = v218;
  v257 = v219;
  v258 = v220;
  v253 = v215;
  v254 = v216;
  v4 = a2;
LABEL_83:
  v207 = v255;
  v208 = v256;
  v209 = v257;
  v210 = v258;
  v205 = v253;
  v206 = v254;
  v150 = *(a1 + 16);
  v151 = *(a1 + 24);
  type metadata accessor for ComplicationCornerCircularView();
  type metadata accessor for ComplicationCornerTextView();
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView();
  sub_243DADC40();
  v152 = sub_243DADC40();
  v153 = swift_getWitnessTable();
  v154 = sub_243D9B860();
  v155 = swift_getWitnessTable();
  v203 = v154;
  v204 = v155;
  v156 = swift_getWitnessTable();
  v201 = v153;
  v202 = v156;
  v157 = swift_getWitnessTable();
  v158 = sub_243D9B8B4();
  v159 = swift_getWitnessTable();
  v199 = v158;
  v200 = v159;
  v160 = swift_getWitnessTable();
  v197 = v157;
  v198 = v160;
  swift_getWitnessTable();
  v161 = *(v152 - 8);
  (*(v161 + 16))(v4, &v205, v152);
  v217 = v207;
  v218 = v208;
  v219 = v209;
  v220 = v210;
  v215 = v205;
  v216 = v206;
  return (*(v161 + 8))(&v215, v152);
}

void sub_243D9D6E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    v12 = sub_243D9E690(*a1);
    if (v12 >> 62)
    {
      if (sub_243DAE2E0())
      {
        goto LABEL_9;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v13 = sub_243DAE1A0();

      v14 = [objc_opt_self() providerWithProviders_];
      sub_243D9ACF4(v3, v4, v5, 0);

      v11 = 0;
      v15 = 0;
      LOBYTE(v6) = 2 * (v14 == 0);
      v3 = v14;
      goto LABEL_20;
    }

    sub_243D9ACF4(v3, v4, v5, 0);
    v3 = 0;
    v11 = 0;
    v15 = 0;
    LOBYTE(v6) = 2;
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    v7 = v3;
    v8 = sub_243D9E690(v4);
    if (v8 >> 62)
    {
      v9 = sub_243DAE2E0();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v10 = sub_243DAE1A0();

      v11 = [objc_opt_self() providerWithProviders_];
    }

    else
    {

      v11 = 0;
    }

    v16 = sub_243D9E690(v5);
    if (v16 >> 62)
    {
      if (sub_243DAE2E0())
      {
        goto LABEL_14;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v17 = sub_243DAE1A0();

      v15 = [objc_opt_self() providerWithProviders_];
      LOBYTE(v6) = 1;
      sub_243D9ACF4(v3, v4, v5, 1);

      goto LABEL_20;
    }

    LOBYTE(v6) = 1;
    sub_243D9ACF4(v3, v4, v5, 1);
    v15 = 0;
    goto LABEL_20;
  }

  v3 = 0;
  v11 = 0;
  v15 = 0;
LABEL_20:
  *a2 = v3;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v6;
}

id ComplicationCornerViewConfiguration.outerLabel.getter()
{
  v1 = sub_243D9E690(*(v0 + 16));
  if (v1 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v2 = sub_243DAE1A0();

  v3 = [objc_opt_self() providerWithProviders_];

  return v3;
}

void sub_243D9DAC4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_243D9E690(*(a1 + 16));
  if (v3 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    v5 = 0;
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v4 = sub_243DAE1A0();

  v5 = [objc_opt_self() providerWithProviders_];

LABEL_6:
  *a2 = v5;
}

uint64_t ComplicationCornerViewConfiguration.outerLabel.setter(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_243DB1AE0;
    *(v3 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v1 + 16);

  *(v1 + 16) = v3;
  return result;
}

void (*ComplicationCornerViewConfiguration.outerLabel.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  v4 = sub_243D9E690(v3);
  if (v4 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    v6 = 0;
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v5 = sub_243DAE1A0();

  v6 = [objc_opt_self() providerWithProviders_];

LABEL_6:
  *a1 = v6;
  return sub_243D9DD48;
}

void sub_243D9DD48(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (a2)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_243DB1AE0;
      v6 = objc_allocWithZone(CDLabelProvider);
      v8 = v3;
      *(v5 + 32) = [v6 initWithTextProvider:v8 imageProvider:0];
    }

    else
    {
      v8 = 0;
      v5 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 16) = v5;
  }

  else
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB1AE0;
      *(v7 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 16) = v7;
  }
}

void ComplicationCornerViewConfiguration.label.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v6[2] = v4;
  v7 = v5;
  sub_243D9AC40(v6[0], v3, v4, v5);
  sub_243D9D6E0(v6, a1);
}

double sub_243D9DF10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9[0] = *(a1 + 24);
  v9[1] = v3;
  v9[2] = v4;
  v10 = v5;
  sub_243D9AC40(v9[0], v3, v4, v5);
  sub_243D9D6E0(v9, &v11);
  v6 = v12;
  v7 = v13;
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void *sub_243D9DF7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v6 = v3;
  sub_243D9EA94(v5[0], v1, v2, v3);
  return ComplicationCornerViewConfiguration.label.setter(v5);
}

void *ComplicationCornerViewConfiguration.label.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_243DB1AE0;
      v7 = objc_allocWithZone(CDLabelProvider);
      v8 = v2;
      *(v6 + 32) = [v7 initWithTextProvider:v3 imageProvider:0];
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_243DB1AE0;
      *(v9 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v4 imageProvider:0];
      sub_243D9EA38(v2, v3, v4, 1);
    }

    else
    {
      v2 = 0;
      v6 = 0;
      v9 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243DB1AE0;
    *(v10 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v2 imageProvider:0];
    sub_243D9EA38(v2, v3, v4, 0);
    v6 = 0;
    v9 = 0;
    v2 = v10;
  }

  result = sub_243D9ACF4(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 24) = v2;
  *(v1 + 32) = v6;
  *(v1 + 40) = v9;
  *(v1 + 48) = v5;
  return result;
}

void sub_243D9E188(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 24))
  {
    if (v6 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB1AE0;
      v8 = objc_allocWithZone(CDLabelProvider);
      v9 = v3;
      *(v7 + 32) = [v8 initWithTextProvider:v4 imageProvider:0];
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_243DB1AE0;
      *(v10 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v5 imageProvider:0];
      sub_243D9EA38(v3, v4, v5, 1);
    }

    else
    {
      v3 = 0;
      v7 = 0;
      v10 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243DB1AE0;
    *(v11 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    sub_243D9EA38(v3, v4, v5, 0);
    v7 = 0;
    v10 = 0;
    v3 = v11;
  }

  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6;
}

void (*ComplicationCornerViewConfiguration.label.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9[0] = *(v1 + 24);
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;
  sub_243D9AC40(v9[0], v5, v6, v7);
  sub_243D9D6E0(v9, v4);
  return sub_243D9E3D8;
}

void sub_243D9E3D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = v3[4];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;
  if (a2)
  {
    sub_243D9EA94(v4, v5, v6, v7);
    ComplicationCornerViewConfiguration.label.setter(v9);
    sub_243D9EA38(*v3, v3[1], v3[2], *(v3 + 24));
  }

  else
  {
    ComplicationCornerViewConfiguration.label.setter(v9);
  }

  free(v3);
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:label:position:fontStyle:monochromeModel:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = *(a1 + 2);
  v14 = *(a1 + 24);
  v20 = *a1;
  v21 = v13;
  v22 = v14;
  sub_243D9E188(&v20, &v23);
  v19 = v23;
  v15 = v24;
  v16 = v25;
  v17 = [objc_allocWithZone(type metadata accessor for MonochromeModel()) init];

  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = MEMORY[0x277D84F90];
  result = v19;
  *(a5 + 24) = v19;
  *(a5 + 40) = v15;
  *(a5 + 48) = v16;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = v17;
  return result;
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:outerLabel:label:position:fontStyle:monochromeModel:)@<Q0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  v17 = *(a2 + 24);
  if (a1)
  {
    v24 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_243DB1AE0;
    v19 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
    v15 = v24;
    *(v18 + 32) = v19;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_243D9E188(&v26, &v29);
  v25 = v29;
  v20 = v30;
  v21 = v31;
  v22 = [objc_allocWithZone(type metadata accessor for MonochromeModel()) init];

  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = v18;
  result = v25;
  *(a6 + 24) = v25;
  *(a6 + 40) = v20;
  *(a6 + 48) = v21;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v22;
  return result;
}

uint64_t sub_243D9E690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v28 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  while (1)
  {
    v5 = *(v28 + 8 * v2);
    v6 = [v5 textProvider];
    if (!v6)
    {
      v10 = MEMORY[0x277D84F90];

      if (v10 < 0)
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB168, &unk_243DB2DA0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243DB29F0;
    *(v10 + 32) = v7;

    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_47:
    v12 = sub_243DAE2E0();
    v11 = 1;
    if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
    {
      goto LABEL_49;
    }

LABEL_15:
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_51;
    }

LABEL_16:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v29 = v2;
    if (result)
    {
      if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v15 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
      {
LABEL_25:
        sub_243DAE2E0();
        goto LABEL_26;
      }

      v15 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v15 + 16);
LABEL_26:
    result = sub_243DAE270();
    v3 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v11)
    {
      result = sub_243DAE2E0();
      v19 = result;
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
LABEL_3:

        if (v12 > 0)
        {
          goto LABEL_56;
        }

        goto LABEL_4;
      }
    }

    if (((v18 >> 1) - v17) < v12)
    {
      goto LABEL_57;
    }

    v20 = (v15 + 8 * v17 + 32);
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_59;
      }

      v21 = 0;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_37;
      }

      while (1)
      {
        result = MEMORY[0x245D51A70](v21++, v10);
        *v20 = result;
        if (v21 == v19)
        {
          break;
        }

        while (1)
        {
          ++v20;
          if ((v10 & 0xC000000000000001) != 0)
          {
            break;
          }

LABEL_37:
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            return result;
          }

          if (v21 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v22 = *(v10 + 32 + 8 * v21++);
          *v20 = v22;
          result = v22;
          if (v21 == v19)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_44:

      v1 = v27;
      if (v12 < 1)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }

    sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
    swift_arrayInitWithCopy();

    if (v12 < 1)
    {
      goto LABEL_4;
    }

LABEL_45:
    v23 = *(v15 + 16);
    v24 = __OFADD__(v23, v12);
    v25 = v23 + v12;
    if (v24)
    {
      goto LABEL_58;
    }

    *(v15 + 16) = v25;
LABEL_4:
    v2 = v29 + 1;
    if (v29 + 1 == v1)
    {
      return v3;
    }
  }

  v9 = [v8 textProviders];
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v10 = sub_243DAE1B0();

  if (v10 < 0)
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v11 = 0;
  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_49:
  v26 = sub_243DAE2E0();
  v14 = v26 + v12;
  if (!__OFADD__(v26, v12))
  {
    goto LABEL_16;
  }

LABEL_51:
  __break(1u);
  return MEMORY[0x277D84F90];
}

void sub_243D9EA38(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a3;
  }
}

id sub_243D9EA94(id result, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
    v6 = a3;
    v7 = v5;
    result = a2;
  }

  return result;
}

uint64_t sub_243D9EB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_243D9EB7C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_243D9EC04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_243D9EC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_243D9ECA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D9ED14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_243D9ED5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_243D9EDB4()
{
  result = qword_27EDBB170;
  if (!qword_27EDBB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB170);
  }

  return result;
}

id ComplicationLabelProvider.textProvider.getter()
{
  v1 = [*v0 textProvider];

  return v1;
}

id Sequence<>.fallbackTextProvider.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB178, &qword_243DB2D50);
  sub_243D9F344();
  v0 = sub_243DAE190();
  if (v0 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D9F3A8();
  v1 = sub_243DAE1A0();

  v2 = [objc_opt_self() providerWithProviders_];

  return v2;
}

id ComplicationLabelProvider.imageProvider.getter()
{
  v1 = [*v0 imageProvider];

  return v1;
}