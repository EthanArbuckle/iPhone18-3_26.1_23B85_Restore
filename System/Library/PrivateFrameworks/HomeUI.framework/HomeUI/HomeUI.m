uint64_t sub_20CEBADF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D567838();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_20CEBAE24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_20CEBAE48(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20CEBAF10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20CEBAF3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_20CEBB008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_20CED0230(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_20CEBB074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CEBB094(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_20CEBB0C0(uint64_t a1, int a2)
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

uint64_t sub_20CEBB0E0(uint64_t result, int a2, int a3)
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

uint64_t sub_20CEBB1E8()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBB220()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CEBB258()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEBB298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBB2D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_20CEBB394(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED4D04(v1);
}

void sub_20CEBB3C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED4EA4(v1);
}

void sub_20CEBB404(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED520C(v1);
}

void sub_20CEBB438(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED5248(v1);
}

void sub_20CEBB4E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED56D0(v1);
}

void sub_20CEBB61C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20CED5054(v1);
}

uint64_t sub_20CEBB64C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBB6BC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBB774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEBB7CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEBB820()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBB858()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBB890()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBB8C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBB900()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20CEBB940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEBB9AC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBBA64()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBBA9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20CEBBADC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBBB20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (((((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | v7 | 7);
}

uint64_t sub_20CEBBCF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEBBD5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEBBDB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEBBE08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBBE9C()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_20CEBBF0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CEBBFC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D5636B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CEBC138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D5636B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CEBC204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D566A48();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBC258()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x20F31FD50](v0 + v3);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D566868();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_20CEBC3B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566A68();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBC40C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566A28();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBC468()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBC4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEBC510()
{
  v1 = *(type metadata accessor for UtilityDetailsView.SupportMethod(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_20D5636B8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CEBC70C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CEBC7C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBC894()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBC8D4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEBC92C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBC9D8()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCA38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCA78()
{
  v1 = v0[1];
  MEMORY[0x20F31E200](*v0);
  return MEMORY[0x20F31E200](v1);
}

uint64_t sub_20CEBCAD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEBCB2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20CEBCB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEBCC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CEBCC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEBCD68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingOAuthLoginViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBCDD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCE10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20CEBCE70()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCEBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCEFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBCF34@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUSelectableActionSetItemModule_selectionController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBCF98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_20D5663C8();
}

uint64_t sub_20CEBCFF4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBD0AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEBD108(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20CEBD16C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBD1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CEBD264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CEBD320()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBD370()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBD3B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_20D563818();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_20CEBD468(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_20D563818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBD510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D563DA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D3B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20CEBD640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D563DA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D3B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20CEBD770()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CEBD848()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBD890()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBD8C8()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CEBD98C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D410);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D408);
  sub_20D566D38();
  sub_20CF156D0(&qword_27C81D438, &qword_27C81D408);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEBDA80()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_20CEBDAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20CEBDBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

uint64_t sub_20CEBDC78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBDCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CEBDD7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D563818();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CEBDE80()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBDEC0()
{
  v1 = *(type metadata accessor for BridgesListView.Config() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_20D563818();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CEBE000@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27C81D6C0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEBE05C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_27C81D6C0;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_20CEBE0C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C81D6C8;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEBE12C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE164()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBE1A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE1F0()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingEnterOTPViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBE288()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE2C8()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE30C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE3C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE400()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE470()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEBE4B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEBE4F8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEBE538()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE5E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE620()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE658()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEBE698()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEBE6DC()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE72C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBE7A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBE850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBE8C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBE8F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20CEBE948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_20CEBE9B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEBEA20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEBEA7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20CEBEAE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_20CEBEB5C(int8x16_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  v4 = a1[3].i8[0];
  sub_20CF8FBE8(v3, v2);
  sub_20CF8CDE0(v3);
}

uint64_t sub_20CEBEBBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBEBFC()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBEC34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D565FA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CEBED30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D565FA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CEBEDE8()
{
  v1 = (type metadata accessor for ActivityLogListCell() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_20D565FA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CEBEED0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E0C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81E0B0);
  sub_20CF156D0(&qword_27C81E140, &qword_27C81E0C0);
  sub_20CF156D0(&qword_27C81E148, &qword_27C81E0B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEBEFE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20CFA82F4();
  *a1 = result & 1;
  return result;
}

__n128 sub_20CEBF048(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_20CEBF054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C81E160;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEBF0C0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEBF178()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBF1B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CEBF24C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBF284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingIntroViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEBF2E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBF324()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBF35C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEBF478(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_20D563E18();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(a1 + v11, a2, v9);
  }

  v12 = sub_20D563E48();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_20D564708();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E570);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v15 = sub_20D563E08();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[22];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF08);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[23];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[24];

  return v19(v20, a2, v18);
}

uint64_t sub_20CEBF728(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_20D563E18();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(v5 + v11, a2, a2, v9);
  }

  v12 = sub_20D563E48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_20D564708();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E570);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v15 = sub_20D563E08();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[22];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DF08);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[23];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v5 + a4[24];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20CEBF9D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 36)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_20CEBFA8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 36)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBFB38(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_20CEBFBEC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBFC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CEBFD54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBFE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_20CEBFEC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEBFF88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBFFC0()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEBFFF8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC0048()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC008C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEC00E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC011C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC0154()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC018C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC01C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC0244()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC027C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC02B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC030C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0344()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC037C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC03BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC03FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0438()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0480()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC04BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC050C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC0544()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC0594(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_20CEC05D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC0618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC067C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC06B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC06F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_20D5663C8();
}

uint64_t sub_20CEC076C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC07B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC0814()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20CEC0874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D566A98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20CEC08EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0924()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEC0978()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EED0);
  sub_20CF156D0(&qword_27C81EEE8, &qword_27C81EED0);
  sub_20CFE6820();
  return swift_getOpaqueTypeConformance2();
}

id sub_20CEC0A70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC0ADC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC0B94()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0BD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_20CEC0C10@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CEC0C44(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_20CEC0C44(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

id sub_20CEC0D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC0DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_20D5663C8();
}

uint64_t sub_20CEC0EB4()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0EEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC0F2C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUShortcutsAccessoryPickerViewController_selectionController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC0F90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC0FE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUContainedSpeakersViewController_requiresPresentingViewControllerDismissal;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC103C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC10F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20CEC112C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

uint64_t sub_20CEC11C0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_20CEC1278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryTileCell_sizeChangeButton;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC12E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC133C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUAccessoryTileCell_showsSizeChangeButton;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC1390()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC13CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC1424(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20CEC1478@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC14E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC152C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC15E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCellBackgroundView_materialStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC163C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCellBackgroundView_materialStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_20CEC16A8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_27C81F280;
  *a1 = qword_27C81F280;
  return result;
}

uint64_t sub_20CEC16F4(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27C81F280 = v1;
  return result;
}

double sub_20CEC1744@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_20CEC179C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_20CEC1800()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC1838()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CEC1870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCellToggleSizeButton_isExpanding;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_20CEC18F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCellToggleSizeButton_symbolConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_20CEC1958(id *a1)
{
  v1 = *a1;
  sub_20D001710(v1);
}

uint64_t sub_20CEC19A8()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

id sub_20CEC19E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_20CEC1A48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D001BD8(v1);
}

uint64_t sub_20CEC1A78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCell_appContext;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC1B00@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20CEC1C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUTileCell_backgroundEffectGrouper;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC1CF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCell_materialStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC1D68(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC1DBC@<X0>(_BYTE **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = &v3[OBJC_IVAR___HUTileCell__gridSize];
  if (v3[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    result = sub_20D005CF8(v3);
  }

  else
  {
    result = *v4;
    v6 = v4[1];
  }

  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_20CEC1E0C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x290))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20CEC1ED4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x2A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20CEC1F9C()
{

  if (*(v0 + 376))
  {

    swift_unknownObjectRelease();
    sub_20CFD9DD8(*(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432));
  }

  return MEMORY[0x2821FE8E8](v0, 520, 7);
}

id sub_20CEC2078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 280);
  if (v3)
  {
    v4 = *(a1 + 280);
  }

  else
  {
    v4 = *(a1 + 152);
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

void sub_20CEC20C8(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 280);
  v5 = *a1;

  *(a2 + 280) = v3;
}

void *sub_20CEC2110(void *a1, void *a2)
{
  a2[36] = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(v5, __dst, sizeof(v5));
  sub_20CEFFA00(v5);
  return memcpy(a2, __src, 0x1F8uLL);
}

uint64_t sub_20CEC2188@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_20CEC21DC(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_20CEC222C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_20CEC2280(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t sub_20CEC22D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_20CEC2324(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 176) = v2;
  return result;
}

uint64_t sub_20CEC2374@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *a2 = *(v3 + 288);
  return result;
}

uint64_t sub_20CEC23D4()
{

  if (*(v0 + 376))
  {

    swift_unknownObjectRelease();
    sub_20CFD9DD8(*(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432));
  }

  return MEMORY[0x2821FE8E8](v0, 520, 7);
}

uint64_t sub_20CEC24B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  return sub_20CECF7A0(v3 + v4, a2);
}

uint64_t sub_20CEC2510()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC2548()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC2588()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC25C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC25F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC2638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

id sub_20CEC2698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC2704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC275C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC27B0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC2840()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC2878()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC28B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC28F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC292C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC2980()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC29D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC2A18()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC2A58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC2AA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC2AD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_20CEC2B18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_20CEC2B68@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsCharacteristicNotifications];
  *a2 = result;
  return result;
}

