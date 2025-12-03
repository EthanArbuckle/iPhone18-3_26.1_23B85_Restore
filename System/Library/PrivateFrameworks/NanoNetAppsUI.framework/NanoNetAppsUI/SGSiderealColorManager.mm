@interface SGSiderealColorManager
+ (id)sharedInstance;
- (id)_createElementsFromDict:(id)dict;
- (id)_init;
- (id)astronomicalTwilightColorCurve;
- (id)astronomicalTwilightCurveP3;
- (id)civilTwilightColorCurve;
- (id)civilTwilightCurveP3;
- (id)dayDiskBloomColorCurve;
- (id)dayGradientColorCurves;
- (id)dayGradientCurveP3;
- (id)dialBackgroundColorCurve;
- (id)dialBackgroundCurveP3;
- (id)innerComplicationColorCurve;
- (id)nauticalTwilightColorCurve;
- (id)nauticalTwilightCurveP3;
- (id)outerComplicationColorCurve;
- (void)_notifyHandlers;
- (void)addColorUpdateHandler:(id)handler;
- (void)dealloc;
@end

@implementation SGSiderealColorManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SGSiderealColorManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __40__SGSiderealColorManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[SGSiderealColorManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SGSiderealColorManager;
  v2 = [(SGSiderealColorManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    updateHandlers = v2->_updateHandlers;
    v2->_updateHandlers = array;
  }

  return v2;
}

- (void)dealloc
{
  updateHandlers = self->_updateHandlers;
  self->_updateHandlers = 0;

  v4.receiver = self;
  v4.super_class = SGSiderealColorManager;
  [(SGSiderealColorManager *)&v4 dealloc];
}

- (void)addColorUpdateHandler:(id)handler
{
  updateHandlers = self->_updateHandlers;
  v4 = MEMORY[0x25F865F50](handler, a2);
  [(NSMutableArray *)updateHandlers addObject:v4];
}

- (void)_notifyHandlers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_updateHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_createElementsFromDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  allKeys = [dictCopy allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_6];

  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [dictCopy objectForKeyedSubscript:v8];
      [v8 floatValue];
      SGSunriseAltitudeToSolarDayPercentage();
      v11 = v10;
      v12 = [v9 objectAtIndexedSubscript:0];
      [v12 floatValue];
      v13 = [v9 objectAtIndexedSubscript:1];
      [v13 floatValue];
      v14 = [v9 objectAtIndexedSubscript:2];
      [v14 floatValue];
      v15 = SGCubicColorCurveElementCreate(v11);

      [v4 addObject:v15];
      ++v7;
    }

    while (v7 < [v6 count]);
  }

  v16 = [v6 count] - 2;
  if (v16 >= 0)
  {
    do
    {
      v17 = [v6 objectAtIndexedSubscript:v16];
      v18 = [dictCopy objectForKeyedSubscript:v17];
      [v17 floatValue];
      SGSunsetAltitudeToSolarDayPercentage();
      v20 = v19;
      v21 = [v18 objectAtIndexedSubscript:0];
      [v21 floatValue];
      v22 = [v18 objectAtIndexedSubscript:1];
      [v22 floatValue];
      v23 = [v18 objectAtIndexedSubscript:2];
      [v23 floatValue];
      v24 = SGCubicColorCurveElementCreate(v20);

      [v4 addObject:v24];
      --v16;
    }

    while (v16 != -1);
  }

  return v4;
}

