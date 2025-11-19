@interface PHHandsetDialerNumberPadButton
+ (double)outerCircleDiameter;
+ (double)verticalPadding;
- (id)buttonColor;
@end

@implementation PHHandsetDialerNumberPadButton

+ (double)verticalPadding
{
  if ([MEMORY[0x277D3A7E0] handsetDialerSpacing] || (objc_msgSend(MEMORY[0x277D6EDF8], "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasCurrentAudioCalls"), v5, v4 = 3.5, (v6 & 1) == 0) && (objc_msgSend(MEMORY[0x277D3A7E0], "requiresSmallScreenConfig") & 1) == 0)
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___PHHandsetDialerNumberPadButton;
    objc_msgSendSuper2(&v8, sel_verticalPadding);
    return v3;
  }

  return v4;
}

+ (double)outerCircleDiameter
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___PHHandsetDialerNumberPadButton;
  objc_msgSendSuper2(&v6, sel_outerCircleDiameter);
  v3 = v2;
  if ([MEMORY[0x277D3A7E0] requiresSmallScreenConfig])
  {
    return 67.0;
  }

  if (+[PHInCallUIUtilities hasMultipleSenderIdentities])
  {
    v4 = [MEMORY[0x277D3A7E0] handsetDialerSpacing];
    if (v4 == 2)
    {
      return 73.0;
    }

    else if (!v4)
    {
      return 70.0;
    }
  }

  return v3;
}

- (id)buttonColor
{
  if ([objc_opt_class() isUsingGlass])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHHandsetDialerNumberPadButton;
    v3 = [(TPNumberPadDynamicButton *)&v5 buttonColor];
  }

  return v3;
}

@end