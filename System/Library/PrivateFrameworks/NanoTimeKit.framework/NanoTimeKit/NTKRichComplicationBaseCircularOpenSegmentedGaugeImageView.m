@interface NTKRichComplicationBaseCircularOpenSegmentedGaugeImageView
- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)a3 family:(id)a4;
@end

@implementation NTKRichComplicationBaseCircularOpenSegmentedGaugeImageView

- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)a3 family:(id)a4
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v7 = v12;
  ___LayoutConstants_block_invoke_61(a4, v12);
  if (a5 != 10)
  {
    if (a5 == 12)
    {
      v7 = v13;
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _layoutConstraintsWithDevice:a5 family:v9];
      }

      v7 = v12;
    }
  }

  v10 = v7[1];
  *&retstr->var0 = *v7;
  *&retstr->var2 = v10;
  v11 = v7[3];
  *&retstr->var4 = v7[2];
  *&retstr->var6 = v11;
  return result;
}

@end