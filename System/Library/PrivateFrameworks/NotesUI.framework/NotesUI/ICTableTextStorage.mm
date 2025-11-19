@interface ICTableTextStorage
- (ICTableTextStorage)initWithDocument:(id)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
@end

@implementation ICTableTextStorage

- (ICTableTextStorage)initWithDocument:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICTableTextStorage;
  v3 = [(ICTTTextStorage *)&v6 initWithDocument:a3];
  if (v3)
  {
    v4 = objc_alloc_init(ICTableTextController);
    [(ICTTTextStorage *)v3 setStyler:v4];
  }

  return v3;
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTTTextStorage *)self length];
  v15.receiver = self;
  v15.super_class = ICTableTextStorage;
  [(ICTTTextStorage *)&v15 replaceCharactersInRange:location withAttributedString:length, v7];

  if ([(ICTTTextStorage *)self isReadingSelectionFromPasteboard])
  {
    v9 = [(ICTTTextStorage *)self length];
    v10 = length - v8;
    v11 = [(ICTTTextStorage *)self string];
    v12 = [v11 paragraphRangeForRange:{location, v10 + v9}];
    v14 = v13;

    [(NSMutableAttributedString *)self ic_convertParagraphStyleToBodyInRange:v12, v14];
  }
}

@end