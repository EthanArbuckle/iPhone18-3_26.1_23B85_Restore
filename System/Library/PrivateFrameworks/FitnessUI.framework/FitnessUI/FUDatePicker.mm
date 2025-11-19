@interface FUDatePicker
- (FUDatePicker)initWithFrame:(CGRect)a3;
- (FUDatePicker)initWithFrame:(CGRect)a3 tintColor:(id)a4 initialWheelType:(int64_t)a5 shouldEnableCrown:(BOOL)a6 minimumDate:(id)a7 maximumDate:(id)a8;
- (FUDatePickerDelegate)delegate;
- (id)_enumerateDayValues;
- (id)_enumerateDayValuesFromFormatter:(id)a3;
- (id)_wheelOfType:(int64_t)a3;
- (id)scrollWheel:(id)a3 titleForItemAtIndex:(unint64_t)a4;
- (unint64_t)numberOfRowsInScrollWheel:(id)a3;
- (void)_updateDayRangeReloadingWheel:(BOOL)a3;
- (void)_updateSpinnersAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)scrollWheel:(id)a3 didChangeCurrentIndexTo:(unint64_t)a4;
- (void)setDate:(id)a3 animated:(BOOL)a4;
- (void)tappedScrollWheel:(id)a3;
@end

@implementation FUDatePicker

- (FUDatePicker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E69DC888] systemGreenColor];
  v9 = [(FUDatePicker *)self initWithFrame:v8 tintColor:2 initialWheelType:0 shouldEnableCrown:0 minimumDate:0 maximumDate:x, y, width, height];

  return v9;
}

