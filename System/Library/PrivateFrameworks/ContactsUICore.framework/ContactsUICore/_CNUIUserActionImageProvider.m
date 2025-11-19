@interface _CNUIUserActionImageProvider
+ (id)imageForActionType:(id)a3 imageStyle:(int64_t)a4;
+ (id)imageResourceNameForActionType:(id)a3;
+ (id)symbolImageNameForActionType:(id)a3;
+ (id)symbolOulinedImageNameForActionType:(id)a3;
@end

@implementation _CNUIUserActionImageProvider

+ (id)imageForActionType:(id)a3 imageStyle:(int64_t)a4
{
  v4 = [_CNUIUserActionImageProvider symbolImageNameForActionType:a3, a4];
  v5 = [MEMORY[0x1E69DCAB8] preferredSymbolImageNamed:v4 size:*MEMORY[0x1E69DDE38] compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];

  return v5;
}

+ (id)imageResourceNameForActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"EmailActionGlyphTemplate";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"TextActionGlyphTemplate";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"VideoActionGlyphTemplate";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"VoiceActionGlyphTemplate";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"PayActionGlyphTemplate";
  }

  else
  {
    v4 = @"DirectionsActionGlyphTemplate";
    if (([v3 isEqualToString:*MEMORY[0x1E695C160]] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C168]))
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)symbolImageNameForActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"envelope.fill";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"message.fill";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"video.fill";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"phone.fill";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"applepaycash";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C160]])
  {
    v4 = @"arrow.triangle.turn.up.right.circle.fill";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C190]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1A8]))
  {
    v4 = @"teletype";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C168]])
  {
    v4 = @"rectangle.fill.on.rectangle.fill";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)symbolOulinedImageNameForActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"envelope";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"message";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"video";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"phone";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"applepaycash";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C160]])
  {
    v4 = @"arrow.triangle.turn.up.right.circle";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C190]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1A8]))
  {
    v4 = @"teletype";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C168]])
  {
    v4 = @"rectangle.on.rectangle";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end