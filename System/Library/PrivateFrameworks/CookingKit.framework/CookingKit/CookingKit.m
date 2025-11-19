unint64_t Assembly.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_21A176C98(&qword_27CCFF7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21A2FCD00;
  *(v2 + 56) = &type metadata for MiscAssembly;
  *(v2 + 64) = sub_21A139810();
  *(v2 + 96) = &type metadata for NowCookingAssembly;
  *(v2 + 104) = sub_21A139864();
  *(v2 + 136) = &type metadata for RecipeProcessingAssembly;
  *(v2 + 144) = sub_21A1398B8();
  *(v2 + 176) = &type metadata for RecipesAssembly;
  *(v2 + 184) = sub_21A13990C();
  *(v2 + 216) = &type metadata for TimersAssembly;
  result = sub_21A139960();
  *(v2 + 224) = result;
  *a1 = v2;
  return result;
}

unint64_t sub_21A139810()
{
  result = qword_2811B7BA0;
  if (!qword_2811B7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7BA0);
  }

  return result;
}

unint64_t sub_21A139864()
{
  result = qword_2811B8AF0;
  if (!qword_2811B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B8AF0);
  }

  return result;
}

unint64_t sub_21A1398B8()
{
  result = qword_2811B5890;
  if (!qword_2811B5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B5890);
  }

  return result;
}

unint64_t sub_21A13990C()
{
  result = qword_2811B7750;
  if (!qword_2811B7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7750);
  }

  return result;
}

unint64_t sub_21A139960()
{
  result = qword_2811B77F8;
  if (!qword_2811B77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B77F8);
  }

  return result;
}

uint64_t sub_21A1399D4(uint64_t a1)
{
  v2 = sub_21A2F5304();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CD017F8);
  sub_21A2F52D4();

  (*(v3 + 104))(v5, *MEMORY[0x277D6CF10], v2);
  sub_21A2F5114();

  (*(v3 + 8))(v5, v2);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CD01800);
  sub_21A2F52D4();

  sub_21A2F7C34();
  return sub_21A139BC4(sub_21A139D5C, a1);
}