- (FUDatePicker)initWithFrame:(CGRect)a3 tintColor:(id)a4 initialWheelType:(int64_t)a5 shouldEnableCrown:(BOOL)a6 minimumDate:(id)a7 maximumDate:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v144.receiver = self;
  v144.super_class = FUDatePicker;
  v20 = [(FUDatePicker *)&v144 initWithFrame:x, y, width, height];
  v21 = v20;
  if (v20)
  {
    v138 = v19;
    v139 = v18;
    objc_storeStrong(&v20->_tintColor, a4);
    v21->_initialWheelType = a5;
    objc_storeStrong(&v21->_minimumDate, a7);
    objc_storeStrong(&v21->_maximumDate, a8);
    v22 = 1;
    v21->_firstResponderShouldChange = 1;
    v23 = [MEMORY[0x1E695DEE8] currentCalendar];
    v24 = [MEMORY[0x1E695DF58] currentLocale];
    v25 = [v24 localeIdentifier];

    v26 = [MEMORY[0x1E695DF00] date];
    v27 = [v23 dateByAddingUnit:4 value:-30 toDate:v26 options:0];
    date = v21->_date;
    v21->_date = v27;

    v21->_monthOffset = 1;
    v21->_dayOffset = 1;
    v21->_numRowsMonth = 12;
    v21->_numRowsDate = 31;
    v21->_numRowsYear = 150;
    v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v21->_dateFormatter;
    v21->_dateFormatter = v29;

    [(NSDateFormatter *)v21->_dateFormatter setDateFormat:@"y"];
    v140 = v25;
    if (([v25 isEqualToString:@"ja_JP_TRADITIONAL"] & 1) == 0)
    {
      v22 = [v25 containsString:@"calendar=japanese"];
    }

    v21->_displayEra = v22;
    v31 = [MEMORY[0x1E695DF58] currentLocale];
    v32 = *MEMORY[0x1E695D9B0];
    v33 = [v31 objectForKey:*MEMORY[0x1E695D9B0]];
    v34 = [v33 isEqualToString:@"ja"];

    if (v34)
    {
      v35 = [(NSDateFormatter *)v21->_dateFormatter veryShortMonthSymbols];
      monthNames = v21->_monthNames;
      v21->_monthNames = v35;

      v37 = [(FUDatePicker *)v21 _enumerateDayValues];
      dayValues = v21->_dayValues;
      v21->_dayValues = v37;
    }

    else
    {
      v39 = [MEMORY[0x1E695DF58] currentLocale];
      v40 = [v39 objectForKey:v32];
      v41 = [v40 isEqualToString:@"fi"];

      v42 = v21->_dateFormatter;
      if (v41)
      {
        [(NSDateFormatter *)v42 shortStandaloneMonthSymbols];
      }

      else
      {
        [(NSDateFormatter *)v42 shortMonthSymbols];
      }
      v43 = ;
      v44 = v21->_monthNames;
      v21->_monthNames = v43;

      dayValues = objc_alloc_init(MEMORY[0x1E696AB78]);
      v45 = MEMORY[0x1E696AB78];
      v46 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v140];
      v47 = [v45 dateFormatFromTemplate:@"d" options:0 locale:v46];
      [(NSArray *)dayValues setDateFormat:v47];

      v48 = [(FUDatePicker *)v21 _enumerateDayValuesFromFormatter:dayValues];
      v49 = v21->_dayValues;
      v21->_dayValues = v48;
    }

    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v21->_numRowsYear];
    yearsWithNames = v21->_yearsWithNames;
    v21->_yearsWithNames = v50;

    v52 = [MEMORY[0x1E695DF00] date];
    v53 = [v23 dateByAddingUnit:4 value:-150 toDate:v52 options:0];

    v137 = v53;
    v54 = [v23 components:6 fromDate:v53];
    v55 = 150;
    do
    {
      [v54 setYear:{objc_msgSend(v54, "year") + 1}];
      v56 = v21->_yearsWithNames;
      v57 = [v23 dateFromComponents:v54];
      [(NSMutableArray *)v56 addObject:v57];

      --v55;
    }

    while (v55);
    v143[0] = 0;
    v143[1] = 0;
    v142[0] = 0;
    v142[1] = 0;
    v141[0] = 0;
    v141[1] = 0;
    v58 = [MEMORY[0x1E695DF58] currentLocale];
    v59 = GetFormatAndDateFieldRangesFor_yMMMMd(v58, v143, v142, v141);

    v60 = v142[0];
    v61 = v143[0];
    v62 = v141[0];
    if (v142[0] < v141[0] || v142[0] < v143[0])
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    if (v142[0] < v143[0] && v142[0] < v141[0])
    {
      v65 = 0;
    }

    else
    {
      v65 = v64;
    }

    v21->_monthOrder = v65;
    if (v61 < v62 || v61 < v60)
    {
      v67 = 1;
    }

    else
    {
      v67 = 2;
    }

    if (v61 < v60 && v61 < v62)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67;
    }

    v21->_yearOrder = v68;
    v69 = v62 < v61;
    v70 = v62 >= v60;
    v71 = v62 < v60;
    if (!v70 || v69)
    {
      v73 = 1;
    }

    else
    {
      v73 = 2;
    }

    if (v69 && v71)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    v21->_dayOrder = v74;
    if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[FUDatePicker semanticContentAttribute](v21, "semanticContentAttribute")}] == 1)
    {
      monthOrder = v21->_monthOrder;
      if (monthOrder == 1)
      {
        v76 = 1;
      }

      else
      {
        v76 = 2 * (monthOrder == 0);
      }

      v21->_monthOrder = v76;
      yearOrder = v21->_yearOrder;
      if (yearOrder == 1)
      {
        v78 = 1;
      }

      else
      {
        v78 = 2 * (yearOrder == 0);
      }

      v21->_yearOrder = v78;
      dayOrder = v21->_dayOrder;
      if (dayOrder == 1)
      {
        v80 = 1;
      }

      else
      {
        v80 = 2 * (dayOrder == 0);
      }

      v21->_dayOrder = v80;
    }

    v81 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v81 scale];
    v83 = v82;

    v84 = objc_alloc_init(FUScrollWheel);
    monthWheel = v21->_monthWheel;
    v21->_monthWheel = v84;

    [(FUScrollWheel *)v21->_monthWheel setDataSource:v21];
    [(FUScrollWheel *)v21->_monthWheel setDelegate:v21];
    [(FUScrollWheel *)v21->_monthWheel setItemTitleAligmnent:1];
    v86 = [(FUScrollWheel *)v21->_monthWheel layer];
    v87 = 12.0 / v83;
    [v86 setCornerRadius:12.0 / v83];

    v88 = [(FUScrollWheel *)v21->_monthWheel layer];
    [v88 setBorderColor:{objc_msgSend(v17, "CGColor")}];

    v89 = [(FUScrollWheel *)v21->_monthWheel layer];
    [v89 setBorderWidth:1.0];

    v90 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monthLabel = v21->_monthLabel;
    v21->_monthLabel = v90;

    v92 = v21->_monthLabel;
    v93 = FUBundle();
    v94 = [v93 localizedStringForKey:@"MONTH" value:&stru_1F5F88F90 table:@"Localizable"];
    [(UILabel *)v92 setText:v94];

    [(UILabel *)v21->_monthLabel setTextAlignment:1];
    v95 = v21->_monthLabel;
    v96 = *MEMORY[0x1E69DB958];
    v97 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0 weight:*MEMORY[0x1E69DB958]];
    [(UILabel *)v95 setFont:v97];

    v98 = [(UILabel *)v21->_monthLabel layer];
    [v98 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

    v99 = [(UILabel *)v21->_monthLabel layer];
    [v99 setCornerRadius:3.0];

    v100 = v21->_monthLabel;
    v101 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v100 setTextColor:v101];

    [(FUDatePicker *)v21 addSubview:v21->_monthLabel];
    [(FUDatePicker *)v21 addSubview:v21->_monthWheel];
    v102 = objc_alloc_init(FUScrollWheel);
    dayWheel = v21->_dayWheel;
    v21->_dayWheel = v102;

    [(FUScrollWheel *)v21->_dayWheel setDataSource:v21];
    [(FUScrollWheel *)v21->_dayWheel setDelegate:v21];
    [(FUScrollWheel *)v21->_dayWheel setItemTitleAligmnent:1];
    v104 = [(FUScrollWheel *)v21->_dayWheel layer];
    [v104 setCornerRadius:v87];

    v105 = [(FUScrollWheel *)v21->_dayWheel layer];
    v106 = [MEMORY[0x1E69DC888] grayColor];
    [v105 setBorderColor:{objc_msgSend(v106, "CGColor")}];

    v107 = [(FUScrollWheel *)v21->_dayWheel layer];
    [v107 setBorderWidth:1.0];

    v108 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dayLabel = v21->_dayLabel;
    v21->_dayLabel = v108;

    v110 = v21->_dayLabel;
    v111 = FUBundle();
    v112 = [v111 localizedStringForKey:@"DAY" value:&stru_1F5F88F90 table:@"Localizable"];
    [(UILabel *)v110 setText:v112];

    [(UILabel *)v21->_dayLabel setTextAlignment:1];
    v113 = v21->_dayLabel;
    v114 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0 weight:v96];
    [(UILabel *)v113 setFont:v114];

    v115 = [(UILabel *)v21->_dayLabel layer];
    [v115 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

    v116 = [(UILabel *)v21->_dayLabel layer];
    [v116 setCornerRadius:3.0];

    v117 = v21->_dayLabel;
    v118 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v117 setTextColor:v118];

    [(FUDatePicker *)v21 addSubview:v21->_dayLabel];
    [(FUDatePicker *)v21 addSubview:v21->_dayWheel];
    v119 = objc_alloc_init(FUScrollWheel);
    yearWheel = v21->_yearWheel;
    v21->_yearWheel = v119;

    [(FUScrollWheel *)v21->_yearWheel setDataSource:v21];
    [(FUScrollWheel *)v21->_yearWheel setDelegate:v21];
    [(FUScrollWheel *)v21->_yearWheel setItemTitleAligmnent:1];
    v121 = [(FUScrollWheel *)v21->_yearWheel layer];
    [v121 setCornerRadius:v87];

    v122 = [(FUScrollWheel *)v21->_yearWheel layer];
    v123 = [MEMORY[0x1E69DC888] grayColor];
    [v122 setBorderColor:{objc_msgSend(v123, "CGColor")}];

    v124 = [(FUScrollWheel *)v21->_yearWheel layer];
    [v124 setBorderWidth:1.0];

    v125 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    yearLabel = v21->_yearLabel;
    v21->_yearLabel = v125;

    v127 = v21->_yearLabel;
    v128 = FUBundle();
    v129 = [v128 localizedStringForKey:@"YEAR" value:&stru_1F5F88F90 table:@"Localizable"];
    [(UILabel *)v127 setText:v129];

    [(UILabel *)v21->_yearLabel setTextAlignment:1];
    v130 = v21->_yearLabel;
    v131 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0 weight:v96];
    [(UILabel *)v130 setFont:v131];

    v132 = [(UILabel *)v21->_yearLabel layer];
    [v132 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

    v133 = [(UILabel *)v21->_yearLabel layer];
    [v133 setCornerRadius:3.0];

    v134 = v21->_yearLabel;
    v135 = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v134 setTextColor:v135];

    [(FUDatePicker *)v21 addSubview:v21->_yearLabel];
    [(FUDatePicker *)v21 addSubview:v21->_yearWheel];
    [(FUDatePicker *)v21 _updateDayRangeReloadingWheel:1];
    [(FUDatePicker *)v21 _updateSpinnersAnimated:0];

    v19 = v138;
    v18 = v139;
  }

  return v21;
}

