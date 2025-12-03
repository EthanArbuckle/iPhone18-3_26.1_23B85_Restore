@interface _CNUIUserActionImageProvider
+ (id)imageForActionType:(id)type imageStyle:(int64_t)style;
+ (id)imageResourceNameForActionType:(id)type;
+ (id)symbolImageNameForActionType:(id)type;
+ (id)symbolOulinedImageNameForActionType:(id)type;
@end

@implementation _CNUIUserActionImageProvider

+ (id)imageForActionType:(id)type imageStyle:(int64_t)style
{
  style = [_CNUIUserActionImageProvider symbolImageNameForActionType:type, style];
  v5 = [MEMORY[0x1E69DCAB8] preferredSymbolImageNamed:style size:*MEMORY[0x1E69DDE38] compatibleWithTextStyle:*MEMORY[0x1E69DDCF8]];

  return v5;
}

+ (id)imageResourceNameForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"EmailActionGlyphTemplate";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"TextActionGlyphTemplate";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"VideoActionGlyphTemplate";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"VoiceActionGlyphTemplate";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"PayActionGlyphTemplate";
  }

  else
  {
    v4 = @"DirectionsActionGlyphTemplate";
    if (([typeCopy isEqualToString:*MEMORY[0x1E695C160]] & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E695C168]))
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)symbolImageNameForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"envelope.fill";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"message.fill";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"video.fill";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"phone.fill";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"applepaycash";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C160]])
  {
    v4 = @"arrow.triangle.turn.up.right.circle.fill";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C190]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E695C1A8]))
  {
    v4 = @"teletype";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C168]])
  {
    v4 = @"rectangle.fill.on.rectangle.fill";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)symbolOulinedImageNameForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695C170]])
  {
    v4 = @"envelope";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = @"message";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = @"video";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = @"phone";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C188]])
  {
    v4 = @"applepaycash";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C160]])
  {
    v4 = @"arrow.triangle.turn.up.right.circle";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C190]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E695C1A8]))
  {
    v4 = @"teletype";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695C168]])
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