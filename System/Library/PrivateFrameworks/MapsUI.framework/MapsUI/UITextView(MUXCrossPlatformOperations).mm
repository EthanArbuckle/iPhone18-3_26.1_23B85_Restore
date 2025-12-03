@interface UITextView(MUXCrossPlatformOperations)
+ (id)_mapsui_defaultTextView;
@end

@implementation UITextView(MUXCrossPlatformOperations)

+ (id)_mapsui_defaultTextView
{
  v0 = objc_alloc(MEMORY[0x1E69DD168]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v1 setEditable:0];
  [v1 setScrollEnabled:0];
  [v1 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v1 setBackgroundColor:clearColor];

  textContainer = [v1 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  return v1;
}

@end