id sub_20CEC2BB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 accessAllowedForCurrentLockState];
  *a2 = result;
  return result;
}

id sub_20CEC2BF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 compactContinuousCornerRadius];
  *a2 = v4;
  return result;
}

id sub_20CEC2C40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentMetrics];
  *a2 = result;
  return result;
}

id sub_20CEC2C90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentRenderingMode];
  *a2 = result;
  return result;
}

id sub_20CEC2CD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gridSizeClass];
  *a2 = result;
  return result;
}

uint64_t sub_20CEC2D20()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC2D70()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC2DB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC2E18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC2E68()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC2F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectedItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_20D5663C8();
}

id sub_20CEC2F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI37AccessoryEventItemSelectionController_selectionCompleteFuture;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC2FDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC301C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC3054()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC309C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20CEC3118@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void sub_20CEC314C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D04DE70(v1);
}

uint64_t sub_20CEC32B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC33AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_20CEC33E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D052474(v1);
}

void sub_20CEC341C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D052158(v1);
}

void sub_20CEC3450(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D0511B4(v1);
}

void sub_20CEC3484(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D050E98(v1);
}

uint64_t sub_20CEC34B4()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC34EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20CEC352C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

id sub_20CEC3568@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationItem];
  *a2 = result;
  return result;
}

uint64_t sub_20CEC35EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC362C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC367C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_presentationDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC3734@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC37EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_cellBackgroundDisplayStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC3884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_actionSetDataModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20CEC38E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC3924()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CEC39B8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC3A1C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC3A54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

id sub_20CEC3AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI36UtilityOnboardingSetupViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC3B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566AB8();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC3BA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC3BDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20CEC3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8202F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Utility();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20CEC3D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8202F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Utility();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20CEC3E80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820218);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C260);
  sub_20D06B1D8();
  sub_20D06B2A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEC3F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEC3F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEC4008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C820460;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC4060(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27C820460;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC40B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C820468;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC4114()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC4164@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27C820498;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20CEC41C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + qword_27C820498;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20CEC4220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C8204A0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_20D5663C8();
}

uint64_t sub_20CEC4280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27C8204A8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC42E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20CEC434C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20CEC43CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC4444()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC447C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20CEC44E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC4518()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC4558@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

double sub_20CEC4610@<D0>(uint64_t a1@<X8>)
{
  sub_20D07B65C(v3);
  *a1 = v3[0];
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

__n128 sub_20CEC4664(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20CEC4670@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_20D07EAD4();

  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC46E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D07B910();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20CEC4748()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC4780()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC47C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D5637A8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_20D568988();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_20CEC4900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ControlCenterModuleConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D5637A8();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_20D568988();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20CEC4A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_20CEC4AD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_20D081FFC(v5);
}

uint64_t sub_20CEC4B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  return sub_20D084630(v3 + v4, a2);
}

__n128 sub_20CEC4B90@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_20CEC4BEC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_20CEC4C4C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20CEC4C84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 target];
  *a2 = result;
  return result;
}

uint64_t sub_20CEC4CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUNavigationBarButton_buttonIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_20D5663C8();
}

uint64_t sub_20CEC4D30@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

id sub_20CEC4DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUNavigationBarButton_badgeValue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_20CEC4E50(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D087E80(v1);
}

id sub_20CEC4E80@<X0>(void *a1@<X8>)
{
  result = sub_20D088118();
  *a1 = result;
  return result;
}

void sub_20CEC4EAC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_20D0882A8(v1);
}

uint64_t sub_20CEC4EDC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CEC4F14()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC4F4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC4F84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC4FD0()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20CEC5030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEC50A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CEC5108()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20D5637A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CEC51EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_20D5637A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CEC52D4()
{
  v1 = (type metadata accessor for ActivityLogSection() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_20D5637A8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_20CEC5410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

unsigned __int8 *sub_20CEC5494(unsigned __int8 *result, void *a2)
{
  v2 = *result;
  if (v2 != *(*a2 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled))
  {
    *(*a2 + OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell__disabled) = v2;
    return sub_20D096A38(0);
  }

  return result;
}

uint64_t sub_20CEC54D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI26HUCollectionViewSwitchCell_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC5538()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5570()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CEC5634()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC566C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC56A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC56DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5714()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC574C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC57A0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC5858@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUDashboardFilterBarController_contextTypeDescriptionForAnalytics);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_20D5663C8();
}

uint64_t sub_20CEC58B4()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC58EC()
{
  v1 = sub_20D5638C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_20CEC59DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC5A24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5A5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC5A9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5AD4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC5B14()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC5B58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingSelectLocationViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC5BB8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC5BF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC5C3C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC5C74()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CEC5D08()
{
  v1 = sub_20D5637A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CEC5DCC()
{
  v1 = *(type metadata accessor for ControlCenterModuleConfiguration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_5;
    }

    v6 = sub_20D563818();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);
  }

LABEL_5:
  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20CEC5F3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20D563DA8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20CEC606C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_20D563DA8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20CEC61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821108);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20D5643B8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CEC62D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821108);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20D5643B8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CEC645C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingErrorViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC64BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC64F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC654C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20CEC65B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20CEC661C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC66A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC66E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6724()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC675C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEC67B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_20CEC6820(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_20CFE769C(v4, v3);
  sub_20D0DCBC4(a1);
}

uint64_t sub_20CEC6878@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20CEC68F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_20D5663C8();
}

uint64_t sub_20CEC6968@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig;
  swift_beginAccess();
  *a2 = *(v3 + 8);
  return sub_20D5663C8();
}

uint64_t sub_20CEC69D8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC6A2C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6A64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_20CEC6AAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_20CEC6B08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_20CEC6B90@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_20CEC6BEC(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_20D0ED7F0(&v3);
}

uint64_t sub_20CEC6C2C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6C64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20CEC6CA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC6CDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIConfigurationState.isActive.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_20CEC6D50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20CEC6DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIConfigurationState.hasActivity.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_20CEC6E48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIConfigurationState.isToggleable.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_20CEC6EBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIConfigurationState.isDisabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_20CEC6F48()
{
  type metadata accessor for OnChangeAfterInitialSetupModifier();
  swift_getWitnessTable();
  sub_20D566D48();
  sub_20D566948();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEC7058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC70C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUDashboardPresentationManager_delegate;
  swift_beginAccess();
  return sub_20D0F3ED4(v3 + v4, a2);
}

