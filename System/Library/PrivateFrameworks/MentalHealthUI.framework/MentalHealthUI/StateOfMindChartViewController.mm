@interface StateOfMindChartViewController
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3;
- (void)didTapOnDateFromCurrentValueView:(id)view;
@end

@implementation StateOfMindChartViewController

- (void)didTapOnDateFromCurrentValueView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_258A3DC44();
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2
{
  rangeControllerCopy = rangeController;
  selfCopy = self;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - v20;
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v39 - v24;
  if (value)
  {
    sub_258B00034();
    v26 = sub_258B00084();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v27 = sub_258B00084();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  optionsCopy = options;
  if (override)
  {
    sub_258B001A4();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_258B00224();
  (*(*(v29 - 8) + 56))(v21, v28, 1, v29);
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  cacheCopy = cache;
  cacheControllerCopy = cacheController;
  scopeControllerCopy = scopeController;
  v36 = rangeControllerCopy;
  v37 = sub_258A3E184(storeCopy, typeCopy, controllerCopy, cacheCopy, cacheControllerCopy, scopeControllerCopy, v36, v25, v21, optionsCopy);

  return v37;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3
{
  selfCopy = self;
  cacheControllerCopy = cacheController;
  rangeControllerCopy = rangeController;
  cacheCopy = cache;
  scopeControllerCopy = scopeController;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
  sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
  sub_258A3EFA0();
  v39 = sub_258B029F4();
  if (value)
  {
    sub_258B00034();
    v24 = sub_258B00084();
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    v25 = sub_258B00084();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  optionsCopy = options;
  if (override)
  {
    sub_258B001A4();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_258B00224();
  (*(*(v27 - 8) + 56))(v19, v26, 1, v27);
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  v31 = cacheCopy;
  v32 = cacheControllerCopy;
  v33 = scopeControllerCopy;
  v34 = rangeControllerCopy;
  v35 = sub_258A3E484(v39, storeCopy, typeCopy, controllerCopy, v31, v32, v33, v34, v23, v19, optionsCopy);

  return v35;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5
{
  selfCopy = self;
  cacheControllerCopy = cacheController;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v51 - v22;
  sub_258A3EF38();
  v53 = sub_258B02C74();
  if (heights)
  {
    sub_2589F4488(0, &qword_27F96F0C8, 0x277D12908);
    v52 = sub_258B02C74();
  }

  else
  {
    v52 = 0;
  }

  controllerCopy = controller;
  if (value)
  {
    indexCopy = index;
    storeCopy = store;
    controllerCopy2 = controller;
    cacheCopy = cache;
    v28 = cacheControllerCopy;
    scopeControllerCopy = scopeController;
    rangeControllerCopy = rangeController;
    swift_unknownObjectRetain();
    overrideCopy = override;
    rangesCopy = ranges;
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v57, 0, sizeof(v57));
    indexCopy2 = index;
    storeCopy2 = store;
    controllerCopy3 = controller;
    cacheCopy2 = cache;
    v37 = cacheControllerCopy;
    scopeControllerCopy2 = scopeController;
    rangeControllerCopy2 = rangeController;
    overrideCopy2 = override;
    rangesCopy2 = ranges;
  }

  if (override)
  {
    sub_258B001A4();

    v42 = sub_258B00224();
    (*(*(v42 - 8) + 56))(v23, 0, 1, v42);
  }

  else
  {
    v43 = sub_258B00224();
    (*(*(v43 - 8) + 56))(v23, 1, 1, v43);
  }

  if (ranges)
  {
    sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
    sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
    sub_258A3EFA0();
    v44 = sub_258B029F4();
  }

  else
  {
    v44 = 0;
  }

  v50 = v44;
  v49 = v23;
  v45 = controllerCopy;
  v46 = cacheControllerCopy;
  v47 = sub_258A3E7E8(v53, index, v52, store, controllerCopy, cache, cacheControllerCopy, scopeController, rangeController, v57, v49, options, v50);

  return v47;
}

@end