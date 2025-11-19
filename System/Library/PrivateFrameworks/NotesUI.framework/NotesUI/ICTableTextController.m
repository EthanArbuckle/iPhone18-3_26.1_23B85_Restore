@interface ICTableTextController
- (ICTableTextController)init;
- (id)defaultTypingAttributesForEmptyDocument;
- (void)styleText:(id)a3 inRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5;
@end

@implementation ICTableTextController

- (ICTableTextController)init
{
  v5.receiver = self;
  v5.super_class = ICTableTextController;
  v2 = [(ICTextController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICTextController *)v2 setIsAutoListInsertionDisabled:1];
  }

  return v3;
}

- (void)styleText:(id)a3 inRange:(_NSRange)a4 fixModelAttributes:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || length || location != [v9 length] || (objc_opt_class(), ICCheckedDynamicCast(), v10 = objc_claimAutoreleasedReturnValue(), v14 = 0, v15 = 0, v11 = objc_msgSend(v10, "rowAtIndex:rowRange:", location, &v14), v12 = v15, v10, v12))
  {
    v13.receiver = self;
    v13.super_class = ICTableTextController;
    [(ICTTTextController *)&v13 styleText:v9 inRange:location fixModelAttributes:length, v5];
  }
}

- (id)defaultTypingAttributesForEmptyDocument
{
  v3 = [(ICTTTextController *)self bodyAttributes];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
  [v4 setObject:v5 forKey:*MEMORY[0x1E69B7600]];
  v6 = [(ICTTTextController *)self zoomController];
  v7 = [v6 zoomFontInAttributes:v4];

  v8 = [v7 copy];

  return v8;
}

@end