double sub_20CEC7120@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20CEC717C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20CEC7280()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC72B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC7328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20CEC7380(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20CEC73FC()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20CEC74A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20CEC7578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821610);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_20CEC7660()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7698()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CEC76F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821658);
  sub_20D566968();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821650);
  sub_20CF156D0(&qword_27C8216C0, &qword_27C821650);
  swift_getOpaqueTypeConformance2();
  sub_20D103C28(&qword_27C8216C8, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEC7850()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20CEC78B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821728);
  sub_20D103B6C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CEC7930()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7980()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC79C4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CEC7A10()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7A68()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7AA4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC7B64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7B9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC7C48@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA50);
  result = sub_20D566578();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC7C98()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7CD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC7D40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7D78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CEC7DC0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20CEC7E78()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CEC7ECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CEC7F0C()
{
  MEMORY[0x20F31FD50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

_OWORD *sub_20CEC80B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20CEC8164(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_20CEC8174@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void *sub_20CEC8190@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_20CEC81F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20CEC8204@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20CEC8260(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20CEC8314(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CEC8380(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CEC8420;
}

void sub_20CEC8420(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_20CEC84A8()
{
  v1 = OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ActionGridItemModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id ActionGridItemModuleController.init(module:)(char *a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController____lazy_storage___collectionLayoutManager] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActionGridItemModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);
  *&a1[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = &off_2823CEA90;
  swift_unknownObjectWeakAssign();

  return v3;
}

void sub_20CEC8764(void *a1, void *a2)
{
  v3 = v2;
  v48.receiver = v2;
  v48.super_class = type metadata accessor for ActionGridItemModuleController();
  objc_msgSendSuper2(&v48, sel_configureCell_forItem_, a1, a2);
  type metadata accessor for AccessoryTileCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    if (![a2 conformsToProtocol_])
    {
LABEL_18:

      goto LABEL_19;
    }

    v9 = [v2 module];
    v10 = [v9 itemUpdater];

    if (v10)
    {
      v11 = [v10 childItemsForItem_];
      swift_unknownObjectRelease();
      sub_20CECF940(0, &qword_281120AC0);
      sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
      v12 = sub_20D567D08();

      sub_20CEC8C90(v12);
      v14 = v13;

      if (v14)
      {
        v15 = [v3 module];
        v16 = &v15[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
        swift_beginAccess();
        LODWORD(v16) = v16[16];

        if (v16 == 1)
        {
          v17 = objc_opt_self();
          sub_20CECF940(0, &unk_27C81A3F0);
          sub_20CECBDB8(&qword_27C81D280, &unk_27C81A3F0);
          v18 = sub_20D567CD8();

          v19 = [v17 hu:v18 preferredToggleableControlItemInControlItems:?];

          goto LABEL_9;
        }
      }
    }

    v19 = 0;
LABEL_9:
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20 && (v21 = [v20 containingItem], objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22))
    {
      v23 = v8;

      v24 = 0;
      v47 = 0;
    }

    else
    {
      v23 = v8;
      v47 = v19;
      v24 = v19 != 0;
    }

    v25 = MEMORY[0x277D85000];
    v26 = *((*MEMORY[0x277D85000] & *v7) + 0x138);
    v27 = v23;
    v26(v24);
    v28 = sub_20CEC84A8();
    v29 = (*((*v25 & *v28) + 0x128))(a2);
    v31 = v30;

    v32 = v7 + OBJC_IVAR___HUTileCell__gridSize;
    v34 = *(v7 + OBJC_IVAR___HUTileCell__gridSize);
    v33 = *(v7 + OBJC_IVAR___HUTileCell__gridSize + 8);
    v35 = *(v7 + OBJC_IVAR___HUTileCell__gridSize + 16);
    *v32 = v29;
    *(v32 + 1) = v31;
    v32[16] = 0;
    if ((v35 & 1) != 0 || v29 != v34 || v31 != v33)
    {
      [v7 setNeedsUpdateConfiguration];
    }

    v8 = v23;
    goto LABEL_18;
  }

LABEL_19:
  type metadata accessor for TileCell();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    v38 = a1;
    v39 = [v3 module];
    v40 = &v39[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    LODWORD(v40) = v40[49];

    v41 = OBJC_IVAR___HUTileCell_useMutedIconOffColors;
    swift_beginAccess();
    v42 = v37[v41];
    v37[v41] = v40;
    if (v40 != v42)
    {
      [v37 setNeedsUpdateConfiguration];
    }
  }

  v43 = [v3 module];
  v44 = &v43[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v45 = *(v44 + 5);
  LOBYTE(v44) = v44[48];

  if ((v44 & 1) == 0)
  {
    v46 = swift_dynamicCastObjCProtocolConditional();
    if (v46)
    {
      [v46 setBackgroundDisplayStyle_];
    }
  }
}

void sub_20CEC8C90(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_20D568768())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E90);
  v3 = sub_20D568838();
LABEL_6:
  v42 = v3;
  if (sub_20CECF940(0, &unk_27C81A3F0) == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      sub_20D5663C8();
      sub_20D568718();
      sub_20CECF940(0, &qword_281120AC0);
      sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
      sub_20D567D58();
      v1 = v44;
      v8 = v45;
      v9 = v46;
      v10 = v47;
      v11 = v48;
    }

    else
    {
      v33 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v11 = v35 & *(v1 + 56);
      sub_20D5663C8();
      v10 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v36 = v11;
      v37 = v10;
      if (!v11)
      {
        v38 = v10;
        do
        {
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_60;
          }

          if (v37 >= ((v9 + 64) >> 6))
          {
LABEL_37:
            sub_20CEC80DC();
            return;
          }

          v36 = *(v8 + 8 * v37);
          ++v38;
        }

        while (!v36);
      }

      v39 = (v36 - 1) & v36;
      v40 = *(*(v1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
      while (1)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (!v41)
        {

LABEL_57:
          sub_20CEC80DC();

          return;
        }

        sub_20D0A15FC(v41);
        v10 = v37;
        v11 = v39;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_49:
        if (!sub_20D568798())
        {
          goto LABEL_37;
        }

        sub_20CECF940(0, &qword_281120AC0);
        swift_dynamicCast();
        v40 = v43;
        v37 = v10;
        v39 = v11;
      }
    }
  }

  if (v2)
  {
    sub_20D5663C8();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    v1 = v44;
    v4 = v45;
    v5 = v46;
    v6 = v47;
    v7 = v48;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);
    sub_20D5663C8();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_37;
    }

    sub_20CECF940(0, &qword_281120AC0);
    swift_dynamicCast();
    v22 = v43;
    v19 = v6;
    v21 = v7;
LABEL_27:
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {

      goto LABEL_57;
    }

    v24 = v23;
    v25 = sub_20D5683E8();
    v26 = -1 << *(v42 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v28);
      }

      while (v32 == -1);
      v17 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v42 + 48) + 8 * v17) = v24;
    ++*(v42 + 16);
    v6 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v6;
  if (v7)
  {
LABEL_24:
    v21 = (v18 - 1) & v18;
    v43 = *(*(v1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    v22 = v43;
    goto LABEL_27;
  }

  v20 = v6;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_37;
    }

    v18 = *(v4 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_24;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_20CEC9248(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_20D568768())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C1A0);
  v3 = sub_20D568838();
LABEL_6:
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70) == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      sub_20D5663C8();
      sub_20D568718();
      sub_20CECF894();
      sub_20D567D58();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);
      sub_20D5663C8();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_20D568798())
        {
LABEL_55:
          sub_20CEC80DC();
          return;
        }

        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_20D0A1610(v35);
    }
  }

  if (v2)
  {
    sub_20D5663C8();
    sub_20D568718();
    sub_20CECF894();
    sub_20D567D58();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);
    sub_20D5663C8();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_55;
    }

    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = sub_20D5683E8();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_20CEC9698(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_20D568768())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AEF8);
  v3 = sub_20D568838();
LABEL_6:
  v42 = v3;
  if (sub_20CECF940(0, &qword_27C81AF00) == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      sub_20D5663C8();
      sub_20D568718();
      sub_20CECF940(0, &qword_27C81AE50);
      sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
      sub_20D567D58();
      v1 = v44;
      v8 = v45;
      v9 = v46;
      v10 = v47;
      v11 = v48;
    }

    else
    {
      v33 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v11 = v35 & *(v1 + 56);
      sub_20D5663C8();
      v10 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v36 = v11;
      v37 = v10;
      if (!v11)
      {
        v38 = v10;
        do
        {
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_60;
          }

          if (v37 >= ((v9 + 64) >> 6))
          {
LABEL_37:
            sub_20CEC80DC();
            return;
          }

          v36 = *(v8 + 8 * v37);
          ++v38;
        }

        while (!v36);
      }

      v39 = (v36 - 1) & v36;
      v40 = *(*(v1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
      while (1)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (!v41)
        {

LABEL_57:
          sub_20CEC80DC();

          return;
        }

        sub_20D0A1754(v41);
        v10 = v37;
        v11 = v39;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_49:
        if (!sub_20D568798())
        {
          goto LABEL_37;
        }

        sub_20CECF940(0, &qword_27C81AE50);
        swift_dynamicCast();
        v40 = v43;
        v37 = v10;
        v39 = v11;
      }
    }
  }

  if (v2)
  {
    sub_20D5663C8();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AE50);
    sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
    sub_20D567D58();
    v1 = v44;
    v4 = v45;
    v5 = v46;
    v6 = v47;
    v7 = v48;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);
    sub_20D5663C8();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_37;
    }

    sub_20CECF940(0, &qword_27C81AE50);
    swift_dynamicCast();
    v22 = v43;
    v19 = v6;
    v21 = v7;
LABEL_27:
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {

      goto LABEL_57;
    }

    v24 = v23;
    v25 = sub_20D5683E8();
    v26 = -1 << *(v42 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v28);
      }

      while (v32 == -1);
      v17 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v42 + 48) + 8 * v17) = v24;
    ++*(v42 + 16);
    v6 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v6;
  if (v7)
  {
LABEL_24:
    v21 = (v18 - 1) & v18;
    v43 = *(*(v1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    v22 = v43;
    goto LABEL_27;
  }

  v20 = v6;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_37;
    }

    v18 = *(v4 + 8 * v19);
    ++v20;
    if (v18)
    {
      goto LABEL_24;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_20CEC9D8C()
{
  v1 = [v0 module];
  v2 = &v1[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v3 = v2[16];

  return v3;
}

uint64_t sub_20CEC9E68(uint64_t a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_serviceContainingItem;
    swift_beginAccess();
    v8 = *(a1 + v7);
    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = a2;
        v12 = v8;
        v13 = [v10 serviceActionItemForChildServiceItem_];
        v14 = [objc_allocWithZone(HUServiceActionControlsViewController) initWithServiceActionItem:v13 mode:1];
        [v14 setServiceActionControlsDelegate_];

        return v14;
      }
    }

    v16 = a2;
    sub_20D568858();

    v17 = *(a1 + v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81A4C0);
    v18 = sub_20D567858();
    MEMORY[0x20F31CDB0](v18);
  }

  else
  {
    sub_20D568858();

    v19 = [a2 description];
    v20 = sub_20D567838();
    v22 = v21;

    MEMORY[0x20F31CDB0](v20, v22);
  }

  result = sub_20D568A58();
  __break(1u);
  return result;
}

