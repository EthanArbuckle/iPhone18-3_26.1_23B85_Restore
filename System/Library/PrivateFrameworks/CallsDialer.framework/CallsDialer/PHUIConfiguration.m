@interface PHUIConfiguration
@end

@implementation PHUIConfiguration

uint64_t __50__PHUIConfiguration_DialerView__dialerLCDFontSize__block_invoke()
{
  result = [MEMORY[0x277D3A7E0] screenSize];
  v1 = dbl_2429ED2A0[result == 1];
  if (result == 6)
  {
    v1 = 43.2999992;
  }

  dialerLCDFontSize_fontSize = *&v1;
  return result;
}

uint64_t __55__PHUIConfiguration_DialerView__dialerLCDLabelFontSize__block_invoke()
{
  result = [MEMORY[0x277D3A7E0] screenSize];
  v1 = result == 6 || result == 9;
  v2 = 18.0;
  if (v1)
  {
    v2 = 15.0;
  }

  dialerLCDLabelFontSize_fontSize = *&v2;
  return result;
}

uint64_t __61__PHUIConfiguration_DialerView__dialerLCDSourceLabelFontSize__block_invoke()
{
  result = [MEMORY[0x277D3A7E0] screenSize];
  v1 = result == 6 || result == 9;
  v2 = 15.0;
  if (v1)
  {
    v2 = 12.0;
  }

  dialerLCDSourceLabelFontSize_fontSize = *&v2;
  return result;
}

@end