- (id)_wheelOfType:(int64_t)a3
{
  if (a3 <= 2)
  {
    a2 = *(&self->super.super.super.isa + *off_1E878C090[a3]);
  }

  return a2;
}

- (id)_enumerateDayValuesFromFormatter:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:1];
  [v6 setMonth:1];
  v7 = [v5 dateFromComponents:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_numRowsDate];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v9 objectForKey:*MEMORY[0x1E695D9B0]];
  v11 = [v10 isEqualToString:@"fi"];

  if (self->_numRowsDate)
  {
    v12 = 0;
    do
    {
      v13 = [v4 stringFromDate:v7];
      v14 = v13;
      if (v11)
      {
        v15 = [v13 stringByAppendingString:@"."];
        [v8 addObject:v15];
      }

      else
      {
        [v8 addObject:v13];
      }

      v16 = [v5 dateByAddingUnit:16 value:1 toDate:v7 options:0];

      ++v12;
      v7 = v16;
    }

    while (v12 < self->_numRowsDate);
  }

  else
  {
    v16 = v7;
  }

  return v8;
}

- (id)_enumerateDayValues
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_numRowsDate];
  if (self->_numRowsDate)
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%d", ++v4];
      [v3 addObject:v5];
    }

    while (self->_numRowsDate > v4);
  }

  return v3;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = FUDatePicker;
  [(FUDatePicker *)&v33 layoutSubviews];
  [(FUDatePicker *)self bounds];
  v4 = v3;
  v32 = v5;
  v6 = floor((v3 + -10.0) / 3.0);
  [(UILabel *)self->_dayLabel sizeToFit];
  dayLabel = self->_dayLabel;
  [(UILabel *)dayLabel frame];
  v35 = CGRectInset(v34, -3.0, -1.5);
  [(UILabel *)dayLabel setFrame:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
  [(UILabel *)self->_dayLabel frame];
  v10 = v8;
  v11 = v9;
  dayOrder = self->_dayOrder;
  v13 = 0.0;
  v14 = 0.0;
  if (dayOrder)
  {
    if (dayOrder == 1)
    {
      v14 = v4 * 0.5 - v8 * 0.5;
      v13 = v4 * 0.5 - v6 * 0.5;
    }

    else
    {
      v14 = v4 - v8;
      v13 = v4 - v6;
    }
  }

  [(UILabel *)self->_dayLabel setFrame:v14, 0.0, v8, v9];
  v36.origin.y = 0.0;
  v36.origin.x = v14;
  v36.size.width = v10;
  v36.size.height = v11;
  v15 = CGRectGetMaxY(v36) + 2.0;
  v37.origin.y = 0.0;
  v37.origin.x = v14;
  v37.size.width = v10;
  v37.size.height = v11;
  [(FUScrollWheel *)self->_dayWheel setFrame:v13, v15, v6, v32 - (CGRectGetMaxY(v37) + 2.0)];
  [(UILabel *)self->_yearLabel sizeToFit];
  yearLabel = self->_yearLabel;
  [(UILabel *)yearLabel frame];
  v39 = CGRectInset(v38, -3.0, -1.5);
  [(UILabel *)yearLabel setFrame:v39.origin.x, v39.origin.y, v39.size.width, v39.size.height];
  [(UILabel *)self->_yearLabel frame];
  v18 = v17;
  v20 = v19;
  yearOrder = self->_yearOrder;
  if (yearOrder)
  {
    v22 = v4 - v17;
  }

  else
  {
    v22 = 0.0;
  }

  if (yearOrder)
  {
    v23 = v4 - v6;
  }

  else
  {
    v23 = 0.0;
  }

  [(UILabel *)self->_yearLabel setFrame:v22];
  v40.origin.y = 0.0;
  v40.origin.x = v22;
  v40.size.width = v18;
  v40.size.height = v20;
  v24 = CGRectGetMaxY(v40) + 2.0;
  v41.origin.y = 0.0;
  v41.origin.x = v22;
  v41.size.width = v18;
  v41.size.height = v20;
  [(FUScrollWheel *)self->_yearWheel setFrame:v23, v24, v6, v32 - (CGRectGetMaxY(v41) + 2.0)];
  [(UILabel *)self->_monthLabel sizeToFit];
  monthLabel = self->_monthLabel;
  [(UILabel *)monthLabel frame];
  v43 = CGRectInset(v42, -3.0, -1.5);
  [(UILabel *)monthLabel setFrame:v43.origin.x, v43.origin.y, v43.size.width, v43.size.height];
  [(UILabel *)self->_monthLabel frame];
  monthOrder = self->_monthOrder;
  if (monthOrder)
  {
    v28 = v4 - v26;
    if (monthOrder == 1)
    {
      v28 = v4 * 0.5 - v26 * 0.5;
      v29 = v4 * 0.5 - v6 * 0.5;
    }

    else
    {
      v29 = v4 - v6;
    }
  }

  else
  {
    v29 = 0.0;
    v28 = 0.0;
  }

  [(UILabel *)self->_monthLabel setFrame:v28, 0.0];
  v44.origin.y = 0.0;
  v44.origin.x = v22;
  v44.size.width = v18;
  v44.size.height = v20;
  v30 = CGRectGetMaxY(v44) + 2.0;
  v45.origin.y = 0.0;
  v45.origin.x = v22;
  v45.size.width = v18;
  v45.size.height = v20;
  [(FUScrollWheel *)self->_monthWheel setFrame:v29, v30, v6, v32 - (CGRectGetMaxY(v45) + 2.0)];
  [(FUScrollWheel *)self->_monthWheel reloadData];
  [(FUScrollWheel *)self->_dayWheel reloadData];
  [(FUScrollWheel *)self->_yearWheel reloadData];
  v31 = [(FUDatePicker *)self _wheelOfType:self->_initialWheelType];
  [v31 setActiveScrollWheel];
}

