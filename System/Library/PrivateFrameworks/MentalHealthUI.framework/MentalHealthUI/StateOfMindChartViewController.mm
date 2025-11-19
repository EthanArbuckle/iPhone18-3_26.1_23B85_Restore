@interface StateOfMindChartViewController
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15;
- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13;
- (void)didTapOnDateFromCurrentValueView:(id)a3;
@end

@implementation StateOfMindChartViewController

- (void)didTapOnDateFromCurrentValueView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_258A3DC44();
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12
{
  v41 = a9;
  v42 = self;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - v20;
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v39 - v24;
  if (a10)
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

  v40 = a12;
  if (a11)
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
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v41;
  v37 = sub_258A3E184(v30, v31, v32, v33, v34, v35, v36, v25, v21, v40);

  return v37;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13
{
  v44 = self;
  v42 = a8;
  v43 = a10;
  v40 = a7;
  v41 = a9;
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
  if (a11)
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

  v38 = a13;
  if (a12)
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
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v40;
  v32 = v42;
  v33 = v41;
  v34 = v43;
  v35 = sub_258A3E484(v39, v28, v29, v30, v31, v32, v33, v34, v23, v19, v38);

  return v35;
}

- (_TtC14MentalHealthUI30StateOfMindChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15
{
  v54 = self;
  v56 = a9;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v51 - v22;
  sub_258A3EF38();
  v53 = sub_258B02C74();
  if (a5)
  {
    sub_2589F4488(0, &qword_27F96F0C8, 0x277D12908);
    v52 = sub_258B02C74();
  }

  else
  {
    v52 = 0;
  }

  v55 = a7;
  if (a12)
  {
    v24 = a4;
    v25 = a6;
    v26 = a7;
    v27 = a8;
    v28 = v56;
    v29 = a10;
    v30 = a11;
    swift_unknownObjectRetain();
    v31 = a13;
    v32 = a15;
    sub_258B03104();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v57, 0, sizeof(v57));
    v33 = a4;
    v34 = a6;
    v35 = a7;
    v36 = a8;
    v37 = v56;
    v38 = a10;
    v39 = a11;
    v40 = a13;
    v41 = a15;
  }

  if (a13)
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

  if (a15)
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
  v45 = v55;
  v46 = v56;
  v47 = sub_258A3E7E8(v53, a4, v52, a6, v55, a8, v56, a10, a11, v57, v49, a14, v50);

  return v47;
}

@end