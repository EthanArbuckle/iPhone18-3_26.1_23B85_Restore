@interface UIImageView(HeadphoneDeviceColorFiltering)
+ (id)_headphoneGetAssetsDictionary:()HeadphoneDeviceColorFiltering;
+ (uint64_t)_headphoneIsProductOfDifferentColors:()HeadphoneDeviceColorFiltering;
- (void)_headphoneApplyFilters:()HeadphoneDeviceColorFiltering pid:darkMode:deviceColor:;
@end

@implementation UIImageView(HeadphoneDeviceColorFiltering)

- (void)_headphoneApplyFilters:()HeadphoneDeviceColorFiltering pid:darkMode:deviceColor:
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    LODWORD(v52) = a4;
    WORD2(v52) = 1024;
    *(&v52 + 6) = a5;
    WORD5(v52) = 1024;
    HIDWORD(v52) = a6;
    _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Headphone Settings UI: Applying filter with pid - %d, darkMode - %d, deviceColor - %d", buf, 0x14u);
  }

  v12 = objc_alloc(MEMORY[0x277CD9EA0]);
  v13 = [v12 initWithType:*MEMORY[0x277CDA2C0]];
  v14 = objc_alloc(MEMORY[0x277CD9EA0]);
  v15 = [v14 initWithType:*MEMORY[0x277CDA270]];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = *(MEMORY[0x277CD9DA0] + 4);
  v50 = *(MEMORY[0x277CD9DA0] + 20);
  v47 = *(MEMORY[0x277CD9DA0] + 28);
  v48 = *(MEMORY[0x277CD9DA0] + 44);
  *v46 = *(MEMORY[0x277CD9DA0] + 52);
  *&v46[12] = *(MEMORY[0x277CD9DA0] + 64);
  v17 = [MEMORY[0x277D755E8] _headphoneIsProductOfDifferentColors:a4];
  if (a5)
  {
    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"DarkMatrixValue-%d", a6];
    }

    else
    {
      v18 = @"DarkMatrixValue";
    }

    if ([MEMORY[0x277D755E8] _headphoneIsProductOfDifferentColors:a4])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"DarkBiasValue-%d", a6];
    }

    else
    {
      v19 = @"DarkBiasValue";
    }

    v20 = [v10 objectForKey:v18];
    [v20 floatValue];
    v22 = v21;

    v23 = [v10 objectForKey:v19];
    [v23 floatValue];
    v25 = v24;

    if (v25 != 0.0 && v22 != 0.0 || ([MEMORY[0x277D755E8] _headphoneIsProductOfDifferentColors:a4] & 1) == 0)
    {
      goto LABEL_25;
    }

    v44 = v10;
    v45 = a1;
    v43 = @"DarkBiasValue-%d";
    v26 = @"DarkMatrixValue-%d";
  }

  else
  {
    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"LightMatrixValue-%d", a6];
    }

    else
    {
      v18 = @"LightMatrixValue";
    }

    if ([MEMORY[0x277D755E8] _headphoneIsProductOfDifferentColors:a4])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"LightBiasValue-%d", a6];
    }

    else
    {
      v19 = @"LightBiasValue";
    }

    v27 = [v10 objectForKey:v18];
    [v27 floatValue];
    v22 = v28;

    v29 = [v10 objectForKey:v19];
    [v29 floatValue];
    v25 = v30;

    if (v25 != 0.0 && v22 != 0.0 || ![MEMORY[0x277D755E8] _headphoneIsProductOfDifferentColors:a4])
    {
      goto LABEL_25;
    }

    v44 = v10;
    v45 = a1;
    v43 = @"LightBiasValue-%d";
    v26 = @"LightMatrixValue-%d";
  }

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:v26, objc_msgSend(MEMORY[0x277D755E8], "_headphoneDefaultFiltersID:", a4)];

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:v43, objc_msgSend(MEMORY[0x277D755E8], "_headphoneDefaultFiltersID:", a4)];

  v10 = v44;
  v33 = [v44 objectForKey:v31];
  [v33 floatValue];
  v22 = v34;

  v35 = [v44 objectForKey:v32];
  [v35 floatValue];
  v25 = v36;

  v18 = v31;
  v19 = v32;
  a1 = v45;
LABEL_25:
  *buf = v22;
  v52 = v49;
  v53 = v50;
  v54 = v22;
  v55 = v47;
  v56 = v48;
  v57 = v22;
  *v58 = *v46;
  *&v58[12] = *&v46[12];
  v37 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:buf];
  [v13 setValue:v37 forKey:@"inputColorMatrix"];

  *&v38 = v25;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  [v15 setValue:v39 forKey:@"inputAmount"];

  [v16 addObject:v13];
  [v16 addObject:v15];
  v40 = [a1 layer];
  [v40 setFilters:v16];

  v41 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v41, OS_LOG_TYPE_DEFAULT, "Headphone Settings UI: Shader applied successfully", buf, 2u);
  }

  v42 = *MEMORY[0x277D85DE8];
}

