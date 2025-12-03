@interface ICTableTextStorage
- (ICTableTextStorage)initWithDocument:(id)document;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
@end

@implementation ICTableTextStorage

- (ICTableTextStorage)initWithDocument:(id)document
{
  v6.receiver = self;
  v6.super_class = ICTableTextStorage;
  v3 = [(ICTTTextStorage *)&v6 initWithDocument:document];
  if (v3)
  {
    v4 = objc_alloc_init(ICTableTextController);
    [(ICTTTextStorage *)v3 setStyler:v4];
  }

  return v3;
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v8 = [(ICTTTextStorage *)self length];
  v15.receiver = self;
  v15.super_class = ICTableTextStorage;
  [(ICTTTextStorage *)&v15 replaceCharactersInRange:location withAttributedString:length, stringCopy];

  if ([(ICTTTextStorage *)self isReadingSelectionFromPasteboard])
  {
    v9 = [(ICTTTextStorage *)self length];
    v10 = length - v8;
    string = [(ICTTTextStorage *)self string];
    v12 = [string paragraphRangeForRange:{location, v10 + v9}];
    v14 = v13;

    [(NSMutableAttributedString *)self ic_convertParagraphStyleToBodyInRange:v12, v14];
  }
}

@end