@interface NMICTK2TextView
+ (id)createTextViewWithNote:(id)a3 size:(CGSize)a4;
@end

@implementation NMICTK2TextView

+ (id)createTextViewWithNote:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x277D35998];
  v7 = a3;
  v8 = [[v6 alloc] initWithNote:v7 size:0 insideSystemPaper:1 insideSiriSnippet:{width, height}];

  return v8;
}

@end