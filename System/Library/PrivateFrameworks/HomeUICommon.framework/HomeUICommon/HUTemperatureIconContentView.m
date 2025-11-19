@interface HUTemperatureIconContentView
- (HUTemperatureIconContentView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation HUTemperatureIconContentView

- (HUTemperatureIconContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUTemperatureIconContentView;
  v3 = [(HUIconContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUTemperatureIconContentView *)v3 setContentMode:3];
    [(HUTemperatureIconContentView *)v4 setOpaque:0];
    [(HUIconContentView *)v4 setAspectRatio:1.0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittingSize:0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittedWidth:0.0];
    [(HUTemperatureIconContentView *)v4 setLastFontFittedText:0];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUTemperatureIconContentView;
  [(HUTemperatureIconContentView *)&v3 tintColorDidChange];
  [(HUTemperatureIconContentView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  width = a3.size.width;
  v82[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUIconContentView *)self iconDescriptor:a3.origin.x];
  v6 = [v5 targetHeatingCoolingMode];

  if (v6)
  {
    v7 = [(HUIconContentView *)self iconDescriptor];
    v8 = [v7 heatingCoolingMode];

    v9 = 0;
    v10 = 1;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v11 = [MEMORY[0x277D75340] systemTealColor];
      }

      else
      {
        if (v8 != 3)
        {
          goto LABEL_15;
        }

        v11 = [MEMORY[0x277D75340] darkGrayColor];
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_15;
      }

      v11 = [MEMORY[0x277D75340] systemOrangeColor];
    }

    else
    {
      v11 = [MEMORY[0x277D75340] systemGreenColor];
    }

    v9 = v11;
  }

  else if ([(HUIconContentView *)self displayStyle]== 1)
  {
    v9 = [MEMORY[0x277D75340] systemGrayColor];
    v10 = 1;
  }

  else
  {
    v9 = [(HUTemperatureIconContentView *)self tintColor];
    v10 = 0;
  }

LABEL_15:
  v12 = MEMORY[0x277D75200];
  [(HUTemperatureIconContentView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(HUTemperatureIconContentView *)self bounds];
  v22 = [v12 bezierPathWithRoundedRect:v14 cornerRadius:{v16, v18, v20, v21 * 0.5}];
  [v9 setFill];
  [v22 fill];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if ((v10 & 1) == 0)
  {
    CGContextSetBlendMode(CurrentContext, kCGBlendModeSourceOut);
  }

  v24 = [MEMORY[0x277D74250] defaultParagraphStyle];
  v25 = [v24 mutableCopy];

  [v25 setAlignment:1];
  [v25 setAllowsDefaultTighteningForTruncation:1];
  v26 = [(HUIconContentView *)self iconDescriptor];
  v27 = [v26 formattedTemperature];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = HFLocalizedString();
  }

  v30 = v29;

  v73 = v9;
  v74 = v30;
  if (!self)
  {
    v35 = 0;
    goto LABEL_39;
  }

  v31 = [(HUTemperatureIconContentView *)self lastFontFittingSize];
  if (v31 && ([(HUTemperatureIconContentView *)self lastFontFittedWidth], v32 == width))
  {
    v33 = [(HUTemperatureIconContentView *)self lastFontFittedText];
    v34 = [v33 isEqualToString:v74];

    if (v34)
    {
      v35 = [(HUTemperatureIconContentView *)self lastFontFittingSize];
      goto LABEL_39;
    }
  }

  else
  {
  }

  v71 = v25;
  v72 = CurrentContext;
  [(HUTemperatureIconContentView *)self bounds];
  v37 = v36 * 0.03125;
  v70 = [MEMORY[0x277D742F8] boldSystemFontOfSize:13.0];
  v38 = [v70 fontDescriptor];
  v39 = [HUFontUtilities fontDescriptorWithMonospacedDigitsForFontDescriptor:v38];

  v69 = v39;
  v40 = [MEMORY[0x277D742F8] fontWithDescriptor:v39 size:13.0];
  v41 = [v40 _fontScaledByScaleFactor:v37];

  v42 = width * 0.75;
  v43 = v41;
  v44 = v74;
  v45 = [v43 fontDescriptor];
  v46 = *MEMORY[0x277D740B0];
  v81 = *MEMORY[0x277D740B0];
  v82[0] = v43;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
  [v44 sizeWithAttributes:v47];
  v49 = v48;

  if (v49 <= width * 0.75)
  {
    v35 = v43;
  }

  else
  {
    [v43 pointSize];
    v35 = [MEMORY[0x277D742F8] fontWithDescriptor:v45 size:floor(v42 / v49 * v50 + v42 / v49 * v50) * 0.5];
    v79 = v46;
    v80 = v35;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    [v44 sizeWithAttributes:v51];
    v53 = v52;

    if (v53 <= v42)
    {
      v54 = 1.0;
    }

    else
    {
      v54 = -1.0;
    }

    while (1)
    {
      v55 = MEMORY[0x277D742F8];
      [v35 pointSize];
      v57 = [v55 fontWithDescriptor:v45 size:v56 + v54 * 0.5];
      v77 = v46;
      v78 = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      [v44 sizeWithAttributes:v58];
      v60 = v59;

      if (v53 > v42 && v60 < v42)
      {
        break;
      }

      if (v54 > 0.0 && v60 > v42)
      {
        goto LABEL_37;
      }

      v35 = v57;
    }

    v61 = v57;

    v35 = v61;
LABEL_37:
  }

  CurrentContext = v72;

  [(HUTemperatureIconContentView *)self setLastFontFittingSize:v35];
  [(HUTemperatureIconContentView *)self setLastFontFittedWidth:width];
  [(HUTemperatureIconContentView *)self setLastFontFittedText:v44];

  v25 = v71;
LABEL_39:

  v62 = *MEMORY[0x277D740B0];
  v76[0] = v35;
  v63 = *MEMORY[0x277D740B8];
  v75[0] = v62;
  v75[1] = v63;
  v64 = [MEMORY[0x277D75340] systemWhiteColor];
  v75[2] = *MEMORY[0x277D74110];
  v76[1] = v64;
  v76[2] = v25;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];

  [(HUTemperatureIconContentView *)self bounds];
  [v35 lineHeight];
  [(HUTemperatureIconContentView *)self center];
  [(HUTemperatureIconContentView *)self center];
  v66 = *MEMORY[0x277CBF348];
  v67 = *(MEMORY[0x277CBF348] + 8);
  UIRectCenteredAboutPoint();
  [v74 drawWithRect:1 options:v65 attributes:0 context:?];

  CGContextRestoreGState(CurrentContext);
  v68 = *MEMORY[0x277D85DE8];
}

@end