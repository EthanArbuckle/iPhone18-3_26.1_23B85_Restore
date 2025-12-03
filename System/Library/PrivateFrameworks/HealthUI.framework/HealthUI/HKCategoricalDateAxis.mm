@interface HKCategoricalDateAxis
+ (double)_categoryLocationMinutesForCategoryCount:(int64_t)count;
+ (id)datePositionForCategoryIndex:(int64_t)index categoryCount:(int64_t)count startDate:(id)date calendar:(id)calendar;
- (HKCategoricalDateAxis)initWithCurrentCalendar:(id)calendar axisStyle:(id)style categoryTitles:(id)titles;
- (id)nextDateForDate:(id)date components:(id)components timeScope:(int64_t)scope calendar:(id)calendar;
- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type;
@end

@implementation HKCategoricalDateAxis

- (HKCategoricalDateAxis)initWithCurrentCalendar:(id)calendar axisStyle:(id)style categoryTitles:(id)titles
{
  titlesCopy = titles;
  v18.receiver = self;
  v18.super_class = HKCategoricalDateAxis;
  v10 = [(HKDateAxis *)&v18 initWithCurrentCalendar:calendar axisStyle:style];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryTitles, titles);
    +[HKCategoricalDateAxis _categoryStartLocationMinutesForCategoryCount:](HKCategoricalDateAxis, "_categoryStartLocationMinutesForCategoryCount:", [titlesCopy count]);
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

- (id)nextDateForDate:(id)date components:(id)components timeScope:(int64_t)scope calendar:(id)calendar
{
  dateCopy = date;
  componentsCopy = components;
  calendarCopy = calendar;
  v12 = [calendarCopy dateByAddingComponents:componentsCopy toDate:dateCopy options:0];
  v13 = [calendarCopy components:126 fromDate:v12];
  hour = [v13 hour];
  v15 = [v13 minute] + 60 * hour;
  if (!(v15 % [componentsCopy minute]))
  {
    v24 = v12;
    goto LABEL_9;
  }

  v16 = [calendarCopy startOfDayForDate:dateCopy];
  v29 = [calendarCopy hk_dateByAddingDays:1 toDate:v16];
  [v29 timeIntervalSinceDate:v16];
  v18 = v17;
  minute = [componentsCopy minute];
  minorAxisIntervalComponents = [(HKCategoricalDateAxis *)self minorAxisIntervalComponents];
  minute2 = [minorAxisIntervalComponents minute];

  if (minute == minute2)
  {
    categoryTitles = [(HKCategoricalDateAxis *)self categoryTitles];
    v23 = v18 / [categoryTitles count] * 0.5;
LABEL_7:

    goto LABEL_8;
  }

  minute3 = [componentsCopy minute];
  majorAxisIntervalComponents = [(HKCategoricalDateAxis *)self majorAxisIntervalComponents];
  minute4 = [majorAxisIntervalComponents minute];

  v23 = 0.0;
  if (minute3 == minute4)
  {
    categoryTitles = [(HKCategoricalDateAxis *)self categoryTitles];
    v23 = v18 / [categoryTitles count];
    goto LABEL_7;
  }

LABEL_8:
  v24 = [dateCopy dateByAddingTimeInterval:v23];

LABEL_9:

  return v24;
}

- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type
{
  dateCopy = date;
  v9 = [(HKCategoricalDateAxis *)self canAddLabelForAxisLabelType:type];
  v10 = 0;
  if (zoom == 6 && v9)
  {
    categoryTitles = [(HKCategoricalDateAxis *)self categoryTitles];
    v12 = [categoryTitles count];

    currentCalendar = [(HKDateAxis *)self currentCalendar];
    v14 = [currentCalendar startOfDayForDate:dateCopy];

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
        currentCalendar2 = [(HKDateAxis *)self currentCalendar];
        v17 = [HKCategoricalDateAxis datePositionForCategoryIndex:v15 categoryCount:v12 startDate:v14 calendar:currentCalendar2];

        if ([dateCopy isEqual:v17])
        {
          break;
        }

        if (v12 == ++v15)
        {
          goto LABEL_7;
        }
      }

      categoryTitles2 = [(HKCategoricalDateAxis *)self categoryTitles];
      v10 = [categoryTitles2 objectAtIndexedSubscript:v15];
    }
  }

  return v10;
}

+ (id)datePositionForCategoryIndex:(int64_t)index categoryCount:(int64_t)count startDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  v10 = [calendar hk_dateByAddingDays:1 toDate:dateCopy];
  [v10 timeIntervalSinceDate:dateCopy];
  v12 = [dateCopy dateByAddingTimeInterval:v11 / count * 0.5 + index * (v11 / count)];

  return v12;
}

+ (double)_categoryLocationMinutesForCategoryCount:(int64_t)count
{
  v4 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  [v4 canonicalSize];
  v6 = v5;

  return v6 / count / 60.0;
}

@end