+ (id)_headphoneGetAssetsDictionary:()HeadphoneDeviceColorFiltering
{
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v1316 = 0;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Headphone Settings UI: Getting shader dictionary", v1316, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  switch(a3)
  {
    case 8194:
    case 8207:
      v30 = [MEMORY[0x277CCABB0] numberWithInt:85];
      [v5 setObject:v30 forKeyedSubscript:@"BudHeight"];

      v31 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v5 setObject:v31 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v32 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v5 setObject:v32 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v33 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v33 forKeyedSubscript:@"CaseHeight"];

      v34 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v5 setObject:v34 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v35 = [MEMORY[0x277CCABB0] numberWithInt:35];
      [v5 setObject:v35 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v36) = 1053609165;
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
      [v5 setObject:v37 forKeyedSubscript:@"DarkBiasValue"];

      LODWORD(v38) = 1065772646;
      v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
      [v5 setObject:v39 forKeyedSubscript:@"DarkMatrixValue"];

      v40 = MEMORY[0x277CCABB0];
      LODWORD(v41) = 0.5;
      goto LABEL_27;
    case 8195:
      v815 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v815 forKeyedSubscript:@"BudHeight"];

      LODWORD(v816) = 1051931443;
      v817 = [MEMORY[0x277CCABB0] numberWithFloat:v816];
      [v5 setObject:v817 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v818) = 1065772646;
      v819 = [MEMORY[0x277CCABB0] numberWithFloat:v818];
      [v5 setObject:v819 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v820) = 0.5;
      v821 = [MEMORY[0x277CCABB0] numberWithFloat:v820];
      [v5 setObject:v821 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v822) = 1066359849;
      v823 = [MEMORY[0x277CCABB0] numberWithFloat:v822];
      [v5 setObject:v823 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v824) = 1044549468;
      v825 = [MEMORY[0x277CCABB0] numberWithFloat:v824];
      [v5 setObject:v825 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v826) = 1065017672;
      v827 = [MEMORY[0x277CCABB0] numberWithFloat:v826];
      [v5 setObject:v827 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v828) = 0.5;
      v829 = [MEMORY[0x277CCABB0] numberWithFloat:v828];
      [v5 setObject:v829 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v830) = 1066695393;
      v831 = [MEMORY[0x277CCABB0] numberWithFloat:v830];
      [v5 setObject:v831 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v832) = 1055286886;
      v833 = [MEMORY[0x277CCABB0] numberWithFloat:v832];
      [v5 setObject:v833 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v834) = 1057300152;
      v835 = [MEMORY[0x277CCABB0] numberWithFloat:v834];
      [v5 setObject:v835 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v836) = 0.5;
      v837 = [MEMORY[0x277CCABB0] numberWithFloat:v836];
      [v5 setObject:v837 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v838) = 1066695393;
      v839 = [MEMORY[0x277CCABB0] numberWithFloat:v838];
      [v5 setObject:v839 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v840) = 1047233823;
      v841 = [MEMORY[0x277CCABB0] numberWithFloat:v840];
      [v5 setObject:v841 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v842) = 1061662228;
      v843 = [MEMORY[0x277CCABB0] numberWithFloat:v842];
      [v5 setObject:v843 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v844) = 0.5;
      v845 = [MEMORY[0x277CCABB0] numberWithFloat:v844];
      [v5 setObject:v845 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v846) = 1066695393;
      v847 = [MEMORY[0x277CCABB0] numberWithFloat:v846];
      [v5 setObject:v847 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v848) = 1047233823;
      v849 = [MEMORY[0x277CCABB0] numberWithFloat:v848];
      [v5 setObject:v849 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v850) = 1061662228;
      v851 = [MEMORY[0x277CCABB0] numberWithFloat:v850];
      [v5 setObject:v851 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v852) = 0.5;
      v853 = [MEMORY[0x277CCABB0] numberWithFloat:v852];
      [v5 setObject:v853 forKeyedSubscript:@"LightBiasValue-13"];

      LODWORD(v854) = 1066695393;
      v855 = [MEMORY[0x277CCABB0] numberWithFloat:v854];
      [v5 setObject:v855 forKeyedSubscript:@"LightMatrixValue-13"];

      LODWORD(v856) = 1055286886;
      v857 = [MEMORY[0x277CCABB0] numberWithFloat:v856];
      [v5 setObject:v857 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v858) = 1059816735;
      v859 = [MEMORY[0x277CCABB0] numberWithFloat:v858];
      [v5 setObject:v859 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v860) = 0.5;
      v861 = [MEMORY[0x277CCABB0] numberWithFloat:v860];
      [v5 setObject:v861 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v862) = 1066695393;
      v863 = [MEMORY[0x277CCABB0] numberWithFloat:v862];
      [v5 setObject:v863 forKeyedSubscript:@"LightMatrixValue-18"];

      LODWORD(v864) = 1056629064;
      v865 = [MEMORY[0x277CCABB0] numberWithFloat:v864];
      [v5 setObject:v865 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v866) = 1058306785;
      v867 = [MEMORY[0x277CCABB0] numberWithFloat:v866];
      [v5 setObject:v867 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v868) = 0.5;
      v869 = [MEMORY[0x277CCABB0] numberWithFloat:v868];
      [v5 setObject:v869 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v870) = 1066695393;
      v871 = [MEMORY[0x277CCABB0] numberWithFloat:v870];
      [v5 setObject:v871 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v872) = 1056293519;
      v873 = [MEMORY[0x277CCABB0] numberWithFloat:v872];
      [v5 setObject:v873 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v874) = 1060320051;
      v875 = [MEMORY[0x277CCABB0] numberWithFloat:v874];
      [v5 setObject:v875 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v876) = 0.5;
      v877 = [MEMORY[0x277CCABB0] numberWithFloat:v876];
      [v5 setObject:v877 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v878) = 1066695393;
      v879 = [MEMORY[0x277CCABB0] numberWithFloat:v878];
      [v5 setObject:v879 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v880) = 1056125747;
      v881 = [MEMORY[0x277CCABB0] numberWithFloat:v880];
      [v5 setObject:v881 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v882) = 1058977874;
      v883 = [MEMORY[0x277CCABB0] numberWithFloat:v882];
      [v5 setObject:v883 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v884) = 0.5;
      v885 = [MEMORY[0x277CCABB0] numberWithFloat:v884];
      [v5 setObject:v885 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v886) = 1066695393;
      v887 = [MEMORY[0x277CCABB0] numberWithFloat:v886];
      [v5 setObject:v887 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v888) = 1055957975;
      v889 = [MEMORY[0x277CCABB0] numberWithFloat:v888];
      [v5 setObject:v889 forKeyedSubscript:@"DarkBiasValue-23"];

      LODWORD(v890) = 1052266988;
      v891 = [MEMORY[0x277CCABB0] numberWithFloat:v890];
      [v5 setObject:v891 forKeyedSubscript:@"DarkMatrixValue-23"];

      LODWORD(v892) = 0.5;
      v893 = [MEMORY[0x277CCABB0] numberWithFloat:v892];
      [v5 setObject:v893 forKeyedSubscript:@"LightBiasValue-23"];

      LODWORD(v894) = 1066695393;
      v895 = [MEMORY[0x277CCABB0] numberWithFloat:v894];
      [v5 setObject:v895 forKeyedSubscript:@"LightMatrixValue-23"];

      LODWORD(v896) = 1058642330;
      v897 = [MEMORY[0x277CCABB0] numberWithFloat:v896];
      [v5 setObject:v897 forKeyedSubscript:@"DarkBiasValue-32"];

      LODWORD(v898) = 1049582633;
      v899 = [MEMORY[0x277CCABB0] numberWithFloat:v898];
      [v5 setObject:v899 forKeyedSubscript:@"DarkMatrixValue-32"];

      LODWORD(v900) = 0.5;
      v901 = [MEMORY[0x277CCABB0] numberWithFloat:v900];
      [v5 setObject:v901 forKeyedSubscript:@"LightBiasValue-32"];

      LODWORD(v902) = 1066695393;
      v903 = [MEMORY[0x277CCABB0] numberWithFloat:v902];
      [v5 setObject:v903 forKeyedSubscript:@"LightMatrixValue-32"];

      LODWORD(v904) = 1052266988;
      v905 = [MEMORY[0x277CCABB0] numberWithFloat:v904];
      [v5 setObject:v905 forKeyedSubscript:@"DarkBiasValue-33"];

      LODWORD(v906) = 1059313418;
      v907 = [MEMORY[0x277CCABB0] numberWithFloat:v906];
      [v5 setObject:v907 forKeyedSubscript:@"DarkMatrixValue-33"];

      LODWORD(v908) = 0.5;
      v909 = [MEMORY[0x277CCABB0] numberWithFloat:v908];
      [v5 setObject:v909 forKeyedSubscript:@"LightBiasValue-33"];

      LODWORD(v910) = 1066695393;
      v911 = [MEMORY[0x277CCABB0] numberWithFloat:v910];
      [v5 setObject:v911 forKeyedSubscript:@"LightMatrixValue-33"];

      LODWORD(v912) = 1056293519;
      v913 = [MEMORY[0x277CCABB0] numberWithFloat:v912];
      [v5 setObject:v913 forKeyedSubscript:@"DarkBiasValue-34"];

      LODWORD(v914) = 0.5;
      v915 = [MEMORY[0x277CCABB0] numberWithFloat:v914];
      [v5 setObject:v915 forKeyedSubscript:@"DarkMatrixValue-34"];

      LODWORD(v916) = 0.5;
      v917 = [MEMORY[0x277CCABB0] numberWithFloat:v916];
      [v5 setObject:v917 forKeyedSubscript:@"LightBiasValue-34"];

      LODWORD(v918) = 1066695393;
      v919 = [MEMORY[0x277CCABB0] numberWithFloat:v918];
      [v5 setObject:v919 forKeyedSubscript:@"LightMatrixValue-34"];

      LODWORD(v920) = 1053609165;
      v921 = [MEMORY[0x277CCABB0] numberWithFloat:v920];
      [v5 setObject:v921 forKeyedSubscript:@"DarkBiasValue-35"];

      LODWORD(v922) = 1058139013;
      v923 = [MEMORY[0x277CCABB0] numberWithFloat:v922];
      [v5 setObject:v923 forKeyedSubscript:@"DarkMatrixValue-35"];

      LODWORD(v924) = 0.5;
      v925 = [MEMORY[0x277CCABB0] numberWithFloat:v924];
      [v5 setObject:v925 forKeyedSubscript:@"LightBiasValue-35"];

      LODWORD(v926) = 1066695393;
      v927 = [MEMORY[0x277CCABB0] numberWithFloat:v926];
      [v5 setObject:v927 forKeyedSubscript:@"LightMatrixValue-35"];

      LODWORD(v928) = 1056293519;
      v929 = [MEMORY[0x277CCABB0] numberWithFloat:v928];
      [v5 setObject:v929 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v930) = 1054280253;
      v931 = [MEMORY[0x277CCABB0] numberWithFloat:v930];
      [v5 setObject:v931 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v932) = 0.5;
      v933 = [MEMORY[0x277CCABB0] numberWithFloat:v932];
      [v5 setObject:v933 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v934) = 1066695393;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v934];
      v132 = @"LightMatrixValue-37";
      break;
    case 8197:
      v639 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v639 forKeyedSubscript:@"BudHeight"];

      LODWORD(v640) = 1049414861;
      v641 = [MEMORY[0x277CCABB0] numberWithFloat:v640];
      [v5 setObject:v641 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v642) = 1066192077;
      v643 = [MEMORY[0x277CCABB0] numberWithFloat:v642];
      [v5 setObject:v643 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v644) = 0.5;
      v645 = [MEMORY[0x277CCABB0] numberWithFloat:v644];
      [v5 setObject:v645 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v646) = 1066359849;
      v647 = [MEMORY[0x277CCABB0] numberWithFloat:v646];
      [v5 setObject:v647 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v648) = 1056125747;
      v649 = [MEMORY[0x277CCABB0] numberWithFloat:v648];
      [v5 setObject:v649 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v650) = 1053944709;
      v651 = [MEMORY[0x277CCABB0] numberWithFloat:v650];
      [v5 setObject:v651 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v652) = 0.5;
      v653 = [MEMORY[0x277CCABB0] numberWithFloat:v652];
      [v5 setObject:v653 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v654) = 1066695393;
      v655 = [MEMORY[0x277CCABB0] numberWithFloat:v654];
      [v5 setObject:v655 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v656) = 1059481190;
      v657 = [MEMORY[0x277CCABB0] numberWithFloat:v656];
      [v5 setObject:v657 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v658) = 1049582633;
      v659 = [MEMORY[0x277CCABB0] numberWithFloat:v658];
      [v5 setObject:v659 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v660) = 0.5;
      v661 = [MEMORY[0x277CCABB0] numberWithFloat:v660];
      [v5 setObject:v661 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v662) = 1066695393;
      v663 = [MEMORY[0x277CCABB0] numberWithFloat:v662];
      [v5 setObject:v663 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v664) = 1059984507;
      v665 = [MEMORY[0x277CCABB0] numberWithFloat:v664];
      [v5 setObject:v665 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v666) = 1051931443;
      v667 = [MEMORY[0x277CCABB0] numberWithFloat:v666];
      [v5 setObject:v667 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v668) = 0.5;
      v669 = [MEMORY[0x277CCABB0] numberWithFloat:v668];
      [v5 setObject:v669 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v670) = 1066695393;
      v671 = [MEMORY[0x277CCABB0] numberWithFloat:v670];
      [v5 setObject:v671 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v672) = 1050253722;
      v673 = [MEMORY[0x277CCABB0] numberWithFloat:v672];
      [v5 setObject:v673 forKeyedSubscript:@"DarkBiasValue-27"];

      LODWORD(v674) = 1065520988;
      v675 = [MEMORY[0x277CCABB0] numberWithFloat:v674];
      [v5 setObject:v675 forKeyedSubscript:@"DarkMatrixValue-27"];

      LODWORD(v676) = 0.5;
      v677 = [MEMORY[0x277CCABB0] numberWithFloat:v676];
      [v5 setObject:v677 forKeyedSubscript:@"LightBiasValue-27"];

      LODWORD(v678) = 1066695393;
      v679 = [MEMORY[0x277CCABB0] numberWithFloat:v678];
      [v5 setObject:v679 forKeyedSubscript:@"LightMatrixValue-27"];

      LODWORD(v680) = 1056293519;
      v681 = [MEMORY[0x277CCABB0] numberWithFloat:v680];
      [v5 setObject:v681 forKeyedSubscript:@"DarkBiasValue-29"];

      LODWORD(v682) = 1035489772;
      v683 = [MEMORY[0x277CCABB0] numberWithFloat:v682];
      [v5 setObject:v683 forKeyedSubscript:@"DarkMatrixValue-29"];

      LODWORD(v684) = 0.5;
      v685 = [MEMORY[0x277CCABB0] numberWithFloat:v684];
      [v5 setObject:v685 forKeyedSubscript:@"LightBiasValue-29"];

      LODWORD(v686) = 1066695393;
      v687 = [MEMORY[0x277CCABB0] numberWithFloat:v686];
      [v5 setObject:v687 forKeyedSubscript:@"LightMatrixValue-29"];

      LODWORD(v688) = 1055286886;
      v689 = [MEMORY[0x277CCABB0] numberWithFloat:v688];
      [v5 setObject:v689 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v690) = 1057132380;
      v691 = [MEMORY[0x277CCABB0] numberWithFloat:v690];
      [v5 setObject:v691 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v692) = 0.5;
      v693 = [MEMORY[0x277CCABB0] numberWithFloat:v692];
      [v5 setObject:v693 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v694) = 1066695393;
      v695 = [MEMORY[0x277CCABB0] numberWithFloat:v694];
      [v5 setObject:v695 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v696) = 1056293519;
      v697 = [MEMORY[0x277CCABB0] numberWithFloat:v696];
      [v5 setObject:v697 forKeyedSubscript:@"DarkBiasValue-65"];

      LODWORD(v698) = 1062836634;
      v699 = [MEMORY[0x277CCABB0] numberWithFloat:v698];
      [v5 setObject:v699 forKeyedSubscript:@"DarkMatrixValue-65"];

      LODWORD(v700) = 0.5;
      v701 = [MEMORY[0x277CCABB0] numberWithFloat:v700];
      [v5 setObject:v701 forKeyedSubscript:@"LightBiasValue-65"];

      LODWORD(v702) = 1066695393;
      v703 = [MEMORY[0x277CCABB0] numberWithFloat:v702];
      [v5 setObject:v703 forKeyedSubscript:@"LightMatrixValue-65"];

      LODWORD(v704) = 1055286886;
      v705 = [MEMORY[0x277CCABB0] numberWithFloat:v704];
      [v5 setObject:v705 forKeyedSubscript:@"DarkBiasValue-73"];

      LODWORD(v706) = 1059816735;
      v707 = [MEMORY[0x277CCABB0] numberWithFloat:v706];
      [v5 setObject:v707 forKeyedSubscript:@"DarkMatrixValue-73"];

      LODWORD(v708) = 0.5;
      v709 = [MEMORY[0x277CCABB0] numberWithFloat:v708];
      [v5 setObject:v709 forKeyedSubscript:@"LightBiasValue-73"];

      LODWORD(v710) = 1066695393;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v710];
      v132 = @"LightMatrixValue-73";
      break;
    case 8198:
      v935 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v935 forKeyedSubscript:@"BudHeight"];

      LODWORD(v936) = 1051931443;
      v937 = [MEMORY[0x277CCABB0] numberWithFloat:v936];
      [v5 setObject:v937 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v938) = 1065772646;
      v939 = [MEMORY[0x277CCABB0] numberWithFloat:v938];
      [v5 setObject:v939 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v940) = 0.5;
      v941 = [MEMORY[0x277CCABB0] numberWithFloat:v940];
      [v5 setObject:v941 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v942) = 1066695393;
      v943 = [MEMORY[0x277CCABB0] numberWithFloat:v942];
      [v5 setObject:v943 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v944) = 1058726216;
      v945 = [MEMORY[0x277CCABB0] numberWithFloat:v944];
      [v5 setObject:v945 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v946) = 1046562734;
      v947 = [MEMORY[0x277CCABB0] numberWithFloat:v946];
      [v5 setObject:v947 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v948) = 0.5;
      v949 = [MEMORY[0x277CCABB0] numberWithFloat:v948];
      [v5 setObject:v949 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v950) = 1066695393;
      v951 = [MEMORY[0x277CCABB0] numberWithFloat:v950];
      [v5 setObject:v951 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v952) = 1056293519;
      v953 = [MEMORY[0x277CCABB0] numberWithFloat:v952];
      [v5 setObject:v953 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v954) = 1064514355;
      v955 = [MEMORY[0x277CCABB0] numberWithFloat:v954];
      [v5 setObject:v955 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v956) = 0.5;
      v957 = [MEMORY[0x277CCABB0] numberWithFloat:v956];
      [v5 setObject:v957 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v958) = 1066695393;
      v959 = [MEMORY[0x277CCABB0] numberWithFloat:v958];
      [v5 setObject:v959 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v960) = 1054951342;
      v961 = [MEMORY[0x277CCABB0] numberWithFloat:v960];
      [v5 setObject:v961 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v962) = 1062836634;
      v963 = [MEMORY[0x277CCABB0] numberWithFloat:v962];
      [v5 setObject:v963 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v964) = 0.5;
      v965 = [MEMORY[0x277CCABB0] numberWithFloat:v964];
      [v5 setObject:v965 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v966) = 1066695393;
      v967 = [MEMORY[0x277CCABB0] numberWithFloat:v966];
      [v5 setObject:v967 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v968) = 1055286886;
      v969 = [MEMORY[0x277CCABB0] numberWithFloat:v968];
      [v5 setObject:v969 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v970) = 1062836634;
      v971 = [MEMORY[0x277CCABB0] numberWithFloat:v970];
      [v5 setObject:v971 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v972) = 0.5;
      v973 = [MEMORY[0x277CCABB0] numberWithFloat:v972];
      [v5 setObject:v973 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v974) = 1066695393;
      v975 = [MEMORY[0x277CCABB0] numberWithFloat:v974];
      [v5 setObject:v975 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v976) = 1059481190;
      v977 = [MEMORY[0x277CCABB0] numberWithFloat:v976];
      [v5 setObject:v977 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v978) = 1045220557;
      v979 = [MEMORY[0x277CCABB0] numberWithFloat:v978];
      [v5 setObject:v979 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v980) = 0.5;
      v981 = [MEMORY[0x277CCABB0] numberWithFloat:v980];
      [v5 setObject:v981 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v982) = 1066695393;
      v983 = [MEMORY[0x277CCABB0] numberWithFloat:v982];
      [v5 setObject:v983 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v984) = 1055622431;
      v985 = [MEMORY[0x277CCABB0] numberWithFloat:v984];
      [v5 setObject:v985 forKeyedSubscript:@"DarkBiasValue-14"];

      LODWORD(v986) = 0.75;
      v987 = [MEMORY[0x277CCABB0] numberWithFloat:v986];
      [v5 setObject:v987 forKeyedSubscript:@"DarkMatrixValue-14"];

      LODWORD(v988) = 0.5;
      v989 = [MEMORY[0x277CCABB0] numberWithFloat:v988];
      [v5 setObject:v989 forKeyedSubscript:@"LightBiasValue-14"];

      LODWORD(v990) = 1066695393;
      v991 = [MEMORY[0x277CCABB0] numberWithFloat:v990];
      [v5 setObject:v991 forKeyedSubscript:@"LightMatrixValue-14"];

      LODWORD(v992) = 1056293519;
      v993 = [MEMORY[0x277CCABB0] numberWithFloat:v992];
      [v5 setObject:v993 forKeyedSubscript:@"DarkBiasValue-15"];

      LODWORD(v994) = 1061494456;
      v995 = [MEMORY[0x277CCABB0] numberWithFloat:v994];
      [v5 setObject:v995 forKeyedSubscript:@"DarkMatrixValue-15"];

      LODWORD(v996) = 0.5;
      v997 = [MEMORY[0x277CCABB0] numberWithFloat:v996];
      [v5 setObject:v997 forKeyedSubscript:@"LightBiasValue-15"];

      LODWORD(v998) = 1066695393;
      v999 = [MEMORY[0x277CCABB0] numberWithFloat:v998];
      [v5 setObject:v999 forKeyedSubscript:@"LightMatrixValue-15"];

      LODWORD(v1000) = 1059145646;
      v1001 = [MEMORY[0x277CCABB0] numberWithFloat:v1000];
      [v5 setObject:v1001 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v1002) = 1052938076;
      v1003 = [MEMORY[0x277CCABB0] numberWithFloat:v1002];
      [v5 setObject:v1003 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v1004) = 0.5;
      v1005 = [MEMORY[0x277CCABB0] numberWithFloat:v1004];
      [v5 setObject:v1005 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v1006) = 1066695393;
      v1007 = [MEMORY[0x277CCABB0] numberWithFloat:v1006];
      [v5 setObject:v1007 forKeyedSubscript:@"LightMatrixValue-18"];

      LODWORD(v1008) = 1057132380;
      v1009 = [MEMORY[0x277CCABB0] numberWithFloat:v1008];
      [v5 setObject:v1009 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v1010) = 1059481190;
      v1011 = [MEMORY[0x277CCABB0] numberWithFloat:v1010];
      [v5 setObject:v1011 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v1012) = 0.5;
      v1013 = [MEMORY[0x277CCABB0] numberWithFloat:v1012];
      [v5 setObject:v1013 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v1014) = 1066695393;
      v1015 = [MEMORY[0x277CCABB0] numberWithFloat:v1014];
      [v5 setObject:v1015 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v1016) = 1058810102;
      v1017 = [MEMORY[0x277CCABB0] numberWithFloat:v1016];
      [v5 setObject:v1017 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v1018) = 1051260355;
      v1019 = [MEMORY[0x277CCABB0] numberWithFloat:v1018];
      [v5 setObject:v1019 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v1020) = 0.5;
      v1021 = [MEMORY[0x277CCABB0] numberWithFloat:v1020];
      [v5 setObject:v1021 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v1022) = 1066695393;
      v1023 = [MEMORY[0x277CCABB0] numberWithFloat:v1022];
      [v5 setObject:v1023 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v1024) = 1058977874;
      v1025 = [MEMORY[0x277CCABB0] numberWithFloat:v1024];
      [v5 setObject:v1025 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v1026) = 1050924810;
      v1027 = [MEMORY[0x277CCABB0] numberWithFloat:v1026];
      [v5 setObject:v1027 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v1028) = 0.5;
      v1029 = [MEMORY[0x277CCABB0] numberWithFloat:v1028];
      [v5 setObject:v1029 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v1030) = 1066695393;
      v1031 = [MEMORY[0x277CCABB0] numberWithFloat:v1030];
      [v5 setObject:v1031 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v1032) = 1051931443;
      v1033 = [MEMORY[0x277CCABB0] numberWithFloat:v1032];
      [v5 setObject:v1033 forKeyedSubscript:@"DarkBiasValue-27"];

      LODWORD(v1034) = 1065772646;
      v1035 = [MEMORY[0x277CCABB0] numberWithFloat:v1034];
      [v5 setObject:v1035 forKeyedSubscript:@"DarkMatrixValue-27"];

      LODWORD(v1036) = 0.5;
      v1037 = [MEMORY[0x277CCABB0] numberWithFloat:v1036];
      [v5 setObject:v1037 forKeyedSubscript:@"LightBiasValue-27"];

      LODWORD(v1038) = 1066695393;
      v1039 = [MEMORY[0x277CCABB0] numberWithFloat:v1038];
      [v5 setObject:v1039 forKeyedSubscript:@"LightMatrixValue-27"];

      LODWORD(v1040) = 1056293519;
      v1041 = [MEMORY[0x277CCABB0] numberWithFloat:v1040];
      [v5 setObject:v1041 forKeyedSubscript:@"DarkBiasValue-29"];

      LODWORD(v1042) = 1062668861;
      v1043 = [MEMORY[0x277CCABB0] numberWithFloat:v1042];
      [v5 setObject:v1043 forKeyedSubscript:@"DarkMatrixValue-29"];

      LODWORD(v1044) = 0.5;
      v1045 = [MEMORY[0x277CCABB0] numberWithFloat:v1044];
      [v5 setObject:v1045 forKeyedSubscript:@"LightBiasValue-29"];

      LODWORD(v1046) = 1066695393;
      v1047 = [MEMORY[0x277CCABB0] numberWithFloat:v1046];
      [v5 setObject:v1047 forKeyedSubscript:@"LightMatrixValue-29"];

      LODWORD(v1048) = 1055957975;
      v1049 = [MEMORY[0x277CCABB0] numberWithFloat:v1048];
      [v5 setObject:v1049 forKeyedSubscript:@"DarkBiasValue-32"];

      LODWORD(v1050) = 1059984507;
      v1051 = [MEMORY[0x277CCABB0] numberWithFloat:v1050];
      [v5 setObject:v1051 forKeyedSubscript:@"DarkMatrixValue-32"];

      LODWORD(v1052) = 0.5;
      v1053 = [MEMORY[0x277CCABB0] numberWithFloat:v1052];
      [v5 setObject:v1053 forKeyedSubscript:@"LightBiasValue-32"];

      LODWORD(v1054) = 1066695393;
      v1055 = [MEMORY[0x277CCABB0] numberWithFloat:v1054];
      [v5 setObject:v1055 forKeyedSubscript:@"LightMatrixValue-32"];

      LODWORD(v1056) = 1056461292;
      v1057 = [MEMORY[0x277CCABB0] numberWithFloat:v1056];
      [v5 setObject:v1057 forKeyedSubscript:@"DarkBiasValue-33"];

      LODWORD(v1058) = 1059648963;
      v1059 = [MEMORY[0x277CCABB0] numberWithFloat:v1058];
      [v5 setObject:v1059 forKeyedSubscript:@"DarkMatrixValue-33"];

      LODWORD(v1060) = 0.5;
      v1061 = [MEMORY[0x277CCABB0] numberWithFloat:v1060];
      [v5 setObject:v1061 forKeyedSubscript:@"LightBiasValue-33"];

      LODWORD(v1062) = 1066695393;
      v1063 = [MEMORY[0x277CCABB0] numberWithFloat:v1062];
      [v5 setObject:v1063 forKeyedSubscript:@"LightMatrixValue-33"];

      LODWORD(v1064) = 1056293519;
      v1065 = [MEMORY[0x277CCABB0] numberWithFloat:v1064];
      [v5 setObject:v1065 forKeyedSubscript:@"DarkBiasValue-34"];

      LODWORD(v1066) = 1061326684;
      v1067 = [MEMORY[0x277CCABB0] numberWithFloat:v1066];
      [v5 setObject:v1067 forKeyedSubscript:@"DarkMatrixValue-34"];

      LODWORD(v1068) = 0.5;
      v1069 = [MEMORY[0x277CCABB0] numberWithFloat:v1068];
      [v5 setObject:v1069 forKeyedSubscript:@"LightBiasValue-34"];

      LODWORD(v1070) = 1066695393;
      v1071 = [MEMORY[0x277CCABB0] numberWithFloat:v1070];
      [v5 setObject:v1071 forKeyedSubscript:@"LightMatrixValue-34"];

      LODWORD(v1072) = 1055622431;
      v1073 = [MEMORY[0x277CCABB0] numberWithFloat:v1072];
      [v5 setObject:v1073 forKeyedSubscript:@"DarkBiasValue-35"];

      LODWORD(v1074) = 1059648963;
      v1075 = [MEMORY[0x277CCABB0] numberWithFloat:v1074];
      [v5 setObject:v1075 forKeyedSubscript:@"DarkMatrixValue-35"];

      LODWORD(v1076) = 0.5;
      v1077 = [MEMORY[0x277CCABB0] numberWithFloat:v1076];
      [v5 setObject:v1077 forKeyedSubscript:@"LightBiasValue-35"];

      LODWORD(v1078) = 1066695393;
      v1079 = [MEMORY[0x277CCABB0] numberWithFloat:v1078];
      [v5 setObject:v1079 forKeyedSubscript:@"LightMatrixValue-35"];

      LODWORD(v1080) = 1058306785;
      v1081 = [MEMORY[0x277CCABB0] numberWithFloat:v1080];
      [v5 setObject:v1081 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v1082) = 1051092582;
      v1083 = [MEMORY[0x277CCABB0] numberWithFloat:v1082];
      [v5 setObject:v1083 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v1084) = 0.5;
      v1085 = [MEMORY[0x277CCABB0] numberWithFloat:v1084];
      [v5 setObject:v1085 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v1086) = 1066695393;
      v1087 = [MEMORY[0x277CCABB0] numberWithFloat:v1086];
      [v5 setObject:v1087 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v1088) = 1054951342;
      v1089 = [MEMORY[0x277CCABB0] numberWithFloat:v1088];
      [v5 setObject:v1089 forKeyedSubscript:@"DarkBiasValue-42"];

      LODWORD(v1090) = 1062501089;
      v1091 = [MEMORY[0x277CCABB0] numberWithFloat:v1090];
      [v5 setObject:v1091 forKeyedSubscript:@"DarkMatrixValue-42"];

      LODWORD(v1092) = 0.5;
      v1093 = [MEMORY[0x277CCABB0] numberWithFloat:v1092];
      [v5 setObject:v1093 forKeyedSubscript:@"LightBiasValue-42"];

      LODWORD(v1094) = 1066695393;
      v1095 = [MEMORY[0x277CCABB0] numberWithFloat:v1094];
      [v5 setObject:v1095 forKeyedSubscript:@"LightMatrixValue-42"];

      LODWORD(v1096) = 1054280253;
      v1097 = [MEMORY[0x277CCABB0] numberWithFloat:v1096];
      [v5 setObject:v1097 forKeyedSubscript:@"DarkBiasValue-46"];

      LODWORD(v1098) = 1063843267;
      v1099 = [MEMORY[0x277CCABB0] numberWithFloat:v1098];
      [v5 setObject:v1099 forKeyedSubscript:@"DarkMatrixValue-46"];

      LODWORD(v1100) = 0.5;
      v1101 = [MEMORY[0x277CCABB0] numberWithFloat:v1100];
      [v5 setObject:v1101 forKeyedSubscript:@"LightBiasValue-46"];

      LODWORD(v1102) = 1066695393;
      v1103 = [MEMORY[0x277CCABB0] numberWithFloat:v1102];
      [v5 setObject:v1103 forKeyedSubscript:@"LightMatrixValue-46"];

      LODWORD(v1104) = 1051931443;
      v1105 = [MEMORY[0x277CCABB0] numberWithFloat:v1104];
      [v5 setObject:v1105 forKeyedSubscript:@"DarkBiasValue-47"];

      LODWORD(v1106) = 1065772646;
      v1107 = [MEMORY[0x277CCABB0] numberWithFloat:v1106];
      [v5 setObject:v1107 forKeyedSubscript:@"DarkMatrixValue-47"];

      LODWORD(v1108) = 0.5;
      v1109 = [MEMORY[0x277CCABB0] numberWithFloat:v1108];
      [v5 setObject:v1109 forKeyedSubscript:@"LightBiasValue-47"];

      LODWORD(v1110) = 1066695393;
      v1111 = [MEMORY[0x277CCABB0] numberWithFloat:v1110];
      [v5 setObject:v1111 forKeyedSubscript:@"LightMatrixValue-47"];

      LODWORD(v1112) = 1054615798;
      v1113 = [MEMORY[0x277CCABB0] numberWithFloat:v1112];
      [v5 setObject:v1113 forKeyedSubscript:@"DarkBiasValue-61"];

      LODWORD(v1114) = 1063507722;
      v1115 = [MEMORY[0x277CCABB0] numberWithFloat:v1114];
      [v5 setObject:v1115 forKeyedSubscript:@"DarkMatrixValue-61"];

      LODWORD(v1116) = 0.5;
      v1117 = [MEMORY[0x277CCABB0] numberWithFloat:v1116];
      [v5 setObject:v1117 forKeyedSubscript:@"LightBiasValue-61"];

      LODWORD(v1118) = 1066695393;
      v1119 = [MEMORY[0x277CCABB0] numberWithFloat:v1118];
      [v5 setObject:v1119 forKeyedSubscript:@"LightMatrixValue-61"];

      LODWORD(v1120) = 1053944709;
      v1121 = [MEMORY[0x277CCABB0] numberWithFloat:v1120];
      [v5 setObject:v1121 forKeyedSubscript:@"DarkBiasValue-62"];

      LODWORD(v1122) = 1064011039;
      v1123 = [MEMORY[0x277CCABB0] numberWithFloat:v1122];
      [v5 setObject:v1123 forKeyedSubscript:@"DarkMatrixValue-62"];

      LODWORD(v1124) = 0.5;
      v1125 = [MEMORY[0x277CCABB0] numberWithFloat:v1124];
      [v5 setObject:v1125 forKeyedSubscript:@"LightBiasValue-62"];

      LODWORD(v1126) = 1066695393;
      v1127 = [MEMORY[0x277CCABB0] numberWithFloat:v1126];
      [v5 setObject:v1127 forKeyedSubscript:@"LightMatrixValue-62"];

      LODWORD(v1128) = 1054951342;
      v1129 = [MEMORY[0x277CCABB0] numberWithFloat:v1128];
      [v5 setObject:v1129 forKeyedSubscript:@"DarkBiasValue-63"];

      LODWORD(v1130) = 1064011039;
      v1131 = [MEMORY[0x277CCABB0] numberWithFloat:v1130];
      [v5 setObject:v1131 forKeyedSubscript:@"DarkMatrixValue-63"];

      LODWORD(v1132) = 0.5;
      v1133 = [MEMORY[0x277CCABB0] numberWithFloat:v1132];
      [v5 setObject:v1133 forKeyedSubscript:@"LightBiasValue-63"];

      LODWORD(v1134) = 1066695393;
      v1135 = [MEMORY[0x277CCABB0] numberWithFloat:v1134];
      [v5 setObject:v1135 forKeyedSubscript:@"LightMatrixValue-63"];

      LODWORD(v1136) = 1054951342;
      v1137 = [MEMORY[0x277CCABB0] numberWithFloat:v1136];
      [v5 setObject:v1137 forKeyedSubscript:@"DarkBiasValue-64"];

      LODWORD(v1138) = 1060487823;
      v1139 = [MEMORY[0x277CCABB0] numberWithFloat:v1138];
      [v5 setObject:v1139 forKeyedSubscript:@"DarkMatrixValue-64"];

      LODWORD(v1140) = 0.5;
      v1141 = [MEMORY[0x277CCABB0] numberWithFloat:v1140];
      [v5 setObject:v1141 forKeyedSubscript:@"LightBiasValue-64"];

      LODWORD(v1142) = 1066695393;
      v1143 = [MEMORY[0x277CCABB0] numberWithFloat:v1142];
      [v5 setObject:v1143 forKeyedSubscript:@"LightMatrixValue-64"];

      LODWORD(v1144) = 1055957975;
      v1145 = [MEMORY[0x277CCABB0] numberWithFloat:v1144];
      [v5 setObject:v1145 forKeyedSubscript:@"DarkBiasValue-91"];

      LODWORD(v1146) = 1064011039;
      v1147 = [MEMORY[0x277CCABB0] numberWithFloat:v1146];
      [v5 setObject:v1147 forKeyedSubscript:@"DarkMatrixValue-91"];

      LODWORD(v1148) = 0.5;
      v1149 = [MEMORY[0x277CCABB0] numberWithFloat:v1148];
      [v5 setObject:v1149 forKeyedSubscript:@"LightBiasValue-91"];

      LODWORD(v1150) = 1065185444;
      v1151 = [MEMORY[0x277CCABB0] numberWithFloat:v1150];
      [v5 setObject:v1151 forKeyedSubscript:@"LightMatrixValue-91"];

      LODWORD(v1152) = 1055957975;
      v1153 = [MEMORY[0x277CCABB0] numberWithFloat:v1152];
      [v5 setObject:v1153 forKeyedSubscript:@"DarkBiasValue-92"];

      LODWORD(v1154) = 1063675494;
      v1155 = [MEMORY[0x277CCABB0] numberWithFloat:v1154];
      [v5 setObject:v1155 forKeyedSubscript:@"DarkMatrixValue-92"];

      LODWORD(v1156) = 0.5;
      v1157 = [MEMORY[0x277CCABB0] numberWithFloat:v1156];
      [v5 setObject:v1157 forKeyedSubscript:@"LightBiasValue-92"];

      LODWORD(v1158) = 1065185444;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v1158];
      v132 = @"LightMatrixValue-92";
      break;
    case 8201:
      v711 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v711 forKeyedSubscript:@"BudHeight"];

      LODWORD(v712) = 1051931443;
      v713 = [MEMORY[0x277CCABB0] numberWithFloat:v712];
      [v5 setObject:v713 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v714) = 1065772646;
      v715 = [MEMORY[0x277CCABB0] numberWithFloat:v714];
      [v5 setObject:v715 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v716) = 0.5;
      v717 = [MEMORY[0x277CCABB0] numberWithFloat:v716];
      [v5 setObject:v717 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v718) = 1066695393;
      v719 = [MEMORY[0x277CCABB0] numberWithFloat:v718];
      [v5 setObject:v719 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v720) = 1057384038;
      v721 = [MEMORY[0x277CCABB0] numberWithFloat:v720];
      [v5 setObject:v721 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v722) = 1058642330;
      v723 = [MEMORY[0x277CCABB0] numberWithFloat:v722];
      [v5 setObject:v723 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v724) = 0.5;
      v725 = [MEMORY[0x277CCABB0] numberWithFloat:v724];
      [v5 setObject:v725 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v726) = 1066695393;
      v727 = [MEMORY[0x277CCABB0] numberWithFloat:v726];
      [v5 setObject:v727 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v728) = 1058474557;
      v729 = [MEMORY[0x277CCABB0] numberWithFloat:v728];
      [v5 setObject:v729 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v730) = 1053944709;
      v731 = [MEMORY[0x277CCABB0] numberWithFloat:v730];
      [v5 setObject:v731 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v732) = 0.5;
      v733 = [MEMORY[0x277CCABB0] numberWithFloat:v732];
      [v5 setObject:v733 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v734) = 1066695393;
      v735 = [MEMORY[0x277CCABB0] numberWithFloat:v734];
      [v5 setObject:v735 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v736) = 1057467924;
      v737 = [MEMORY[0x277CCABB0] numberWithFloat:v736];
      [v5 setObject:v737 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v738) = 1057132380;
      v739 = [MEMORY[0x277CCABB0] numberWithFloat:v738];
      [v5 setObject:v739 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v740) = 0.5;
      v741 = [MEMORY[0x277CCABB0] numberWithFloat:v740];
      [v5 setObject:v741 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v742) = 1066695393;
      v743 = [MEMORY[0x277CCABB0] numberWithFloat:v742];
      [v5 setObject:v743 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v744) = 1057467924;
      v745 = [MEMORY[0x277CCABB0] numberWithFloat:v744];
      [v5 setObject:v745 forKeyedSubscript:@"DarkBiasValue-24"];

      LODWORD(v746) = 0.5;
      v747 = [MEMORY[0x277CCABB0] numberWithFloat:v746];
      [v5 setObject:v747 forKeyedSubscript:@"DarkMatrixValue-24"];

      LODWORD(v748) = 0.5;
      v749 = [MEMORY[0x277CCABB0] numberWithFloat:v748];
      [v5 setObject:v749 forKeyedSubscript:@"LightBiasValue-24"];

      LODWORD(v750) = 1066695393;
      v751 = [MEMORY[0x277CCABB0] numberWithFloat:v750];
      [v5 setObject:v751 forKeyedSubscript:@"LightMatrixValue-24"];

      LODWORD(v752) = 1051931443;
      v753 = [MEMORY[0x277CCABB0] numberWithFloat:v752];
      [v5 setObject:v753 forKeyedSubscript:@"DarkBiasValue-25"];

      LODWORD(v754) = 1066024305;
      v755 = [MEMORY[0x277CCABB0] numberWithFloat:v754];
      [v5 setObject:v755 forKeyedSubscript:@"DarkMatrixValue-25"];

      LODWORD(v756) = 0.5;
      v757 = [MEMORY[0x277CCABB0] numberWithFloat:v756];
      [v5 setObject:v757 forKeyedSubscript:@"LightBiasValue-25"];

      LODWORD(v758) = 1066695393;
      v759 = [MEMORY[0x277CCABB0] numberWithFloat:v758];
      [v5 setObject:v759 forKeyedSubscript:@"LightMatrixValue-25"];

      LODWORD(v760) = 1058642330;
      v761 = [MEMORY[0x277CCABB0] numberWithFloat:v760];
      [v5 setObject:v761 forKeyedSubscript:@"DarkBiasValue-37"];

      LODWORD(v762) = 1050589266;
      v763 = [MEMORY[0x277CCABB0] numberWithFloat:v762];
      [v5 setObject:v763 forKeyedSubscript:@"DarkMatrixValue-37"];

      LODWORD(v764) = 0.5;
      v765 = [MEMORY[0x277CCABB0] numberWithFloat:v764];
      [v5 setObject:v765 forKeyedSubscript:@"LightBiasValue-37"];

      LODWORD(v766) = 1066695393;
      v767 = [MEMORY[0x277CCABB0] numberWithFloat:v766];
      [v5 setObject:v767 forKeyedSubscript:@"LightMatrixValue-37"];

      LODWORD(v768) = 1057803469;
      v769 = [MEMORY[0x277CCABB0] numberWithFloat:v768];
      [v5 setObject:v769 forKeyedSubscript:@"DarkBiasValue-38"];

      LODWORD(v770) = 1060320051;
      v771 = [MEMORY[0x277CCABB0] numberWithFloat:v770];
      [v5 setObject:v771 forKeyedSubscript:@"DarkMatrixValue-38"];

      LODWORD(v772) = 0.5;
      v773 = [MEMORY[0x277CCABB0] numberWithFloat:v772];
      [v5 setObject:v773 forKeyedSubscript:@"LightBiasValue-38"];

      LODWORD(v774) = 1066695393;
      v775 = [MEMORY[0x277CCABB0] numberWithFloat:v774];
      [v5 setObject:v775 forKeyedSubscript:@"LightMatrixValue-38"];

      LODWORD(v776) = 1051931443;
      v777 = [MEMORY[0x277CCABB0] numberWithFloat:v776];
      [v5 setObject:v777 forKeyedSubscript:@"DarkBiasValue-39"];

      LODWORD(v778) = 1065772646;
      v779 = [MEMORY[0x277CCABB0] numberWithFloat:v778];
      [v5 setObject:v779 forKeyedSubscript:@"DarkMatrixValue-39"];

      LODWORD(v780) = 0.5;
      v781 = [MEMORY[0x277CCABB0] numberWithFloat:v780];
      [v5 setObject:v781 forKeyedSubscript:@"LightBiasValue-39"];

      LODWORD(v782) = 1066695393;
      v783 = [MEMORY[0x277CCABB0] numberWithFloat:v782];
      [v5 setObject:v783 forKeyedSubscript:@"LightMatrixValue-39"];

      LODWORD(v784) = 1057635697;
      v785 = [MEMORY[0x277CCABB0] numberWithFloat:v784];
      [v5 setObject:v785 forKeyedSubscript:@"DarkBiasValue-40"];

      LODWORD(v786) = 1058474557;
      v787 = [MEMORY[0x277CCABB0] numberWithFloat:v786];
      [v5 setObject:v787 forKeyedSubscript:@"DarkMatrixValue-40"];

      LODWORD(v788) = 0.5;
      v789 = [MEMORY[0x277CCABB0] numberWithFloat:v788];
      [v5 setObject:v789 forKeyedSubscript:@"LightBiasValue-40"];

      LODWORD(v790) = 1066695393;
      v791 = [MEMORY[0x277CCABB0] numberWithFloat:v790];
      [v5 setObject:v791 forKeyedSubscript:@"LightMatrixValue-40"];

      LODWORD(v792) = 1053944709;
      v793 = [MEMORY[0x277CCABB0] numberWithFloat:v792];
      [v5 setObject:v793 forKeyedSubscript:@"DarkBiasValue-41"];

      LODWORD(v794) = 1062836634;
      v795 = [MEMORY[0x277CCABB0] numberWithFloat:v794];
      [v5 setObject:v795 forKeyedSubscript:@"DarkMatrixValue-41"];

      LODWORD(v796) = 0.5;
      v797 = [MEMORY[0x277CCABB0] numberWithFloat:v796];
      [v5 setObject:v797 forKeyedSubscript:@"LightBiasValue-41"];

      LODWORD(v798) = 1066695393;
      v799 = [MEMORY[0x277CCABB0] numberWithFloat:v798];
      [v5 setObject:v799 forKeyedSubscript:@"LightMatrixValue-41"];

      LODWORD(v800) = 1052938076;
      v801 = [MEMORY[0x277CCABB0] numberWithFloat:v800];
      [v5 setObject:v801 forKeyedSubscript:@"DarkBiasValue-66"];

      LODWORD(v802) = 1059145646;
      v803 = [MEMORY[0x277CCABB0] numberWithFloat:v802];
      [v5 setObject:v803 forKeyedSubscript:@"DarkMatrixValue-66"];

      LODWORD(v804) = 0.5;
      v805 = [MEMORY[0x277CCABB0] numberWithFloat:v804];
      [v5 setObject:v805 forKeyedSubscript:@"LightBiasValue-66"];

      LODWORD(v806) = 1066695393;
      v807 = [MEMORY[0x277CCABB0] numberWithFloat:v806];
      [v5 setObject:v807 forKeyedSubscript:@"LightMatrixValue-66"];

      LODWORD(v808) = 1051595899;
      v809 = [MEMORY[0x277CCABB0] numberWithFloat:v808];
      [v5 setObject:v809 forKeyedSubscript:@"DarkBiasValue-67"];

      LODWORD(v810) = 1065520988;
      v811 = [MEMORY[0x277CCABB0] numberWithFloat:v810];
      [v5 setObject:v811 forKeyedSubscript:@"DarkMatrixValue-67"];

      LODWORD(v812) = 0.5;
      v813 = [MEMORY[0x277CCABB0] numberWithFloat:v812];
      [v5 setObject:v813 forKeyedSubscript:@"LightBiasValue-67"];

      LODWORD(v814) = 1066695393;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v814];
      v132 = @"LightMatrixValue-67";
      break;
    case 8202:
      goto LABEL_8;
    case 8203:
      v405 = [MEMORY[0x277CCABB0] numberWithInt:86];
      [v5 setObject:v405 forKeyedSubscript:@"BudHeight"];

      v406 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v406 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v407 = [MEMORY[0x277CCABB0] numberWithInt:17];
      [v5 setObject:v407 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v408 = [MEMORY[0x277CCABB0] numberWithInt:70];
      [v5 setObject:v408 forKeyedSubscript:@"CaseHeight"];

      v409 = [MEMORY[0x277CCABB0] numberWithInt:33];
      [v5 setObject:v409 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v410 = [MEMORY[0x277CCABB0] numberWithInt:22];
      [v5 setObject:v410 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v411) = 0.5;
      v412 = [MEMORY[0x277CCABB0] numberWithFloat:v411];
      [v5 setObject:v412 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v413) = 1063675494;
      v414 = [MEMORY[0x277CCABB0] numberWithFloat:v413];
      [v5 setObject:v414 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v415) = 1057300152;
      v416 = [MEMORY[0x277CCABB0] numberWithFloat:v415];
      [v5 setObject:v416 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v417) = 1066695393;
      v418 = [MEMORY[0x277CCABB0] numberWithFloat:v417];
      [v5 setObject:v418 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v419) = 0.5;
      v420 = [MEMORY[0x277CCABB0] numberWithFloat:v419];
      [v5 setObject:v420 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v421) = 1061997773;
      v422 = [MEMORY[0x277CCABB0] numberWithFloat:v421];
      [v5 setObject:v422 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v423) = 1057803469;
      v424 = [MEMORY[0x277CCABB0] numberWithFloat:v423];
      [v5 setObject:v424 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v425) = 1066695393;
      v426 = [MEMORY[0x277CCABB0] numberWithFloat:v425];
      [v5 setObject:v426 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v427) = 0.5;
      v428 = [MEMORY[0x277CCABB0] numberWithFloat:v427];
      [v5 setObject:v428 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v429) = 1064514355;
      v430 = [MEMORY[0x277CCABB0] numberWithFloat:v429];
      [v5 setObject:v430 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v431) = 0.5;
      v432 = [MEMORY[0x277CCABB0] numberWithFloat:v431];
      [v5 setObject:v432 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v433) = 1066695393;
      v434 = [MEMORY[0x277CCABB0] numberWithFloat:v433];
      [v5 setObject:v434 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v435) = 0.5;
      v436 = [MEMORY[0x277CCABB0] numberWithFloat:v435];
      [v5 setObject:v436 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v437) = 1063675494;
      v438 = [MEMORY[0x277CCABB0] numberWithFloat:v437];
      [v5 setObject:v438 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v439) = 1058642330;
      v440 = [MEMORY[0x277CCABB0] numberWithFloat:v439];
      [v5 setObject:v440 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v441) = 1066695393;
      v442 = [MEMORY[0x277CCABB0] numberWithFloat:v441];
      [v5 setObject:v442 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v443) = 0.5;
      v444 = [MEMORY[0x277CCABB0] numberWithFloat:v443];
      [v5 setObject:v444 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v445) = 1064514355;
      v446 = [MEMORY[0x277CCABB0] numberWithFloat:v445];
      [v5 setObject:v446 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v447) = 1058306785;
      v448 = [MEMORY[0x277CCABB0] numberWithFloat:v447];
      [v5 setObject:v448 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v449) = 1066695393;
      v450 = [MEMORY[0x277CCABB0] numberWithFloat:v449];
      [v5 setObject:v450 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v451) = 0.5;
      v452 = [MEMORY[0x277CCABB0] numberWithFloat:v451];
      [v5 setObject:v452 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v453) = 1064514355;
      v454 = [MEMORY[0x277CCABB0] numberWithFloat:v453];
      [v5 setObject:v454 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v455) = 1057803469;
      v456 = [MEMORY[0x277CCABB0] numberWithFloat:v455];
      [v5 setObject:v456 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v457) = 1066695393;
      v458 = [MEMORY[0x277CCABB0] numberWithFloat:v457];
      [v5 setObject:v458 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v459) = 0.5;
      v460 = [MEMORY[0x277CCABB0] numberWithFloat:v459];
      [v5 setObject:v460 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v461) = 1063675494;
      v462 = [MEMORY[0x277CCABB0] numberWithFloat:v461];
      [v5 setObject:v462 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v463) = 1058642330;
      v464 = [MEMORY[0x277CCABB0] numberWithFloat:v463];
      [v5 setObject:v464 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v465) = 1066695393;
      v466 = [MEMORY[0x277CCABB0] numberWithFloat:v465];
      [v5 setObject:v466 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v467) = 0.5;
      v468 = [MEMORY[0x277CCABB0] numberWithFloat:v467];
      [v5 setObject:v468 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v469) = 1064514355;
      v470 = [MEMORY[0x277CCABB0] numberWithFloat:v469];
      [v5 setObject:v470 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v471) = 0.5;
      v472 = [MEMORY[0x277CCABB0] numberWithFloat:v471];
      [v5 setObject:v472 forKeyedSubscript:@"LightBiasValue-13"];

      v473 = MEMORY[0x277CCABB0];
      LODWORD(v474) = 1066695393;
      goto LABEL_34;
    case 8204:
      v537 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v537 forKeyedSubscript:@"BudHeight"];

      LODWORD(v538) = 1058810102;
      v539 = [MEMORY[0x277CCABB0] numberWithFloat:v538];
      [v5 setObject:v539 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v540) = 1053273620;
      v541 = [MEMORY[0x277CCABB0] numberWithFloat:v540];
      [v5 setObject:v541 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v542) = 0.5;
      v543 = [MEMORY[0x277CCABB0] numberWithFloat:v542];
      [v5 setObject:v543 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v544) = 1066695393;
      v545 = [MEMORY[0x277CCABB0] numberWithFloat:v544];
      [v5 setObject:v545 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v546) = 1056293519;
      v547 = [MEMORY[0x277CCABB0] numberWithFloat:v546];
      [v5 setObject:v547 forKeyedSubscript:@"DarkBiasValue-60"];

      LODWORD(v548) = 1063172178;
      v549 = [MEMORY[0x277CCABB0] numberWithFloat:v548];
      [v5 setObject:v549 forKeyedSubscript:@"DarkMatrixValue-60"];

      LODWORD(v550) = 0.5;
      v551 = [MEMORY[0x277CCABB0] numberWithFloat:v550];
      [v5 setObject:v551 forKeyedSubscript:@"LightBiasValue-60"];

      LODWORD(v552) = 1066695393;
      v553 = [MEMORY[0x277CCABB0] numberWithFloat:v552];
      [v5 setObject:v553 forKeyedSubscript:@"LightMatrixValue-60"];

      LODWORD(v554) = 1053609165;
      v555 = [MEMORY[0x277CCABB0] numberWithFloat:v554];
      [v5 setObject:v555 forKeyedSubscript:@"DarkBiasValue-69"];

      LODWORD(v556) = 1063507722;
      v557 = [MEMORY[0x277CCABB0] numberWithFloat:v556];
      [v5 setObject:v557 forKeyedSubscript:@"DarkMatrixValue-69"];

      LODWORD(v558) = 0.5;
      v559 = [MEMORY[0x277CCABB0] numberWithFloat:v558];
      [v5 setObject:v559 forKeyedSubscript:@"LightBiasValue-69"];

      LODWORD(v560) = 1066695393;
      v561 = [MEMORY[0x277CCABB0] numberWithFloat:v560];
      [v5 setObject:v561 forKeyedSubscript:@"LightMatrixValue-69"];

      LODWORD(v562) = 1053609165;
      v563 = [MEMORY[0x277CCABB0] numberWithFloat:v562];
      [v5 setObject:v563 forKeyedSubscript:@"DarkBiasValue-70"];

      LODWORD(v564) = 1063172178;
      v565 = [MEMORY[0x277CCABB0] numberWithFloat:v564];
      [v5 setObject:v565 forKeyedSubscript:@"DarkMatrixValue-70"];

      LODWORD(v566) = 0.5;
      v567 = [MEMORY[0x277CCABB0] numberWithFloat:v566];
      [v5 setObject:v567 forKeyedSubscript:@"LightBiasValue-70"];

      LODWORD(v568) = 1066695393;
      v569 = [MEMORY[0x277CCABB0] numberWithFloat:v568];
      [v5 setObject:v569 forKeyedSubscript:@"LightMatrixValue-70"];

      LODWORD(v570) = 1058139013;
      v571 = [MEMORY[0x277CCABB0] numberWithFloat:v570];
      [v5 setObject:v571 forKeyedSubscript:@"DarkBiasValue-71"];

      LODWORD(v572) = 1056125747;
      v573 = [MEMORY[0x277CCABB0] numberWithFloat:v572];
      [v5 setObject:v573 forKeyedSubscript:@"DarkMatrixValue-71"];

      LODWORD(v574) = 0.5;
      v575 = [MEMORY[0x277CCABB0] numberWithFloat:v574];
      [v5 setObject:v575 forKeyedSubscript:@"LightBiasValue-71"];

      LODWORD(v576) = 1066695393;
      v577 = [MEMORY[0x277CCABB0] numberWithFloat:v576];
      [v5 setObject:v577 forKeyedSubscript:@"LightMatrixValue-71"];

      LODWORD(v578) = 1054615798;
      v579 = [MEMORY[0x277CCABB0] numberWithFloat:v578];
      [v5 setObject:v579 forKeyedSubscript:@"DarkBiasValue-72"];

      LODWORD(v580) = 1061830001;
      v581 = [MEMORY[0x277CCABB0] numberWithFloat:v580];
      [v5 setObject:v581 forKeyedSubscript:@"DarkMatrixValue-72"];

      LODWORD(v582) = 0.5;
      v583 = [MEMORY[0x277CCABB0] numberWithFloat:v582];
      [v5 setObject:v583 forKeyedSubscript:@"LightBiasValue-72"];

      LODWORD(v584) = 1066695393;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v584];
      v132 = @"LightMatrixValue-72";
      break;
    case 8205:
      v513 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v513 forKeyedSubscript:@"BudHeight"];

      LODWORD(v514) = 1050421494;
      v515 = [MEMORY[0x277CCABB0] numberWithFloat:v514];
      [v5 setObject:v515 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v516) = 1066192077;
      v517 = [MEMORY[0x277CCABB0] numberWithFloat:v516];
      [v5 setObject:v517 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v518) = 0.5;
      v519 = [MEMORY[0x277CCABB0] numberWithFloat:v518];
      [v5 setObject:v519 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v520) = 1066695393;
      v521 = [MEMORY[0x277CCABB0] numberWithFloat:v520];
      [v5 setObject:v521 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v522) = 0.375;
      v523 = [MEMORY[0x277CCABB0] numberWithFloat:v522];
      [v5 setObject:v523 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v524) = 1058810102;
      v525 = [MEMORY[0x277CCABB0] numberWithFloat:v524];
      [v5 setObject:v525 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v526) = 0.5;
      v527 = [MEMORY[0x277CCABB0] numberWithFloat:v526];
      [v5 setObject:v527 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v528) = 1066695393;
      v529 = [MEMORY[0x277CCABB0] numberWithFloat:v528];
      [v5 setObject:v529 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v530) = 1055286886;
      v531 = [MEMORY[0x277CCABB0] numberWithFloat:v530];
      [v5 setObject:v531 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v532) = 1060320051;
      v533 = [MEMORY[0x277CCABB0] numberWithFloat:v532];
      [v5 setObject:v533 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v534) = 0.5;
      v535 = [MEMORY[0x277CCABB0] numberWithFloat:v534];
      [v5 setObject:v535 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v536) = 1066695393;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v536];
      v132 = @"LightMatrixValue-2";
      break;
    case 8206:
      v1159 = [MEMORY[0x277CCABB0] numberWithInt:64];
      [v5 setObject:v1159 forKeyedSubscript:@"BudHeight"];

      v1160 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v1160 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v1161 = [MEMORY[0x277CCABB0] numberWithInt:27];
      [v5 setObject:v1161 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v1162 = [MEMORY[0x277CCABB0] numberWithInt:92];
      [v5 setObject:v1162 forKeyedSubscript:@"CaseHeight"];

      v1163 = [MEMORY[0x277CCABB0] numberWithInt:59];
      [v5 setObject:v1163 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v1164 = [MEMORY[0x277CCABB0] numberWithInt:38];
      [v5 setObject:v1164 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v1165) = 1053609165;
      v1166 = [MEMORY[0x277CCABB0] numberWithFloat:v1165];
      [v5 setObject:v1166 forKeyedSubscript:@"DarkBiasValue"];

      v28 = MEMORY[0x277CCABB0];
      LODWORD(v29) = 1065772646;
      goto LABEL_26;
    case 8208:
      v373 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v373 forKeyedSubscript:@"BudHeight"];

      LODWORD(v374) = 0.5;
      v375 = [MEMORY[0x277CCABB0] numberWithFloat:v374];
      [v5 setObject:v375 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v376) = 1063675494;
      v377 = [MEMORY[0x277CCABB0] numberWithFloat:v376];
      [v5 setObject:v377 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v378) = 1057803469;
      v379 = [MEMORY[0x277CCABB0] numberWithFloat:v378];
      [v5 setObject:v379 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v380) = 1068792545;
      v381 = [MEMORY[0x277CCABB0] numberWithFloat:v380];
      [v5 setObject:v381 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v382) = 1055622431;
      v383 = [MEMORY[0x277CCABB0] numberWithFloat:v382];
      [v5 setObject:v383 forKeyedSubscript:@"DarkBiasValue-77"];

      LODWORD(v384) = 1064849900;
      v385 = [MEMORY[0x277CCABB0] numberWithFloat:v384];
      [v5 setObject:v385 forKeyedSubscript:@"DarkMatrixValue-77"];

      LODWORD(v386) = 0.5;
      v387 = [MEMORY[0x277CCABB0] numberWithFloat:v386];
      [v5 setObject:v387 forKeyedSubscript:@"LightBiasValue-77"];

      LODWORD(v388) = 1.0;
      v389 = [MEMORY[0x277CCABB0] numberWithFloat:v388];
      [v5 setObject:v389 forKeyedSubscript:@"LightMatrixValue-77"];

      LODWORD(v390) = 1054280253;
      v391 = [MEMORY[0x277CCABB0] numberWithFloat:v390];
      [v5 setObject:v391 forKeyedSubscript:@"DarkBiasValue-78"];

      LODWORD(v392) = 1064849900;
      v393 = [MEMORY[0x277CCABB0] numberWithFloat:v392];
      [v5 setObject:v393 forKeyedSubscript:@"DarkMatrixValue-78"];

      LODWORD(v394) = 0.5;
      v395 = [MEMORY[0x277CCABB0] numberWithFloat:v394];
      [v5 setObject:v395 forKeyedSubscript:@"LightBiasValue-78"];

      LODWORD(v396) = 1.0;
      v397 = [MEMORY[0x277CCABB0] numberWithFloat:v396];
      [v5 setObject:v397 forKeyedSubscript:@"LightMatrixValue-78"];

      LODWORD(v398) = 1053609165;
      v399 = [MEMORY[0x277CCABB0] numberWithFloat:v398];
      [v5 setObject:v399 forKeyedSubscript:@"DarkBiasValue-79"];

      LODWORD(v400) = 1065017672;
      v401 = [MEMORY[0x277CCABB0] numberWithFloat:v400];
      [v5 setObject:v401 forKeyedSubscript:@"DarkMatrixValue-79"];

      LODWORD(v402) = 0.5;
      v403 = [MEMORY[0x277CCABB0] numberWithFloat:v402];
      [v5 setObject:v403 forKeyedSubscript:@"LightBiasValue-79"];

      LODWORD(v404) = 1.0;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v404];
      v132 = @"LightMatrixValue-79";
      break;
    case 8209:
      v320 = [MEMORY[0x277CCABB0] numberWithInt:31];
      [v5 setObject:v320 forKeyedSubscript:@"BudHeight"];

      v321 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v321 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v322 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v5 setObject:v322 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v323 = [MEMORY[0x277CCABB0] numberWithInt:100];
      [v5 setObject:v323 forKeyedSubscript:@"CaseHeight"];

      v324 = [MEMORY[0x277CCABB0] numberWithInt:49];
      [v5 setObject:v324 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v325 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v5 setObject:v325 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v326) = 1052938076;
      v327 = [MEMORY[0x277CCABB0] numberWithFloat:v326];
      [v5 setObject:v327 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v328) = 1065017672;
      v329 = [MEMORY[0x277CCABB0] numberWithFloat:v328];
      [v5 setObject:v329 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v330) = 0.5;
      v331 = [MEMORY[0x277CCABB0] numberWithFloat:v330];
      [v5 setObject:v331 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v332) = 1.0;
      v333 = [MEMORY[0x277CCABB0] numberWithFloat:v332];
      [v5 setObject:v333 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v334) = 1056293519;
      v335 = [MEMORY[0x277CCABB0] numberWithFloat:v334];
      [v5 setObject:v335 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v336) = 1064849900;
      v337 = [MEMORY[0x277CCABB0] numberWithFloat:v336];
      [v5 setObject:v337 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v338) = 1057300152;
      v339 = [MEMORY[0x277CCABB0] numberWithFloat:v338];
      [v5 setObject:v339 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v340) = 1066527621;
      v341 = [MEMORY[0x277CCABB0] numberWithFloat:v340];
      [v5 setObject:v341 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v342) = 1055622431;
      v343 = [MEMORY[0x277CCABB0] numberWithFloat:v342];
      [v5 setObject:v343 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v344) = 1064682127;
      v345 = [MEMORY[0x277CCABB0] numberWithFloat:v344];
      [v5 setObject:v345 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v346) = 0.5;
      v347 = [MEMORY[0x277CCABB0] numberWithFloat:v346];
      [v5 setObject:v347 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v348) = 1.0;
      v349 = [MEMORY[0x277CCABB0] numberWithFloat:v348];
      [v5 setObject:v349 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v350) = 1055622431;
      v351 = [MEMORY[0x277CCABB0] numberWithFloat:v350];
      [v5 setObject:v351 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v352) = 1064514355;
      v353 = [MEMORY[0x277CCABB0] numberWithFloat:v352];
      [v5 setObject:v353 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v354) = 0.5;
      v355 = [MEMORY[0x277CCABB0] numberWithFloat:v354];
      [v5 setObject:v355 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v356) = 1.0;
      v357 = [MEMORY[0x277CCABB0] numberWithFloat:v356];
      [v5 setObject:v357 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v358) = 1055957975;
      v359 = [MEMORY[0x277CCABB0] numberWithFloat:v358];
      [v5 setObject:v359 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v360) = 1065017672;
      v361 = [MEMORY[0x277CCABB0] numberWithFloat:v360];
      [v5 setObject:v361 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v362) = 0.5;
      v363 = [MEMORY[0x277CCABB0] numberWithFloat:v362];
      [v5 setObject:v363 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v364) = 1.0;
      v365 = [MEMORY[0x277CCABB0] numberWithFloat:v364];
      [v5 setObject:v365 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v366) = 1055622431;
      v367 = [MEMORY[0x277CCABB0] numberWithFloat:v366];
      [v5 setObject:v367 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v368) = 1064346583;
      v369 = [MEMORY[0x277CCABB0] numberWithFloat:v368];
      [v5 setObject:v369 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v370) = 0.5;
      v371 = [MEMORY[0x277CCABB0] numberWithFloat:v370];
      [v5 setObject:v371 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v372) = 1.0;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v372];
      v132 = @"LightMatrixValue-6";
      break;
    case 8210:
      goto LABEL_11;
    case 8211:
      v585 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v5 setObject:v585 forKeyedSubscript:@"BudHeight"];

      v586 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v586 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v587 = [MEMORY[0x277CCABB0] numberWithInt:34];
      [v5 setObject:v587 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v588 = [MEMORY[0x277CCABB0] numberWithInt:94];
      [v5 setObject:v588 forKeyedSubscript:@"CaseHeight"];

      v589 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v5 setObject:v589 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v590 = [MEMORY[0x277CCABB0] numberWithInt:46];
      [v5 setObject:v590 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v591) = 1053776937;
      v592 = [MEMORY[0x277CCABB0] numberWithFloat:v591];
      [v5 setObject:v592 forKeyedSubscript:@"DarkBiasValue"];

      LODWORD(v593) = 1066359849;
      v594 = [MEMORY[0x277CCABB0] numberWithFloat:v593];
      [v5 setObject:v594 forKeyedSubscript:@"DarkMatrixValue"];

      v40 = MEMORY[0x277CCABB0];
      LODWORD(v41) = 1058139013;
      goto LABEL_27;
    case 8212:
    case 8228:
      v20 = [MEMORY[0x277CCABB0] numberWithInt:64];
      [v5 setObject:v20 forKeyedSubscript:@"BudHeight"];

      v21 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v21 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v22 = [MEMORY[0x277CCABB0] numberWithInt:27];
      [v5 setObject:v22 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v23 = [MEMORY[0x277CCABB0] numberWithInt:102];
      [v5 setObject:v23 forKeyedSubscript:@"CaseHeight"];

      v24 = [MEMORY[0x277CCABB0] numberWithInt:59];
      [v5 setObject:v24 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v25 = [MEMORY[0x277CCABB0] numberWithInt:38];
      [v5 setObject:v25 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v26) = 1053273620;
      v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      [v5 setObject:v27 forKeyedSubscript:@"DarkBiasValue"];

      v28 = MEMORY[0x277CCABB0];
      LODWORD(v29) = 1066443735;
LABEL_26:
      v1167 = [v28 numberWithFloat:v29];
      [v5 setObject:v1167 forKeyedSubscript:@"DarkMatrixValue"];

      v40 = MEMORY[0x277CCABB0];
      LODWORD(v41) = 1057803469;
LABEL_27:
      v1168 = [v40 numberWithFloat:v41];
      [v5 setObject:v1168 forKeyedSubscript:@"LightBiasValue"];

      v18 = MEMORY[0x277CCABB0];
      LODWORD(v19) = 1066695393;
      goto LABEL_28;
    case 8214:
      v595 = [MEMORY[0x277CCABB0] numberWithInt:31];
      [v5 setObject:v595 forKeyedSubscript:@"BudHeight"];

      v596 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v596 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v597 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v5 setObject:v597 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v598 = [MEMORY[0x277CCABB0] numberWithInt:100];
      [v5 setObject:v598 forKeyedSubscript:@"CaseHeight"];

      v599 = [MEMORY[0x277CCABB0] numberWithInt:49];
      [v5 setObject:v599 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v600 = [MEMORY[0x277CCABB0] numberWithInt:30];
      [v5 setObject:v600 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v601) = 1056293519;
      v602 = [MEMORY[0x277CCABB0] numberWithFloat:v601];
      [v5 setObject:v602 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v603) = 1064849900;
      v604 = [MEMORY[0x277CCABB0] numberWithFloat:v603];
      [v5 setObject:v604 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v605) = 1057300152;
      v606 = [MEMORY[0x277CCABB0] numberWithFloat:v605];
      [v5 setObject:v606 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v607) = 1066527621;
      v608 = [MEMORY[0x277CCABB0] numberWithFloat:v607];
      [v5 setObject:v608 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v609) = 1054615798;
      v610 = [MEMORY[0x277CCABB0] numberWithFloat:v609];
      [v5 setObject:v610 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v611) = 1064849900;
      v612 = [MEMORY[0x277CCABB0] numberWithFloat:v611];
      [v5 setObject:v612 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v613) = 0.5;
      v614 = [MEMORY[0x277CCABB0] numberWithFloat:v613];
      [v5 setObject:v614 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v615) = 1.0;
      v616 = [MEMORY[0x277CCABB0] numberWithFloat:v615];
      [v5 setObject:v616 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v617) = 1055957975;
      v618 = [MEMORY[0x277CCABB0] numberWithFloat:v617];
      [v5 setObject:v618 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v619) = 1063843267;
      v620 = [MEMORY[0x277CCABB0] numberWithFloat:v619];
      [v5 setObject:v620 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v621) = 1056360628;
      v622 = [MEMORY[0x277CCABB0] numberWithFloat:v621];
      [v5 setObject:v622 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v623) = 1064766013;
      v624 = [MEMORY[0x277CCABB0] numberWithFloat:v623];
      [v5 setObject:v624 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v625) = 1053609165;
      v626 = [MEMORY[0x277CCABB0] numberWithFloat:v625];
      [v5 setObject:v626 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v627) = 1064346583;
      v628 = [MEMORY[0x277CCABB0] numberWithFloat:v627];
      [v5 setObject:v628 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v629) = 0.5;
      v630 = [MEMORY[0x277CCABB0] numberWithFloat:v629];
      [v5 setObject:v630 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v631) = 1.0;
      v632 = [MEMORY[0x277CCABB0] numberWithFloat:v631];
      [v5 setObject:v632 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v633) = 1054615798;
      v634 = [MEMORY[0x277CCABB0] numberWithFloat:v633];
      [v5 setObject:v634 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v635) = 1064514355;
      v636 = [MEMORY[0x277CCABB0] numberWithFloat:v635];
      [v5 setObject:v636 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v637) = 0.5;
      v638 = [MEMORY[0x277CCABB0] numberWithFloat:v637];
      [v5 setObject:v638 forKeyedSubscript:@"LightBiasValue-4"];

      v511 = MEMORY[0x277CCABB0];
      LODWORD(v512) = 1.0;
      goto LABEL_20;
    case 8215:
      v1170 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v1170 forKeyedSubscript:@"BudHeight"];

      LODWORD(v1171) = 1056159302;
      v1172 = [MEMORY[0x277CCABB0] numberWithFloat:v1171];
      [v5 setObject:v1172 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1173) = 1065269330;
      v1174 = [MEMORY[0x277CCABB0] numberWithFloat:v1173];
      [v5 setObject:v1174 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1175) = 0.5;
      v1176 = [MEMORY[0x277CCABB0] numberWithFloat:v1175];
      [v5 setObject:v1176 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1177) = 1.0;
      v1178 = [MEMORY[0x277CCABB0] numberWithFloat:v1177];
      [v5 setObject:v1178 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1179) = 1056226410;
      v1180 = [MEMORY[0x277CCABB0] numberWithFloat:v1179];
      [v5 setObject:v1180 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v1181) = 1064262697;
      v1182 = [MEMORY[0x277CCABB0] numberWithFloat:v1181];
      [v5 setObject:v1182 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v1183) = 0.5;
      v1184 = [MEMORY[0x277CCABB0] numberWithFloat:v1183];
      [v5 setObject:v1184 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v1185) = 1.0;
      v1186 = [MEMORY[0x277CCABB0] numberWithFloat:v1185];
      [v5 setObject:v1186 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v1187) = 1056629064;
      v1188 = [MEMORY[0x277CCABB0] numberWithFloat:v1187];
      [v5 setObject:v1188 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v1189) = 1065017672;
      v1190 = [MEMORY[0x277CCABB0] numberWithFloat:v1189];
      [v5 setObject:v1190 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v1191) = 0.5;
      v1192 = [MEMORY[0x277CCABB0] numberWithFloat:v1191];
      [v5 setObject:v1192 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v1193) = 1065604874;
      v1194 = [MEMORY[0x277CCABB0] numberWithFloat:v1193];
      [v5 setObject:v1194 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v1195) = 1057300152;
      v1196 = [MEMORY[0x277CCABB0] numberWithFloat:v1195];
      [v5 setObject:v1196 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v1197) = 1063675494;
      v1198 = [MEMORY[0x277CCABB0] numberWithFloat:v1197];
      [v5 setObject:v1198 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v1199) = 1057803469;
      v1200 = [MEMORY[0x277CCABB0] numberWithFloat:v1199];
      [v5 setObject:v1200 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v1201) = 1065017672;
      v1202 = [MEMORY[0x277CCABB0] numberWithFloat:v1201];
      [v5 setObject:v1202 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v1203) = 0.5;
      v1204 = [MEMORY[0x277CCABB0] numberWithFloat:v1203];
      [v5 setObject:v1204 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v1205) = 1.0;
      v1206 = [MEMORY[0x277CCABB0] numberWithFloat:v1205];
      [v5 setObject:v1206 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v1207) = 1057132380;
      v1208 = [MEMORY[0x277CCABB0] numberWithFloat:v1207];
      [v5 setObject:v1208 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1209) = 1065772646;
      v1210 = [MEMORY[0x277CCABB0] numberWithFloat:v1209];
      [v5 setObject:v1210 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1211) = 1056360628;
      v1212 = [MEMORY[0x277CCABB0] numberWithFloat:v1211];
      [v5 setObject:v1212 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v1213) = 1065772646;
      v1214 = [MEMORY[0x277CCABB0] numberWithFloat:v1213];
      [v5 setObject:v1214 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v1215) = 0.5;
      v1216 = [MEMORY[0x277CCABB0] numberWithFloat:v1215];
      [v5 setObject:v1216 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v1217) = 1.0;
      v1218 = [MEMORY[0x277CCABB0] numberWithFloat:v1217];
      [v5 setObject:v1218 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v1219) = 1056427737;
      v1220 = [MEMORY[0x277CCABB0] numberWithFloat:v1219];
      [v5 setObject:v1220 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v1221) = 1064849900;
      v1222 = [MEMORY[0x277CCABB0] numberWithFloat:v1221];
      [v5 setObject:v1222 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v1223) = 1057434370;
      v1224 = [MEMORY[0x277CCABB0] numberWithFloat:v1223];
      [v5 setObject:v1224 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v1225) = 1066317906;
      v1226 = [MEMORY[0x277CCABB0] numberWithFloat:v1225];
      [v5 setObject:v1226 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v1227) = 0.5;
      v1228 = [MEMORY[0x277CCABB0] numberWithFloat:v1227];
      [v5 setObject:v1228 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v1229) = 1.0;
      v1230 = [MEMORY[0x277CCABB0] numberWithFloat:v1229];
      [v5 setObject:v1230 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v1231) = 1056629064;
      v1232 = [MEMORY[0x277CCABB0] numberWithFloat:v1231];
      [v5 setObject:v1232 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v1233) = 1064346583;
      v1234 = [MEMORY[0x277CCABB0] numberWithFloat:v1233];
      [v5 setObject:v1234 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v1235) = 0.5;
      v1236 = [MEMORY[0x277CCABB0] numberWithFloat:v1235];
      [v5 setObject:v1236 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v1237) = 1.0;
      v1238 = [MEMORY[0x277CCABB0] numberWithFloat:v1237];
      [v5 setObject:v1238 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v1239) = 1055622431;
      v1240 = [MEMORY[0x277CCABB0] numberWithFloat:v1239];
      [v5 setObject:v1240 forKeyedSubscript:@"LightBiasValue-13"];

      v473 = MEMORY[0x277CCABB0];
      LODWORD(v474) = 1063339950;
LABEL_34:
      v131 = [v473 numberWithFloat:v474];
      v132 = @"LightMatrixValue-13";
      break;
    case 8217:
    case 8219:
    case 8222:
    case 8224:
      v6 = [MEMORY[0x277CCABB0] numberWithInt:62];
      [v5 setObject:v6 forKeyedSubscript:@"BudHeight"];

      v7 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v7 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v8 = [MEMORY[0x277CCABB0] numberWithInt:34];
      [v5 setObject:v8 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v9 = [MEMORY[0x277CCABB0] numberWithInt:94];
      [v5 setObject:v9 forKeyedSubscript:@"CaseHeight"];

      v10 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v5 setObject:v10 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v11 = [MEMORY[0x277CCABB0] numberWithInt:46];
      [v5 setObject:v11 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v12) = 1053609165;
      v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
      [v5 setObject:v13 forKeyedSubscript:@"DarkBiasValue"];

      LODWORD(v14) = 1065940419;
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
      [v5 setObject:v15 forKeyedSubscript:@"DarkMatrixValue"];

      LODWORD(v16) = 0.5;
      v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
      [v5 setObject:v17 forKeyedSubscript:@"LightBiasValue"];

      v18 = MEMORY[0x277CCABB0];
      LODWORD(v19) = 1065940419;
LABEL_28:
      v131 = [v18 numberWithFloat:v19];
      v132 = @"LightMatrixValue";
      break;
    case 8218:
      v133 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v133 forKeyedSubscript:@"BudHeight"];

      LODWORD(v134) = 0.5;
      v135 = [MEMORY[0x277CCABB0] numberWithFloat:v134];
      [v5 setObject:v135 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v136) = 1.0;
      v137 = [MEMORY[0x277CCABB0] numberWithFloat:v136];
      [v5 setObject:v137 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v138) = 1055957975;
      v139 = [MEMORY[0x277CCABB0] numberWithFloat:v138];
      [v5 setObject:v139 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v140) = 1061997773;
      v141 = [MEMORY[0x277CCABB0] numberWithFloat:v140];
      [v5 setObject:v141 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v142) = 0.5;
      v143 = [MEMORY[0x277CCABB0] numberWithFloat:v142];
      [v5 setObject:v143 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v144) = 1.0;
      v145 = [MEMORY[0x277CCABB0] numberWithFloat:v144];
      [v5 setObject:v145 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v146) = 1055957975;
      v147 = [MEMORY[0x277CCABB0] numberWithFloat:v146];
      [v5 setObject:v147 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v148) = 1061997773;
      v149 = [MEMORY[0x277CCABB0] numberWithFloat:v148];
      [v5 setObject:v149 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v150) = 0.5;
      v151 = [MEMORY[0x277CCABB0] numberWithFloat:v150];
      [v5 setObject:v151 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v152) = 1.0;
      v153 = [MEMORY[0x277CCABB0] numberWithFloat:v152];
      [v5 setObject:v153 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v154) = 1055957975;
      v155 = [MEMORY[0x277CCABB0] numberWithFloat:v154];
      [v5 setObject:v155 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v156) = 1062836634;
      v157 = [MEMORY[0x277CCABB0] numberWithFloat:v156];
      [v5 setObject:v157 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v158) = 0.5;
      v159 = [MEMORY[0x277CCABB0] numberWithFloat:v158];
      [v5 setObject:v159 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v160) = 1.0;
      v161 = [MEMORY[0x277CCABB0] numberWithFloat:v160];
      [v5 setObject:v161 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v162) = 1055957975;
      v163 = [MEMORY[0x277CCABB0] numberWithFloat:v162];
      [v5 setObject:v163 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v164) = 1062836634;
      v165 = [MEMORY[0x277CCABB0] numberWithFloat:v164];
      [v5 setObject:v165 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v166) = 0.5;
      v167 = [MEMORY[0x277CCABB0] numberWithFloat:v166];
      [v5 setObject:v167 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v168) = 1.0;
      v169 = [MEMORY[0x277CCABB0] numberWithFloat:v168];
      [v5 setObject:v169 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v170) = 1055957975;
      v171 = [MEMORY[0x277CCABB0] numberWithFloat:v170];
      [v5 setObject:v171 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v172) = 1061997773;
      v173 = [MEMORY[0x277CCABB0] numberWithFloat:v172];
      [v5 setObject:v173 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v174) = 0.5;
      v175 = [MEMORY[0x277CCABB0] numberWithFloat:v174];
      [v5 setObject:v175 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v176) = 1065017672;
      v177 = [MEMORY[0x277CCABB0] numberWithFloat:v176];
      [v5 setObject:v177 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v178) = 1055622431;
      v179 = [MEMORY[0x277CCABB0] numberWithFloat:v178];
      [v5 setObject:v179 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v180) = 1063172178;
      v181 = [MEMORY[0x277CCABB0] numberWithFloat:v180];
      [v5 setObject:v181 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v182) = 0.5;
      v183 = [MEMORY[0x277CCABB0] numberWithFloat:v182];
      [v5 setObject:v183 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v184) = 1065017672;
      v185 = [MEMORY[0x277CCABB0] numberWithFloat:v184];
      [v5 setObject:v185 forKeyedSubscript:@"LightMatrixValue-9"];

      LODWORD(v186) = 1055957975;
      v187 = [MEMORY[0x277CCABB0] numberWithFloat:v186];
      [v5 setObject:v187 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v188) = 1063843267;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v188];
      v132 = @"DarkMatrixValue-9";
      break;
    case 8221:
      v475 = [MEMORY[0x277CCABB0] numberWithInt:74];
      [v5 setObject:v475 forKeyedSubscript:@"BudHeight"];

      v476 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v476 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v477 = [MEMORY[0x277CCABB0] numberWithInt:17];
      [v5 setObject:v477 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v478 = [MEMORY[0x277CCABB0] numberWithInt:57];
      [v5 setObject:v478 forKeyedSubscript:@"CaseHeight"];

      v479 = [MEMORY[0x277CCABB0] numberWithInt:33];
      [v5 setObject:v479 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v480 = [MEMORY[0x277CCABB0] numberWithInt:22];
      [v5 setObject:v480 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v481) = 1056293519;
      v482 = [MEMORY[0x277CCABB0] numberWithFloat:v481];
      [v5 setObject:v482 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v483) = 1064178811;
      v484 = [MEMORY[0x277CCABB0] numberWithFloat:v483];
      [v5 setObject:v484 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v485) = 0.5;
      v486 = [MEMORY[0x277CCABB0] numberWithFloat:v485];
      [v5 setObject:v486 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v487) = 1065185444;
      v488 = [MEMORY[0x277CCABB0] numberWithFloat:v487];
      [v5 setObject:v488 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v489) = 1055957975;
      v490 = [MEMORY[0x277CCABB0] numberWithFloat:v489];
      [v5 setObject:v490 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v491) = 1064514355;
      v492 = [MEMORY[0x277CCABB0] numberWithFloat:v491];
      [v5 setObject:v492 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v493) = 0.5;
      v494 = [MEMORY[0x277CCABB0] numberWithFloat:v493];
      [v5 setObject:v494 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v495) = 1065185444;
      v496 = [MEMORY[0x277CCABB0] numberWithFloat:v495];
      [v5 setObject:v496 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v497) = 1056629064;
      v498 = [MEMORY[0x277CCABB0] numberWithFloat:v497];
      [v5 setObject:v498 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v499) = 1064849900;
      v500 = [MEMORY[0x277CCABB0] numberWithFloat:v499];
      [v5 setObject:v500 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v501) = 0.5;
      v502 = [MEMORY[0x277CCABB0] numberWithFloat:v501];
      [v5 setObject:v502 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v503) = 1065185444;
      v504 = [MEMORY[0x277CCABB0] numberWithFloat:v503];
      [v5 setObject:v504 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v505) = 1056293519;
      v506 = [MEMORY[0x277CCABB0] numberWithFloat:v505];
      [v5 setObject:v506 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v507) = 1064849900;
      v508 = [MEMORY[0x277CCABB0] numberWithFloat:v507];
      [v5 setObject:v508 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v509) = 0.5;
      v510 = [MEMORY[0x277CCABB0] numberWithFloat:v509];
      [v5 setObject:v510 forKeyedSubscript:@"LightBiasValue-4"];

      v511 = MEMORY[0x277CCABB0];
      LODWORD(v512) = 1065185444;
LABEL_20:
      v131 = [v511 numberWithFloat:v512];
      v132 = @"LightMatrixValue-4";
      break;
    case 8223:
      v42 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v42 forKeyedSubscript:@"BudHeight"];

      LODWORD(v43) = 0.5;
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
      [v5 setObject:v44 forKeyedSubscript:@"DarkBiasValue-21"];

      LODWORD(v45) = 1064682127;
      v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
      [v5 setObject:v46 forKeyedSubscript:@"DarkMatrixValue-21"];

      LODWORD(v47) = 0.5;
      v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
      [v5 setObject:v48 forKeyedSubscript:@"LightBiasValue-21"];

      LODWORD(v49) = 1064849900;
      v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
      [v5 setObject:v50 forKeyedSubscript:@"LightMatrixValue-21"];

      LODWORD(v51) = 0.5;
      v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
      [v5 setObject:v52 forKeyedSubscript:@"DarkBiasValue-22"];

      LODWORD(v53) = 1063675494;
      v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
      [v5 setObject:v54 forKeyedSubscript:@"DarkMatrixValue-22"];

      LODWORD(v55) = 0.5;
      v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
      [v5 setObject:v56 forKeyedSubscript:@"LightBiasValue-22"];

      LODWORD(v57) = 1064849900;
      v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
      [v5 setObject:v58 forKeyedSubscript:@"LightMatrixValue-22"];

      LODWORD(v59) = 0.5;
      v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
      [v5 setObject:v60 forKeyedSubscript:@"DarkBiasValue-20"];

      LODWORD(v61) = 1063675494;
      v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
      [v5 setObject:v62 forKeyedSubscript:@"DarkMatrixValue-20"];

      LODWORD(v63) = 0.5;
      v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
      [v5 setObject:v64 forKeyedSubscript:@"LightBiasValue-20"];

      LODWORD(v65) = 1064849900;
      v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
      [v5 setObject:v66 forKeyedSubscript:@"LightMatrixValue-20"];

      LODWORD(v67) = 1055286886;
      v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
      [v5 setObject:v68 forKeyedSubscript:@"DarkBiasValue-19"];

      LODWORD(v69) = 1.0;
      v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
      [v5 setObject:v70 forKeyedSubscript:@"DarkMatrixValue-19"];

      LODWORD(v71) = 0.5;
      v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
      [v5 setObject:v72 forKeyedSubscript:@"LightBiasValue-19"];

      LODWORD(v73) = 1.0;
      v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
      [v5 setObject:v74 forKeyedSubscript:@"LightMatrixValue-19"];

      LODWORD(v75) = 0.5;
      v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
      [v5 setObject:v76 forKeyedSubscript:@"DarkBiasValue-18"];

      LODWORD(v77) = 1063675494;
      v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
      [v5 setObject:v78 forKeyedSubscript:@"DarkMatrixValue-18"];

      LODWORD(v79) = 0.5;
      v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
      [v5 setObject:v80 forKeyedSubscript:@"LightBiasValue-18"];

      LODWORD(v81) = 1.0;
      v82 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
      [v5 setObject:v82 forKeyedSubscript:@"LightMatrixValue-18"];

LABEL_8:
      v83 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v83 forKeyedSubscript:@"BudHeight"];

      LODWORD(v84) = 0.5;
      v85 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
      [v5 setObject:v85 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v86) = 1063675494;
      v87 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
      [v5 setObject:v87 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v88) = 0.5;
      v89 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
      [v5 setObject:v89 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v90) = 1.0;
      v91 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
      [v5 setObject:v91 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v92) = 0.5;
      v93 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
      [v5 setObject:v93 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v94) = 1064682127;
      v95 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
      [v5 setObject:v95 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v96) = 0.5;
      v97 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
      [v5 setObject:v97 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v98) = 1064849900;
      v99 = [MEMORY[0x277CCABB0] numberWithFloat:v98];
      [v5 setObject:v99 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v100) = 0.5;
      v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
      [v5 setObject:v101 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v102) = 1063675494;
      v103 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
      [v5 setObject:v103 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v104) = 0.5;
      v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
      [v5 setObject:v105 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v106) = 1064849900;
      v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
      [v5 setObject:v107 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v108) = 0.5;
      v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
      [v5 setObject:v109 forKeyedSubscript:@"DarkBiasValue-15"];

      LODWORD(v110) = 1063675494;
      v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
      [v5 setObject:v111 forKeyedSubscript:@"DarkMatrixValue-15"];

      LODWORD(v112) = 0.5;
      v113 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
      [v5 setObject:v113 forKeyedSubscript:@"LightBiasValue-15"];

      LODWORD(v114) = 1.0;
      v115 = [MEMORY[0x277CCABB0] numberWithFloat:v114];
      [v5 setObject:v115 forKeyedSubscript:@"LightMatrixValue-15"];

      LODWORD(v116) = 1055286886;
      v117 = [MEMORY[0x277CCABB0] numberWithFloat:v116];
      [v5 setObject:v117 forKeyedSubscript:@"DarkBiasValue-16"];

      LODWORD(v118) = 1.0;
      v119 = [MEMORY[0x277CCABB0] numberWithFloat:v118];
      [v5 setObject:v119 forKeyedSubscript:@"DarkMatrixValue-16"];

      LODWORD(v120) = 0.5;
      v121 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
      [v5 setObject:v121 forKeyedSubscript:@"LightBiasValue-16"];

      LODWORD(v122) = 1.0;
      v123 = [MEMORY[0x277CCABB0] numberWithFloat:v122];
      [v5 setObject:v123 forKeyedSubscript:@"LightMatrixValue-16"];

      LODWORD(v124) = 0.5;
      v125 = [MEMORY[0x277CCABB0] numberWithFloat:v124];
      [v5 setObject:v125 forKeyedSubscript:@"DarkBiasValue-17"];

      LODWORD(v126) = 1064514355;
      v127 = [MEMORY[0x277CCABB0] numberWithFloat:v126];
      [v5 setObject:v127 forKeyedSubscript:@"DarkMatrixValue-17"];

      LODWORD(v128) = 0.5;
      v129 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
      [v5 setObject:v129 forKeyedSubscript:@"LightBiasValue-17"];

      LODWORD(v130) = 1064682127;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v130];
      v132 = @"LightMatrixValue-17";
      break;
    case 8229:
      v1277 = [MEMORY[0x277CCABB0] numberWithInt:108];
      [v5 setObject:v1277 forKeyedSubscript:@"BudHeight"];

      LODWORD(v1278) = 1057803469;
      v1279 = [MEMORY[0x277CCABB0] numberWithFloat:v1278];
      [v5 setObject:v1279 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v1280) = 1.0;
      v1281 = [MEMORY[0x277CCABB0] numberWithFloat:v1280];
      [v5 setObject:v1281 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v1282) = 1057635697;
      v1283 = [MEMORY[0x277CCABB0] numberWithFloat:v1282];
      [v5 setObject:v1283 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v1284) = 1064514355;
      v1285 = [MEMORY[0x277CCABB0] numberWithFloat:v1284];
      [v5 setObject:v1285 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v1286) = 0.5;
      v1287 = [MEMORY[0x277CCABB0] numberWithFloat:v1286];
      [v5 setObject:v1287 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1288) = 1.0;
      v1289 = [MEMORY[0x277CCABB0] numberWithFloat:v1288];
      [v5 setObject:v1289 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1290) = 1055957975;
      v1291 = [MEMORY[0x277CCABB0] numberWithFloat:v1290];
      [v5 setObject:v1291 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1292) = 1064514355;
      v1293 = [MEMORY[0x277CCABB0] numberWithFloat:v1292];
      [v5 setObject:v1293 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1294) = 0.5;
      v1295 = [MEMORY[0x277CCABB0] numberWithFloat:v1294];
      [v5 setObject:v1295 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v1296) = 1.0;
      v1297 = [MEMORY[0x277CCABB0] numberWithFloat:v1296];
      [v5 setObject:v1297 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v1298) = 1055957975;
      v1299 = [MEMORY[0x277CCABB0] numberWithFloat:v1298];
      [v5 setObject:v1299 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v1300) = 1064514355;
      v1301 = [MEMORY[0x277CCABB0] numberWithFloat:v1300];
      [v5 setObject:v1301 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v1302) = 0.5;
      v1303 = [MEMORY[0x277CCABB0] numberWithFloat:v1302];
      [v5 setObject:v1303 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v1304) = 1065185444;
      v1305 = [MEMORY[0x277CCABB0] numberWithFloat:v1304];
      [v5 setObject:v1305 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v1306) = 1055957975;
      v1307 = [MEMORY[0x277CCABB0] numberWithFloat:v1306];
      [v5 setObject:v1307 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v1308) = 1064346583;
      v1309 = [MEMORY[0x277CCABB0] numberWithFloat:v1308];
      [v5 setObject:v1309 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v1310) = 0.5;
      v1311 = [MEMORY[0x277CCABB0] numberWithFloat:v1310];
      [v5 setObject:v1311 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1312) = 1065185444;
      v1313 = [MEMORY[0x277CCABB0] numberWithFloat:v1312];
      [v5 setObject:v1313 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1314) = 1055957975;
      v1315 = [MEMORY[0x277CCABB0] numberWithFloat:v1314];
      [v5 setObject:v1315 forKeyedSubscript:@"DarkBiasValue-6"];

      v1275 = MEMORY[0x277CCABB0];
      LODWORD(v1276) = 1064514355;
      goto LABEL_37;
    case 8230:
      v1241 = [MEMORY[0x277CCABB0] numberWithInt:48];
      [v5 setObject:v1241 forKeyedSubscript:@"BudHeight"];

      v1242 = [MEMORY[0x277CCABB0] numberWithInt:25];
      [v5 setObject:v1242 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v1243 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v1243 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v1244 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v5 setObject:v1244 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      LODWORD(v1245) = 1057803469;
      v1246 = [MEMORY[0x277CCABB0] numberWithFloat:v1245];
      [v5 setObject:v1246 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v1247) = 1.0;
      v1248 = [MEMORY[0x277CCABB0] numberWithFloat:v1247];
      [v5 setObject:v1248 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v1249) = 1057635697;
      v1250 = [MEMORY[0x277CCABB0] numberWithFloat:v1249];
      [v5 setObject:v1250 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v1251) = 1064514355;
      v1252 = [MEMORY[0x277CCABB0] numberWithFloat:v1251];
      [v5 setObject:v1252 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v1253) = 0.5;
      v1254 = [MEMORY[0x277CCABB0] numberWithFloat:v1253];
      [v5 setObject:v1254 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v1255) = 1.0;
      v1256 = [MEMORY[0x277CCABB0] numberWithFloat:v1255];
      [v5 setObject:v1256 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v1257) = 1055957975;
      v1258 = [MEMORY[0x277CCABB0] numberWithFloat:v1257];
      [v5 setObject:v1258 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v1259) = 1064514355;
      v1260 = [MEMORY[0x277CCABB0] numberWithFloat:v1259];
      [v5 setObject:v1260 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v1261) = 0.5;
      v1262 = [MEMORY[0x277CCABB0] numberWithFloat:v1261];
      [v5 setObject:v1262 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v1263) = 1.0;
      v1264 = [MEMORY[0x277CCABB0] numberWithFloat:v1263];
      [v5 setObject:v1264 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v1265) = 1055957975;
      v1266 = [MEMORY[0x277CCABB0] numberWithFloat:v1265];
      [v5 setObject:v1266 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v1267) = 1064514355;
      v1268 = [MEMORY[0x277CCABB0] numberWithFloat:v1267];
      [v5 setObject:v1268 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v1269) = 0.5;
      v1270 = [MEMORY[0x277CCABB0] numberWithFloat:v1269];
      [v5 setObject:v1270 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v1271) = 1.0;
      v1272 = [MEMORY[0x277CCABB0] numberWithFloat:v1271];
      [v5 setObject:v1272 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v1273) = 1056293519;
      v1274 = [MEMORY[0x277CCABB0] numberWithFloat:v1273];
      [v5 setObject:v1274 forKeyedSubscript:@"DarkBiasValue-6"];

      v1275 = MEMORY[0x277CCABB0];
      LODWORD(v1276) = 1064011039;
LABEL_37:
      v131 = [v1275 numberWithFloat:v1276];
      v132 = @"DarkMatrixValue-6";
      break;
    case 8239:
      v189 = [MEMORY[0x277CCABB0] numberWithInt:51];
      [v5 setObject:v189 forKeyedSubscript:@"BudHeight"];

      v190 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v190 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v191 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v5 setObject:v191 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v192 = [MEMORY[0x277CCABB0] numberWithInt:52];
      [v5 setObject:v192 forKeyedSubscript:@"CaseHeight"];

      v193 = [MEMORY[0x277CCABB0] numberWithInt:50];
      [v5 setObject:v193 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v194 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v5 setObject:v194 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v195) = 1056293519;
      v196 = [MEMORY[0x277CCABB0] numberWithFloat:v195];
      [v5 setObject:v196 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v197) = 1064514355;
      v198 = [MEMORY[0x277CCABB0] numberWithFloat:v197];
      [v5 setObject:v198 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v199) = 0.5;
      v200 = [MEMORY[0x277CCABB0] numberWithFloat:v199];
      [v5 setObject:v200 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v201) = 1065604874;
      v202 = [MEMORY[0x277CCABB0] numberWithFloat:v201];
      [v5 setObject:v202 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v203) = 1056293519;
      v204 = [MEMORY[0x277CCABB0] numberWithFloat:v203];
      [v5 setObject:v204 forKeyedSubscript:@"DarkBiasValue-10"];

      LODWORD(v205) = 1062668861;
      v206 = [MEMORY[0x277CCABB0] numberWithFloat:v205];
      [v5 setObject:v206 forKeyedSubscript:@"DarkMatrixValue-10"];

      LODWORD(v207) = 0.5;
      v208 = [MEMORY[0x277CCABB0] numberWithFloat:v207];
      [v5 setObject:v208 forKeyedSubscript:@"LightBiasValue-10"];

      LODWORD(v209) = 1.0;
      v210 = [MEMORY[0x277CCABB0] numberWithFloat:v209];
      [v5 setObject:v210 forKeyedSubscript:@"LightMatrixValue-10"];

      LODWORD(v211) = 1056293519;
      v212 = [MEMORY[0x277CCABB0] numberWithFloat:v211];
      [v5 setObject:v212 forKeyedSubscript:@"DarkBiasValue-11"];

      LODWORD(v213) = 1063675494;
      v214 = [MEMORY[0x277CCABB0] numberWithFloat:v213];
      [v5 setObject:v214 forKeyedSubscript:@"DarkMatrixValue-11"];

      LODWORD(v215) = 0.5;
      v216 = [MEMORY[0x277CCABB0] numberWithFloat:v215];
      [v5 setObject:v216 forKeyedSubscript:@"LightBiasValue-11"];

      LODWORD(v217) = 1.0;
      v218 = [MEMORY[0x277CCABB0] numberWithFloat:v217];
      [v5 setObject:v218 forKeyedSubscript:@"LightMatrixValue-11"];

      LODWORD(v219) = 1056629064;
      v220 = [MEMORY[0x277CCABB0] numberWithFloat:v219];
      [v5 setObject:v220 forKeyedSubscript:@"DarkBiasValue-12"];

      LODWORD(v221) = 1064514355;
      v222 = [MEMORY[0x277CCABB0] numberWithFloat:v221];
      [v5 setObject:v222 forKeyedSubscript:@"DarkMatrixValue-12"];

      LODWORD(v223) = 0.5;
      v224 = [MEMORY[0x277CCABB0] numberWithFloat:v223];
      [v5 setObject:v224 forKeyedSubscript:@"LightBiasValue-12"];

      LODWORD(v225) = 1.0;
      v226 = [MEMORY[0x277CCABB0] numberWithFloat:v225];
      [v5 setObject:v226 forKeyedSubscript:@"LightMatrixValue-12"];

      LODWORD(v227) = 1056293519;
      v228 = [MEMORY[0x277CCABB0] numberWithFloat:v227];
      [v5 setObject:v228 forKeyedSubscript:@"DarkBiasValue-13"];

      LODWORD(v229) = 1064514355;
      v230 = [MEMORY[0x277CCABB0] numberWithFloat:v229];
      [v5 setObject:v230 forKeyedSubscript:@"DarkMatrixValue-13"];

      LODWORD(v231) = 0.5;
      v232 = [MEMORY[0x277CCABB0] numberWithFloat:v231];
      [v5 setObject:v232 forKeyedSubscript:@"LightBiasValue-13"];

      LODWORD(v233) = 1.0;
      v234 = [MEMORY[0x277CCABB0] numberWithFloat:v233];
      [v5 setObject:v234 forKeyedSubscript:@"LightMatrixValue-13"];

LABEL_11:
      v235 = [MEMORY[0x277CCABB0] numberWithInt:51];
      [v5 setObject:v235 forKeyedSubscript:@"BudHeight"];

      v236 = [MEMORY[0x277CCABB0] numberWithInt:6];
      [v5 setObject:v236 forKeyedSubscript:@"UnifiedSpacingBetweenBuds"];

      v237 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v5 setObject:v237 forKeyedSubscript:@"SeparateSpacingBetweenBuds"];

      v238 = [MEMORY[0x277CCABB0] numberWithInt:52];
      [v5 setObject:v238 forKeyedSubscript:@"CaseHeight"];

      v239 = [MEMORY[0x277CCABB0] numberWithInt:50];
      [v5 setObject:v239 forKeyedSubscript:@"UnifiedSpacingBudsCase"];

      v240 = [MEMORY[0x277CCABB0] numberWithInt:28];
      [v5 setObject:v240 forKeyedSubscript:@"SeparateSpacingBudsCase"];

      LODWORD(v241) = 1056293519;
      v242 = [MEMORY[0x277CCABB0] numberWithFloat:v241];
      [v5 setObject:v242 forKeyedSubscript:@"DarkBiasValue-0"];

      LODWORD(v243) = 1064514355;
      v244 = [MEMORY[0x277CCABB0] numberWithFloat:v243];
      [v5 setObject:v244 forKeyedSubscript:@"DarkMatrixValue-0"];

      LODWORD(v245) = 0.5;
      v246 = [MEMORY[0x277CCABB0] numberWithFloat:v245];
      [v5 setObject:v246 forKeyedSubscript:@"LightBiasValue-0"];

      LODWORD(v247) = 1065604874;
      v248 = [MEMORY[0x277CCABB0] numberWithFloat:v247];
      [v5 setObject:v248 forKeyedSubscript:@"LightMatrixValue-0"];

      LODWORD(v249) = 0.5;
      v250 = [MEMORY[0x277CCABB0] numberWithFloat:v249];
      [v5 setObject:v250 forKeyedSubscript:@"DarkBiasValue-1"];

      LODWORD(v251) = 0.75;
      v252 = [MEMORY[0x277CCABB0] numberWithFloat:v251];
      [v5 setObject:v252 forKeyedSubscript:@"DarkMatrixValue-1"];

      LODWORD(v253) = 0.5;
      v254 = [MEMORY[0x277CCABB0] numberWithFloat:v253];
      [v5 setObject:v254 forKeyedSubscript:@"LightBiasValue-1"];

      LODWORD(v255) = 1.0;
      v256 = [MEMORY[0x277CCABB0] numberWithFloat:v255];
      [v5 setObject:v256 forKeyedSubscript:@"LightMatrixValue-1"];

      LODWORD(v257) = 1056293519;
      v258 = [MEMORY[0x277CCABB0] numberWithFloat:v257];
      [v5 setObject:v258 forKeyedSubscript:@"DarkBiasValue-2"];

      LODWORD(v259) = 1064178811;
      v260 = [MEMORY[0x277CCABB0] numberWithFloat:v259];
      [v5 setObject:v260 forKeyedSubscript:@"DarkMatrixValue-2"];

      LODWORD(v261) = 0.5;
      v262 = [MEMORY[0x277CCABB0] numberWithFloat:v261];
      [v5 setObject:v262 forKeyedSubscript:@"LightBiasValue-2"];

      LODWORD(v263) = 1.0;
      v264 = [MEMORY[0x277CCABB0] numberWithFloat:v263];
      [v5 setObject:v264 forKeyedSubscript:@"LightMatrixValue-2"];

      LODWORD(v265) = 1056293519;
      v266 = [MEMORY[0x277CCABB0] numberWithFloat:v265];
      [v5 setObject:v266 forKeyedSubscript:@"DarkBiasValue-3"];

      LODWORD(v267) = 1063507722;
      v268 = [MEMORY[0x277CCABB0] numberWithFloat:v267];
      [v5 setObject:v268 forKeyedSubscript:@"DarkMatrixValue-3"];

      LODWORD(v269) = 0.5;
      v270 = [MEMORY[0x277CCABB0] numberWithFloat:v269];
      [v5 setObject:v270 forKeyedSubscript:@"LightBiasValue-3"];

      LODWORD(v271) = 1.0;
      v272 = [MEMORY[0x277CCABB0] numberWithFloat:v271];
      [v5 setObject:v272 forKeyedSubscript:@"LightMatrixValue-3"];

      LODWORD(v273) = 1056293519;
      v274 = [MEMORY[0x277CCABB0] numberWithFloat:v273];
      [v5 setObject:v274 forKeyedSubscript:@"DarkBiasValue-4"];

      LODWORD(v275) = 1064178811;
      v276 = [MEMORY[0x277CCABB0] numberWithFloat:v275];
      [v5 setObject:v276 forKeyedSubscript:@"DarkMatrixValue-4"];

      LODWORD(v277) = 0.5;
      v278 = [MEMORY[0x277CCABB0] numberWithFloat:v277];
      [v5 setObject:v278 forKeyedSubscript:@"LightBiasValue-4"];

      LODWORD(v279) = 1.0;
      v280 = [MEMORY[0x277CCABB0] numberWithFloat:v279];
      [v5 setObject:v280 forKeyedSubscript:@"LightMatrixValue-4"];

      LODWORD(v281) = 1056629064;
      v282 = [MEMORY[0x277CCABB0] numberWithFloat:v281];
      [v5 setObject:v282 forKeyedSubscript:@"DarkBiasValue-5"];

      LODWORD(v283) = 1064514355;
      v284 = [MEMORY[0x277CCABB0] numberWithFloat:v283];
      [v5 setObject:v284 forKeyedSubscript:@"DarkMatrixValue-5"];

      LODWORD(v285) = 0.5;
      v286 = [MEMORY[0x277CCABB0] numberWithFloat:v285];
      [v5 setObject:v286 forKeyedSubscript:@"LightBiasValue-5"];

      LODWORD(v287) = 1.0;
      v288 = [MEMORY[0x277CCABB0] numberWithFloat:v287];
      [v5 setObject:v288 forKeyedSubscript:@"LightMatrixValue-5"];

      LODWORD(v289) = 1055286886;
      v290 = [MEMORY[0x277CCABB0] numberWithFloat:v289];
      [v5 setObject:v290 forKeyedSubscript:@"DarkBiasValue-6"];

      LODWORD(v291) = 1063507722;
      v292 = [MEMORY[0x277CCABB0] numberWithFloat:v291];
      [v5 setObject:v292 forKeyedSubscript:@"DarkMatrixValue-6"];

      LODWORD(v293) = 0.5;
      v294 = [MEMORY[0x277CCABB0] numberWithFloat:v293];
      [v5 setObject:v294 forKeyedSubscript:@"LightBiasValue-6"];

      LODWORD(v295) = 1.0;
      v296 = [MEMORY[0x277CCABB0] numberWithFloat:v295];
      [v5 setObject:v296 forKeyedSubscript:@"LightMatrixValue-6"];

      LODWORD(v297) = 1054951342;
      v298 = [MEMORY[0x277CCABB0] numberWithFloat:v297];
      [v5 setObject:v298 forKeyedSubscript:@"DarkBiasValue-7"];

      LODWORD(v299) = 1062501089;
      v300 = [MEMORY[0x277CCABB0] numberWithFloat:v299];
      [v5 setObject:v300 forKeyedSubscript:@"DarkMatrixValue-7"];

      LODWORD(v301) = 0.5;
      v302 = [MEMORY[0x277CCABB0] numberWithFloat:v301];
      [v5 setObject:v302 forKeyedSubscript:@"LightBiasValue-7"];

      LODWORD(v303) = 1.0;
      v304 = [MEMORY[0x277CCABB0] numberWithFloat:v303];
      [v5 setObject:v304 forKeyedSubscript:@"LightMatrixValue-7"];

      LODWORD(v305) = 1056293519;
      v306 = [MEMORY[0x277CCABB0] numberWithFloat:v305];
      [v5 setObject:v306 forKeyedSubscript:@"DarkBiasValue-8"];

      LODWORD(v307) = 1063507722;
      v308 = [MEMORY[0x277CCABB0] numberWithFloat:v307];
      [v5 setObject:v308 forKeyedSubscript:@"DarkMatrixValue-8"];

      LODWORD(v309) = 0.5;
      v310 = [MEMORY[0x277CCABB0] numberWithFloat:v309];
      [v5 setObject:v310 forKeyedSubscript:@"LightBiasValue-8"];

      LODWORD(v311) = 1.0;
      v312 = [MEMORY[0x277CCABB0] numberWithFloat:v311];
      [v5 setObject:v312 forKeyedSubscript:@"LightMatrixValue-8"];

      LODWORD(v313) = 1055286886;
      v314 = [MEMORY[0x277CCABB0] numberWithFloat:v313];
      [v5 setObject:v314 forKeyedSubscript:@"DarkBiasValue-9"];

      LODWORD(v315) = 1060655596;
      v316 = [MEMORY[0x277CCABB0] numberWithFloat:v315];
      [v5 setObject:v316 forKeyedSubscript:@"DarkMatrixValue-9"];

      LODWORD(v317) = 0.5;
      v318 = [MEMORY[0x277CCABB0] numberWithFloat:v317];
      [v5 setObject:v318 forKeyedSubscript:@"LightBiasValue-9"];

      LODWORD(v319) = 1.0;
      v131 = [MEMORY[0x277CCABB0] numberWithFloat:v319];
      v132 = @"LightMatrixValue-9";
      break;
    default:
      v131 = [MEMORY[0x277CCABB0] numberWithInt:108];
      v132 = @"BudHeight";
      break;
  }

  [v5 setObject:v131 forKeyedSubscript:v132];

  return v5;
}

+ (uint64_t)_headphoneIsProductOfDifferentColors:()HeadphoneDeviceColorFiltering
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "isProductOfDifferentColors Battery Status: Input pid - %d", v7, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return ((a3 - 8195) < 0x2D) & (0x100C1498E7CDuLL >> (a3 - 3));
}

@end