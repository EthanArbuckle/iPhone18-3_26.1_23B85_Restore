@interface HTUITaggedColor
+ (id)color:(id)a3 identifier:(id)a4;
+ (id)makeFromData:(id)a3;
+ (id)userPickableColors;
- (BOOL)isEqual:(id)a3;
- (HTUITaggedColor)initWithCoder:(id)a3;
- (NSString)localizedName;
- (id)dataRepresentation;
- (unint64_t)hash;
- (void)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HTUITaggedColor

+ (id)color:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HTUITaggedColor);
  [(HTUITaggedColor *)v7 setColor:v6];

  [(HTUITaggedColor *)v7 setIdentifier:v5];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HTUITaggedColor *)self color];
  [v4 encodeObject:v5 forKey:@"color"];

  v6 = [(HTUITaggedColor *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];
}

- (HTUITaggedColor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HTUITaggedColor;
  v5 = [(HTUITaggedColor *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(HTUITaggedColor *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    [(HTUITaggedColor *)v5 setColor:v7];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HTUITaggedColor *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HTUITaggedColor *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(HTUITaggedColor *)self identifier];
  if ([v2 isEqual:@"red"])
  {
    v3 = @"AXHoverTextTaggedColorRed";
LABEL_31:
    v4 = HTUILocString(v3);
    goto LABEL_32;
  }

  if ([v2 isEqual:@"green"])
  {
    v3 = @"AXHoverTextTaggedColorGreen";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"blue"])
  {
    v3 = @"AXHoverTextTaggedColorBlue";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"orange"])
  {
    v3 = @"AXHoverTextTaggedColorOrange";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"yellow"])
  {
    v3 = @"AXHoverTextTaggedColorYellow";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"pink"])
  {
    v3 = @"AXHoverTextTaggedColorPink";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"purple"])
  {
    v3 = @"AXHoverTextTaggedColorPurple";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"teal"])
  {
    v3 = @"AXHoverTextTaggedColorTeal";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"indigo"])
  {
    v3 = @"AXHoverTextTaggedColorIndigo";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"brown"])
  {
    v3 = @"AXHoverTextTaggedColorBrown";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"mint"])
  {
    v3 = @"AXHoverTextTaggedColorMint";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"cyan"])
  {
    v3 = @"AXHoverTextTaggedColorCyan";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"gray"])
  {
    v3 = @"AXHoverTextTaggedColorGray";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"white"])
  {
    v3 = @"AXHoverTextTaggedColorWhite";
    goto LABEL_31;
  }

  if ([v2 isEqual:@"black"])
  {
    v3 = @"AXHoverTextTaggedColorBlack";
    goto LABEL_31;
  }

  v4 = 0;
LABEL_32:

  return v4;
}

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HTUITaggedColor *)v3 dataRepresentation];
    }
  }

  return v2;
}

+ (id)makeFromData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(HTUITaggedColor);
    v9 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];

    v6 = v9;
    [(HTUITaggedColor *)v4 setColor:v5];

    if (v6)
    {
      v7 = AXLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(HTUITaggedColor *)v6 makeFromData:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)userPickableColors
{
  v34[15] = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277D75348] blackColor];
  v32 = [HTUITaggedColor color:v33 identifier:@"black"];
  v34[0] = v32;
  v31 = [MEMORY[0x277D75348] whiteColor];
  v30 = [HTUITaggedColor color:v31 identifier:@"white"];
  v34[1] = v30;
  v29 = [MEMORY[0x277D75348] colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v28 = [HTUITaggedColor color:v29 identifier:@"gray"];
  v34[2] = v28;
  v27 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.270588235 blue:0.22745098 alpha:1.0];
  v26 = [HTUITaggedColor color:v27 identifier:@"red"];
  v34[3] = v26;
  v25 = [MEMORY[0x277D75348] colorWithRed:0.196078431 green:0.843137255 blue:0.294117647 alpha:1.0];
  v24 = [HTUITaggedColor color:v25 identifier:@"green"];
  v34[4] = v24;
  v23 = [MEMORY[0x277D75348] colorWithRed:0.0392156863 green:0.517647059 blue:1.0 alpha:1.0];
  v22 = [HTUITaggedColor color:v23 identifier:@"blue"];
  v34[5] = v22;
  v21 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.839215686 blue:0.0392156863 alpha:1.0];
  v20 = [HTUITaggedColor color:v21 identifier:@"orange"];
  v34[6] = v20;
  v19 = [MEMORY[0x277D75348] colorWithRed:1.0 green:159.0 blue:0.0392156863 alpha:1.0];
  v18 = [HTUITaggedColor color:v19 identifier:@"yellow"];
  v34[7] = v18;
  v17 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.215686275 blue:0.37254902 alpha:1.0];
  v16 = [HTUITaggedColor color:v17 identifier:@"pink"];
  v34[8] = v16;
  v15 = [MEMORY[0x277D75348] colorWithRed:0.749019608 green:0.352941176 blue:0.949019608 alpha:1.0];
  v14 = [HTUITaggedColor color:v15 identifier:@"purple"];
  v34[9] = v14;
  v13 = [MEMORY[0x277D75348] colorWithRed:0.250980392 green:0.784313725 blue:0.878431373 alpha:1.0];
  v2 = [HTUITaggedColor color:v13 identifier:@"teal"];
  v34[10] = v2;
  v3 = [MEMORY[0x277D75348] colorWithRed:0.368627451 green:0.360784314 blue:0.901960784 alpha:1.0];
  v4 = [HTUITaggedColor color:v3 identifier:@"indigo"];
  v34[11] = v4;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.674509804 green:0.556862745 blue:0.407843137 alpha:1.0];
  v6 = [HTUITaggedColor color:v5 identifier:@"brown"];
  v34[12] = v6;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.388235294 green:0.901960784 blue:0.88627451 alpha:1.0];
  v8 = [HTUITaggedColor color:v7 identifier:@"mint"];
  v34[13] = v8;
  v9 = [MEMORY[0x277D75348] colorWithRed:0.392156863 green:0.823529412 blue:1.0 alpha:1.0];
  v10 = [HTUITaggedColor color:v9 identifier:@"cyan"];
  v34[14] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:15];

  return v11;
}

- (void)dataRepresentation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_254615000, a2, OS_LOG_TYPE_ERROR, "Failed to encode HTUITaggedColor. %@", &v2, 0xCu);
}

+ (void)makeFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_254615000, a2, OS_LOG_TYPE_ERROR, "Failed to decode HTUITaggedColor. %@", &v2, 0xCu);
}

@end