- (void)setDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  date = self->_date;
  self->_date = v6;

  [(FUDatePicker *)self _updateDayRangeReloadingWheel:0];

  [(FUDatePicker *)self _updateSpinnersAnimated:v4];
}

- (void)_updateSpinnersAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v5 components:30 fromDate:self->_date];

  -[FUScrollWheel setCurrentIndex:animated:](self->_monthWheel, "setCurrentIndex:animated:", [v9 month] - self->_monthOffset, v3);
  -[FUScrollWheel setCurrentIndex:animated:](self->_dayWheel, "setCurrentIndex:animated:", [v9 day] - self->_dayOffset, v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setYear:{objc_msgSend(v9, "year")}];
  [v6 setEra:{objc_msgSend(v9, "era")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateFromComponents:v6];

  [(FUScrollWheel *)self->_yearWheel setCurrentIndex:[(NSMutableArray *)self->_yearsWithNames indexOfObject:v8] animated:v3];
}

- (void)_updateDayRangeReloadingWheel:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 rangeOfUnit:16 inUnit:8 forDate:self->_date];
  v7 = v6;

  self->_numRowsDate = v7;
  if (v3)
  {
    self->_firstResponderShouldChange = 0;
    [(FUScrollWheel *)self->_dayWheel reloadData];
    self->_firstResponderShouldChange = 1;
  }
}

