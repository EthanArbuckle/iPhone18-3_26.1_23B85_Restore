@interface NMICTK2TextView
+ (id)createTextViewWithNote:(id)note size:(CGSize)size;
@end

@implementation NMICTK2TextView

+ (id)createTextViewWithNote:(id)note size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277D35998];
  noteCopy = note;
  v8 = [[v6 alloc] initWithNote:noteCopy size:0 insideSystemPaper:1 insideSiriSnippet:{width, height}];

  return v8;
}

@end