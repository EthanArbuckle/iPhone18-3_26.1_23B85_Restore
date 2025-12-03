@interface UIView(NTKWorldClockMap)
+ (id)ntk_gossamer_terminatorViewForDate:()NTKWorldClockMap size:;
@end

@implementation UIView(NTKWorldClockMap)

+ (id)ntk_gossamer_terminatorViewForDate:()NTKWorldClockMap size:
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (self == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v11 = 0;
  }

  else
  {
    v8 = MEMORY[0x277D75D18];
    v9 = a5;
    v10 = [v8 alloc];
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), self, a2}];
    NTKWorldClock_DayOfYearForDate(v9);

    v15 = NTKWorldClock_NightMaskPathForDayOfYear(v12, v13, v14);
    layer = [MEMORY[0x277CD9EB0] layer];
    [v11 bounds];
    [layer setFrame:?];
    v17 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
    v27[0] = [v17 CGColor];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v27[1] = [whiteColor CGColor];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    v27[2] = [whiteColor2 CGColor];
    v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
    v27[3] = [v20 CGColor];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [layer setColors:v21];

    [layer setStartPoint:{0.0, 0.5}];
    [layer setEndPoint:{1.0, 0.5}];
    [layer setLocations:&unk_28418B3B0];
    layer2 = [MEMORY[0x277CD9F90] layer];
    [layer2 setPath:{objc_msgSend(v15, "CGPath")}];
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [layer2 setStrokeColor:{objc_msgSend(whiteColor3, "CGColor")}];

    [layer2 setLineWidth:1.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer2 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setMask:layer2];
    layer3 = [v11 layer];
    [layer3 addSublayer:layer];
  }

  return v11;
}

@end