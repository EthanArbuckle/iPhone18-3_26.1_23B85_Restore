@interface ICSystemPaperImageGenerator
+ (id)imageGeneratorWithPaperAttachment:(id)a3;
+ (id)imageGeneratorWithPaperAttachment:(id)a3 useActivePaper:(BOOL)a4;
- (BOOL)validatePaperBounds:(CGRect)a3;
- (CGRect)paperContentBounds;
- (ICSystemPaperImageGenerator)init;
- (ICSystemPaperImageGenerator)initWithPaperAttachment:(id)a3 useActivePaper:(BOOL)a4;
@end

@implementation ICSystemPaperImageGenerator

- (ICSystemPaperImageGenerator)init
{
  [(ICSystemPaperImageGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSystemPaperImageGenerator)initWithPaperAttachment:(id)a3 useActivePaper:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = ICSystemPaperImageGenerator;
  result = [(ICSystemPaperImageGenerator *)&v5 init:a3];
  result->_sixChannelBlendingEnabled = 1;
  return result;
}

+ (id)imageGeneratorWithPaperAttachment:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Icswiftsystemp.isa);
  if (!v4)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((swiftClass) != nil)" functionName:"+[ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftClass"}];
  }

  v5 = [[v4 alloc] initWithPaperAttachment:v3 useActivePaper:0];

  return v5;
}

+ (id)imageGeneratorWithPaperAttachment:(id)a3 useActivePaper:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = NSClassFromString(&cfstr_Icswiftsystemp.isa);
  if (!v6)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((swiftClass) != nil)" functionName:"+[ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:useActivePaper:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftClass"}];
  }

  v7 = [[v6 alloc] initWithPaperAttachment:v5 useActivePaper:v4];

  return v7;
}

- (CGRect)paperContentBounds
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)validatePaperBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectGetWidth(a3) <= 10000000.0)
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    if (CGRectGetHeight(v10) <= 10000000.0)
    {
      return 1;
    }
  }

  v7 = MEMORY[0x1E69B7A38];
  v8 = ICStringFromRect();
  [v7 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICSystemPaperImageGenerator validatePaperBounds:]" simulateCrash:1 showAlert:1 format:{@"Unreasonably large paper bounds: %@", v8}];

  return 0;
}

@end