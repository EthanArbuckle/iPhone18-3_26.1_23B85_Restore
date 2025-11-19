@interface UIVisualEffect
@end

@implementation UIVisualEffect

void __53__UIVisualEffect_HUAdditions__hu_dashboardBarEffects__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75358] colorEffectLuminanceCurveMap:&unk_282492C60 blendingAmount:0.18];
  v6[0] = v0;
  v5[6] = xmmword_27C829070;
  v5[7] = unk_27C829080;
  v5[8] = xmmword_27C829090;
  v5[9] = unk_27C8290A0;
  v5[2] = xmmword_27C829030;
  v5[3] = unk_27C829040;
  v5[4] = xmmword_27C829050;
  v5[5] = unk_27C829060;
  v5[0] = HUDashboardBarColorMatrix;
  v5[1] = unk_27C829020;
  v1 = [MEMORY[0x277D75358] colorEffectMatrix:v5];
  v6[1] = v1;
  v2 = [MEMORY[0x277D75210] effectWithBlurRadius:32.0];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = qword_281122018;
  qword_281122018 = v3;
}

void __68__UIVisualEffect_HUAdditions__hu_categoryDashboardBackgroundEffects__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75358] colorEffectLuminanceCurveMap:&unk_282492C78 blendingAmount:0.25];
  v6[0] = v0;
  v1 = [MEMORY[0x277D75358] colorEffectSaturate:1.2];
  v6[1] = v1;
  v2 = [MEMORY[0x277D75210] effectWithBlurRadius:32.0];
  v6[2] = v2;
  v3 = [MEMORY[0x277D75358] colorEffectBrightness:-0.1];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v5 = qword_281122028;
  qword_281122028 = v4;
}

void __62__UIVisualEffect_HUAdditions__hu_gridCellBackgroundOffEffects__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75358] colorEffectLuminanceCurveMap:&unk_282492C90 blendingAmount:0.24];
  v6[0] = v0;
  v5[6] = xmmword_27C829110;
  v5[7] = unk_27C829120;
  v5[8] = xmmword_27C829130;
  v5[9] = unk_27C829140;
  v5[2] = xmmword_27C8290D0;
  v5[3] = unk_27C8290E0;
  v5[4] = xmmword_27C8290F0;
  v5[5] = unk_27C829100;
  v5[0] = HUGridCellBackgroundOffColorMatrix;
  v5[1] = unk_27C8290C0;
  v1 = [MEMORY[0x277D75358] colorEffectMatrix:v5];
  v6[1] = v1;
  v2 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = qword_281122038;
  qword_281122038 = v3;
}

void __61__UIVisualEffect_HUAdditions__hu_gridCellBackgroundOnEffects__block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75210] effectWithStyle:14];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v2 = qword_281122048;
  qword_281122048 = v1;
}

@end