- (id)scrollWheel:(id)a3 titleForItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_monthWheel == v6)
  {
    v9 = [(NSArray *)self->_monthNames objectAtIndexedSubscript:a4];
    v10 = [v9 localizedUppercaseString];
    goto LABEL_6;
  }

  if (self->_dayWheel != v6)
  {
    if (self->_yearWheel != v6)
    {
      v8 = &stru_1F5F88F90;
      goto LABEL_9;
    }

    v9 = [(NSMutableArray *)self->_yearsWithNames objectAtIndexedSubscript:a4];
    if (self->_displayEra)
    {
      v12 = [MEMORY[0x1E695DEE8] currentCalendar];
      v13 = [v12 components:2 fromDate:v9];

      v14 = [MEMORY[0x1E695DEE8] currentCalendar];
      v15 = [v14 eraSymbols];
      v16 = [v15 objectAtIndex:{objc_msgSend(v13, "era")}];
      v17 = [v16 substringToIndex:1];

      v18 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v9];
      v8 = [v17 stringByAppendingString:v18];

      goto LABEL_7;
    }

    v10 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v9];
LABEL_6:
    v8 = v10;
LABEL_7:

    goto LABEL_9;
  }

  v8 = [(NSArray *)self->_dayValues objectAtIndexedSubscript:a4];
LABEL_9:

  return v8;
}

