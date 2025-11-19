@interface MKMapItem(MUOverallRatingPlatterViewModel)
- (id)attributionText;
@end

@implementation MKMapItem(MUOverallRatingPlatterViewModel)

- (id)attributionText
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 _reviewsAttribution];
  v3 = +[MUInfoCardStyle attributionTintColor];
  v4 = [a1 _attributionFor:v2 sourceStringFormat:&stru_1F44CA030 moreSourceStringFormat:&stru_1F44CA030 imageTintColor:v3];

  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
  v15[0] = *MEMORY[0x1E69DB650];
  v6 = +[MUInfoCardStyle tintColor];
  v7 = *MEMORY[0x1E69DB610];
  v16[0] = v6;
  v16[1] = &unk_1F450D958;
  v8 = *MEMORY[0x1E69DB648];
  v15[1] = v7;
  v15[2] = v8;
  v9 = [MEMORY[0x1E696F200] sharedManager];
  v10 = [v9 smallAttributionFont];
  v16[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v5 addAttributes:v11 range:{0, objc_msgSend(v5, "length")}];

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end