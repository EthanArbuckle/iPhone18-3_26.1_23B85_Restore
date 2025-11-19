@interface UIView(NTKWorldClockMap)
+ (id)ntk_gossamer_terminatorViewForDate:()NTKWorldClockMap size:;
@end

@implementation UIView(NTKWorldClockMap)

+ (id)ntk_gossamer_terminatorViewForDate:()NTKWorldClockMap size:
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v11 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75D18];
    v9 = a5;
    v10 = [v8 alloc];
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a1, a2}];
    NTKWorldClock_DayOfYearForDate(v9);

    v15 = NTKWorldClock_NightMaskPathForDayOfYear(v12, v13, v14);
    v16 = [MEMORY[0x277CD9EB0] layer];
    [v11 bounds];
    [v16 setFrame:?];
    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
    v27[0] = [v17 CGColor];
    v18 = [MEMORY[0x277D75348] whiteColor];
    v27[1] = [v18 CGColor];
    v19 = [MEMORY[0x277D75348] whiteColor];
    v27[2] = [v19 CGColor];
    v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
    v27[3] = [v20 CGColor];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v16 setColors:v21];

    [v16 setStartPoint:{0.0, 0.5}];
    [v16 setEndPoint:{1.0, 0.5}];
    [v16 setLocations:&unk_28418B3B0];
    v22 = [MEMORY[0x277CD9F90] layer];
    [v22 setPath:{objc_msgSend(v15, "CGPath")}];
    v23 = [MEMORY[0x277D75348] whiteColor];
    [v22 setStrokeColor:{objc_msgSend(v23, "CGColor")}];

    [v22 setLineWidth:1.0];
    v24 = [MEMORY[0x277D75348] clearColor];
    [v22 setFillColor:{objc_msgSend(v24, "CGColor")}];

    [v16 setMask:v22];
    v25 = [v11 layer];
    [v25 addSublayer:v16];
  }

  return v11;
}

@end