uint64_t sub_21A139BC4(uint64_t a1, uint64_t a2)
{
  sub_21A2F7C24();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21A139D78();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21A2F7FF4();
    MEMORY[0x21CED6480](0xD00000000000003FLL, 0x800000021A3194A0);
    v8 = sub_21A2F8584();
    MEMORY[0x21CED6480](v8);

    MEMORY[0x21CED6480](46, 0xE100000000000000);
    result = sub_21A2F8154();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for OfflineStatusSource()
{
  result = qword_2811B6C30;
  if (!qword_2811B6C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A139DEC()
{
  result = sub_21A2F7614();
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

uint64_t type metadata accessor for IdleTimerCommandHandler()
{
  result = qword_2811B5C28;
  if (!qword_2811B5C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A139EDC()
{
  result = sub_21A2F7614();
  if (v1 <= 0x3F)
  {
    result = sub_21A139F60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21A139F60()
{
  result = qword_2811B66A0[0];
  if (!qword_2811B66A0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B66A0);
  }

  return result;
}

uint64_t sub_21A13A050()
{
  sub_21A2F5214();
  type metadata accessor for ImportedRecipesSource();
  sub_21A2F52C4();
}

uint64_t type metadata accessor for ImportedRecipesSource()
{
  result = qword_2811B6268;
  if (!qword_2811B6268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A13A108()
{
  result = sub_21A2F7614();
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

uint64_t sub_21A13A1B4()
{
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEC08);
  sub_21A2F52D4();

  sub_21A2F5224();
  type metadata accessor for ProcessingPipeline();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for LanguageProcessingStep();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for RecipeSourceProcessingStep();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for TimerProcessingStep();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for StepSubdivisionProcessingStep();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for HeroImageColorAnalysisStep();
  sub_21A2F52C4();

  sub_21A2F5224();
  type metadata accessor for IngredientAmountParsingStep();
  sub_21A2F52C4();
}

uint64_t sub_21A13A498()
{
  sub_21A2F5214();
  type metadata accessor for OfflineStatusSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for IdleTimerCommandHandler();
  sub_21A2F52D4();
}

void sub_21A13A5C8()
{
  sub_21A13BBD0(319, &qword_2811B3D38, &qword_27CCFECC0);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D20, &qword_27CCFE9B0);
    if (v1 <= 0x3F)
    {
      sub_21A13CB1C();
      if (v2 <= 0x3F)
      {
        sub_21A2F7614();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for Recipe()
{
  result = qword_2811B3FE0;
  if (!qword_2811B3FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13A784(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13A7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21A13A83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21A13A8D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13A928(uint64_t a1, unint64_t *a2)
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

void sub_21A13A974()
{
  if (!qword_2811B8008)
  {
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B8008);
    }
  }
}

void sub_21A13A9D8()
{
  sub_21A2F4794();
  if (v0 <= 0x3F)
  {
    sub_21A13A974();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A13AAA0(uint64_t a1)
{
  v2 = sub_21A2F5304();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEA88);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeManager();
  sub_21A2F52C4();

  v7 = *MEMORY[0x277D6CF10];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  sub_21A2F5114();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEA90);
  sub_21A2F52D4();

  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEA98);
  sub_21A2F52D4();

  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAA0);
  sub_21A2F52D4();

  v8(v6, v7, v2);
  sub_21A2F5114();

  v9(v6, v2);
  sub_21A2F5214();
  sub_21A2F52B4();

  sub_21A2F7C34();
  return sub_21A139BC4(sub_21A179A70, a1);
}

uint64_t sub_21A13AE2C()
{
  v0 = sub_21A2F5304();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAA8);
  sub_21A2F52D4();

  v5 = *MEMORY[0x277D6CF10];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_21A2F5114();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_21A2F5214();
  type metadata accessor for InternalRecipeSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for RecipeCardViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeCardQuickLinksViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeSourceViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeThemeSource();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeImagesSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for ShareableRecipeSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeImageViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for IngredientsViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for InstructionsViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for InstructionSubStepViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for UserInteractionEventHandler();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for TimerUserInteractionEventHandler();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for RecipeCardViewEventHandler();
  sub_21A2F52C4();

  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAB0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for CookingModeViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for CookingSessionsSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for SelectedIngredientsSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for CookingSessionEventHandler();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for SelectedIngredientsEventHandler();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for CookingSessionSource();
  sub_21A2F52D4();

  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAB8);
  sub_21A2F52D4();

  v6(v4, v5, v0);
  sub_21A2F5114();

  v7(v4, v0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAC0);
  sub_21A2F52D4();

  v6(v4, v5, v0);
  sub_21A2F5114();

  v7(v4, v0);
  sub_21A2F5214();
  type metadata accessor for CookingSessionsObservationRule();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for SelectedIngredientsObservationRule();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for CookingSessionsPersistenceCommandHandler();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeCardHostContentViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for RecipeAdViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for EndOfRecipeViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for FirstReferencedIngredientsSource();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for HorizontalParallaxModelSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for HorizontalParallaxOffsetSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for CookingModeTipStateSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for IsPrimaryRecipeSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for RecipeCardViewSessionIDSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for IsFocusableSource();
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for GroceriesLabelViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for GroceriesButtonViewModelSource(0);
  sub_21A2F52D4();

  sub_21A2F5214();
  type metadata accessor for ExportToGroceryListTipStateSource(0);
  sub_21A2F52D4();
}

uint64_t type metadata accessor for InternalRecipeSource()
{
  result = qword_2811B6548;
  if (!qword_2811B6548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13BBD0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_21A176D98(a3);
    v4 = sub_21A2F75A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13BC34()
{
  sub_21A13A7D8(319, qword_2811B7FC8, type metadata accessor for ImageAsset, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A13C130(319, &qword_2811B3C58, &qword_27CD03AA8);
    if (v1 <= 0x3F)
    {
      sub_21A13C130(319, &qword_2811B3C38, &qword_27CD03AB8);
      if (v2 <= 0x3F)
      {
        sub_21A13C704(319, qword_2811B7758, &type metadata for RecipePublisher, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21A13A7D8(319, qword_2811B7530, type metadata accessor for RecipeSourceType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21A13A7D8(319, qword_2811B3E48, type metadata accessor for Duration, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21A13C130(319, &qword_2811B3C28, &qword_27CD03AE0);
              if (v6 <= 0x3F)
              {
                sub_21A13C704(319, &qword_2811B3C50, &type metadata for Ingredient, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_21A13A7D8(319, &qword_2811B3C40, type metadata accessor for StepSection, MEMORY[0x277D83940]);
                  if (v8 <= 0x3F)
                  {
                    sub_21A13C704(319, &qword_2811B3C60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21A13BF28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A13BF80()
{
  result = type metadata accessor for ExternalImageAsset(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebImageAsset(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LocalImageAsset(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_21A13C008()
{
  sub_21A2F4794();
  if (v0 <= 0x3F)
  {
    sub_21A13A8D4(319, &qword_2811B3BD8, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      sub_21A13A974();
      if (v2 <= 0x3F)
      {
        sub_21A13A8D4(319, &qword_2811B3BE8, type metadata accessor for CGRect);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A13C130(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_21A176D98(a3);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21A13C194()
{
  result = type metadata accessor for WebRecipeSource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExternalRecipeSource();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A13C208()
{
  sub_21A13C2A4();
  if (v0 <= 0x3F)
  {
    sub_21A13C2F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A13C2A4()
{
  if (!qword_2811B3C60)
  {
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C60);
    }
  }
}

void sub_21A13C2F4()
{
  if (!qword_2811B7FC8[0])
  {
    type metadata accessor for ImageAsset(255);
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, qword_2811B7FC8);
    }
  }
}

void sub_21A13C34C()
{
  sub_21A2F5294();
  if (v0 <= 0x3F)
  {
    sub_21A13C3C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A13C3C0()
{
  if (!qword_2811B3C70)
  {
    sub_21A2F5294();
    sub_21A13C454(&qword_2811B3DB0, MEMORY[0x277D6CBB8]);
    v0 = sub_21A2F7864();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C70);
    }
  }
}

uint64_t sub_21A13C454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StepSection()
{
  result = qword_2811B7CC0;
  if (!qword_2811B7CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13C4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for Step()
{
  result = qword_2811B4098;
  if (!qword_2811B4098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13C598()
{
  sub_21A13CA24();
  if (v0 <= 0x3F)
  {
    sub_21A13C654(319, &qword_2811B3C50);
    if (v1 <= 0x3F)
    {
      sub_21A13C654(319, &qword_2811B3C20);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A13C654(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A2F7BC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A13C6A0()
{
  if (!qword_2811B3C48)
  {
    sub_21A176D98(&qword_27CD02400);
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C48);
    }
  }
}

void sub_21A13C704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for RecipeSourceType()
{
  result = qword_2811B7560;
  if (!qword_2811B7560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WebRecipeSource()
{
  result = qword_2811B76A0;
  if (!qword_2811B76A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A13C7EC()
{
  result = sub_21A2F4794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ExternalRecipeSource()
{
  result = qword_2811B6738;
  if (!qword_2811B6738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Duration()
{
  result = qword_2811B3E78;
  if (!qword_2811B3E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13C910()
{
  sub_21A13C2A4();
  if (v0 <= 0x3F)
  {
    sub_21A13C4E8(319, qword_2811B3E48, type metadata accessor for Duration, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21A13C4E8(319, &qword_2811B3C30, type metadata accessor for Step, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_21A13C6A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A13CA24()
{
  if (!qword_2811B3E48[0])
  {
    type metadata accessor for Duration();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, qword_2811B3E48);
    }
  }
}

uint64_t sub_21A13CAD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_21A13CB1C()
{
  if (!qword_2811B3F70)
  {
    type metadata accessor for Recipe();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3F70);
    }
  }
}

void sub_21A13CB94()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13D294(319, &qword_2811B3D30, &qword_27CCFF058, &unk_21A2FC890, MEMORY[0x277D6C620]);
    if (v1 <= 0x3F)
    {
      sub_21A13A83C(319, &qword_2811B3D90, type metadata accessor for RecipeTheme, MEMORY[0x277D6C620]);
      if (v2 <= 0x3F)
      {
        sub_21A13D294(319, &qword_2811B3DA8, &qword_27CCFEB38, &unk_21A2FB5C0, MEMORY[0x277D6C620]);
        if (v3 <= 0x3F)
        {
          sub_21A13D4CC(319, &qword_2811B3D58);
          if (v4 <= 0x3F)
          {
            sub_21A13D4CC(319, &qword_2811B3CF0);
            if (v5 <= 0x3F)
            {
              sub_21A13D294(319, &qword_2811B3D60, &qword_27CCFEAD8, &unk_21A311040, MEMORY[0x277D6C620]);
              if (v6 <= 0x3F)
              {
                sub_21A13D528();
                if (v7 <= 0x3F)
                {
                  sub_21A13D294(319, &qword_2811B4718, &qword_27CCFFA58, &unk_21A2FD730, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_21A2F7614();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21A13CDF8()
{
  sub_21A2F59E4();
  if (v0 <= 0x3F)
  {
    sub_21A13A83C(319, qword_2811B7FC8, type metadata accessor for ImageAsset, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RecipeTheme();
      if (v2 <= 0x3F)
      {
        sub_21A13A83C(319, &qword_2811B8CC8, MEMORY[0x277CB9F28], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21A2F7614();
          if (v4 <= 0x3F)
          {
            sub_21A2F50D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for RecipeTheme()
{
  result = qword_2811B7E10;
  if (!qword_2811B7E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13D0F8()
{
  sub_21A13D16C();
  if (v0 <= 0x3F)
  {
    sub_21A13D20C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A13D16C()
{
  if (!qword_2811B3BB0)
  {
    sub_21A176D98(&qword_27CD02498);
    sub_21A176D98(&qword_27CD024A0);
    type metadata accessor for ImageAsset(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2811B3BB0);
    }
  }
}

void sub_21A13D20C()
{
  if (!qword_2811B3B98)
  {
    sub_21A176D98(&qword_27CD024A0);
    sub_21A176D98(&qword_27CCFEDC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B3B98);
    }
  }
}

void sub_21A13D294(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for CookingSession()
{
  result = qword_2811B80D0;
  if (!qword_2811B80D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13D344()
{
  sub_21A13D428(319, qword_2811B3DD0);
  if (v0 <= 0x3F)
  {
    sub_21A13D428(319, qword_2811B7570);
    if (v1 <= 0x3F)
    {
      sub_21A13D474();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A13D428(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A2F7EA4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A13D474()
{
  if (!qword_2811B3DC0)
  {
    sub_21A2F49B4();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3DC0);
    }
  }
}

void sub_21A13D4CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A2F75A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_21A13D528()
{
  result = qword_2811B5E50;
  if (!qword_2811B5E50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811B5E50);
  }

  return result;
}

void sub_21A13D5AC()
{
  type metadata accessor for RecipeCardQuickLinksViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13D294(319, &qword_2811B3D38, &qword_27CCFECC0, &unk_21A312000, MEMORY[0x277D6C620]);
    if (v1 <= 0x3F)
    {
      sub_21A13D294(319, &qword_2811B3CF8, &qword_27CCFF120, &unk_21A2FB820, MEMORY[0x277D6C620]);
      if (v2 <= 0x3F)
      {
        sub_21A13D4CC(319, &qword_2811B3D40);
        if (v3 <= 0x3F)
        {
          sub_21A13D4CC(319, &qword_2811B3D80);
          if (v4 <= 0x3F)
          {
            sub_21A13D294(319, &qword_2811B3D68, &qword_27CCFEBC0, &unk_21A2FB780, MEMORY[0x277D6C620]);
            if (v5 <= 0x3F)
            {
              sub_21A13D4CC(319, &qword_2811B3D48);
              if (v6 <= 0x3F)
              {
                sub_21A13D4CC(319, &qword_2811B3CF0);
                if (v7 <= 0x3F)
                {
                  sub_21A2F7614();
                  if (v8 <= 0x3F)
                  {
                    sub_21A13D294(319, qword_2811B4678, &qword_27CCFEBA8, &unk_21A2FA5C0, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21A13D820()
{
  sub_21A13D948();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      sub_21A2F50D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21A13D948()
{
  if (!qword_2811B7708[0])
  {
    type metadata accessor for ShareableRecipe(255);
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, qword_2811B7708);
    }
  }
}

void sub_21A13D9A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13D9F4()
{
  sub_21A13D9A0(319, &qword_2811B3BA0, sub_21A13DAA4);
  if (v0 <= 0x3F)
  {
    sub_21A2F4794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21A13DAA4()
{
  result = qword_2811B3BA8;
  if (!qword_2811B3BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811B3BA8);
  }

  return result;
}

void sub_21A13DB10()
{
  sub_21A13DD60(319, &qword_2811B3D30, &qword_27CCFF058, &unk_21A2FC890, MEMORY[0x277D6C620]);
  if (v0 <= 0x3F)
  {
    sub_21A13D4CC(319, &qword_2811B3D78);
    if (v1 <= 0x3F)
    {
      sub_21A13D4CC(319, &qword_2811B3CF0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RecipeSourceViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_21A13DD60(319, qword_2811B4C40, &qword_27CCFEB98, &unk_21A2FA5B8, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21A13DD60(319, &qword_2811B4140, &qword_27CCFEBA0, &unk_21A301DD0, MEMORY[0x277D83D88]);
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

void sub_21A13DC98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21A13DCFC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21A13DD60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21A13DDE4()
{
  sub_21A13A784(319, qword_2811B7FC8, type metadata accessor for ImageAsset);
  if (v0 <= 0x3F)
  {
    sub_21A13A784(319, &qword_2811B5FB0, type metadata accessor for RecipeSourceViewModel.Target);
    if (v1 <= 0x3F)
    {
      sub_21A2F50D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_21A13DF40()
{
  result = qword_2811B3B90;
  if (!qword_2811B3B90)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2811B3B90);
  }

  return result;
}

uint64_t type metadata accessor for RecipeThemeSource()
{
  result = qword_2811B7240;
  if (!qword_2811B7240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13DFDC()
{
  sub_21A13BBD0(319, &qword_2811B3D30, &qword_27CCFF058);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D10, &qword_27CCFE9A8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RecipeTheme();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RecipeImagesSource()
{
  result = qword_2811B7020;
  if (!qword_2811B7020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13E114()
{
  sub_21A140ED4();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21A13E218()
{
  if (!qword_2811B3D48)
  {
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D48);
    }
  }
}

void sub_21A13E288()
{
  type metadata accessor for IngredientsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13DC98(319, &qword_2811B3D30, &qword_27CCFF058, &unk_21A2FC890, MEMORY[0x277D6C620]);
    if (v1 <= 0x3F)
    {
      sub_21A13F87C(319, &qword_2811B3D70, &type metadata for ViewPlacement, MEMORY[0x277D6C620]);
      if (v2 <= 0x3F)
      {
        sub_21A13DC98(319, &qword_2811B3D08, &qword_27CCFE998, &unk_21A2F9BC0, MEMORY[0x277D6C620]);
        if (v3 <= 0x3F)
        {
          sub_21A13F87C(319, &qword_2811B3CF0, MEMORY[0x277D839B0], MEMORY[0x277D6C620]);
          if (v4 <= 0x3F)
          {
            sub_21A13F87C(319, &qword_2811B3D50, &type metadata for RecipeFeaturesConfiguration.GroceryListConfiguration, MEMORY[0x277D6C620]);
            if (v5 <= 0x3F)
            {
              sub_21A13DC98(319, &qword_2811B4718, &qword_27CCFFA58, &unk_21A2FD730, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21A13D528();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21A13E48C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13E4E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A13E534()
{
  sub_21A13E48C(319, &qword_2811B3DC8, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      sub_21A2F50D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21A13E6A0()
{
  result = sub_21A2F50D4();
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

void sub_21A13E748()
{
  type metadata accessor for InstructionSubStepViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D30, &qword_27CCFF058);
    if (v1 <= 0x3F)
    {
      sub_21A13BBD0(319, &qword_2811B3D18, &qword_27CD00380);
      if (v2 <= 0x3F)
      {
        sub_21A13D4CC(319, &qword_2811B3D88);
        if (v3 <= 0x3F)
        {
          sub_21A13D4CC(319, &qword_2811B3D70);
          if (v4 <= 0x3F)
          {
            sub_21A13BBD0(319, &qword_2811B3D00, &qword_27CCFEB60);
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

uint64_t sub_21A13E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A13E960()
{
  result = qword_2811B3C68;
  if (!qword_2811B3C68)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2811B3C68);
  }

  return result;
}

uint64_t type metadata accessor for UserInteractionEventHandler()
{
  result = qword_2811B4CE8;
  if (!qword_2811B4CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A13E9EC()
{
  result = sub_21A2F7614();
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

uint64_t type metadata accessor for RecipeCardViewEventHandler()
{
  result = qword_2811B54E0;
  if (!qword_2811B54E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SavedRecipesSource()
{
  result = qword_2811B6D08;
  if (!qword_2811B6D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13EB34()
{
  type metadata accessor for CookingModeViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13DC98(319, &qword_2811B3DA8, &qword_27CCFEB38, &unk_21A2FB5C0, MEMORY[0x277D6C620]);
    if (v1 <= 0x3F)
    {
      sub_21A13DC98(319, &qword_2811B3D30, &qword_27CCFF058, &unk_21A2FC890, MEMORY[0x277D6C620]);
      if (v2 <= 0x3F)
      {
        sub_21A13FC68(319, &qword_2811B3D90, type metadata accessor for RecipeTheme, MEMORY[0x277D6C620]);
        if (v3 <= 0x3F)
        {
          sub_21A13DC98(319, &qword_2811B4718, &qword_27CCFFA58, &unk_21A2FD730, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21A13ECB4()
{
  result = sub_21A2F7614();
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

uint64_t type metadata accessor for CookingSessionEventHandler()
{
  result = qword_2811B8418;
  if (!qword_2811B8418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A13EDA8()
{
  result = sub_21A2F7614();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A13EE14()
{
  if (!qword_2811B8078[0])
  {
    type metadata accessor for CookingSession();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, qword_2811B8078);
    }
  }
}

void sub_21A13EE6C()
{
  sub_21A13FFAC();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A13EEF0()
{
  if (!qword_2811B3D08)
  {
    sub_21A176D98(&qword_27CCFE998);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D08);
    }
  }
}

unint64_t sub_21A13EF54()
{
  result = sub_21A2F7614();
  if (v1 <= 0x3F)
  {
    result = sub_21A141428();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21A13EFD8()
{
  result = qword_2811B4720[0];
  if (!qword_2811B4720[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B4720);
  }

  return result;
}

uint64_t sub_21A13F07C()
{
  result = type metadata accessor for RecipeCardHostViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_21A2F7614();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A13F100()
{
  result = sub_21A2F50D4();
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

uint64_t sub_21A13F1C4()
{
  result = sub_21A2F50D4();
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

uint64_t type metadata accessor for FirstReferencedIngredientsSource()
{
  result = qword_2811B4668;
  if (!qword_2811B4668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13F2E0()
{
  sub_21A13F364();
  if (v0 <= 0x3F)
  {
    sub_21A13F3C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A13F364()
{
  if (!qword_2811B3C78)
  {
    v0 = sub_21A2F77A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C78);
    }
  }
}

void sub_21A13F3C4()
{
  if (!qword_2811B3D30)
  {
    sub_21A176D98(&qword_27CCFF058);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D30);
    }
  }
}

uint64_t type metadata accessor for HorizontalParallaxModelSource()
{
  result = qword_2811B4B98;
  if (!qword_2811B4B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13F474()
{
  sub_21A2F7614();
  if (v0 <= 0x3F)
  {
    sub_21A2DB344();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21A13F548()
{
  sub_21A13BBD0(319, &qword_2811B3D30, &qword_27CCFF058);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D10, &qword_27CCFE9A8);
    if (v1 <= 0x3F)
    {
      sub_21A13E218();
      if (v2 <= 0x3F)
      {
        sub_21A13D528();
        if (v3 <= 0x3F)
        {
          sub_21A13D9A0(319, qword_2811B7708, type metadata accessor for ShareableRecipe);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A13F680()
{
  type metadata accessor for RecipeImageViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D10, &qword_27CCFE9A8);
    if (v1 <= 0x3F)
    {
      sub_21A13BBD0(319, &qword_2811B3DA0, &qword_27CCFEDC0);
      if (v2 <= 0x3F)
      {
        sub_21A2F7614();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A13F764()
{
  sub_21A13C2F4();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      sub_21A2F50D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21A13F87C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21A13F8CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_21A13F91C()
{
  result = qword_2811B4000;
  if (!qword_2811B4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B4000);
  }

  return result;
}

void sub_21A13F990(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21A13FA20()
{
  sub_21A1410C8(319, &qword_2811B3F70, type metadata accessor for Recipe);
  if (v0 <= 0x3F)
  {
    sub_21A1410C8(319, qword_2811B4F18, type metadata accessor for InstructionSubStepViewModel.PopOver);
    if (v1 <= 0x3F)
    {
      sub_21A2F7614();
      if (v2 <= 0x3F)
      {
        sub_21A2F50D4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21A13FBC8()
{
  sub_21A1410C8(319, &qword_2811B3BE8, type metadata accessor for CGRect);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A13FC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for CookingSessionsSource()
{
  result = qword_2811B8750;
  if (!qword_2811B8750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13FD18()
{
  sub_21A2F7614();
  if (v0 <= 0x3F)
  {
    sub_21A140ED4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for SelectedIngredientsSource()
{
  result = qword_2811B57A0;
  if (!qword_2811B57A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SelectedIngredientsEventHandler()
{
  result = qword_2811B46D8;
  if (!qword_2811B46D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13FE94()
{
  sub_21A13BBD0(319, &qword_2811B3D28, &qword_27CCFE990);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D38, &qword_27CCFECC0);
    if (v1 <= 0x3F)
    {
      sub_21A13EE14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for CookingSessionsObservationRule()
{
  result = qword_2811B82E8;
  if (!qword_2811B82E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A13FFAC()
{
  if (!qword_2811B3D28)
  {
    sub_21A176D98(&qword_27CCFE990);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D28);
    }
  }
}

uint64_t type metadata accessor for SelectedIngredientsObservationRule()
{
  result = qword_2811B43D8;
  if (!qword_2811B43D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A14005C()
{
  sub_21A13EEF0();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CookingSessionsPersistenceCommandHandler()
{
  result = qword_2811B8248;
  if (!qword_2811B8248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SelectedIngredientsPersistenceCommandHandler()
{
  result = qword_2811B4128;
  if (!qword_2811B4128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A140178()
{
  result = sub_21A2F7614();
  if (v1 <= 0x3F)
  {
    result = sub_21A13EFD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21A14021C()
{
  type metadata accessor for RecipeAdViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D38, &qword_27CCFECC0);
    if (v1 <= 0x3F)
    {
      sub_21A13BBD0(319, &qword_2811B3D98, &qword_27CCFF8B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A140318()
{
  type metadata accessor for EndOfRecipeViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13BBD0(319, &qword_2811B3D38, &qword_27CCFECC0);
    if (v1 <= 0x3F)
    {
      sub_21A13BBD0(319, &qword_2811B3CF8, &qword_27CCFF120);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A1403E4()
{
  result = sub_21A2F50D4();
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

void sub_21A1404CC()
{
  sub_21A140550();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HorizontalParallaxOffset(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A140550()
{
  if (!qword_2811B3D60)
  {
    sub_21A176D98(&qword_27CCFEAD8);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D60);
    }
  }
}

uint64_t sub_21A1405B4()
{
  result = sub_21A2F50D4();
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

void sub_21A140674()
{
  if (!qword_2811B3CE0)
  {
    sub_21A176D98(&qword_27CD00398);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3CE0);
    }
  }
}

uint64_t type metadata accessor for RecipeCardViewSessionIDSource()
{
  result = qword_2811B4908;
  if (!qword_2811B4908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A140724()
{
  sub_21A140804();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21A140804()
{
  if (!qword_2811B3CE8)
  {
    sub_21A176D98(&qword_27CD023A0);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3CE8);
    }
  }
}

void sub_21A140868()
{
  sub_21A13D4CC(319, &qword_2811B3D58);
  if (v0 <= 0x3F)
  {
    sub_21A13D4CC(319, &qword_2811B3CF0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A14092C()
{
  sub_21A2F5214();
  type metadata accessor for RecipeTimersSource();
  sub_21A2F52C4();

  sub_21A2F5214();
  type metadata accessor for RecipeTimerViewModelSource(0);
  sub_21A2F52D4();
}

uint64_t type metadata accessor for RecipeTimersSource()
{
  result = qword_2811B6DE0;
  if (!qword_2811B6DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A140A38()
{
  result = sub_21A2F7614();
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

uint64_t type metadata accessor for RecipeTimer()
{
  result = qword_2811B7D68;
  if (!qword_2811B7D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A140B2C()
{
  sub_21A141A6C(319, &qword_2811B3BC8);
  if (v0 <= 0x3F)
  {
    sub_21A2F4A24();
    if (v1 <= 0x3F)
    {
      sub_21A13C2A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A140BE8()
{
  if (!qword_2811B3D88)
  {
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D88);
    }
  }
}

uint64_t NewsIntegrationAssembly.load(in:)(uint64_t a1)
{
  v2 = sub_21A2F5304();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CD01618);
  sub_21A2F52D4();

  v7 = *MEMORY[0x277D6CF10];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  sub_21A2F5114();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CD01620);
  sub_21A2F52D4();

  v8(v6, v7, v2);
  sub_21A2F5114();

  v9(v6, v2);
  sub_21A2F7C34();
  return sub_21A139BC4(sub_21A141B78, a1);
}

unint64_t sub_21A140E80()
{
  result = qword_2811B8010;
  if (!qword_2811B8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B8010);
  }

  return result;
}

void sub_21A140ED4()
{
  if (!qword_2811B3D20)
  {
    sub_21A176D98(&qword_27CCFE9B0);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3D20);
    }
  }
}

void sub_21A140F78()
{
  type metadata accessor for InstructionsViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13DCFC(319, &qword_2811B3D30, &qword_27CCFF058, &unk_21A2FC890, MEMORY[0x277D6C620]);
    if (v1 <= 0x3F)
    {
      sub_21A13F990(319, &qword_2811B3D70, &type metadata for ViewPlacement, MEMORY[0x277D6C620]);
      if (v2 <= 0x3F)
      {
        sub_21A13DCFC(319, &qword_2811B4718, &qword_27CCFFA58, &unk_21A2FD730, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A1410C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F7EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A14111C()
{
  if (!qword_2811B7800)
  {
    sub_21A2F5294();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811B7800);
    }
  }
}

uint64_t type metadata accessor for TimerUserInteractionEventHandler()
{
  result = qword_2811B45C8;
  if (!qword_2811B45C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1411F4()
{
  type metadata accessor for RecipeTheme();
  if (v0 <= 0x3F)
  {
    sub_21A2F59E4();
    if (v1 <= 0x3F)
    {
      sub_21A13FC68(319, &qword_2811B8CC8, MEMORY[0x277CB9F28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21A2F7614();
        if (v3 <= 0x3F)
        {
          sub_21A2F50D4();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for CookingSessionSource()
{
  result = qword_2811B88A8;
  if (!qword_2811B88A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A141428()
{
  result = qword_2811B83B8[0];
  if (!qword_2811B83B8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811B83B8);
  }

  return result;
}

void sub_21A1414AC()
{
  type metadata accessor for CookingModeTipState(319);
  if (v0 <= 0x3F)
  {
    sub_21A13D4CC(319, &qword_2811B3D58);
    if (v1 <= 0x3F)
    {
      sub_21A13D4CC(319, &qword_2811B3CF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A141568()
{
  result = sub_21A2F50D4();
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

uint64_t type metadata accessor for IsPrimaryRecipeSource()
{
  result = qword_2811B60C8;
  if (!qword_2811B60C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A141650()
{
  sub_21A140674();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for IsFocusableSource()
{
  result = qword_2811B73A8;
  if (!qword_2811B73A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A14177C(uint64_t a1)
{
  sub_21A2F5224();
  sub_21A2F52B4();

  sub_21A2F7C34();
  return sub_21A139BC4(sub_21A140910, a1);
}

void sub_21A14183C()
{
  type metadata accessor for RecipeTimerViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A140BE8();
    if (v1 <= 0x3F)
    {
      sub_21A13F3C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A1418F8()
{
  if (!qword_2811B7D28[0])
  {
    type metadata accessor for RecipeTimer();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, qword_2811B7D28);
    }
  }
}

void sub_21A141950()
{
  sub_21A1418F8();
  if (v0 <= 0x3F)
  {
    sub_21A2F7614();
    if (v1 <= 0x3F)
    {
      sub_21A2F50D4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21A141A6C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_21A141AD0()
{
  result = sub_21A2F7614();
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

uint64_t sub_21A141B94()
{
  sub_21A2F5214();
  type metadata accessor for AnalyticsUserInteractionEventHandler();
  sub_21A2F52C4();
}

uint64_t type metadata accessor for AnalyticsUserInteractionEventHandler()
{
  result = qword_2811B4288;
  if (!qword_2811B4288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A141C4C()
{
  result = sub_21A2F7614();
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

void sub_21A141CE8()
{
  sub_21A141D90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21A141D90()
{
  if (!qword_2811B3C90)
  {
    sub_21A2F7704();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C90);
    }
  }
}

uint64_t sub_21A141DE8()
{
  sub_21A176C98(&qword_27CD04DA0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_2811B81C0 = result;
  return result;
}

uint64_t type metadata accessor for CookingRoot()
{
  result = qword_2811B81A0;
  if (!qword_2811B81A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A141E8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for CookingRoot();
    swift_allocObject();

    v5 = sub_21A141FB8(v6);
    *a1 = v5;
  }

  *a2 = v5;
}

uint64_t static CookingRoot.initialize(with:)()
{
  if (qword_2811B81B8 != -1)
  {
    swift_once();
  }

  v0 = qword_2811B81C0;
  os_unfair_lock_lock((qword_2811B81C0 + 24));
  sub_21A141F10((v0 + 16), &v2);
  os_unfair_lock_unlock((v0 + 24));
  return v2;
}

uint64_t sub_21A141FB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A2F5304();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC10CookingKit11CookingRoot__scope;
  v10 = sub_21A2F7704();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *(v2 + 16) = a1;

  sub_21A2F5384();
  sub_21A14274C(&v17, v2 + 24);
  sub_21A2F5384();
  sub_21A2F5234();
  swift_allocObject();

  sub_21A2F5204();
  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CCFEB88);
  sub_21A2F51B4();
  v11 = v16;
  sub_21A1427A8(v15, &qword_27CD04D58);
  if (!v11)
  {
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CCFEB80);
  sub_21A2F51B4();
  v12 = v16;
  sub_21A1427A8(v15, &qword_27CD04D60);
  if (!v12)
  {
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CCFEAE8);
  sub_21A2F51B4();
  v13 = v16;
  sub_21A1427A8(v15, &qword_27CD04218);
  if (!v13)
  {
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CD03D98);
  sub_21A2F51B4();
  if (v16)
  {
    sub_21A142808(v15);
  }

  else
  {
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CD04D68);
  sub_21A2F51B4();
  if (v16)
  {
    sub_21A142808(v15);
  }

  else
  {
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142764(&v17, v18);
  sub_21A176C98(&qword_27CD04D70);
  sub_21A2F51B4();
  if (v16)
  {

    sub_21A1427A8(v15, &qword_27CD04D78);
  }

  else
  {
    sub_21A1427A8(v15, &qword_27CD04D78);
    sub_21A2F5214();
    sub_21A2F52D4();

    (*(v5 + 104))(v8, *MEMORY[0x277D6CF10], v4);
    sub_21A2F5114();

    (*(v5 + 8))(v8, v4);
  }

  sub_21A142808(&v17);
  return v2;
}

uint64_t sub_21A14274C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_21A142764(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21A1427A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21A176C98(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A142808(uint64_t a1)
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

uint64_t CookingRoot.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A176C98(&qword_27CD04D50);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC10CookingKit11CookingRoot__scope;
  sub_21A142A7C(v1 + OBJC_IVAR____TtC10CookingKit11CookingRoot__scope, v11 - v5);
  v8 = sub_21A2F7704();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_21A1427A8(v6, &qword_27CD04D50);
  sub_21A142AEC(v1 + 24, v12);
  v11[3] = &type metadata for ResolverDependencyContainer;
  v11[4] = sub_21A142B50();
  v11[0] = swift_allocObject();
  sub_21A142BA4(v12, v11[0] + 16);
  sub_21A2F76D4();
  sub_21A142C00(v12);
  sub_21A142808(v11);
  sub_21A1427A8(v1 + v7, &qword_27CD04D50);
  (*(v9 + 16))(v1 + v7, a1, v8);
  return (*(v9 + 56))(v1 + v7, 0, 1, v8);
}

uint64_t sub_21A142A44()
{
  sub_21A142808(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21A142A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A142AEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21A142B50()
{
  result = qword_2811B4D08[0];
  if (!qword_2811B4D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B4D08);
  }

  return result;
}

Swift::Void __swiftcall Scope.configureRootScopeForCookingKitInNews()()
{
  Scope.configureRootScopeForCookingKit()();
  type metadata accessor for AnalyticsUserInteractionEventHandler();
  sub_21A142FF4(&qword_2811B4298, type metadata accessor for AnalyticsUserInteractionEventHandler);

  sub_21A2F76E4();
}

Swift::Void __swiftcall Scope.configureRootScopeForCookingKit()()
{
  v0 = sub_21A2F7704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdleTimerCommandHandler();
  sub_21A142FF4(qword_2811B5C38, type metadata accessor for IdleTimerCommandHandler);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsObservationRule();
  sub_21A142FF4(qword_2811B43E8, type metadata accessor for SelectedIngredientsObservationRule);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  sub_21A142FF4(&qword_2811B4138, type metadata accessor for SelectedIngredientsPersistenceCommandHandler);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsEventHandler();
  sub_21A142FF4(&qword_2811B4710, type metadata accessor for SelectedIngredientsEventHandler);
  sub_21A2F76E4();
  swift_getKeyPath();
  sub_21A2F76C4();

  v5 = *(v1 + 8);
  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
}

uint64_t sub_21A142FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1430B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F7614();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A143180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F7614();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A143240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CD017F8);
  result = sub_21A2F51B4();
  if (v6)
  {
    MEMORY[0x21CED60A0](result);
    v4 = type metadata accessor for IdleTimerCommandHandler();
    sub_21A142AEC(v5, a2 + *(v4 + 20));
    sub_21A1433C8();
    sub_21A143420();
    sub_21A2F75D4();
    return sub_21A142808(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A143324@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for IdleTimerManager();
  v3 = swift_allocObject();
  sub_21A176C98(&qword_27CD01810);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_282B34CD8;
  *a1 = v3;
  return result;
}

unint64_t sub_21A1433C8()
{
  result = qword_2811B5C38[0];
  if (!qword_2811B5C38[0])
  {
    type metadata accessor for IdleTimerCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B5C38);
  }

  return result;
}

unint64_t sub_21A143420()
{
  result = qword_2811B7618[0];
  if (!qword_2811B7618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B7618);
  }

  return result;
}

uint64_t sub_21A1434A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFFA48);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A2F7614();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A1435C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFFA48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A2F7614();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A1436E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getKeyPath();
  sub_21A2F75B4();
  a3(0);
  return MEMORY[0x21CED60A0]();
}

uint64_t storeEnumTagSinglePayload for TextRange(uint64_t result, int a2, int a3)
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

uint64_t sub_21A143758@<X0>(void (*a1)(void)@<X3>, void (*a2)(void)@<X4>, void *a3@<X8>)
{
  a1();
  a2();
  result = sub_21A2F7624();
  *a3 = v6;
  return result;
}

unint64_t sub_21A143808()
{
  result = qword_2811B3C98;
  if (!qword_2811B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3C98);
  }

  return result;
}

unint64_t sub_21A14385C()
{
  result = qword_2811B3C80;
  if (!qword_2811B3C80)
  {
    sub_21A176D98(&qword_27CCFE998);
    sub_21A1772F8(&qword_2811B3C00, &qword_27CCFE9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3C80);
  }

  return result;
}

uint64_t sub_21A14390C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SelectedIngredientsSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A1444BC(&qword_2811B57B8, type metadata accessor for SelectedIngredientsSource);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A1439AC(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAC0);
  result = sub_21A2F51B4();
  if (v16)
  {
    v2 = sub_21A143D8C(v15, v16);
    MEMORY[0x28223BE20](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for SelectedIngredientsManager();
    v14[3] = v7;
    v14[4] = &off_282B35C48;
    v14[0] = v6;
    type metadata accessor for SelectedIngredientsSource();
    v8 = swift_allocObject();
    v9 = sub_21A143D8C(v14, v7);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_21A143ED4(*v11, v8);
    sub_21A142808(v14);
    sub_21A142808(v15);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A143BB8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = a1(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 120) = 0;
  *(v13 + 128) = 2;
  *(v13 + 112) = [objc_opt_self() standardUserDefaults];
  v14 = sub_21A2F7C64();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;

  sub_21A199D08(0, 0, v11, a2, v15);

  a4[3] = v12;
  a4[4] = a3;
  *a4 = v13;
  return result;
}

uint64_t sub_21A143D8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_21A143DDC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21A156FB8;

  return v6(a1);
}

uint64_t sub_21A143ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  v15[3] = type metadata accessor for SelectedIngredientsManager();
  v15[4] = &off_282B35C48;
  v15[0] = a1;
  *(a2 + 16) = sub_21A14427C(MEMORY[0x277D84F90]);
  MEMORY[0x21CED60A0]();
  sub_21A142AEC(v15, a2 + OBJC_IVAR____TtC10CookingKit25SelectedIngredientsSource_selectedIngredientsManager);
  sub_21A144380(&qword_2811B57B0, type metadata accessor for SelectedIngredientsSource);
  sub_21A144468();
  sub_21A2F75D4();
  v8 = sub_21A2F7C64();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_21A142AEC(v15, v14);
  sub_21A2F7C34();

  v10 = sub_21A2F7C24();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  sub_21A14274C(v14, (v11 + 4));
  v11[9] = v9;

  sub_21A199D08(0, 0, v7, &unk_21A2FA3A8, v11);

  sub_21A142808(v15);
  return a2;
}

uint64_t sub_21A144148()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A144180()
{
  swift_unknownObjectRelease();
  sub_21A142808(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21A1441C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A1443C8(a1, v4, v5, v6);
}

unint64_t sub_21A14427C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03468);
    v3 = sub_21A2F8194();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21A2F5434();
      sub_21A2F5434();
      result = sub_21A25A39C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_21A144380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1443C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_21A176C98(&qword_27CCFEB08);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A14454C, a4, 0);
}

unint64_t sub_21A144468()
{
  result = qword_2811B57D0[0];
  if (!qword_2811B57D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B57D0);
  }

  return result;
}

uint64_t sub_21A1444BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A14454C()
{
  v1 = v0[4];
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {

      v2 = v0[1];

      return v2();
    }

    v8 = v0[5];
    v9 = sub_21A2F7C64();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v11 = sub_21A14486C(qword_2811B5270, v10, type metadata accessor for SelectedIngredientsManager);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    swift_retain_n();
    v13 = sub_21A19A300(0, 0, v8, &unk_21A3136A0, v12);
    v0[8] = v13;
    v14 = *(v1 + 120);
    *(v1 + 120) = v13;
    LOBYTE(v12) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v14, v12);
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_21A147964;
    v6 = v0 + 3;
    v7 = v13;
  }

  else
  {
    v4 = *(v1 + 120);
    v0[6] = v4;

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_21A1F6C4C;
    v6 = v0 + 2;
    v7 = v4;
  }

  return MEMORY[0x282200460](v6, v7, &type metadata for PersistentSelectedIngredients);
}

uint64_t sub_21A1447B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A143DDC(a1, v4);
}

uint64_t sub_21A14486C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1448B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21A14427C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_21A1448F0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_21A14490C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A1449C4(a1, v4);
}

uint64_t sub_21A1449C4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21A146074;

  return v5(v2 + 16);
}

uint64_t sub_21A144AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A144B6C(a1, v4, v5, v6);
}

uint64_t sub_21A144B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_21A145D14;

  return sub_21A144D44();
}

uint64_t sub_21A144C00()
{
  v1 = v0[2];
  v2 = sub_21A144D64();
  v3 = sub_21A14537C(v2);
  v0[3] = v3;
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);

  v6 = *(v1 + 120);
  *(v1 + 120) = v3;
  v7 = *(v1 + 128);
  *(v1 + 128) = 1;

  sub_21A1448F0(v6, v7);
  if (v4 == v5)
  {
    v8 = v0[1];
    v9 = v0[3];

    return v8(v9);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[4] = v11;
    *v11 = v0;
    v11[1] = sub_21A1F6DD0;

    return sub_21A2B1840();
  }
}

unint64_t sub_21A144D64()
{
  v1 = *(v0 + 112);
  v2 = sub_21A2F78A4();
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_21A2F4814();
    v6 = v5;

    sub_21A2F4464();
    swift_allocObject();
    sub_21A2F4454();
    sub_21A2B1E68();
    sub_21A2F4434();

    sub_21A180748(v4, v6);
    return v9;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_21A144FEC(v7);
  }
}

unint64_t sub_21A144FEC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD034F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD034F8);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD034F0);
      result = sub_21A25A39C(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for PersistentSelectedIngredients.Entry();
      result = sub_21A261A6C(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PersistentSelectedIngredients.Entry);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t type metadata accessor for PersistentSelectedIngredients.Entry()
{
  result = qword_2811B4AB0;
  if (!qword_2811B4AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A145224()
{
  sub_21A145314();
  if (v0 <= 0x3F)
  {
    sub_21A2F49B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A1452A8(uint64_t a1)
{
  v2 = sub_21A1444BC(&qword_2811B57B8, type metadata accessor for SelectedIngredientsSource);

  return MEMORY[0x2821D1080](a1, v2);
}

void sub_21A145314()
{
  if (!qword_2811B3C08)
  {
    v0 = sub_21A2F7CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B3C08);
    }
  }
}

uint64_t sub_21A14537C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_21A1454DC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_21A2B1D80(v13, v7, v3);
  result = MEMORY[0x21CED7BA0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_21A1454DC(unint64_t *a1, uint64_t a2, void *a3)
{
  v50 = a2;
  v51 = a1;
  v66 = sub_21A2F4AB4();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v5);
  v65 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21A2F49B4();
  v7 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64, v8);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v62 = &v50 - v12;
  v61 = sub_21A176C98(&qword_27CD047F8);
  v14 = MEMORY[0x28223BE20](v61, v13);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v59 = (&v50 - v17);
  v18 = type metadata accessor for PersistentSelectedIngredients.Entry();
  v57 = *(v18 - 8);
  v58 = v18;
  result = MEMORY[0x28223BE20](v18, v19);
  v70 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v67 = a3;
  v25 = a3[8];
  v24 = a3 + 8;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v52 = 0;
  v53 = (v26 + 63) >> 6;
  v55 = (v7 + 8);
  v56 = (v4 + 8);
  while (v28)
  {
    v29 = __clz(__rbit64(v28));
    v69 = (v28 - 1) & v28;
LABEL_11:
    v32 = v29 | (v22 << 6);
    v33 = v67[7];
    v34 = (v67[6] + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v57 + 72);
    v54 = v32;
    v38 = v70;
    sub_21A2B1F70(v33 + v37 * v32, v70, type metadata accessor for PersistentSelectedIngredients.Entry);
    v39 = v59;
    *v59 = v36;
    *(v39 + 8) = v35;
    v68 = v35;
    v40 = v61;
    sub_21A2B1F70(v38, v39 + *(v61 + 48), type metadata accessor for PersistentSelectedIngredients.Entry);
    v41 = v60;
    sub_21A2B1DF8(v39, v60);
    swift_bridgeObjectRetain_n();

    v42 = v41 + *(v40 + 48);
    v43 = v63;
    sub_21A2F4974();
    v44 = v65;
    sub_21A2F4A94();
    v45 = v62;
    sub_21A2F4834();
    (*v56)(v44, v66);
    v46 = *v55;
    v47 = v43;
    v48 = v64;
    (*v55)(v47, v64);
    sub_21A14486C(&qword_27CCFF338, 255, MEMORY[0x277CC9578]);
    LOBYTE(v41) = sub_21A2F7844();
    v46(v45, v48);
    sub_21A1427A8(v39, &qword_27CD047F8);
    sub_21A1DAD88(v42);
    sub_21A1DAD88(v70);

    v28 = v69;
    if (v41)
    {
      *(v51 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
        return sub_21A1459FC(v51, v50, v52, v67, type metadata accessor for PersistentSelectedIngredients.Entry, &qword_27CD034F8, &unk_21A30CCC0, type metadata accessor for PersistentSelectedIngredients.Entry);
      }
    }
  }

  v30 = v22;
  while (1)
  {
    v22 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v22 >= v53)
    {
      return sub_21A1459FC(v51, v50, v52, v67, type metadata accessor for PersistentSelectedIngredients.Entry, &qword_27CD034F8, &unk_21A30CCC0, type metadata accessor for PersistentSelectedIngredients.Entry);
    }

    v31 = v24[v22];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v69 = (v31 - 1) & v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1459FC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t a7, uint64_t (*a8)(void))
{
  v50 = a8;
  v13 = a5(0);
  v46 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v45 = &v44 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_21A176C98(a6);
  result = sub_21A2F8194();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v23 = result + 64;
  v44 = a4;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v47 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[7];
    v29 = (a4[6] + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v45;
    v48 = *(v46 + 72);
    v33 = v50;
    sub_21A2B1F70(v28 + v48 * v27, v45, v50);
    sub_21A2B1FD8(v32, v49, v33);
    sub_21A2F8434();
    sub_21A2F5434();
    sub_21A2F79A4();
    result = sub_21A2F8474();
    v34 = -1 << *(v20 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v23 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = (*(v20 + 48) + 16 * v37);
    *v42 = v31;
    v42[1] = v30;
    result = sub_21A2B1FD8(v49, *(v20 + 56) + v37 * v48, v50);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44;
    v21 = v47;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v47 = (v26 - 1) & v26;
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

uint64_t sub_21A145D14(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_21A145F20, v2, 0);
}

uint64_t sub_21A145E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A145F40()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21A146098()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21A1460D8()
{
  v1 = (type metadata accessor for RecipeCardHostContentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_21A176C98(&qword_27CCFEC18);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  sub_21A176C98(&qword_27CCFECA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21A2F57F4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A146244()
{
  v1 = type metadata accessor for RecipeCardNavLinksModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 40);
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21A2F5654();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21A1478E8(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_21A146398()
{
  v1 = (type metadata accessor for SelectedIngredientsPersistenceCommandHandler() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_21A142808(v3 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_21A14649C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for GroceriesButton() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = sub_21A176C98(&qword_27CD003D0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v2[11];
  v6 = sub_21A176C98(qword_27CD003D8);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_21A176C98(&qword_27CD004C0);

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  v7 = v2[15];
  v8 = sub_21A2F4794();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21A1466CC()
{
  v1 = *(type metadata accessor for RecipeCardExpandedExcerptView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_21A176C98(&qword_27CCFECA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21A2F57F4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A146800()
{
  v1 = (type metadata accessor for CookingModeContentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21A1478E8(*v2, *(v2 + 8));

  v3 = v2 + v1[12];

  v4 = *(sub_21A176C98(&qword_27CD009C0) + 32);
  v5 = sub_21A2F59E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21A146968()
{
  v1 = (type metadata accessor for RecipeCardNavHeadersView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = (v0 + v2 + v1[8]);
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v5 = v3 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
    type metadata accessor for ImageAsset(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

LABEL_12:
    v14 = sub_21A2F4794();
    (*(*(v14 - 8) + 8))(v5, v14);
    v9 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_13;
  }

  v5 = v3 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
  v6 = type metadata accessor for ImageAsset(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_15;
  }

  v7 = swift_getEnumCaseMultiPayload();
  if (v7 == 2)
  {
    goto LABEL_12;
  }

  if (v7 == 1)
  {
LABEL_6:
    v8 = sub_21A2F4794();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = type metadata accessor for WebImageAsset(0);
LABEL_13:
    v15 = v9;

    v13 = *(v15 + 24);
    goto LABEL_14;
  }

LABEL_10:
  if (v7)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for ExternalImageAsset(0);
  v11 = v10[5];
  v12 = sub_21A2F4794();
  (*(*(v12 - 8) + 8))(&v5[v11], v12);

  v13 = v10[10];
LABEL_14:

LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_21A146C68()
{
  v1 = (type metadata accessor for CookingSessionsPersistenceCommandHandler() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_21A142808(v3 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_21A146D6C()
{
  v1 = *(type metadata accessor for CookingModePopoverTipViewModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21A176C98(&qword_27CD016B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21A146E74()
{
  v1 = (type metadata accessor for RecipeCardQuickLinksView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_21A176C98(&qword_27CD01908);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21A2F5654();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A146FCC()
{

  sub_21A1478E8(*(v0 + 104), *(v0 + 112));
  sub_21A1478E8(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_21A147034()
{

  return swift_deallocObject();
}

uint64_t sub_21A147074()
{
  v1 = (type metadata accessor for ExportToGroceryListTipViewModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_21A176C98(&qword_27CD03958);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21A147198()
{
  sub_21A1478E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21A1471E4()
{
  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A14722C()
{
  v1 = (type metadata accessor for InstructionSubStepPopOverContentView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = v0 + v2 + v3 + *(type metadata accessor for InstructionSubStepViewModel.PopOver(0) + 20);
  type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(sub_21A176C98(&qword_27CD01068) + 48);
    v7 = sub_21A2F5294();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21A147380()
{
  v1 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_21A2E45D4();

  v3 = v1[14];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21A2F5654();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21A2330F0(*(v2 + v1[15]), *(v2 + v1[15] + 8));
  v5 = v2 + v1[16];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      sub_21A142808(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A147550()
{
  v1 = *(v0 + 16);
  v19 = *(v0 + 24);
  v2 = (type metadata accessor for RoundSegmentedPickerView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = sub_21A2F71C4();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);
  (*(*(v19 - 8) + 8))(v3 + v2[15]);
  v5 = (v3 + v2[16]);
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    return swift_deallocObject();
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v7 = v5 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
    v8 = type metadata accessor for ImageAsset(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      return swift_deallocObject();
    }

    v9 = swift_getEnumCaseMultiPayload();
    if (v9 != 2)
    {
      if (v9 == 1)
      {
LABEL_6:
        v10 = sub_21A2F4794();
        (*(*(v10 - 8) + 8))(v7, v10);
        v11 = type metadata accessor for WebImageAsset(0);
LABEL_13:
        v17 = v11;

        v15 = *(v17 + 24);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_12:
    v16 = sub_21A2F4794();
    (*(*(v16 - 8) + 8))(v7, v16);
    v11 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_13;
  }

  v7 = v5 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
  type metadata accessor for ImageAsset(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 == 2)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (!v9)
  {

    v12 = type metadata accessor for ExternalImageAsset(0);
    v13 = v12[5];
    v14 = sub_21A2F4794();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);

    v15 = v12[10];
LABEL_14:
  }

  return swift_deallocObject();
}

uint64_t sub_21A1478E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21A1478F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A147964()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_21A1478F4, v1, 0);
}

uint64_t sub_21A147A74()
{
  sub_21A176C98(&qword_27CCFFA48);
  sub_21A2F7594();
  sub_21A147AEC();
  sub_21A2F75E4();
}

unint64_t sub_21A147AEC()
{
  result = qword_2811B5888;
  if (!qword_2811B5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B5888);
  }

  return result;
}

uint64_t sub_21A147B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F7614();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A147C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F7614();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A147CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAC0);
  result = sub_21A2F51B4();
  if (v6)
  {
    MEMORY[0x21CED60A0](result);
    v4 = type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
    sub_21A142AEC(v5, a2 + *(v4 + 20));
    sub_21A144380(&qword_2811B4138, type metadata accessor for SelectedIngredientsPersistenceCommandHandler);
    sub_21A147E00();
    sub_21A2F75D4();
    return sub_21A142808(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21A147E00()
{
  result = qword_2811B4148[0];
  if (!qword_2811B4148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B4148);
  }

  return result;
}

uint64_t sub_21A147E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F7614();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A147F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F7614();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A147F98@<X0>(void (*a1)(void)@<X3>, void (*a2)(void)@<X4>, void *a3@<X8>)
{
  a1();
  a2();
  result = sub_21A2F7624();
  *a3 = v6;
  return result;
}

unint64_t sub_21A148048()
{
  result = qword_2811B3CB0;
  if (!qword_2811B3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CB0);
  }

  return result;
}

unint64_t sub_21A14809C()
{
  result = qword_2811B7B90;
  if (!qword_2811B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7B90);
  }

  return result;
}

uint64_t sub_21A1480F0@<X0>(uint64_t a1@<X8>)
{
  sub_21A176C98(&qword_27CCFEAB0);
  result = sub_21A2F7694();
  if (v3)
  {
    if (v3 == 1)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 24) = type metadata accessor for SavedRecipesSource();
      result = sub_21A148524(&qword_2811B6D20, type metadata accessor for SavedRecipesSource);
      *(a1 + 32) = result;
      *a1 = v3;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21A1481A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEB40);
  sub_21A2F51B4();
  if (v6)
  {
    sub_21A14274C(&v5, v7);
    sub_21A142AEC(v7, &v5);
    type metadata accessor for SavedRecipesSource();
    swift_allocObject();
    v3 = sub_21A148280(&v5);
    result = sub_21A142808(v7);
  }

  else
  {
    result = sub_21A1427A8(&v5, &qword_27CCFEB48);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21A148280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A176C98(&qword_27CCFEB08);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v15 - v7;
  *(v1 + 56) = MEMORY[0x277D84F90];
  MEMORY[0x21CED60A0](v6);
  sub_21A142AEC(a1, v1 + 16);
  sub_21A148524(&qword_2811B6D18, type metadata accessor for SavedRecipesSource);
  sub_21A14856C();
  sub_21A2F75D4();
  v9 = sub_21A2F7C64();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_21A142AEC(a1, v16);
  sub_21A142AEC(v16, v15);
  sub_21A2F7C34();

  v11 = sub_21A2F7C24();
  sub_21A142808(v16);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  sub_21A17A410(v15, (v12 + 4));
  v12[9] = v10;

  sub_21A199D08(0, 0, v8, &unk_21A2FC4A0, v12);

  sub_21A142808(a1);
  return v2;
}

uint64_t sub_21A1484E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A148524(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A14856C()
{
  result = qword_2811B6958[0];
  if (!qword_2811B6958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B6958);
  }

  return result;
}

uint64_t sub_21A148658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21A2F8394() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_21A14871C()
{
  result = qword_2811B3CA0;
  if (!qword_2811B3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CA0);
  }

  return result;
}

unint64_t sub_21A148770()
{
  result = qword_2811B3E88;
  if (!qword_2811B3E88)
  {
    sub_21A176D98(&qword_27CCFE9B0);
    sub_21A142FF4(&qword_2811B3FF8, type metadata accessor for Recipe);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3E88);
  }

  return result;
}

uint64_t sub_21A148824@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ImportedRecipesSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A149260(&qword_2811B6280, type metadata accessor for ImportedRecipesSource);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A1488C4(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAA8);
  result = sub_21A2F51B4();
  if (v2[3])
  {
    type metadata accessor for ImportedRecipesSource();
    swift_allocObject();
    return sub_21A148C30(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A148954@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFEBE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for RecipeStore();
  v8 = swift_allocObject();
  sub_21A176C98(&qword_27CCFEBE8);
  sub_21A2F5154();
  sub_21A176C98(&qword_27CCFEBF0);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v3 + 32))(v9 + *(*v9 + *MEMORY[0x277D841D0] + 16), v6, v2);
  *(v8 + 16) = v9;
  sub_21A176C98(&qword_27CCFEBF8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *(v8 + 24) = result;
  a1[3] = v7;
  a1[4] = &off_282B34D00;
  *a1 = v8;
  return result;
}

uint64_t type metadata accessor for RecipeStore.Entry()
{
  result = qword_2811B7F20;
  if (!qword_2811B7F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A148BBC()
{
  result = type metadata accessor for Recipe();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A148C30(void *a1)
{
  v2 = v1;
  sub_21A176C98(&qword_27CCFEB08);
  v4 = MEMORY[0x28223BE20]();
  v6 = v17 - v5;
  MEMORY[0x21CED60A0](v4);
  v7 = a1[3];
  v8 = a1[4];
  sub_21A142764(a1, v7);
  *(v1 + 16) = (*(v8 + 32))(v7, v8);
  sub_21A142AEC(a1, v1 + 24);
  v9 = a1[3];
  v10 = a1[4];
  sub_21A142764(a1, v9);
  (*(v10 + 16))(v18, v9, v10);
  v11 = sub_21A2F7C64();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_21A142AEC(v18, v17);
  sub_21A2F7C34();

  v13 = sub_21A2F7C24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  sub_21A14274C(v17, (v14 + 4));
  v14[9] = v12;

  sub_21A199D08(0, 0, v6, &unk_21A30E778, v14);

  sub_21A142808(v18);
  sub_21A142808(a1);
  return v2;
}

uint64_t sub_21A148E44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A148E7C()
{
  swift_unknownObjectRelease();
  sub_21A142808(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21A148EC4()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v1 + 24));
  v3 = sub_21A148F30(v2);

  return v3;
}

uint64_t sub_21A148F30(uint64_t a1)
{
  v2 = type metadata accessor for Recipe();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipeStore.Entry();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD039D0);
  result = sub_21A2F8174();
  v9 = result;
  v10 = 0;
  v38 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v40 = 16 * v21;
      v22 = *(v38 + 56);
      v23 = (*(v38 + 48) + 16 * v21);
      v24 = v23[1];
      v41 = *v23;
      v25 = v34;
      sub_21A2961E4(v22 + *(v35 + 72) * v21, v34, type metadata accessor for RecipeStore.Entry);
      v26 = v36;
      sub_21A2961E4(v25, v36, type metadata accessor for Recipe);
      sub_21A2F5434();
      sub_21A2962BC(v25, type metadata accessor for RecipeStore.Entry);
      v9 = v33;
      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v9[6] + v40);
      *v27 = v41;
      v27[1] = v24;
      result = sub_21A29624C(v26, v9[7] + *(v37 + 72) * v21, type metadata accessor for Recipe);
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v9[2] = v30;
      v16 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A149218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A149260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1492F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Recipe();
  sub_21A149260(&qword_2811B3FF0, type metadata accessor for Recipe);
  KeyPath = swift_getKeyPath();
  v3 = sub_21A1493B0(KeyPath, MEMORY[0x277D84F90]);

  *a1 = v3;
  return result;
}

__n128 sub_21A1493A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21A1493B0(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for Recipe();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v49 - v9;
  v10 = sub_21A176C98(&qword_27CCFF058);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = sub_21A176C98(&qword_27CD039C8);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v49 - v20);
  v51 = a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    sub_21A176C98(&qword_27CD039D0);
    v23 = sub_21A2F8194();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v58 = v23;
  v54 = (v56 + 56);
  v24 = (v56 + 48);
  swift_bridgeObjectRetain_n();

  v25 = 0;
  for (i = v22; ; v22 = i)
  {
    if (v25 == v22)
    {
      v26 = 1;
      v25 = v22;
    }

    else
    {
      if (v25 >= v22)
      {
        goto LABEL_25;
      }

      sub_21A270888(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v25, v17, type metadata accessor for Recipe);
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_26;
      }

      v26 = 0;
    }

    v28 = v55;
    (*v54)(v17, v26, 1, v55);
    sub_21A149B18(v17, v14, &qword_27CCFF058);
    if ((*v24)(v14, 1, v28) == 1)
    {
      v29 = sub_21A176C98(&qword_27CD039D8);
      (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    }

    else
    {
      v30 = v50;
      sub_21A2708F0(v14, v50, type metadata accessor for Recipe);
      v31 = sub_21A176C98(&qword_27CD039D8);
      v32 = *(v31 + 48);
      swift_getAtKeyPath();
      sub_21A2708F0(v30, v21 + v32, type metadata accessor for Recipe);
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    }

    v33 = sub_21A176C98(&qword_27CD039D8);
    if ((*(*(v33 - 8) + 48))(v21, 1, v33) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v23;
    }

    v34 = *(v33 + 48);
    v36 = *v21;
    v35 = v21[1];
    sub_21A2708F0(v21 + v34, v57, type metadata accessor for Recipe);
    v38 = sub_21A261F58(v36, v35);
    v39 = v23[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v23[3] < v41)
    {
      sub_21A26DF58(v41, 1, type metadata accessor for Recipe, &qword_27CD039D0, &unk_21A30E6F8, type metadata accessor for Recipe);
      v43 = sub_21A261F58(v36, v35);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v23 = v58;
    if (v42)
    {

      sub_21A26F8DC(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for Recipe);
    }

    else
    {
      v58[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v23[6] + 16 * v38);
      *v45 = v36;
      v45[1] = v35;
      sub_21A2708F0(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for Recipe);
      v46 = v23[2];
      v27 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v23[2] = v47;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t sub_21A149988(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFEDC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF040);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = sub_21A176C98(&qword_27CCFF3D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A149B18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_21A176C98(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A149B94(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_21A176C98(&qword_27CCFEDC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF040);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = sub_21A176C98(&qword_27CCFF3D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_21A149D24(uint64_t result, int a2, int a3)
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

uint64_t sub_21A149D60(uint64_t a1, int a2)
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

uint64_t static Catalog<>.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_21A2F77C4();
}

unint64_t sub_21A149E6C()
{
  result = qword_2811B4008[0];
  if (!qword_2811B4008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B4008);
  }

  return result;
}

unint64_t sub_21A149EF4()
{
  result = qword_2811B3CC0;
  if (!qword_2811B3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CC0);
  }

  return result;
}

unint64_t sub_21A149F48()
{
  result = qword_2811B3C88;
  if (!qword_2811B3C88)
  {
    sub_21A176D98(&qword_27CCFE9A8);
    sub_21A149FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3C88);
  }

  return result;
}

unint64_t sub_21A149FCC()
{
  result = qword_2811B7050;
  if (!qword_2811B7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7050);
  }

  return result;
}

uint64_t sub_21A14A020@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RecipeImagesSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A14A2A4(&qword_2811B7038);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A14A0AC(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEB88);
  result = sub_21A2F51B4();
  if (v5)
  {
    type metadata accessor for RecipeImagesSource();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_21A14A184(MEMORY[0x277D84F90]);
    swift_getKeyPath();
    v3 = sub_21A2F75B4();
    MEMORY[0x21CED60A0](v3);
    sub_21A14274C(&v4, v2 + 24);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21A14A184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03498);
    v3 = sub_21A2F8194();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_21A2F5434();
      sub_21A17FE08(v7, v8);
      result = sub_21A25A39C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_21A14A2A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeImagesSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A14A31C@<X0>(void *a1@<X8>)
{
  if (qword_2811B3CC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2811B3CD0;

  return sub_21A2F5434();
}

unint64_t sub_21A14A38C()
{
  result = sub_21A14A184(MEMORY[0x277D84F90]);
  qword_2811B3CD0 = result;
  return result;
}

uint64_t sub_21A14A3B4()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_21A14A498(KeyPath);

  v2 = swift_getKeyPath();
  v3 = sub_21A14A498(v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_21A14AF40(v3, sub_21A2DFC0C, 0, isUniquelyReferenced_nonNull_native, &v6);

  sub_21A14B6D8(v6);
}

uint64_t sub_21A14A498(uint64_t a1)
{
  v86 = a1;
  v2 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v83 = (&v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v82 = (&v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v81 = (&v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v80 - v13;
  v88 = type metadata accessor for ImageAsset(0);
  v15 = *(v88 - 8);
  v17 = MEMORY[0x28223BE20](v88, v16);
  v89 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = &v80 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v84 = (&v80 - v24);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v80 - v26;
  v28 = type metadata accessor for Recipe();
  v85 = *(v28 - 8);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21A176C98(&qword_27CCFF060);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v80 - v35;
  (*(v33 + 16))(&v80 - v35, v1 + OBJC_IVAR____TtC10CookingKit18RecipeImagesSource__importedRecipes, v32);
  sub_21A2F7594();
  (*(v33 + 8))(v36, v32);
  v37 = v91;
  v38 = v91 + 8;
  v39 = 1 << *(v91 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v91[8];
  v42 = (v39 + 63) >> 6;
  v87 = v15;
  v43 = (v15 + 48);
  sub_21A2F5434();
  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    v46 = v44;
    if (!v41)
    {
      break;
    }

LABEL_8:
    v47 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    sub_21A2E01AC(v37[7] + *(v85 + 9) * (v47 | (v44 << 6)), v31, type metadata accessor for Recipe);
    swift_getAtKeyPath();
    sub_21A2E0214(v31, type metadata accessor for Recipe);
    if ((*v43)(v14, 1, v88) == 1)
    {
      sub_21A1427A8(v14, &qword_27CCFEDC0);
    }

    else
    {
      sub_21A2E0144(v14, v84, type metadata accessor for ImageAsset);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_21A1B84BC(0, v45[2] + 1, 1, v45);
      }

      v48 = v45;
      v49 = v45[2];
      v50 = v48;
      v51 = v48[3];
      v52 = v49 + 1;
      if (v49 >= v51 >> 1)
      {
        v80 = v49 + 1;
        v54 = sub_21A1B84BC(v51 > 1, v49 + 1, 1, v50);
        v52 = v80;
        v50 = v54;
      }

      v50[2] = v52;
      v53 = v50 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v49;
      v45 = v50;
      sub_21A2E0144(v84, v53, type metadata accessor for ImageAsset);
    }
  }

  while (1)
  {
    v44 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_21A2F83D4();
      __break(1u);
      return result;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = v38[v44];
    ++v46;
    if (v41)
    {
      goto LABEL_8;
    }
  }

  v55 = sub_21A14AD58(MEMORY[0x277D84F90]);
  v86 = v45[2];
  if (v86)
  {
    v56 = 0;
    v57 = *(v87 + 80);
    v84 = v45;
    v85 = v45 + ((v57 + 32) & ~v57);
    do
    {
      if (v56 >= v45[2])
      {
        goto LABEL_38;
      }

      v58 = *(v87 + 72);
      sub_21A2E01AC(&v85[v58 * v56], v27, type metadata accessor for ImageAsset);
      sub_21A2E01AC(v27, v90, type metadata accessor for ImageAsset);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v60 = v82;
          sub_21A2E0144(v90, v82, type metadata accessor for WebImageAsset);
          v61 = sub_21A2F46A4();
          v63 = v62;
          v64 = type metadata accessor for WebImageAsset;
        }

        else
        {
          v60 = v83;
          sub_21A2E0144(v90, v83, type metadata accessor for LocalImageAsset);
          v61 = sub_21A2F46A4();
          v63 = v65;
          v64 = type metadata accessor for LocalImageAsset;
        }
      }

      else
      {
        v60 = v81;
        sub_21A2E0144(v90, v81, type metadata accessor for ExternalImageAsset);
        v61 = *v60;
        v63 = v60[1];
        sub_21A2F5434();
        v64 = type metadata accessor for ExternalImageAsset;
      }

      sub_21A2E0214(v60, v64);
      sub_21A2E01AC(v27, v89, type metadata accessor for ImageAsset);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v55;
      v68 = sub_21A261F58(v61, v63);
      v69 = v55[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_39;
      }

      v72 = v67;
      if (v55[3] >= v71)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v67)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_21A2B96A0();
          if (v72)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_21A27057C(v71, isUniquelyReferenced_nonNull_native);
        v73 = sub_21A261F58(v61, v63);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_41;
        }

        v68 = v73;
        if (v72)
        {
LABEL_17:

          v55 = v91;
          sub_21A2E00E0(v89, v91[7] + v68 * v58);
          sub_21A2E0214(v27, type metadata accessor for ImageAsset);
          goto LABEL_18;
        }
      }

      v55 = v91;
      v91[(v68 >> 6) + 8] |= 1 << v68;
      v75 = (v55[6] + 16 * v68);
      *v75 = v61;
      v75[1] = v63;
      sub_21A2E0144(v89, v55[7] + v68 * v58, type metadata accessor for ImageAsset);
      sub_21A2E0214(v27, type metadata accessor for ImageAsset);
      v76 = v55[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_40;
      }

      v55[2] = v78;
LABEL_18:
      ++v56;
      v45 = v84;
    }

    while (v86 != v56);
  }

  return v55;
}

unint64_t sub_21A14AD58(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD034D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD034E0);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD034D8);
      result = sub_21A25A39C(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for ImageAsset(0);
      result = sub_21A261A6C(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ImageAsset);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_21A14AF40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ImageAsset(0);
  v56 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - v15;
  v17 = sub_21A176C98(&qword_27CD04E30);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = (&v47 - v19);
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v49 = a1;
  v50 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v51 = v22;
  v52 = 0;
  v53 = v25 & v23;
  v54 = a2;
  v55 = a3;
  sub_21A2F5434();
  v47 = a3;

  while (1)
  {
    sub_21A14B300(v20);
    v28 = sub_21A176C98(&qword_27CD034D8);
    if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
    {
      sub_21A14B2F8();
    }

    v29 = *(v28 + 48);
    v30 = *v20;
    v31 = v20[1];
    sub_21A2E0144(v20 + v29, v16, type metadata accessor for ImageAsset);
    v32 = *a5;
    v34 = sub_21A261F58(v30, v31);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21A2B96A0();
        v41 = *a5;
        if ((v38 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v26 = *(v56 + 72) * v34;
      v27 = v48;
      sub_21A2E01AC(v41[7] + v26, v48, type metadata accessor for ImageAsset);
      sub_21A2E0214(v16, type metadata accessor for ImageAsset);

      sub_21A2E00E0(v27, v41[7] + v26);
      a4 = 1;
    }

    else
    {
      sub_21A27057C(v37, a4 & 1);
      v39 = sub_21A261F58(v30, v31);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_21;
      }

      v34 = v39;
      v41 = *a5;
      if (v38)
      {
        goto LABEL_5;
      }

LABEL_14:
      v41[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v41[6] + 16 * v34);
      *v42 = v30;
      v42[1] = v31;
      sub_21A2E0144(v16, v41[7] + *(v56 + 72) * v34, type metadata accessor for ImageAsset);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v41[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t sub_21A14B300@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A176C98(&qword_27CD04E38);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for ImageAsset(0);
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A176C98(&qword_27CD04E40);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = (&v44 - v18);
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v44 = v6;
  v49 = v23;
  if (v24)
  {
    v45 = a1;
    v25 = v22;
LABEL_11:
    v29 = (v24 - 1) & v24;
    v30 = __clz(__rbit64(v24)) | (v25 << 6);
    v31 = (*(v20 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    sub_21A2E01AC(*(v20 + 56) + *(v46 + 72) * v30, v10, type metadata accessor for ImageAsset);
    v34 = v48;
    v35 = *(v48 + 48);
    *v19 = v33;
    v19[1] = v32;
    v36 = v10;
    v37 = v34;
    sub_21A2E0144(v36, v19 + v35, type metadata accessor for ImageAsset);
    v38 = v47;
    (*(v47 + 56))(v19, 0, 1, v37);
    sub_21A2F5434();
    v28 = v25;
    v39 = v38;
    a1 = v45;
LABEL_12:
    *v1 = v20;
    v1[1] = v21;
    v1[2] = v49;
    v1[3] = v28;
    v1[4] = v29;
    v40 = v1[5];
    sub_21A149B18(v19, v15, &qword_27CD04E40);
    v41 = 1;
    if ((*(v39 + 48))(v15, 1, v37) != 1)
    {
      v42 = v44;
      sub_21A149B18(v15, v44, &qword_27CD04E38);
      v40(v42);
      sub_21A1427A8(v42, &qword_27CD04E38);
      v41 = 0;
    }

    v43 = sub_21A176C98(&qword_27CD034D8);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v26 = (v23 + 64) >> 6;
    if (v26 <= v22 + 1)
    {
      v27 = v22 + 1;
    }

    else
    {
      v27 = (v23 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        v39 = v47;
        v37 = v48;
        (*(v47 + 56))(&v44 - v18, 1, 1, v48);
        v29 = 0;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v25);
      ++v22;
      if (v24)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A14B6D8(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for ImageAsset(0);
  v54 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v52 = &v51 - v8;
  v9 = sub_21A2F5434();
  v10 = sub_21A14BAE0(v9);
  v11 = sub_21A2F5434();
  v12 = sub_21A14BAE0(v11);
  v13 = v12;
  v14 = *(v10 + 16);
  v15 = *(v12 + 16);
  v51 = v10;
  if (v14 <= v15 >> 3)
  {
    v56 = v12;
    sub_21A2F5434();
    result = sub_21A14BC5C(v10);
    v17 = v56;
  }

  else
  {
    sub_21A2F5434();
    result = sub_21A2DE8D8(v10, v13);
    v17 = result;
  }

  v18 = 0;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
LABEL_13:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = (*(v17 + 48) + ((v18 << 10) | (16 * v25)));
    v28 = *v26;
    v27 = v26[1];
    sub_21A2F5434();
    v29 = sub_21A261F58(v28, v27);
    v31 = v30;

    if (v31)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v2 + 16);
      v56 = v33;
      *(v2 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21A2B98F8();
        v33 = v56;
      }

      sub_21A17FE30(*(*(v33 + 56) + 16 * v29), *(*(v33 + 56) + 16 * v29 + 8));
      sub_21A2B6FF0(v29, v33);
      *(v2 + 16) = v33;
    }
  }

  v23 = v55;
  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v17 + 56 + 8 * v24);
    ++v18;
    if (v21)
    {
      v18 = v24;
      goto LABEL_13;
    }
  }

  if (*(v13 + 16) <= *(v51 + 16) >> 3)
  {
    v56 = v51;
    sub_21A14BC5C(v13);

    v34 = v56;
  }

  else
  {
    v34 = sub_21A2DE8D8(v13, v51);
  }

  v35 = 0;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 56);
  v39 = (v36 + 63) >> 6;
  while (v38)
  {
    v40 = v38;
LABEL_29:
    v38 = (v40 - 1) & v40;
    if (*(v23 + 16))
    {
      v42 = (*(v34 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v40)))));
      v43 = *v42;
      v44 = v42[1];
      sub_21A2F5434();
      v45 = sub_21A261F58(v43, v44);
      v47 = v46;

      if (v47)
      {
        v48 = *(v23 + 56) + *(v54 + 72) * v45;
        v49 = v53;
        sub_21A2E01AC(v48, v53, type metadata accessor for ImageAsset);
        v50 = v52;
        sub_21A2E0144(v49, v52, type metadata accessor for ImageAsset);
        sub_21A2DC418(v50);
        result = sub_21A2E0214(v50, type metadata accessor for ImageAsset);
      }
    }
  }

  while (1)
  {
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v41 >= v39)
    {
    }

    v40 = *(v34 + 56 + 8 * v41);
    ++v35;
    if (v40)
    {
      v35 = v41;
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21A14BAE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21A14BC08();
  result = MEMORY[0x21CED6780](v2, &type metadata for ImageAsset.ID, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_21A2F5434();
    sub_21A2BA798(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A14BC08()
{
  result = qword_2811B8018[0];
  if (!qword_2811B8018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B8018);
  }

  return result;
}

uint64_t sub_21A14BC5C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_21A2F5434();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_21A2F5434();
        sub_21A2BEE80(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21A14BDA4@<X0>(void *a1@<X8>)
{
  sub_21A14BE08();
  sub_21A14BE5C();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

unint64_t sub_21A14BE08()
{
  result = qword_2811B3CB8;
  if (!qword_2811B3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CB8);
  }

  return result;
}

unint64_t sub_21A14BE5C()
{
  result = qword_2811B7B98;
  if (!qword_2811B7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7B98);
  }

  return result;
}

uint64_t sub_21A14BEB0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RecipeTimersSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A14DA6C(&qword_2811B6DF8);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A14BF3C(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CD05480);
  result = sub_21A2F51B4();
  if (v16)
  {
    v2 = sub_21A143D8C(v15, v16);
    MEMORY[0x28223BE20](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for RecipeTimerManager();
    v14[3] = v7;
    v14[4] = &off_282B370F8;
    v14[0] = v6;
    type metadata accessor for RecipeTimersSource();
    v8 = swift_allocObject();
    v9 = sub_21A143D8C(v14, v7);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_21A14D4B8(*v11, v8);
    sub_21A142808(v14);
    sub_21A142808(v15);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A14C148()
{
  v0 = sub_21A2F5304();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD05488);
  sub_21A2F52D4();
  v5 = *MEMORY[0x277D6CF10];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_21A2F5114();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_21A176C98(&qword_27CD05480);
  sub_21A2F52D4();
  v6(v4, v5, v0);
  sub_21A2F5114();

  return (v7)(v4, v0);
}

uint64_t sub_21A14C324@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CD05488);
  result = sub_21A2F51B4();
  if (v19)
  {
    v4 = sub_21A143D8C(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for RecipeTimerStore();
    v17[3] = v9;
    v17[4] = &off_282B2FDE0;
    v17[0] = v8;
    v10 = type metadata accessor for RecipeTimerManager();
    v11 = swift_allocObject();
    v12 = sub_21A143D8C(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_21A14C710(*v14, v11);
    sub_21A142808(v17);
    result = sub_21A142808(v18);
    a2[3] = v10;
    a2[4] = &off_282B370F8;
    *a2 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A14C54C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for RecipeTimerStore();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 120) = 0;
  *(v7 + 128) = 2;
  *(v7 + 112) = [objc_opt_self() standardUserDefaults];
  v8 = sub_21A2F7C64();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  sub_21A199D08(0, 0, v5, &unk_21A317020, v9);

  a1[3] = v6;
  a1[4] = &off_282B2FDE0;
  *a1 = v7;
  return result;
}

void *sub_21A14C710(uint64_t a1, void *a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15[-1] - v6;
  v15[3] = type metadata accessor for RecipeTimerStore();
  v15[4] = &off_282B2FDE0;
  v15[0] = a1;
  a2[7] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  sub_21A176C98(&qword_27CD05490);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x277D84F98];
  a2[8] = v8;
  sub_21A176C98(&qword_27CD05498);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = MEMORY[0x277D84F90];
  a2[9] = v9;
  sub_21A142AEC(v15, (a2 + 2));
  v10 = sub_21A2F7C64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_21A199D08(0, 0, v7, &unk_21A3169A8, v11);

  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:a2 selector:sel_timersUpdated_ name:*MEMORY[0x277D296A8] object:0];

  sub_21A142808(v15);
  return a2;
}

uint64_t sub_21A14C928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A14C9DC(a1, v4, v5, v6);
}

uint64_t sub_21A14C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_21A176C98(&qword_27CCFEB08);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A14CA7C, a4, 0);
}

uint64_t sub_21A14CA7C()
{
  v1 = v0[4];
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {

      v2 = v0[1];

      return v2();
    }

    v9 = v0[5];
    v10 = sub_21A2F7C64();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = sub_21A14CD04(qword_2811B74B8, v11, type metadata accessor for RecipeTimerStore);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    v14 = sub_21A19A5F8(0, 0, v9, &unk_21A302F58, v13);
    v0[8] = v14;
    v15 = *(v1 + 120);
    *(v1 + 120) = v14;
    LOBYTE(v13) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v15, v13);
    v16 = swift_task_alloc();
    v0[9] = v16;
    v6 = sub_21A176C98(&qword_27CCFF380);
    *v16 = v0;
    v16[1] = sub_21A147964;
    v7 = v0 + 3;
    v8 = v14;
  }

  else
  {
    v4 = *(v1 + 120);
    v0[6] = v4;

    v5 = swift_task_alloc();
    v0[7] = v5;
    v6 = sub_21A176C98(&qword_27CCFF380);
    *v5 = v0;
    v5[1] = sub_21A1F6C4C;
    v7 = v0 + 2;
    v8 = v4;
  }

  return MEMORY[0x282200460](v7, v8, v6);
}

uint64_t sub_21A14CD04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A14CD50()
{
  result = qword_2811B7808;
  if (!qword_2811B7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7808);
  }

  return result;
}

uint64_t sub_21A14CDA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A1449C4(a1, v4);
}

uint64_t sub_21A14CE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A14CF10(a1, v4, v5, v6);
}

uint64_t sub_21A14CF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21A14CF30, a4, 0);
}

uint64_t sub_21A14CF30()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_21A14CFCC();
  v4 = *(v1 + 120);
  *(v1 + 120) = v3;
  v5 = *(v1 + 128);
  *(v1 + 128) = 1;
  sub_21A2F5434();
  sub_21A1448F0(v4, v5);
  *v2 = v3;
  v6 = v0[1];

  return v6();
}

unint64_t sub_21A14CFCC()
{
  v1 = *(v0 + 112);
  v2 = sub_21A2F78A4();
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_21A2F4814();
    v6 = v5;

    sub_21A2F4464();
    swift_allocObject();
    sub_21A2F4454();
    sub_21A176C98(&qword_27CCFF380);
    sub_21A2033E0();
    sub_21A2F4434();

    sub_21A180748(v4, v6);
    return v9;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_21A14D268(v7);
  }
}

unint64_t sub_21A14D268(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03518);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD03520);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD03518);
      v12 = *(v6 + 1);
      v25[0] = *v6;
      v25[1] = v12;
      v25[2] = *(v6 + 2);
      v26 = v6[48];
      result = sub_21A25A2A0(v25);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6] + 56 * result;
      v17 = v6[48];
      v18 = *(v6 + 1);
      v19 = *(v6 + 2);
      *v16 = *v6;
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *(v16 + 48) = v17;
      v20 = v8[7];
      v21 = sub_21A2F4A24();
      result = (*(*(v21 - 8) + 32))(v20 + *(*(v21 - 8) + 72) * v15, &v6[v9], v21);
      v22 = v8[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v8[2] = v24;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_21A14D4B8(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for RecipeTimerManager();
  v9 = &off_282B370F8;
  v7[0] = a1;
  *(a2 + 56) = sub_21A14D5D4(MEMORY[0x277D84F90]);
  MEMORY[0x21CED60A0]();
  sub_21A142AEC(v7, a2 + 16);
  v4 = *sub_21A142764(v7, v8);

  sub_21A14D7EC(v5, v4);

  sub_21A14D9A0();
  sub_21A14D9F8();
  sub_21A2F75D4();
  sub_21A142808(v7);
  return a2;
}

unint64_t sub_21A14D5D4(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD034A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD034A8);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD034A0);
      v12 = *(v6 + 1);
      v25[0] = *v6;
      v25[1] = v12;
      v25[2] = *(v6 + 2);
      v26 = v6[48];
      result = sub_21A25A2A0(v25);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6] + 56 * result;
      v17 = v6[48];
      v18 = *(v6 + 1);
      v19 = *(v6 + 2);
      *v16 = *v6;
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *(v16 + 48) = v17;
      v20 = v8[7];
      v21 = type metadata accessor for RecipeTimer();
      result = sub_21A261A6C(&v6[v9], v20 + *(*(v21 - 8) + 72) * v15, type metadata accessor for RecipeTimer);
      v22 = v8[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v8[2] = v24;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_21A14D7EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecipeTimerManager.WeakObserver();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = &off_282B2EE00;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 72);
  os_unfair_lock_lock(v4 + 6);
  sub_21A1D0484();
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_21A14D8A8(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return sub_21A2F5434();
}

uint64_t sub_21A14D8EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A14DA4C(a1, v4, v5, v6);
}

unint64_t sub_21A14D9A0()
{
  result = qword_2811B6DF0;
  if (!qword_2811B6DF0)
  {
    type metadata accessor for RecipeTimersSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B6DF0);
  }

  return result;
}

unint64_t sub_21A14D9F8()
{
  result = qword_2811B6F60;
  if (!qword_2811B6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B6F60);
  }

  return result;
}

uint64_t sub_21A14DA6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeTimersSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A14DAB0()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_21A176C98(&qword_27CD05380);
  *v3 = v0;
  v3[1] = sub_21A14EE3C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x29287372656D6974, 0xE800000000000000, sub_21A14DEA0, v2, v4);
}

unint64_t sub_21A14DBF4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21A14D5D4(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void sub_21A14DC24(uint64_t a1, void *a2)
{
  v4 = sub_21A176C98(&qword_27CD05388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  v9 = [a2 timers];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_21A14EB40;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21A14EAC4;
    aBlock[3] = &unk_282B37290;
    v13 = _Block_copy(aBlock);

    v14 = [v10 addSuccessBlock_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21A14DE0C()
{
  v1 = sub_21A176C98(&qword_27CD05388);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21A14DEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A14DEBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A14DECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A14DEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A14DEEC()
{
  v1 = *v0;
  v2 = *(*sub_21A142764(v1 + 2, v1[5]) + 64);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v2 + 24));
  v1[7] = v3;
}

uint64_t sub_21A14DF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTimer();
  v5 = *(v4 - 1);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v77 = &v67 - v15;
  v16 = sub_21A176C98(&qword_27CCFF1D0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18, v21);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = a1;
  v76 = &v67 - v23;
  v24 = 0;
  v25 = *(a1 + 64);
  v68 = a1 + 64;
  v69 = v20;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v67 = (v26 + 63) >> 6;
  v72 = v4;
  v73 = a2;
  v74 = v5;
  v70 = v9;
  v71 = v13;
  while (v28)
  {
    v78 = (v28 - 1) & v28;
    v32 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_18:
    v37 = *(a1 + 56);
    v38 = *(a1 + 48) + 56 * v32;
    v39 = *v38;
    v40 = *(v38 + 8);
    v42 = *(v38 + 16);
    v41 = *(v38 + 24);
    v43 = *(v38 + 32);
    v44 = *(v38 + 40);
    v45 = *(v38 + 48);
    v46 = v77;
    sub_21A192A48(v37 + *(v5 + 72) * v32, v77, type metadata accessor for RecipeTimer);
    v47 = sub_21A176C98(&qword_27CCFF1D8);
    v48 = *(v47 + 48);
    v49 = v69;
    *v69 = v39;
    *(v49 + 1) = v40;
    *(v49 + 2) = v42;
    *(v49 + 3) = v41;
    *(v49 + 4) = v43;
    *(v49 + 5) = v44;
    v49[48] = v45;
    v50 = v46;
    v20 = v49;
    sub_21A192BB0(v50, &v49[v48], type metadata accessor for RecipeTimer);
    (*(*(v47 - 8) + 56))(v20, 0, 1, v47);
    sub_21A18BD3C();
    v4 = v72;
    a2 = v73;
    v9 = v70;
    v13 = v71;
LABEL_19:
    v51 = v76;
    sub_21A149B18(v20, v76, &qword_27CCFF1D0);
    v52 = sub_21A176C98(&qword_27CCFF1D8);
    v53 = (*(*(v52 - 8) + 48))(v51, 1, v52);
    v54 = v53 == 1;
    if (v53 == 1)
    {
      return v54;
    }

    v55 = *(v52 + 48);
    v56 = *(v51 + 16);
    v79[0] = *v51;
    v79[1] = v56;
    v79[2] = *(v51 + 32);
    v80 = *(v51 + 48);
    sub_21A192BB0(v51 + v55, v13, type metadata accessor for RecipeTimer);
    v57 = sub_21A25A2A0(v79);
    v59 = v58;
    sub_21A192AB0(v79);
    if ((v59 & 1) == 0)
    {
      goto LABEL_33;
    }

    v5 = v74;
    sub_21A192A48(*(a2 + 56) + *(v74 + 72) * v57, v9, type metadata accessor for RecipeTimer);
    sub_21A192B64();
    v60 = sub_21A2F7E74();
    a1 = v75;
    if ((v60 & 1) == 0 || (_s10CookingKit12ContinuationV2eeoiySbACyxG_AEtFZ_0() & 1) == 0 || v9[v4[6]] != v13[v4[6]])
    {
      goto LABEL_32;
    }

    v61 = v4[7];
    v62 = &v9[v61];
    v63 = *&v9[v61 + 8];
    v64 = &v13[v61];
    v65 = *(v64 + 1);
    if (v63)
    {
      if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_21A2F8394() & 1) == 0)
      {
LABEL_32:
        sub_21A192B04(v9, type metadata accessor for RecipeTimer);
LABEL_33:
        sub_21A192B04(v13, type metadata accessor for RecipeTimer);
        return 0;
      }
    }

    else if (v65)
    {
      goto LABEL_32;
    }

    v29 = v4[8];
    v30 = *&v9[v29];
    v31 = *&v13[v29];
    sub_21A192B04(v9, type metadata accessor for RecipeTimer);
    result = sub_21A192B04(v13, type metadata accessor for RecipeTimer);
    v28 = v78;
    if (v30 != v31)
    {
      return v54;
    }
  }

  if (v67 <= v24 + 1)
  {
    v33 = v24 + 1;
  }

  else
  {
    v33 = v67;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v35 >= v67)
    {
      v66 = sub_21A176C98(&qword_27CCFF1D8);
      (*(*(v66 - 8) + 56))(v20, 1, 1, v66);
      v78 = 0;
      v24 = v34;
      goto LABEL_19;
    }

    v36 = *(v68 + 8 * v35);
    ++v24;
    if (v36)
    {
      v78 = (v36 - 1) & v36;
      v32 = __clz(__rbit64(v36)) | (v35 << 6);
      v24 = v35;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A14E54C@<X0>(_BYTE *a1@<X8>)
{
  sub_21A14E5B0();
  sub_21A14E604();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

unint64_t sub_21A14E5B0()
{
  result = qword_2811B3CA8;
  if (!qword_2811B3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CA8);
  }

  return result;
}

unint64_t sub_21A14E604()
{
  result = qword_2811B7B88;
  if (!qword_2811B7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B7B88);
  }

  return result;
}

uint64_t sub_21A14E658@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for OfflineStatusSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A14EA40(&qword_2811B6C48);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A14E6E4(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CD01808);
  sub_21A2F51B4();
  type metadata accessor for OfflineStatusSource();
  swift_allocObject();
  return sub_21A14E768(v2);
}

uint64_t sub_21A14E768(uint64_t a1)
{
  v2 = v1;
  sub_21A176C98(&qword_27CCFEB08);
  v4 = MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  *(v1 + 16) = 1;
  MEMORY[0x21CED60A0](v4);
  sub_21A14E9D0(a1, v1 + 24);
  sub_21A14E9D0(a1, &v13);
  if (v14)
  {
    sub_21A14274C(&v13, v15);
    v7 = sub_21A2F7C64();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_21A142AEC(v15, &v13);
    sub_21A2F7C34();

    v9 = sub_21A2F7C24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    sub_21A14274C(&v13, (v10 + 4));
    v10[9] = v8;

    sub_21A199D08(0, 0, v6, &unk_21A308AC8, v10);

    sub_21A22F9A0(a1);
    sub_21A142808(v15);
  }

  else
  {
    sub_21A22F9A0(a1);
    sub_21A22F9A0(&v13);
  }

  return v2;
}

uint64_t sub_21A14E950()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A14E988()
{
  swift_unknownObjectRelease();
  sub_21A142808(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21A14E9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD024B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A14EA40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OfflineStatusSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21A14EACC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21A14EB40()
{
  sub_21A176C98(&qword_27CD05388);

  return sub_21A14EC60();
}

uint64_t sub_21A14EBC0()
{
  sub_21A14E9D0(v0 + 24, &v4);
  if (!v5)
  {
    return sub_21A22F9A0(&v4);
  }

  sub_21A14274C(&v4, v6);
  v1 = v7;
  v2 = v8;
  sub_21A142764(v6, v7);
  (*(v2 + 16))(&v4, v1, v2);
  *(v0 + 16) = v4;
  return sub_21A142808(v6);
}

uint64_t sub_21A14EC60()
{
  sub_21A141A6C(0, &qword_2811B3BC8);
  sub_21A2F7B14();
  sub_21A176C98(&qword_27CD05388);
  return sub_21A2F7BF4();
}

uint64_t sub_21A14EE3C()
{

  return MEMORY[0x2822009F8](sub_21A14EF6C, 0, 0);
}

uint64_t sub_21A14EF6C()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = v2;
  sub_21A142764((v1 + 16), *(v1 + 40));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21A15104C;

  return sub_21A14F0C4(v2);
}

uint64_t storeEnumTagSinglePayload for RecipeCardQuickLinksViewModel.Placement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21A14F0C4(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_21A176C98(&qword_27CD01110);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for RecipeTimer();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  sub_21A176C98(&qword_27CD01118);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = sub_21A2F4A24();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A14F28C, v1, 0);
}

unint64_t sub_21A14F28C()
{
  v1 = v0[23];
  v2 = sub_21A14F678(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v0[23] + 32);
    v5 = v0[34];
    do
    {
      v8 = v0[37];
      v9 = *v4;
      v10 = [v9 timerID];
      sub_21A2F49F4();

      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_21A14F870(v8);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v19 = v14;
      if (v2[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = result;
          sub_21A2B888C();
          result = v27;
        }
      }

      else
      {
        v20 = v0[37];
        sub_21A14FBCC(v18, isUniquelyReferenced_nonNull_native);
        result = sub_21A14F870(v20);
        if ((v19 & 1) != (v21 & 1))
        {

          return sub_21A2F83D4();
        }
      }

      v22 = v0[37];
      v23 = v0[33];
      if (v19)
      {
        v6 = v2[7];
        v7 = *(v6 + 8 * result);
        *(v6 + 8 * result) = v11;

        (*(v5 + 8))(v22, v23);
      }

      else
      {
        v2[(result >> 6) + 8] |= 1 << result;
        v24 = result;
        (*(v5 + 16))(v2[6] + *(v5 + 72) * result, v22, v23);
        *(v2[7] + 8 * v24) = v11;

        result = (*(v5 + 8))(v22, v23);
        v25 = v2[2];
        v17 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v17)
        {
          goto LABEL_21;
        }

        v2[2] = v26;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  v0[38] = v2;
  v28 = swift_task_alloc();
  v0[39] = v28;
  *v28 = v0;
  v28[1] = sub_21A1502DC;

  return sub_21A14FFA8();
}

uint64_t getEnumTagSinglePayload for RecipeCardQuickLinksViewModel.Placement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21A14F5D4(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(qword_27CD01628);
  sub_21A2F51B4();
  type metadata accessor for AnalyticsUserInteractionEventHandler();
  v1 = swift_allocObject();
  MEMORY[0x21CED60A0]();
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  return v1;
}

unint64_t sub_21A14F678(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD03510);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD03508);
      result = sub_21A14F870(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_21A2F4A24();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_21A14F870(uint64_t a1)
{
  sub_21A2F4A24();
  v2 = MEMORY[0x277CC95F0];
  sub_21A14F98C(&qword_2811B3DB8, MEMORY[0x277CC95F0]);
  v3 = sub_21A2F77F4();
  return sub_21A14F9D8(a1, v3, MEMORY[0x277CC95F0], &qword_27CD03500, v2, MEMORY[0x277CC9610]);
}

uint64_t sub_21A14F944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A14F98C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A14F9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_21A14F98C(v24, v25);
      v20 = sub_21A2F7874();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_21A14FB78()
{
  result = qword_2811B6290;
  if (!qword_2811B6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B6290);
  }

  return result;
}

uint64_t sub_21A14FBCC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21A2F4A24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21A176C98(&qword_27CD03510);
  v40 = a2;
  result = sub_21A2F8184();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_21A149260(&qword_2811B3DB8, MEMORY[0x277CC95F0]);
      result = sub_21A2F77F4();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_21A14FFA8()
{
  *(v1 + 32) = v0;
  sub_21A176C98(&qword_27CCFEB08);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A150044, v0, 0);
}

uint64_t sub_21A150044()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  v0[6] = v2;
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {
      sub_21A2F5434();

      v3 = v0[1];

      return v3(v2);
    }

    v8 = v0[5];
    v9 = sub_21A2F7C64();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v11 = sub_21A14CD04(qword_2811B74B8, v10, type metadata accessor for RecipeTimerStore);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    swift_retain_n();
    v2 = sub_21A19A5F8(0, 0, v8, &unk_21A302F80, v12);
    v0[8] = v2;
    v13 = *(v1 + 120);
    *(v1 + 120) = v2;
    LOBYTE(v12) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v13, v12);
    v14 = swift_task_alloc();
    v0[9] = v14;
    v6 = sub_21A176C98(&qword_27CCFF380);
    *v14 = v0;
    v14[1] = sub_21A1F6ACC;
    v7 = v0 + 3;
  }

  else
  {

    v5 = swift_task_alloc();
    v0[7] = v5;
    v6 = sub_21A176C98(&qword_27CCFF380);
    *v5 = v0;
    v5[1] = sub_21A1F6948;
    v7 = v0 + 2;
  }

  return MEMORY[0x282200460](v7, v2, v6);
}

uint64_t sub_21A1502DC(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_21A1503F4, v2, 0);
}

void sub_21A1503F4()
{
  v105 = v0;
  v1 = v0[40];
  v97 = v0[38];
  v2 = v0[34];
  v90 = v0[31];
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v87 = v0[27];
  v88 = v0[26];
  v7 = v0;
  v8 = (63 - v5) >> 6;
  v103 = (v2 + 32);
  v91 = v0[34];
  v92 = v0[40];
  v96 = (v2 + 8);
  sub_21A2F5434();
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v94 = v8;
  v95 = v3;
  v93 = v7;
LABEL_4:
  v89 = v10;
  v7[41] = v10;
  while (1)
  {
    if (!v6)
    {
      if (v8 <= v9 + 1)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = v8;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v13 >= v8)
        {
          v36 = v7[31];
          v37 = sub_21A176C98(&qword_27CD01120);
          (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
          v6 = 0;
          v9 = v15;
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v13);
        ++v9;
        if (v6)
        {
          v9 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

    v13 = v9;
LABEL_16:
    v98 = v7[36];
    v16 = v7[33];
    v17 = v7[31];
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(v92 + 48) + 56 * (v18 | (v13 << 6));
    v20 = *v19;
    v100 = *(v19 + 8);
    v21 = *(v19 + 16);
    v101 = *(v19 + 24);
    v23 = *(v19 + 32);
    v22 = *(v19 + 40);
    v99 = *(v19 + 48);
    (*(v91 + 16))();
    v24 = sub_21A176C98(&qword_27CD01120);
    v25 = *(v24 + 48);
    *v17 = v20;
    *(v90 + 8) = v100;
    *(v90 + 16) = v21;
    *(v90 + 24) = v101;
    *(v90 + 32) = v23;
    *(v90 + 40) = v22;
    *(v90 + 48) = v99;
    (*(v91 + 32))(&v17[v25], v98, v16);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    v7 = v93;
    sub_21A18BD3C();
    v8 = v94;
    v3 = v95;
LABEL_17:
    v26 = v7[32];
    sub_21A150CC8(v7[31], v26);
    v27 = sub_21A176C98(&qword_27CD01120);
    if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
    {
      break;
    }

    v28 = v7[35];
    v30 = v7[32];
    v29 = v7[33];
    v32 = *(v30 + 16);
    v31 = *(v30 + 32);
    v33 = *(v30 + 48);
    *(v7 + 9) = *v30;
    *(v7 + 120) = v33;
    *(v7 + 13) = v31;
    *(v7 + 11) = v32;
    (*v103)(v28, v30 + *(v27 + 48), v29);
    if (*(v97 + 16))
    {
      v34 = sub_21A14F870(v7[35]);
      if (v35)
      {
        v38 = v7[35];
        v39 = v7[33];
        v40 = v7[29];
        v41 = *v96;
        v42 = *(*(v97 + 56) + 8 * v34);
        v41(v38, v39);
        *v40 = v42;
        v43 = v42;
        v44 = [v43 timerID];
        sub_21A2F49F4();

        v45 = [v43 state];
        v46 = v45 == 2;
        if (v45 == 3)
        {
          v46 = 2;
        }

        *(v40 + v88[6]) = v46;
        v102 = v43;
        v47 = [v43 title];
        if (v47)
        {
          v48 = v47;
          v49 = sub_21A2F78E4();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0;
        }

        v53 = v7[29];
        v52 = v7[30];
        v54 = v7[28];
        v55 = (v53 + v88[7]);
        *v55 = v49;
        v55[1] = v51;
        [v102 duration];
        v57 = v56;

        *(v53 + v88[8]) = v57;
        sub_21A1D04B4(v53, v52);
        sub_21A1D04B4(v52, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v89;
        v59 = sub_21A25A2A0((v7 + 9));
        v61 = v89[2];
        v62 = (v60 & 1) == 0;
        v63 = __OFADD__(v61, v62);
        v64 = v61 + v62;
        if (v63)
        {
          __break(1u);
        }

        else
        {
          v65 = v60;
          if (v89[3] >= v64)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_32;
            }

            v70 = v59;
            sub_21A2B808C();
            v59 = v70;
            v67 = v7[28];
            if ((v65 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_33:
            v68 = v59;
            sub_21A192AB0((v7 + 9));
            v69 = v104[7] + *(v87 + 72) * v68;
            v10 = v104;
            sub_21A202558(v67, v69);

LABEL_37:
            v8 = v94;
            v3 = v95;
            goto LABEL_4;
          }

          sub_21A26E594(v64, isUniquelyReferenced_nonNull_native);
          v59 = sub_21A25A2A0((v7 + 9));
          if ((v65 & 1) != (v66 & 1))
          {
LABEL_52:

            sub_21A2F83D4();
            return;
          }

LABEL_32:
          v67 = v7[28];
          if (v65)
          {
            goto LABEL_33;
          }

LABEL_35:
          v10 = v104;
          v104[(v59 >> 6) + 8] |= 1 << v59;
          v71 = v10[6] + 56 * v59;
          v72 = *(v7 + 120);
          v73 = *(v7 + 13);
          v74 = *(v7 + 11);
          *v71 = *(v7 + 9);
          *(v71 + 16) = v74;
          *(v71 + 32) = v73;
          *(v71 + 48) = v72;
          sub_21A1D04B4(v67, v10[7] + *(v87 + 72) * v59);

          v75 = v10[2];
          v63 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (!v63)
          {
            v10[2] = v76;
            goto LABEL_37;
          }
        }

        __break(1u);
        return;
      }
    }

    v11 = v7[35];
    v12 = v7[33];
    sub_21A192AB0((v7 + 9));
    (*v96)(v11, v12);
  }

  v77 = v7[40];

  v78 = sub_21A150D80(v77);
  v79 = sub_21A2F5434();
  v80 = sub_21A150D80(v79);
  if (*(v80 + 16) <= v78[2] >> 3)
  {
    goto LABEL_42;
  }

  v81 = sub_21A2DDBFC(v80, v78);

  v82 = *(v81 + 16);
  if (v82)
  {
    while (1)
    {
      v78 = sub_21A188D1C(v82, 0);
      v83 = sub_21A18BB0C(&v104, (v78 + 4), v82, v81);
      v80 = sub_21A14B2F8();
      if (v83 == v82)
      {
        break;
      }

      __break(1u);
LABEL_42:
      v104 = v78;
      sub_21A150F1C(v80);

      v81 = v104;
      v82 = v104[2];
      if (!v82)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:

    v78 = MEMORY[0x277D84F90];
  }

  v7[42] = v78;
  if (v78[2])
  {
    v84 = swift_task_alloc();
    v7[43] = v84;
    *v84 = v7;
    v84[1] = sub_21A202F20;

    sub_21A14FFA8();
  }

  else
  {

    v85 = v7[1];
    v86 = v7[41];

    v85(v86);
  }
}

uint64_t sub_21A150C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A150CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD01118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A150D38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_21A150D88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21A150EC8();
  result = MEMORY[0x21CED6780](v2, &type metadata for RecipeTimerKey, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v18 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(a1 + 48) + 56 * (v12 | (v11 << 6));
      v15 = *(v13 + 16);
      v14 = *(v13 + 32);
      v16 = *v13;
      v20 = *(v13 + 48);
      v19[1] = v15;
      v19[2] = v14;
      v19[0] = v16;
      sub_21A199798(v19, &v17);
      sub_21A2BA044(&v17, v19);
      result = sub_21A1997F4();
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v18;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A150EC8()
{
  result = qword_2811B7810[0];
  if (!qword_2811B7810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B7810);
  }

  return result;
}

uint64_t sub_21A150F1C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_21A2F5434();
    for (i = 0; v6; result = sub_21A2E0274(v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v16))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 56 * (v10 | (v9 << 6));
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      v18 = *(v11 + 48);
      v17[1] = v13;
      v17[2] = v12;
      v17[0] = v14;
      sub_21A199798(v17, v15);
      sub_21A2BE888(v17, v15);
      sub_21A192AB0(v17);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A15104C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_21A15116C, 0, 0);
}

uint64_t sub_21A15116C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = *(v2 + 64);
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_21A14D8A8;
  *(v5 + 24) = v3;
  os_unfair_lock_lock(v4 + 6);
  sub_21A2F06E4(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);

  sub_21A151288();
  v6 = v0[1];

  return v6();
}

uint64_t sub_21A151288()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = *(v0 + 72);
  os_unfair_lock_lock((v6 + 24));
  sub_21A2F0338((v6 + 16), &v14);
  v7 = v14;
  os_unfair_lock_unlock((v6 + 24));
  v8 = sub_21A2F7C64();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_21A2F7C34();

  v9 = sub_21A2F7C24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v1;
  sub_21A199D08(0, 0, v5, &unk_21A3169C8, v10);
}

uint64_t sub_21A1513D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t static CookingRoot.shared.getter(uint64_t a1, uint64_t a2)
{
  if (qword_2811B81B8 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_2811B81C0;
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock((v2 + 24));
  sub_21A1514D4((v2 + 16), &v4);
  os_unfair_lock_unlock((v2 + 24));
  return v4;
}

uint64_t sub_21A1514F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    sub_21A2F5434();
    sub_21A2F5434();
    v7 = sub_21A2DA62C(a2, a3);
    *a1 = v7;
  }

  *a4 = v7;
}

Swift::Void __swiftcall Scope.configureWindowScopeForCookingKit()()
{
  v0 = sub_21A2F7704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimerUserInteractionEventHandler();
  sub_21A142FF4(&qword_2811B45D8, type metadata accessor for TimerUserInteractionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionEventHandler();
  sub_21A142FF4(qword_2811B8450, type metadata accessor for CookingSessionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionsObservationRule();
  sub_21A142FF4(&qword_2811B82F8, type metadata accessor for CookingSessionsObservationRule);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionsPersistenceCommandHandler();
  sub_21A142FF4(&qword_2811B8258, type metadata accessor for CookingSessionsPersistenceCommandHandler);
  sub_21A2F76E4();
  type metadata accessor for UserInteractionEventHandler();
  sub_21A142FF4(&qword_2811B4CF8, type metadata accessor for UserInteractionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for RecipeCardViewEventHandler();
  sub_21A142FF4(&qword_2811B54F0, type metadata accessor for RecipeCardViewEventHandler);
  sub_21A2F76E4();
  swift_getKeyPath();
  sub_21A2F76C4();

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_21A151848(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = swift_allocObject();
  MEMORY[0x21CED60A0]();
  return v2;
}

unint64_t sub_21A1518C8()
{
  result = qword_2811B56E8[0];
  if (!qword_2811B56E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B56E8);
  }

  return result;
}

uint64_t sub_21A151930(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F7614();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A1519B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F7614();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

unint64_t sub_21A151A34()
{
  result = qword_2811B8A28[0];
  if (!qword_2811B8A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B8A28);
  }

  return result;
}

uint64_t sub_21A151A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD03E98);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A2F7614();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A151BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD03E98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A2F7614();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_21A151D0C()
{
  result = qword_2811B3CD8;
  if (!qword_2811B3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3CD8);
  }

  return result;
}

unint64_t sub_21A151D60()
{
  result = qword_2811B3E90[0];
  if (!qword_2811B3E90[0])
  {
    sub_21A176D98(&qword_27CCFE990);
    sub_21A142FF4(qword_2811B80E8, type metadata accessor for CookingSession);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B3E90);
  }

  return result;
}

uint64_t sub_21A151E14@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CookingSessionsSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A1525E0(&qword_2811B8768, type metadata accessor for CookingSessionsSource);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A151EB4(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAB8);
  result = sub_21A2F51B4();
  if (v3)
  {
    type metadata accessor for CookingSessionsSource();
    swift_allocObject();
    return sub_21A151FAC(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A151FAC(uint64_t a1)
{
  MEMORY[0x21CED60A0]();
  swift_getKeyPath();
  sub_21A2F75B4();
  type metadata accessor for CookingSession();
  sub_21A1525E0(&qword_2811B80E0, type metadata accessor for CookingSession);
  KeyPath = swift_getKeyPath();
  v4 = sub_21A15275C(KeyPath, MEMORY[0x277D84F90]);

  *(v1 + 16) = v4;
  sub_21A142AEC(a1, v1 + OBJC_IVAR____TtC10CookingKit21CookingSessionsSource_cookingSessionsManager);
  type metadata accessor for CookingSessionCommand(0);
  sub_21A1525E0(&qword_2811B8760, type metadata accessor for CookingSessionsSource);
  sub_21A1525E0(qword_2811B8818, type metadata accessor for CookingSessionCommand);
  sub_21A2F75D4();
  sub_21A153AA4();
  sub_21A2F75D4();
  sub_21A153CDC();
  sub_21A2F75D4();
  sub_21A142808(a1);
  return v1;
}

__n128 sub_21A152210(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21A152220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A1522D4(a1, v4, v5, v6);
}

uint64_t sub_21A1522D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_21A176C98(&qword_27CCFEB08);
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A152374, a4, 0);
}

uint64_t sub_21A152374()
{
  v1 = v0[4];
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {

      v2 = v0[1];

      return v2();
    }

    v8 = v0[5];
    v9 = sub_21A2F7C64();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v11 = sub_21A152670(qword_2811B8690, v10, type metadata accessor for CookingSessionsManager);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    swift_retain_n();
    v13 = sub_21A19A008(0, 0, v8, &unk_21A302828, v12);
    v0[8] = v13;
    v14 = *(v1 + 120);
    *(v1 + 120) = v13;
    LOBYTE(v12) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v14, v12);
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_21A147964;
    v6 = v0 + 3;
    v7 = v13;
  }

  else
  {
    v4 = *(v1 + 120);
    v0[6] = v4;

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_21A1F6C4C;
    v6 = v0 + 2;
    v7 = v4;
  }

  return MEMORY[0x282200460](v6, v7, &type metadata for PersistentCookingSessions);
}