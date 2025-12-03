@interface _CNAtomTextViewBaselineLayoutStrut
- (CGSize)intrinsicContentSize;
@end

@implementation _CNAtomTextViewBaselineLayoutStrut

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E695F060];
  font = [(_CNAtomTextViewBaselineLayoutStrut *)self font];
  [@"X" sizeWithFont:font forWidth:-[_CNAtomTextViewBaselineLayoutStrut lineBreakMode](self lineBreakMode:"lineBreakMode") letterSpacing:{3.40282347e38, 0.0}];
  v6 = v5;

  v7 = v3;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end