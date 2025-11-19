@interface HKCategoricalDateAxis
+ (double)_categoryLocationMinutesForCategoryCount:(int64_t)a3;
+ (id)datePositionForCategoryIndex:(int64_t)a3 categoryCount:(int64_t)a4 startDate:(id)a5 calendar:(id)a6;
- (HKCategoricalDateAxis)initWithCurrentCalendar:(id)a3 axisStyle:(id)a4 categoryTitles:(id)a5;
- (id)nextDateForDate:(id)a3 components:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6;
- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5;
@end

@implementation HKCategoricalDateAxis

- (HKCategoricalDateAxis)initWithCurrentCalendar:(id)a3 axisStyle:(id)a4 categoryTitles:(id)a5
{
  v9 = a5;
  v18.receiver = self;
  v18.super_class = HKCategoricalDateAxis;
  v10 = [(HKDateAxis *)&v18 initWithCurrentCalendar:a3 axisStyle:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryTitles, a5);
    +[HKCategoricalDateAxis _categoryStartLocationMinutesForCategoryCount:](HKCategoricalDateAxis, "_categoryStartLocationMinutesForCategoryCount:", [v9 count]);
    v11->_categoriesStartMinutePosition = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
    minorAxisIntervalComponents = v11->_minorAxisIntervalComponents;
    v11->_minorAxisIntervalComponents = v13;

    [(NSDateComponents *)v11->_minorAxisIntervalComponents setMinute:v11->_categoriesStartMinutePosition];
    v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
    majorAxisIntervalComponents = v11->_majorAxisIntervalComponents;
    v11->_majorAxisIntervalComponents = v15;

    [(NSDateComponents *)v11->_majorAxisIntervalComponents setMinute:(v11->_categoriesStartMinutePosition + v11->_categoriesStartMinutePosition)];
  }

  return v11;
}

- (id)nextDateForDate:(id)a3 components:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v11 dateByAddingComponents:v10 toDate:v9 options:0];
  v13 = [v11 components:126 fromDate:v12];
  v14 = [v13 hour];
  v15 = [v13 minute] + 60 * v14;
  if (!(v15 % [v10 minute]))
  {
    v24 = v12;
    goto LABEL_9;
  }

  v16 = [v11 startOfDayForDate:v9];
  v29 = [v11 hk_dateByAddingDays:1 toDate:v16];
  [v29 timeIntervalSinceDate:v16];
  v18 = v17;
  v19 = [v10 minute];
  v20 = [(HKCategoricalDateAxis *)self minorAxisIntervalComponents];
  v21 = [v20 minute];

  if (v19 == v21)
  {
    v22 = [(HKCategoricalDateAxis *)self categoryTitles];
    v23 = v18 / [v22 count] * 0.5;
LABEL_7:

    goto LABEL_8;
  }

  v25 = [v10 minute];
  v26 = [(HKCategoricalDateAxis *)self majorAxisIntervalComponents];
  v27 = [v26 minute];

  v23 = 0.0;
  if (v25 == v27)
  {
    v22 = [(HKCategoricalDateAxis *)self categoryTitles];
    v23 = v18 / [v22 count];
    goto LABEL_7;
  }

LABEL_8:
  v24 = [v9 dateByAddingTimeInterval:v23];

LABEL_9:

  return v24;
}

- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5
{
  v8 = a3;
  v9 = [(HKCategoricalDateAxis *)self canAddLabelForAxisLabelType:a5];
  v10 = 0;
  if (a4 == 6 && v9)
  {
    v11 = [(HKCategoricalDateAxis *)self categoryTitles];
    v12 = [v11 count];

    v13 = [(HKDateAxis *)self currentCalendar];
    v14 = [v13 startOfDayForDate:v8];

    if (v12 < 1)
    {
LABEL_7:
      v10 = 0;
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = [(HKDateAxis *)self currentCalendar];
        v17 = [HKCategoricalDateAxis datePositionForCategoryIndex:v15 categoryCount:v12 startDate:v14 calendar:v16];

        if ([v8 isEqual:v17])
        {
          break;
        }

        if (v12 == ++v15)
        {
          goto LABEL_7;
        }
      }

      v18 = [(HKCategoricalDateAxis *)self categoryTitles];
      v10 = [v18 objectAtIndexedSubscript:v15];
    }
  }

  return v10;
}

+ (id)datePositionForCategoryIndex:(int64_t)a3 categoryCount:(int64_t)a4 startDate:(id)a5 calendar:(id)a6
{
  v9 = a5;
  v10 = [a6 hk_dateByAddingDays:1 toDate:v9];
  [v10 timeIntervalSinceDate:v9];
  v12 = [v9 dateByAddingTimeInterval:v11 / a4 * 0.5 + a3 * (v11 / a4)];

  return v12;
}

+ (double)_categoryLocationMinutesForCategoryCount:(int64_t)a3
{
  v4 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  [v4 canonicalSize];
  v6 = v5;

  return v6 / a3 / 60.0;
}

@end