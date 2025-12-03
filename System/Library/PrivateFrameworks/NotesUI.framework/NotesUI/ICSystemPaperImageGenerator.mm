@interface ICSystemPaperImageGenerator
+ (id)imageGeneratorWithPaperAttachment:(id)attachment;
+ (id)imageGeneratorWithPaperAttachment:(id)attachment useActivePaper:(BOOL)paper;
- (BOOL)validatePaperBounds:(CGRect)bounds;
- (CGRect)paperContentBounds;
- (ICSystemPaperImageGenerator)init;
- (ICSystemPaperImageGenerator)initWithPaperAttachment:(id)attachment useActivePaper:(BOOL)paper;
@end

@implementation ICSystemPaperImageGenerator

- (ICSystemPaperImageGenerator)init
{
  [(ICSystemPaperImageGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSystemPaperImageGenerator)initWithPaperAttachment:(id)attachment useActivePaper:(BOOL)paper
{
  v5.receiver = self;
  v5.super_class = ICSystemPaperImageGenerator;
  result = [(ICSystemPaperImageGenerator *)&v5 init:attachment];
  result->_sixChannelBlendingEnabled = 1;
  return result;
}

+ (id)imageGeneratorWithPaperAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = NSClassFromString(&cfstr_Icswiftsystemp.isa);
  if (!v4)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((swiftClass) != nil)" functionName:"+[ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftClass"}];
  }

  v5 = [[v4 alloc] initWithPaperAttachment:attachmentCopy useActivePaper:0];

  return v5;
}

+ (id)imageGeneratorWithPaperAttachment:(id)attachment useActivePaper:(BOOL)paper
{
  paperCopy = paper;
  attachmentCopy = attachment;
  v6 = NSClassFromString(&cfstr_Icswiftsystemp.isa);
  if (!v6)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((swiftClass) != nil)" functionName:"+[ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:useActivePaper:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftClass"}];
  }

  v7 = [[v6 alloc] initWithPaperAttachment:attachmentCopy useActivePaper:paperCopy];

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

- (BOOL)validatePaperBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (CGRectGetWidth(bounds) <= 10000000.0)
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