- (id)civilTwilightCurveP3
{
  v12[13] = *MEMORY[0x277D85DE8];
  civilTwilightCurve_p3 = self->_civilTwilightCurve_p3;
  if (civilTwilightCurve_p3)
  {
    v3 = civilTwilightCurve_p3;
  }

  else
  {
    v11[0] = &unk_286C8EB28;
    v11[1] = &unk_286C8EB40;
    v12[0] = &unk_286C8FC20;
    v12[1] = &unk_286C8FC38;
    v11[2] = &unk_286C8EB58;
    v11[3] = &unk_286C8EB70;
    v12[2] = &unk_286C8FC50;
    v12[3] = &unk_286C8FC68;
    v11[4] = &unk_286C8EB88;
    v11[5] = &unk_286C8EBA0;
    v12[4] = &unk_286C8FC80;
    v12[5] = &unk_286C8FC98;
    v11[6] = &unk_286C8EBB8;
    v11[7] = &unk_286C8EBD0;
    v12[6] = &unk_286C8FCB0;
    v12[7] = &unk_286C8FCC8;
    v11[8] = &unk_286C8EBE8;
    v11[9] = &unk_286C8EC00;
    v12[8] = &unk_286C8FCE0;
    v12[9] = &unk_286C8FCF8;
    v11[10] = &unk_286C8EC18;
    v11[11] = &unk_286C8EC30;
    v12[10] = &unk_286C8FD10;
    v12[11] = &unk_286C8FD28;
    v11[12] = &unk_286C8EC48;
    v12[12] = &unk_286C8FD40;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_civilTwilightCurve_p3;
    self->_civilTwilightCurve_p3 = v7;

    v3 = self->_civilTwilightCurve_p3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)nauticalTwilightCurveP3
{
  v12[13] = *MEMORY[0x277D85DE8];
  nauticalTwilightCurve_p3 = self->_nauticalTwilightCurve_p3;
  if (nauticalTwilightCurve_p3)
  {
    v3 = nauticalTwilightCurve_p3;
  }

  else
  {
    v11[0] = &unk_286C8EB28;
    v11[1] = &unk_286C8EB40;
    v12[0] = &unk_286C8FD58;
    v12[1] = &unk_286C8FD70;
    v11[2] = &unk_286C8EB58;
    v11[3] = &unk_286C8EB70;
    v12[2] = &unk_286C8FD88;
    v12[3] = &unk_286C8FDA0;
    v11[4] = &unk_286C8EB88;
    v11[5] = &unk_286C8EBA0;
    v12[4] = &unk_286C8FDB8;
    v12[5] = &unk_286C8FDD0;
    v11[6] = &unk_286C8EBB8;
    v11[7] = &unk_286C8EBD0;
    v12[6] = &unk_286C8FDE8;
    v12[7] = &unk_286C8FE00;
    v11[8] = &unk_286C8EBE8;
    v11[9] = &unk_286C8EC00;
    v12[8] = &unk_286C8FE18;
    v12[9] = &unk_286C8FE30;
    v11[10] = &unk_286C8EC18;
    v11[11] = &unk_286C8EC30;
    v12[10] = &unk_286C8FE48;
    v12[11] = &unk_286C8FE60;
    v11[12] = &unk_286C8EC48;
    v12[12] = &unk_286C8FE78;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_nauticalTwilightCurve_p3;
    self->_nauticalTwilightCurve_p3 = v7;

    v3 = self->_nauticalTwilightCurve_p3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)astronomicalTwilightCurveP3
{
  v12[13] = *MEMORY[0x277D85DE8];
  astronomicalTwilightCurve_p3 = self->_astronomicalTwilightCurve_p3;
  if (astronomicalTwilightCurve_p3)
  {
    v3 = astronomicalTwilightCurve_p3;
  }

  else
  {
    v11[0] = &unk_286C8EB28;
    v11[1] = &unk_286C8EB40;
    v12[0] = &unk_286C8FE90;
    v12[1] = &unk_286C8FEA8;
    v11[2] = &unk_286C8EB58;
    v11[3] = &unk_286C8EB70;
    v12[2] = &unk_286C8FEC0;
    v12[3] = &unk_286C8FED8;
    v11[4] = &unk_286C8EB88;
    v11[5] = &unk_286C8EBA0;
    v12[4] = &unk_286C8FEF0;
    v12[5] = &unk_286C8FF08;
    v11[6] = &unk_286C8EBB8;
    v11[7] = &unk_286C8EBD0;
    v12[6] = &unk_286C8FF20;
    v12[7] = &unk_286C8FF38;
    v11[8] = &unk_286C8EBE8;
    v11[9] = &unk_286C8EC00;
    v12[8] = &unk_286C8FF50;
    v12[9] = &unk_286C8FF68;
    v11[10] = &unk_286C8EC18;
    v11[11] = &unk_286C8EC30;
    v12[10] = &unk_286C8FF80;
    v12[11] = &unk_286C8FF98;
    v11[12] = &unk_286C8EC48;
    v12[12] = &unk_286C8FFB0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_astronomicalTwilightCurve_p3;
    self->_astronomicalTwilightCurve_p3 = v7;

    v3 = self->_astronomicalTwilightCurve_p3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dayGradientCurveP3
{
  v24[13] = *MEMORY[0x277D85DE8];
  dayGradientCurve_p3 = self->_dayGradientCurve_p3;
  if (dayGradientCurve_p3)
  {
    v3 = dayGradientCurve_p3;
  }

  else
  {
    v23[0] = &unk_286C8EB28;
    v23[1] = &unk_286C8EB40;
    v24[0] = &unk_286C8FFC8;
    v24[1] = &unk_286C8FFE0;
    v23[2] = &unk_286C8EB58;
    v23[3] = &unk_286C8EB70;
    v24[2] = &unk_286C8FFF8;
    v24[3] = &unk_286C90010;
    v23[4] = &unk_286C8EB88;
    v23[5] = &unk_286C8EBA0;
    v24[4] = &unk_286C90028;
    v24[5] = &unk_286C90040;
    v23[6] = &unk_286C8EBB8;
    v23[7] = &unk_286C8EBD0;
    v24[6] = &unk_286C90058;
    v24[7] = &unk_286C90070;
    v23[8] = &unk_286C8EBE8;
    v23[9] = &unk_286C8EC00;
    v24[8] = &unk_286C90088;
    v24[9] = &unk_286C900A0;
    v23[10] = &unk_286C8EC18;
    v23[11] = &unk_286C8EC30;
    v24[10] = &unk_286C900B8;
    v24[11] = &unk_286C900D0;
    v23[12] = &unk_286C8EC48;
    v24[12] = &unk_286C900E8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:13];
    v17 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v16 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v17];
    v21[0] = &unk_286C8EB28;
    v21[1] = &unk_286C8EB40;
    v22[0] = &unk_286C90100;
    v22[1] = &unk_286C90118;
    v21[2] = &unk_286C8EB58;
    v21[3] = &unk_286C8EB70;
    v22[2] = &unk_286C90130;
    v22[3] = &unk_286C90148;
    v21[4] = &unk_286C8EB88;
    v21[5] = &unk_286C8EBA0;
    v22[4] = &unk_286C90160;
    v22[5] = &unk_286C90178;
    v21[6] = &unk_286C8EBB8;
    v21[7] = &unk_286C8EBD0;
    v22[6] = &unk_286C90190;
    v22[7] = &unk_286C901A8;
    v21[8] = &unk_286C8EBE8;
    v21[9] = &unk_286C8EC00;
    v22[8] = &unk_286C901C0;
    v22[9] = &unk_286C901D8;
    v21[10] = &unk_286C8EC18;
    v21[11] = &unk_286C8EC30;
    v22[10] = &unk_286C901F0;
    v22[11] = &unk_286C90208;
    v21[12] = &unk_286C8EC48;
    v22[12] = &unk_286C90220;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:13];
    v7 = [(SGSiderealColorManager *)self _createElementsFromDict:v6];

    v8 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v7];
    v19[0] = &unk_286C8EB28;
    v19[1] = &unk_286C8EB40;
    v20[0] = &unk_286C90238;
    v20[1] = &unk_286C90250;
    v19[2] = &unk_286C8EB58;
    v19[3] = &unk_286C8EB70;
    v20[2] = &unk_286C90268;
    v20[3] = &unk_286C90280;
    v19[4] = &unk_286C8EB88;
    v19[5] = &unk_286C8EBA0;
    v20[4] = &unk_286C90298;
    v20[5] = &unk_286C902B0;
    v19[6] = &unk_286C8EBB8;
    v19[7] = &unk_286C8EBD0;
    v20[6] = &unk_286C902C8;
    v20[7] = &unk_286C902E0;
    v19[8] = &unk_286C8EBE8;
    v19[9] = &unk_286C8EC00;
    v20[8] = &unk_286C902F8;
    v20[9] = &unk_286C90310;
    v19[10] = &unk_286C8EC18;
    v19[11] = &unk_286C8EC30;
    v20[10] = &unk_286C90328;
    v20[11] = &unk_286C90340;
    v19[12] = &unk_286C8EC48;
    v20[12] = &unk_286C90358;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];
    v10 = [(SGSiderealColorManager *)self _createElementsFromDict:v9];

    v11 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v10];
    v18[0] = v16;
    v18[1] = v8;
    v18[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v13 = self->_dayGradientCurve_p3;
    self->_dayGradientCurve_p3 = v12;

    v3 = self->_dayGradientCurve_p3;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dialBackgroundCurveP3
{
  v12[13] = *MEMORY[0x277D85DE8];
  dialBackgroundCurve_p3 = self->_dialBackgroundCurve_p3;
  if (dialBackgroundCurve_p3)
  {
    v3 = dialBackgroundCurve_p3;
  }

  else
  {
    v11[0] = &unk_286C8EB28;
    v11[1] = &unk_286C8EB40;
    v12[0] = &unk_286C90370;
    v12[1] = &unk_286C90388;
    v11[2] = &unk_286C8EB58;
    v11[3] = &unk_286C8EB70;
    v12[2] = &unk_286C903A0;
    v12[3] = &unk_286C903B8;
    v11[4] = &unk_286C8EB88;
    v11[5] = &unk_286C8EBA0;
    v12[4] = &unk_286C903D0;
    v12[5] = &unk_286C903E8;
    v11[6] = &unk_286C8EBB8;
    v11[7] = &unk_286C8EBD0;
    v12[6] = &unk_286C90400;
    v12[7] = &unk_286C90418;
    v11[8] = &unk_286C8EBE8;
    v11[9] = &unk_286C8EC00;
    v12[8] = &unk_286C90430;
    v12[9] = &unk_286C90448;
    v11[10] = &unk_286C8EC18;
    v11[11] = &unk_286C8EC30;
    v12[10] = &unk_286C90460;
    v12[11] = &unk_286C90478;
    v11[12] = &unk_286C8EC48;
    v12[12] = &unk_286C90490;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:13];
    v6 = [(SGSiderealColorManager *)self _createElementsFromDict:v5];

    v7 = [[SGCubicColorCurve alloc] initWithCubicColorCurveElements:v6];
    v8 = self->_dialBackgroundCurve_p3;
    self->_dialBackgroundCurve_p3 = v7;

    v3 = self->_dialBackgroundCurve_p3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dialBackgroundColorCurve
{
  v57[23] = *MEMORY[0x277D85DE8];
  dialBackground = self->_dialBackground;
  if (!dialBackground)
  {
    v52 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v4);
    v57[0] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v55 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v5);
    v57[1] = v55;
    SGSunriseAltitudeToSolarDayPercentage();
    v54 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v6);
    v57[2] = v54;
    SGSunriseAltitudeToSolarDayPercentage();
    v53 = _elementWithColorAtAltitude(218.0, 83.0, 24.0, v7);
    v57[3] = v53;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(212.0, 92.0, 22.0, v8);
    v57[4] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(206.0, 95.0, 21.0, v9);
    v57[5] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(202.0, 100.0, 20.0, v10);
    v57[6] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v11);
    v57[7] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(200.0, 100.0, 20.0, v12);
    v57[8] = v47;
    SGSunriseAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(204.0, 100.0, 20.0, v13);
    v57[9] = v46;
    SGSunriseAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(206.0, 100.0, 24.0, v14);
    v57[10] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v15);
    v57[11] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(217.0, 100.0, 24.0, v16);
    v57[12] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v42 = _elementWithColorAtAltitude(220.0, 95.0, 24.0, v17);
    v57[13] = v42;
    SGSunsetAltitudeToSolarDayPercentage();
    v41 = _elementWithColorAtAltitude(223.0, 89.0, 25.0, v18);
    v57[14] = v41;
    SGSunsetAltitudeToSolarDayPercentage();
    v20 = _elementWithColorAtAltitude(225.0, 85.0, 26.0, v19);
    v57[15] = v20;
    SGSunsetAltitudeToSolarDayPercentage();
    v22 = _elementWithColorAtAltitude(229.0, 85.0, 26.0, v21);
    v57[16] = v22;
    SGSunsetAltitudeToSolarDayPercentage();
    v24 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v23);
    v57[17] = v24;
    SGSunsetAltitudeToSolarDayPercentage();
    v26 = _elementWithColorAtAltitude(233.0, 85.0, 26.0, v25);
    v57[18] = v26;
    SGSunsetAltitudeToSolarDayPercentage();
    v28 = _elementWithColorAtAltitude(233.0, 84.0, 26.0, v27);
    v57[19] = v28;
    SGSunsetAltitudeToSolarDayPercentage();
    v30 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v29);
    v57[20] = v30;
    SGSunsetAltitudeToSolarDayPercentage();
    v32 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v31);
    v57[21] = v32;
    SGSunsetAltitudeToSolarDayPercentage();
    v34 = _elementWithColorAtAltitude(224.0, 80.0, 24.0, v33);
    v57[22] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:23];
    v36 = [(SGCubicColorCurve *)v52 initWithColorCurveElements:v35];
    v37 = self->_dialBackground;
    self->_dialBackground = v36;

    dialBackground = self->_dialBackground;
  }

  v38 = dialBackground;
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)dayGradientColorCurves
{
  v171[25] = *MEMORY[0x277D85DE8];
  dayGradient = self->_dayGradient;
  if (dayGradient)
  {
    v3 = dayGradient;
  }

  else
  {
    v163 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v153 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v4);
    v171[0] = v153;
    SGSunriseAltitudeToSolarDayPercentage();
    v147 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v5);
    v171[1] = v147;
    SGSunriseAltitudeToSolarDayPercentage();
    v143 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v6);
    v171[2] = v143;
    SGSunriseAltitudeToSolarDayPercentage();
    v141 = _elementWithColorAtAltitude(235.0, 80.0, 25.0, v7);
    v171[3] = v141;
    SGSunriseAltitudeToSolarDayPercentage();
    v138 = _elementWithColorAtAltitude(225.0, 64.0, 53.0, v8);
    v171[4] = v138;
    SGSunriseAltitudeToSolarDayPercentage();
    v133 = _elementWithColorAtAltitude(224.0, 62.0, 61.0, v9);
    v171[5] = v133;
    SGSunriseAltitudeToSolarDayPercentage();
    v131 = _elementWithColorAtAltitude(222.0, 60.0, 74.0, v10);
    v171[6] = v131;
    SGSunriseAltitudeToSolarDayPercentage();
    v129 = _elementWithColorAtAltitude(216.0, 63.0, 76.0, v11);
    v171[7] = v129;
    SGSunriseAltitudeToSolarDayPercentage();
    v127 = _elementWithColorAtAltitude(215.0, 69.0, 78.0, v12);
    v171[8] = v127;
    SGSunriseAltitudeToSolarDayPercentage();
    v125 = _elementWithColorAtAltitude(214.0, 74.0, 80.0, v13);
    v171[9] = v125;
    SGSunriseAltitudeToSolarDayPercentage();
    v124 = _elementWithColorAtAltitude(213.0, 86.0, 86.0, v14);
    v171[10] = v124;
    SGSunriseAltitudeToSolarDayPercentage();
    v122 = _elementWithColorAtAltitude(212.0, 66.0, 88.0, v15);
    v171[11] = v122;
    SGSunriseAltitudeToSolarDayPercentage();
    v120 = _elementWithColorAtAltitude(204.0, 19.0, 96.0, v16);
    v171[12] = v120;
    SGSunsetAltitudeToSolarDayPercentage();
    v118 = _elementWithColorAtAltitude(212.0, 58.0, 87.0, v17);
    v171[13] = v118;
    SGSunsetAltitudeToSolarDayPercentage();
    v116 = _elementWithColorAtAltitude(213.0, 78.0, 83.0, v18);
    v171[14] = v116;
    SGSunsetAltitudeToSolarDayPercentage();
    v114 = _elementWithColorAtAltitude(217.0, 76.0, 67.0, v19);
    v171[15] = v114;
    SGSunsetAltitudeToSolarDayPercentage();
    v21 = _elementWithColorAtAltitude(220.0, 76.0, 60.0, v20);
    v171[16] = v21;
    SGSunsetAltitudeToSolarDayPercentage();
    v23 = _elementWithColorAtAltitude(223.0, 75.0, 55.0, v22);
    v171[17] = v23;
    SGSunsetAltitudeToSolarDayPercentage();
    v25 = _elementWithColorAtAltitude(228.0, 73.0, 47.0, v24);
    v171[18] = v25;
    SGSunsetAltitudeToSolarDayPercentage();
    v27 = _elementWithColorAtAltitude(231.0, 78.0, 38.0, v26);
    v171[19] = v27;
    SGSunsetAltitudeToSolarDayPercentage();
    v29 = _elementWithColorAtAltitude(233.0, 82.0, 33.0, v28);
    v171[20] = v29;
    SGSunsetAltitudeToSolarDayPercentage();
    v31 = _elementWithColorAtAltitude(240.0, 96.0, 22.0, v30);
    v171[21] = v31;
    SGSunsetAltitudeToSolarDayPercentage();
    v33 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v32);
    v171[22] = v33;
    SGSunsetAltitudeToSolarDayPercentage();
    v35 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v34);
    v171[23] = v35;
    SGSunsetAltitudeToSolarDayPercentage();
    v37 = _elementWithColorAtAltitude(237.0, 87.0, 24.0, v36);
    v171[24] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:25];
    v164 = [(SGCubicColorCurve *)v163 initWithColorCurveElements:v38];

    v132 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v148 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v39);
    v170[0] = v148;
    SGSunriseAltitudeToSolarDayPercentage();
    v144 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v40);
    v170[1] = v144;
    SGSunriseAltitudeToSolarDayPercentage();
    v139 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v41);
    v170[2] = v139;
    SGSunriseAltitudeToSolarDayPercentage();
    v136 = _elementWithColorAtAltitude(214.0, 74.0, 22.0, v42);
    v170[3] = v136;
    SGSunriseAltitudeToSolarDayPercentage();
    v134 = _elementWithColorAtAltitude(209.0, 30.0, 51.0, v43);
    v170[4] = v134;
    SGSunriseAltitudeToSolarDayPercentage();
    v130 = _elementWithColorAtAltitude(207.0, 25.0, 60.0, v44);
    v170[5] = v130;
    SGSunriseAltitudeToSolarDayPercentage();
    v128 = _elementWithColorAtAltitude(203.0, 21.0, 72.0, v45);
    v170[6] = v128;
    SGSunriseAltitudeToSolarDayPercentage();
    v135 = _elementWithColorAtAltitude(212.0, 23.0, 82.0, v46);
    v170[7] = v135;
    SGSunriseAltitudeToSolarDayPercentage();
    v126 = _elementWithColorAtAltitude(208.0, 31.0, 80.0, v47);
    v170[8] = v126;
    SGSunriseAltitudeToSolarDayPercentage();
    v151 = _elementWithColorAtAltitude(205.0, 40.0, 80.0, v48);
    v170[9] = v151;
    SGSunriseAltitudeToSolarDayPercentage();
    v123 = _elementWithColorAtAltitude(202.0, 62.0, 75.0, v49);
    v170[10] = v123;
    SGSunriseAltitudeToSolarDayPercentage();
    v121 = _elementWithColorAtAltitude(201.0, 59.0, 77.0, v50);
    v170[11] = v121;
    SGSunriseAltitudeToSolarDayPercentage();
    v119 = _elementWithColorAtAltitude(199.0, 53.0, 82.0, v51);
    v170[12] = v119;
    SGSunsetAltitudeToSolarDayPercentage();
    v117 = _elementWithColorAtAltitude(202.0, 67.0, 77.0, v52);
    v170[13] = v117;
    SGSunsetAltitudeToSolarDayPercentage();
    v115 = _elementWithColorAtAltitude(203.0, 74.0, 75.0, v53);
    v170[14] = v115;
    SGSunsetAltitudeToSolarDayPercentage();
    v145 = _elementWithColorAtAltitude(210.0, 57.0, 67.0, v54);
    v170[15] = v145;
    SGSunsetAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(215.0, 49.0, 64.0, v55);
    v170[16] = v56;
    SGSunsetAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(221.0, 42.0, 61.0, v57);
    v170[17] = v58;
    SGSunsetAltitudeToSolarDayPercentage();
    v60 = _elementWithColorAtAltitude(237.0, 30.0, 57.0, v59);
    v170[18] = v60;
    SGSunsetAltitudeToSolarDayPercentage();
    v62 = _elementWithColorAtAltitude(236.0, 38.0, 48.0, v61);
    v170[19] = v62;
    SGSunsetAltitudeToSolarDayPercentage();
    v64 = _elementWithColorAtAltitude(236.0, 46.0, 42.0, v63);
    v170[20] = v64;
    SGSunsetAltitudeToSolarDayPercentage();
    v66 = _elementWithColorAtAltitude(235.0, 68.0, 31.0, v65);
    v170[21] = v66;
    SGSunsetAltitudeToSolarDayPercentage();
    v68 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v67);
    v170[22] = v68;
    SGSunsetAltitudeToSolarDayPercentage();
    v70 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v69);
    v170[23] = v70;
    SGSunsetAltitudeToSolarDayPercentage();
    v72 = _elementWithColorAtAltitude(225.0, 70.0, 27.0, v71);
    v170[24] = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:25];
    v166 = [(SGCubicColorCurve *)v132 initWithColorCurveElements:v73];

    v74 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v157 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v75);
    v169[0] = v157;
    SGSunriseAltitudeToSolarDayPercentage();
    v154 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v76);
    v169[1] = v154;
    SGSunriseAltitudeToSolarDayPercentage();
    v152 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v77);
    v169[2] = v152;
    SGSunriseAltitudeToSolarDayPercentage();
    v156 = _elementWithColorAtAltitude(230.0, 60.0, 55.0, v78);
    v169[3] = v156;
    SGSunriseAltitudeToSolarDayPercentage();
    v155 = _elementWithColorAtAltitude(21.0, 19.0, 61.0, v79);
    v169[4] = v155;
    SGSunriseAltitudeToSolarDayPercentage();
    v150 = _elementWithColorAtAltitude(30.0, 29.0, 74.0, v80);
    v169[5] = v150;
    SGSunriseAltitudeToSolarDayPercentage();
    v149 = _elementWithColorAtAltitude(35.0, 44.0, 94.0, v81);
    v169[6] = v149;
    SGSunriseAltitudeToSolarDayPercentage();
    v146 = _elementWithColorAtAltitude(40.0, 28.0, 98.0, v82);
    v169[7] = v146;
    SGSunriseAltitudeToSolarDayPercentage();
    v160 = _elementWithColorAtAltitude(54.0, 12.0, 86.0, v83);
    v169[8] = v160;
    SGSunriseAltitudeToSolarDayPercentage();
    v142 = _elementWithColorAtAltitude(171.0, 8.0, 82.0, v84);
    v169[9] = v142;
    SGSunriseAltitudeToSolarDayPercentage();
    v140 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v85);
    v169[10] = v140;
    SGSunriseAltitudeToSolarDayPercentage();
    v137 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v86);
    v169[11] = v137;
    SGSunriseAltitudeToSolarDayPercentage();
    v167 = _elementWithColorAtAltitude(210.0, 77.0, 96.0, v87);
    v169[12] = v167;
    SGSunsetAltitudeToSolarDayPercentage();
    v159 = _elementWithColorAtAltitude(208.0, 58.0, 95.0, v88);
    v169[13] = v159;
    SGSunsetAltitudeToSolarDayPercentage();
    v158 = _elementWithColorAtAltitude(206.0, 50.0, 94.0, v89);
    v169[14] = v158;
    SGSunsetAltitudeToSolarDayPercentage();
    v162 = _elementWithColorAtAltitude(204.0, 17.0, 81.0, v90);
    v169[15] = v162;
    SGSunsetAltitudeToSolarDayPercentage();
    v161 = _elementWithColorAtAltitude(54.0, 1.0, 76.0, v91);
    v169[16] = v161;
    SGSunsetAltitudeToSolarDayPercentage();
    v93 = _elementWithColorAtAltitude(29.0, 14.0, 82.0, v92);
    v169[17] = v93;
    SGSunsetAltitudeToSolarDayPercentage();
    v95 = _elementWithColorAtAltitude(28.0, 30.0, 98.0, v94);
    v169[18] = v95;
    SGSunsetAltitudeToSolarDayPercentage();
    v97 = _elementWithColorAtAltitude(344.0, 10.0, 64.0, v96);
    v169[19] = v97;
    SGSunsetAltitudeToSolarDayPercentage();
    v99 = _elementWithColorAtAltitude(245.0, 22.0, 56.0, v98);
    v169[20] = v99;
    SGSunsetAltitudeToSolarDayPercentage();
    v101 = _elementWithColorAtAltitude(226.0, 79.0, 50.0, v100);
    v169[21] = v101;
    SGSunsetAltitudeToSolarDayPercentage();
    v103 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v102);
    v169[22] = v103;
    SGSunsetAltitudeToSolarDayPercentage();
    v105 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v104);
    v169[23] = v105;
    SGSunsetAltitudeToSolarDayPercentage();
    v107 = _elementWithColorAtAltitude(227.0, 70.0, 48.0, v106);
    v169[24] = v107;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:25];
    v109 = [(SGCubicColorCurve *)v74 initWithColorCurveElements:v108];

    v168[0] = v164;
    v168[1] = v166;
    v168[2] = v109;
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:3];
    v111 = self->_dayGradient;
    self->_dayGradient = v110;

    v3 = self->_dayGradient;
  }

  v112 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)civilTwilightColorCurve
{
  v59[24] = *MEMORY[0x277D85DE8];
  civilTwilight = self->_civilTwilight;
  if (!civilTwilight)
  {
    v53 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v4);
    v59[0] = v58;
    SGSunriseAltitudeToSolarDayPercentage();
    v57 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v5);
    v59[1] = v57;
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v6);
    v59[2] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v55 = _elementWithColorAtAltitude(220.0, 70.0, 45.0, v7);
    v59[3] = v55;
    SGSunriseAltitudeToSolarDayPercentage();
    v54 = _elementWithColorAtAltitude(216.0, 70.0, 46.0, v8);
    v59[4] = v54;
    SGSunriseAltitudeToSolarDayPercentage();
    v52 = _elementWithColorAtAltitude(215.0, 70.0, 47.0, v9);
    v59[5] = v52;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(215.0, 65.0, 50.0, v10);
    v59[6] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v11);
    v59[7] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v12);
    v59[8] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v13);
    v59[9] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v14);
    v59[10] = v47;
    SGSunriseAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(210.0, 80.0, 50.0, v15);
    v59[11] = v46;
    SGSunriseAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(208.0, 85.0, 52.0, v16);
    v59[12] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v17);
    v59[13] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(216.0, 75.0, 55.0, v18);
    v59[14] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v42 = _elementWithColorAtAltitude(217.0, 75.0, 55.0, v19);
    v59[15] = v42;
    SGSunsetAltitudeToSolarDayPercentage();
    v21 = _elementWithColorAtAltitude(220.0, 75.0, 55.0, v20);
    v59[16] = v21;
    SGSunsetAltitudeToSolarDayPercentage();
    v23 = _elementWithColorAtAltitude(223.0, 70.0, 55.0, v22);
    v59[17] = v23;
    SGSunsetAltitudeToSolarDayPercentage();
    v25 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v24);
    v59[18] = v25;
    SGSunsetAltitudeToSolarDayPercentage();
    v27 = _elementWithColorAtAltitude(228.0, 70.0, 60.0, v26);
    v59[19] = v27;
    SGSunsetAltitudeToSolarDayPercentage();
    v29 = _elementWithColorAtAltitude(228.0, 70.0, 50.0, v28);
    v59[20] = v29;
    SGSunsetAltitudeToSolarDayPercentage();
    v31 = _elementWithColorAtAltitude(226.0, 80.0, 40.0, v30);
    v59[21] = v31;
    SGSunsetAltitudeToSolarDayPercentage();
    v33 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v32);
    v59[22] = v33;
    SGSunsetAltitudeToSolarDayPercentage();
    v35 = _elementWithColorAtAltitude(224.0, 80.0, 40.0, v34);
    v59[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:24];
    v37 = [(SGCubicColorCurve *)v53 initWithColorCurveElements:v36];
    v38 = self->_civilTwilight;
    self->_civilTwilight = v37;

    civilTwilight = self->_civilTwilight;
  }

  v39 = civilTwilight;
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)nauticalTwilightColorCurve
{
  v59[24] = *MEMORY[0x277D85DE8];
  nauticalTwilight = self->_nauticalTwilight;
  if (!nauticalTwilight)
  {
    v54 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v4);
    v59[0] = v58;
    SGSunriseAltitudeToSolarDayPercentage();
    v57 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v5);
    v59[1] = v57;
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(224.0, 80.0, 30.0, v6);
    v59[2] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v55 = _elementWithColorAtAltitude(216.0, 86.0, 30.0, v7);
    v59[3] = v55;
    SGSunriseAltitudeToSolarDayPercentage();
    v53 = _elementWithColorAtAltitude(210.0, 86.0, 33.0, v8);
    v59[4] = v53;
    SGSunriseAltitudeToSolarDayPercentage();
    v52 = _elementWithColorAtAltitude(208.0, 85.0, 33.0, v9);
    v59[5] = v52;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(206.0, 80.0, 36.0, v10);
    v59[6] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v11);
    v59[7] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v12);
    v59[8] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v13);
    v59[9] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(210.0, 80.0, 37.0, v14);
    v59[10] = v47;
    SGSunriseAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(208.0, 80.0, 37.0, v15);
    v59[11] = v46;
    SGSunriseAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(207.0, 85.0, 39.0, v16);
    v59[12] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(212.0, 85.0, 40.0, v17);
    v59[13] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(212.0, 85.0, 42.0, v18);
    v59[14] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v42 = _elementWithColorAtAltitude(216.0, 85.0, 42.0, v19);
    v59[15] = v42;
    SGSunsetAltitudeToSolarDayPercentage();
    v21 = _elementWithColorAtAltitude(222.0, 80.0, 42.0, v20);
    v59[16] = v21;
    SGSunsetAltitudeToSolarDayPercentage();
    v23 = _elementWithColorAtAltitude(224.0, 75.0, 43.0, v22);
    v59[17] = v23;
    SGSunsetAltitudeToSolarDayPercentage();
    v25 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v24);
    v59[18] = v25;
    SGSunsetAltitudeToSolarDayPercentage();
    v27 = _elementWithColorAtAltitude(228.0, 75.0, 45.0, v26);
    v59[19] = v27;
    SGSunsetAltitudeToSolarDayPercentage();
    v29 = _elementWithColorAtAltitude(228.0, 75.0, 40.0, v28);
    v59[20] = v29;
    SGSunsetAltitudeToSolarDayPercentage();
    v31 = _elementWithColorAtAltitude(224.0, 75.0, 28.0, v30);
    v59[21] = v31;
    SGSunsetAltitudeToSolarDayPercentage();
    v33 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v32);
    v59[22] = v33;
    SGSunsetAltitudeToSolarDayPercentage();
    v35 = _elementWithColorAtAltitude(224.0, 80.0, 28.0, v34);
    v59[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:24];
    v37 = [(SGCubicColorCurve *)v54 initWithColorCurveElements:v36];
    v38 = self->_nauticalTwilight;
    self->_nauticalTwilight = v37;

    nauticalTwilight = self->_nauticalTwilight;
  }

  v39 = nauticalTwilight;
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)astronomicalTwilightColorCurve
{
  v59[24] = *MEMORY[0x277D85DE8];
  astronomicalTwilight = self->_astronomicalTwilight;
  if (!astronomicalTwilight)
  {
    v54 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v4);
    v59[0] = v58;
    SGSunriseAltitudeToSolarDayPercentage();
    v57 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v5);
    v59[1] = v57;
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v6);
    v59[2] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v55 = _elementWithColorAtAltitude(212.0, 82.0, 20.0, v7);
    v59[3] = v55;
    SGSunriseAltitudeToSolarDayPercentage();
    v53 = _elementWithColorAtAltitude(204.0, 85.0, 20.0, v8);
    v59[4] = v53;
    SGSunriseAltitudeToSolarDayPercentage();
    v52 = _elementWithColorAtAltitude(202.0, 85.0, 20.0, v9);
    v59[5] = v52;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(198.0, 90.0, 22.0, v10);
    v59[6] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(200.0, 90.0, 24.0, v11);
    v59[7] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v12);
    v59[8] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v13);
    v59[9] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(200.0, 90.0, 26.0, v14);
    v59[10] = v47;
    SGSunriseAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(204.0, 85.0, 26.0, v15);
    v59[11] = v46;
    SGSunriseAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(206.0, 85.0, 30.0, v16);
    v59[12] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v17);
    v59[13] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(217.0, 85.0, 30.0, v18);
    v59[14] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v42 = _elementWithColorAtAltitude(220.0, 86.0, 30.0, v19);
    v59[15] = v42;
    SGSunsetAltitudeToSolarDayPercentage();
    v21 = _elementWithColorAtAltitude(223.0, 86.0, 30.0, v20);
    v59[16] = v21;
    SGSunsetAltitudeToSolarDayPercentage();
    v23 = _elementWithColorAtAltitude(225.0, 81.0, 30.0, v22);
    v59[17] = v23;
    SGSunsetAltitudeToSolarDayPercentage();
    v25 = _elementWithColorAtAltitude(229.0, 80.0, 30.0, v24);
    v59[18] = v25;
    SGSunsetAltitudeToSolarDayPercentage();
    v27 = _elementWithColorAtAltitude(233.0, 75.0, 30.0, v26);
    v59[19] = v27;
    SGSunsetAltitudeToSolarDayPercentage();
    v29 = _elementWithColorAtAltitude(233.0, 75.0, 28.0, v28);
    v59[20] = v29;
    SGSunsetAltitudeToSolarDayPercentage();
    v31 = _elementWithColorAtAltitude(233.0, 75.0, 22.0, v30);
    v59[21] = v31;
    SGSunsetAltitudeToSolarDayPercentage();
    v33 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v32);
    v59[22] = v33;
    SGSunsetAltitudeToSolarDayPercentage();
    v35 = _elementWithColorAtAltitude(224.0, 82.0, 20.0, v34);
    v59[23] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:24];
    v37 = [(SGCubicColorCurve *)v54 initWithColorCurveElements:v36];
    v38 = self->_astronomicalTwilight;
    self->_astronomicalTwilight = v37;

    astronomicalTwilight = self->_astronomicalTwilight;
  }

  v39 = astronomicalTwilight;
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)innerComplicationColorCurve
{
  v61[25] = *MEMORY[0x277D85DE8];
  innerComplication = self->_innerComplication;
  if (!innerComplication)
  {
    v55 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v60 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v4);
    v61[0] = v60;
    SGSunriseAltitudeToSolarDayPercentage();
    v59 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v5);
    v61[1] = v59;
    SGSunriseAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(225.0, 55.0, 85.0, v6);
    v61[2] = v58;
    SGSunriseAltitudeToSolarDayPercentage();
    v57 = _elementWithColorAtAltitude(223.0, 55.0, 85.0, v7);
    v61[3] = v57;
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(218.0, 55.0, 85.0, v8);
    v61[4] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v54 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v9);
    v61[5] = v54;
    SGSunriseAltitudeToSolarDayPercentage();
    v53 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v10);
    v61[6] = v53;
    SGSunriseAltitudeToSolarDayPercentage();
    v52 = _elementWithColorAtAltitude(216.0, 55.0, 85.0, v11);
    v61[7] = v52;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(212.0, 55.0, 85.0, v12);
    v61[8] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(208.0, 55.0, 85.0, v13);
    v61[9] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(208.0, 60.0, 85.0, v14);
    v61[10] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v15);
    v61[11] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(198.0, 50.0, 90.0, v16);
    v61[12] = v47;
    SGSunsetAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(209.0, 55.0, 85.0, v17);
    v61[13] = v46;
    SGSunsetAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(210.0, 60.0, 85.0, v18);
    v61[14] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(212.0, 60.0, 85.0, v19);
    v61[15] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(218.0, 60.0, 88.0, v20);
    v61[16] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v22 = _elementWithColorAtAltitude(222.0, 60.0, 88.0, v21);
    v61[17] = v22;
    SGSunsetAltitudeToSolarDayPercentage();
    v24 = _elementWithColorAtAltitude(229.0, 60.0, 85.0, v23);
    v61[18] = v24;
    SGSunsetAltitudeToSolarDayPercentage();
    v26 = _elementWithColorAtAltitude(232.0, 55.0, 85.0, v25);
    v61[19] = v26;
    SGSunsetAltitudeToSolarDayPercentage();
    v28 = _elementWithColorAtAltitude(233.0, 55.0, 85.0, v27);
    v61[20] = v28;
    SGSunsetAltitudeToSolarDayPercentage();
    v30 = _elementWithColorAtAltitude(230.0, 55.0, 85.0, v29);
    v61[21] = v30;
    SGSunsetAltitudeToSolarDayPercentage();
    v32 = _elementWithColorAtAltitude(227.0, 55.0, 85.0, v31);
    v61[22] = v32;
    SGSunsetAltitudeToSolarDayPercentage();
    v34 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v33);
    v61[23] = v34;
    SGSunsetAltitudeToSolarDayPercentage();
    v36 = _elementWithColorAtAltitude(228.0, 55.0, 85.0, v35);
    v61[24] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:25];
    v38 = [(SGCubicColorCurve *)v55 initWithColorCurveElements:v37];
    v39 = self->_innerComplication;
    self->_innerComplication = v38;

    innerComplication = self->_innerComplication;
  }

  v40 = innerComplication;
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)outerComplicationColorCurve
{
  v61[25] = *MEMORY[0x277D85DE8];
  outerComplication = self->_outerComplication;
  if (!outerComplication)
  {
    v55 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v60 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v4);
    v61[0] = v60;
    SGSunriseAltitudeToSolarDayPercentage();
    v59 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v5);
    v61[1] = v59;
    SGSunriseAltitudeToSolarDayPercentage();
    v58 = _elementWithColorAtAltitude(225.0, 30.0, 92.0, v6);
    v61[2] = v58;
    SGSunriseAltitudeToSolarDayPercentage();
    v57 = _elementWithColorAtAltitude(223.0, 30.0, 92.0, v7);
    v61[3] = v57;
    SGSunriseAltitudeToSolarDayPercentage();
    v56 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v8);
    v61[4] = v56;
    SGSunriseAltitudeToSolarDayPercentage();
    v54 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v9);
    v61[5] = v54;
    SGSunriseAltitudeToSolarDayPercentage();
    v53 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v10);
    v61[6] = v53;
    SGSunriseAltitudeToSolarDayPercentage();
    v52 = _elementWithColorAtAltitude(216.0, 30.0, 92.0, v11);
    v61[7] = v52;
    SGSunriseAltitudeToSolarDayPercentage();
    v51 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v12);
    v61[8] = v51;
    SGSunriseAltitudeToSolarDayPercentage();
    v50 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v13);
    v61[9] = v50;
    SGSunriseAltitudeToSolarDayPercentage();
    v49 = _elementWithColorAtAltitude(208.0, 30.0, 92.0, v14);
    v61[10] = v49;
    SGSunriseAltitudeToSolarDayPercentage();
    v48 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v15);
    v61[11] = v48;
    SGSunriseAltitudeToSolarDayPercentage();
    v47 = _elementWithColorAtAltitude(198.0, 30.0, 90.0, v16);
    v61[12] = v47;
    SGSunsetAltitudeToSolarDayPercentage();
    v46 = _elementWithColorAtAltitude(209.0, 30.0, 92.0, v17);
    v61[13] = v46;
    SGSunsetAltitudeToSolarDayPercentage();
    v45 = _elementWithColorAtAltitude(210.0, 30.0, 92.0, v18);
    v61[14] = v45;
    SGSunsetAltitudeToSolarDayPercentage();
    v44 = _elementWithColorAtAltitude(212.0, 30.0, 92.0, v19);
    v61[15] = v44;
    SGSunsetAltitudeToSolarDayPercentage();
    v43 = _elementWithColorAtAltitude(218.0, 30.0, 92.0, v20);
    v61[16] = v43;
    SGSunsetAltitudeToSolarDayPercentage();
    v22 = _elementWithColorAtAltitude(222.0, 30.0, 92.0, v21);
    v61[17] = v22;
    SGSunsetAltitudeToSolarDayPercentage();
    v24 = _elementWithColorAtAltitude(229.0, 30.0, 92.0, v23);
    v61[18] = v24;
    SGSunsetAltitudeToSolarDayPercentage();
    v26 = _elementWithColorAtAltitude(232.0, 30.0, 92.0, v25);
    v61[19] = v26;
    SGSunsetAltitudeToSolarDayPercentage();
    v28 = _elementWithColorAtAltitude(233.0, 30.0, 92.0, v27);
    v61[20] = v28;
    SGSunsetAltitudeToSolarDayPercentage();
    v30 = _elementWithColorAtAltitude(230.0, 30.0, 92.0, v29);
    v61[21] = v30;
    SGSunsetAltitudeToSolarDayPercentage();
    v32 = _elementWithColorAtAltitude(227.0, 30.0, 92.0, v31);
    v61[22] = v32;
    SGSunsetAltitudeToSolarDayPercentage();
    v34 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v33);
    v61[23] = v34;
    SGSunsetAltitudeToSolarDayPercentage();
    v36 = _elementWithColorAtAltitude(228.0, 30.0, 92.0, v35);
    v61[24] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:25];
    v38 = [(SGCubicColorCurve *)v55 initWithColorCurveElements:v37];
    v39 = self->_outerComplication;
    self->_outerComplication = v38;

    outerComplication = self->_outerComplication;
  }

  v40 = outerComplication;
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)dayDiskBloomColorCurve
{
  v31[10] = *MEMORY[0x277D85DE8];
  dayDiskBloom = self->_dayDiskBloom;
  if (!dayDiskBloom)
  {
    v28 = [SGCubicColorCurve alloc];
    SGSunriseAltitudeToSolarDayPercentage();
    v30 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v4);
    v31[0] = v30;
    SGSunriseAltitudeToSolarDayPercentage();
    v29 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v5);
    v31[1] = v29;
    SGSunriseAltitudeToSolarDayPercentage();
    v7 = _elementWithColorAtAltitude(45.0, 45.0, 100.0, v6);
    v31[2] = v7;
    SGSunriseAltitudeToSolarDayPercentage();
    v9 = _elementWithColorAtAltitude(45.0, 10.0, 100.0, v8);
    v31[3] = v9;
    SGSunsetAltitudeToSolarDayPercentage();
    v11 = _elementWithColorAtAltitude(45.0, 25.0, 100.0, v10);
    v31[4] = v11;
    SGSunsetAltitudeToSolarDayPercentage();
    v13 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v12);
    v31[5] = v13;
    SGSunsetAltitudeToSolarDayPercentage();
    v15 = _elementWithColorAtAltitude(40.0, 60.0, 100.0, v14);
    v31[6] = v15;
    SGSunsetAltitudeToSolarDayPercentage();
    v17 = _elementWithColorAtAltitude(35.0, 65.0, 100.0, v16);
    v31[7] = v17;
    SGSunsetAltitudeToSolarDayPercentage();
    v19 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v18);
    v31[8] = v19;
    SGSunsetAltitudeToSolarDayPercentage();
    v21 = _elementWithColorAtAltitude(45.0, 40.0, 100.0, v20);
    v31[9] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:10];
    v23 = [(SGCubicColorCurve *)v28 initWithColorCurveElements:v22];
    v24 = self->_dayDiskBloom;
    self->_dayDiskBloom = v23;

    dayDiskBloom = self->_dayDiskBloom;
  }

  v25 = dayDiskBloom;
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end