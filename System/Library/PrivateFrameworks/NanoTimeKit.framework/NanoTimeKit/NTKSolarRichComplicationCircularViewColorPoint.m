@interface NTKSolarRichComplicationCircularViewColorPoint
+ (id)allPoints;
+ (id)pointWithColor1:(id)a3 color2:(id)a4 color3:(id)a5 position1:(double)a6 position2:(double)a7 position3:(double)a8 progress:(double)a9;
@end

@implementation NTKSolarRichComplicationCircularViewColorPoint

+ (id)pointWithColor1:(id)a3 color2:(id)a4 color3:(id)a5 position1:(double)a6 position2:(double)a7 position3:(double)a8 progress:(double)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = objc_alloc_init(NTKSolarRichComplicationCircularViewColorPoint);
  color1 = v18->_color1;
  v18->_color1 = v15;
  v20 = v15;

  color2 = v18->_color2;
  v18->_color2 = v16;
  v22 = v16;

  color3 = v18->_color3;
  v18->_color3 = v17;

  v18->_position1 = a6;
  v18->_position2 = a7;
  v18->_position3 = a8;
  v18->_progress = a9;

  return v18;
}

+ (id)allPoints
{
  v40[9] = *MEMORY[0x277D85DE8];
  v39 = [MEMORY[0x277D75348] colorWithRed:0.101960784 green:0.125490196 blue:0.301960784 alpha:1.0];
  v38 = [MEMORY[0x277D75348] colorWithRed:0.062745098 green:0.0823529412 blue:0.298039216 alpha:1.0];
  v37 = [MEMORY[0x277D75348] colorWithRed:0.00392156863 green:0.00392156863 blue:0.160784314 alpha:1.0];
  v36 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v39 color2:v38 color3:v37 position1:0.0 position2:0.3 position3:0.9 progress:-20.0];
  v40[0] = v36;
  v35 = [MEMORY[0x277D75348] colorWithRed:0.101960784 green:0.2 blue:? alpha:?];
  v34 = [MEMORY[0x277D75348] colorWithRed:0.0941176471 green:0.137254902 blue:? alpha:?];
  v33 = [MEMORY[0x277D75348] colorWithRed:0.00784313725 green:0.00784313725 blue:0.219607843 alpha:1.0];
  v32 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v35 color2:v34 color3:v33 position1:0.0 position2:0.3 position3:0.9 progress:-15.0];
  v40[1] = v32;
  v31 = [MEMORY[0x277D75348] colorWithRed:0.368627451 green:0.466666667 blue:0.921568627 alpha:1.0];
  v30 = [MEMORY[0x277D75348] colorWithRed:0.176470588 green:0.321568627 blue:0.678431373 alpha:1.0];
  v29 = [MEMORY[0x277D75348] colorWithRed:0.101960784 green:0.141176471 blue:0.349019608 alpha:1.0];
  v28 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v31 color2:v30 color3:v29 position1:0.0 position2:0.3 position3:0.9 progress:-9.0];
  v40[2] = v28;
  v27 = [MEMORY[0x277D75348] colorWithRed:0.780392157 green:0.6 blue:0.545098039 alpha:1.0];
  v26 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
  v25 = [MEMORY[0x277D75348] colorWithRed:0.125490196 green:0.196078431 blue:0.470588235 alpha:1.0];
  v24 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v27 color2:v26 color3:v25 position1:0.0 position2:0.2 position3:0.9 progress:-3.0];
  v40[3] = v24;
  v22 = [MEMORY[0x277D75348] colorWithRed:0.945098039 green:0.784313725 blue:0.568627451 alpha:1.0];
  v21 = [MEMORY[0x277D75348] colorWithRed:0.568627451 green:0.682352941 blue:0.847058824 alpha:1.0];
  v20 = [MEMORY[0x277D75348] colorWithRed:0.294117647 green:0.42745098 blue:0.737254902 alpha:1.0];
  v19 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v22 color2:v21 color3:v20 position1:0.0 position2:0.3 position3:0.9 progress:6.0];
  v40[4] = v19;
  v18 = [MEMORY[0x277D75348] colorWithRed:0.541176471 green:0.780392157 blue:0.901960784 alpha:1.0];
  v17 = [MEMORY[0x277D75348] colorWithRed:0.419607843 green:0.674509804 blue:0.929411765 alpha:1.0];
  v16 = [MEMORY[0x277D75348] colorWithRed:0.215686275 green:0.470588235 blue:0.8 alpha:1.0];
  v15 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v18 color2:v17 color3:v16 position1:0.0 position2:0.3 position3:0.9 progress:15.0];
  v40[5] = v15;
  v14 = [MEMORY[0x277D75348] colorWithRed:0.470588235 green:0.737254902 blue:0.941176471 alpha:1.0];
  v13 = [MEMORY[0x277D75348] colorWithRed:0.396078431 green:0.654901961 blue:0.878431373 alpha:1.0];
  v2 = [MEMORY[0x277D75348] colorWithRed:0.231372549 green:0.501960784 blue:0.831372549 alpha:1.0];
  v3 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v14 color2:v13 color3:v2 position1:0.0 position2:0.3 position3:0.9 progress:30.0];
  v40[6] = v3;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.439215686 green:0.745098039 blue:0.980392157 alpha:1.0];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.392156863 green:0.670588235 blue:0.929411765 alpha:1.0];
  v6 = [MEMORY[0x277D75348] colorWithRed:0.305882353 green:0.623529412 blue:0.901960784 alpha:1.0];
  v7 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v4 color2:v5 color3:v6 position1:0.0 position2:0.3 position3:0.9 progress:50.0];
  v40[7] = v7;
  v8 = [MEMORY[0x277D75348] colorWithRed:0.384313725 green:0.670588235 blue:0.960784314 alpha:1.0];
  v9 = [MEMORY[0x277D75348] colorWithRed:0.380392157 green:0.701960784 blue:0.949019608 alpha:1.0];
  v10 = [MEMORY[0x277D75348] colorWithRed:0.521568627 green:0.780392157 blue:0.949019608 alpha:1.0];
  v11 = [NTKSolarRichComplicationCircularViewColorPoint pointWithColor1:v8 color2:v9 color3:v10 position1:0.0 position2:0.3 position3:0.9 progress:90.0];
  v40[8] = v11;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:9];

  return v23;
}

@end