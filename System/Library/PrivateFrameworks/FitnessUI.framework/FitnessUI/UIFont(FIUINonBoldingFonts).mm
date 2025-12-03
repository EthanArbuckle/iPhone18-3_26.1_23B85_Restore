@interface UIFont(FIUINonBoldingFonts)
+ (CTFontRef)_fiui_nonBoldedVersionOfFont:()FIUINonBoldingFonts size:;
+ (id)fiui_nonBoldingRoundedSystemFontOfSize:()FIUINonBoldingFonts weight:;
+ (id)fiui_nonBoldingSystemFontOfSize:()FIUINonBoldingFonts;
+ (id)fiui_nonBoldingSystemFontOfSize:()FIUINonBoldingFonts weight:;
@end

@implementation UIFont(FIUINonBoldingFonts)

+ (CTFontRef)_fiui_nonBoldedVersionOfFont:()FIUINonBoldingFonts size:
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = *MEMORY[0x1E69657F0];
    v11[0] = &unk_1F5F9B688;
    v5 = MEMORY[0x1E695DF20];
    v6 = a4;
    v7 = CTFontDescriptorCreateWithAttributes([v5 dictionaryWithObjects:v11 forKeys:&v10 count:1]);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v6, self, 0, v7);

    CFRelease(v7);
  }

  else
  {
    CopyWithAttributes = 0;
  }

  return CopyWithAttributes;
}

+ (id)fiui_nonBoldingSystemFontOfSize:()FIUINonBoldingFonts
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
  v5 = [self _fiui_nonBoldedVersionOfFont:v4 size:a2];

  return v5;
}

+ (id)fiui_nonBoldingSystemFontOfSize:()FIUINonBoldingFonts weight:
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:? weight:?];
  v5 = [self _fiui_nonBoldedVersionOfFont:v4 size:a2];

  return v5;
}

+ (id)fiui_nonBoldingRoundedSystemFontOfSize:()FIUINonBoldingFonts weight:
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:*MEMORY[0x1E69658A8] weight:? design:?];
  v5 = [self _fiui_nonBoldedVersionOfFont:v4 size:a2];

  return v5;
}

@end