uint64_t sub_20CECA148@<X0>(id a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v18 = *a2;
  v4 = [a1 module];
  sub_20CECF7A0(v4 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v19);

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v5 = sub_20D565B38();
  v6 = v5;
  v17 = a3;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v8 = 0;
    v20 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v9 = MEMORY[0x20F31DD20](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 action];
      if (v12)
      {
        v13 = v12;
        sub_20CECF940(0, &qword_27C81AF88);
        v14 = v18;
        v15 = sub_20D5683F8();

        if (v15)
        {

          goto LABEL_17;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v10 = 0;
LABEL_17:
  *v17 = v10;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void sub_20CECA328(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AE50);
    sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
    sub_20D567D58();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_20D568798() || (sub_20CECF940(0, &qword_27C81AE50), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_23:
        sub_20CEC80DC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 characteristic];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x20F31CEE0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20CECA5E0(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20D568798() || (sub_20CECF940(0, &qword_281120AC0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_20CEC80DC();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x20F31CEE0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_20CECA8F0(void **a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v4 = [v2 actionBuilders];
  if (!v4)
  {

    return;
  }

  v5 = v4;
  v6 = sub_20CECF940(0, &qword_27C81AE50);
  sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
  v7 = sub_20D567D08();

  v8 = v7 & 0xC000000000000001;
  v30 = v3;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v10 = v36;
    v9 = v37;
    v11 = v38;
    v12 = v39;
    v13 = v40;
  }

  else
  {
    v14 = -1 << *(v7 + 32);
    v11 = ~v14;
    v9 = v7 + 56;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v7 + 56);
    sub_20D5663C8();
    v13 = v17;
    v12 = 0;
    v10 = v7;
  }

  v32 = v9;
  v35 = v7 + 56;
  v31 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  while (2)
  {
    v33 = v13;
    if (!sub_20D568798())
    {
      v22 = v30;
      goto LABEL_33;
    }

    swift_dynamicCast();
    v22 = v41;
    v34 = v33;
    if (!v41)
    {
LABEL_32:
      v22 = v30;
      goto LABEL_33;
    }

    while (v8)
    {
      v18 = v22;
      v19 = sub_20D5687A8();

      v13 = v34;
      if (v19)
      {
        goto LABEL_32;
      }

      if (v10 < 0)
      {
        goto LABEL_20;
      }

LABEL_14:
      v20 = v12;
      v21 = v13;
      if (!v13)
      {
        while (1)
        {
          v12 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v12 >= ((v11 + 64) >> 6))
          {
            v22 = v30;
            goto LABEL_33;
          }

          v21 = *(v9 + 8 * v12);
          ++v20;
          if (v21)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        return;
      }

LABEL_18:
      v34 = (v21 - 1) & v21;
      v22 = *(*(v10 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    v23 = v6;
    if (!*(v7 + 16) || (v24 = sub_20D5683E8(), v25 = -1 << *(v7 + 32), v26 = v24 & ~v25, ((*(v35 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0))
    {
LABEL_28:

      v6 = v23;
      v10 = v31;
      v9 = v32;
      v8 = v7 & 0xC000000000000001;
      v13 = v34;
      if (v31 < 0)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v7 + 48) + 8 * v26);
    v29 = sub_20D5683F8();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v35 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_33:
  sub_20CEC80DC();
}

uint64_t sub_20CECACB4()
{
  v1 = [v0 module];
  v2 = [v1 itemUpdater];

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_20D5677F8();
  v4 = [v2 displayedItemsInSectionWithIdentifier_];

  swift_unknownObjectRelease();
  sub_20CECF940(0, &qword_281120AC0);
  v5 = sub_20D567A78();

  return v5;
}

id sub_20CECAEF8(void *a1)
{
  v1 = sub_20CECE828(a1);

  return v1;
}

uint64_t sub_20CECAF8C(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = a1;
    v6 = [v1 module];
    v7 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    LODWORD(v7) = v7[16];

    if (v7 == 1)
    {
      v8 = [v4 services];
      sub_20CECF940(0, &qword_27C81AEC0);
      sub_20CECBDB8(&qword_27C81D290, &qword_27C81AEC0);
      v9 = sub_20D567D08();

      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = sub_20D568768();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      if (v10 < 2)
      {
        v11 = [v1 module];
        v12 = [v11 itemUpdater];

        if (v12)
        {
          v13 = [v12 childItemsForItem_];
          swift_unknownObjectRelease();
          sub_20CECF940(0, &qword_281120AC0);
          sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
          v14 = sub_20D567D08();

          sub_20CECA5E0(v14);
          v16 = v15;
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

        v17 = objc_opt_self();
        sub_20CEF3080(v16);

        sub_20CECF940(0, &unk_27C81A3F0);
        sub_20CECBDB8(&qword_27C81D280, &unk_27C81A3F0);
        v18 = sub_20D567CD8();

        v19 = [v17 standardControlPanelItemsForControlItems_];

        sub_20CECF940(0, &qword_27C81AEE8);
        sub_20CECBDB8(&qword_27C81AEF0, &qword_27C81AEE8);
        v20 = sub_20D567D08();

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = sub_20D568768();
        }

        else
        {

          v21 = *(v20 + 16);
        }

        return v21 != 0;
      }

      else
      {

        return 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_20CECB338(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 actionBuilders];
    v38 = v4;
    if (v5)
    {
      v6 = v5;
      sub_20CECF940(0, &qword_27C81AE50);
      sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
      v7 = sub_20D567D08();

      goto LABEL_6;
    }

    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_36;
    }

LABEL_5:
    v7 = MEMORY[0x277D84FA0];
LABEL_6:
    while (1)
    {
      v39 = v3;
      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_20D568718();
        sub_20CECF940(0, &qword_27C81AE50);
        sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
        sub_20D567D58();
        v7 = v41[8];
        v8 = v41[9];
        v9 = v41[10];
        v10 = v41[11];
        v11 = v41[12];
      }

      else
      {
        v10 = 0;
        v12 = -1 << *(v7 + 32);
        v8 = v7 + 56;
        v9 = ~v12;
        v13 = -v12;
        v14 = v13 < 64 ? ~(-1 << v13) : -1;
        v11 = v14 & *(v7 + 56);
      }

      v15 = (v9 + 64) >> 6;
      v3 = &OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer;
      if (v7 < 0)
      {
        break;
      }

      while (1)
      {
        v20 = v10;
        v21 = v11;
        v18 = v10;
        if (!v11)
        {
          break;
        }

LABEL_20:
        v19 = (v21 - 1) & v21;
        v17 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v21)))));
        if (!v17)
        {
          goto LABEL_23;
        }

LABEL_21:
        v22 = [v40 module];
        sub_20CECF7A0(v22 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v41);

        __swift_project_boxed_opaque_existential_1(v41, v41[3]);
        sub_20D565B68();

        __swift_destroy_boxed_opaque_existential_1(v41);
        v10 = v18;
        v11 = v19;
        if (v7 < 0)
        {
          goto LABEL_13;
        }
      }

      while (1)
      {
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v18 >= v15)
        {
          goto LABEL_23;
        }

        v21 = *(v8 + 8 * v18);
        ++v20;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_36:
      if (!sub_20D568768())
      {
        goto LABEL_5;
      }

      sub_20CEF373C(MEMORY[0x277D84F90]);
      v7 = v37;
    }

LABEL_13:
    v16 = sub_20D568798();
    if (v16)
    {
      v41[5] = v16;
      sub_20CECF940(0, &qword_27C81AE50);
      swift_dynamicCast();
      v17 = v41[0];
      v18 = v10;
      v19 = v11;
      if (v41[0])
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    sub_20CEC80DC();
    v23 = [v39 services];
    sub_20CECF940(0, &qword_27C81AEC0);
    sub_20CECBDB8(&qword_27C81D290, &qword_27C81AEC0);
    v24 = sub_20D567D08();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = sub_20D568768();
    }

    else
    {
      v25 = *(v24 + 16);
    }

    v26 = v38;
    if (v25 < 2)
    {
      v32 = [v40 module];
      v33 = &v32[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
      swift_beginAccess();
      v34 = *(v33 + 3);

      v27 = [objc_allocWithZone(HUServiceActionControlsViewController) initWithServiceActionItem:v39 mode:v34];
      [v27 setServiceActionControlsDelegate_];

      sub_20CECBDB8(&qword_27C81AED0, &qword_27C81AED8);
      return v27;
    }

    v27 = [objc_allocWithZone(type metadata accessor for ContainedAccessoryElementsGridViewController()) initWithServiceContainingItem:v39 mediaItem:0 isPresentedModally:1 shouldGroupByRoom:0 valueSource:{objc_msgSend(v39, sel_valueSource)}];

    swift_unknownObjectRelease();
    v28 = [v39 accessoryRepresentableObject];
    swift_getObjectType();
    v29 = sub_20D5681E8();
    swift_unknownObjectRelease();
    if (v29)
    {
      [v39 accessoryRepresentableObject];
      swift_getObjectType();
      v30 = sub_20D568238();
      swift_unknownObjectRelease();

      if (!v30)
      {
        v36 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
        swift_beginAccess();
        *(v27 + v36) = 1;
        goto LABEL_31;
      }

      v26 = v30;
    }

    v31 = OBJC_IVAR___HUContainedAccessoryElementsGridViewController_showTilePrefixes;
    swift_beginAccess();
    *(v27 + v31) = 0;
LABEL_31:
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    sub_20CECEED0(&qword_27C81AEE0, type metadata accessor for ContainedAccessoryElementsGridViewController);
    return v27;
  }

  result = sub_20D568A58();
  __break(1u);
  return result;
}

id ActionGridItemModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionGridItemModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void HUServiceActionControlsViewController.contentSize.getter()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HUServiceActionControlsViewController.disableScrollingIfNeeded()()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setScrollEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void HUServiceActionControlsViewController.update(with:context:)()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v4 whiteColor];
  [v7 setTintColor_];

  sub_20CECF940(0, &qword_28111FB60);
  sub_20D567318();
  sub_20D567368();

  v9 = sub_20D568348();
  [v1 setOverrideCellColor_];
}

void sub_20CECBCC4()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
  }

  else
  {
    __break(1u);
  }
}

void sub_20CECBD2C()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 setScrollEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CECBDB8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_20CECF940(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20CECBF00(uint64_t a1, id *a2)
{
  result = sub_20D567818();
  *a2 = 0;
  return result;
}

uint64_t sub_20CECBF78(uint64_t a1, id *a2)
{
  v3 = sub_20D567828();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_20CECBFF8@<X0>(uint64_t *a1@<X8>)
{
  sub_20D567838();
  v2 = sub_20D5677F8();

  *a1 = v2;
  return result;
}

uint64_t sub_20CECC0F8()
{
  sub_20D568D48();
  swift_getWitnessTable();
  sub_20D5648D8();
  return sub_20D568D98();
}

uint64_t sub_20CECC15C()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

uint64_t sub_20CECC1A4()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

uint64_t sub_20CECC1F8(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_20CECC264(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_20CECC2D0(void *a1, uint64_t a2)
{
  v4 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_20CECC360(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_20CECC3DC()
{
  swift_getWitnessTable();

  return sub_20D5648C8();
}

uint64_t sub_20CECC458(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_20CECC4C4(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_20CECC530(void *a1, uint64_t a2)
{
  v4 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_20CECC5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_20CECC63C()
{
  sub_20D568D48();
  sub_20D5677C8();
  return sub_20D568D98();
}

uint64_t sub_20CECC69C()
{
  swift_getWitnessTable();

  return sub_20D5648C8();
}

uint64_t sub_20CECC708(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_28111FF80, type metadata accessor for HFItemResultKey);
  v3 = sub_20CECEED0(&qword_27C81ADD8, type metadata accessor for HFItemResultKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECC7C4(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81ADB0, type metadata accessor for HUDashboardSectionIdentifier);
  v3 = sub_20CECEED0(&unk_27C81ADB8, type metadata accessor for HUDashboardSectionIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECC880(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81ADA0, type metadata accessor for HUSharedVisualEffectIdentifier);
  v3 = sub_20CECEED0(&qword_27C81ADA8, type metadata accessor for HUSharedVisualEffectIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECC93C(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B0F0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_20CECC9A8(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B0F0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_20CECCA14(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_20CECCA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CECEED0(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_20CECCB04(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B130, type metadata accessor for HFHomeAppTabIdentifier);
  v3 = sub_20CECEED0(&qword_27C81B138, type metadata accessor for HFHomeAppTabIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCBC0(uint64_t a1)
{
  v2 = sub_20CECEED0(&unk_28111FF20, type metadata accessor for HFItemUpdateOption);
  v3 = sub_20CECEED0(&unk_28111FEF8, type metadata accessor for HFItemUpdateOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCC7C(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_28111FE70, type metadata accessor for Key);
  v3 = sub_20CECEED0(&unk_27C81ADC8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCD38(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B140, type metadata accessor for HUTileCellTappableArea);
  v3 = sub_20CECEED0(&qword_27C81B148, type metadata accessor for HUTileCellTappableArea);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCDF4(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81AD90, type metadata accessor for HUEventUIFlowStep);
  v3 = sub_20CECEED0(&qword_27C81AD98, type metadata accessor for HUEventUIFlowStep);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCEB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20D5677F8();

  *a1 = v2;
  return result;
}

uint64_t sub_20CECCEF8(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B150, type metadata accessor for HFItemProviderInvalidationReason);
  v3 = sub_20CECEED0(&qword_27C81B158, type metadata accessor for HFItemProviderInvalidationReason);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CECCFB4(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B180, type metadata accessor for HMError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_20CECD020(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B180, type metadata accessor for HMError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_20CECD08C(uint64_t a1)
{
  v2 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_20CECD0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CECEED0(&qword_27C81B1B0, type metadata accessor for HMError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_20CECD17C()
{
  v0 = sub_20D567838();
  v1 = MEMORY[0x20F31CE10](v0);

  return v1;
}

uint64_t sub_20CECD1B8()
{
  sub_20D567838();
  sub_20D5678C8();
}

uint64_t sub_20CECD20C()
{
  sub_20D567838();
  sub_20D568D48();
  sub_20D5678C8();
  v0 = sub_20D568D98();

  return v0;
}

uint64_t sub_20CECD280()
{
  v0 = sub_20D567838();
  v2 = v1;
  if (v0 == sub_20D567838() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20D568BF8();
  }

  return v5 & 1;
}

void sub_20CECD308(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AF88);
    sub_20CECBDB8(&unk_27C81AF90, &qword_27C81AF88);
    sub_20D567D58();
    v4 = v20[1];
    v5 = v20[2];
    v6 = v20[3];
    v7 = v20[4];
    v8 = v20[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));
    sub_20D5663C8();
    v7 = 0;
  }

  while ((v4 & 0x8000000000000000) != 0)
  {
    v17 = sub_20D568798();
    if (!v17 || (v19 = v17, sub_20CECF940(0, &qword_27C81AF88), swift_dynamicCast(), v16 = v20[0], v14 = v7, v15 = v8, !v20[0]))
    {
LABEL_22:
      sub_20CEC80DC();
      return;
    }

LABEL_18:
    v20[0] = v16;
    sub_20CECA148(a2, v20, &v19);
    if (v3)
    {

      sub_20CEC80DC();

      return;
    }

    if (v19)
    {
      MEMORY[0x20F31CEE0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20CECD5DC(void *a1)
{
  v3 = [a1 actionBuilders];
  if (v3)
  {
    v4 = v3;
    sub_20CECF940(0, &qword_27C81AE50);
    sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
    v5 = sub_20D567D08();

    v6 = [v1 module];
    v7 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v8 = v7[16];

    if (v8 == 1)
    {
      v44 = a1;
      v9 = [a1 actions];
      if (v9)
      {
        v10 = v9;
        sub_20CECF940(0, &qword_27C81AF88);
        sub_20CECBDB8(&unk_27C81AF90, &qword_27C81AF88);
        v11 = sub_20D567D08();
      }

      else
      {
        v11 = MEMORY[0x277D84FA0];
      }

      v12 = v1;
      sub_20CECD308(v11, v12);
      v14 = v13;

      v15 = sub_20CF2CBD0(v14, v5);

      v43 = v15;
      if ((v15 & 0xC000000000000001) != 0)
      {
        sub_20D5663C8();
        sub_20D568718();
        sub_20D567D58();
        v15 = v45[12];
        v16 = v45[13];
        v17 = v45[14];
        v18 = v45[15];
        v19 = v45[16];
      }

      else
      {
        v20 = -1 << *(v15 + 32);
        v16 = (v15 + 56);
        v17 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v15 + 56);
        sub_20D5663C8();
        v18 = 0;
      }

      v23 = (v17 + 64) >> 6;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v24 = v18;
        v25 = v19;
        v26 = v18;
        if (!v19)
        {
          break;
        }

LABEL_18:
        v27 = (v25 - 1) & v25;
        v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
LABEL_24:
          sub_20CEC80DC();
          v31 = &v12[OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v31 + 1);
            ObjectType = swift_getObjectType();
            v34 = [v12 module];
            sub_20CECF7A0(v34 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v45);

            (*(v32 + 8))(v12, v43, v45, ObjectType, v32);

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v45);
          }

          else
          {
          }

          v35 = [v12 module];
          v36 = [v35 itemUpdater];

          if (v36)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20D5BA040;
            *(inited + 32) = v44;
            v38 = v44;
            sub_20CEF302C(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            v39 = sub_20D5638E8();
            sub_20CECF940(0, &qword_281120AC0);
            sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
            v40 = sub_20D567CD8();

            v41 = [objc_opt_self() requestToUpdateItems:v40 senderSelector:v39];

            v42 = [v36 performItemUpdateRequest_];
            swift_unknownObjectRelease();
          }

          return;
        }

        while (1)
        {
          v30 = [v12 module];
          sub_20CECF7A0(v30 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v45);

          __swift_project_boxed_opaque_existential_1(v45, v45[3]);
          sub_20D565B88();

          __swift_destroy_boxed_opaque_existential_1(v45);
          v18 = v26;
          v19 = v27;
          if ((v15 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_20:
          v29 = sub_20D568798();
          if (v29)
          {
            v45[5] = v29;
            swift_dynamicCast();
            v28 = v45[0];
            v26 = v18;
            v27 = v19;
            if (v45[0])
            {
              continue;
            }
          }

          goto LABEL_24;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v23)
        {
          goto LABEL_24;
        }

        v25 = *&v16[8 * v26];
        ++v24;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_20CECDBF4(uint64_t a1)
{
  v98 = a1;
  v117[5] = *MEMORY[0x277D85DE8];
  v2 = [v1 module];
  v3 = [v2 allItems];

  v100 = 0;
  v4 = sub_20CECF940(0, &qword_281120AC0);
  v97 = sub_20CECBDB8(&qword_281120AB0, &qword_281120AC0);
  v5 = sub_20D567D08();

  if ((v5 & 0xC000000000000001) == 0)
  {
    v54 = *(v5 + 32);
    v111 = ((1 << v54) + 63) >> 6;
    if ((v54 & 0x3Fu) <= 0xD)
    {
      goto LABEL_54;
    }

    goto LABEL_84;
  }

  v7 = MEMORY[0x277D84FA0];
  v115[0] = MEMORY[0x277D84FA0];
  v8 = sub_20D568718();
  v9 = sub_20D568798();
  if (v9)
  {
    v102 = MEMORY[0x277D84FA0];
    v101 = v8;
    v103 = v4;
    while (1)
    {
      v114 = v9;
      swift_dynamicCast();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_5;
      }

      v11 = v10;
      v12 = v116;
      v13 = [v11 actionBuilders];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = sub_20CECF940(0, &qword_27C81AE50);
      sub_20CECBDB8(&qword_27C8217F0, &qword_27C81AE50);
      v16 = sub_20D567D08();

      v4 = v16 & 0xC000000000000001;
      v104 = v12;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFFF8;
        swift_unknownObjectRetain();
        sub_20D568718();
        sub_20D567D58();
        v5 = v117[1];
        v109 = v117[0];
        v18 = v117[2];
        v19 = v117[3];
        v20 = v117[4];
      }

      else
      {
        v21 = -1 << *(v16 + 32);
        v18 = ~v21;
        v5 = v16 + 56;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = (v23 & *(v16 + 56));
        v17 = v16 & 0xFFFFFFFFFFFFFF8;
        sub_20D5663C8();
        v19 = 0;
        v109 = v16;
      }

      v105 = v18;
      v24 = (v18 + 64) >> 6;
      if (v16 < 0)
      {
        v25 = v16;
      }

      else
      {
        v25 = v17;
      }

      v108 = v25;
      v112 = v16 + 56;
      v26 = v109;
      v106 = v16 & 0xC000000000000001;
      while (1)
      {
        while (1)
        {
          v29 = v20;
          v111 = v19;
          if ((v26 & 0x8000000000000000) != 0)
          {
            v33 = sub_20D568798();
            if (!v33)
            {
              goto LABEL_36;
            }

            v113 = v33;
            swift_dynamicCast();
            v32 = v114;
            v29 = v20;
          }

          else
          {
            v30 = v19;
            v31 = v20;
            if (!v20)
            {
              while (1)
              {
                v19 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  __break(1u);
                  goto LABEL_82;
                }

                if (v19 >= v24)
                {
                  break;
                }

                v31 = *(v5 + 8 * v19);
                ++v30;
                if (v31)
                {
                  goto LABEL_25;
                }
              }

LABEL_36:

              sub_20CEC80DC();

              goto LABEL_5;
            }

LABEL_25:
            v20 = ((v31 - 1) & v31);
            v32 = *(*(v26 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v31)))));
            if (!v32)
            {
              goto LABEL_36;
            }
          }

          v110 = v29;
          if (!v4)
          {
            break;
          }

          v27 = v32;
          v28 = sub_20D5687A8();

          if (v28)
          {
            v32 = v104;
            goto LABEL_39;
          }
        }

        v107 = v20;
        v34 = v15;
        if (*(v16 + 16))
        {
          v35 = sub_20D5683E8();
          v36 = -1 << *(v16 + 32);
          v37 = v35 & ~v36;
          if ((*(v112 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
          {
            break;
          }
        }

LABEL_35:

        v15 = v34;
        v4 = v106;
        v26 = v109;
        v20 = v107;
      }

      v38 = ~v36;
      while (1)
      {
        v39 = *(*(v16 + 48) + 8 * v37);
        v40 = sub_20D5683F8();

        if (v40)
        {
          break;
        }

        v37 = (v37 + 1) & v38;
        if (((*(v112 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      sub_20CEC80DC();

      v5 = v116;
      v41 = *(v102 + 16);
      if (*(v102 + 24) <= v41)
      {
        sub_20D0C041C(v41 + 1);
      }

      v42 = v115[0];
      v43 = sub_20D5683E8();
      v44 = v115[0] + 56;
      v45 = -1 << *(v115[0] + 32);
      v46 = v43 & ~v45;
      v47 = v46 >> 6;
      v4 = v103;
      if (((-1 << v46) & ~*(v115[0] + 56 + 8 * (v46 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v45) >> 6;
        while (++v47 != v50 || (v49 & 1) == 0)
        {
          v51 = v47 == v50;
          if (v47 == v50)
          {
            v47 = 0;
          }

          v49 |= v51;
          v52 = *(v44 + 8 * v47);
          if (v52 != -1)
          {
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
            goto LABEL_51;
          }
        }

        while (1)
        {
          __break(1u);
LABEL_84:
          sub_20D5663C8();
          if (!swift_stdlib_isStackAllocationSafe())
          {
            break;
          }

LABEL_54:
          v103 = v4;
          v110 = &v97;
          MEMORY[0x28223BE20](v6);
          v56 = &v97 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v56, v55);
          v112 = 0;
          v57 = 0;
          v4 = v5 + 56;
          v58 = 1 << *(v5 + 32);
          v59 = -1;
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          v60 = v59 & *(v5 + 56);
          v61 = (v58 + 63) >> 6;
          while (v60)
          {
            v62 = __clz(__rbit64(v60));
            v60 &= v60 - 1;
LABEL_64:
            v65 = v62 | (v57 << 6);
            v117[0] = *(*(v5 + 48) + 8 * v65);
            v66 = v117[0];
            v67 = v100;
            sub_20CECA8F0(v117);
            v100 = v67;
            if (v67)
            {

              result = swift_willThrow();
              __break(1u);
              return result;
            }

            v69 = v68;

            if (v69)
            {
              *&v56[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
              if (__OFADD__(v112++, 1))
              {
                __break(1u);
LABEL_69:
                v102 = sub_20D0C10F4(v56, v111, v112, v5);
                goto LABEL_73;
              }
            }
          }

          v63 = v57;
          v60 = v99;
          while (1)
          {
            v57 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              break;
            }

            if (v57 >= v61)
            {
              goto LABEL_69;
            }

            v64 = *(v4 + 8 * v57);
            ++v63;
            if (v64)
            {
              v62 = __clz(__rbit64(v64));
              v60 = (v64 - 1) & v64;
              goto LABEL_64;
            }
          }

LABEL_82:
          __break(1u);
        }

        v95 = swift_slowAlloc();
        v96 = v100;
        v102 = sub_20D0C1064(v95, v111, v5, sub_20CECA8F0);
        v100 = v96;

        MEMORY[0x20F31FC70](v95, -1, -1);
        goto LABEL_72;
      }

      v48 = __clz(__rbit64((-1 << v46) & ~*(v115[0] + 56 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_51:
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      *(*(v42 + 48) + 8 * v48) = v5;
      v53 = *(v42 + 16) + 1;
      v102 = v42;
      *(v42 + 16) = v53;
LABEL_6:
      v9 = sub_20D568798();
      if (!v9)
      {
        goto LABEL_71;
      }
    }

LABEL_5:
    goto LABEL_6;
  }

  v102 = v7;
LABEL_71:

LABEL_72:
  v60 = v99;
LABEL_73:
  v71 = [v60 module];
  v72 = [v71 itemUpdater];

  if (v72)
  {
    v73 = sub_20D5638E8();
    v74 = sub_20D567CD8();

    v75 = [objc_opt_self() requestToUpdateItems:v74 senderSelector:v73];

    v76 = [v72 performItemUpdateRequest_];
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v77 = v99;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    sub_20CECA328(v98);
    v81 = v80;
    v82 = v79;
    v83 = [v82 itemManager];
    sub_20CEF3050(v81);

    sub_20CECF940(0, &unk_27C81AE40);
    sub_20CECBDB8(&qword_27C81FC10, &unk_27C81AE40);
    v84 = sub_20D567CD8();

    v85 = [v83 _itemsToUpdateForModifiedCharacteristics_];

    v86 = sub_20D567D08();
    v87 = [v82 itemManager];

    sub_20D09AF38(v86);

    v88 = sub_20D567CD8();

    v89 = [v87 updateResultsForItems:v88 senderSelector:sub_20D5638E8()];

    v77 = v99;
  }

  v90 = &v77[OBJC_IVAR____TtC6HomeUI30ActionGridItemModuleController_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v92 = *(v90 + 1);
    ObjectType = swift_getObjectType();
    v94 = [v77 module];
    sub_20CECF7A0(v94 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer, v115);

    (*(v92 + 8))(v77, v98, v115, ObjectType, v92);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  return result;
}

void *sub_20CECE828(void *a1)
{
  v3 = [v1 module];
  v4 = &v3[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v5 = *(v4 + 4);

  if ((v5 & 2) == 0)
  {
    [a1 setSectionLeadingMargin_];
  }

  v6 = [v1 module];
  v7 = &v6[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v8 = *(v7 + 4);

  if ((v8 & 8) == 0)
  {
    [a1 setSectionTrailingMargin_];
  }

  v9 = [v1 module];
  v10 = &v9[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v11 = *(v10 + 4);

  if ((v11 & 1) == 0)
  {
    [a1 setSectionTopMargin_];
  }

  v12 = [v1 module];
  v13 = &v12[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  swift_beginAccess();
  v14 = *(v13 + 4);

  if ((v14 & 4) == 0)
  {
    [a1 setSectionBottomMargin_];
  }

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CECEDC8(uint64_t a1, int a2)
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

uint64_t sub_20CECEDE8(uint64_t result, int a2, int a3)
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

uint64_t sub_20CECEED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CECF6B0()
{
  v1 = [v0 module];
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v3 = [Strong hf_currentUserIsAdministrator], Strong, (v3 & 1) != 0) || (result = objc_msgSend(objc_opt_self(), sel_isShortcuts), result))
  {
    v5 = [v0 module];
    v6 = &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    LODWORD(v6) = v6[16];

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CECF7A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
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

unint64_t sub_20CECF894()
{
  result = qword_27C81AF78;
  if (!qword_27C81AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81AF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81AF78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20CECF940(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_20CED014C()
{
  result = qword_27C81CE30;
  if (!qword_27C81CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CE30);
  }

  return result;
}

uint64_t sub_20CED0230(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_20CED03F8(uint64_t a1, unint64_t *a2)
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

id sub_20CED05D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_20D564FB8();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20D565038();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20D564FA8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v52 = &v42[-v9];
  v10 = sub_20D564F48();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v50 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v51 = &v42[-v13];
  v14 = sub_20D564F98();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42[-v19];
  MEMORY[0x28223BE20](v18);
  v21 = sub_20D565068();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v48 = &v42[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v47 = &v42[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = &v42[-v27];
  if ([a1 horizontalSizeClass] == 1 || HUIsPhoneIdiom())
  {
    sub_20D565048();
    v29 = 1;
  }

  else
  {
    sub_20D564FE8();
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = [v30 isHomeApp];
  v32 = MEMORY[0x277D14E88];
  if (v31)
  {
    v45 = v21;
    v46 = v17;
    v44 = v20;
    v43 = v29;
    if (v29)
    {
      sub_20D564F58();
    }

    else
    {
      sub_20D564F88();
    }

    (*(v53 + 104))(v51, *MEMORY[0x277D14E68], v54);
    (*(v56 + 104))(v52, *v32, v57);
    sub_20D565028();
    (*(v58 + 104))(v55, *MEMORY[0x277D14EA8], v59);
    sub_20D564FC8();
    v33 = v60;
    v21 = v45;
    (*(v22 + 8))(v60, v45);
    (*(v22 + 32))(v33, v28, v21);
    v29 = v43;
  }

  v34 = [v30 isSpringBoard];
  v35 = MEMORY[0x277D14E70];
  if (v34)
  {
    (*(v53 + 104))(v50, *MEMORY[0x277D14E70], v54);
    (*(v56 + 104))(v49, *v32, v57);
    if (v29)
    {
      v36 = v32;
      sub_20D564F58();
    }

    else
    {
      v36 = v32;
      sub_20D564F88();
    }

    sub_20D565018();
    (*(v58 + 104))(v55, *MEMORY[0x277D14EA0], v59);
    v37 = v47;
    sub_20D564FC8();
    v38 = v60;
    (*(v22 + 8))(v60, v21);
    (*(v22 + 32))(v38, v37, v21);
    v32 = v36;
    v35 = MEMORY[0x277D14E70];
  }

  result = [v30 isHomeControlService];
  if (result)
  {
    (*(v53 + 104))(v51, *v35, v54);
    (*(v56 + 104))(v52, *v32, v57);
    sub_20D564F58();
    sub_20D565018();
    (*(v58 + 104))(v55, *MEMORY[0x277D14E90], v59);
    v40 = v48;
    sub_20D564FC8();
    v41 = v60;
    (*(v22 + 8))(v60, v21);
    return (*(v22 + 32))(v41, v40, v21);
  }

  return result;
}

uint64_t sub_20CED0CD8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
      sub_20D5663C8();
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

uint64_t sub_20CED0D84(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x20F31DD20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_20D568768();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t (*sub_20CED0EDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HUServiceGroupEditorViewController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED4524;
}

id sub_20CED0F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_20CED1098()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20CED10F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HUServiceGroupEditorViewController_serviceGroupEditorDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED118C;
}

void sub_20CED1190(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_20CED1210()
{
  v1 = OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager;
  v2 = *(v0 + OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ServiceGroupEditorViewController.__allocating_init(serviceGroupBuilder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = &v4[OBJC_IVAR___HUServiceGroupEditorViewController_editingName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager] = 0;
  v6 = objc_allocWithZone(type metadata accessor for ServiceGroupEditorItemManager());
  v7 = a1;
  v8 = sub_20D11DE68(v7);
  v12.receiver = v4;
  v12.super_class = v2;
  v9 = objc_msgSendSuper2(&v12, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  v10 = sub_20CED1210();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v9;
}

id ServiceGroupEditorViewController.init(serviceGroupBuilder:)(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR___HUServiceGroupEditorViewController_editingName];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager] = 0;
  v5 = objc_allocWithZone(type metadata accessor for ServiceGroupEditorItemManager());
  v6 = a1;
  v7 = sub_20D11DE68(v6);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ServiceGroupEditorViewController();
  v8 = objc_msgSendSuper2(&v11, sel_initUsingCompositionalLayoutWithItemManager_, v7);
  v9 = sub_20CED1210();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v8;
}

void sub_20CED1564()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ServiceGroupEditorViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  swift_dynamicCastClassUnconditional();

  v2 = sub_20D5677F8();

  v3 = HULocalizedString(v2);

  if (!v3)
  {
    sub_20D567838();
    v3 = sub_20D5677F8();
  }

  [v0 setTitle_];

  sub_20CED3484();
  v4 = [v0 navigationItem];
  v5 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v6 = v0;
  v7 = [v5 initWithBarButtonSystemItem:1 target:v6 action:sel_cancelWithSender_];
  [v4 setLeftBarButtonItem_];

  v8 = [v6 navigationItem];
  v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v6 action:sel_doneWithSender_];

  [v8 setRightBarButtonItem_];
  sub_20CED18F4();
}

void sub_20CED17C0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ServiceGroupEditorViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
  v5 = v4;

  if (v4)
  {
    v6 = [v1 textFieldForVisibleItem_];
    if (v6)
    {
      v7 = v6;
      [v6 becomeFirstResponder];
    }
  }
}

void sub_20CED18F4()
{
  if (*&v0[OBJC_IVAR___HUServiceGroupEditorViewController_editingName + 8])
  {
    v1 = objc_opt_self();
    sub_20D5663C8();
    v2 = sub_20D5677F8();

    v3 = [v1 sanitizeUserEnteredHomeKitName_];
  }

  else
  {
    v4 = [v0 itemManager];
    type metadata accessor for ServiceGroupEditorItemManager();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v2 = *(v5 + 16);

    v3 = [v2 name];
  }

  v6 = v3;

  v7 = sub_20D567838();
  v9 = v8;

  v10 = [v0 navigationItem];
  v11 = [v10 rightBarButtonItem];

  if (v11)
  {
    v12 = [v0 itemManager];
    type metadata accessor for ServiceGroupEditorItemManager();
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v14 = *(v13 + 16);

    v15 = [v14 services];
    sub_20CECF940(0, &qword_27C81AEC0);
    v16 = sub_20D567A78();

    if (v16 >> 62)
    {
      v17 = sub_20D568768();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17 < 2)
    {
      v19 = 0;
    }

    else
    {
      v18 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v18 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v19 = v18 != 0;
    }

    [v11 setEnabled_];
  }

  else
  {
  }
}

void sub_20CED1BA4(uint64_t a1)
{
  v3 = [v1 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_20CED330C(v1);
  v6 = sub_20D5677F8();

  [v5 setName_];

  sub_20CED3484();
  v7 = [v1 navigationItem];
  v8 = [v7 rightBarButtonItem];

  v9 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v10 = [v1 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v10 setRightBarButtonItem_];

  [v9 startAnimating];
  v12 = [v1 itemManager];
  v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_creatingNew);

  v14 = [v1 itemManager];
  v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v16 = *(v15 + 16);

  v17 = [v16 commitItem];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v13;
  v36 = sub_20CED43D8;
  v37 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_20D0478B8;
  v35 = &block_descriptor;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 addSuccessBlock_];
  _Block_release(v20);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CED43FC(a1, v31);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_20CEC80B0(v31, (v23 + 24));
  v36 = sub_20CED4458;
  v37 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_20D0261C0;
  v35 = &block_descriptor_22;
  v24 = _Block_copy(&aBlock);

  v25 = [v17 addFailureBlock_];
  _Block_release(v24);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v8;
  v36 = sub_20CED4464;
  v37 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_20D0EB4F0;
  v35 = &block_descriptor_29;
  v28 = _Block_copy(&aBlock);
  v29 = v8;

  v30 = [v17 addCompletionBlock_];
  _Block_release(v28);
}

void sub_20CED20A8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong itemManager];
    type metadata accessor for ServiceGroupEditorItemManager();
    v7 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v8 = *(v7 + 16);

    v9 = [v8 serviceGroup];
    if (v9)
    {
      if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        [v10 serviceGroupEditor:v5 didCreateServiceGroup:v9];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = [v11 finishPresentation:v5 animated:1];
      swift_unknownObjectRelease();
    }
  }
}

void sub_20CED2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [objc_opt_self() sharedHandler];
  v6 = sub_20D5635C8();
  if (Strong)
  {
    sub_20CED43FC(a3, v11);
    v7 = swift_allocObject();
    *(v7 + 16) = Strong;
    sub_20CEC80B0(v11, (v7 + 24));
    aBlock[4] = sub_20CED446C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CFFFE8C;
    aBlock[3] = &block_descriptor_35;
    v8 = _Block_copy(aBlock);
    v9 = Strong;

    [v5 handleError:v6 retryBlock:v8 cancelBlock:0];
    _Block_release(v8);
  }

  else
  {
    [v5 handleError_];
  }
}

void sub_20CED23CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationItem];

    [v7 setRightBarButtonItem_];
  }
}

id sub_20CED257C(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  if (v6)
  {
    v7 = sub_20D567838();
    v9 = v8;

    result = sub_20CED1210();
    if (v9)
    {
      v11 = result;
      v14[0] = 0;
      v14[1] = 0;
      v15 = 2;
      sub_20CEFA3C8(v7, v9, v14, a2);
      v13 = v12;

      return v13;
    }
  }

  else
  {
    result = sub_20CED1210();
  }

  __break(1u);
  return result;
}

uint64_t sub_20CED26C8(void *a1)
{
  v2 = v1;
  v4 = [v1 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
  v6 = v5;

  if (v5)
  {
    sub_20CECF940(0, &qword_281120AC0);
    v7 = a1;
    v8 = sub_20D5683F8();

    if (v8)
    {
      return type metadata accessor for EditableTextIconCell();
    }
  }

  v10 = sub_20D563868();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ServiceGroupEditorViewController();
  objc_msgSendSuper2(&v11, sel_cellClassForItem_indexPath_, a1, v10);

  return swift_getObjCClassMetadata();
}

uint64_t sub_20CED2F1C()
{
  v1 = [v0 itemManager];
  v2 = [v0 itemManager];
  v3 = sub_20D5677F8();
  v4 = [v2 sectionIndexForDisplayedSectionIdentifier_];

  v5 = [v1 displayedItemsInSection_];
  sub_20CECF940(0, &qword_281120AC0);
  v6 = sub_20D567A78();

  return v6;
}

BOOL sub_20CED3114()
{
  v1 = [v0 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
  v3 = v2;

  result = 1;
  if (v2)
  {
    v4 = [v0 itemManager];
    v5 = sub_20D5677F8();
    v6 = [v4 displayedItemsInSectionWithIdentifier_];

    sub_20CECF940(0, &qword_281120AC0);
    v7 = sub_20D567A78();

    v11 = v3;
    MEMORY[0x28223BE20](v8);
    v10[2] = &v11;
    LOBYTE(v6) = sub_20CED0D84(sub_20CED40E4, v10, v7);

    if (v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CED330C(char *a1)
{
  if (!*&a1[OBJC_IVAR___HUServiceGroupEditorViewController_editingName + 8])
  {
    goto LABEL_6;
  }

  v1 = a1;
  v2 = objc_opt_self();
  sub_20D5663C8();
  v3 = sub_20D5677F8();

  v4 = [v2 sanitizeUserEnteredHomeKitName_];

  v5 = sub_20D567838();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    a1 = v1;
LABEL_6:
    v9 = [a1 itemManager];
    type metadata accessor for ServiceGroupEditorItemManager();
    v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v11 = *(v10 + 16);

    v12 = [v11 name];
    v5 = sub_20D567838();
  }

  return v5;
}

void sub_20CED3484()
{
  v1 = [v0 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = [v3 name];
  v5 = sub_20D567838();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [v0 itemManager];
    v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
    swift_beginAccess();
    v11 = *(v10 + 16);

    v12 = [v11 name];
    v13 = sub_20D567838();
    v15 = v14;

    v16 = [v0 navigationItem];
    v17 = sub_20D5677F8();
    v18 = HULocalizedString(v17);

    sub_20D567838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20D5BC410;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_20CED4498();
    *(v19 + 32) = v13;
    *(v19 + 40) = v15;
    sub_20D567808();
  }

  else
  {
    v16 = [v0 navigationItem];
    v21 = sub_20D5677F8();
    v20 = HULocalizedString(v21);

    if (v20)
    {
      goto LABEL_7;
    }

    sub_20D567838();
  }

  v20 = sub_20D5677F8();

LABEL_7:
  [v16 setPrompt_];
}

id ServiceGroupEditorViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ServiceGroupEditorViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id ServiceGroupEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceGroupEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s6HomeUI32ServiceGroupEditorViewControllerC014forCreatingNewcD04with2inACXDSaySo9HMServiceCG_So6HMHomeCtFZ_0(unint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D14AA8]) initWithHome_];
  v4 = result;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = type metadata accessor for ServiceGroupEditorViewController();
    v10 = objc_allocWithZone(v9);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v11 = &v10[OBJC_IVAR___HUServiceGroupEditorViewController_editingName];
    *v11 = 0;
    *(v11 + 1) = 0;
    *&v10[OBJC_IVAR___HUServiceGroupEditorViewController____lazy_storage___collectionLayoutManager] = 0;
    v12 = objc_allocWithZone(type metadata accessor for ServiceGroupEditorItemManager());
    v13 = v4;
    v14 = sub_20D11DE68(v13);
    v17.receiver = v10;
    v17.super_class = v9;
    v15 = objc_msgSendSuper2(&v17, sel_initUsingCompositionalLayoutWithItemManager_, v14);
    v16 = sub_20CED1210();

    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    return v15;
  }

  result = sub_20D568768();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F31DD20](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      [v4 addService_];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CED3BE0(void *a1)
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for AccessoryListModuleController();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v13.receiver = v5;
    v13.super_class = v4;
    v6 = objc_msgSendSuper2(&v13, sel_initWithModule_, v3);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v7 = [v6 asGeneric];

    return v7;
  }

  else
  {
    sub_20D568858();

    v9 = [a1 description];
    v10 = sub_20D567838();
    v12 = v11;

    MEMORY[0x20F31CDB0](v10, v12);

    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

void sub_20CED3DA4(void *a1)
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_20D567838();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = &v1[OBJC_IVAR___HUServiceGroupEditorViewController_editingName];
  *v8 = v5;
  v8[1] = v7;

  v9 = [v1 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v11 = *(v10 + 16);

  sub_20CED330C(v1);
  v12 = sub_20D5677F8();

  [v11 setName_];

  sub_20CED3484();
  *v8 = 0;
  v8[1] = 0;

  sub_20CED18F4();
  v13 = [v1 itemManager];
  v14 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_selectionController);
  swift_beginAccess();
  v15 = *(v14 + 16);

  v16 = [v15 name];
  if (!v16)
  {
    sub_20D567838();
    v16 = sub_20D5677F8();
  }

  [a1 setText_];
}

uint64_t sub_20CED3FAC()
{
  v1 = v0;
  v2 = [v0 itemManager];
  v3 = sub_20D563868();
  v4 = [v2 displayedItemAtIndexPath_];

  v5 = [v1 itemManager];
  type metadata accessor for ServiceGroupEditorItemManager();
  v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC6HomeUI29ServiceGroupEditorItemManager_nameAndIconItem);
  v7 = v6;

  if (!v4)
  {
    if (!v6)
    {
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_7;
  }

  if (!v6)
  {

LABEL_7:
    v9 = 1;
    return v9 & 1;
  }

  sub_20CECF940(0, &qword_281120AC0);
  v8 = sub_20D5683F8();

  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CED43FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_20CED4498()
{
  result = qword_27C81BD80;
  if (!qword_27C81BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81BD80);
  }

  return result;
}

uint64_t sub_20CED4528(uint64_t a1)
{
  result = MEMORY[0x20F31D1D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    sub_20D5663C8();
    sub_20CEE9D8C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CED4644(uint64_t a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_20CEF5EB0(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x20F31D1D0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_20CEE9EDC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id UtilityOnboardingContext.init(home:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__previousState] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__currentState] = 0;
  v3 = &v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogo] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage] = 0;
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__availableUtilities] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__allUtilities] = v4;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__subscriptionService] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__accountDetails] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses] = sub_20CEF3A4C(v4);
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__validFields] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod] = 0;
  v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__otpFactors] = v4;
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__selectedOTPMethod] = 0;
  v5 = &v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__authCode];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__accessToken];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__refreshToken];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  v9 = sub_20D5637A8();
  v10 = *(*(v9 - 8) + 56);
  v10(&v1[v8], 1, 1, v9);
  v10(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tokens] = sub_20CEF3B60(v4);
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__serviceLocations] = v4;
  v11 = &v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__selectedServiceLocation];
  *v11 = 0;
  v11[1] = 0;
  sub_20D563938();
  *&v1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext_home] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for UtilityOnboardingContext();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_20CED4B64(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_20D568BF8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;

    return sub_20CEDC118(MEMORY[0x277D85B58], &unk_20D5BC550, &OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID, "Setting utility id %s");
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5638F8();
}

void sub_20CED4D04(void *a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UtilityConfigurationHelper();
  v5 = v4;
  v6 = a1;
  v7 = sub_20D5683F8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_20CED6D64();
}

void sub_20CED4EA4(void *a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_20CECF940(0, &unk_28111FB50);
  v5 = v4;
  v6 = a1;
  v7 = sub_20D5683F8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_20CED7408();
}

void sub_20CED5054(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage;
  v5 = *(v1 + OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityLogoImage);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_20CECF940(0, &unk_27C81BFD0);
  v6 = v5;
  v7 = a1;
  v8 = sub_20D5683F8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_20CED52FC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = sub_20D5663C8();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();
  }
}

uint64_t sub_20CED5474(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20CED5584(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();
  }

  return result;
}

void sub_20CED570C(void *a1, uint64_t *a2, void (*a3)(void))
{
  v5 = v3;
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v9 = v8;
  v10 = a1;
  v11 = sub_20D5683F8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

uint64_t sub_20CED5910(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v12 = (v6 + *a3);
  swift_beginAccess();
  v13 = v12[1];
  if (v13)
  {
    if (a2)
    {
      v14 = *v12 == a1 && v13 == a2;
      if (v14 || (sub_20D568BF8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v12 = a1;
    v12[1] = a2;

    return sub_20CEDC118(MEMORY[0x277D85B40], a4, a3, a6);
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5638F8();
}

uint64_t sub_20CED5AAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__expirationDate;
  swift_beginAccess();
  sub_20CEF9178(v1 + v6, v5, &unk_27C8207C0);
  v7 = sub_20CEF4010(v5, a1);
  sub_20CEF928C(v5, &unk_27C8207C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    sub_20D5638F8();
  }

  else
  {
    sub_20CEF9178(a1, v5, &unk_27C8207C0);
    swift_beginAccess();
    sub_20CEF4330(v5, v1 + v6);
    swift_endAccess();
    sub_20CEDC60C();
    sub_20CEF928C(v5, &unk_27C8207C0);
  }

  return sub_20CEF928C(a1, &unk_27C8207C0);
}

uint64_t sub_20CED5D00()
{
  swift_getKeyPath();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5638F8();
}

uint64_t sub_20CED5DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_20D568BF8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D5638F8();
}

void (*sub_20CED6134(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CEF5EB0(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D563928();

  v4[7] = sub_20CED601C();
  return sub_20CED626C;
}