- (unint64_t)numberOfRowsInScrollWheel:(id)a3
{
  if (self->_dayWheel == a3)
  {
    v3 = &OBJC_IVAR___FUDatePicker__numRowsDate;
  }

  else if (self->_monthWheel == a3)
  {
    v3 = &OBJC_IVAR___FUDatePicker__numRowsMonth;
  }

  else
  {
    v3 = &OBJC_IVAR___FUDatePicker__numRowsYear;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)tappedScrollWheel:(id)a3
{
  v25 = a3;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  monthWheel = self->_monthWheel;
  if (monthWheel != v25)
  {
    v8 = [(FUScrollWheel *)self->_monthWheel layer];
    [v8 setCornerRadius:6.0];

    v9 = [(FUScrollWheel *)self->_monthWheel layer];
    v10 = [MEMORY[0x1E69DC888] grayColor];
    [v9 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(FUScrollWheel *)self->_monthWheel layer];
    [v11 setBorderWidth:2.0 / v6];
  }

  [(UILabel *)self->_monthLabel setHidden:monthWheel != v25];
  dayWheel = self->_dayWheel;
  if (dayWheel != v25)
  {
    v13 = [(FUScrollWheel *)self->_dayWheel layer];
    [v13 setCornerRadius:6.0];

    v14 = [(FUScrollWheel *)self->_dayWheel layer];
    v15 = [MEMORY[0x1E69DC888] grayColor];
    [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

    v16 = [(FUScrollWheel *)self->_dayWheel layer];
    [v16 setBorderWidth:2.0 / v6];
  }

  [(UILabel *)self->_dayLabel setHidden:dayWheel != v25];
  yearWheel = self->_yearWheel;
  if (yearWheel != v25)
  {
    v18 = [(FUScrollWheel *)self->_yearWheel layer];
    [v18 setCornerRadius:6.0];

    v19 = [(FUScrollWheel *)self->_yearWheel layer];
    v20 = [MEMORY[0x1E69DC888] grayColor];
    [v19 setBorderColor:{objc_msgSend(v20, "CGColor")}];

    v21 = [(FUScrollWheel *)self->_yearWheel layer];
    [v21 setBorderWidth:2.0 / v6];
  }

  [(UILabel *)self->_yearLabel setHidden:yearWheel != v25];
  v22 = [(FUScrollWheel *)v25 layer];
  [v22 setCornerRadius:6.0];

  v23 = [(FUScrollWheel *)v25 layer];
  [v23 setBorderColor:{-[UIColor CGColor](self->_tintColor, "CGColor")}];

  v24 = [(FUScrollWheel *)v25 layer];
  [v24 setBorderWidth:3.0 / v6];
}

- (void)scrollWheel:(id)a3 didChangeCurrentIndexTo:(unint64_t)a4
{
  v24 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 setCalendar:v6];

  [v5 setMonth:{self->_monthOffset + -[FUScrollWheel currentIndex](self->_monthWheel, "currentIndex")}];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [(NSMutableArray *)self->_yearsWithNames objectAtIndex:[(FUScrollWheel *)self->_yearWheel currentIndex]];
  v9 = [v7 components:6 fromDate:v8];

  [v5 setYear:{objc_msgSend(v9, "year")}];
  [v5 setEra:{objc_msgSend(v9, "era")}];
  [v5 setDay:1];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 dateFromComponents:v5];

  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v12 rangeOfUnit:16 inUnit:8 forDate:v11];
  v14 = v13;

  v15 = [(FUScrollWheel *)self->_dayWheel currentIndex];
  if (v14 >= self->_dayOffset + v15)
  {
    v16 = self->_dayOffset + v15;
  }

  else
  {
    v16 = v14;
  }

  [v5 setDay:v16];
  v17 = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = [v17 dateFromComponents:v5];
  date = self->_date;
  self->_date = v18;

  v20 = 544;
  minimumDate = self->_minimumDate;
  if (minimumDate && [(NSDate *)minimumDate compare:self->_date]== NSOrderedDescending || (v20 = 552, (maximumDate = self->_maximumDate) != 0) && [(NSDate *)maximumDate compare:self->_date]== NSOrderedAscending)
  {
    objc_storeStrong(&self->_date, *(&self->super.super.super.isa + v20));
    [(FUDatePicker *)self _updateDayRangeReloadingWheel:1];
    [(FUDatePicker *)self _updateSpinnersAnimated:1];
  }

  else if (self->_monthWheel == v24 || self->_yearWheel == v24)
  {
    [(FUDatePicker *)self _updateDayRangeReloadingWheel:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained datePicker:self didSelectDate:self->_date];
}

- (FUDatePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end