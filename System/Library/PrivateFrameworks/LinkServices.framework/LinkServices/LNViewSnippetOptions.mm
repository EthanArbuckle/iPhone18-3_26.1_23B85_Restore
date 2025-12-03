@interface LNViewSnippetOptions
- (LNViewSnippetOptions)initWithCanReplacePrintableText:(BOOL)text;
- (LNViewSnippetOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNViewSnippetOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[LNViewSnippetOptions canReplacePrintableText](self forKey:{"canReplacePrintableText"), @"canReplacePrintableText"}];
}

- (LNViewSnippetOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"canReplacePrintableText"];

  return [(LNViewSnippetOptions *)self initWithCanReplacePrintableText:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  canReplacePrintableText = [(LNViewSnippetOptions *)self canReplacePrintableText];

  return [v4 initWithCanReplacePrintableText:canReplacePrintableText];
}

- (LNViewSnippetOptions)initWithCanReplacePrintableText:(BOOL)text
{
  v8.receiver = self;
  v8.super_class = LNViewSnippetOptions;
  v4 = [(LNViewSnippetOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_canReplacePrintableText = text;
    v6 = v4;
  }

  return v5;
}

@end